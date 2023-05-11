//
//  HomeView.swift
//  mySkydiveJourney
//
//  Created by Wesley Prado on 01/05/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        TabView{
            
            LogBookView()
                .tabItem{
                    Image(systemName: "book")
                    Text("MyLogBook")
                }
            LinksView()
                .tabItem{
                    Image(systemName: "link.circle.fill")
                    Text("MyLinks")
                }
        }
    }
}


//MARK: - Preview

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
