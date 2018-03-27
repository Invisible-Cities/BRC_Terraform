# Terraform

Code sets up a machine on TACC using one of Jetstream's images. Machine comes along with basic networking capabilities (Terraform sets up a router and networking) and nginx webserver.

To setup, get an openrc file from TACC (See link in Jetstream API Documentation)

Set up openrc with following command
```
source $OPENRCFILE
```

Create an ssh key to use with the remote machine and set the appropiate variable in variables.tf
It asks for the location of your ssh key, use the private key name and make sure the public key name is $PRIVATEKEYNAME.pub

Run the following command to set up the remote machine

```
terraform apply
```

You will see a prompt for the external gateway, do the following

To get a list of usable floating IP pools run this command, and the UUID of the external gateway
is in the following `ID` column:

```
$ openstack network list --external
+--------------------------------------+--------+----------------------------------------------------------------------------+
| ID                                   | Name   | Subnets                                                                    |
+--------------------------------------+--------+----------------------------------------------------------------------------+
| fd21df30-693b-496a-ac69-8637b9c24cd3 | public | a2d7c467-44f9-43c5-b387-8a6742f45b5c, ee51200c-9b64-4977-ad30-622039d7bba1 |
+--------------------------------------+--------+----------------------------------------------------------------------------+
```
