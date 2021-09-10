//
//  SettingView.swift
//  Fructus
//
//  Created by Yuan on 10/09/2021.
//

import SwiftUI

struct SettingView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    GroupBox(
                        label: SettingLabelView(labelText: "Fructus", labelImage: "info.circle"),
                        content: {
                            Divider().padding(.vertical, 4)
                            HStack(alignment: .center, spacing: 10, content: {
                                Image("logo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(8, antialiased: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.").font(.footnote)
                            })
                    })
                    
                    GroupBox(
                        label: SettingLabelView(labelText: "Customization", labelImage: "paintbrush"),
                        content: {
                            Divider().padding(.vertical, 4)
                            Text("Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.")
                                .padding(.vertical, 8)
                                .frame(minHeight: 60)
                                .layoutPriority(1)
                                .font(.footnote)
                                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            
                            Toggle(isOn: $isOnboarding, label: {
                                Text("Restart".uppercased())
                            })
                            .padding()
                            .background(
                                Color(UIColor.tertiarySystemBackground)
                                    .clipShape(RoundedRectangle(cornerSize: /*@START_MENU_TOKEN@*/CGSize(width: 20, height: 10)/*@END_MENU_TOKEN@*/))
                            )
                            
                        }
                    )
                    
                    
                    
                    // info
                    
                    GroupBox(
                        label: SettingLabelView(labelText: "Application", labelImage: "apps.iphone"), content: {
                            SettingRowView(labelText: "Developer", labelValue: "Yuan")
                            SettingRowView(labelText: "Designer", labelValue: "Robert Petra")
                            SettingRowView(labelText: "Website", labelValue: "donga.edu.vn")
                            SettingRowView(labelText: "Facebook", labelValue: "Nguyen Tran")
                        }
                    )
                } //: vstack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing: Button(
                        action: {
                            presentationMode.wrappedValue.dismiss()
                        },
                        label: {
                            Image(systemName: "xmark")
                        }
                    )
                )
                .padding()
            } //: scroll
        } //: Navigation
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
            .previewDevice("iPhone 11 Pro")
            .preferredColorScheme(.dark)
    }
}
