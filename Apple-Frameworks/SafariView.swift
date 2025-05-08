//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by viraj shah on 08/05/25.
//

//here we are using UIKIT view into SWIFTUI

import SwiftUI
import SafariServices
struct SafariView:UIViewControllerRepresentable{
    
    let url:URL

    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController{
        SFSafariViewController(url: url)
    }
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
}
