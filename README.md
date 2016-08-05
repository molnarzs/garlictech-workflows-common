# Common development workflows

[![NPM Package Version](https://img.shields.io/npm/v/garlictech-workflows-common.svg?style=flat-square)](https://www.npmjs.com/package/garlictech-workflows-common)
[![Build Status](https://travis-ci.org/garlictech/garlictech-workflows-common.svg?branch=master)](https://travis-ci.org/garlictech/garlictech-workflows-common)
[![Dependency Status](https://img.shields.io/david/garlictech/garlictech-workflows-common.svg?style=flat-square)](https://david-dm.org/garlictech/garlictech-workflows-common)


This is a centralized build/development workflow management system that all the GarlicTech components should use. Normally, you should not use it directly, other 'end' workflow
packages should depend on it, for example https://github.com/garlictech/garlictech-workflows-client or https://github.com/garlictech/garlictech-workflows-server.

The package provides gulp commands to deploy, etc. a component.

List available gulp tasks with help:

```gulp help```

