//
//  ViewController.swift
//  Sound
//
//  Created by Yuuka Watanabe on 2020/08/30.
//  Copyright © 2020 Yuka Watanabe. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //ドラムを表示する箱を作る
    @IBOutlet var drumButton: UIButton!
    
    //ピアノ
    @IBOutlet var pianoButton: UIButton!
    
    //guitar
    @IBOutlet var guitarButton: UIButton!
    
    //ドラムのサウンドファイルを読み込んでプレイヤーを作る
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    
    //ピアノのサウンドファイルを読み込んでプレイヤーを作る
    let pianoSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "pianoSound")!.data)
    
    //guitar
     let guitarSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "guitarSound")!.data)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchDownDrumButton(){
        
        //ドラムがなってる画像に切り替える
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        
        //ドラムの音を巻き戻す
        drumSoundPlayer.currentTime = 0
        
        //ドラムの音を再生する
        drumSoundPlayer.play()
    }
    
    @IBAction func touchDownPianoButton(){
        
        //ピアノがなってる画像に切り替える
        pianoButton.setImage(UIImage(named: "pianoPlayingImage"), for: .normal)
        
        //ピアノの音を巻き戻す
        pianoSoundPlayer.currentTime = 0
        
        //ピアノの音を再生する
        pianoSoundPlayer.play()
        
    }
    
    @IBAction func touchDownGuitarButton(){
        
        //guitarがなってる画像に切り替える
        guitarButton.setImage(UIImage(named: "guitarPlayingImage"), for: .normal)
        
        //guitarの音を巻き戻す
        guitarSoundPlayer.currentTime = 0
        
        //ギターの音を再生する
        guitarSoundPlayer.play()
        
    }
    
    
    
    
    
    //タッチが終わると呼ばれる
    @IBAction func touchUpDrumButton(){
        
        //ドラムがなっていない画像に切り替える
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
        
    }
    
    //タッチが終わると呼ばれる
    @IBAction func touchUpPianoButton(){
        
        //ピアノがなっていない画像に切り替える
        pianoButton.setImage(UIImage(named: "pianoImage"), for: .normal)
        
    }
    
    //タッチが終わると呼ばれる
    @IBAction func touchUpGuitarButton(){
        
        //ピアノがなっていない画像に切り替える
        guitarButton.setImage(UIImage(named: "guitarImage"), for: .normal)
        
    }


}

