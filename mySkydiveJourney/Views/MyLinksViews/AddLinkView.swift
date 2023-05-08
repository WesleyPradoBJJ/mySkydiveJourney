//
//  AddLinkView.swift
//  mySkydiveJourney
//
//  Created by Wesley Prado on 08/05/2023.
//

import SwiftUI

struct AddLinkView: View {
    
    @State var color = Color.black.opacity(0.7)
    @State var titleLink = ""
    @State var page = ""
    @State var image = ""
    @State var description = ""
    @Environment(\.presentationMode) var presentationMode // PresentationMode environment variable.
    @EnvironmentObject var viewModel: ClassLink
    
    var body: some View {
        VStack{
            
            Image("msj")
                .resizable()
                .scaledToFit()
                .frame(width: 250)
            
            TextField("Title", text:$titleLink )
                .padding(10)
                .background(RoundedRectangle(cornerRadius: 4).stroke(self.titleLink != "" ? Color.blue : self.color, lineWidth: 2))
                .padding()
            
            TextField("Website", text:$page )
                .padding(10)
                .background(RoundedRectangle(cornerRadius: 4).stroke(self.titleLink != "" ? Color.blue : self.color, lineWidth: 2))
                .padding()
            
            TextField("Description", text:$description )
                .frame(height: 100)
                .padding(10)
                .background(RoundedRectangle(cornerRadius: 4).stroke(self.titleLink != "" ? Color.blue : self.color, lineWidth: 2))
                .padding()
            
            Button(action: {
                viewModel.saveLink(link: LinksItensModel(titleLink: titleLink, page: page, description: description, image: image))
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("Add Link")
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width-50)
            }
            .background(Color.blue)
            .fontWeight(.bold)
            .cornerRadius(10)
            .padding(.top, 25)
        }
    }
}

struct AddLinkView_Previews: PreviewProvider {
    static var previews: some View {
        AddLinkView()
    }
}
