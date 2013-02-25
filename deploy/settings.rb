default_run_options[:pty] = true
ssh_options[:forward_agent] = true

set :application, 'hcesbuses'
set :branch,     "origin/master"
set :deploy_to, "/usr/www/#{application}"
set :current_path, "#{deploy_to}/current"
set :shared_path, "#{deploy_to}/shared"
set :repository, "git@github.com:minter/#{application}.git"
set :scm, 'git'
set :synchronous_connect, true
set :user, 'rails'
set :current_release, "#{deploy_to}/current"
set :latest_release, "#{deploy_to}/current"

role :app, "rails3.lunenburg.org"
role :db,  "rails3.lunenburg.org", :primary => true, :no_deploy => true

set :rails_env, "production"
set :current_revision, `git rev-parse #{branch}`
