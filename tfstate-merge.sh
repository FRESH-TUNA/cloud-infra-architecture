#!/usr/bin/env bash

state_pull() {
    echo ">> state pull"
    cd "$1" || return 1
    terraform init || return 1
    terraform state pull >terraform.tfstate || return 1
    cd ..
    return 0
}

state_mv() {
    echo ">> state mv"
    cd "$2" || return 1
    terraform init || return 1
    for i in $(terraform state list); do
        terraform state mv -state-out="../$1/terraform.tfstate" "$i" "$i" || return 1
    done
    cd ..
    return 0
}

state_push() {
    echo ">> state push"
    cd "$1" || return 1
    terraform state push terraform.tfstate || return 1
    cd ..
    return 0
}

cleanup() {
    echo ">> cleanup"
    cd "$1" || return 1
    rm terraform.tfstate
    rm terraform.tfstate.*
    cd ..
    return 0
}

# Print help text and exit.
if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
    echo "Usage: tfstate-merge.sh [options]"
    echo
    echo "Examples:"
    echo
    echo "  - ./tfstate-merge.sh stack1-migrate-to stack2-migrate-from"
    echo "  - ./tfstate-merge.sh app data"
    exit 1
fi

echo "> START"
echo ">> TF =  $(terraform version)..."
state_pull "$1" || exit 1
state_mv "$1" "$2" || exit 1
state_push "$1" || exit 1
cleanup "$1" || exit 1
echo "> FINISHED"
