//
//  StartViewController.swift
//  GameApp_v02
//
//  Created by Max Franz Immelmann on 11/13/22.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet var playersNumberTextField: UITextField!
    @IBOutlet var startButtonLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        startButtonLabel.layer.cornerRadius = 10
        
    }
    
    @IBAction func startButtonTapped() {
        guard let inputText = playersNumberTextField.text, !inputText.isEmpty else {
            showAlert(with: "Text field is empty", and: "Plese enter some number")
            return
        }
        
        
        let playersNumber = Int(inputText) ?? 2
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

// MARK: - UIAlertController
extension StartViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.playersNumberTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
