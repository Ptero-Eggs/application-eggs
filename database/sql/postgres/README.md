# PostgreSQL (13–18)

## Overview

This egg provides a PostgreSQL server with support for multiple versions (13 through 18) within a single configuration.

Originally based on the default Pterodactyl setup, it has been manually extended to allow version selection and basic upgrade handling. Because of these modifications, behavior may differ from standard eggs.

For official documentation, visit the PostgreSQL Global Development Group website: [https://www.postgresql.org/](https://www.postgresql.org/)

---

## Important Notes

1. This egg supports switching between PostgreSQL versions 13–18
2. Changing the version after installation may trigger a data migration or upgrade process
3. Upgrades are best-effort and may require manual intervention depending on environment compatibility
4. Always ensure backups exist before changing versions

---

## Minimum Requirements

At least 2 GB of RAM is recommended for stable operation.

See PostgreSQL recommendations here:
[https://www.commandprompt.com/blog/postgresql_mininum_requirements/](https://www.commandprompt.com/blog/postgresql_mininum_requirements/)

---

## Server Ports

Ports required to run the server:

| Port   | Default |
| ------ | ------- |
| Server | 5432    |
