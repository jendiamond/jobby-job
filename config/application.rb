require File.expand_path('../boot', __FILE__)
require 'rails/all'

Bundler.require(*Rails.groups)

module Job
  class Application < Rails::Application
    config.time_zone = 'Pacific Time (US & Canada)'
    config.active_record.default_timezone = 'Pacific Time (US & Canada)'
    config.active_record.raise_in_transactional_callbacks = true
  end
end
