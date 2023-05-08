//
//  AddJumpView.swift
//  mySkydiveJourney
//
//  Created by Wesley Prado on 01/05/2023.
//

import SwiftUI
import PhotosUI

struct AddJumpView: View {
    
    @State var title = ""
    @State var color = Color.black.opacity(0.7)
    @State var place = ""
    @State var dropzone = ""
    @State var date = ""
    @State var image = ""
    @State var jumpN = ""
    @State var aircraft = ""
    @State var equipment = ""
    @State var altitude = ""
    @State var freefal = ""
    @State var totalFreefal = ""
    @State var description = ""
    @State var selectedItems: [PhotosPickerItem] = []
    @State var data: Data?
    
    @Environment(\.presentationMode) var presentationMode // PresentationMode environment variable.
    @EnvironmentObject var viewModel: Jump
    
    var body: some View {
        
        VStack{
            
            ScrollView{
                 
                Image("msj")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                
                TextField("Title", text: $title)
                    .padding(10)
                    .background(RoundedRectangle(cornerRadius: 4).stroke(self.title != "" ? Color.blue : self.color, lineWidth: 2))
                    .padding()
                HStack{
                    TextField("Place", text: $place)
                        .padding(10)
                        .background(RoundedRectangle(cornerRadius: 4).stroke(self.title != "" ? Color.blue : self.color, lineWidth: 2))
                        .padding()
                    TextField("Dropzone", text: $dropzone)
                        .padding(10)
                        .background(RoundedRectangle(cornerRadius: 4).stroke(self.title != "" ? Color.blue : self.color, lineWidth: 2))
                        .padding()
                }
                
                HStack{
                    TextField("Date", text: $date)
                        .padding(10)
                        .background(RoundedRectangle(cornerRadius: 4).stroke(self.title != "" ? Color.blue : self.color, lineWidth: 2))
                        .padding()
                    TextField("Jump Number", text: $jumpN)
                        .padding(10)
                        .background(RoundedRectangle(cornerRadius: 4).stroke(self.title != "" ? Color.blue : self.color, lineWidth: 2))
                        .padding()
                }
                
                HStack{
                    TextField("Aircraft", text: $aircraft)
                        .padding(10)
                        .background(RoundedRectangle(cornerRadius: 4).stroke(self.title != "" ? Color.blue : self.color, lineWidth: 2))
                        .padding()
                    TextField("Equipment", text: $equipment)
                        .padding(10)
                        .background(RoundedRectangle(cornerRadius: 4).stroke(self.title != "" ? Color.blue : self.color, lineWidth: 2))
                        .padding()
                }
                
                HStack{
                    TextField("Altitude", text: $altitude)
                        .padding(10)
                        .background(RoundedRectangle(cornerRadius: 4).stroke(self.title != "" ? Color.blue : self.color, lineWidth: 2))
                        .padding()
                    TextField("Freefall", text: $freefal)
                        .padding(10)
                        .background(RoundedRectangle(cornerRadius: 4).stroke(self.title != "" ? Color.blue : self.color, lineWidth: 2))
                        .padding()
                    
                }
                
                VStack{
                    TextField("Total Freefall", text: $totalFreefal)
                        .padding(10)
                        .background(RoundedRectangle(cornerRadius: 4).stroke(self.title != "" ? Color.blue : self.color, lineWidth: 2))
                        .padding()
                    
                    TextField("Description" ,text: $description)
                        .frame(height: 200)
                        .background(RoundedRectangle(cornerRadius: 4).stroke(self.title != "" ? Color.blue : self.color, lineWidth: 2))
                        .padding()
                    
                }
                
                VStack{
                    if let data = data, let uiimage = UIImage(data: data){
                        Image(uiImage: uiimage)
                            .resizable()
                    }
                    Spacer()
                    PhotosPicker(selection: $selectedItems,
                                 maxSelectionCount: 1,
                                 matching: .images
                    ){
                        Text("Upload Image")
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                            .padding()
                            .cornerRadius(10)
                    }
                    
                    Button(action: {
                        viewModel.saveJump(jump: LogBookItensModel(title: title, place: place, dropzone: dropzone, date: date, image: image, jumpN: jumpN, aircraft: aircraft, equipment: equipment, altitude: altitude, freefall: freefal, totalFreefall: totalFreefal, description: description))
                        self.presentationMode.wrappedValue.dismiss() //The Button's action dismisses the DetailView by accessing the PresentationMode environment variable.
                    }) {
                        Text("Add Jump")
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
    }
}


//MARK: - Preview

struct AddJumpView_Previews: PreviewProvider {
    static var previews: some View {
        AddJumpView()
    }
}
