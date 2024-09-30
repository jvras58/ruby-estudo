# frozen_string_literal: true

require 'sinatra/activerecord/rake'
require 'highline/import'

namespace :db do
  task load_config: :environment do
    require './app'
  end

  desc 'Crie uma nova migração'
  task :create_migration do
    migration_name = ask('Digite o nome da migração: ') { |q| q.default = 'nova_migracao' }
    sh "bundle exec rake db:create_migration NAME=#{migration_name}"
  end

  desc 'Execute a migração'
  task :migration do
    sh 'bundle exec rake db:migrate'
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
