sync-submodules:
	git submodule sync
.PHONY: sync-submodules

run-server:
	hugo server
.PHONY: run-server
