FROM lanarama/steamcmd
MAINTAINER Matthias Riegler <matthias@xvzf.tech>

# Install ARK
RUN ./steamcmd.sh +login anonymous +force_install_dir ./ark +app_update 376030 validate +quit

COPY --chown=steam:steam ./runme.sh ./runme.sh

ENTRYPOINT [ "/bin/bash", "runme.sh" ]

# Query port for Steam's server browser
EXPOSE 27015/udp
# Game client port
EXPOSE 7777
# Raw UDP socket port (always Game client port +1)
EXPOSE 7778
# RCON for remote console server access (optional)
EXPOSE 27020

