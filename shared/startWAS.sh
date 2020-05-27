
old_name='yi-cp4a.Digital-Technical-Engagement.cloud'

echo $old_name
echo $HOSTNAME

sed -i "s/$old_name/$HOSTNAME/g" /opt/IBM/WebSphere/AppServer/profiles/AppSrv01/config/cells/yi-cp4aNode01Cell/security.xml

sed -i "s/$old_name/$HOSTNAME/g" /opt/IBM/WebSphere/AppServer/profiles/AppSrv01/config/cells/yi-cp4aNode01Cell/nodes/yi-cp4aNode01/serverindex.xml

/opt/IBM/WebSphere/AppServer/profiles/AppSrv01/bin/startServer.sh server1

