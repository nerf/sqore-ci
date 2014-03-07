sqore-ci WIP
=============

Setup jenkins-ci and friends using chef-solo


Basic setup
===========

```
vagrant up
vagrant ssh-config --host vagrant >> ~/.ssh/config
bundle
berks
knife solo prepare vagrant
knife solo cook vagrant
```
