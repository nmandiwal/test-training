FROM fabric8/jenkins-docker
COPY createJobs.sh /tmp/new-jobs/
COPY *.xml /tmp/new-jobs/
#ENTRYPOINT ["/tmp/new-jobs/createJobs.sh"]
ENTRYPOINT ["/usr/local/bin/jenkins.sh"]
CMD ["/tmp/new-jobs/createJobs.sh"]