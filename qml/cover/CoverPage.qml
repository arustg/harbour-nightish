import QtQuick 2.0
import Sailfish.Silica 1.0

CoverBackground {

    Image {
        id: icon
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
        opacity: 0.40
        source: "/usr/share/icons/hicolor/172x172/apps/harbour-nightish.png"}

    CoverActionList {
        id: coverAction

        CoverAction {
            property bool next: true
            iconSource: next ? "image://theme/icon-cover-next" : "image://theme/icon-cover-pause"
            onTriggered: {
                if (next) {
                    switchOverlay()
                } else {
                    switchOverlay()
                }
                next = !next
            }
        }
    }
}
