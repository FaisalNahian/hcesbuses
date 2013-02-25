namespace :deploy do
  namespace :assets do
    task :precompile, :roles => :app, :except => { :no_release => true } do
      run %Q{cd #{latest_release} && #{rake} RAILS_ENV=#{rails_env} assets:precompile}
    end
  end
end

after 'bundle:install', 'deploy:assets:precompile'

