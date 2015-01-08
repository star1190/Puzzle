//
//  ViewController.swift
//  Puzzle
//
//  Created by sunli on 15/1/8.
//  Copyright (c) 2015年 sunli. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIActionSheetDelegate, UINavigationControllerDelegate, UIImagePickerControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startGame(sender: UIButton) {
        var actionSheet = UIActionSheet(title: nil, delegate: self, cancelButtonTitle:"取消",
            destructiveButtonTitle: nil, otherButtonTitles: "从相册选择", "拍照")
        actionSheet.showInView(self.view)
    }

    func actionSheet(actionSheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int) {
        switch (buttonIndex) {
        case 0:
            println("\(buttonIndex)")
        case 1:
            selectFromAlbum()
            println("\(buttonIndex)")
        case 2:
            println("\(buttonIndex)")
        default:
            println("\(buttonIndex)")
        }
    }
    
    func selectFromAlbum() {
        var imagePicker = UIImagePickerController()
        imagePicker.modalPresentationStyle = UIModalPresentationStyle.CurrentContext
        imagePicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        imagePicker.delegate = self
        imagePicker.allowsEditing = true
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
        var tempImage:UIImage = info[UIImagePickerControllerOriginalImage] as UIImage
        //imagePreview?.image = tempImage
        dismissViewControllerAnimated(true, nil)
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        dismissViewControllerAnimated(true, nil)
    }
}

