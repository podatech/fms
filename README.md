# FMS

FMS is Forum Management System.
What's covered on this system?

1. User Registrations
2. User Questions
3. User Answers

Every user can post question and answer another question.
For next development will be add some enhancements like user rating base on some categories.

## Architecture

Simple Architecture for this project is:

![Simple Architecture](https://www.petrikainulainen.net/wp-content/uploads/spring-web-app-architecture.png)

Detail explanation about architecture is under the package but I'll be move to here after done!


## Database Design
![Database Design](https://github.com/podatech/fms/blob/master/src/main/resources/image/FSM.png)

1. Each **User** can posting many **Question**s.
2. Each **Question** can be answered by many **User**s.
3. Every one **Question** may containing many **Tag**s and every one **Tag** may contained by many **Question**s.

## Best Practice
Best practice is guidelines based on design pattern and ISO.


_Another source and documentation is still work on progress._

This project is implementing this technology:
* [Design Pattern](https://en.wikipedia.org/wiki/Design_Patterns#Creational, "Design Pattern")
* [Microservices](http://microservices.io/, "Microservices")
* [Spring Boot](https://projects.spring.io/spring-boot/, "Spring Boot")

### Git command syntax example
#### Git Global Setup
git config --global user.name "Irsyad Jamal Pratama Putra"

git config --global user.email "officialirsyad@gmail.com"

#### Create a new Repository
git clone git@gitlab.com:irsyadjpratamap/fms-service.git

cd fms-service

touch README.md

git add README.md

git commit -m "add README"

git push -u origin master


#### Existing Folder
cd existing_folder

git init

git remote add origin git@gitlab.com:irsyadjpratamap/fms-service.git

git add .

git commit -m "Initial commit"

git push -u origin master

#### Existing git Repository
cd existing_repo

git remote add origin git@gitlab.com:irsyadjpratamap/fms-service.git

git push -u origin --all

git push -u origin --tags




Copyright &copy; Irsyad Jamal Pratama Putra
