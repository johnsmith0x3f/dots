// import QtQuick
import QtQuick.Layouts
import Quickshell

import "components"

PanelWindow {
	id: bar

	property int thickness

	anchors {
		top: true
		left: true
		bottom: true
	}

	implicitWidth: thickness
	implicitHeight: screen.height // not neccessary, but looks better

	color: "#222436"

	ColumnLayout {
		id: barContentTop

		spacing: 8

		anchors {
			top: parent.top
			left: parent.left
			right: parent.right
		}

		Icon {
			id: icon

			Layout.alignment: Qt.AlignTop + Qt.AlignCenter
		}

		Workspaces {
			id: workspaces

			Layout.alignment: Qt.AlignTop + Qt.AlignHCenter
		}
	}

	ColumnLayout {
		id: barContentMiddle

		spacing: 8

		anchors {

		}
	}

	ColumnLayout {
		id: barContentBottom

		spacing: 8

		anchors {
			left: parent.left
			right: parent.right
			bottom: parent.bottom
		}

		Power {
			id: power

			Layout.alignment: Qt.AlignBottom + Qt.AlignHCenter
		}
	}

	// Item {
	// 	id: barContent
	//
	// 	property int spacing: 8
	//
	// 	anchors {
	// 		fill: parent
	// 	}
	//
	// 	// anchors {
	// 	// 	top: parent.top
	// 	// 	bottom: parent.bottom
	// 	//
	// 	// 	horizontalCenter: parent.horizontalCenter
	// 	// }
	//
	// 	// Top to bottom.
	// 	Icon {
	// 		id: icon
	//
	// 		anchors {
	// 			top: parent.top
	// 			horizontalCenter: parent.horizontalCenter
	// 		}
	// 	}
	// 	Workspaces {
	// 		id: workspaces
	//
	// 		anchors {
	// 			top: icon.bottom
	// 			topMargin: barContent.spacing
	// 			horizontalCenter: parent.horizontalCenter
	// 		}
	// 	}
	//
	// 	// Bottom to top.
	// 	Power {
	// 		id: power
	//
	// 		anchors {
	// 			bottom: parent.bottom
	// 			horizontalCenter: parent.horizontalCenter
	// 		}
	// 	}
	// }
}
