## Ubuntu Notes

### Install developer tools

```
sudo apt-get install gcc g++ make
```

### Install node

I use node version manager on my development machine.
But for a cloud install this is good.
Replace 8 with the version you want to install ie 10

```
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
```

Then

```
 sudo apt-get install -y nodejs
```

### Install Yarn

```
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn
```
