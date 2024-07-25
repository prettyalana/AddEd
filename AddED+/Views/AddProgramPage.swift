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
            HStack {
                GreenHeader()
            }
            HStack{
                Button{
                    //action to homescreen on previous page
                }
            label:{Image(systemName: "arrowshape.backward.fill")
                    .foregroundColor(.black)
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
            }
            .padding()
            ProgramName()
            ProgramInfo()
                .padding()
            Spacer()
        }
        .background(.customBackground)
        .ignoresSafeArea()
    }
}
#Preview {
    AddProgramPage()
}
