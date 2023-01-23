//
//  SettingsView.swift
//  Fructus
//
//  Created by ebtehal Sahli on 19/12/2022.
//

import SwiftUI

struct SettingsView: View {
   
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnbarding: Bool = false
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                    // MARK _ SECTION 1
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                       
                    )
                    {
                        Divider().padding(.vertical, 4)
                        HStack (alignment: .center , spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    // MARK _ SECTION 2
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ){
                        Divider().padding(.vertical, 4)
                        
                        Text("if you wish, you can restart the application by toggle he switch n this box. that wayit start the onboarding process and you will see welcome screen again. ")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnbarding){
                            if isOnbarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                .foregroundColor(Color.secondary)                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
                    // MARK _ SECTION 3
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Applivatios", labelImage: "apps.iphone")
                       
                    ){
                        
                        
                         SettingsRowView(name: "Developer", content: "John / Jane")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "ios 16")
                        SettingsRowView(name: "Website", linkLabel: "SwiftUI MasterClass", linkDestination: "swiftuimasterclass.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@RobertPetras", linkDestination: "twitter.com/robertpetras")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version" , content: "1.1.0")
                    }
                    
                }
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                
                )
                
                .padding()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
