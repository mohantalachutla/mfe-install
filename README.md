## MFE INSTALLATION

#### 1. Clone the repository
```bash
git clone --recurse-submodules git@github.com:mohantalachutla/mfe-install.git
```
Or
```bash
git clone git@github.com:mohantalachutla/mfe-install.git
```
#### 2. Pull from docker hub and run
```bash
. start.sh
```
#### 3. Install by building
```bash
. install.sh
```
#### 4. Push to docker hub
```bash
. push.sh
```


## APPLICATION STRUCTURE
#### 1. Host Application
###### A React App with MFE support running on port 8080
#### 2. MFE Frontend
###### A React App which is a MFE running on port 8081
#### 3. API Application
###### An Express App with MongoDB running on port 3001
#### 4. Dashboard Application
###### A React App which deplays the meta data of all the registered MFEs in the system and it's current status
#### 5. MFE Utils
###### A Library to configure MFEs using Webpack ModuleFederationPlugin
#### 6. Inject Store
###### A Redux based Library to manage synchronized state across MFEs and Host

## DIAGRAM
![MFE ARCHITECTURE](https://github.com/user-attachments/assets/2f246bcf-9d02-4867-997d-a872b4417b7a)

## TROUBLESHOOTING
#### 1. .ENV file should be present in the root directory of respective submodules
#### 2. Migration data should be present in the api container
#### 3. Ports should be free 27017, 3001,8080, 8081, 9001, 9002 ...
#### 4. Pull latest submodules from remote if required



## MFE DEVELOPMENT
#### Adding new submodules
```bash
git submodule add git@github.com:mohantalachutla/mfe-host.git
git submodule add git@github.com:mohantalachutla/mfe-frontend.git
git submodule add git@github.com:mohantalachutla/mfe-frontend2.git
git push origin master
```

#### Pulling submodules recursively based on the recorded commit
```bash
git submodule update --init --recursive
```
#### Pulling latest submodules ignoring the recorded commit
```bash
git submodule update --remote mfe-frontend
```

#### Pushing submodules
```bash
git submodule foreach git push origin master
```
