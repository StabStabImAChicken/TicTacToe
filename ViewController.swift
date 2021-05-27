//
//  ViewController.swift
//  Games
//
//  Created by user168408 on 4/5/21.
//  Copyright © 2021 Shane. Z. Thomas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label7: UILabel!
    @IBOutlet weak var label8: UILabel!
    @IBOutlet weak var label9: UILabel!
    
    @IBOutlet weak var turnLabel: UILabel!
    
    @IBOutlet weak var myView: UIView!
    
    @IBOutlet var ticTacTapGestureRecognizor: UITapGestureRecognizer!
    
    var allLabels : [UILabel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        allLabels = [label1, label2, label3, label4, label5, label6, label7, label8, label9]
        
        turnLabel.text = "X"
    }

    func checkForWinner(){
        if label1.text == label2.text && label2.text == label3.text && label1.text != ""{
            if label1.text == "X"{
                youWonX()
            }else {
                youWonO()
            }
            resetGame()
        }
        if label4.text == label5.text && label5.text == label6.text && label4.text != ""{
            if label4.text == "X"{
                youWonX()
            }else {
                youWonO()
            }
            resetGame()
        }
        if label7.text == label8.text && label8.text == label9.text && label7.text != ""{
            if label7.text == "X"{
                youWonX()
            }else {
                youWonO()
            }
            resetGame()
        }
        if label1.text == label4.text && label4.text == label7.text && label1.text != ""{
            if label1.text == "X"{
                youWonX()
            }else {
                youWonO()
            }
            resetGame()
        }
        if label2.text == label5.text && label5.text == label8.text && label2.text != ""{
            if label2.text == "X"{
                youWonX()
            }else {
                youWonO()
            }
            resetGame()
        }
        if label3.text == label6.text && label6.text == label9.text && label3.text != ""{
            if label3.text == "X"{
                youWonX()
            }else {
                youWonO()
            }
            resetGame()
        }
        if label1.text == label5.text && label5.text == label9.text && label1.text != ""{
            if label1.text == "X"{
                youWonX()
            }else {
                youWonO()
            }
            resetGame()
        }
        if label3.text == label5.text && label5.text == label7.text && label3.text != ""{
            if label3.text == "X"{
                youWonX()
            }else {
                youWonO()
            }
            resetGame()
        }
        
    }
    
    func placeInToLabel(myLabel: UILabel){
        if myLabel.text == ""{
            if turnLabel.text == "X"{
                myLabel.text = turnLabel.text
                turnLabel.text = "O"
            } else{
                myLabel.text = turnLabel.text
                turnLabel.text = "X"
            }
        }
    }
    @IBAction func tapGesture(_ sender: UITapGestureRecognizer) {
        let selectedPoint = sender.location(in: myView)
        for label in allLabels{
            if label.frame.contains(selectedPoint){
                placeInToLabel(myLabel: label)
            }
        }
        checkForWinner()
    }
    
    func resetGame(){
        label1.text = ""
        label2.text = ""
        label3.text = ""
        label4.text = ""
        label5.text = ""
        label6.text = ""
        label7.text = ""
        label8.text = ""
        label9.text = ""
        turnLabel.text = "X"
    }
    
    func youWonX(){
        let alertController = UIAlertController(title: "X Wins!", message: nil, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "cool", style: .default, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
    
    func youWonO(){
        let alertController = UIAlertController(title: "O Wins!", message: nil, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "nice", style: .default, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
    
        @IBAction func resetButton(_ sender: UIButton) {
        resetGame()
    }
    
}

