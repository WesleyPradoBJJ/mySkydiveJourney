//
//  LinksViewModel.swift
//  mySkydiveJourney
//
//  Created by Wesley Prado on 01/05/2023.
//

import SwiftUI

final class LinksViewModel: ObservableObject {
    
    var selectedFramework: FrameworkLinks? {
        didSet{ isShowingDetailView = true}
    }
    
    @Published var isShowingDetailView = false
    
}
