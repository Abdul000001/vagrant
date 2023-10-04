# Vagrant

## Redis Cluster with MongoDb 3.4

### What is this ? 

This branch contains a configuration file for a vagrant vm with a static IP set in Vagrantfile.

Once created this vm will have : 

-   A MongoDb 3.4.9 docker container available at the 27017,28017 port
-   A redis cluster available from port 7001 to port 7006
-   Ubuntu operating system

The whole purpose of this branch is to have working databases for a local dev environment.

## Prerequisites

- Arm64 operating system 
- Vmware desktop provider for vagrant ( it should work with different provider, but you'll need to find a compatible vagrant box, since the one used here is only compatible with vmware )