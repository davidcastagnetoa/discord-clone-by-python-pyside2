import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    id: button
    implicitWidth: 140
    implicitHeight: 38
    hoverEnabled: true
    font.bold: true
    font.pointSize: 10
    font.family: "Segoe UI"
    text: qsTr("Button")
    contentItem: Item {
        Text {
            id: textInside
            color: "#ffffff"
            text: "See Levels & Perks"
            font: button.font
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    //Custom Properties
    property color colorDefault: "#8865B6"
    property color colorMouseOver: "#593F7C"
    property color colorPressed: "#4D437E"

    //Background Colors
    background: Rectangle{
        id: bgBtn
        color: colorDefault
        radius: 4
        border.color: "#190d28"
        border.width: 1
    }

    //Background Animations
    onDownChanged: button.down ? bgDown.running = true : bgExited.running = true
    onHoveredChanged: button.hovered ? bgEntered.running = true : bgExited.running = true

    PropertyAnimation{
        id: bgEntered
        target: bgBtn
        properties: "color"
        to: colorMouseOver
        duration: 150
    }
    PropertyAnimation{
        id: bgExited
        target: bgBtn
        properties: "color"
        to: colorDefault
        duration: 150
    }
    PropertyAnimation{
        id: bgDown
        target: bgBtn
        properties: "color"
        to: colorPressed
        duration: 150
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:4;height:140;width:240}
}
##^##*/
