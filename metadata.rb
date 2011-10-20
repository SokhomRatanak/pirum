maintainer       "Christian Trabold"
maintainer_email "cookbooks@christian-trabold.de"
license          "MIT"
description      "Installs/Configures Pirum - A simple PEAR Channel Server Manager"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.2"

%w[php].each do |cb|
  depends cb
end

%w{ubuntu debian}.each do |os|
  supports os
end
