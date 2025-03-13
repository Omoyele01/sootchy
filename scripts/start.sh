#!/bin/sh
#set -e

#echo ">>> Starting app in $NODE_ENV"
#echo ">>> This is an Altschool lecture session"
#echo "Running DB Migration!𝌏 ..."
#npm run migration:run
#echo "Database Migration Successful ✅!"

#echo "Running seeders...⛓⚙️"
#npm run db:seed
#echo "Database Seeders ✅"

#npm uninstall bcrypt


#npm install bcrypt


#if [ "$NODE_ENV" == "production" ] || [ "$NODE_ENV" == "staging" ] ; then
  #echo ">>> run commands for production and staging"
  #node dist/main.js
#elif [ "$NODE_ENV" == "test" ]; then
  #npm run test
#else
 # npm run dev
#fi

#!/bin/sh
set -e

echo ">>> Starting app in $NODE_ENV"
echo ">>> This is an Altschool lecture session"
echo "Running DB Migration!𝌏 ..."
npm run migration:run
echo "Database Migration Successful ✅!"

echo "Running seeders...⛓⚙️"
#npm run db:seed
echo "Database Seeders ✅"

echo "Uninstalling and reinstalling bcrypt..."
npm uninstall bcrypt
npm install bcrypt

if [ "$NODE_ENV" = "production" ] || [ "$NODE_ENV" = "staging" ] ; then
  echo ">>> Running production and staging commands..."
  node dist/main.js
elif [ "$NODE_ENV" = "test" ]; then
  npm run test
else
  npm run dev
fi
