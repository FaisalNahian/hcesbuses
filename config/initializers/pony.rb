pony_yml = YAML.load_file(File.join(Rails.root, "config","pony.yml"))

PONY_CONFIG = { 
  :via => :smtp, 
  :via_options => {
    :address              => pony_yml['server'],
    :port                 => pony_yml['port'],
    :user_name            => pony_yml['username'],
    :password             => pony_yml['password'],
    :authentication       => :plain, 
    :enable_starttls_auto => true,
    :domain               => pony_yml['domain']
}}
