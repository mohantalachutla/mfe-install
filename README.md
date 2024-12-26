## MFE INSTALLATION

#### 1. Clone the repository
```bash
git clone --recurse-submodules git@github.com:mohantalachutla/mfe-install.git
```
Or
```bash
git clone git@github.com:mohantalachutla/mfe-install.git
```
#### 2. Run
```bash
. install.sh
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
![MFE ARCHITECTURE drawio](https://github.com/user-attachments/assets/e7946ca8-062b-4586-9ecf-57db8c52364b)


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
