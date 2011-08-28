# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{hancock}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Corey Donohoe", "Tim Carey-Smith"]
  s.date = %q{2011-04-13}
  s.description = %q{A gem that provides a Rack based Single Sign On Server in the form of a sintra based OpenID provider}
  s.email = ["atmos@atmos.org", "tim@spork.in"]
  s.extra_rdoc_files = ["README.md", "LICENSE"]
  s.files = ["LICENSE", "README.md", "Rakefile", "features/sessions.feature", "features/step_definitions", "features/step_definitions/forms.rb", "features/step_definitions/html.rb", "features/step_definitions/requests.rb", "features/step_definitions/sessions_steps.rb", "features/support", "features/support/app.rb", "features/support/env.rb", "lib/hancock", "lib/hancock/api", "lib/hancock/api/consumer.rb", "lib/hancock/api/user.rb", "lib/hancock/api.rb", "lib/hancock/models", "lib/hancock/models/consumer.rb", "lib/hancock/models/model.rb", "lib/hancock/models/user.rb", "lib/hancock/sso", "lib/hancock/sso/sessions.rb", "lib/hancock/sso/sso.rb", "lib/hancock/sso/views", "lib/hancock/sso/views/unauthenticated.haml", "lib/hancock/sso.rb", "lib/hancock/version.rb", "lib/hancock.rb", "spec/api", "spec/api/consumer_api_spec.rb", "spec/api/user_api_spec.rb", "spec/helpers", "spec/helpers/app.rb", "spec/helpers/fixtures.rb", "spec/helpers/matchers.rb", "spec/requests", "spec/requests/login_spec.rb", "spec/requests/logout_spec.rb", "spec/requests/openid_spec.rb", "spec/spec_helper.rb", "spec/units", "spec/units/app_spec.rb", "spec/units/consumer_spec.rb", "spec/units/landing_page_spec.rb", "spec/units/user_spec.rb"]
  s.homepage = %q{http://github.com/atmos/hancock}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A gem that provides a Rack based Single Sign On Server}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<dm-core>, ["~> 0.10.2"])
      s.add_runtime_dependency(%q<extlib>, ["~> 0.9.14"])
      s.add_runtime_dependency(%q<sinatra>, ["~> 1.1.0"])
      s.add_runtime_dependency(%q<haml>, ["~> 3.0.0"])
      s.add_runtime_dependency(%q<do_sqlite3>, ["~> 0.10.1"])
      s.add_runtime_dependency(%q<dm-validations>, ["~> 0.10.2"])
      s.add_runtime_dependency(%q<dm-timestamps>, ["~> 0.10.2"])
      s.add_runtime_dependency(%q<dm-aggregates>, ["~> 0.10.2"])
      s.add_runtime_dependency(%q<dm-migrations>, ["~> 0.10.2"])
      s.add_runtime_dependency(%q<dm-types>, ["~> 0.10.2"])
      s.add_runtime_dependency(%q<ruby-openid>, ["~> 2.1.7"])
      s.add_runtime_dependency(%q<guid>, ["~> 0.1.1"])
      s.add_runtime_dependency(%q<rack-contrib>, ["~> 0.9.2"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
    else
      s.add_dependency(%q<dm-core>, ["~> 0.10.2"])
      s.add_dependency(%q<extlib>, ["~> 0.9.14"])
      s.add_dependency(%q<sinatra>, ["~> 1.1.0"])
      s.add_dependency(%q<haml>, ["~> 3.0.0"])
      s.add_dependency(%q<do_sqlite3>, ["~> 0.10.1"])
      s.add_dependency(%q<dm-validations>, ["~> 0.10.2"])
      s.add_dependency(%q<dm-timestamps>, ["~> 0.10.2"])
      s.add_dependency(%q<dm-aggregates>, ["~> 0.10.2"])
      s.add_dependency(%q<dm-migrations>, ["~> 0.10.2"])
      s.add_dependency(%q<dm-types>, ["~> 0.10.2"])
      s.add_dependency(%q<ruby-openid>, ["~> 2.1.7"])
      s.add_dependency(%q<guid>, ["~> 0.1.1"])
      s.add_dependency(%q<rack-contrib>, ["~> 0.9.2"])
      s.add_dependency(%q<json>, [">= 0"])
    end
  else
    s.add_dependency(%q<dm-core>, ["~> 0.10.2"])
    s.add_dependency(%q<extlib>, ["~> 0.9.14"])
    s.add_dependency(%q<sinatra>, ["~> 1.1.0"])
    s.add_dependency(%q<haml>, ["~> 3.0.0"])
    s.add_dependency(%q<do_sqlite3>, ["~> 0.10.1"])
    s.add_dependency(%q<dm-validations>, ["~> 0.10.2"])
    s.add_dependency(%q<dm-timestamps>, ["~> 0.10.2"])
    s.add_dependency(%q<dm-aggregates>, ["~> 0.10.2"])
    s.add_dependency(%q<dm-migrations>, ["~> 0.10.2"])
    s.add_dependency(%q<dm-types>, ["~> 0.10.2"])
    s.add_dependency(%q<ruby-openid>, ["~> 2.1.7"])
    s.add_dependency(%q<guid>, ["~> 0.1.1"])
    s.add_dependency(%q<rack-contrib>, ["~> 0.9.2"])
    s.add_dependency(%q<json>, [">= 0"])
  end
end
