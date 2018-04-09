# Spring Boot Concourse example

Prerequisite:

Download [Fly CLI for Windows](https://github.com/concourse/fly/releases/download/v3.10.1-rc.15/fly_windows_amd64.exe) or [Fly CLI for Mac](https://github.com/concourse/fly/releases/download/v3.10.1-rc.15/fly_darwin_amd64) or [Fly CLI for Linux](https://github.com/concourse/fly/releases/download/v3.10.1-rc.15/fly_linux_amd64)

Steps:

1. **Credentials**: In `concourse` directory, copy `credential-sample.yml` and name it `credential.yml`, then fill in the information in `credential.yml`. 
2. **Login**: `fly -t tutorial login -c https://35.185.103.177/ -k`
3. **Sync the cli and server version**: `fly -t tutorial sync`
4. **Set pipeline**: `fly -t lite set-pipeline -p <your name>-pipeline -c concourse/pipeline.yml -l concourse/credential.yml`
5. **Unpause pipeline**: `fly -t lite unpause-pipeline -p <your name>-pipeline`
6. **View**: View the pipeline [here](https://35.185.103.177/) 
----

## References

* [Tutorial](https://github.com/starkandwayne/concourse-tutorial)
* [Pipeline patterns](https://github.com/pivotalservices/concourse-pipeline-samples/tree/master/concourse-pipeline-patterns)