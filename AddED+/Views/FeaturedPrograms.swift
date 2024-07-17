//
//  FeaturedPrograms.swift
//  AddED+
//
//  Created by Alana Edwards on 7/16/24.
//

import SwiftUI

struct FeaturedPrograms: View {
    var body: some View {
        HStack {
            Text("Featured Programs")
            Spacer()
        }
        .padding(.leading, 15)
        ScrollView(.horizontal) {
            HStack {
                    ForEach(Program.sampleData, id: \.name) { program in
                        Text(program.name)
                    }
                    .frame(width: 300, height: 200)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                }
                .padding()
        }
    }
}

#Preview {
    FeaturedPrograms()
}
