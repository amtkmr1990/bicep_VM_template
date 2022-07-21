param adminPassword string 
param adminUsername string
param nicName string
param subnetNameforVM string
param virtualMachineName string
param vnetname string
param location string = resourceGroup().location

module vm 'Module/windowsvm.bicep' = {
  name: 'vmdeploy'
  params: {
    adminPassword: adminPassword
    adminUsername: adminUsername
    nicName: nicName
    subnetNameforVM: subnetNameforVM
    virtualMachineName: virtualMachineName
    vnetname: vnetname
    location: location 
  }
}
