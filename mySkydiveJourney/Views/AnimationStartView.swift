//
//  AnimationStartView.swift
//  mySkydiveJourney
//
//  Created by Wesley Prado on 19/09/2023.
//

import SwiftUI

struct AnimationStartView: View {
    var body: some View {
        BackgroundView()
    }
}

struct AnimationStartView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationStartView()
    }
}


//MARK: - SubViews - BackgroundView

struct BackgroundView: View {
    
    @State var rotation = 0.0
    
    //Parachutist X and Y Position
    @State var positionX = 250
    @State var positionY = -250
    
    var body: some View {
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.white,Color.blue, Color.white, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 90){
                
                Image("msj")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 380, height: 380)
                
                
                Image("p7")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .rotationEffect(.degrees(rotation))
                    .offset(x: CGFloat(positionX), y: CGFloat(positionY))
                    .animation(.easeInOut(duration: 9).repeatForever(autoreverses: false), value: positionX)
                    .onAppear(){
                        //rotation += 50
                        positionX += -850
                        positionY += 850
                    }
                
                Button(action: {
                    
                }) {
                    Text("Let's Go!")
                        .foregroundColor(.white)
                        .italic()
                        .fontWeight(.bold)
                        .padding()
                        .background(Capsule().fill(LinearGradient(gradient: Gradient(colors: [Color.black, Color.blue,Color.black]), startPoint: .topLeading, endPoint: .bottomTrailing)))
                }
            }
        }
    }
}

