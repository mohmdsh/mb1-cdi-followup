# Reproducible Research

For reproducing many babies  researc, Docker offers a shared online image (a ready-setup virtual application) of RStudio. Some techinical issues such as the version of R and individual packages and  dependenceis can have a great imapct on the final restuls. To run Many Babies 1's docker image, you will need to follow a couple of steps.

## Docker Account
- Create an account in [docker](https://hub.docker.com/). Please keep a copy of your account ID and passcode for later use.

## Downloading Dokcer Applicaiton
There are two ways to download Docker in your local machine depending on the operating system on it. 
### macOS
**Note**: Keep in mind that you macOS must be at lest 10.15 or newer (*Catalina*, *Big Sure*, *Monterey*)  to be able to run docker.

#### Insallation: 
1. [Mac with Intel Chip](https://desktop.docker.com/mac/main/amd64/Docker.dmg?utm_source=docker&utm_medium=webreferral&utm_campaign=docs-driven-download-mac-amd64).
2. Double-click the .dmg file, teh drag-and-drop Docker app in your Application folder.


<p align="center">
  <img width="300" src="https://user-images.githubusercontent.com/47132064/184056856-85d36bca-420a-448a-b587-485fb9d94e04.png">
</p>


5. Open `Docker.app` to start the application, and sing in with your docker account ID and passcode.
6. Be sure that the whale icon on your status bar indecates the Docker is running and accesible.

<p align="center">
  <img width="170" src="https://user-images.githubusercontent.com/47132064/184057138-47f46d44-5450-4a9f-bc91-d5e568dbf4ba.png">
</p>


7. Some macOS such as Catalina might have an issue with Docker by showing the following message `Docker is starting` on the whale icon. In this case, please open Docker application and click on troublshouing icon as below. Then, click on `Reset to factory default`. Next, you have to restart the application.

<p align="center">
  <img width="600" src="https://user-images.githubusercontent.com/47132064/184058430-5f7c6af4-deeb-4d92-9be3-07efd9ea9174.jpg">
</p>


### Windows 10
**Note**:Wndows machines must have a 64-bit processor and 4GB system RAM to successfully run Docker on Windows 10. 
#### Insallation: 

1. [Download Docker for Windows 10](https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe).
2. Recommondentaion: you need to enable Hyper-V Wondows Feature. Folloow the steps below:
    - Right click on the Windows button, then selection *Apps and Features8.
    - Select *Programs and Features* on the right under relation settings.
    - Select *Turn Windows Features on or off*
    - Select *Hypter-V*, and click *ok*.
<p align="center">
  <img width="300" src="https://user-images.githubusercontent.com/47132064/184061906-ca8b8222-815a-4c4f-a3d6-9bd299950e1c.png">
</p>

3. Double-click on the Docker Desktop Insaller.exe file to start the installation process.

### Ubuntu
**Note**: you need a 64-bit Ubuntu version to successfully install Docker application. Your Ubuntu may be one of the followings: Ubuntu (LTS) 18.04, 20.04, 21.10, 22.04 or known as Bionic, Focal, Impish, Jammy, respectively.

1. Open the terminal on Ubuntu.
2. Run the following command to update apt installer. `$ sudo apt-get update`
3. Install a few prerequisite packages. `$ sudo apt install apt-transport-https ca-certificates curl software-properties-common`
4. Add the GPG key for the official Docker repository to your system/ `$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -`
5. Add the Docker repository to APT sources. `$ sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"`
6. Change installation source to Docker repo. `$ apt-cache policy docker-ce`
7. Install Docker. ` $ sudo apt install docker-ce`
8. Docker is ready to be used.

## Running Many Babies 1's Docker image
From your local machine Open the following application:
1. **macOS** Terminal; **Windows 10** Command Promp; **Ubuntu** Terminal.
2. Login with your docker account ID and passcode using: `$ docker login`
3. Then pull the image: `$ docker pull mohmdsh/manybabies`
4. Then, run the image. In the following command, `yourport` can by any digit number, be it 1000, and `yourpassword` can be any passcode you pick. `$ docker run -p yourport:8787 Password=yourpassword -it mohmdsh/manybabies`
5. On your browser, insert the following: `localhost:yourport`
6. The user ID of Rstudio is `rstudio` and the passcode is your passcode that you picked. 

<p align="center">
  <img width="800" src="https://user-images.githubusercontent.com/47132064/184065835-3bf92e01-f4e8-4072-a0eb-fa9c18141d8e.jpg">
</p>

