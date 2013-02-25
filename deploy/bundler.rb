namespace 'deploy' do
  desc "Do the bundle install magic"
  task :bundle, :roles => :app, :except => { :no_release => true } do
    "cd #{current_path} && bundle"
  end
end

after 'deploy:update_code', 'deploy:bundle'
