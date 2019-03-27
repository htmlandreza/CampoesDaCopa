//
//  WorldCupViewController.swift
//  CampeoesDaCopa
//
//  Created by Andreza Moreira on 22/03/19.
//  Copyright © 2019 Andreza Moreira. All rights reserved.
//

import UIKit

class WorldCupViewController: UIViewController {
    
    var worldCup: WorldCup!
    @IBOutlet weak var winnerImageView: UIImageView!
    @IBOutlet weak var viceImageView: UIImageView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var viceLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "WorldCup \(worldCup.year)"
        winnerImageView.image = UIImage(named: "\(worldCup.winner).png")
        viceImageView.image = UIImage(named: "\(worldCup.vice).png")
        winnerLabel.text = worldCup.winner
        viceLabel.text = worldCup.vice
        scoreLabel.text = "\(worldCup.winnerScore) x \(worldCup.viceScore)"
    }
}


extension WorldCupViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return worldCup.matches.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let games = worldCup.matches[section].games
        return games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! GamesTableViewCell
        
        let match = worldCup.matches[indexPath.section]
        let game = match.games[indexPath.row]
        
        cell.prepare(with: game)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let match = worldCup.matches[section]
        return match.stage
    }
}



extension WorldCupViewController: UITableViewDelegate{
    
}
