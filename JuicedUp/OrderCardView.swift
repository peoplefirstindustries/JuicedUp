//
//  OrderCardView.swift
//  JuicedUp
//
//  Created by Richard Crichlow on 3/22/23.
//

import SwiftUI

struct OrderCardView: View {
    
    let order: Order
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Image(order.restaurant.imageURL)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .cornerRadius(10)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(order.restaurant.name)
                        .font(.headline)
                    Text(order.date, style: .date)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
                
                Text("$\(order.totalPrice, specifier: "%.2f")")
                    .font(.headline)
                    .foregroundColor(.green)
            }
            
            ForEach(order.items) { item in
                HStack {
                    Text("\(item.quantity) x \(item.name)")
                        .font(.subheadline)
                    
                    Spacer()
                    
                    Text("$\(item.price * Double(item.quantity), specifier: "%.2f")")
                        .font(.subheadline)
                }
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color.gray.opacity(0.4), radius: 5, x: 0, y: 2)
    }
}


struct OrderCardView_Previews: PreviewProvider {
    static var previews: some View {
        OrderCardView(order: SampleData.orders.first!)
    }
}
