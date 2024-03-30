# Use a base image with stress-ng installed
FROM ubuntu:latest

# Install stress-ng
RUN apt-get update && \
    apt-get install -y stress-ng && \
    rm -rf /var/lib/apt/lists/*

# Set the stress test parameters (adjust as needed)
ENV STRESS_MEMORY_SIZE=4G
ENV STRESS_CPU_COUNT=2

# Command to run stress test on startup
CMD ["stress-ng", "--vm", "1", "--vm-bytes", "$STRESS_MEMORY_SIZE", "--cpu", "$STRESS_CPU_COUNT", "--timeout", "3600s"]
