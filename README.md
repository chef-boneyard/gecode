# gecode Cookbook

[![Build Status](https://travis-ci.org/chef-cookbooks/gecode.svg?branch=master)](http://travis-ci.org/chef-cookbooks/gecode) [![Cookbook Version](https://img.shields.io/cookbook/v/gecode.svg)](https://supermarket.chef.io/cookbooks/gecode)

Installs Gecode 3.5.0+ development package.

## Requirements

### Platforms

- Debian/Ubuntu
- RHEL/CentOS/Scientific/Amazon/Oracle
- Mac OS X 10.6+

### Chef

- Chef 12.1+

### Cookbooks

- apt - for installing packages from apt.chef.io
- build-essential - for compiling from source

## Attributes

- `node['gecode']['install_method']` - Specifies the recipe to use for installing gecode.
- `node['gecode']['url']` - base url to download from. Default is the Gecode distribution server.
- `node['gecode']['version']` - version of gecode to install.
- `node['gecode']['checksum']` - checksum of the source tarball.
- `node['gecode']['configure_options']` - array of options to pass to ./configure for compiling gecode.

## Usage

### default

Include default recipe in a run list, to get some Gecode installed. Installs Gecode by package or source depending on the platform. The recipe is primarily used to install gecode's development package or from source in order to install the `dep_selector` gem, which needs to compile native extensions.

### package

Installs Gecode from packages. On Debian and Ubuntu systems, the recipe will attempt to install packages from apt.chef.io. It uses the apt repository LWRP in Chef's apt cookbook to enable the repository. For releases after Debian 7.0 (Wheezy) and Ubuntu 11.04 (Natty), Gecode 3.5.0+ exists in the main repositories.

### source

Installs Gecode from source. Note that compiling gecode takes a long time, up to ~30 minutes on a 4 core Macbook Pro.

## License & Authors

Author:: Chris Walters ([cw@chef.io](mailto:cw@chef.io))

Author:: Nuo Yan ([nuo@chef.io](mailto:nuo@chef.io))

Author:: Joshua Timberman ([joshua@chef.io](mailto:joshua@chef.io))

Author:: Seth Chisamore ([schisamo@chef.io](mailto:schisamo@chef.io))

```text
Copyright:: 2009-2015, Chef Software, Inc

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
