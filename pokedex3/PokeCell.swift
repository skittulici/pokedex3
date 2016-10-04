//
//  PokeCell.swift
//  pokedex3
//
//  Created by skitty on 04/10/2016.
//  Copyright © 2016 Florin Termure. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    var pokemon: Pokemon!
    
    //rotunjire colturi la celule
    required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
        layer.cornerRadius = 5.0
        
    }
    //pana aici
        
    func configureCell(_ pokemon: Pokemon) {
        self.pokemon = pokemon
        nameLbl.text = self.pokemon.name.capitalized
        thumbImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
    }
    
}
