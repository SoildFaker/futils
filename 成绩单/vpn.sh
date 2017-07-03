SITE="sslvpn.sxu.edu.cn "
URL="https://sslvpn.sxu.edu.cn/dana-na/no-auth/url_default/welcome.cgi"
REALM=$(wget -q --no-check-certificate -O - ${URL} | sed -n 's/.*<input\( [^>]*name="realm" [^>]*\)>.*/\1/p' | sed -n 's/.* value="\([^"]*\)".*/\1/p')
#./getx509certificate.sh $SITE company.cert
#sudo openconnect --certificate=company.cert $URL
sudo openconnect $URL
