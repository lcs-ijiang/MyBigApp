//
//  CampusConnectView.swift
//  MyBigApp
//
//  Created by Student on 3/3/2026.
//

import SwiftUI

struct CampusConnectView: View {
    @State private var selectedTab = 0
    //0 for contacts 1 for discovery
    
    var body: some View {
        NavigationStack {
            VStack(spacing:0) {
    //biulding heading
        HStack{
        Image(systemName: "person.2.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .border(Color(.black), width: 1)
                .padding(20)
            VStack(alignment: .leading) {
                Text("Campus")
                Text("Connect")
            }
            .font(.title3.bold())
            .foregroundColor(.primary)
            
           
         
        Spacer()
            
        Image(systemName: "gearshape")
                .font(Font.largeTitle.bold())
                .padding()
                    
                }
        .padding()
        .background(Color(.systemGray6))
        .border(Color(.black), width: 3)

                }
            
        //picker selector
            Picker("", selection: $selectedTab){
               
                Text("Discovery")
                    .tag(1)
                Text("Contacts(0)")
                    .tag(0)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(20)
            .background(Color(white:1.0))
            
        
        //button random match
            VStack{
                Button(action: {}) {
                    HStack{
                        Image(systemName: "shuffle")
                        Text("Random Match")
                    }
                    .padding(20)
                    .foregroundStyle(Color(.black))
                    .background(Color(.white))
                    .clipShape(Capsule())
                    .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 3)
                }
                .padding(.top,20)
                Spacer()
            
                
                
            }
            
            
        }
    }
}

#Preview {
    CampusConnectView()
}
