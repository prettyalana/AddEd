//
//  ProgramView.swift
//  AddED+
//
//  Created by 3 GO Gantz on 7/18/24.
//

import SwiftUI

struct ProgramView: View {
    
    @State var displayedProgram: Program
    
    var body: some View {
        NavigationView {
            VStack{
                //Top green bar
                GreenHeader()
                ScrollView {
                    HStack{
                        Spacer()
                        Text(displayedProgram.name)
                            .font(.largeTitle)
                            .padding()
                        Spacer()
                    }
                    
                    VStack {
                        HStack {
                            Image("Placeholder")
                                .resizable()
                                .frame(width: 300, height: 200)
                        }
                        
                        RatingStarsView(starCount: 4)
                    }
                    
                    HStack {
                        TagRectangleView(displayTag: technologyTag, removable: false, itemTagged: ECCChicago)
                        
                        
                        TagRectangleView(displayTag: paidTag, removable: false, itemTagged: ECCChicago)
                    }
                    .padding(.top)
                    
                    GroupBox(label: Label("Description" , systemImage: "")) {
                        Text(displayedProgram.description)
                    }
                    .frame(width: 300, height: 200)
                    
                    ZStack{
                        Rectangle()
                            .fill(.green)
                            .frame(width:250, height:50)
                            .cornerRadius(10)
    //                    Text("Add a Review")
    //                        .foregroundColor(.white)
                        NavigationLink(destination:AddRatingView(program:displayedProgram)){
                            Text("Add a Review")
                                .foregroundColor(.white)
                        }
                        
                            
                    }
                    
                    Text("Reviews")
                        .font(.title)
                    
                    ZStack{
                        Rectangle()
                            .fill(.green)
                            .frame(width:350)
                        VStack {
                            ForEach(placeholderRatings){
                                review in
                                RatingView(review: review)
                            }
                        }
                    }
                }
            }
            .ignoresSafeArea()
        }
    }
}

//#Preview {
//    ProgramView(displayedProgram: ECCChicago)
//}
struct ProgramView_Previews: PreviewProvider {
    static var previews: some View {
        ProgramView(displayedProgram: ECCChicago)
    }
}
