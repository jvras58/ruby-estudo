# frozen_string_literal: true

require './app/model/user'

class UserRepository < ActiveRecord::Base
  self.table_name = 'users'
end
