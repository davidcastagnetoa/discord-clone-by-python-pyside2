import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import QtQuick.Window 2.15
import "components"
import QtQuick.Timeline 1.0


Window {
    id: splashScreenWindow
    width: 300
    height: 350
    visible: true
    color: "#00000000"
    title: qsTr("STARTING...")

    // Remove Title Bar
    flags: Qt.Window | Qt.FramelessWindowHint

    // Properties
    property int timeInterval: 2900

    Timer{
        id: timer
        interval: timeInterval
        running: true
        repeat: false
        onTriggered: {
            let component = Qt.createComponent("main.qml")
            let win = component.createObject()
            win.show()
            visible: false
        }
    }
}
