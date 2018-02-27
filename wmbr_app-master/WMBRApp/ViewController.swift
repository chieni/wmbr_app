//
//  ViewController.swift
//  WMBRApp
//
//  Created by Isabel Chien on 2/6/18.
//  Copyright © 2018 WMBR. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
//    var player = AVPlayer()
//    var asset = AVAsset()
    
    var player:AVPlayer?
    var playerItem:AVPlayerItem?
    
    // Create an outlet for the Play/Pause button to control the button...
    @IBOutlet weak var playButton: UIButton!
    // ...and an action for when the button is pressed.
    @IBAction func playVideo(_ sender: Any) {
        
        if player?.rate == 0
        {
            player!.play()
            playButton!.setImage(UIImage(named: "pauseButtonIcon"), for: UIControlState.normal)
            //playButton!.setTitle("Pause", for: UIControlState.normal)
        } else {
            player!.pause()
            playButton!.setImage(UIImage(named: "playButtonIcon"), for: UIControlState.normal)
            //playButton!.setTitle("Play", for: UIControlState.normal)
        }
        
//        // Create an AVPlayer, passing it the HTTP Live Streaming URL.
//        let player = AVPlayer(url: url)
//
//        // Create a new AVPlayerViewController and pass it a reference to the player.
//        let controller = AVPlayerViewController()
//        controller.player = player
//
//
//        // Modally present the player and call the player's play() method when complete.
//        present(controller, animated: false) {
//            player.play()
//        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // When the view loads, initialize the player.
        
        // Assign the WMBR stream URL.
        guard let url = URL(string:  "http://wmbr.org/WMBR_live_128.m3u") else {
            return
        }
        
        // Create an AVPlayerItem and pass it the stream URL.
        let playerItem:AVPlayerItem = AVPlayerItem(url: url)
        
        // Create an AVPlayer from the AVPlayerItem.
        player = AVPlayer(playerItem: playerItem)
        
        let playerLayer = AVPlayerLayer(player: player!)
        playerLayer.frame=CGRect(x:0, y:0, width:10, height:50)
        self.view.layer.addSublayer(playerLayer)
        
        player!.play()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

