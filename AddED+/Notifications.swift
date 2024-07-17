//
//  Notifications.swift
//  AddED+
//
//  Created by Alana Edwards on 7/16/24.
//

import SwiftUI

struct Notifications: View {
    var body: some View {
        Text(Program.sampleData.first?.name ?? "Not available")
    }
}

struct Notification_Previews: PreviewProvider {
    static var previews: some View {
        Notifications()
    }
}

//#Preview {
//    NotificationsView()
//}
