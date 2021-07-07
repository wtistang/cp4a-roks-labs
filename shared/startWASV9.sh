
old_name='cp4a-base-v-2-1.Digital-Technical-Engagement.cloud'
echo $old_name
echo $HOSTNAME

sed -i "s/$old_name/$HOSTNAME/g" /home/student/IBM/WebSphere/V9/profiles/Dmgr01/config/cells/cp4a-base-v-2-1Cell01/nodes/cp4a-base-v-2-1CellManager01/serverindex.xml

sed -i "s/$old_name/$HOSTNAME/g" /home/student/IBM/WebSphere/V9/profiles/Dmgr01/config/cells/cp4a-base-v-2-1Cell01/nodes/cp4a-base-v-2-1Node02/serverindex.xml

sed -i "s/$old_name/$HOSTNAME/g" /home/student/IBM/WebSphere/V9/profiles/AppSrv01/config/cells/cp4a-base-v-2-1Cell01/nodes/cp4a-base-v-2-1CellManager01/serverindex.xml

sed -i "s/$old_name/$HOSTNAME/g" /home/student/IBM/WebSphere/V9/profiles/AppSrv01/config/cells/cp4a-base-v-2-1Cell01/nodes/cp4a-base-v-2-1Node02/serverindex.xml

sed -i "s/$old_name/$HOSTNAME/g" /home/student/IBM/WebSphere/V9/profiles/Dmgr01/config/cells/cp4a-base-v-2-1Cell01/security.xml

sed -i "s/$old_name/$HOSTNAME/g" /home/student/IBM/WebSphere/V9/profiles/Dmgr01/properties/linuxMenu/applications/AdminConsole.desktop


/home/student/IBM/WebSphere/V9/profiles/Dmgr01/bin/startManager.sh
/home/student/IBM/WebSphere/V9/profiles/AppSrv01/bin/startNode.sh
/home/student/IBM/WebSphere/V9/profiles/AppSrv01/bin/startServer.sh server1
echo "WAS console url: https://localhost:9044/ibm/console/; http port: 9081"

