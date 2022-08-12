# Reproducible Research
The ability to reproduce results of scientific research is becoming a critical issue with the onging technicial changes and computational updates. Docker, an open source technology, addresses this issue  by providing a virtual environment with its package and dependencies to ensure a long-term reproducibilty of scientific results. In this tutorial, we will walk you through a few steps to install Docker software on your local machines, and to import and run *mb1-cdi-followup*'s Rstudio Docker image.  A *docker image* is a pre-configured copy of a  software, Rstudio in our case, with an installation of selected R versions, packages, and dependencies. In other words, a *docker image* is a virtual copy of *mb1-cdi-followup*'s original R environment that was used to produce the results. 

In order to run *mb1-cdi-followup*'s Rstudio Docker image, you have to follow three steps.
1. Creating Dokcer Account.
2. Donwloading and Installing Docker Software.
3. Importing and Running *mb1-cdi-followup*'s Rstudio Docker image.


## Step 1: Creating Docker Account
- Create an account in [docker](https://hub.docker.com/). Please, keep a copy of your *account ID* and *password* to use them in *step 3*.

## Step 2: Downloading & Installing Dokcer Software
- [Docker for Mac](#docker-for-mac)
- [Docker for Windows](#docker-for-windows)


### Docker for Mac
**Note**: Keep in mind that you macOS must be at lest 10.15 or newer (*Catalina*, *Big Sure*, *Monterey*)  to be able to run Docker.

#### Insallation: 
1. [Docker for Mac](https://desktop.docker.com/mac/main/amd64/Docker.dmg?utm_source=docker&utm_medium=webreferral&utm_campaign=docs-driven-download-mac-amd64).
2. Double-click the `Docker.dmg` file, then drag-and-drop `Docker.app` in your Application folder.
3. Open `Docker.app` to start the application, and sign in  with your docker account ID and passcode.
4. Locate the whale icon on your status bar, then click it. Be sure that it indecates `Docker is running` as shown below.

<p align="center">
  <img width="200" src="https://user-images.githubusercontent.com/47132064/184414404-529568c9-f577-4787-a372-e8e14431b896.png">
</p>
5. Some macOS such as *Catalina*  might have an issue with Docker by showing the persistent message as `Docker is starting` on the whale icon. In this case, please open Docker application and click on troublshouing icon as shown below. Then, click on `Reset to factory default`. Next, you have to restart the application. It should work fine afterwards.

<p align="center">
  <img width="600" src="https://user-images.githubusercontent.com/47132064/184058430-5f7c6af4-deeb-4d92-9be3-07efd9ea9174.jpg">
</p>

- If the whale icon indicates `Docker is running`, then proceed to **Step 3**.

### Docker for Windows
**Note**: Windows machines must have a 64-bit processor and at least 4GB system RAM to successfully run Docker on Windows. Follow the guidelines in this [link](https://support.microsoft.com/en-gb/topic/determine-whether-your-computer-is-running-a-32-bit-version-or-64-bit-version-of-the-windows-operating-system-1b03ca69-ac5e-4b04-827b-c0c47145944b) to determine if your machine supports 64-bit processors.
#### Insallation: 

1. [Download Docker for Windows](https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe), then double-click on the `Docker Desktop Insaller.exe` file to start the installation process.
- Once the installation is succeeded, open the Docker software. After a few seconds, it should indicates `docker is running`.  Then, proceed to *step 3*.



## Step 3: Importing and running *mb1-cdi-followup*'s Rstudio Docker image
From your local machine Open the following application:
  - For **MAC**, open `Terminal`.
  - For **Windows**, open `Command Promp`.
  
Then, follow the instruction below. For each instruction copy the command line without the dollar sign `$`, and paste it in the application.
1. Login with your docker account ID and passcode using: `$ docker login`
  - Enter your docker account ID.
  - then your password. **Note**:  while you are typing your password, it will now show up and cursur will not move. Just type it, then hit `enter/return`.
3. Then, import *mb1-cdi-followup*'s Rstudio Docker image: `$ docker pull mohmdsh/manybabies`
4. Next, run *mb1-cdi-followup*'s Rstudio Docker image to be able to reproduce the results. In the following command, `yourport` can be by any digit number, be it 1000, and `yourpassword` can be any passcode you pick. `$ docker run -p yourport:8787 Password=yourpassword -it mohmdsh/manybabies`
5. On your browser, insert the following: `localhost:yourport`
6. The user ID of Rstudio is `rstudio` and the passcode is your passcode that you picked. 

<p align="center">
  <img width="800" src="https://user-images.githubusercontent.com/47132064/184065835-3bf92e01-f4e8-4072-a0eb-fa9c18141d8e.jpg">
</p>

