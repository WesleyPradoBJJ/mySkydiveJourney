////
////  ContentView.swift
////  mySkydiveJourney
////
////  Created by Wesley Prado on 27/04/2023.
////
//
//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        Home()
//    }
//}
//
//
////MARK: - Preview
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//
////MARK: - SubViews
//struct Home: View {
//    @State var show = false
//    var body: some View {
//        NavigationStack{
//            ZStack{ 
//                NavigationLink(destination: SignUp(show: self.$show)) {
//                    Text("")
//                }
//                .hidden()
//                
//                Login(show: self.$show)
//                
//            }
////            .background(
////                LinearGradient(gradient: Gradient(colors: [.white,.blue,.white]), startPoint: .topLeading, endPoint: .bottomTrailing))
//            .navigationBarTitle("")
//            .navigationBarHidden(true)
//            .navigationBarBackButtonHidden(true)
//            
//        }
//    }
//}
//
//struct Login: View {
//    
//    @State var color = Color.black.opacity(0.7)
//    @State var email = ""
//    @State var password = ""
//    @State var visible = false
//    @Binding var show : Bool
//    @State var alert = false
//    @State var error = ""
//    
//    var body: some View{
//        ZStack{
//            ZStack(alignment: .topTrailing){
//                GeometryReader{_ in
//                    
//                    VStack{
//                        
//                        Spacer()
//                        Image("msj")
//                            .resizable()
//                            .scaledToFit()
//                        Text("Log in to your account")
//                            .font(.title)
//                            .fontWeight(.bold)
//                            .foregroundColor(self.color)
//                            .padding(.top, 35)
//                        TextField("Email", text: self.$email)
//                            .padding()
//                            .background(RoundedRectangle(cornerRadius: 4).stroke(self.email != "" ? Color.blue : self.color, lineWidth: 2))
//                            .padding(.top, 25)
//                        
//                        HStack (spacing: 15){
//                            VStack{
//                                if self.visible{
//                                    TextField("Password", text: self.$password)
//                                } else {
//                                    SecureField("Password", text: self.$password)
//                                }
//                            }
//                            Button(action: {
//                                self.visible.toggle()
//                            }){
//                                Image(systemName: self.visible ? "eye.slash.fill" : "eye.fill")
//                                    .foregroundColor(self.color)
//                            }
//                        }
//                        .padding()
//                        .background(RoundedRectangle(cornerRadius: 4).stroke(self.password != "" ? Color.blue : self.color, lineWidth: 2))
//                        
//                        .padding(.top, 25)
//                        
//                        HStack{
//                            Spacer()
//                            Button(action: {
//                                
//                            }) {
//                                Text("Forget password")
//                                    .fontWeight(.bold)
//                                    .foregroundColor(Color.blue)
//                            }
//                        }
//                        .padding(.top, 20)
//                        
//                        Button(action: {
//                            self.verify()
//                        }) {
//                            Text("Log in")
//                                .fontWeight(.bold)
//                                .foregroundColor(.white)
//                                .padding(.vertical)
//                                .frame(width: UIScreen.main.bounds.width-50)
//                        }
//                        .background(Color.blue)
//                        .cornerRadius(10)
//                        .padding(.top, 25)
//                    }
//                    .padding(.horizontal, 25)
//                }
//                
//                Button(action: {
//                    self.show.toggle()
//                }) {
//                    Text("Register")
//                        .fontWeight(.bold)
//                        .foregroundColor(Color.blue)
//                }
//                .padding()
//            }
//            if self.alert{
//                ErrorView(alert: self.$alert, error: self.$error)
//            }
//        }
//    }
//    
//    func verify(){
//        if self.email != "" && self.password != ""{
//            
//        } else {
//            self.error = "Please fill all the contents properly"
//            self.alert.toggle()
//        }
//    }
//}
//
//struct SignUp: View {
//    
//    @State var color = Color.black.opacity(0.7)
//    @State var email = ""
//    @State var password = ""
//    @State var repassword = ""
//    @State var visible = false
//    @State var revisible = false
//    @Binding var show : Bool
//    
//    var body: some View{
//        
//        ZStack(alignment: .topLeading){
//            
//            GeometryReader{_ in
//                
//                VStack{
//                    
//                    Spacer()
//                    Image("msj")
//                        .resizable()
//                        .scaledToFit()
//                    Text("Log in to your account")
//                        .font(.title)
//                        .fontWeight(.bold)
//                        .foregroundColor(self.color)
//                        .padding(.top, 35)
//                    TextField("Email", text: self.$email)
//                        .padding()
//                        .background(RoundedRectangle(cornerRadius: 4).stroke(self.email != "" ? Color.blue : self.color, lineWidth: 2))
//                        .padding(.top, 25)
//                    
//                    HStack (spacing: 15){
//                        VStack{
//                            if self.visible{
//                                TextField("Password", text: self.$password)
//                            } else {
//                                SecureField("Password", text: self.$password)
//                            }
//                        }
//                        Button(action: {
//                            self.visible.toggle()
//                        }){
//                            Image(systemName: self.visible ? "eye.slash.fill" : "eye.fill")
//                                .foregroundColor(self.color)
//                        }
//                    }
//                    .padding()
//                    .background(RoundedRectangle(cornerRadius: 4).stroke(self.password != "" ? Color.blue : self.color, lineWidth: 2))
//                    .padding(.top, 25)
//                    
//                    HStack (spacing: 15){
//                        VStack{
//                            if self.revisible{
//                                TextField("Re-enter password", text: self.$repassword)
//                            } else {
//                                SecureField("Re-enter password", text: self.$repassword)
//                            }
//                        }
//                        Button(action: {
//                            self.revisible.toggle()
//                        }){
//                            Image(systemName: self.revisible ? "eye.slash.fill" : "eye.fill")
//                                .foregroundColor(self.color)
//                        }
//                    }
//                    .padding()
//                    .background(RoundedRectangle(cornerRadius: 4).stroke(self.repassword != "" ? Color.blue : self.color, lineWidth: 2))
//                    .padding(.top, 25)
//                    
//                    Button(action: {
//                        
//                    }) {
//                        Text("Register")
//                            .foregroundColor(.white)
//                            .padding(.vertical)
//                            .frame(width: UIScreen.main.bounds.width-50)
//                    }
//                    .background(Color.blue)
//                    .cornerRadius(10)
//                    .padding(.top, 25)
//                }
//                .padding(.horizontal, 25)
//            }
//            
//            Button(action: {
//                self.show.toggle()
//            }) {
//               Image(systemName: "chevron.left")
//                    .font(.title)
//                    .foregroundColor(Color.blue)
//            }
//            .padding()
//        }
//        .navigationBarBackButtonHidden(true)
//        
//    }
//}
//
//struct ErrorView : View {
//    @State var color = Color.black.opacity(0.7)
//    @Binding var alert : Bool
//    @Binding var error : String
//    
//    var body: some View {
//        
//            VStack{
//                HStack{
//                    Text("Error")
//                        .font(.title)
//                        .fontWeight(.bold)
//                        .foregroundColor(self.color)
//                    
//                    Spacer()
//                }
//                .padding(.horizontal, 25)
//                
//                Text(self.error)
//                    .foregroundColor(self.color)
//                    .padding(.top)
//                    .padding(.horizontal, 25)
//                
//                Button(action: {
//                    self.alert.toggle()
//                }) {
//                    Text("Cancel")
//                        .foregroundColor(.white)
//                        .padding(.vertical)
//                        .frame(width: UIScreen.main.bounds.width-120)
//                }
//                .background(Color.blue)
//                .cornerRadius(10)
//                .padding(.top, 25)
//            }
//            .padding(.vertical, 25)
//            .frame(width: UIScreen.main.bounds.width-100)
//            .background(Color.white)
//            .cornerRadius(15)
//            .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .center)
//            .background(Color.black.opacity(0.80).edgesIgnoringSafeArea(.all))
//        }
//    }
//
