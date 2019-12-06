//
//  ViewController.swift
//  ShowListImage
//
//  Created by Luong Quang Huy on 12/6/19.
//  Copyright © 2019 Luong Quang Huy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.frame = CGRect(x: 0, y: 44, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        scrollView.backgroundColor = .white
        scrollView.isPagingEnabled = true // Phan trang
        return scrollView
    }()
    
    var images: [UIImage] = []
    var strings: [String] = ["earth" , "india" , "moutain" , "robot" , "tf2" , "tree" , "fire" , "beach"]
     var colors: [UIColor] = [UIColor.blue , UIColor.orange , UIColor.brown ,UIColor.lightGray , UIColor.purple , UIColor.green , UIColor.red, UIColor.link]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        images = [
            UIImage(named: "earth"),
            UIImage(named: "india"),
            UIImage(named: "moutain"),
            UIImage(named: "robot"),
            UIImage(named: "tf2"),
            UIImage(named: "tree"),
            UIImage(named: "fire"),
            UIImage(named: "beach"),
            
        ] as! [UIImage]
        view.addSubview(scrollView)
        setupImage(images , strings)
    }

    func setupImage(_ arrs: [UIImage] , _ arrString: [String]){
        // tinh kich thuoc man hinh
        
        let width = UIScreen.main.bounds.size.width
        let height = UIScreen.main.bounds.size.height
        // duyet mang de addSubView cac anh con vao scrollView
        for i in 0..<images.count{
            let imageView = UIImageView(frame: CGRect(x: width * CGFloat(i),
                                                      y: 0,
                                                      width: width ,
                                                      height: height - 20))
            let label = UILabel(frame: CGRect(x: width*CGFloat(i), y: height - 200, width: width, height: 50))
            label.text = arrString[i]
            label.textAlignment = .center
            label.textColor = colors[i]
            label.font = UIFont.systemFont(ofSize: 32)
            label.font = UIFont.italicSystemFont(ofSize: 32)
            imageView.contentMode = .scaleAspectFit
            imageView.image = arrs[i]
            // tinh kich thuoc contentSize cua scrollView
            scrollView.contentSize = CGSize(width: scrollView.frame.width * CGFloat(arrs.count), height: height )
            scrollView.addSubview(imageView)
            scrollView.addSubview(label)
            
        }
    }

}

