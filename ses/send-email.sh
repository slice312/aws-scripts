aws ses send-templated-email \
  --source trio.bone@gmail.com \
  --destination '{
    "ToAddresses": ["trio.bone@gmail.com"]
  }' \
  --template OneTimePasswordEmailTemplate \
  --template-data '{"password": "lolkek"}' \
  --configuration-set-name rendering-failure-cs
