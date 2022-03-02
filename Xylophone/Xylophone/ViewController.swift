//
//  ViewController.swift
//  Xylophone
//
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(soundName : sender.currentTitle!)
        
       // makes the button opaque
        sender.alpha=(0.5)
        
        //Bring's sender's opacity back up to fully opaque.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
             sender.alpha = 1.0
         }
        
    }
    
    func playSound(soundName : String) {
        let url = Bundle.main.url(forResource: soundName , withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}

