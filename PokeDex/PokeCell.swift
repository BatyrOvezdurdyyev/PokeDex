//
//  PokeCell.swift
//  PokeDex
//
//  Created by Mac OSX on 1/30/17.
//  Copyright © 2017 Mac OSX. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
        
        
    }
    
    func configureCell(_ pokemon: Pokemon) {
        
        self.pokemon = pokemon
        
        self.nameLabel.text = self.pokemon.name.capitalized
        self.thumbImage.image = UIImage(named: "\(self.pokemon.pokedexId)")
        
    }
    
}
