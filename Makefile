SCRIPTS = $(CURDIR)/scripts
REBAR = $(CURDIR)/rebar3

.PHONY: default
default: $(REBAR)
	@./rebar3 compile

$(REBAR): ensure-rebar3

.PHONY: ensure-rebar3
ensure-rebar3:
	@$(SCRIPTS)/ensure-rebar3.sh

.PHONY: data/cacerts.pem
# From https://github.com/certifi/certifi.io/blob/981735d/source/index.rst
update: data/cacerts.pem
	curl -#fSlo data/cacerts.pem https://mkcert.org/generate/
