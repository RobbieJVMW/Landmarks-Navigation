//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Robbie on 05/06/2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width:50, height: 50)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .imageScale(.medium)
                    .foregroundColor(.yellow)
            }
        }
    }
}

// Everything in the preview is code that is useed for XCode preview during development.
struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
            }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}

