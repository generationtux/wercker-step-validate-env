info "Validating application env config"

if [ -z "$WERCKER_VALIDATE_ENV_FILES" ]
then
    fail 'missing files to compare environment variables against'
fi

if [ -z "$WERCKER_VALIDATE_ENV_ARGS" ]
then
    fail 'missing argments to correctly parse the environment variables'
fi

info $WERCKER_VALIDATE_ENV_FILES
info $WERCKER_VALIDATE_ENV_ARGS

par $WERCKER_VALIDATE_ENV_ARGS $WERCKER_VALIDATE_ENV_ARGS

success "par: env variables are consistent across environments"
