//
//  LinksModel.swift
//  mySkydiveJourney
//
//  Created by Wesley Prado on 01/05/2023.
//

import Foundation

struct LinksItensModel: Identifiable {
    let id: String = UUID().uuidString
    var titleLink: String
    var page: String
    var description: String
    var image: String
}
