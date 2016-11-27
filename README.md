# Tools
You must have the following tools installed:

### Eclipse
Download the Eclipse (Java EE Developers) from here: http://www.eclipse.org/downloads/eclipse-packages/

### Tomcat
Download the Tomcat (version 8.0.38) from here: http://ftp.wayne.edu/apache/tomcat/tomcat-8/v8.0.38/bin/apache-tomcat-8.0.38.zip

After the download, unzip the file and copy the folder to the **/usr/local** directory.

```
sudo mv <apache-tomcat-8.0.38> /usr/local
```

Finally, you will have to put the directory into the classpath. To do that, open the .bash_profile

```
vim ~/.bash_profile
```
and add the following

```
export TOMCAT_HOME=/usr/local/apache-tomcat-8.0.38
export PATH=$PATH:$TOMCAT_HOME/bin
```

### Maven
Download the Maven from here: http://mirrors.ocf.berkeley.edu/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.zip

After the download, unzip the file and copy the folder to the **/usr/local** directory.

```
sudo mv <apache-maven-3.3.9> /usr/local
```

Finally, you will have to put the directory into the classpath. To do that, open the .bash_profile

```
vim ~/.bash_profile
```
and add the following

```
export MAVEN_HOME="/usr/local/apache-maven-3.3.9"
export PATH=$PATH:$MAVEN_HOME/bin
```

Close and open the terminal and type:

```
mvn -verion

Apache Maven 3.3.9 (bb52d8502b132ec0a5a3f4c09453c07478323dc5; 2015-11-10T14:41:47-02:00)
Maven home: /usr/local/apache-maven-3.3.9
Java version: 1.8.0_73, vendor: Oracle Corporation
Java home: /Library/Java/JavaVirtualMachines/jdk1.8.0_73.jdk/Contents/Home/jre
Default locale: en_US, platform encoding: UTF-8
OS name: "mac os x", version: "10.12", arch: "x86_64", family: "mac"
```


### Clone and compile the project

Clone the project througt the command:
```
git clone git@github.rtp.raleigh.ibm.com:IBMDigitalDeliveryBrazil/MerckHarmony.git
```

After that, enter into the directory created (MerckHarmony) and type the following:

```
mvn install
````

After few minutes, you should see the message below:

```
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 8.290 s
[INFO] Finished at: 2016-10-21T16:50:32-02:00
[INFO] Final Memory: 28M/218M
[INFO] ------------------------------------------------------------------------
```

### Adding Tomcat into Eclipse

Open the Eclipse IDE and go to the *Servers* perspective. Right click on that and go to *New -> Server*.

Expand the Apache folder and select *Tomcat v8.0 Server*.

In the Server runtime environment, click on Add button and select the folder you installed tomcat (/usr/local/apache-tomcat-8.0.38).

Click Next, Next and Finish.

### Adding the Project into Eclipse

We're almost there. The latest step is to add the project into eclipse. To do that, perform the following steps:

Right Click -> Import -> Import
Expand Maven
Select *Existing Maven Projects*
Select the folder where you have cloned the project
Finish

### Running the project from Eclipse

Right Click on project Name -> Run As -> Run on Server. Select TOMCAT and done.



