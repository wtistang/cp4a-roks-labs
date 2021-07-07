
old_name='cp4a-base-v-2-1.Digital-Technical-Engagement.cloud'

echo $old_name
echo $HOSTNAME

sed -i "s/$old_name/$HOSTNAME/g" /home/student/IBM/WebSphere/AppServer/profiles/AppSrv01/config/cells/cp4a-base-v-2-1Node01Cell/security.xml

sed -i "s/$old_name/$HOSTNAME/g" /home/student/IBM/WebSphere/AppServer/profiles/AppSrv01/config/cells/cp4a-base-v-2-1Node01Cell/nodes/cp4a-base-v-2-1Node01/serverindex.xml

/home/student/IBM/WebSphere/AppServer/profiles/AppSrv01/bin/startServer.sh server1

