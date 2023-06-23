# frozen_string_literal: true

require_relative "boot"

require "action_cable/engine"
require "action_controller/railtie"
require "action_mailbox/engine"
require "action_mailer/railtie"
require "action_text/engine"
require "action_view/railtie"
require "active_job/railtie"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "rails"

Bundler.require(*Rails.groups)

module Rails7Startkit
  class Application < Rails::Application
    config.load_defaults(7.0)

    config.active_job.queue_adapter = :sidekiq

    config.generators.system_tests = nil
  end
end
