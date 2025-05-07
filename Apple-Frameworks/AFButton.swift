//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by viraj shah on 07/05/25.
//

import SwiftUI

struct AFButton: View {
    var title:String
    var body: some View {
        Text(title)
            .font(.title2)
            .frame(width: 280,height: 50)
            .fontWeight(.semibold)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton(title:"Test title")
}
