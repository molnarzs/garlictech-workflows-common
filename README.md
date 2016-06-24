# Common development workflows

This is a centralized build/development workflow management system that all the GarlicTech components should use. Normally, you should not use it directly, other 'end' workflow
packages should depend on it, for example https://github.com/garlictech/garlictech-workflows-client or https://github.com/garlictech/garlictech-workflows-server.

The package provides gulp commands to deploy, etc. a component.

List available gulp tasks with help:

```gulp help```
