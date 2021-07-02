//
//  ProfileController.swift
//  teamlease
//
//  Created by Pandoo on 02/07/21.
//

import Foundation
import UIKit
import youtube_ios_player_helper

class ProfileController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate, YTPlayerViewDelegate  {

    @IBOutlet weak var imageTake: UIImageView!
    @IBOutlet weak var playerView: YTPlayerView!

    var imagePicker: UIImagePickerController!

    override func viewDidLoad() {
        super.viewDidLoad()
        playerView.delegate = self
//        playerView.load(withVideoId: "3mfm_phG1os")
        playerView.load(withVideoId: "3mfm_phG1os", playerVars: ["playsinline" :1 ])

        let gesture = UITapGestureRecognizer(target: self, action: #selector(takePhoto))
        self.view.addGestureRecognizer(gesture)

    }
    
    func playerViewDidBecomeReady(_ playerView: YTPlayerView) {
        playerView.playVideo()
    }

    //MARK: - Take image
    @IBAction func takePhoto(_ sender: UIButton) {
        print("inside take photo")
//        imagePicker =  UIImagePickerController()
//        imagePicker.delegate = self
//        imagePicker.sourceType = .camera
//        present(imagePicker, animated: true, completion: nil)
        imagePicker =  UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .camera

        present(imagePicker, animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            imagePicker.dismiss(animated: true, completion: nil)
        imageTake.image = info[.originalImage] as? UIImage
        }

}




