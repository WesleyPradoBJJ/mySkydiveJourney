//
//  MySkydiveJourneyViewModel.swift
//  mySkydiveJourney
//
//  Created by Wesley Prado on 01/05/2023.
//

import Foundation
import _PhotosUI_SwiftUI


class Jump: ObservableObject {
    
   @Published var jumps: [LogBookItemsModel] = [
        
        LogBookItemsModel(
            title: "My Sydive Journey!", place: "Where?", dropzone: "Dropzone's name!", date: "Day?", image: "parachute",
            jumpN: "01 - AFF or Tandem?", aircraft: "Airplane?", equipment: "Wtf?", altitude: "12.000", freefall: "How many seconds?",
            totalFreefall: "For how long did i fall?", description: "Describe the best experience in your life!")
    ]
    
    
    func getJump(index: Int) -> LogBookItemsModel {
        return jumps[index]
    }
    
    
    func getAllJumps() -> [LogBookItemsModel] {
        return jumps
    }
    
    func saveJump(jump:LogBookItemsModel) {
        jumps.append(jump)
    }
    
    func deleteJump(at indexSet: IndexSet){
        jumps.remove(atOffsets: indexSet)
    }
}






