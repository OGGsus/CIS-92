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
| data: | mysite-secret | data from mysite | 
| Secret_Key: | "this-is-a-bad-secret-key-you-dont-say" | Secret Key | 

### values-postgres.yaml settings
| `Variable`| `Value` | `Description` |
| --- | --- | --- |
| username: | mysiteuser| --- |
| password:| this-is-a-bad-password | --- |
| database: | --- | --- |


### How to deploy your application:
`kubectl apply -f deployment`

### Initilize Database:
`kubectl exec --stdin --tty pod/mysite-pod -- /bin/bash`

`python manage.py migrate`

`python manage.py createsuperuser`

 ### How to delete your application:
`kubectl delete -f deployment`

`Helm uninstall postgress`  (does not remove data, only the postgress container which costs money)

`kubectl get all` (to make sure all containers are stopped)

`kubectl get pvc`  (to make sure data is still there)
 
