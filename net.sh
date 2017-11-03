#! /bin/bash
echo 'Disconnecting containers'
docker network disconnect docj_default jenkins-master && echo jenkins-master dcd
docker network disconnect docj_default artifactory && echo artifactory dcd
docker network disconnect docj_default nginx-artifactory && echo nginx-artifactory dcd
echo 'Connecting containers'
docker network connect bridge jenkins-master && echo jenkins-master ok
docker network connect bridge artifactory && echo artifactory ok
docker network connect bridge nginx-artifactory && echo nginx-artifactory ok
