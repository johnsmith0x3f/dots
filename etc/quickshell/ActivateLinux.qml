import QtQuick
import QtQuick.Layouts
import Quickshell

Variants {
	model: Quickshell.screens

	delegate: PanelWindow {
		property var modelData
		screen: modelData

		color: "transparent"

		anchors {
			right: true
			bottom: true
		}

		margins {
			right: 50
			bottom: 50
		}

		implicitWidth: content.width
		implicitHeight: content.height

		mask: Region{}

		ColumnLayout {
			id: content

			Text {
				text: "Activate Linux"
				color: "#50FFFFFF"
				font.pointSize: 24
			}

			Text {
				text: "Go to Settings to activate Linux"
				color: "#50FFFFFF"
				font.pointSize: 15
			}
		}
	}
}
