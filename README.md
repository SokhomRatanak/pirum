# DESCRIPTION:

This cookbook installs pirum - The simple PEAR Channel Server Manager.

Installation is done via PEAR itself.

See http://www.pirum-project.org/ and https://github.com/fabpot/Pirum for developer-related sources.

# REQUIREMENTS:

* php
* a webserver cookbook

This recipe is currently only tested with Ubuntu & Debian.

# ATTRIBUTES:

	[:pirum][:port]        # 8080
	[:pirum][:hostname]    # "pear.example.com"
	[:pirum][:name]        # "Your PEAR channel"
	[:pirum][:repository]  # "example"
	[:pirum][:webroot]     # "/var/www/"

# USAGE:

Install pirum and start uploading your PEAR packages as described here: http://www.pirum-project.org/ > Adding new Releases