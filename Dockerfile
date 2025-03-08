FROM zhaowde/rotating-tor-http-proxy

ENV TOR_INSTANCES=5 \
    TOR_REBUILD_INTERVAL=3600 \
    TOR_EXIT_COUNTRY=de,ch,at

EXPOSE 3128 4444

CMD ["./start.sh"]
