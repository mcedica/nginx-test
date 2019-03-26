# nginx-test
http://keyangxiang.com/2018/06/01/Openshift/how-to-run-nginx-as-reverse-proxy/

oc new-app registry.centos.org/centos/nginx-112-centos7~webfolder --name=nginxbase  

oc new-app --strategy=docker nginxbase~https://github.com/mcedica/nginx-test.git --name=myreverseproxy
