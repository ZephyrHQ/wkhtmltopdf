wkhtmltopdf compilation
=======================

docker build . -t wkhtml2pdf
docker run --rm -d wkhtml2pdf --name wkhtml2pdf
docker cp wkhtml2pdf:/bin/wkhtmltopdf .
