//
//  BannerView.swift
//  TestSpar
//
//  Created by Visarg on 17.08.2023.
//

import SwiftUI

struct BannerView: View {
 
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
                HStack {
                    Image("banner 1.11").resizable()
                        .frame(width: 350,height: 180)
                        .cornerRadius(15)
                        .padding(.horizontal, 3)
                    
                    Image("banner 1.2").resizable()
                        .frame(width: 350,height: 180)
                        .cornerRadius(15)
                        .padding(.horizontal, 3)
                    
                    Image("banner 1.3").resizable()
                        .frame(width: 350,height: 180)
                        .cornerRadius(15)
                        .padding(.horizontal, 3)
                }
				.padding(.horizontal, 16)
            }
        }
    }

struct BannerView_Previews: PreviewProvider {
    static var previews: some View {
        BannerView()
    }
}
