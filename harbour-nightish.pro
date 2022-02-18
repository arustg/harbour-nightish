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
    qml/main.qml \
    qml/overlay.qml \
    qml/pages/Settings.qml \
    rpm/harbour-nightish.spec \
    rpm/harbour-nightish.yaml \
    translations/harbour-nightish-ru.ts \
    translations/harbour-nightish-de.ts \
    harbour-nightish.desktop \
    translations/harbour-nightish.ts

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172 256x256


CONFIG += sailfishapp_i18n

TRANSLATIONS += \
    translations/harbour-nightish-de.ts \
    translations/harbour-nightish-ru.ts

