//
//  SettingLabelView.swift
//  Fructus
//
//  Created by Yuan on 10/09/2021.
//

import SwiftUI

struct SettingLabelView: View {
    
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingLabelView(labelText: "Frutus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
