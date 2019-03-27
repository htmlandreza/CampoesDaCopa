//
//  WorldCupTableViewCell.swift
//  CampeoesDaCopa
//
//  Created by Andreza Moreira on 22/03/19.
//  Copyright © 2019 Andreza Moreira. All rights reserved.
//

import UIKit

class WorldCupTableViewCell: UITableViewCell {
    
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var winnerImageView: UIImageView!
    @IBOutlet weak var viceImageView: UIImageView!
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var viceLabel: UILabel!
    @IBOutlet weak var winnerScoreLabel: UILabel!
    @IBOutlet weak var viceScoreLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func prepare(with cup: WorldCup){
        yearLabel.text = "\(cup.year)"
        winnerImageView.image  = UIImage(named: cup.winner)
        viceImageView.image = UIImage(named: cup.vice)
        winnerLabel.text = cup.winner
        viceLabel.text = cup.vice
        countryLabel.text = cup.country
        winnerScoreLabel.text = cup.winnerScore
        viceScoreLabel.text = cup.viceScore
    }

}
