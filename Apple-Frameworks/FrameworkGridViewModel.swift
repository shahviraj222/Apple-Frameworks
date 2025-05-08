//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by viraj shah on 08/05/25.
//

import SwiftUI

final class FrameworkGridViewModel:ObservableObject{
    
    var selectedFramework:Framework?{
        didSet{
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
}
