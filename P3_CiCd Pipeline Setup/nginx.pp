**Puppet manifest to install and configure an NGINX web server.**

**Ensures nginx is installed, running, enabled on boot, and serves a custom homepage.**
class nginx {

  **Confirm the nginx package is installed**
  package { 'nginx':
    ensure => installed,
  }

  **Confirm the nginx service is running and enabled at boot.**
  service { 'nginx':
    ensure     => running,
    enable     => true,
    require    => Package['nginx'],  # Make sure nginx is installed before starting the service
  }

  **Deploy a custom index.html page to the default nginx web directory.**
  file { '/usr/share/nginx/html/index.html':
    ensure  => file,
    content => "<h1>Technical Challenge Rivers</h1>",
    require => Package['nginx'],  # Validate nginx is installed before placing the file
  }
}

**Apply the nginx class to the node**
include nginx
