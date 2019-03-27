//
//  WinnersTableViewController.swift
//  CampeoesDaCopa
//
//  Created by Andreza Moreira on 22/03/19.
//  Copyright © 2019 Andreza Moreira. All rights reserved.
//

import UIKit

class WinnersTableViewController: UITableViewController {
    
    var worldCups: [WorldCup] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        loadWorldCups()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! WorldCupViewController
        
        // linha selecionada
        let worldCup = worldCups[tableView.indexPathForSelectedRow!.row]
        
        viewController.worldCup = worldCup
        
        
    }

    func loadWorldCups(){
        let fileURL = Bundle.main.url(forResource: "winners.json", withExtension: nil)!
        let jsonData = try! Data(contentsOf: fileURL)
        do {
            worldCups = try JSONDecoder().decode([WorldCup].self, from: jsonData)
        } catch {
            print(error.localizedDescription)
        }
    }

/*
    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }
 */

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return worldCups.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // escada rolante
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! WorldCupTableViewCell
        
        let worldCup = worldCups[indexPath.row] // recuperando
        
        // alimentar as células
        cell.prepare(with: worldCup)
        
        return cell
    }

   

}
