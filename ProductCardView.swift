//
//  ProductCardView.swift
//  TestSpar
//
//  Created by Visarg on 17.08.2023.
//

import SwiftUI

struct ProductCardView: View {
    var product: ProductDate
    var body: some View {
        ZStack(alignment: .topLeading){
            VStack{
                Image(product.image)
                    .resizable()
                    .cornerRadius(15)
                    .frame(width: 120,height: 120.0)
                    .scaledToFit()
                
                
                HStack{
                    Text("\(product.price).90 ₽")
                        .bold()
                    Button {
                        
                    } label: {
                        Image(systemName: "trash.fill")
                            .padding(6)
                            .foregroundColor(.white)
                            .background(.green)
                            .cornerRadius(20)
                    }
                }
            }
            if product.discount != nil{
                Text(product.discount!)
                    .font(.caption)
                    .foregroundColor(.white)
                    .padding(.leading,19)
                    .background(.red)
                    .cornerRadius(5)
                    .offset(x:-8)
                    .clipped()
            }else {
                Text("")
                
            }
        }
        .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(Color.gray, lineWidth: 1))
        .clipShape(RoundedRectangle(cornerRadius: 10))
        //
    }
}


struct ProductCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCardView(product: productRecommed[1])
    }
}
