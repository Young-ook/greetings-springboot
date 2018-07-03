# `Greetings` Spring Boot Example
## Prerequisites
* Java 8 SDK
* Docker CE
* Packer

## How to build and run
### Compile, test and build
To test and build the application, execute:
```
./gradlew test
./gradlew build
```

If you are using maven, execute:
```
./mvnw test
./mvnw package
```

If you want to see the all tasks are defined in build.gradle file. This command will show you the all task that you can run
```
./gradlew tasks --all
```

### Run the application
To run the application, execute:
```
java -jar build/libs/gs-spring-boot-0.1.0.jar
```

If you are using maven, execute:
```
java -jar target/gs-spring-boot-0.1.0.jar
```

### Clean up
Finally, you can clean up all artifacts and dependencies made by build tools (gradle, maven) like below,
```
./gradlew clean or ./mvnw clean
```

## How to make Immutable Image
### Build docker image from Dockerfile
After you've done of build application steps, you can make a docker image from Dockerfile and artifact what you made before. If you just want to create docker image you can use `build` subcommand of docker-wrapper script.
```
./dockerw build
```
Or you want to build and run at once, you can use `run` command. This command will create docker image and run it automatically.
```
./dockerw run
```

### Build AMI and docker image using packer and ansible
#### Copy artifact

#### Run the bake job
```
packer build greetings.json
```
