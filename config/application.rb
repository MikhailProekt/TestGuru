require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TestGuru
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    
    # I18n.available_locales = [:en, :ru]
    config.time_zone = 'Moscow'
    config.i18n.default_locale = :ru
    config.i18n.available_locales = %i[en ru]

    config.autoload_paths << "#{Rails.root}/lib/clients"
    Dotenv::Railtie.load
    HOSTNAME = ENV['HOSTNAME']
  end
end
