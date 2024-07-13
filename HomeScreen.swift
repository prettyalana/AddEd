//
//  HomeScreen.swift
//  AddED+
//
//  Created by 6 GO Gantz on 7/11/24.
//

import SwiftUI

struct HomeScreen: View {
    @State private var jobSearchedValue: String = ""
    var body: some View {
        VStack {
            Rectangle()
                .fill(.green)
                .frame(width:UIScreen.main.bounds.width, height:100)
            ZStack {
                Rectangle()
                    .fill(.white)
                    .frame(width: UIScreen.main.bounds.width - 40, height: 40)
                    .cornerRadius(10)
                
                HStack {
                    TextField("Job Search", text: $jobSearchedValue)
                        .padding([.leading, .trailing], 30.0)
                        .frame(alignment:.leading)
                    Button (action: {searchFunction(query:jobSearchedValue)}, label: {
                        Label("", systemImage:"magnifyingglass")
                    }
                    )
                    .foregroundColor(.black)
                    .frame(width: 20, height: 20)
                    .padding([.trailing], 30.0)
                    
                }
                
                    
            }
            
            
            Text("Featured")
                .bold()
                .multilineTextAlignment(.leading)
            
            Spacer()
        }
        .background(Color(red: 0.8705, green: 0.8705, blue: 0.8705))
        .ignoresSafeArea()
    }
}

#Preview {
    HomeScreen()
}
