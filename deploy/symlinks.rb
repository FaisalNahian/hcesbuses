set :normal_symlinks, %w(
  database.yml
  pony.yml
  twitter.yml
)

namespace :make_symlinks do
  desc "Link the files"
  task :make, :roles => :app, :except => { :no_release => true } do
    commands = normal_symlinks.map do |path|
      "ln -nfs #{shared_path}/config/#{path} #{current_path}/config/#{path}"
    end
    run <<-CMD
      cd #{current_path} && #{commands.join(" && ")}
    CMD
  end
end

after 'deploy:update_code', 'make_symlinks:make'
