## Introduction

PM2 Notes

### General

To allow a user to manage pm2 without having to give that user system prilivages.

```
sudo env PATH=$PATH:/usr/bin /usr/lib/node_modules/pm2/bin/pm2 startup systemd -u apiuser --hp /home/apiuser
```
