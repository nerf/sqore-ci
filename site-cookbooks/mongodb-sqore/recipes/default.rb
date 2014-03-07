#
# Cookbook Name:: mongodb-sqore
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'mongodb::10gen_repo'

package node[:mongodb][:package_name] do
  action :install
  version node[:mongodb][:package_version]
end