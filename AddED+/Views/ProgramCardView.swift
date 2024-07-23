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
    @State var paddingAmount: Double
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.white)
                .frame(width: 180, height: 130)
                .cornerRadius(10)
                .shadow(color: Color(red: 0.4, green: 0.4, blue: 0.4), radius:5, y:5)
                .padding()
            VStack(alignment: .leading) {
                HStack(alignment: .top) {
                    Text(displayedProgram.name)
                        .font(.system(size:20))
                    if displayedProgram.verified {
                        Image(systemName: "checkmark.circle")
                            .font(.system(size: 20, weight:.bold))
                            .foregroundColor(.green)
                            .padding(.bottom, 8)
                        
                    }
                }
                .frame(maxWidth:170, maxHeight:20)
                .padding([.top, .leading, .bottom], 5)
                
                
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(displayedProgram.tags) { tag in
                            TagRectangleView(displayTag: tag, removable: areTagsRemovable, itemTagged: displayedProgram)
                        }
                    }
                }
                .padding(.leading, paddingAmount)
                .frame(maxWidth:180, maxHeight: 20)
                HStack {
                    Image(systemName:"star.fill")
                        .frame(alignment:.trailing)
                        .foregroundColor(.yellow)
                        .font(.system(size:25))
                    Text("(" + String(displayedProgram.ratingsAverageScore()) + ")")
                        .foregroundColor(.yellow)
                        .bold()
                        .font(.system(size: 24))
                    Spacer()
                    if (currentUser.savedPrograms.contains(displayedProgram.id)) {
                        Image(systemName:"bookmark.fill")
                            .foregroundColor(.blue)
                            .font(.system(size:24))
                    }
                    
                }
                .padding(.all, 8.0)
                .frame(maxWidth:180)
                
                
            }
        }
        
    }
}

#Preview {
    ProgramCardView(displayedProgram: afterSchoolMatters, areTagsRemovable: false, paddingAmount: 10.0)
}
