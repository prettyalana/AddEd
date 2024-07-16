//
//  programInfo.swift
//  add program page
//
//  Created by 2 GO Gantz on 7/16/24.
//

import SwiftUI

struct programInfo: View {
    @State var description: String = ""
    @State var time: String = ""
    @State var days: String = ""
    @State var place: String = ""
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.white)
                .frame(width: 380, height: 200)
                .cornerRadius(10)
                .shadow(color: Color.black, radius: 5)
            VStack{
                TextField("Description", text:$description)
                    .textFieldStyle(.roundedBorder)
                    .truncationMode(.tail)
                    .frame(width: 350)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                
                TextField("Time", text:$time)
                    .textFieldStyle(.roundedBorder)
                    .truncationMode(.tail)
                    .frame(width: 350)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                
                TextField("Days", text:$days)
                    .textFieldStyle(.roundedBorder)
                    .truncationMode(.tail)
                    .frame(width: 350)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                
                TextField("Place", text:$place)
                    .textFieldStyle(.roundedBorder)
                    .truncationMode(.tail)
                    .frame(width: 350)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                //tags, but idk how
            }
        }
    }
}

#Preview {
    programInfo()
}
