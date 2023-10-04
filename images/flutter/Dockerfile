FROM registry.fedoraproject.org/fedora-toolbox:latest

RUN dnf install -y zsh

# install development dependencies
RUN dnf install -y @c-development
RUN dnf install -y java-latest-openjdk

# downlaod flutter sdk
RUN curl -o /tmp/flutter.tar.xz https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.13.6-stable.tar.xz
RUN tar xf /tmp/flutter.tar.xz -C /usr/share
RUN ln -s /usr/share/flutter/bin/flutter /usr/bin/flutter
RUN ln -s /usr/share/flutter/bin/dart /usr/bin/dart
RUN flutter config --no-analytics
RUN flutter --disable-telemetry

# download android sdk
RUN curl -o/tmp/cmdline-tools.zip https://dl.google.com/android/repository/commandlinetools-linux-10406996_latest.zip
RUN mkdir /usr/share/android-sdk
RUN unzip /tmp/cmdline-tools.zip -d /usr/share/android-sdk
RUN ln -s /usr/share/android-sdk/cmdline-tools/bin/sdkmanager /usr/bin/sdkmanager
