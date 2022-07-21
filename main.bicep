targetScope = 'subscription'

param resourceGroupName string
param adminPassword string 
param adminUsername string
param nicName string
param subnetIdForVM string
param virtualMachineName string
param location string 

resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: resourceGroupName
  location: location
}


module vm 'Module/windowsvm.bicep' = {
  name: 'vmdeploy'
  scope: resourceGroup
  params: {
    adminPassword: adminPassword
    adminUsername: adminUsername
    nicName: nicName
    subnetIdForVM: subnetIdForVM
    virtualMachineName: virtualMachineName
    location: location 
  }
}
