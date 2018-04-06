//
//  ViewController.swift
//  quizappUte
//
//  Created by Pjm on 05/04/2018.
//  Copyright © 2018 Pjm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let questions = ["Choose Cat","Choose Dog","Choose Chicken","1+1 = ?"]
    let answers = [["Cat","Catch","Could"],["Dog","Duck","Did"],["Chicken","Chief","Chick"],["2","1","3"]]
    
    //Variables
    var finalscore:Int32 = 0
    var rightAnswers = 1
    var currentQuestion = 0
    
    //label
    
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var lb: UILabel!
    
    //Button
    
    @IBAction func action(_ sender: AnyObject) {
        if(sender.tag == Int(rightAnswers))
        {
            finalscore += 1
            score.text = "You get \(finalscore) right answer!"
        }
        if (currentQuestion != questions.count){
            newQuestion()
        }
        else
        {
            lb.text = "You Finish!!!!!!!!!"
        }
    }
    func newQuestion()
    {
        lb.text = questions[currentQuestion]
        var button:UIButton = UIButton()
        var x = 1
        for i in 1...3
        {
            button = view.viewWithTag(i) as! UIButton
            if ( i == rightAnswers)
            {
                button.setTitle(answers[currentQuestion][0], for: .normal)
            }
            else
            {
                button.setTitle(answers[currentQuestion][x], for: .normal)
                x = 2
            }
        }
        currentQuestion += 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newQuestion()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

