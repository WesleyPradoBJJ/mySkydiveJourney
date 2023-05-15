//
//  MySkydiveJourneyModel.swift
//  mySkydiveJourney
//
//  Created by Wesley Prado on 01/05/2023.
//

import Foundation
import PhotosUI
import SwiftUI

struct LogBookItemsModel: Identifiable {
    let id: String = UUID().uuidString
    var title: String
    var place: String
    var dropzone: String
    var date: String
    var image: UIImage
    var jumpN: String
    var aircraft: String
    var equipment: String
    var altitude: String
    var freefall: String
    var totalFreefall: String
    var description: String
    //var photo: UIImage
}

