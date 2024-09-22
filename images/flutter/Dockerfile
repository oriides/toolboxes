FROM registry.fedoraproject.org/fedora-toolbox:latest

RUN dnf install -y zsh

# install development dependencies
RUN dnf install -y @c-development
RUN dnf install -y clang
RUN dnf install -y cmake
RUN dnf install -y ninja-build
RUN dnf install -y gtk3-devel
RUN dnf install -y java-latest-openjdk

# downlaod flutter sdk
RUN curl -o /tmp/flutter.tar.xz https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.24.3-stable.tar.xz
RUN tar xf /tmp/flutter.tar.xz -C /usr/share
ENV PATH="${PATH}:/usr/share/flutter/bin"

# download android sdk
RUN curl -o /tmp/cmdline-tools.zip https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip
RUN mkdir /usr/share/android-sdk
RUN unzip /tmp/cmdline-tools.zip -d /usr/share/android-sdk
ENV PATH="${PATH}:/usr/share/android-sdk/cmdline-tools/bin"
ENV ANDROID_SDK_ROOT="/usr/share/android-sdk"
RUN yes | /usr/share/android-sdk/cmdline-tools/bin/sdkmanager 'cmdline-tools;latest' --sdk_root=/usr/share/android-sdk
RUN yes | /usr/share/android-sdk/cmdline-tools/bin/sdkmanager 'platform-tools' --sdk_root=/usr/share/android-sdk
RUN yes | /usr/share/android-sdk/cmdline-tools/bin/sdkmanager 'platforms;android-34' --sdk_root=/usr/share/android-sdk
RUN yes | /usr/share/android-sdk/cmdline-tools/bin/sdkmanager 'build-tools;34.0.0' --sdk_root=/usr/share/android-sdk
RUN yes | /usr/share/android-sdk/cmdline-tools/bin/sdkmanager 'emulator' --sdk_root=/usr/share/android-sdk