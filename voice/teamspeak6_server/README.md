# TeamSpeak 6 Server

## [Official Website](https://teamspeak.com)

TeamSpeak 6 is the next-generation voice communication platform for gaming and communities.


## Server Ports

You can use any available ports. The most important defaults are shown below:

| Port                   | Default | Description                            |
|------------------------|---------|------------------------                |
| Voice Port             | 27015   | Main voice server port                 |
| File Transfer Port     | 30033   | File transfers                         |
| Query Port             | 10011   | (Optional/admin)                       |
| Query SSH   | 10022    | Server Query SSH interface (Optional/admin)      |
| Query HTTP  | 10080    | Server Query HTTP interface (Optional/admin)     |
| Query HTTPS | 10443    | Server Query HTTPS interface (Optional/admin)    |

## Notes

- **Admin Rights**: On first launch, copy the generated key (token) from the console to claim server admin in your TeamSpeak 6 client.
- **Beta Limits**: TeamSpeak 6 server beta is limited to 5 users.
- **More Info**: [TeamSpeak 6 Beta Announcements](https://community.teamspeak.com/c/teamspeak-6-server)
- **Query Interfaces**: Enable/disable additional query interfaces (SSH/HTTP/HTTPS) in the server variables.
- **S3 File Transfer**: Leave S3 variables blank unless you wish use S3-compatible storage.
- **Certificates**: For HTTPS query, upload your cert/key to `/home/container` and enter the filenames in their variables.

### ARM64
* The ARM64 egg may not perform as expected due to the AMD64 to ARM64 emulaton.

