module Anathief
 # require 'yaml'
  require 'dotenv'
  Dotenv.load('../.env')
  RAILS_ENV = ENV["RAILS_ENV"]
  REDIS_HOST = ENV["REDIS_HOST"]
  REDIS_KPREFIX = ENV["REDIS_KPREFIX"]
  REDIS_PASS = ENV["REDIS_PASS"]
#  settings_file = File.expand_path(File.dirname(__FILE__) + "/../config/settings.yml")
 # puts "Loading settings from #{settings_file}, env #{RAILS_ENV}"
 # SETTINGS = YAML.load_file(settings_file)["#{RAILS_ENV}"]

  # module Facebook
  #   APP_ID = ENV["FACEBOOK_APP_ID"]
  #   SECRET = ENV["FACEBOOK_APP_SECRET"]
  #   CANVAS_URL = ENV["FACEBOOK_CANVAS_URL"]
  # end

  module AppServer
    LISTEN_HOST = ENV["APP_SERVER_LISTEN_HOST"]
    CONNECT_HOST = ENV["APP_SERVER_CONNECT_HOST"]
    PORT = ENV["APP_SERVER_PORT"]
    SIOWS_URL = ENV["APP_SERVER_SIOWS_URL"]
  end

  module BotControl
    LISTEN_HOST = ENV["BOT_CONTROL_LISTEN_HOST"]
    CONNECT_HOST = ENV["BOT_CONTROL_CONNECT_HOST"]
    PORT = ENV["BOT_CONTROL_PORT"]
  end

  module Internal
    ALLOWED_HOSTS = ENV["INTERNAL_ALLOWED_HOSTS"]
    ENDPOINT = ENV["INTERNAL_ENDPOINT"]
  end

  WORDNIK_KEY = ENV["WORDNIK_APIKEY"]

  TOKEN_SECRET = ENV["TOKEN_SECRET"]
end

require 'wordnik'
puts "Initializing Wordnik..."
Wordnik.configure do |config|
  config.api_key = Anathief::WORDNIK_KEY
  #config.default_timeout 2
end
