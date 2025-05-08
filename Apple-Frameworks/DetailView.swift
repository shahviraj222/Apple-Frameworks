//
//  DetailView.swift
//  Apple-Frameworks
//
//  Created by viraj shah on 07/05/25.
//
import SwiftUI

struct DetailView:View{
    var framework:Framework
    @Binding var isShowingDetailView:Bool
    var body:some View{
        VStack{
            HStack{
                Spacer()
                Button{
                    isShowingDetailView = false
                } label:{
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label)) //                lable is system color that adpats according to the them
                        .imageScale(.large)
                        .frame(width:44, height: 44)//                making touch target more wider
                }
            }.padding()

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
    DetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}

