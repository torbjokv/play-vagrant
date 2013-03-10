include_recipe "build-essential"#required by database::mysql
include_recipe "apt"
#require_recipe "apache2"
include_recipe "java"
include_recipe "openssl"
include_recipe "mysql::server"
include_recipe "mysql::client"
include_recipe "database::mysql"
include_recipe "nfs"

package("vim")
package("screen")

# execute "disable-default-site" do
#   command "sudo a2dissite default"
#   notifies :reload, resources(:service => "apache2"), :delayed
# end

# web_app "project" do
#   template "project.conf.erb"
#   notifies :reload, resources(:service => "apache2"), :delayed
# end

# execute "start-play" do
#   command "cd #{node[:settings][:directory]}; #{node[:play][:install_dir]}/play ~run &"
#   action :nothing
# end

# execute "start-mysql" do
#   command "service my"
#   action :nothing
# end


# create a mysql database
mysql_database 'tm2' do
  connection ({:host => "localhost", :username => 'root', :password => node['mysql']['server_root_password']})
  action :create
end