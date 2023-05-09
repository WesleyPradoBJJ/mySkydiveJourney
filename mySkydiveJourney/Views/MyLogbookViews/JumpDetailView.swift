//
//  JumpDetailView.swift
//  mySkydiveJourney
//
//  Created by Wesley Prado on 01/05/2023.
//

import SwiftUI

struct JumpDetailView: View {
    var jump: LogBookItemsModel 
    
    var body: some View {
        //Botão editar* 
        ScrollView{
            VStack(spacing: 60){
                
                Image(jump.image)
                    .resizable()
                    .frame(width: 350, height: 250)
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                
                VStack{
                    Text(jump.title)
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("Place: \(jump.place)")
                        .fontWeight(.semibold)
                    
                    Text("Dropzone: \(jump.dropzone)")
                        .fontWeight(.semibold)
                    
                    Text("Date: \(jump.date)")
                    
                        .fontWeight(.semibold)
                    
                    Text("Jump number: \(jump.jumpN)")
                    
                        .fontWeight(.semibold)
                    
                    Text("Aircraft: \(jump.aircraft)")
                    
                        .fontWeight(.semibold)
                    
                    Text("Equipment: \(jump.equipment)")
                    
                        .fontWeight(.semibold)
                    
                    Text("Altitude: \(jump.altitude) ft")
                    
                        .fontWeight(.semibold)
                    
                    Text("Freefall: \(jump.freefall) seg")
                    
                        .fontWeight(.semibold)
                    
                    Text("Total Freefall: \(jump.freefall) seg")
                    
                        .fontWeight(.semibold)
                }
                
                Text("Description: \(jump.description)")
                    .frame(width: 350, height: 250)
                    .background(.cyan)
                    .cornerRadius(25)
                    .fontWeight(.semibold)
            }
        }
    }
}


//MARK: - Preview

struct JumpDetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        JumpDetailView(jump: Jump().getJump(index: 0))
    }
}
