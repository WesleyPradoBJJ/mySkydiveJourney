//
//  MySkydiveJourneyModel.swift
//  mySkydiveJourney
//
//  Created by Wesley Prado on 01/05/2023.
//

import Foundation

struct LogBookItemsModel: Identifiable {
    let id: String = UUID().uuidString
    var title: String
    var place: String
    var dropzone: String
    var date: String
    var image: String
    var jumpN: String
    var aircraft: String
    var equipment: String
    var altitude: String
    var freefall: String
    var totalFreefall: String
    var description: String
}

