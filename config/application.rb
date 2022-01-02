require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "devise"
require "kaminari"
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
# require "action_cable/engine"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Rs
  class Application < Rails::Application
    config.time_zone = 'Tokyo'
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
      config.autoloader = :classic

    # Don't generate system test files.
    config.generators.system_tests = nil
  end
end

module I18nApp
  class Application < Rails::Application
<<<<<<< HEAD
    config.i18n.default_locale = :ja # 追加 
=======
    config.i18n.default_locale = :ja # 追加
>>>>>>> fbf36da6984512d8300281394ded38b212989388
  end
end
