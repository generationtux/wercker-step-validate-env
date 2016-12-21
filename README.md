# Validate Version

A public step for use with Wercker CI that will validate the environment configuration of the application.

Uses a Go package called [Par](https://github.com/generationtux/par)


### Example

Say the Hurdy service has it's configuration across environments in the repo itself.  Whether it's .env.qa or a configmap, you would pass all the config files that need to be compared against.

     - validate-env:
            files: deploy/qa/configmap.yml deploy/staging/configmap.yml deploy/prod/configmap.yml
            args: data,.env