# Demo Project - Automation Tests With Robot Framework

This project aims to set up a local environment to perform automated tests using **Robot Framework, Selenium and Docker**.

&nbsp;
&nbsp;
&nbsp;

##  **Install Robot Framework and dependencies**

- Script for install Robot Framework and dependencies
    1. **Update packages**
    2. **Install ChromeDriver**
    3. **Install dependencies**
    4. **Install PIP**
    5. **Install Robot Framework**
    6. **Install Selenium2library**
    7. **Install FakerLibrary**
    

```bash
#!/usr/bin/env bash

# Versions
CHROME_DRIVER_VERSION=`curl -sS https://chromedriver.storage.googleapis.com/LATEST_RELEASE`

echo $'This Script is about:
\n1 - Update packages
2 - Install ChromeDriver
3 - Install PIP
4 - Install dependencies
5 - Install Robot Framework
6 - Install Selenium2library
7 - Install FakerLibrary'

echo $'\nStart Update Packages'
sudo apt-get -y update

echo $'\nInstall ChromeDriver'
wget -N https://chromedriver.storage.googleapis.com/$CHROME_DRIVER_VERSION/chromedriver_linux64.zip -P ~/
unzip ~/chromedriver_linux64.zip -d ~/
rm ~/chromedriver_linux64.zip
sudo mv -f ~/chromedriver /usr/local/bin/chromedriver
sudo chown root:root /usr/local/bin/chromedriver
sudo chmod 0755 /usr/local/bin/chromedriver

echo $'\nInstall dependencies'
sudo apt install -y build-essential libssl-dev libffi-dev python3-dev

echo $'\nInstall PIP'
sudo apt install -y python3-pip

echo $'\nInstall Robot Framework'
pip3 install robotframework

echo $'\nInstall Selenium2library'
pip3 install --upgrade robotframework-selenium2library

echo $'\nInstall FakerLibrary'
pip3 install robotframework-faker
```
    

&nbsp;
&nbsp;
&nbsp;

-----

&nbsp;
&nbsp;

##  **Docker and Selenium/standalone-chrome**

**Pré-requisitos**

- **Install Docker**
    - [https://docs.docker.com/engine/install/ubuntu/](https://docs.docker.com/engine/install/ubuntu/)

**We have two selenium/standalone images**

- **selenium/standalone-chrome**
    - Running tests but we can not see tests execution
- **selenium/standalone-chrome-debug**
    - Running test and we can see tests execution with **remote  desktop viewer**

- **Up selenium/standalone-chrome container**

```bash
docker run -it -p 4444:4444 selenium/standalone-chrome
```

- **Up selenium/standalone-chrome-debug container**

```bash
docker run -d -p 4444:4444 -p 5900:5900 selenium/standalone-chrome-debug
```
&nbsp;
&nbsp;
&nbsp;

-----

&nbsp;
&nbsp;

##  Remote Desktop Viewer (If you are using **selenium/standalone-chrome-debug)**

- [https://wiki.gnome.org/Apps/Vinagr](https://wiki.gnome.org/Apps/Vinagr)

This demo was create using Ubuntu 18.04.5 LTS and the remote desktop viewer is a default application.

- **Open remote desktop Viewer**
    - Connect with host = localhost

    - Authentication using "**secret**" ****password
        
&nbsp;
&nbsp;
&nbsp;

---

&nbsp;
&nbsp;

##  Execute Robot Framework Tests

- Clone this repo in github
- Open the terminal at the root of the project
- Execute tests

    ```bash
    robot --variablefile common/config/conf_variables.py --outputdir logs  tests/
    ```
