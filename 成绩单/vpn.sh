SITE="sslvpn.sxu.edu.cn "
URL="https://sslvpn.sxu.edu.cn/dana-na/no-auth/url_default/welcome.cgi"
REALM=$(wget -q --no-check-certificate -O - ${URL} | sed -n 's/.*<input\( [^>]*name="realm" [^>]*\)>.*/\1/p' | sed -n 's/.* value="\([^"]*\)".*/\1/p')
#./getx509certificate.sh $SITE company.cert
#sudo openconnect --certificate=company.cert $URL
sudo ../openconnect-7.08/openconnect $URL --servercert sha256:9293411775d8808b551ee2dadc9de27cc114372af0fbd5f84b451fdcfbe3afed
