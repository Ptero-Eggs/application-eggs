# SFTP Storage Share

### Description

A simple "empty" egg that acts as a private SFTP storage share by utilizing Pterodactyl's built in SFTP system for servers. Sub-users can be added to the server by the owner to allow additional people to access the share. "Starting" the server performs no actions and it should be left off.

You can access the SFTP server using your favourite SFTP client and the SFTP login information found under the "Settings" tab of the server.

___

### Server Ports

Pterodactyl may force you to assign a port to the server but it will not be used and can be any port. The only port that will be used will be the SFTP port assigned to the node the server is running on.

___

### Known Issues

- Pterodactyl currently does not enforce server storage size when the server is not running. Therefore, because this "server" does not run, the Disk Space setting when creating the server will not be enforced and caution should be used when deploying this solution to un-trusted end-users.
