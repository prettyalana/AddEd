//
//  RatingStarsView.swift
//  AddED+
//
//  Created by 3 GO Gantz on 7/18/24.
//

import SwiftUI

struct RatingStarsView: View {
    
    
    var starCount: Int
    
    
    var body: some View {
        
        
        HStack {
            
            
            if starCount == 5 {
                Image(systemName:"star.fill")
                Image(systemName:"star.fill")
                Image(systemName:"star.fill")
                Image(systemName:"star.fill")
                Image(systemName:"star.fill")
            }
            else if starCount == 4 {
                Image(systemName:"star.fill")
                Image(systemName:"star.fill")
                Image(systemName:"star.fill")
                Image(systemName:"star.fill")
                Image(systemName:"star")
                
            }
            else if starCount == 3 {
                Image(systemName:"star.fill")
                Image(systemName:"star.fill")
                Image(systemName:"star.fill")
                Image(systemName:"star")
                Image(systemName:"star")
            }
            else if starCount == 2 {
                Image(systemName:"star.fill")
                Image(systemName:"star.fill")
                Image(systemName:"star")
                Image(systemName:"star")
                Image(systemName:"star")
            }
            else if starCount == 1 {
                Image(systemName:"star.fill")
                Image(systemName:"star")
                Image(systemName:"star")
                Image(systemName:"star")
                Image(systemName:"star")
            }
            else {
                Image(systemName:"star")
                Image(systemName:"star")
                Image(systemName:"star")
                Image(systemName:"star")
                Image(systemName:"star")
                
            }
            
            
            //            Image(systemName:"star")
            //            Image(systemName:"star.fill")
            
        }
        
    }
    
}

#Preview {
    RatingStarsView(starCount: 4)
}
