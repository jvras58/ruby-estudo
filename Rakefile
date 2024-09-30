# frozen_string_literal: true

require 'sinatra/activerecord/rake'

namespace :db do
  task load_config: :environment do
    require './app'
  end
end

task :update do
  sh 'git fetch origin'
  sh 'git pull'
end

task :start do
  sh 'bundle'
  sh 'ruby app.rb'
end

task :lint do
  sh 'rubocop -a'
end

task :test do
  sh 'bundle exec rspec'
end
