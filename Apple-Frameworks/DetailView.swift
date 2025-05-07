//
//  DetailView.swift
//  Apple-Frameworks
//
//  Created by viraj shah on 07/05/25.
//
import SwiftUI

struct DetailView:View{
    var framework:Framework
    var body:some View{
        VStack{
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button{
                print("tapped")
            } label: {
                AFButton(title: "Learn More")
            }
        }
    }
}

#Preview(){
    DetailView(framework: MockData.sampleFramework)
}

