Red Hat JBoss BRMS provides a workbench, authoring environment and project & rules repository called “Business Central”. We will use Business Central to create our rules project, define our data model, and create our rules.

We provide a Red Hat JBoss BRMS Installation Demo that provides an easy installation of the BRMS platform. Please follow this demo to install and start the platform. Once the platform is started, we can create our project. The project will be a simple “Loan Application” demo (in fact, it will be based on one of our existing demo’s, which can be found here).

Open “Business Central” at “http://localhost:8080/business-central” and provide the username (brmsAdmin) and password (jbossbrms1!) (if you’ve installed the platform in a Docker container, use the URL of your Docker host as explained in the README of the Install Demo). We first need to create a so-called Organizational Unit (OU) in the “Business Central” interface:

Click on “Authoring -> Administration”
Click on “Organizational Units -> Manage Organizational Units”
Click on “Add” and create a new Organizational Unit with name “Demos” (you can leave the other fields in the screen empty).
