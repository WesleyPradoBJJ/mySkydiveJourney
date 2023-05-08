//
//  LinksView.swift
//  mySkydiveJourney
//
//  Created by Wesley Prado on 01/05/2023.
//

import SwiftUI

struct LinksView: View {
    
    @StateObject var viewModel2 = ClassLink()
    
    var body: some View {
        
        VStack {
            NavigationStack{
                List{
                    ForEach(viewModel2.getAllLinks()){ link in
                        NavigationLink(destination: LinkDetailView(link: link)) {
                            HStack{
                                VStack{
                                    HStack{
                                        VStack{
                                            Text(link.titleLink)
                                                .fontWeight(.bold)
                                            Text(link.description)
                                                .fontWeight(.light)
                                        }
                                        Spacer()
                                        Image(link.image)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 80)
                                    }
                                }
                            }
                        }
                    }
                    .onDelete(perform: viewModel2.deleteLink)
                }
                .navigationBarTitle("My Links")
                .navigationBarItems(
                    leading: EditButton().fontWeight(.bold),
                    trailing: NavigationLink("Add Link", destination: AddLinkView())
                        .fontWeight(.bold)
                )
            }
        }
        .environmentObject(viewModel2)
    }
}


//MARK: - Preview

struct LinksView_Previews: PreviewProvider {
    static var previews: some View {
        LinksView()
    }
}


