require 'bundler/capistrano'

load 'deploy/settings'
load 'deploy/bundler'
load 'deploy/database'
load 'deploy/setup'
load 'deploy/symlinks'
load 'deploy/assets'

namespace :deploy do

  desc "Deploy the MFer"
  task :default do
    update
    restart
  end

  desc "Deploy with migrations"
  task :migrations do
    update
    migrate
    restart
  end

  desc "Setup a GitHub-style deployment."
  task :setup, :except => { :no_release => true } do
    run "git clone #{repository} #{current_path}"
  end

  desc "Update"
  task :update, :except => { :no_release => true } do
    update_code
    finalize_update
  end

  desc "Restart"
  task :restart, :except => { :no_release => true } do
    run "mkdir -p #{current_path}/tmp"
    run "touch #{current_path}/tmp/restart.txt"
  end

  namespace :rollback do
    desc "Rollback"
    task :default do
      code
      restart
    end

    desc "Rollback a single commit."
    task :code, :except => { :no_release => true } do
      set :branch, "#{branch}@{1}"
      update_code
    end
  end

  desc "Update the deployed code."
  task :update_code, :except => { :no_release => true } do
    run "cd #{current_path}; git fetch origin; git reset --hard #{branch}"
  end

  desc 'Does nothing, successfully. Only here because Bundler needs to attach to it.'
  task :finalize_update, :except => { :no_release => true } do
    true
  end
end
