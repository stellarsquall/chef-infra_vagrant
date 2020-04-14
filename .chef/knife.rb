current_dir = File.dirname(__FILE__)

node_name "user1"
chef_server_url "https://chef-automate.test/organizations/chef_foundations"
client_key "#{current_dir}/user1.pem"
ssl_verify_mode :verify_none