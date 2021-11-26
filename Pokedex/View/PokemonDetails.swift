//
//  PokemonDetails.swift
//  Pokedex
//
//  Created by Bünyamin Kılıçer on 26.11.2021.
//

import SwiftUI
import Kingfisher

struct PokemonDetails: View {
    var pokemon : Pokemon
    var viewModel: PokemonViewModel
    let color: Color
    
    init(pokemon: Pokemon, viewModel: PokemonViewModel){
        self.pokemon = pokemon
        self.viewModel = viewModel
        self.color = Color(self.viewModel.backgroundColor(forType: self.pokemon.type))
        
    }
    
    var body: some View {
        ScrollView{
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height/3)
                .foregroundColor(color)
                .ignoresSafeArea()
                
                
            
            KFImage(URL(string: pokemon.imageUrl))
                .resizable()
                .frame(width: 150, height: 150)
                .padding(.bottom,-130)
                .position(x: UIScreen.main.bounds.width/2, y: -UIScreen.main.bounds.width/3.7)
            
            Text(pokemon.name).font(.headline).padding()
            
            VStack{
                ZStack{
                    RoundedRectangle(cornerRadius:20).foregroundColor(color).frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/16, alignment: .center)
                    Text(pokemon.type).foregroundColor(Color.white)
                }
                
                Divider()
            }
            
            Text(pokemon.description)
            
            VStack{
                TabBar(color: Color.orange, attribute: "Height", value: pokemon.height)
                TabBar(color: Color.red, attribute: "Attack", value: pokemon.attack)
                TabBar(color: Color.blue, attribute: "Defense", value: pokemon.defense)
                TabBar(color: Color.purple, attribute: "Weight", value: pokemon.weight)
            }
            
        }.edgesIgnoringSafeArea(.top)
    }
}
