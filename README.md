# My CIS-92 Project 
This repository has the starter code for CIS-92. 

By: Jesus Gonzales
### config.yaml environment variables
| `Variable `| `Value` | `Description` |
| --- | --- | --- | 
| Port: | 8000 | Connection number of the port | 
| Student_Name: | Jesus Gonzales | user name | 
| Site_Name: | * | site name | 
| Data_Dir: | /data | data location | 
| Debug: | 1 | debug enabled | 

### secret.yaml environment variables
| `Variable`| `Value` | `Description` |
| --- | --- | --- | 
| METADATA: | mysite-secret | data from mysite | 
| SECRET_KEY: | "this-is-a-bad-secret-key-you-dont-say" | Secret Key | 
| POSTGRES_USER: | "mysiteuser" | default username |
| POSTGRES_PASSWORD: | "this-is-a-bad-password" | default password for Postgress user |



Important: When initializing a database, this will be the default username and password. 

Important: “POSTGRES_PASSWORD:'' in SECRET.YAML file MUST match values of “postgresPassword:”  in VALUES-POSTGRESS.YAML 

### values-postgres.yaml settings
| `Variable`| `Value` | `Description` |
| --- | --- | --- |
| username: | mysiteuser | default username |
| password: | this-is-a-bad-password | default password|
| database: | mysite| database name |
| postgresPassword: | this-is-a-bad-password | postgres password|


### How to deploy your application:
`kubectl apply -f deployment`

### Initilize Database:
`kubectl exec --stdin --tty pod/mysite-pod -- /bin/bash`

`python manage.py migrate`

`python manage.py createsuperuser`

 ### How to delete your application:
`kubectl delete -f deployment`

`helm uninstall postgress`  (does not remove data, only the postgress container which costs money)

`kubectl get all` (to make sure all containers are stopped)

`kubectl get pvc`  (to make sure data is still there)
 
