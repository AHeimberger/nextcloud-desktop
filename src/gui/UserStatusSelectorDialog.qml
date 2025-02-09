import QtQuick.Window 2.15
import Style 1.0

import com.nextcloud.desktopclient 1.0 as NC

Window {
    id: dialog

    title: qsTr("Set account status")
    color: Style.backgroundColor
    
    property NC.UserStatusSelectorModel model: NC.UserStatusSelectorModel {
        onFinished: dialog.close()
    }
    property int userIndex
    onUserIndexChanged: model.load(userIndex)

    minimumWidth: view.implicitWidth
    minimumHeight: view.implicitHeight
    maximumWidth: view.implicitWidth
    maximumHeight: view.implicitHeight
    width: maximumWidth
    height: maximumHeight

    visible: true

    flags: Qt.Dialog
    
    UserStatusSelector {
        id: view
        userStatusSelectorModel: model
    }
}
