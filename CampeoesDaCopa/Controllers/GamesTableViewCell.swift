//
//  GamesTableViewCell.swift
//  CampeoesDaCopa
//
//  Created by Andreza Moreira on 25/03/19.
//  Copyright © 2019 Andreza Moreira. All rights reserved.
//

import UIKit

class GamesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var homeImageView: UIImageView!
    @IBOutlet weak var awayImageView: UIImageView!
    @IBOutlet weak var homeLabel: UILabel!
    @IBOutlet weak var awayLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func prepare(with game: Game){
        homeImageView.image = UIImage(named: "\(game.home).png")
        awayImageView.image = UIImage(named: "\(game.away).png")
        homeLabel.text = game.home
        awayLabel.text = game.away
        scoreLabel.text = game.score
        
    }

    
    
}
