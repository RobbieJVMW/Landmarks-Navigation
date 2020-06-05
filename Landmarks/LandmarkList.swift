//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Robbie on 05/06/2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarkData, id: \.id) { landmark in LandmarkRow(landmark: landmark)
                }
    }
}


struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
