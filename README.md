## Unblock/Open the port 
This is very important, especially on Windows. You must create a rule on Windows firewall to listen on TCP port 1433 
(or the port where you have decided for SQL Server). 

## Kubernetes Secrets and a *BIG* GOTCHA!
For creating secret as opaque string, the password (or secret string) should be encoded as Base64 value. This can be 
done via many online tools. If you are on *nix systems, you can also use following command:

```shell
echo -n secret-to-encode | base64
```

The switch `-n` prevents adding appending any newline to the encoded value; this can prevent hours of debugging wherein 
you think you are providing the correct password but still failing to login!

Similarly, decoding on *nix is as simple as:

```shell
base64 --decode encoded-string
```

I am not aware of any PowerShell command as simple as this. 

For further details, see [MiniKube Readme](./minikube/README.md)


## Additional helpful commands

### Get secret


### Print only pod name (useful for plugging in the name of pod in another command)

```shell
kubectl get pods -o custom-columns=:metadata.name --no-headers=true
```

#### Alias to shorten the command on *nix

```shell
alias kno='kubectl get pods -o custom-columns=:metadata.name --no-headers=true'
```

#### Alias on PowerShell

```powershell
function kno() { kubectl get pods -o custom-columns=:metadata.name --no-headers=true }
```

A list of PowerShell aliases can be seen in this 
[GitHub File](https://github.com/shanoor/kubectl-aliases-powershell/blob/master/kubectl_aliases.ps1)

### Run SQL command on pod
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P <your_password>