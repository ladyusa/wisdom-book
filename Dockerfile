FROM openjdk:11-jdk-slim
COPY target/book-1.0.jar book.jar
EXPOSE 8090
ENTRYPOINT ["java","-jar","/book.jar"]


# -------------------------------------
#   Before building a docker image,
#   build .jar file with this command
#   (You will need to install mvn first)
# -------------------------------------

# mvn clean package -DskipTests

# -------------------------------------
#   Following commands build a docker image
#   and run a container of the image
# -------------------------------------

# docker build -t book .
# docker run -p 8090:8090 -d book

# -------------------------------------
#   An alternative Dockerfile with Maven base
#   This doesn't require building a jar file,
#   but starting a container can take a lot
#   longer to start. Not recommended.
# -------------------------------------
# FROM maven:3-alpine
# COPY . /wisdom-book/
# WORKDIR /wisdom-book
# EXPOSE 8090
# ENTRYPOINT ["mvn","spring-boot:run"]
