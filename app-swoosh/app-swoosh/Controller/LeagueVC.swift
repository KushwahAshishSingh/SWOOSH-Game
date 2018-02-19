//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Mellifera Labs on 2/19/18.
//  Copyright © 2018 Mellifera Labs. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }

    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVC", sender: self)
    // making identifier name and make swage through controller
    }
    
    @IBAction func unwindFromSkillVC(LeagueVC: UIStoryboardSegue) {
        // for reverting back
    }
  
    @IBAction func onMensTapped(_ sender: Any) {
        SelectLeague(leagueType: "Mens")

    }
    @IBAction func onWomensTappes(_ sender: Any) {
        SelectLeague(leagueType: "Womens")
    }
    
    @IBAction func onCoidTapped(_ sender: Any) {
       SelectLeague(leagueType: "coed")
    }
    
    func SelectLeague(leagueType: String){
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
}
