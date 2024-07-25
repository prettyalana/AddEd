//
//  programInfo.swift
//  add program page
//
//  Created by 2 GO Gantz on 7/16/24.
//

import SwiftUI

struct ProgramInfo: View {
    @State var description: String = ""
    @State var time: String = ""
    @State var days: String = ""
    @State var place: String = ""
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.white)
                .frame(width: UIScreen.main.bounds.width-20, height: 200)
                .cornerRadius(10)
                .shadow(color: Color.black, radius: 5)
            VStack{
                TextField("Description", text:$description)
                    .textFieldStyle(.roundedBorder)
                    .truncationMode(.tail)
                    .frame(width: 350)
                
                TextField("Time", text:$time)
                    .textFieldStyle(.roundedBorder)
                    .truncationMode(.tail)
                    .frame(width: 350)
                
                TextField("Days", text:$days)
                    .textFieldStyle(.roundedBorder)
                    .truncationMode(.tail)
                    .frame(width: 350)
                
                TextField("Place", text:$place)
                    .textFieldStyle(.roundedBorder)
                    .truncationMode(.tail)
                    .frame(width: 350)
                //tags, but idk how
            }
        }
    }
}

#Preview {
    ProgramInfo()
}
