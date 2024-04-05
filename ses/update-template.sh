html=$(cat ../bk.bop-identity-email-templates/templates/one-time-password.html | tr -d "\n")

html="${html//\"/\\\"}"

aws ses delete-template --template-name OneTimePasswordEmailTemplate

aws ses create-template \
  --template '{
    "TemplateName": "OneTimePasswordEmailTemplate",
    "SubjectPart": "Mosaic one-time password",
    "HtmlPart": "'"$html"'"
  }'

echo template updated