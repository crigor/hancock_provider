module Hancock
  module API
    module Users
      class App < JSON::App
        get '/users/auto_migrate.json' do
          DataMapper.auto_migrate!
          ""
        end

        get '/users.json' do
          Hancock::User.all.map { |user| user.attributes_for_api }.to_json
        end

        get '/users/:id.json' do |id|
          user = Hancock::User.get(id)
          user.to_json
        end

        post '/users.json' do
          user = Hancock::User.signup(params)
          user.to_json
        end

        put '/users/:id.json' do |id|
          user = Hancock::User.get(id)
          user.update_from_params(params)
          user.to_json
        end

        delete '/users/:id.json' do |id|
          user = Hancock::User.get(id)
          user.destroy unless user.admin?
          user.to_json
        end

      end
    end
  end
end
