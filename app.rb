# frozen_string_literal: true

require_relative 'config/environment'

require './app/adapters/controllers/users_controllers'

puts 'Servidor Sinatra está iniciando...'

post '/users' do
  { result: Users::UsersController.create(params) }.to_json
end

Sinatra::Application.run!
