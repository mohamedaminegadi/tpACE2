FROM open-liberty:kernel-java11
COPY --chown=1001:0  target/tpApplication2.war /config/dropins/
COPY --chown=1001:0  server.xml /config