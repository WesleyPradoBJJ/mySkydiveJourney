//
//  LoginView.swift
//  mySkydiveJourney
//
//  Created by Wesley Prado on 11/05/2023.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        
        Home()
        
    }
}


//MARK: - Preview


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}


//MARK: - SubViews - HOME


struct Home: View {
    
    @State var show = false
    
    var body: some View {
        
        NavigationView{
            
            ZStack{
                
                NavigationLink(destination: SignUp(show: self.$show), isActive: self.$show) {
                    // Replace for NavigationStack* destination: SignUp(show: self.$show)
                    Text("")
                }
                .hidden()
                
                Login(show: self.$show)
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
    }
}

//MARK: - SubViews - LOGIN


struct Login: View {
    
    @State var color = Color.black.opacity(0.7)
    @State var email = ""
    @State var pass = ""
    @State var visible = false
    @Binding var show: Bool
    @State var alert = false
    @State var error = ""
    
    var body: some View {
        ZStack{
            
            ZStack(alignment: .topTrailing){
                
                GeometryReader{_ in
                    
                    VStack{
                        
                        Image("msj")
                            .resizable()
                            .scaledToFit()
                        
                        Text("Log in to your account")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(self.color)
                            .padding()
                        
                        TextField("Email", text: self.$email)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 4).stroke(self.email != "" ? Color.blue : self.color, lineWidth: 2))
                            .padding(.top, 25)
                        
                        HStack(spacing: 15){
                            
                            VStack{
                                if self.visible {
                                    
                                    TextField("Password", text: self.$pass)
                                    
                                } else {
                                    SecureField("Password", text: self.$pass)
                                }
                            }
                            
                            Button(action: {
                                
                                self.visible.toggle()
                                
                            }){
                                Image(systemName: self.visible ? "eye.slash.fill" : "eye.fill")
                                    .foregroundColor(self.color)
                            }
                            
                            
                            
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 4).stroke(self.pass != "" ? Color.blue : self.color, lineWidth: 2))
                        .padding(.top, 25)
                        
                        HStack{
                            
                            Spacer()
                            
                            Button(action:{
                                
                            }){
                                
                                Text("Forget password")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.black)
                            }
                        }
                        .padding(.top, 20)
                        
                        Button(action: {
                            
                            self.verify()
                            
                        }){
                            
                            Text("Login")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .padding(.vertical)
                                .frame(width: UIScreen.main.bounds.width - 50)
                            
                        }
                        .background(
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .fill(.linearGradient(colors:[.black, .blue], startPoint: .topTrailing, endPoint: .bottomTrailing))
                        )
                        .cornerRadius(10)
                        .padding(.top, 25)
                        
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding(.horizontal, 25)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [.blue,.white]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    
                }
                
                Button(action: {
                    
                    self.show.toggle()
                    
                }){
                    
                    Text("Register")
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    
                }
                
                .padding()
                
            }
            
            if self.alert{
                
                ErrorView(alert: self.$alert, error: self.$error)
                
            }
        }
    }
    
    func verify() {
        
        if self.email != "" && self.pass != "" {
            
            
            
        } else {
            
            self.error = "Please fill all the contents properly"
            self.alert.toggle()
        }
    }
}

//MARK: - SubViews - SIGNUP


struct SignUp: View {
    
    @State var color = Color.black.opacity(0.7)
    @State var email = ""
    @State var pass = ""
    @State var repass = ""
    @State var visible = false
    @State var revisible = false
    @Binding var show : Bool
    
    var body: some View {
        ZStack(alignment: .topLeading){
            
            GeometryReader{_ in
                
                VStack{
                    
                    Image("msj")
                        .resizable()
                        .scaledToFit()
                    
                    Text("Log in to your account")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(self.color)
                        .padding()
                    
                    TextField("Email", text: self.$email)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 4).stroke(self.email != "" ? Color.blue : self.color, lineWidth: 2))
                        .padding(.top, 25)
                    
                    HStack(spacing: 15){
                        
                        VStack{
                            if self.visible {
                                
                                TextField("Password", text: self.$pass)
                                
                            } else {
                                SecureField("Password", text: self.$pass)
                            }
                        }
                        
                        Button(action: {
                            
                            self.visible.toggle()
                            
                        }){
                            Image(systemName: self.visible ? "eye.slash.fill" : "eye.fill")
                                .foregroundColor(self.color)
                        }
                        
                        
                        
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 4).stroke(self.pass != "" ? Color.blue : self.color, lineWidth: 2))
                    .padding(.top, 25)
                    
                    HStack(spacing: 15){
                        
                        VStack{
                            if self.revisible {
                                
                                TextField("Re-enter Password", text: self.$repass)
                                
                            } else {
                                SecureField("Re-enter Password", text: self.$repass)
                            }
                        }
                        
                        Button(action: {
                            
                            self.revisible.toggle()
                            
                        }){
                            Image(systemName: self.revisible ? "eye.slash.fill" : "eye.fill")
                                .foregroundColor(self.color)
                        }
                        
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 4).stroke(self.repass != "" ? Color.blue : self.color, lineWidth: 2))
                    .padding(.top, 25)
                    
                    Button(action: {
                        
                    }){
                        
                        Text("Register")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .padding(.vertical)
                            .frame(width: UIScreen.main.bounds.width - 50)
                        
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .fill(.linearGradient(colors:[.black, .blue], startPoint: .topTrailing, endPoint: .bottomTrailing))
                    )
                    .cornerRadius(10)
                    .padding(.top, 25)
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(.horizontal, 25)
                .background(
                    LinearGradient(gradient: Gradient(colors: [.blue,.white]), startPoint: .topLeading, endPoint: .bottomTrailing))
                
            }
            
            Button(action: {
                
                self.show.toggle()
                
            }){
                
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.black)
                
            }
            .padding()
            
        }
        .navigationBarBackButtonHidden(true)
        
    }
}

//MARK: - SubViews - ERRORVIEW


struct ErrorView: View {
    
    @State var color = Color.black.opacity(0.7)
    @Binding var alert: Bool
    @Binding var error: String
    
    var body: some View {
        
        GeometryReader{_ in
            
            VStack{
                
                HStack{
                    
                    Text("Error")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(self.color)
                    
                    Spacer()
                }
                .padding(.horizontal, 25)
                
                Text(self.error)
                    .foregroundColor(self.color)
                    .padding(.top)
                    .padding(.horizontal, 25)
                
                Button(action: {
                    
                    self.alert.toggle()
                    
                }){
                    
                    Text("Cancel")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width - 120)
                }
                .background(
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(.linearGradient(colors:[.black, .blue], startPoint: .topTrailing, endPoint: .bottomTrailing)))
                .cornerRadius(10)
                .padding(.top, 25)
                
            }
            .padding(.vertical, 25)
            .frame(width: UIScreen.main.bounds.width - 100)
            .background(Color.white)
            .cornerRadius(15)
            .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .center)
            
        }
        .background(Color.black.opacity(0.75).edgesIgnoringSafeArea(.all))
        
    }
}
