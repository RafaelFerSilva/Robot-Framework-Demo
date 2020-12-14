# Demo Project - Automation Tests With Robot Framework

This project aims to set up a local environment to perform automated tests using **Robot Framework, Selenium and Docker**.

&nbsp;
&nbsp;
&nbsp;

##  **Install Robot Framework and dependencies**

Clone this repo in your local

Open the terminal at the root of the project and execute: Ex: ./make_install.sh

- make_install.sh is a script for install Robot Framework and dependencies
    1. **Update packages**
    2. **Install ChromeDriver**
    3. **Install dependencies**
    4. **Install PIP**
    5. **Install Robot Framework**
    6. **Install Selenium2library**
    7. **Install FakerLibrary**

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
  
Create the docker group.
```bash
$ sudo groupadd docker
```

Add your user to the docker group.
```bash
$ sudo usermod -aG docker $USER
```

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
- Execute tests at the root of the project

    ```bash
     robot --outputdir results  tests/
    ```
