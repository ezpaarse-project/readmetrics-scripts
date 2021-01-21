---
title: Updates
description: ''
position: 4
category: 'Essential things to know'
---

## ezPAARSE

The following commands update and rebuild the core of ezPAARSE.

```bash
./update.sh ezpaarse
```

The following commands update and rebuild the core of ezPAARSE. They also update the working materials (parsers, knowledge bases, scrapers, robots lists and predefined settings).

```bash
./update.sh ezpaarse all
```

### Working materials

The following commands update the materials needed by ezPAARSE. There is one distinct command per material type, see comments.

```bash
./update.sh platforms-update   # update parsers, knowledge bases, scrapers
./update.sh middlewares-update # update middlewares
./update.sh exclusions-update  # update the lists of hosts identified as robots
./update.sh resources-update   # update predefined settings, default proxy formats
```