auto-rebase:
	act \
		--rm \
		--no-skip-checkout \
		--container-architecture linux/amd64 \
		--secret GITHUB_TOKEN=$$(gh auth token) \
		--job auto-rebase
.PHONY: auto-rebase
