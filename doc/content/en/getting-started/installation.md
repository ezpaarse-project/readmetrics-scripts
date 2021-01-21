---
title: Installation
description: ''
position: 2
category: 'Getting started'
---


Make sure you fulfilled the <nuxt-link to="/getting-started/requirements">requirements</nuxt-link> before going any further.

## Stable version

To install the last stable version on a Unix system, open a console and enter :

```bash
git clone https://github.com/ezpaarse-project/readmetrics-scripts.git
cd readmetrics-scripts
./install.sh
```

## Uninstall ReadMETRICS

Stop and delete docker's containers :

```bash
./down.sh
```

Remove the readmetrics-scripts folder :

```bash
rm -rf readmetrics-scripts
```