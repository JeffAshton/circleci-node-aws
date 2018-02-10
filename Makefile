image := jeffashton/circleci-node-aws:6.12.3-stretch

build :
	docker build --no-cache -t $(image) .

test : build
	docker run -it --rm $(image) bash

push : build
	docker push $(image)
