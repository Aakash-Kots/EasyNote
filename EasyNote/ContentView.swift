//
//  ContentView.swift
//  EasyNote
//
//  Created by Aakash Kothari on 02/07/22.
//

import SwiftUI

struct ContentView: View {
   
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var signUp: Bool = false
    var body: some View {
        NavigationView {
            ZStack {
               
                Color.blue
                    .ignoresSafeArea()
                Circle()
                    .scale(1.8)
                    .fill(.gray.opacity(0.7))
                    .shadow(color: .black.opacity(0.2), radius: 20, x: 0, y: 0)
                Circle()
                    .scale(1.5)
                    .fill(.white)
                
                VStack(spacing: 20) {
                    Text("Welcome back to EasyNote!")
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                        .bold()
                        .multilineTextAlignment(.center)
                   
                        
                    TextField("Email", text: $email)
                        .frame(width: 300, height: 50)
                        .padding(.horizontal)
                        .overlay(RoundedRectangle(cornerRadius: 10).strokeBorder(.gray.opacity(0.8), style: StrokeStyle(lineWidth:1)))
                    SecureField("Password", text: $password)
                        .frame(width: 300, height: 50)
                        .padding(.horizontal)
                        .overlay(RoundedRectangle(cornerRadius: 10).strokeBorder(.gray.opacity(0.8), style: StrokeStyle(lineWidth: 1)))
                    
                    Button {
                        print("Login")
                    } label: {
                        Text("Login")
                    }
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)

                   
                    HStack {
                        Text("Don't have an account?")
                        Button {
                            signUp = true
                        } label: {
                            Text("Sign Up")
                        }

                    }
                    
                    
                }
                .padding()
                
            }
            .sheet(isPresented: $signUp) {
                SignUp()
            }
        }
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
