# frozen_string_literal: true

require 'sinatra/base'

require 'bundler/setup'
Bundler.require(:default, Sinatra::Base.environment)

require 'dotenv'
Dotenv.load

require 'active_support/all'

set :database,
  { adapter: 'sqlite3', database: ENV.fetch('DB_PATH', 'db/development.sqlite3') }
