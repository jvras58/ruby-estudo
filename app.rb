# frozen_string_literal: true

require 'sinatra'
require 'sinatra/activerecord'
require 'dotenv'
Dotenv.load

require './app/adapters/controllers/users_controllers'

# TODO: Configurar para usar environment.rb e retirar a conexão daqui
set :database, { adapter: 'sqlite3', database: ENV.fetch('DB_PATH', nil) }

post '/users' do
  { result: Users::UsersController.create(params) }.to_json
end
