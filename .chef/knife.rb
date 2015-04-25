# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "jncplus"
client_key               "#{current_dir}/jncplus.pem"
validation_client_name   "jncplus-validator"
validation_key           "#{current_dir}/jncplus-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/jncplus"
cookbook_path            ["#{current_dir}/../cookbooks"]

# Amazon AWS
knife[:aws_access_key_id] = ENV['AWS_ACCESS_KEY_ID']
knife[:aws_secret_access_key] = ENV['AWS_SECRET_ACCESS_KEY']
knife[:aws_ssh_key_id] = ENV['AWS_SSH_KEY_ID']
knife[:region] = ENV['AWS_DEFAULT_REGION'] 
