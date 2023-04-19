FROM python:3.9.0b5-alpine3.11 as runtime
LABEL "repository"="https://github.com/McGill-MMA-EnterpriseAnalytics/Customer-Aquisition/edit/DataEngineer"
LABEL "maintainer"="Boqun Shu"

RUN pip install awscli 
RUN apk add --no-cache bash jq 

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

FROM runtime as test
RUN apk add --no-cache coreutils bats ncurses
ADD test.bats /test.bats
ADD mock.sh /usr/local/bin/aws
RUN /test.bats
