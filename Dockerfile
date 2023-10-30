FROM fedora:latest

ENV APP lazarus

ENV APP_EXEC lazarus-ide

ENV DISPLAY :0

ENV USERNAME developer

WORKDIR /app

RUN dnf update -y

RUN dnf install -y $APP

RUN adduser $USERNAME

ENV HOME /home/$USERNAME

USER $USERNAME

CMD "${APP_EXEC}"
