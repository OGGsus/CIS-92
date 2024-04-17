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
| Metadata: | mysite-secret | data from mysite | 
| Secret_Key: | "this-is-a-bad-secret-key-you-dont-say" | Secret Key | 

### How to deploy your application:
`kubectl apply -f deployment`

### Initilize Database:
`kubectl exec --stdin --tty pod/mysite-pod -- /bin/bash`

`python manage.py migrate`

`python manage.py createsuperuser`

 ### How to delete your application:
 `kubectl delete -f deployment`
