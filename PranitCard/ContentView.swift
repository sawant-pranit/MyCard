//
//  ContentView.swift
//  PranitCard
//
//  Created by pranit on 16/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52).edgesIgnoringSafeArea(.all)
            VStack {
                Image("pranit").resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay( Circle().stroke( Color.white, lineWidth: 5.0))
                
                Text("Pranit Sawant").font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(Color("Info Color"))
                Text("iOS developer")
                    .font(.system(size: 25))
                    .foregroundColor(Color("Info Color"))
                Divider()
                InfoView(infoText: "+91 9773338676", imageName: "phone.fill")
                InfoView(infoText: "pranitsawant01@gmail.com", imageName: "envelope.fill")
                        
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
