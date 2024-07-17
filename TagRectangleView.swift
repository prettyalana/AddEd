//
//  TagRectangleView.swift
//  AddED+
//
//  Created by 6 GO Gantz on 7/13/24.
//

import SwiftUI

struct TagRectangleView: View {
    @State var displayTag: Tag
    @State var removable: Bool
    @State var itemTagged: Program
    var body: some View {
        if removable {
            HStack {
                Button(action: {itemTagged.removeTag(inputTag: displayTag)}, 
                       label: {
                    HStack {
                        Text(displayTag.name)
                        Image(systemName:"x.circle")
                    }
                    .padding(6.0)
                })
                    .background(displayTag.getTypeColor())
                    .cornerRadius(8)
                    .foregroundColor(.white)
                    .padding(.all, 6.0)
                    .font(.system(size: 20))
            }
        } else {
            Text(displayTag.name)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .padding(.all, 6.0)
                .background(displayTag.getTypeColor())
                .cornerRadius(8)
        }
        
        
    }
}

#Preview {
    TagRectangleView(displayTag: technologyTag, removable: true, itemTagged: ECCChicago)
}
