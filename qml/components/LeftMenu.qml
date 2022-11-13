import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15



Button {
    id: leftMenu
    width: 70
    height: 50

    // Custom Properties
    property bool useImage: false
    property int iconWidth: 24
    property int iconHeight: 24
    property color iconColor: "#FFFFFF"
    property color iconColorEntered: "#000000"
    property url iconPath: "../../images/images/discor_icon.svg"
    property url imagePath: "../../images/images/Keima Avatar - copia.png"
    property color bgColor: "#301748"
    property color bgColorEntered: "#5E4676"

    // Menu Backgroung
    background: Item {
        id: item1
        clip: true
        width: 70
        height: 50

        // left Detail
        Rectangle{
            id: leftDetail
            width: 4
            height: 0
            color: "#FFFFFF"
            radius: 4
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: -4
        }

        // Set Icon Or Image
        Rectangle{
            id: iconImage
            width: 50
            height: 50
            radius: 25
            color: bgColor
            clip: true
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

            // Icon
            Image{
                id: icon
                anchors.verticalCenter: parent.verticalCenter
                source: iconPath
                anchors.horizontalCenter: parent.horizontalCenter
                sourceSize.height: iconHeight
                sourceSize.width: iconWidth
                visible: false
            }

            ColorOverlay{
                id: iconOverlay
                anchors.fill: icon
                source: icon
                color: iconColor
                antialiasing: true

            }

            Image {
                id: image
                anchors.verticalCenter: parent.verticalCenter
                source: imagePath
                anchors.horizontalCenter: parent.horizontalCenter
                fillMode: Image.PreserveAspectFit
                sourceSize.height: 50
                sourceSize.width: 50
                visible: useImage

                // Enable Layer
                layer.enabled: true
                layer.effect: OpacityMask{
                    maskSource: parent
                }
            }
        }
    }

    MouseArea{
        anchors.fill: parent
        hoverEnabled: true

        // Mouse Entered
        onEntered: {
            bgEntered.running = true
            borderEntered.running = true
            detailEntered.running = true
            detailWidthEntered.running = true
            iconEntered.running = true
        }
        // Mouse Exited
        onExited: {
            bgExited.running = true
            borderExited.running = true
            detailExited.running = true
            detailExited.running = true
            iconExited.running = true
        }
    }
    // BG Color
    PropertyAnimation{
        id: bgEntered
        target: iconImage
        properties: "color"
        to: bgColorEntered
        duration: 150
    }
    PropertyAnimation{
        id: bgExited
        target: iconImage
        properties: "color"
        to: bgColor
        duration: 150
    }

    // Icon Overlay
    PropertyAnimation{
        id: iconEntered
        target: iconOverlay
        properties: "color"
        to: iconColorEntered
        duration: 100
    }

    PropertyAnimation{
        id: iconExited
        target: iconOverlay
        properties: "color"
        to: iconColor
        duration: 100
    }

    // BG Borders
    PropertyAnimation{
        id: borderEntered
        target: iconImage
        properties: "radius"
        to: 18
        duration: 150
    }
    PropertyAnimation{
        id: borderExited
        target: iconImage
        properties: "radius"
        to: 25
        duration: 150
    }

    //Left Details
    PropertyAnimation{
        id: detailEntered
        target: leftDetail
        properties: "height"
        to: 20
        duration: 200
        easing.type: Easing.InOutCubic
    }
    PropertyAnimation{
        id: detailExited
        target: leftDetail
        properties: "height"
        to: 0
        duration: 200
        easing.type: Easing.InOutCubic
    }
    PropertyAnimation{
        id: detailWidthEntered
        target: leftDetail
        properties: "width"
        to: 8
        duration: 200
        easing.type: Easing.InOutCubic
    }
    PropertyAnimation{
        id: detailWidthExited
        target: leftDetail
        properties: "width"
        to: 4
        duration: 200
        easing.type: Easing.InOutCubic
    }
}

/*##^##
Designer {
    D{i:0;formeditorColor:"#4c4e50";formeditorZoom:4}
}
##^##*/
