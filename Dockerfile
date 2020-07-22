FROM rasa/rasa:1.9.3

COPY app /app
COPY server.sh /app/server.sh

RUN rasa train
chmod a+x /app/server.sh

ENTRYPOINT ["/app/server.sh"]