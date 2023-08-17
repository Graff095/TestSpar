//
//  RecommendView.swift
//  TestSpar
//
//  Created by Visarg on 16.08.2023.
//

import SwiftUI

struct RecommendView: View {
    var body: some View {
        VStack{
            HStack{
                Text("Рекомендуем").font(.title2).fontWeight(.bold)
                Spacer()
            }.padding(5)
            
            ScrollView(.horizontal, showsIndicators: false){
                
                HStack{
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
}

struct RecommendView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendView()
    }
}
