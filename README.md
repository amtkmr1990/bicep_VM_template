This template creates at subcription level 
- Resource Group
- Windows VM 
- NSG 
- Public IP 
- Nic (Need to pass vNet Id)

main.parameters.json can be used to pass your paramters.  

Refer to template Diagram for better idea. 

<h1>How to use</h1>

1. Run below command to login to azure and select context 
    
    <code>az login </code>

2. Run below command to create the VM template 
    
    <code>az deployment sub create -l <location> -f .\main.bicep -p main.parameters.json </code>


