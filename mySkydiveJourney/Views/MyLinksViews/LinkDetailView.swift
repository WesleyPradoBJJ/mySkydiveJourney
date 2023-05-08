//
//  LinkDetailView.swift
//  mySkydiveJourney
//
//  Created by Wesley Prado on 08/05/2023.
//

import SwiftUI

struct LinkDetailView: View {
    var link: LinksItensModel
    
    var body: some View {
        VStack{
            NavigationStack{
                Image(link.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                
                VStack{
                    Text(link.titleLink)
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Link("\(link.page)", destination: URL(string: "\(link.page)")!)
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text(link.description)
                        .fontWeight(.light)
                        
                }
            }
        }
    }
}

struct LinkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LinkDetailView(link: ClassLink().getLink(index: 0))
    }
}
