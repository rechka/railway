# Pull base image.
FROM jlesage/baseimage-gui:alpine-3.6

#RUN sudo ln -sf /usr/share/zoneinfo/America/Toronto /etc/localtime && export TZ=America/Toronto

# Install xterm.
RUN add-pkg xterm

# Copy the start script.
COPY startapp.sh /startapp.sh

# Set the name of the application.
ENV APP_NAME="Xterm"
ENV PORT=5800
ENV TZ=America/Toronto
ENV DISPLAY_WIDTH=2732
ENV DISPLAY_HEIGHT=2048
ENV X11VNC_EXTRA_OPTS=-nocursor

EXPOSE 5800 5900 
