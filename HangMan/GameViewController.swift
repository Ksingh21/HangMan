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
    var wrongCount: Int = 0
    @IBOutlet var word1: UITextView!
    @IBOutlet var word2: UITextView!
    @IBOutlet var word3: UITextView!
    @IBOutlet var word4: UITextView!
    @IBOutlet var word5: UITextView!
    @IBOutlet var word6: UITextView!
    @IBOutlet var word7: UITextView!
    @IBOutlet weak var userGuess: UITextField!
    @IBOutlet weak var image: UIImageView!
    
    
    var imageArray = ["0", "1", "2", "3", "4", "5" , "6", "7", "8"]
    var words: [String] = ["abcdefg", "hijklmn","opqrstu"]

    
    
    func defineWords() {
        var randNum = arc4random_uniform(3)
        
        let fullWord = words[Int(randNum)]
        
        word1Ans = String(fullWord[fullWord.index(fullWord.startIndex, offsetBy: 0)])
        word2Ans = String(fullWord[fullWord.index(fullWord.startIndex, offsetBy: 1)])
        word3Ans = String(fullWord[fullWord.index(fullWord.startIndex, offsetBy: 2)])
        word4Ans = String(fullWord[fullWord.index(fullWord.startIndex, offsetBy: 3)])
        word5Ans = String(fullWord[fullWord.index(fullWord.startIndex, offsetBy: 4)])
        word6Ans = String(fullWord[fullWord.index(fullWord.startIndex, offsetBy: 5)])
        word7Ans = String(fullWord[fullWord.index(fullWord.startIndex, offsetBy: 6)])
        print(word1Ans)
        print(word2Ans)
        print(word3Ans)
        print(word4Ans)
        print(word5Ans)
        print(word6Ans)
        print(word7Ans)
        var userGuessChar = String(userGuess.text!)
        print(userGuessChar)
    }

    func checkAnswer() {
        if (word1Ans == userGuess.text) {
            word1.text = userGuess.text
        }
        else if (word2Ans == userGuess.text) {
            word2.text = userGuess.text
        }
        else if (word3Ans == userGuess.text) {
            word3.text = userGuess.text
        }
        else if (word4Ans == userGuess.text) {
            word4.text = userGuess.text
        }
        else if (word5Ans == userGuess.text) {
            word5.text = userGuess.text
        }
        else if (word6Ans == userGuess.text) {
            word6.text = userGuess.text
        }
        else if (word7Ans == userGuess.text) {
            word7.text = userGuess.text
        }
        else { wrongCount = wrongCount + 1}
        print(wrongCount)
    }
    func resetGame() {
        wrongCount = 0
        image.image = UIImage(named: String(wrongCount))
        word1.text = "_"
        word2.text = "_"
        word3.text = "_"
        word4.text = "_"
        word5.text = "_"
        word6.text = "_"
        word7.text = "_"
        userGuess.text = ""
        defineWords()
        
    }
    func endGame() {
        if (wrongCount == 8) {
            let alertController = UIAlertController(title: "Game Over", message:
                "You have Failed! Better Luck next Time", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Try Again", style: UIAlertActionStyle.default,handler: nil))
            self.present(alertController, animated: true, completion: nil)
            resetGame()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        defineWords()
        
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
        checkAnswer()
        image.image = UIImage(named: String(wrongCount))
        endGame()
    }
    
}
