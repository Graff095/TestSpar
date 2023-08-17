//
//  HomeView.swift
//  TestSpar
//
//  Created by Visarg on 17.08.2023.
//

import SwiftUI

struct HomeView: View {
	@State var txt = ""
	var body: some View {
		VStack {
			HStack {
				HStack {
					Image("geolocation")
						.resizable()
						.frame(width: 20,height: 20)
					TextField("Москва, Московская область", text: $txt)
						.lineLimit(3)
						.padding(10)
				}
				.overlay(
					RoundedRectangle(cornerRadius: 10)
						.stroke(Color.black, lineWidth: 1)
				)
				Button( action: {

				}){
					Image(systemName: "line.3.horizontal").font(.title)
						.accentColor(.green)
				}
			}
			.padding([.horizontal, .bottom], 16)

			ScrollView(.vertical, showsIndicators: false) {
				ScrollView(.horizontal, showsIndicators: false){
					HStack{
						ForEach(statusArray, id: \.id) { status in

							StatusCardView(status: status)

						}
					}
					.padding(.horizontal, 16)
				}
				VStack (spacing: 15){


					BannerView()

					HStack {
						Image("banner 2").resizable()
							.cornerRadius(15)
							.frame(width: 380,height: 120)
							.padding(.horizontal,5)
							.overlay(
								VStack {
									HStack{
										Text("0 бонусов").font(.title).fontWeight(.bold).foregroundColor(Color.white)
										Spacer()
									}.padding()
									Spacer()
								}
							)
					}
					СategoryView()
						.padding(.horizontal, 16)
					VStack {
						HStack {
							Text("Рекомендуем").font(.title2).fontWeight(.bold)
							Spacer()
						}.padding(5)
						ScrollView(.horizontal, showsIndicators: false){
							HStack {
								ForEach(productRecommed, id: \.id) { product in

									ProductCardView(product: product)

								}
							}
							.padding(.horizontal, 16)
						}
					}
					VStack {
						HStack {
							Text("Сладкое настроение").font(.title2).fontWeight(.bold)
							Spacer()
						}.padding(5)
						ScrollView(.horizontal, showsIndicators: false){
							HStack {
								ForEach(productSweet, id: \.id) { product in

									ProductCardView(product: product)

								}
							}
							.padding(.horizontal, 16)
						}
					}
				}
			}

			Spacer()

		}
	}
}

struct HomeView_Previews: PreviewProvider {
	static var previews: some View {
		HomeView()
	}
}
