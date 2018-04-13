# LANARAMA ARK SERVER

Dockerized ARK Server.
As the Image is quite large (~8GB) it will not be pushed to Dockerhub as frequent. To build a recent version, just call `docker build . -t lanarama/ark-server``

## Launch options
Launch options are parsed by the ENV. Following are REQUIRED(!!):
  - ARK_SERVERNAME
  - ARK_JOINPASSWORD
  - ARK_ADMINPASSWORD

You can spin up a server using e.g.
`docker run -e ARK_SERVERNAME="test" -e ARK_JOINPASSWORD="test" -e ARK_ADMINPASSWORD="todo" lanarama/ark-server`

