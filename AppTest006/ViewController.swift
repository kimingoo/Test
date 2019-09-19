//
//  ViewController.swift
//  AppTest006
//
//  Created by min goo on 16/09/2019.
//  Copyright © 2019 min goo. All rights reserved.
//

import UIKit // 주석추가
// 주석추가2
class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    let MaxNum = 10
    let PickCount = 2
    let imagesize : CGFloat = 80
    var imageArray = [UIImage?] ()
    var imageFilName = [ "1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg",
                         "6.jpg", "7.jpg", "8.jpg", "9.jpg", "10.jpg" ]
    @IBOutlet var lblLabal: UILabel!
    @IBOutlet var PickView: UIPickerView!
    @IBOutlet var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0 ..< MaxNum {
            let image = UIImage(named : imageFilName[i])
            
            imageArray.append(image)
        }
        
        imageView.image = imageArray[0]
        lblLabal.text = imageFilName[0]
    }
    
    // PickerView 분할 해주는 역할 ex) 1개면 PickerView 1개, 2개면 PickerView 2개
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PickCount
    }
    
    // PickerView 목록 갯수 설정
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFilName.count
    }
    
    // PickerView 폭 설정
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return imagesize
    }
    
    // PickerView 목록을 이미지로 출력
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imageView = UIImageView(image: imageArray[row])
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 150)
        
        return imageView
    }
    
    // PickerView 에서 선택한 이름이 Label 에 출력
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblLabal.text = imageFilName[row]
        imageView.image = imageArray[row]
    }
    
    
}

