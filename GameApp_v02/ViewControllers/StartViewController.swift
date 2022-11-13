//
//  StartViewController.swift
//  GameApp_v02
//
//  Created by Max Franz Immelmann on 11/13/22.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet var playersNumberLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func startButtonTapped() {
        let playersNumber = playersNumberLabel.text
        
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
