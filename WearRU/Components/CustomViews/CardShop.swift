//
//  File.swift
//  WearRU
//
//  Created by Apprenant 154 on 03/06/2024.
//

import Foundation
import SwiftUI

struct CardShop: View {
    
    @StateObject var viewModel = ShopViewModel()
    
    var image: String
    var title: String
    var location: String
    var phone: String
    var hours: String
    
    var body: some View {
        ForEach(viewModel.shops) { shop in
            VStack(spacing: 16.0) {
                ZStack {
                    Image(systemName: "heart.circle.fill")
                        .foregroundStyle(.red)
                    Image(shop.shopImage)
                        .resizable()
                        .frame(width: 350, height: 350)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                }
                HStack(alignment: .center) {
                    Text(shop.shopName).bold()
                        .font(.system(size: 30))
                    Spacer()
                    OpeningButton()
                }
                .foregroundStyle(.colorText).bold()
                HStack(alignment: .center) {
                    Image(systemName: "mappin.circle.fill")
                        .foregroundStyle(Color(.colorPrimary))
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Text(location)
                        .foregroundStyle(.colorText).bold()
                    Spacer()
                    Image(systemName: "phone.circle.fill")
                        .foregroundStyle(Color(.colorPrimary))
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Text(shop.shopPhone)
                        .foregroundStyle(.colorText).bold()
                }
                HStack(alignment: .center) {
                    Image(systemName: "clock.circle.fill").bold()
                        .foregroundStyle(Color(.colorPrimary))
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Text(shop.shopHours)
                        .foregroundStyle(.colorText).bold()
                    Spacer()
                    Image(systemName: "map.circle.fill")
                        .foregroundStyle(Color(.colorPrimary))
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    ItineraryButton()
                        .foregroundStyle(.colorText).bold()
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    CardShop(image: "CardShop_1", title: "Test", location: "Test", phone: "Test", hours: "Test")
}

