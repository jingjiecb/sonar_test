FROM maven:3.8.5-jdk-11
ENV WORK_PATH /opt/sonar_test
COPY . $WORK_PATH
#RUN cd $WORK_PATH && mvn clean package -DskipTests
RUN cd $WORK_PATH && mvn clean verify sonar:sonar  -Dsonar.projectKey=hh  -Dsonar.host.url=https://sonarqube-test.seec.seecoder.cn  -Dsonar.login=c8a0e03bff522764c370588f3e8f5a3e86854ad7 -Dsonar.analysis.project=devcloud_backend