from jenkins/jenkins:2.138.2

# Distributed Builds plugins
RUN /usr/local/bin/install-plugins.sh ssh-slaves

# install Notifications and Publishing plugins
RUN /usr/local/bin/install-plugins.sh email-ext
RUN /usr/local/bin/install-plugins.sh mailer
RUN /usr/local/bin/install-plugins.sh slack
RUN /usr/local/bin/install-plugins.sh filesystem_scm:latest
RUN /usr/local/bin/install-plugins.sh jdk-tool
RUN /usr/local/bin/install-plugins.sh openJDK-native-plugin
RUN /usr/local/bin/install-plugins.sh workflow-aggregator
RUN /usr/local/bin/install-plugins.sh pipeline-github

# Artifacts
RUN /usr/local/bin/install-plugins.sh htmlpublisher

# UI
RUN /usr/local/bin/install-plugins.sh greenballs
RUN /usr/local/bin/install-plugins.sh simple-theme-plugin

# Scaling
RUN /usr/local/bin/install-plugins.sh kubernetes

# install Maven
USER root
RUN apt-get update && apt-get install -y maven
USER jenkins