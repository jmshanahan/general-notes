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
```

I had difficulty with the above but this worked

```
sudo -u portal psql -d test -U portal
```

where portal is a user on the linux system and owner of the database test.u

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

## From psql prompt

To get a list oc options

```
\?
```

To get a list of the databases

```
\l
```

When you see the databases listed if you want to connect to another database

```
\c josephd
```

where josephd is another database

To get a list of tables in a database

```
\d
```

and
describes the details of the table.

```
\d table name
```

To see just the tables.

```
\dt
```

To run a sql file

```
\i /home/joseph/Downloads/person.sql
```

BTW: The table data was generated from mockaroo.com

## Postgresql Authentication Methods

### Peer Authentication

This authentication method will use the base operating system's user name and password as the postgresql database server user account to login. this method is only effective for local postgresql connection.

### Password Authentication

This authentication method will only need the user to provide username and password, and this methos is effective for both local and remote postgresql database server connection. The password can be saved bothin clear-text or md5-encrepted.

### Changing methods

You will need to go to the

```
/etc/postgresql/11/main/pg_hba.conf
```

and find

```
local all postgres peer
```

and change to

```
local all postgees md5
```

I had a problem with getting this to work so I put it back to the way it was.
Anyway if I have trouble in the future this is where I need to be looking.
