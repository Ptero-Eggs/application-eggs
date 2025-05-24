# DoritoBot

## Main DoritoBot [GitHub](https://github.com/itzMiney/DoritoBot)

"Bocchi the Rock!"-Themed General Purpose and Moderation Discord Bot by itzMiney

## Server Ports

There are no ports required for this bot

## Installation

This bot requires an existing database and db user before installation, with those credentials provided it will just import the initial schema itself

Either make a new database and db user for the bot on the panel machine, using the [MySQL Setup Guide](https://pterodactyl.io/tutorials/mysql_setup.html), or make one in an instance of the [mariadb egg](https://github.com/Ptero-Eggs/application-eggs/tree/main/database/sql/mariadb).

**Make sure to give the bot all 3 privileged gateway intents in the [Discord Developer Portal](https://discord.com/developers/applications)**

You need to give the bot the `applications.commands` and `bot` scopes in the Installation Tab on the Discord Developer Portal, and also add `Administrator` as permission to the default install settings, also disable guild install as it will only work on servers.

If you want to set up every permission it will need manually instead of giving it full Administrator permissions, here is the full list:

![image](https://github.com/user-attachments/assets/7fb6e8c1-9364-4c4e-8c05-daf4a48ce6e8)
