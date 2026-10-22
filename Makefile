.PHONY: priv/cacerts.pem

# Mozilla's canonical set, extracted and published by the curl project.
# See https://curl.se/docs/caextract.html
update: priv/cacerts.pem
	curl -#fSlo priv/cacerts.pem https://curl.se/ca/cacert.pem
