# Les bases essentiels pour Ubuntu 20.04.1 LTS

## A | Commandes Princiaples

### 1 | Mise à jour des paquets
> sudo apt update && apt upgrade && apt clean

### 2 | Services de ubuntu
> service --status-all

## B | Packages utiles

### 1 | Téléchargeurs

#### Téléchargeur - Importants
> sudo apt install curl

#### Téléchargeur - Wget
> sudo apt install wget

### 2 | Nouveau navigateur

#### 1 | Navigateur - Google Chrome

##### a) Installation
> wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
>
> sudo dpkg -i google-chrome-stable_current_amd64.deb

##### b) Désinstallation
> sudo dpkg --remove google-chrome-stable

#### 2 | Navigateur - Brave

##### a) Installation
> curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
>
> echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
> sudo apt update
>
> sudo apt install brave-browser

##### b) Désinstallation
> sudo dpkg --remove brave-browser

### 3 | Ouvrir un fichier depuis un navigateur
> file:///home/<utilisateur>/

## C | Packages développeurs

### 2 | Compilateurs

#### Compilateur - GCC - C & C++
> sudo apt install gcc

#### Compilateur - Java JRE
apt install default-jre
#### Compilateur - Java JDK
> sudo apt install openjdk-14-jre-headless

#### Compilateur - Python - Python
> sudo apt install python
> OU
> sudo apt install python2
> OU
> sudo apt install python3

### 3 | Gestionnaires de paquets
#### Homebrew
> /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#### NPM
> sudo apt install npm

### 4 | Gestionnaires des tâches crown

#### Compilateur - Cron
> sudo apt install cron

### 5 | Serveur Web

#### PHP
> sudo apt install php

#### NodeJS
> sudo apt install nodejs

### 6 | Serveur SQL

#### 1) Installation :
> sudo apt install mysql-server

#### 2) Confguration :
> sudo mysql_secure_installation

```
Securing the MySQL server deployment.

Connecting to MySQL using a blank password.

VALIDATE PASSWORD COMPONENT can be used to test passwords
and improve security. It checks the strength of password
and allows the users to set only those passwords which are
secure enough. Would you like to setup VALIDATE PASSWORD component?

Press y|Y for Yes, any other key for No:
```
Répondre => y
```
There are three levels of password validation policy:

LOW    Length >= 8
MEDIUM Length >= 8, numeric, mixed case, and special characters
STRONG Length >= 8, numeric, mixed case, special characters and dictionary file

Please enter 0 = LOW, 1 = MEDIUM and 2 = STRONG:
```
Répondre => 0 ou 1 ou 2
```
Please set the password for root here.

New password: 

Re-enter new password: 
```
Répondre => <votre_mot_de_passe>
```
Estimated strength of the password: 0 
Do you wish to continue with the password provided?(Press y|Y for Yes, any other key for No) :
```
Repondre => y
```
By default, a MySQL installation has an anonymous user,
allowing anyone to log into MySQL without having to have
a user account created for them. This is intended only for
testing, and to make the installation go a bit smoother.
You should remove them before moving into a production
environment.

Remove anonymous users? (Press y|Y for Yes, any other key for No) :
```
Répondre => y
```
Success.


Normally, root should only be allowed to connect from
'localhost'. This ensures that someone cannot guess at
the root password from the network.

Disallow root login remotely? (Press y|Y for Yes, any other key for No) :
```
Répondre => y
```
Success.


Normally, root should only be allowed to connect from
'localhost'. This ensures that someone cannot guess at
the root password from the network.

Disallow root login remotely? (Press y|Y for Yes, any other key for No) :
```
Répondre => y
```
Success.

By default, MySQL comes with a database named 'test' that
anyone can access. This is also intended only for testing,
and should be removed before moving into a production
environment.


Remove test database and access to it? (Press y|Y for Yes, any other key for No) :
```
Répondre => y
```
 - Dropping test database...
Success.

 - Removing privileges on test database...
Success.

Reloading the privilege tables will ensure that all changes
made so far will take effect immediately.

Reload privilege tables now? (Press y|Y for Yes, any other key for No) :
```
Répondre => y
```
Success.

All done! 
```
#### 3) Connexion au service MySQL
> sudo mysql
```
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 11
Server version: 8.0.22-0ubuntu0.20.04.3 (Ubuntu)

Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql>
```

### 7 | Gestion réseau et sécurité

#### nmap
> sudo apt install nmap

#### hping3
> sudo apt install hping3

#### net-tools
> sudo apt install net-tools

#### tcpdump
> sudo apt install tcpdump

### 8 | Autres

#### mlocate
> sudo apt install mlocate

#### xemacs21
> sudo apt install xemacs21

### 9 | Désintstaller un paquet
> sudo apt purge <le_nom_du_paquet_installé>

### 10 | La commande "apt"
- source 1 - [Ma source de recherche](https://hostadvice.com/how-to/how-to-use-the-apt-command-to-manage-ubuntu-packages/)
- source 2 - [Ma source de recherche](http://doc.ubuntu-fr.org/tutoriel/comment_supprimer_un_paquet)
