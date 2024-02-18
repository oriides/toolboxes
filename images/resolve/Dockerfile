FROM registry.fedoraproject.org/fedora-toolbox:37

RUN dnf install -y zsh

# install dependencies
RUN dnf install -y alsa-plugins-pulseaudio libxcrypt-compat xcb-util-renderutil xcb-util-wm pulseaudio-libs xcb-util xcb-util-image xcb-util-keysyms libxkbcommon-x11 libXrandr libXtst mesa-libGLU mtdev libSM libXcursor libXi libXinerama libxkbcommon libglvnd-egl libglvnd-glx libglvnd-opengl libICE librsvg2 libSM libX11 libXcursor libXext libXfixes libXi libXinerama libxkbcommon libxkbcommon-x11 libXrandr libXrender libXtst libXxf86vm mesa-libGLU mtdev pulseaudio-libs xcb-util alsa-lib apr apr-util fontconfig freetype libglvnd fuse-libs
# amd GPU
RUN dnf install -y rocm-openCL 
# nvidia GPU
RUN dnf install -y akmod-nvidia xorg-x11-drv-nvidia-cuda
# intel GPU
RUN dnf install -y intel-compute-runtime