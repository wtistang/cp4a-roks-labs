
old_name='yi-cp4a.Digital-Technical-Engagement.cloud'
echo $old_name
echo $HOSTNAME

sed -i "s/$old_name/$HOSTNAME/g" /opt/IBM/WebSphere/AppServer_V90/profiles/Dmgr01/config/cells/yi-cp4aCell01/nodes/yi-cp4aCellManager01/serverindex.xml

sed -i "s/$old_name/$HOSTNAME/g" /opt/IBM/WebSphere/AppServer_V90/profiles/Dmgr01/config/cells/yi-cp4aCell01/nodes/yi-cp4aNode02/serverindex.xml

sed -i "s/$old_name/$HOSTNAME/g" /opt/IBM/WebSphere/AppServer_V90/profiles/AppSrv01/config/cells/yi-cp4aCell01/nodes/yi-cp4aCellManager01/serverindex.xml

sed -i "s/$old_name/$HOSTNAME/g" /opt/IBM/WebSphere/AppServer_V90/profiles/AppSrv01/config/cells/yi-cp4aCell01/nodes/yi-cp4aNode02/serverindex.xml

sed -i "s/$old_name/$HOSTNAME/g" /opt/IBM/WebSphere/AppServer_V90/profiles/Dmgr01/config/cells/yi-cp4aCell01/security.xml

sed -i "s/$old_name/$HOSTNAME/g" /opt/IBM/WebSphere/AppServer_V90/profiles/Dmgr01/properties/linuxMenu/applications/AdminConsole.desktop


/opt/IBM/WebSphere/AppServer_V90/profiles/Dmgr01/bin/startManager.sh
/opt/IBM/WebSphere/AppServer_V90/profiles/AppSrv01/bin/startNode.sh
/opt/IBM/WebSphere/AppServer_V90/profiles/AppSrv01/bin/startServer.sh server1
echo "WAS console url: https://localhost:9044/ibm/console/; http port: 9081"

