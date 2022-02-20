import QtQuick 2.6
import Sailfish.Silica 1.0

CoverBackground {

    Image {
        id: icon
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
        opacity: 0.3
        source: "/usr/share/harbour-nightish/images/cover.png"}

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
