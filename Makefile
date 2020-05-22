TEST_IMAGE?=ubuntu:18.04
VERSION?=19.03

VOLUME_MOUNTS=-v "$(CURDIR)":/v

.PHONY: test
test:
	docker run --rm -i \
		$(VOLUME_MOUNTS) \
		-w /v \
		$(TEST_IMAGE) \
		sh -c "sh $(VERSION).sh && docker -v"