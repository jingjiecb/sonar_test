FROM maven:3.8.5-jdk-11
ENV WORK_PATH /opt/sonar_test
COPY . $WORK_PATH
RUN cd $WORK_PATH && mvn clean package -DskipTests
