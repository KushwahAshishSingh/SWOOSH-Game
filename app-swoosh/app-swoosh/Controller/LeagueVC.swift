//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Mellifera Labs on 2/19/18.
//  Copyright © 2018 Mellifera Labs. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {


    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVC", sender: self)
    }
    @IBAction func unwindFromSkillVC(LeagueVC: UIStoryboardSegue) {
        
    }

}
