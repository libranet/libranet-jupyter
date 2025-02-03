# See ../justfile

# GIT_CLONE_URL := $(shell git remote get-url --push origin)
CLONE_DIR := 'var/tmp/cloned'

# initialize  new git-repo
[group: 'git']
git-init:
	git init


# git-remote-show-origin
[group: 'git']
git-remote-show-origin:
	git remote show origin


# git fetch --tags
[group: 'git']
git-fetch-tags:
	git fetch --tags


# git ls-remote --tags
[group: 'git']
git-show-remote-tags:
	git ls-remote --tags


# git tag -l
[group: 'git']
git-show-local-tags: git-fetch-tags
	echo -e "Local tags"
	git tag -l


# show local & remote tags
[group: 'git']
git-show-tags:
	@echo -e "Local tags"
	git tag -l
	@echo -e "Remote tags"
	git ls-remote --tags


# show clone-url
[group: 'git']
git-show-url:
	@ git remote get-url --push origin


# clone repo to tmp-dir
[group: 'git']
git-tmp-clone:
	LATEST_TAG=$$(git describe --tags --abbrev=0)
	cd ${CLONE_DIR}-${LATEST_TAG}
	@ git clone ${GIT_CLONE_URL} ${CLONE_DIR}


# show latest tag
git-latest-tag:
	$(eval LATEST_TAG := $(git describe --tags --abbrev=0)) \
	@ echo -e "Latest tag: ${LATEST_TAG}"
	export LATEST_TAG


# publish-to-pypi
publish-to-pypi: git-tmp-clone
	set -e ; \
	$(eval LATEST_TAG := $(git describe --tags --abbrev=0)) \
	mkdir -p ${CLONE_DIR}-${LATEST_TAG}
	cd ${CLONE_DIR}-${LATEST_TAG} && \
	git fetch --tags && \
	&& \
	git checkout ${LATEST_TAG}
	poetry build && \
	poetry publish