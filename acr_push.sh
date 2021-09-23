# arg 1: local image tag
# arg 2: remote acr address
# arg 3: remote acr name
# Install the az CLI
# Create azure container registry resource
# Enable admin user as in: https://docs.microsoft.com/en-us/azure/container-registry/container-registry-authentication?tabs=azure-cli#admin-account
docker tag $1 $2/$1
az acr login -n $3
docker push $2/$1