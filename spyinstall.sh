#! /bin/sh

dockerCheck() {
  #Stop all running containers
  docker container stop $(docker container list -q)
}

clone() {
  #Clone Spryker b2b-demo-shop
  git clone https://github.com/spryker-shop/b2b-demo-shop.git

  #Change to b2b-demo-shop directory
  cd ./b2b-demo-shop

  #Clone docker-sdk and create docker directory
  git clone https://github.com/spryker/docker-sdk.git docker
}

# Help function used in error messages and -h option
usage() {
  echo ""
  echo "USAGE"
  echo ""
  echo "-h: Show this help."
  echo "-d: Use docker/sdk bootstrap deploy.dev.yml for development mode."
  echo "-p: Use docker/sdk bootstrap for production mode"
  echo "-f: echo Debug."
  echo ""
}

#while getopts "h" opt; do
#  case $opt in
#  h) usage exit;;
#  esac
#done

dockerCheck
clone

while getopts "fpd" opt; do
  case $opt in
  f) echo "DEBUG";;
  p) docker/sdk bootstrap ;;
  h)
    usage
    break
    ;;
  d) docker/sdk bootstrap deploy.dev.yml ;;
  #For invalid option
  *)
    echo "Invalid option: -$OPTARG"
    usage;;
  esac
done

# Strip of all remaining arguments
shift $((OPTIND - 1))

# Check if there are remaining arguments
#if [${#} >0]; then
#  echo "Error: To many arguments: ${*}."
#  usage
#fi

OPENETC_HOSTS="/etc/hosts"
SPYLOCALHOST_STR="127.0.0.1 backend-api.at.spryker.local backend-api.de.spryker.local backend-api.us.spryker.local backend-gateway.at.spryker.local backend-gateway.de.spryker.local backend-gateway.us.spryker.local backoffice.at.spryker.local backoffice.de.spryker.local glue.at.spryker.local glue.de.spryker.local glue.us.spryker.local mail.spryker.local queue.spryker.local redis-commander.spryker.local scheduler.spryker.local spryker.local swagger.spryker.local yves.at.spryker.local yves.de.spryker.local yves.us.spryker.local zed.us.spryker.local"

#if grep -Fxq "$SPYLOCALHOST_STR" "$OPENETC_HOSTS"; then
  # if found
#  continue
#else
  # if not found
#  sudo bash -c "echo '127.0.0.1 backend-api.at.spryker.local backend-api.de.spryker.local backend-api.us.spryker.local backend-gateway.at.spryker.local backend-gateway.de.spryker.local backend-gateway.us.spryker.local backoffice.at.spryker.local backoffice.de.spryker.local glue.at.spryker.local glue.de.spryker.local glue.us.spryker.local mail.spryker.local queue.spryker.local redis-commander.spryker.local scheduler.spryker.local spryker.local swagger.spryker.local yves.at.spryker.local yves.de.spryker.local yves.us.spryker.local zed.us.spryker.local' >> /etc/hosts"
#fi
