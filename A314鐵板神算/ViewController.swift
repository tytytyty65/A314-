//
//  ViewController.swift
//  A314鐵板神算
//
//  Created by 范博勝 on 2018/4/19.
//  Copyright © 2018年 范博勝. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    @IBOutlet weak var qna: UITextField!
    
    @IBOutlet weak var ans: UILabel!
    
    var word:String = ""
    
    @IBAction func sendout(_ sender: UIButton) {
        word = qna.text!
        
        if word.hasPrefix("生命"){
        ans.text = "種種證據顯示，就是巧克力"
            //發音的程式碼
            let speechUtterance = AVSpeechUtterance(string: "種種證據顯示，就是巧克力")
            speechUtterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
            let synth = AVSpeechSynthesizer()
            synth.speak(speechUtterance)
        }
        else if word.hasSuffix("有神嗎"){
        ans.text = "我真的沒有準備來回答這些問題"
            //發音的程式碼
            let speechUtterance = AVSpeechUtterance(string: "我真的沒有準備來回答這些問題")
            speechUtterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
            let synth = AVSpeechSynthesizer()
            synth.speak(speechUtterance)
        }
        else if word.contains("笑話"){
        ans.text = "我不會，我老是破梗"
            //發音的程式碼
            let speechUtterance = AVSpeechUtterance(string: "我不會，我老是破梗")
            speechUtterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
            let synth = AVSpeechSynthesizer()
            synth.speak(speechUtterance)
        }
        else{
        ans.text = "我不知道"
            //發音的程式碼
            let speechUtterance = AVSpeechUtterance(string: "我不知道")
            speechUtterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
            let synth = AVSpeechSynthesizer()
            synth.speak(speechUtterance)
        }
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

