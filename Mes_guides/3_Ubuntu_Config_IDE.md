# Configuration des IDE sur Ubuntu

Ce guide survient dans le cas où ces IDE ne se lieraient pas naturellement les compilateurs des languages respectifs.

## 1 | Visual Studio Code (disponible sur le Store de Ubuntu)

### A - Prise en charge de Python
Il suffit d'ajouter à Visual Studio Code le module : 

- Python [ms-python.python] de Microsoft

La liaison avec le compilateur Python, installer au préalable, s'effectue automatiquement.

### B - Prise en charge de Java

Il faut ajouter à Visual Studio Code les modules : 

- Language Support for Java(TM) by Red Hat [redhat.java] de Red Hat
- Java Extension Pack [vscjava.vscode-java-pack] de Microsoft
- Java Test Runner [scjava.vscode-java-test] de Microsoft
- Debugger for Java [vscjava.vscode-java-debug] de Microsoft
- Project Management for Java [vscjava.vscode-java-dependency] de Microsoft
- Maven for Java [vscjava.vscode-maven] de Microsoft

- Code Runne [formulahendry.code-runner] de Jun Han

Ensuite, il faut configurer les modules pour les relier à votre compilateur Java, installer au préalable.

(Section encore en cours)

> /home/<user>/.config/Code/User//settings.json
> /usr/lib/jvm/java-14-openjdk-amd64/bin/java

- source 1 - [ma source de recherche](https://java.tutorials24x7.com/blog/how-to-install-visual-studio-code-for-java-on-ubuntu)
- source 2 - [ma source de recherche](https://linuxhint.com/install_jdk_14_ubuntu/)

## 2 | IntelliJ IDEA (disponible sur le Store de Ubuntu)

