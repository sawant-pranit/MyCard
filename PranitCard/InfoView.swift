//
//  InfoView.swift
//  PranitCard
//
//  Created by pranit on 17/09/23.
//

import SwiftUI

struct InfoView: View {
    let infoText : String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 60)
            .foregroundColor(Color("Info Color"))
            .overlay( HStack {
                Image(systemName: imageName).foregroundColor(Color.green)
                Text(infoText).font(.title3)
                    .foregroundColor(Color("Info Text Color"))
            }).padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(infoText: "Hello", imageName: "phone.fill").previewLayout(.sizeThatFits)
    }
}
