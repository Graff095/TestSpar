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
        ZStack{
            ZStack{
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
                                .padding(10)
                                .foregroundColor(.white)
                                .background(.green)
                                .cornerRadius(20)
                        }
                    }
                }
            }
			.overlay(RoundedRectangle(cornerRadius: 10)
				.stroke(Color.gray, lineWidth: 1))
        }
      }
    }


struct ProductCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCardView(product: productRecommed[1])
    }
}
