#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'httpd'

service 'httpd' do
   action [:start, :enable]
end
package 'git'
git '/var/www/html' do
 repository 'https://github.com/demoglot/html.git'
 revision 'master'
 action :sync
end

 
