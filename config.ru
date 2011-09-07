require 'rubygems'
require 'bundler/setup'
require 'do_sqlite3'
require 'hancock'

rack_env = ENV['RACK_ENV'] || 'development'
DataMapper.setup(:default, "sqlite3://#{File.expand_path(File.dirname(__FILE__))}/#{rack_env}.db")

class HancockProvider < Hancock::SSO::App
  enable :sessions
  set :views,  'views'
  set :public, 'public'
  configure :development do
    set :openid_server, "http://localhost:9292/sso"
  end
  configure :staging do
    set :openid_server, "http://login-staging.pinoyrb.org/sso"
  end

  get '/' do
    @consumers = Hancock::Consumer.all
    haml :index
  end
  get '/sso/signup' do
    haml :signup
  end
  get '/sso/users' do
    html =  "<html><head><link rel='openid.server' href='#{settings.openid_server}' /></link><link rel='openid2.provider' href='#{settings.openid_server}' /> </link></head><body></body></html>"
    erb html
  end
  get '/sso/users/:id' do
    html =  "<html><head><link rel='openid2.provider' href='#{settings.openid_server}' /> </link></head><body></body></html>"
    erb html
  end
  post '/sso/signup' do
    Hancock::User.signup(params)
    redirect '/'
  end
end
run HancockProvider
