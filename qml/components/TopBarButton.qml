import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

Button {
    id: btnTopBar
    property url btnIcon: "../../images/svg_images/maximize_icon.svg"
    property color colorMouseOver: "#190d28"
    property color colorMouseDown: "#422064"

    QtObject{
        id: internal

        property var dynamicColor: if(btnTopBar.down){
                                    btnTopBar.down ? colorMouseDown : "#422064"
                                   }else{
                                    btnTopBar.hovered ? colorMouseOver : "#190d28"
                                   }
    }

    width: 30
    height: 22
    background: Rectangle{
        id: bgbtnTopBar
        color: internal.dynamicColor

        Image {
            id: iconBtnTopBar
            anchors.verticalCenter: parent.verticalCenter
            source: btnIcon
            anchors.horizontalCenter: parent.horizontalCenter
            width: 16
            height: 16
            fillMode: Image.PreserveAspectFit
            visible: false
            antialiasing: false
        }

        ColorOverlay{
            anchors.fill: iconBtnTopBar
            source: iconBtnTopBar
            color: "#CCCCCC"
            antialiasing: false
        }

    }

}




/*##^##
Designer {
    D{i:0;formeditorZoom:16}
}
##^##*/
