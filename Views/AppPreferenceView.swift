//
//  ContentView.swift
//  MyBigApp
//
//  Created by Student on 2/3/2026.
//

import SwiftUI

struct AppPreferenceView: View {
    @State private var selectedLanguage="English"
    @State private var MatchRequest=true
    @State private var NewPosts=true
    @State private var Message=true
    var body: some View {
        VStack(alignment: .leading, spacing: 30 ){
            //Navigation Header
            HStack{
                Image(systemName: "chevron.left")
                    .font(.title2)
                    .fontWeight(.bold)
               Text("App Preferences")
                    .font(Font.largeTitle.bold())
                
            }
            .padding(.top,20)
         //Language selection
            
         
        }
        
        
        //button and tool bar
        
        
        
        .padding()
    }
}

#Preview {
    AppPreferenceView()
}
