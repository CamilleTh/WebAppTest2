<html>
<body>
<h2>Hello World! RELEASE</h2>

wget "http://localhost:8081/nexus/service/local/artifact/maven/redirect?r=releases&g=lu.intech&a=theTest3&v=LATEST&p=war" -O release.war
curl -T - -u admin:admin 'http://localhost:5678/manager/text/deploy?update=true&path=/lastrelease2' < release.war

wget "http://localhost:8081/nexus/service/local/artifact/maven/redirect?r=snapshots&g=lu.intech&a=theTest3&v=LATEST&p=war" -O snapshot.war
curl -T - -u admin:admin 'http://localhost:5678/manager/text/deploy?update=true&path=/lastsnapshot2' < snapshot.war
</body>
</html>
