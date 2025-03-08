FROM ubuntu:latest

# Install dependencies
RUN apt update && apt install -y tor privoxy

# Copy Tor configuration (if needed)
COPY torrc /etc/tor/torrc

# Expose ports
EXPOSE 3128 4444

# Command to run Tor
CMD ["tor"]
