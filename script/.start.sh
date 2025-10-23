
docker run --name eschool-front \
      -p 80:80 \
      --network eschool-network \
      -d frontend
