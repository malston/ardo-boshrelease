# ardo-boshrelease
Sample ardo bosh release created from [bosh.io](https://bosh.io/docs/create-release.html)

In order to deploy this release, you'll need to create a bosh deployment manifest. An [example](https://github.com/malston/ardo-boshrelease/blob/master/examples/bosh-lite.yml) is provided for bosh-lite.

To understand this better, you'll want to read up on that [here](https://bosh.io/docs/deployment-manifest.html). You can dig deeper into IaaS specific deployments such as:
 * [AWS CPI](https://bosh.io/docs/aws-cpi.html)
 * [OpenStack](https://bosh.io/docs/openstack-cpi.html)
 * [vSphere](https://bosh.io/docs/vsphere-cpi.html)
 * [vCloud](https://bosh.io/docs/vcloud-cpi.html)


### Create a dev release
```
  $ bosh create release --force
  $ bosh upload release
  $ bosh deployment examples/bosh-lite.yml
  $ bosh -n deploy
```
If deployed successfully you should be able to go to http://10.244.2.2.xip.io:8000/ and see a message like 

'Hello from 76e341e7-35fc-47b2-9c96-a130908cf95d!'
