# chef-infra_vagrant
Vagrantfile for for installing the Chef Infra service using the Chef Automate installer.

After running `vagrant up` you will be prompted to accept the MSLA.

Once the script has finished, login to the VM with `vagrant ssh`.

You will see a directory in your home, /home/vagrant/user1/, and inside you'll find a knife.rf and user1.pem file. Create a new .chef/ directory on your local machine in the same directory as the Vagrantfile, and copy these files into it. A .chef/ directory is included in this repo as an example.

You should then be able to run `knife client list` as per usual. SSL should be ignored in the knife.rb, but you if you experience any issues run `knife ssl fetch` and try again.