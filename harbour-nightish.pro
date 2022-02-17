TARGET = harbour-nightish

CONFIG += sailfishapp

QT += dbus gui-private

PKGCONFIG += \
    mlite5 \
    wayland-client \

DEFINES += APP_VERSION=\\\"$$VERSION\\\"

SOURCES += \
    src/colorhelper.cpp \
    src/configview.cpp \
    src/main.cpp \
    src/viewhelper.cpp

HEADERS += \
    src/colorhelper.h \
    src/configview.h \
    src/viewhelper.h

DISTFILES += \
    icons/256x256/harbour-nightish.png \
    images/harbour-nightish.png \
    qml/main.qml \
    rpm/harbour-nightish.yaml

DISTFILES += \
    qml/main.qml \
    qml/overlay.qml \
    qml/pages/Settings.qml \
    rpm/harbour-nightish.spec \
    harbour-nightish.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172
