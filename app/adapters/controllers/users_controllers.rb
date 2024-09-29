# frozen_string_literal: true

require './app/usecases/users/create'

module Users
  class UsersController
    def self.create(params)
      Users::Create.new(params: params).call
    end
  end
end
