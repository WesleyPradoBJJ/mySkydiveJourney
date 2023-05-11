//
//  LogBookView.swift
//  mySkydiveJourney
//
//  Created by Wesley Prado on 01/05/2023.
//

import SwiftUI

struct LogBookView: View {
    
    @StateObject var viewModel = Jump()
    
    var body: some View {
        
        VStack {
            NavigationStack{
                List{
                    ForEach(viewModel.getAllJumps()){ jump in
                        NavigationLink(destination: JumpDetailView(jump: jump)) {
                            HStack {
                                VStack(alignment: .leading, spacing: 5){
                                    Text("\(jump.title)")
                                        .font(.system(size: 20, weight: .bold))
                                    Text("\(jump.place)")
                                    Text("\(jump.date)")
                                    
                                }
                                Spacer()
                                
                                Image(jump.image)
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .clipShape(RoundedRectangle(cornerRadius: 5, style: .continuous))
                            }
                        }
                    }
                    .onDelete(perform: viewModel.deleteJump)
                }
                
                
                .navigationBarTitle("My Logbook")
                .navigationBarItems(
                    leading: EditButton(),
                    trailing: NavigationLink("Add Jump", destination: AddJumpView())
                        
                )
            }
        }
        .environmentObject(viewModel)
    }
}

//MARK: - Preview
struct LogBookView_Previews: PreviewProvider {
    static var previews: some View {
        LogBookView()
    }
}

