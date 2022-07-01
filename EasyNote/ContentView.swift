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
    @State private var fullName: String = ""
    @State private var confirmPassword: String = ""
    var body: some View {
        NavigationView {
                        Form {
                            Section("Personal Details") {
                                TextField("Enter your full name", text: $fullName)
                                TextField("Enter your email", text: $email)
                            }
                            Section("Password") {
                                SecureField("Enter your password", text: $password)
                                SecureField("Confirm your password",text: $confirmPassword)
                            }
                            Section() {
                                Button(role: .cancel) {
                                    // Sign Up
                                } label: {
                                    Text("Sign Up")
                                        .bold()
                                }
            
            
            
                            }
                        }
                        .navigationTitle("Welcome to EasyNote")
                        .toolbar {
                            Button {
                                print("Keyboard Down")
                            } label: {
                                Image(systemName: "keyboard.chevron.compact.down")
                            }

                        }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
