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
    @State private var Message=false
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
            VStack(alignment: .leading, spacing: 20 ){
                Text ("language")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding()
                HStack (spacing: 20){
                    LanguageButton(title: "English", isSelected: selectedLanguage == "English") {
                        selectedLanguage = "English"
                    }
                    
                    LanguageButton(title: "chinese", isSelected: selectedLanguage == "Chinese") {
                        selectedLanguage = "chinese"
                    }
                
                }
                .padding()
            }
              VStack(alignment: .leading, spacing: 20){
                Text ("Notification")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.bottom,10)
                
                Toggle("Match Request",isOn: Binding.constant(false))
                    .font(.headline)
                    .fontWeight(.bold)
                  
                  Toggle("New posts",isOn: Binding.constant(true))
                      .font(.headline)
                      .fontWeight(.bold)
                      
                 
                  Toggle("Message",isOn: Binding.constant(true))
                      .font(.headline)
                      .fontWeight(.bold)
                  
                  Spacer()
                  

            }
              .padding()
            
            
            //Notification and buttons
            
            
            
            .padding()
        }
    }
}


struct LanguageButton: View{
    let title: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action:action) {
            Text(title)
                .fontWeight(.medium)
                .foregroundColor(.black)
                .frame(width: 140, height: 100)            .background(isSelected ? Color(red: 0.3, green: 0.4, blue: 1.0) : Color(white: 1.0))
                .border(Color.black)
              
            
        
            
        }
        
        
 }
    
}
#Preview {
    AppPreferenceView()
}
