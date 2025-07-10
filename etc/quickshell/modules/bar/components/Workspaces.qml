import QtQuick
import QtQuick.Layouts
// import Quickshell.Hyprland

Item {
	id: root

	implicitWidth: background.width
	implicitHeight: background.height

	Rectangle {
		id: background

		implicitWidth: 36
		implicitHeight: 72
		// radius: 36

		color: "#292E42"

		ColumnLayout {
			anchors {
				horizontalCenter: parent.horizontalCenter
			}

			implicitWidth: parent.width

			Text {
				anchors {
					horizontalCenter: parent.horizontalCenter
				}

				text: "test"
			}
		}
	}
}
