//
//  ProgramCardView.swift
//  AddED+
//
//  Created by 6 GO Gantz on 7/13/24.
//

import SwiftUI

struct ProgramCardView: View {
    @State var displayedProgram: Program
    @State var areTagsRemovable: Bool
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.white)
                .frame(width: 200, height: 150)
                .cornerRadius(10)
                .shadow(color: Color.black, radius:5, y:5)
            VStack(alignment: .leading) {
                HStack(alignment: .top) {
                    Text(displayedProgram.name)
                        .font(.system(size:20))
                    if displayedProgram.verified {
                        Image(systemName: "checkmark.circle")
                            .font(.system(size: 30, weight:.bold))
                            .foregroundColor(.green)
                    }
                }
                
                .frame(maxWidth:200, maxHeight:20)
                .padding()
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(displayedProgram.tags) { tag in
                            TagRectangleView(displayTag: tag, removable: areTagsRemovable, itemTagged: displayedProgram)
                        }
                    }
                }
                .padding(.leading, 16.0)
                .frame(maxWidth:200, maxHeight: 20)
                HStack {
                    Image(systemName:"star.fill")
                        .frame(alignment:.trailing)
                        .foregroundColor(.yellow)
                        .font(.system(size:25))
                    Text("(" + String(displayedProgram.ratingsAverageScore()) + ")")
                        .foregroundColor(.yellow)
                        .bold()
                        .font(.system(size: 24))
                    
                }
                .frame(alignment:.leading)
                .padding()
                
                
            }
        }
        
    }
}

#Preview {
    ProgramCardView(displayedProgram: ECCChicago, areTagsRemovable:true)
}
