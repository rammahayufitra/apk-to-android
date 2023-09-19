# Use a base image with Android SDK and other dependencies
FROM beevelop/android

# Set the working directory
WORKDIR /app

# Install dependencies and libraries
RUN apt-get update && \
    apt-get install -y \
        python3 \
        python3-pip \
        build-essential \
        libssl-dev \
        libffi-dev \
        python3-dev \
        libsdl2-dev \
        libsdl2-image-dev \
        libsdl2-mixer-dev \
        libsdl2-ttf-dev \
        libportmidi-dev \
        libswscale-dev \
        libavformat-dev \
        libavcodec-dev \
        zlib1g-dev \
        ffmpeg

# Install Kivy and any other Python dependencies
RUN pip3 install kivy

# Create the Android APK using buildozer
RUN pip3 install buildozer
RUN buildozer init
RUN buildozer android debug

# Set the entry point for the container
ENTRYPOINT ["bash"]
