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

## install golang
    ```bash
     cd newlinux && sudo chmod 775 go.sh && ./go.sh
    ```

## install xampp
    ```bash
     cd newlinux && sudo chmod 775 xampp.sh && ./xampp.sh
    ```


<!-- drop down -->
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