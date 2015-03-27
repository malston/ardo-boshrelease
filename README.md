# ardo-boshrelease
Sample ardo bosh release created from [bosh.io](https://bosh.io/docs/create-release.html)

### Create a dev release
```
  $ bosh create release --force
  $ bosh upload release
  $ bosh deployment examples/bosh-lite.yml
  $ bosh -n deploy
```
If deployed successfully you should be able to go to http://10.244.2.2.xip.io:8000/ and see a message like 

'Hello from 76e341e7-35fc-47b2-9c96-a130908cf95d!'
