//
//  СategoryView.swift
//  TestSpar
//
//  Created by Visarg on 17.08.2023.
//

import SwiftUI

struct СategoryView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            
            HStack {
                Image("banner 3.1").resizable()
                    .cornerRadius(15)
                    .padding(.horizontal, 3)
                    .frame(width: 120,height: 150)
                
                Image("banner 3.2").resizable()
                    .cornerRadius(15)
                    .padding(.horizontal, 3)
                    .frame(width: 120,height: 150)
                
                Image("banner 3.3").resizable()
                    .cornerRadius(15)
                    .padding(.horizontal, 3)
                    .frame(width: 120,height: 150)
            }
        }
    }
}

struct СategoryView_Previews: PreviewProvider {
    static var previews: some View {
        СategoryView()
    }
}
