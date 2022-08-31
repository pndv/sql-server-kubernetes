In order to have MS SQL Server running on your local machine as a Kubernetes cluster, you need to install MiniKube.

On Windows, it is helpful to enable Windows Subsystem for Linux (WSL). Also, a virtualisation driver like Hypervisor, 
VirtualBox or, Docker is required. 

Run `run.sh` shell script on Linux/Mac terminal or on WSL to start MiniKube. You may also copy and paste the 
following commands in PowerShell.

If you are running Hypervisor, and don't want to open the console in Administrative mode, then add yourself to 
Hyper-V admin group either from Computer Management UI or by running following command in PowerShell in admin mode:

```powershell
Add-LocalGroupMember -Group "Hyper-V Administrators" -Member [System.Security.Principal.WindowsIdentity]::GetCurrent().Name
```

```shell
minikube start

kubectl apply -f secret.yaml, persistent-volume-claim.yaml, deployment.yaml, service.yaml

minikube tunnel
```

Keep the window running the `minikube tunnel` open to 


