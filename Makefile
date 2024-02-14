server:
	hugo server -D

dev:
	npm run dev

update: update_submodule update_mod

update_submodule:
	@echo "==> Update HUGO theme(git submodule)"
	git submodule update --rebase --remote

update_mod:
	@echo "==> Update HUGO theme(hugo module)"
	hugo mod get -u
