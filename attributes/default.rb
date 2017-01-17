#
# Author:: Seth Chisamore (<schisamo@chef.io>)
# Cookbook:: gecode
# Attribute:: default
#
# Copyright:: 2011-2016, Chef Software, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

case node['platform_family']
when 'debian', 'fedora'
  default['gecode']['install_method'] = 'package'
when 'rhel'
  default['gecode']['install_method'] = if node['platform_version'].to_f >= 6
                                          'package'
                                        else
                                          'source'
                                        end
else
  default['gecode']['install_method'] = 'source'
end

default['gecode']['url'] = 'http://www.gecode.org/download'
default['gecode']['version'] = '3.5.0'
default['gecode']['checksum'] = 'b76cc4a0a198cd241c6aff2f865dde7d25061bf6401e85ba4c97717383c0d48d'

default['gecode']['configure_options'] = %w(
  --disable-debug
  --disable-dependency-tracking
  --disable-qt
  --prefix=/usr/local
  --with-architectures=i386,x86_64
)
