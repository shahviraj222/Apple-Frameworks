//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by viraj shah on 07/05/25.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns:[GridItem] = [GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible())]
    
    var body: some View {
        LazyVGrid(columns:columns){
            FrameworkTitleView(name: "Car Play", imageName: "carplay")
            FrameworkTitleView(name: "Car Play", imageName: "carplay")
            FrameworkTitleView(name: "Car Play", imageName: "carplay")
            FrameworkTitleView(name: "Car Play", imageName: "carplay")
            FrameworkTitleView(name: "Car Play", imageName: "carplay")
        }
        
    }
}

#Preview {
    FrameworkGridView()
}

struct FrameworkTitleView:View{
    
    let name:String
    let imageName:String
    
    var body: some View {
        VStack{
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 90.0, height: 90.0)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
            
        }
    }

    
}
