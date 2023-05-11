//
//  ImagePickerModel.swift
//  mySkydiveJourney
//
//  Created by Wesley Prado on 10/05/2023.
//

import SwiftUI
import PhotosUI

@MainActor
class ImagePicker: ObservableObject {
    
    @Published var image: Image?
    @Published var imageSelection: PhotosPickerItem? {
        didSet {
            if let imageSelection {
                Task {
                    try await loadTransferable(from:imageSelection)
                }
            }
        }
    }
    
    func loadTransferable(from imageSelection: PhotosPickerItem?) async throws {
        do{
            if let data = try await imageSelection?.loadTransferable(type: Data.self) {
                if let uiImage = UIImage(data: data) {
                    self.image = Image(uiImage: uiImage)
                }
            }
        } catch {
            print(error.localizedDescription)
            image = nil
        }
    }
}
