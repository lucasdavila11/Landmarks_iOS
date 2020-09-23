//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Lucas D. on 6/20/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    //set variable in view as type landmark
    var landmark: Landmark
    
    var body: some View {
        //Allows to stack views horizontally
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

//The code here only changes what I see in the canvas
struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        //loads preview with two variables of type landmark from the
        //Data.swift file
        Group {
        LandmarkRow(landmark: landmarkData[0])
        LandmarkRow(landmark: landmarkData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
