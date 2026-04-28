set -gx ANDROID_HOME /opt/android-sdk
set -gx ANDROID_SDK_ROOT /opt/android-sdk
fish_add_path -g $ANDROID_HOME/cmdline-tools/latest/bin
fish_add_path -g $ANDROID_HOME/platform-tools
