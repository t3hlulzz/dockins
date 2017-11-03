#! /bin/bash
echo 'Disconnecting containers'
docker network disconnect docj_default jenkins-master && echo jenkins-master dcd
docker network disconnect docj_default artifactory && echo artifactory dcd
docker network disconnect docj_default nginx-artifactory && echo nginx-artifactory dcd
echo 'Connecting containers'
docker network connect bridge jenkins-master && echo ok
docker network connect bridge artifactory && echo ok
docker network connect bridge nginx-artifactory && echo ok
