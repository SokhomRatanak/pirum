#
# Cookbook Name:: pirum
# Attributes:: pirum
#
# Copyright 2011, dkd Internet Service GmbH
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

# Set general properties
set_unless[:pirum][:port]        = 8080
set_unless[:pirum][:hostname]    = "pear.example.com"
set_unless[:pirum][:name]        = "Your PEAR channel"
set_unless[:pirum][:repository]  = "example"
set_unless[:pirum][:webroot]     = "/var/www/"
