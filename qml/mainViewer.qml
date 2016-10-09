import QtQuick 2.2
import "content"

Rectangle {
	id: fpsTest
	width: 1920
	height: 720
	color: "black"


	// only for testing, please comment these two items under release version!
	Loader {
		id: fps
		anchors.centerIn: fpsTest
		width: 110
		height: 10
		active: true
		asynchronous: true
		source: "qrc:/qml/qml/content/Fps.qml"
	}

}
