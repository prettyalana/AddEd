//
//  ContentView.swift
//  add program page
//
//  Created by 2 GO Gantz on 7/15/24.
//


import SwiftUI
struct AddProgramPage: View {
    
    
    var body: some View {
        VStack {
            GreenHeader()
            HStack{
                Button{
                    //action to homescreen on previous page
                }
            label:{Image(systemName: "arrowshape.backward.fill")
                    .foregroundColor(.black)
                
                Spacer()
                Text("Added+")
                    .fontWeight(.medium)
                    .foregroundColor(.black)
                Spacer()
                Button("Post") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*///how do i make this add to whatever "database" we will have
                }
                .fontWeight(.medium)
                .foregroundColor(.black)
            }
            }
            Spacer()
                .frame(height:20)
            ProgramName()
            ProgramInfo()
                .padding()
            Spacer()
                .frame(height:450)
        }
    }
}
#Preview {
    AddProgramPage()
}
