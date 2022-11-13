import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

Item {
    id: btn
    //Custom Properties
    property string textMenu: "TEXT CHANNELS"
    property bool activeMenu: true
    property color colorEntered: "#f7f7f7"
    property color colorDefault: "#72767d"
    property int defaultHeight: 32
    property int subMenuHeight: 32
    property int totalSubMenus: 1


    //Parameters
    width: 240
    height: defaultHeight + (subMenuHeight*totalSubMenus)
    clip: true

    QtObject{
        id: internal
        property color dynamicColor: colorDefault
        }

    MouseArea{
        id: mouseArea
        width: 240
        height: 30
        cursorShape: Qt.PointingHandCursor
        anchors.top: parent.top
        hoverEnabled: true
        onEntered: internal.dynamicColor = colorEntered
        onExited: internal.dynamicColor = colorDefault
        onClicked: {
            if(!activeMenu){
                iconActived.running = true
                activeMenu = true
                btn.height = defaultHeight + (subMenuHeight*totalSubMenus)
                console.log("Expanded Menu")
            }else{
                iconNormal.running = true
                activeMenu = false
                btn.height = defaultHeight + subMenuHeight
                console.log("Rectract Menu")
            }
        }

        //Arrow Icon
        Image{
            id: icon
            width: 8
            height: 8
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            source: "../../images/svg_icons/icon_arrow_right.svg"
            sourceSize.height: 8
            sourceSize.width: 8
            fillMode: Image.PreserveAspectFit
            anchors.leftMargin: 5
            visible: false
        }
        ColorOverlay{
            id: overlay
            anchors.fill: icon
            source: icon
            color: internal.dynamicColor
            rotation: 90
        }

        //Text
        Text{
            id: textLeft
            text: textMenu
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: icon.right
            font.weight: Font.Medium
            font.family: "Segoe UI"
            font.pointSize: 10
            anchors.leftMargin: 5
            color: internal.dynamicColor
        }

        //Icon Animation
        PropertyAnimation{
            id: iconActived
            target: overlay
            properties: "rotation"
            to: 90
            duration: 300
            easing.type: Easing.OutQuint
        }
        PropertyAnimation{
            id: iconNormal
            target: overlay
            properties: "rotation"
            to: 0
            duration: 300
            easing.type: Easing.OutQuint
        }
    }
}


