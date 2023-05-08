//
//  LinksViewModel.swift
//  mySkydiveJourney
//
//  Created by Wesley Prado on 01/05/2023.
//

import Foundation

class ClassLink: ObservableObject {
    
    @Published var links: [LinksItensModel] = [
        LinksItensModel(titleLink: "USPA", page: "www.uspa.org", description: "USPA's website ", image: "uspa")
    ]
    
    
    func getLink(index: Int) -> LinksItensModel {
        return links[index]
    }
    
    func getAllLinks() -> [LinksItensModel] {
        return links
    }
    
    func saveLink(link:LinksItensModel) {
        links.append(link)
    }
    
    func deleteLink(at indexSet: IndexSet){
        links.remove(atOffsets: indexSet)
    }
}
