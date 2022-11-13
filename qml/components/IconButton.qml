import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15


MouseArea {
    id: btnIcon
    implicitWidth: 20
    implicitHeight: 20
    hoverEnabled: true

    //Custom Properties
    property url iconPath: "../../images/svg_icons/close_icon.svg"
    property color iconColor: "#8e9297"
    property color iconColorEntered: "#d8d9da"
    property int iconWidth: 16
    property int iconHeight: 16

    Image {
        id: icon
        source: iconPath
        width: iconWidth
        height: iconHeight
        sourceSize.height: iconHeight
        sourceSize.width: iconWidth
        anchors.horizontalCenter: parent.horizontalCenter
        fillMode: Image.PreserveAspectFit
        visible: false
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 0
        antialiasing: false
    }

    //Icon Color
    ColorOverlay{
        id: iconOverlay
        anchors.fill: icon
        source: icon
        color: iconColor
        antialiasing: false
    }

    //Mouse Events
    MouseArea{
        propagateComposedEvents: true //accept events from main mouse area
        anchors.fill: icon
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor

        //Mouse Events
        onEntered: iconOverlay.color = iconColorEntered
        onExited: iconOverlay.color = iconColor
        onPressed: icon.anchors.verticalCenterOffset = 1
        onReleased: icon.anchors.verticalCenterOffset = 0
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
