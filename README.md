# chef-infra_vagrant
Vagrantfile for for installing the Chef Infra service using the Chef Automate installer.

After running `vagrant up` you will be prompted to accept the MSLA.

Once the script has finished, login to the VM with `vagrant ssh`.

Inside /home/vagrant you'll find the needed user1.pem file. Create a new .chef/ directory on your local machine in the same directory as the Vagrantfile and copy this file into it for use with a knife.rb or config.rb file, or use the credentials file method within ~/.chef/ documented here https://docs.chef.io/workstation/knife_setup

You should then be able to run `knife client list` as per usual, or set up your credentails file with the following profile:

`
[learn-chef]
client_name     = 'user1'
client_key      = 'user1.pem'
chef_server_url = 'https://learn-chef.automate/organizations/chef_foundations'
`

And run `knife config use-profile learn-chef`. Afterwards you should be able to fetch the appropriate certificates with `knife ssl fetch` and check that everything works with `knife client list`.

