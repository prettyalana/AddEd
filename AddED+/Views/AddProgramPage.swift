//
//  ContentView.swift
//  add program page
//
//  Created by 2 GO Gantz on 7/15/24.
//


import SwiftUI
struct AddProgramPage: View {

    var body: some View {
        NavigationView{
            VStack {
                HStack {
                    GreenHeader()
                }
                HStack{
                    HStack{
                        NavigationLink(destination:HomeScreen()){
                        label:do {Image(systemName: "arrowshape.backward.fill")
                                .foregroundColor(.black)
                        }
                        }
                    }
                    Spacer()
                    Text("Added+")
                        .fontWeight(.medium)
                        .foregroundColor(.black)
                    Spacer()
                    Button("Post") {
                    }
                    .fontWeight(.medium)
                    .foregroundColor(.black)
                    .background(Color.green)
                }
                
                .padding()
                Spacer()
                    .frame(height:20)
                ProgramName()
                ProgramInfo()
            }
            .padding()
            .ignoresSafeArea()
        }
    }
}
#Preview {
    AddProgramPage()
}
