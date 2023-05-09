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
//class ClassLink: ObservableObject {
//
//    @Published var links: [LinksItensModel] = [
//        LinksItensModel(titleLink: "USPA", page: "www.uspa.org", description: "USPA's website ", image: "uspa")
//    ]
//
//
//    func getLink(index: Int) -> LinksItensModel {
//        return links[index]
//    }
//
//    func getAllLinks() -> [LinksItensModel] {
//        return links
//    }
//
//    func saveLink(link:LinksItensModel) {
//        links.append(link)
//    }
//
//    func deleteLink(at indexSet: IndexSet){
//        links.remove(atOffsets: indexSet)
//    }
//}



//struct MockData {
//
//    static let sampleFramework = FrameworkLinks (name: "USPA",
//                                                 subName: "United States Parachute Association website.",
//                                                 imageName: "uspa",
//                                                 urlString: "https://www.uspa.org/", description: "United States Parachute Association website.")
//
//    static let frameworks = [
//        FrameworkLinks (name: "USPA",
//                        subName: "USPA's youtube channel.",
//                        imageName: "uspa",
//                        urlString: "https://www.youtube.com/@SkydiveUSPA", description: "USPA's youtube channel.")
//    ]
//
//}
