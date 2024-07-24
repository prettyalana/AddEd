//
//  SavedProgramsTab.swift
//  AddED+
//
//  Created by 2 GO Gantz on 7/22/24.
//

import SwiftUI

struct SavedProgramsTab: View {
    var body: some View {
        VStack{
            HStack {
                GreenHeader()
            }
            HStack {
                Text("Saved")
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundColor(.black)
                    .frame(alignment: .top)
            }
            ScrollView {
                VStack {
                    ForEach(placeholderFeaturedPrograms) {
                        featuredProgram in
                        ProgramCardView(displayedProgram: featuredProgram, areTagsRemovable: false, paddingAmount: 20.0)
                    }
                }
            }
        }
        .background(.customBackground)
        .ignoresSafeArea()
    }
}


#Preview {
    SavedProgramsTab()
}
