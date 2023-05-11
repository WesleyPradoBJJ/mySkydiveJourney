//
//  AFButton.swift
//  mySkydiveJourney
//
//  Created by Wesley Prado on 09/05/2023.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
   
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton(title: "Test title")
    }
}
