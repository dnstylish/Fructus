//
//  SettingRowView.swift
//  Fructus
//
//  Created by Yuan on 10/09/2021.
//

import SwiftUI

struct SettingRowView: View {
    var labelText: String
    var labelValue: String
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(labelText).foregroundColor(.gray)
                Spacer()
                Text(labelValue)
            }
        }
    }
}

struct SettingRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingRowView(labelText: "Developer", labelValue: "Yuan")
    }
}
