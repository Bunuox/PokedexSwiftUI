//
//  PokedexView.swift
//  Pokedex
//
//  Created by Bünyamin Kılıçer on 23.11.2021.
//

import SwiftUI
import Kingfisher

struct PokedexView: View {
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible())]
    @ObservedObject var viewModel = PokemonViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: gridItems,spacing: 20, content: {
                    ForEach(viewModel.pokemon) { pokemon in
                        NavigationLink(destination: PokemonDetails(pokemon: pokemon,viewModel: viewModel)){
                            PokemonCell(pokemon: pokemon, viewModel: viewModel)
                        }
                    }
                })
            }
            .navigationTitle("Pokemons")
        }
    }
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
