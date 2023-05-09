//
//  LinksView.swift
//  mySkydiveJourney
//
//  Created by Wesley Prado on 09/05/2023.
//

import SwiftUI

struct LinksView: View {
    
    @StateObject var viewModel = LinksViewModel()
    
    var body: some View {
        VStack{
            NavigationStack{
                List{
                    Section{
                        ForEach(MockData.frameworks){ framework in
                            LinkTitleView(framework: framework)
                                .onTapGesture {
                                    viewModel.selectedFramework = framework
                                }
                        }
                    }
                    .sheet(isPresented: $viewModel.isShowingDetailView) {
                        LinkDetailView(framework: viewModel.selectedFramework!, isShowingDetailView: $viewModel.isShowingDetailView)
                    }
                }
                .navigationBarTitle("My Links")
            }
        }
    }
}



//MARK: - Preview
struct LinksView_Previews: PreviewProvider {
    static var previews: some View {
        LinksView()
    }
}
