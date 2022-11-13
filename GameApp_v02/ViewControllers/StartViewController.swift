//
//  StartViewController.swift
//  GameApp_v02
//
//  Created by Max Franz Immelmann on 11/13/22.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet var playersNumberLabel: UITextField!
    @IBOutlet var startButtonLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        startButtonLabel.layer.cornerRadius = 10
        
    }
    
    @IBAction func startButtonTapped() {
        let playersNumber = Int(playersNumberLabel.text ?? "") ?? 2
        let players = Player.getPlayersList(number: playersNumber)
        players.forEach {
            print($0.name ?? "?")
        }
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
