//
//  AddReviewStars.swift
//  AddED+
//
//  Created by 3 GO Gantz on 7/24/24.
//

import SwiftUI

struct AddReviewStars: View {
    @State var starCount: publicRatingValue
    @State var star1: Image = Image(systemName: "star")
    @State var star2: Image = Image(systemName: "star")
    @State var star3: Image = Image(systemName: "star")
    @State var star4: Image = Image(systemName: "star")
    @State var star5: Image = Image(systemName: "star")
    var body: some View {
        
        
        HStack {
            
            Button(action:{
                star1=Image(systemName:"star.fill")
                star2=Image(systemName:"star")
                star3=Image(systemName:"star")
                star4=Image(systemName:"star")
                star5=Image(systemName:"star")
                starCount.starCount = 1
            }) {
                star1
                    .resizable()
                    .frame(width:50,height: 50)
                    .foregroundColor(.yellow)
            }
            Button(action:{
                star1=Image(systemName:"star.fill")
                star2=Image(systemName:"star.fill")
                star3=Image(systemName:"star")
                star4=Image(systemName:"star")
                star5=Image(systemName:"star")
                starCount.starCount = 2
                
            }) {
                star2
                    .resizable()
                    .frame(width:50,height: 50)
                    .foregroundColor(.yellow)
            }
            Button(action:{ 
                star1=Image(systemName:"star.fill")
                star2=Image(systemName:"star.fill")
                star3=Image(systemName:"star.fill")
                star4=Image(systemName:"star")
                star5=Image(systemName:"star")
                starCount.starCount = 3
            }) {
                star3
                    .resizable()
                    .frame(width:50,height: 50)
                    .foregroundColor(.yellow)
            }
            Button(action:{ 
                star1=Image(systemName:"star.fill")
                star2=Image(systemName:"star.fill")
                star3=Image(systemName:"star.fill")
                star4=Image(systemName:"star.fill")
                star5=Image(systemName:"star")
                starCount.starCount = 4
            }) {
                star4
                    .resizable()
                    .frame(width:50,height: 50)
                    .foregroundColor(.yellow)
            }
            Button(action:{ 
                star1=Image(systemName:"star.fill")
                star2=Image(systemName:"star.fill")
                star3=Image(systemName:"star.fill")
                star4=Image(systemName:"star.fill")
                star5=Image(systemName:"star.fill")
                starCount.starCount = 5
            }) {
                star5
                    .resizable()
                    .frame(width:50,height: 50)
                    .foregroundColor(.yellow)
            }
           
            
            
        }
        
        
        
    }
}

#Preview {
    AddReviewStars(starCount: publicRatingValue())
}
