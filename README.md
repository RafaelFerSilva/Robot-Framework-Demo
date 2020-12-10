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

    [make_install.sh](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/57072db7-bf8b-468e-8c72-62d84027073a/make_install.sh)

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

    ![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/d3064c93-f06f-40f9-8b9d-a60d2899a550/Screenshot_from_2020-12-10_13-52-26.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/d3064c93-f06f-40f9-8b9d-a60d2899a550/Screenshot_from_2020-12-10_13-52-26.png)

    - Authentication using "**secret**" ****password

        ![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/e4de28e7-bea1-4a2b-8f03-f9f7f9c70b93/Screenshot_from_2020-12-10_13-53-37.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/e4de28e7-bea1-4a2b-8f03-f9f7f9c70b93/Screenshot_from_2020-12-10_13-53-37.png)
        
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