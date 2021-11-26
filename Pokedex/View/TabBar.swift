//
//  TabBar.swift
//  Pokedex
//
//  Created by Bünyamin Kılıçer on 26.11.2021.
//

import SwiftUI

struct TabBar: View {
    var color: Color
    var attribute: String
    var value: Int
    var body: some View {
        HStack {
            Spacer()
            Text(attribute).font(.callout).foregroundColor(Color.black.opacity(0.6))
            Spacer()
            Text(String(value))
            ZStack(alignment: .leading){
                if(CGFloat(value*2) > 200){
                    RoundedRectangle(cornerRadius: 20).foregroundColor(color).frame(width: 200, height: 10,alignment: .leading)
                }else{
                    RoundedRectangle(cornerRadius: 20).foregroundColor(color).frame(width: CGFloat(value*2), height: 10,alignment: .leading)
                }
                RoundedRectangle(cornerRadius: 20).foregroundColor(Color.black.opacity(0.1)).frame(width: 200, height: 10,alignment: .leading)
            }
            Spacer()
        }
    }
}
