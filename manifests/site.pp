## site.pp ##

# This file (/etc/puppetlabs/puppet/manifests/site.pp) is the main entry point
# used when an agent connects to a master and asks for an updated configuration.
#
# Global objects like filebuckets and resource defaults should go in this file,
# as should the default node definition. (The default node can be omitted
# if you use the console and don't define any other nodes in site.pp. See
# http://docs.puppetlabs.com/guides/language_guide.html#nodes for more on
# node definitions.)

## Active Configurations ##

# Disable filebucket by default for all File resources:
File { backup => false }

# DEFAULT NODE
# Node definitions in this file are merged with node data from the console. See
# http://docs.puppetlabs.com/guides/language_guide.html#nodes for more on
# node definitions.

# The default node definition matches any node lacking a more specific node
# definition. If there are no other nodes in this file, classes declared here
# will be included in every node's catalog, *in addition* to any classes
# specified in the console for that node.

#node 'andrew1443c.mylabserver.com' {
 # include ntp 
#}

$test_top_scope = "Top Scope"

#node /^andrew1443c/ { 
 #notify { "This is a node definition using regex!!!": }
#}

node 'andrew1442c.mylabserver' {
  notify { 'This matches the Apache Vhosts I a trying to configure!!!': }
  include profile::apache 
  include profile::base 
}

node default {

}


#node 'andrew1441c.mylabserver.com' {
 # include pe_repo::platform::el_6_x86_64
 #include pe_repo::platform::ubuntu_1204_amd64 
#} 
