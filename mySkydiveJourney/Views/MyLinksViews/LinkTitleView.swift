//
//  LinkDetailView.swift
//  mySkydiveJourney
//
//  Created by Wesley Prado on 09/05/2023.
//

import SwiftUI

struct LinkTitleView: View {
    let framework: FrameworkLinks
    var body: some View {
        HStack{
            
            Spacer()
            
            VStack (spacing:5){
                Text(framework.name)
                    .foregroundColor(.blue)
                    .font(.title2)
                    .fontWeight(.bold)

                Text(framework.subName)
                    .font(.body)
            }
            
            Spacer()
            
            Image(framework.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
            
            Spacer()
            
        }
    }
}

//MARK: -Preview
struct LinkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        LinkTitleView(framework: MockData.sampleFramework)
    }
}
