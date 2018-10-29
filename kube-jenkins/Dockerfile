from jenkins/jenkins:2.138.2

# Distributed Builds plugins
RUN /usr/local/bin/install-plugins.sh ssh-slaves

# install Notifications and Publishing plugins
#RUN /usr/local/bin/install-plugins.sh email-ext
#RUN /usr/local/bin/install-plugins.sh mailer
#RUN /usr/local/bin/install-plugins.sh slack
RUN /usr/local/bin/install-plugins.sh filesystem_scm:latest
RUN /usr/local/bin/install-plugins.sh jdk-tool
RUN /usr/local/bin/install-plugins.sh openJDK-native-plugin
RUN /usr/local/bin/install-plugins.sh workflow-aggregator
RUN /usr/local/bin/install-plugins.sh pipeline-github

RUN /usr/local/bin/install-plugins.sh docker-commons
RUN /usr/local/bin/install-plugins.sh docker-workflow
RUN /usr/local/bin/install-plugins.sh docker-traceability
RUN /usr/local/bin/install-plugins.sh credentials-binding


# Artifacts
RUN /usr/local/bin/install-plugins.sh htmlpublisher

# UI
RUN /usr/local/bin/install-plugins.sh greenballs
RUN /usr/local/bin/install-plugins.sh simple-theme-plugin

# Scaling
RUN /usr/local/bin/install-plugins.sh kubernetes


# install Maven
#USER root
#RUN apt-get update && apt-get install -y maven
#USER jenkins

# Install the latest Docker CE binaries
USER root
RUN apt-get update && \
    apt-get -y install apt-transport-https \
      ca-certificates \
      curl \
      gnupg2 \
      software-properties-common && \
    curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg > /tmp/dkey; apt-key add /tmp/dkey && \
    add-apt-repository \
      "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
      $(lsb_release -cs) \
      stable" && \
   apt-get update && \
   apt-get -y install docker-ce

