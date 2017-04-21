Overview

This puppet module will update the generate-puppet-types script to avoid a known issue with Code Manager and environment isolation in PE 2016.5.1 through 2017.1.1.

Module Description

It will do the following things:

Overwrite the existing /opt/puppetlabs/server/apps/puppetserver/bin/generate-puppet-types.rb with an updated version that is not subject to the bug.  The module will only apply the resource if the affected versions of PE are in use.

Example Usage

Add the class codemgmt_1055_hotfix to a node group containing only the PE master node in the PE Classifier.  Execute a Puppet agent run on the PE master to enforce the updated file resource.

The bug in question manifests as Code Manager code deploys hanging.  If the inability to deploy code is preventing the deployment of this hotfix module, disable environment isolation temporarily using the instructions at https://docs.puppet.com/puppet/4.10/environment_isolation.html#troubleshooting-environment-isolation.  Once the module is deployed, re-enable environment isolation.
