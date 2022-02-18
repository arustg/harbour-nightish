import QtQuick 2.6
import Sailfish.Silica 1.0
import "pages"

ApplicationWindow {
    initialPage: Component { Settings {} }
    cover: Qt.resolvedUrl("cover/CoverPage.qml")

    property bool overlayRunning: false

    function switchOverlay() {
        if (overlayRunning) {
            overlayRunning = false
            helper.closeOverlay()
        }
        else {
            helper.startOverlay()
        }
    }

    Connections {
        target: helper
        onOverlayRunning: {
            console.log("Received overlay pong")
            overlayRunning = true
        }
    }

    onApplicationActiveChanged: helper.checkOverlay()

}
