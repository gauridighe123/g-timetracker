import QtQuick 2.6
import QtQuick.Controls.Material 2.0
import QtGraphicalEffects 1.0

Item {
    id: iconMaterial

    property bool enabled: true
    property alias source: icon.source

    implicitHeight: icon.implicitHeight
    implicitWidth: icon.implicitWidth

    Image {
        id: icon

        anchors.centerIn: parent
        fillMode: Image.Pad
    }
    ColorOverlay {
        anchors.fill: icon
        source: icon
        color: iconMaterial.enabled ? Material.secondaryTextColor : Material.switchUncheckedTrackColor
    }
}
