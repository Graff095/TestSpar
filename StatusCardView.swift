//
//  StatusCardView.swift
//  TestSpar
//
//  Created by Visarg on 17.08.2023.
//

import SwiftUI

struct StatusCardView: View {
    @State var isFaseUp: Bool = true
    var status: StatusDate
    var body: some View {
        
        VStack{
            ZStack(alignment: .center){
                let shape = RoundedRectangle(cornerRadius: 20)
                if isFaseUp {
                    shape.clipShape(Circle()).foregroundColor(.green)
                        .frame(width: 75,height: 75)
                    Image(status.statusImage)
                        .resizable()
                        .frame(width: 70,height: 70)
                        .clipShape(Circle())
                } else {
                    shape.clipShape(Circle()).foregroundColor(.gray
                    )
                    .frame(width: 75,height: 75)
                    Image(status.statusImage)
                        .resizable()
                        .frame(width: 70,height: 70)
                        .clipShape(Circle())
                }
                
            }.onTapGesture{
                isFaseUp = !isFaseUp
            }
            
            Text(status.statusTitle)
                .font(.caption)
                .multilineTextAlignment(.center)
        }.frame(width: 80,height: 115)
    }
    
    struct StatusCardView_Previews: PreviewProvider {
        static var previews: some View {
            StatusCardView(status: statusArray[0])
        }
    }
}
