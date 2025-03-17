openssl genrsa -out asiayo.com.ca.key 2048
openssl req -x509 -new -nodes -key asiayo.com.ca.key -subj /CN=*.asiayo.com -days 365 -out asiayo.com.crt
