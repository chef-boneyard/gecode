name             'gecode'
maintainer       'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license          'Apache 2.0'
description      'Installs gecode'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '2.1.1'

%w{ debian ubuntu redhat centos scientific fedora mac_os_x }.each do |os|
  supports os
end

%w{ build-essential apt }.each do |cb|
  depends cb
end

depends 'yum', '~> 3.0'
depends 'yum-epel'

source_url 'https://github.com/chef-cookbooks/gecode' if respond_to?(:source_url)
issues_url 'https://github.com/chef-cookbooks/gecode/issues' if respond_to?(:issues_url)
