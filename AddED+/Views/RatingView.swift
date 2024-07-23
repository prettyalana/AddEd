//
//  RatingView.swift
//  AddED+
//
//  Created by 3 GO Gantz on 7/22/24.
//

import SwiftUI

struct RatingView: View {
    
    @State var review: Rating
    
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.white)
                .frame(width: 300, height: 200)
                .border(.black)
                
//                .shadow(color: Color(red: 0.4, green: 0.4, blue: 0.4), radius:5, y:5)
                .padding()
            
            VStack(alignment: .leading){
                HStack(){
                    
                    VStack{
                        Circle()
                            .fill(.green)
                            .frame(width: 40, height:50)
                        
                        Text("GuestUser")
                            .font(.caption)
                        
                    }
                    .padding()
                    
                    VStack {
                        Text(review.title)
                            .font(.subheadline)
                        .bold()
                        
                        RatingStarsView(programRating: ECCChicago, test: 4, isReview: true)
                    }
                    
                    
                    
                    
                }
                
                Divider()
                    .frame(width:300)
                    .overlay(Color(.black))
                    
//                Text(review.description)
                ScrollView {
                    Text(review.description)
                        .frame(width:285 , height: 80)
                }
                .frame(width: 290, height: 80)
                
                
            }
            
            
        }
    }
}

#Preview {
    RatingView(review: ECCReviewOne)
}
