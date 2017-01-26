info "Validating application env config"

if [ -z "$WERCKER_VALIDATE_ENV_FILES" ]
then
    fail 'missing files to compare environment variables against'
fi

info $WERCKER_VALIDATE_ENV_FILES
info $WERCKER_VALIDATE_ENV_ARGS

par $WERCKER_VALIDATE_ENV_FILES $WERCKER_VALIDATE_ENV_ARGS
OUT=$?
if [ $OUT -eq 0 ];then
   success "par: env variables are consistent across environments"
else
   fail "par: Error when comparing files for match env variables"
fi

