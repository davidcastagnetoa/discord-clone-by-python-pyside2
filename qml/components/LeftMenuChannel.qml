import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

Button {
    id: button
    width: 240
    height: 32

    //Custom Properties
    property color colorDefault: "#00000000"
    property color colorEntered: "#341A4F"
    property color colorPressed: "#190D28"
    property color iconColor: "#777C7F"
    property color textColor: "#777C7F"
    property color textColorEntered: "#d5d6d7"
    property color textColorActive: "#f5f5f6"
    property string btnText: "channel-name"
    property url iconPath: "../../images/svg_icons/icon_settings.svg"

    QtObject{
        id: internal
        //Custom BG Colors
        property var dynamicBgColor: if(button.down){
                                        button.down ? colorPressed : colorDefault
                                    }else{
                                        button.hovered ? colorEntered : colorDefault
                                    }
        //Custom Text Colors
        property var dinamicTextColor: if(button.down){
                                           button.down ? textColorActive : textColor
                                       }else{
                                           button.hovered ? textColorEntered : textColor
                                       }
    }

    //Set Background
    background: Rectangle{
        id: bg
        height: 32
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.leftMargin: 8
        anchors.rightMargin: 8
        radius: 5
        color: internal.dynamicBgColor

        //Set Left Icon
        Image {
            id: icon
            source: iconPath
            anchors.leftMargin: 10
            width: 18
            height: 18
            sourceSize.height: 18
            sourceSize.width: 18
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            visible: false
        }

        ColorOverlay {
            id: overlay
            visible: true
            anchors.fill: icon
            source: icon
            color: iconColor
            antialiasing: true
        }

        // Create Text
        Text {
            id: textLeft
            text: btnText
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: icon.right
            font.weight: Font.Medium
            font.pointSize: 11
            font.family: "Segoe UI"
            anchors.leftMargin: 10
            color: internal.dinamicTextColor
        }
    }
 }


