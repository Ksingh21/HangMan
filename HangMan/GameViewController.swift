//
//  GameViewController.swift
//  HangMan
//
//  Created by Student on 2018-04-03.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit


class GameViewController: UIViewController {
    
    var word1Ans: String = ""
    var word2Ans: String = ""
    var word3Ans: String = ""
    var word4Ans: String = ""
    var word5Ans: String = ""
    var word6Ans: String = ""
    var word7Ans: String = ""
    
    @IBOutlet var word1: UITextView!
    @IBOutlet var word2: UITextView!
    @IBOutlet var word3: UITextView!
    @IBOutlet var word4: UITextView!
    @IBOutlet var word5: UITextView!
    @IBOutlet var word6: UITextView!
    @IBOutlet var word7: UITextView!
    @IBOutlet weak var userGuess: UITextField!
    
    
    
    var easyWords: [String] = ["airwave", "almonds","amazing"]
    
    
    
    func defineWords() {
        var randNum = arc4random_uniform(3)
        
        let fullWord = easyWords[Int(randNum)]
        
        word1Ans = String(fullWord[fullWord.index(fullWord.startIndex, offsetBy: 0)])
        word2Ans = String(fullWord[fullWord.index(fullWord.startIndex, offsetBy: 1)])
        word3Ans = String(fullWord[fullWord.index(fullWord.startIndex, offsetBy: 2)])
        word4Ans = String(fullWord[fullWord.index(fullWord.startIndex, offsetBy: 3)])
        word5Ans = String(fullWord[fullWord.index(fullWord.startIndex, offsetBy: 4)])
        word6Ans = String(fullWord[fullWord.index(fullWord.startIndex, offsetBy: 5)])
        word7Ans = String(fullWord[fullWord.index(fullWord.startIndex, offsetBy: 6)])
        print(word1Ans)
        print(userGuess.text)
    }
    func checkAnswer() {
        if (userGuess.text == word1Ans) {
            print("hoooorayyyyy")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


    @IBAction func tryButton(_ sender: UIButton) {
        defineWords()
        checkAnswer()
    }
    
}
