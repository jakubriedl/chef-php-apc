include_recipe "php"

#php_pear "PDO" do
#  action :install
#end

# Required to install APC.
package "libpcre3-dev"

# Install APC.
php_pear "APC" do
  directives(:shm_size => "128M", :write_lock => 1, :slam_defense => 0)
  version "3.1.6"
  action :install
end