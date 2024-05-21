# AUTOMATE INSTALLER

## Description
This script is used to automate the installation of the following software:

## versi tanpa download

### install aplication
```bash
bash <(curl -s https://raw.githubusercontent.com/rezapace/newlinux/main/app.sh)
```

### <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><rect x="2" y="3" width="4" height="4" rx="1" fill="#fff"/><rect x="6" y="3" width="4" height="4" rx="1" fill="#fff"/><rect x="10" y="3" width="4" height="4" rx="1" fill="#fff"/><rect x="14" y="3" width="4" height="4" rx="1" fill="#fff"/><rect x="2" y="9" width="4" height="4" rx="1" fill="#fff"/><rect x="6" y="9" width="4" height="4" rx="1" fill="#fff"/><rect x="10" y="9" width="4" height="4" rx="1" fill="#fff"/><rect x="14" y="9" width="4" height="4" rx="1" fill="#fff"/></svg> Install Golang

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

### install c9
```bash
bash <(curl -s https://raw.githubusercontent.com/rezapace/newlinux/main/c9.sh)
```

### install bashscrip
```bash
bash <(curl -s https://raw.githubusercontent.com/rezapace/newlinux/main/bashscrip.sh)
```
```bash
sudo chmod 775 github/bash/bash.sh && ./github/bash/bash.sh
```

### install fish
```bash
cd ~/github && git clone https://github.com/rezapace/newlinux && cd newlinux && sudo chmod +x fish.sh && sudo ./fish.sh
```

### install rofi
<details>
  <summary>Rofi</summary>
  
   ```bash
   Set keybinding to open Rofi: Ctrl+Space
   Command: rofi -show drun
   ```
   </details>
   
```bash
bash <(curl -s https://raw.githubusercontent.com/rezapace/newlinux/main/rofi.sh)
```

### install nodejs
```bash
bash <(curl -s https://raw.githubusercontent.com/rezapace/newlinux/main/nodejs.sh)
```

### install python
```bash
bash <(curl -s https://raw.githubusercontent.com/rezapace/newlinux/main/python.sh)
```


# VERSI TANPA DOWNLOAD ⏬

<details>
<summary>Versi lengkap</summary>

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

</details>