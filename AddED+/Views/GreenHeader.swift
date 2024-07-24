//
//  GreenHeader.swift
//  AddED+
//
//  Created by Alana Edwards on 7/22/24.
//

import SwiftUI

struct GreenHeader: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.addED)
                .frame(width:UIScreen.main.bounds.width, height: 90)
            HStack {
                Image("logoTwo")
                    .resizable()
                    .frame(width:120, height:45)
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    GreenHeader()
}
