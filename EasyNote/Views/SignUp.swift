//
//  SignUp.swift
//  EasyNote
//
//  Created by Aakash Kothari on 03/07/22.
//

import SwiftUI

struct SignUp: View {
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        Form {
            Section("Credentials") {
                TextField("Email", text: $email)
                SecureField("Password", text: $password)
            }
            
            Section() {
                Button(action: {
                    print("Sign up")
                }, label: {
                  Text("Sign Up")
                })
            }
        }
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
