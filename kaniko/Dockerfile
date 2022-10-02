FROM gcr.io/kaniko-project/executor:v1.5.1 as kaniko
FROM ubuntu:22.04

COPY --from=kaniko /kaniko/executor /kaniko/executor