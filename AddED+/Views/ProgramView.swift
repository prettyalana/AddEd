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
        
        VStack{
            //Top green bar
            ZStack {
                Rectangle()
                    .fill(.green)
                    .frame(width:UIScreen.main.bounds.width, height:90)
                //insert logo here
            }
            ScrollView {
                HStack{
                    Image("backArrow")
                        .resizable()
                        .frame(width: 25, height: 25)
                    
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
                    
                    RatingStarsView(programRating: ECCChicago, test: 3.7, isReview: false)
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

#Preview {
    ProgramView(displayedProgram: ECCChicago)
}
