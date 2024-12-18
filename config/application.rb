require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module DefinitivoSite

  class Application < Rails::Application

    config.load_defaults 8.0

    config.autoload_lib(ignore: %w[assets tasks])
  end
end