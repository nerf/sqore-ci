#
# Cookbook Name:: nginx-sqore
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe('nginx')

template '/etc/nginx/sites-available/default' do
  source 'default'
end
