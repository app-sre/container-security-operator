#!/bin/bash

oc process --local -f openshift/container-security-operator.yaml | oc apply --dry-run -f -
rc=$?
if [ $rc -ne 0 ]
then
  exit $rc
fi

exit 0
