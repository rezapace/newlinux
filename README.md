# AUTOMATE INSTALLER

## Description
This script is used to automate the installation of the following software:

```bash
git clone https://github.com/rezapace/newlinux
```

## install aplication
```bash
cd newlinux && sudo chmod 775 app.sh && ./app.sh
```
<!-- drop down Golang -->
<details>
<summary>golang</summary>

## cek golang installed
   ```bash
    telegram-desktop
    discord
    vscode
    google-chrome
    postman
    preload
    ulauncher
    menghapus firefox
   ```
</details>


## install golang
```bash
cd newlinux && sudo chmod 775 go.sh && ./go.sh
```
<!-- drop down Golang -->
<details>
<summary>golang</summary>

## cek golang installed
   ```bash
    go version
   ```
</details>



## install xampp
```bash
cd newlinux && sudo chmod 775 xampp.sh && ./xampp.sh
```
<!-- drop down xampp -->
<details>
<summary>xampp</summary>

## cek xampp installed
```bash
sudo service apache2 start
sudo service mysql start
```

## pasword phpmyadmin
```bash
root
p
```
    
## Langkah : run,status,stop,restart

### perintah untuk apache

```bash
sudo service apache2 start
sudo service apache2 stop
sudo service apache2 status
sudo service apache2 restart
```

### perintah untuk mysql

```bash
sudo service mysql start
sudo service mysql stop
sudo service mysql status
sudo service mysql restart
```

### Jika terjadi error
```bash
ALTER USER 'root'@'localhost' IDENTIFIED BY 'p';
sudo ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin
``` 

</details>


# VERSI TANPA DOWNLOAD ⏬

<details>
<summary>Versi tanpa download</summary>

## versi tanpa download

### install aplication
```bash
bash <(curl -s https://raw.githubusercontent.com/rezapace/newlinux/main/app.sh)
```

### install golang
```bash
bash <(curl -s https://raw.githubusercontent.com/rezapace/newlinux/main/go.sh)
```

### install xampp
```bash
bash <(curl -s https://raw.githubusercontent.com/rezapace/newlinux/main/xampp.sh)
```

### install docker
```bash
bash <(curl -s https://raw.githubusercontent.com/rezapace/newlinux/main/docker.sh)
```

### install Laravel composer
```bash
bash <(curl -s https://raw.githubusercontent.com/rezapace/newlinux/main/composer.sh)
```

</details>