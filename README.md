# thebuggenie-alpine
## Description
One time build The Bug Genie website with Alpine OS in Docker
## How to Run
./build-docker.sh :)
## How to Install
Just access the web via your container private IP and just pressing "next" button
## Notice
1) I'm deleting "UTF-8//IGNORE" from repo. Because somehow php5-mbstring and iconv still buggy in here :(
2) You still HAVE TO configure the thebuggenie at first time via web
3) There's no EXPOSE port. Just access the web via it's private IP (that's my style) 
4) You MUST input 127.0.0.1 instead of localhost. This was already considered as bug and want to fix this later.
5) Using master branch. If you want to use the tagged version, then just simply add "git checkout tags"
## I want to improve this dockerfile
I'm waiting for you too fork and pull request this repo :)
## Screenshots
![picture alt](https://github.com/habibiefaried/thebuggenie-alpine/blob/master/screenshots/Installation.png "Installation")
![picture alt](https://github.com/habibiefaried/thebuggenie-alpine/blob/master/screenshots/Profile%20Login.png "Profile Login")
![picture alt](https://github.com/habibiefaried/thebuggenie-alpine/blob/master/screenshots/In%20Action.png "In Action")
![picture alt](https://github.com/habibiefaried/thebuggenie-alpine/blob/master/screenshots/In%20Action%202.png "In Action 2")
