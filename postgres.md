## Starting up

The service name in ubuntu is postgres.
To stop the service

```
sudo systemctl stop postgres
sudo systemctl start postgres
```

When I installed postgres I then entered (from the bash prompt)

```
sudo -u postgres psql postgres
```

To get a list of databases on the server

```
sudo -u postgres plsql -l
```

You can also get the same information while running psql

```
select datname from pg_database;
```

Full connection parameters would be either

```
psql -h myhost -p 5430 -d mydb -U myuser
psql postgresql://myuser@myhost:5432/mydb
```

The default port is 5432

This will bring you to the postgres prompt.
Postgres does not have a default password on installation.
Therefore then you will need to enter the following

```
\password postgres
```

You will be prompted to enter a password.

Then you are basically right to go.

You can then set up pgAdmin

Check if postgres is running at the bash shell

```
ps -el | grep post
```

This command will show you the path to where postgres has been installed and its config file.

```
sudo ps auxw | grep postgres | grep -- -D
psql --version
```

However this may show the client which is different to the server
To check the server version

### Connected Information

Once in

```
\conninfo
```

This will give you the connected information

```
CREATE ROLE portal WITH LOGIN SUPERUSER PASSWORD 'portal';
```

portal will need to be a user on your linux system and also it will need to be a member of the postgres group.

### du

Not sure what du means, my guess is it means display users so from the prompt enter

```
\du
```

This will give you a list of users and their privilages.
