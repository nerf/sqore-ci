#
# Cookbook Name:: users-sqore
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# execute 'useradd_jenkins' do
#   command 'useradd -m jenkins'
#   notifies :create, "ruby_block[useradd_jenkins_run]", :immediately
#   not_if { node.attribute?("user_jenkins_created") }
# end

# ruby_block "useradd_jenkins_run" do
#   block do
#     node.set['user_jenkins_created'] = true
#     node.save
#   end
#   action :nothing
# end

execute 'useradd -m -G admin -s /bin/bash jenkins' do
  action :run
  only_if { !!`id jenkins 2>&1`.match(/no such user/i) }
end