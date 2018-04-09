# Spring Boot Concourse example

Prerequisite:

Download [Fly CLI for Windows](https://35.185.103.177/api/v1/cli?arch=amd64&platform=windows) or [Fly CLI for Mac](https://35.185.103.177/api/v1/cli?arch=amd64&platform=darwin) or [Fly CLI for Linux](https://35.185.103.177/api/v1/cli?arch=amd64&platform=linux)

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