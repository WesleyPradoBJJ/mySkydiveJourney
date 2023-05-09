//
//  LinkDetailView.swift
//  mySkydiveJourney
//
//  Created by Wesley Prado on 09/05/2023.
//

import SwiftUI

struct LinkDetailView: View {
    
    var framework: FrameworkLinks
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{
            
            XDismissButton(isShowingDetailView: $isShowingDetailView)
            
            Spacer()
            
            LinkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.google.com")!)
        })
    }
}

struct LinkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LinkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
    }
}
