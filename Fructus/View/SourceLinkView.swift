//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Yuan on 10/09/2021.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox(content: {
            HStack() {
                Text("Content source")
                Spacer()
                Link("Wikimedia", destination: URL(string: "https://test.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        })
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
