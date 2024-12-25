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
docker compose up
```

## MFE DEPLOYMENT

#### Adding submodules
```bash
git submodule add git@github.com:mohantalachutla/mfe-utils.git
git submodule add git@github.com:mohantalachutla/mfe-frontend.git
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

## Troubleshooting
#### 1. .ENV file should be present in the root directory
#### 2. Ports should be free 27017, 3001,8080, 8081, 9001, 9002 ...
#### 3. Pulling latest submodules from remote
#### 4. Migration data should be present in the api container
#### 5. System account should exist in the db

