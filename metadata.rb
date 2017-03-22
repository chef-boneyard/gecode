name             'gecode'
maintainer       'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license          'Apache-2.0'
description      'Installs gecode'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '3.1.0'

%w( debian ubuntu redhat centos scientific oracle fedora mac_os_x ).each do |os|
  supports os
end

depends 'build-essential'
depends 'yum-epel'

source_url 'https://github.com/chef-cookbooks/gecode'
issues_url 'https://github.com/chef-cookbooks/gecode/issues'
chef_version '>= 12.1'
