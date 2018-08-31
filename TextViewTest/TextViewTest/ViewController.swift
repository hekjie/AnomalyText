//
//  ViewController.swift
//  TextViewTest
//
//  Created by ConfuciusAit on 2018/8/17.
//  Copyright © 2018年 hkj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let container = NSTextContainer(size: CGSize(width: 200, height: 300))
        let path1 = UIBezierPath()
        path1.move(to: CGPoint(x: 1, y: 300))
        path1.addLine(to: CGPoint(x: 80, y: 300))
        path1.addLine(to: CGPoint(x: 0, y: 0))
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 200, y: 300))
        path2.addLine(to: CGPoint(x: 120, y: 300))
        path2.addLine(to: CGPoint(x: 200, y: 0))
        container.exclusionPaths = [path1,path2];
        container.lineBreakMode = .byCharWrapping
        
        let layoutManager = NSLayoutManager()
        layoutManager.addTextContainer(container);
        
        let storge = NSTextStorage(string: "七夕节是流传千年的中国传统节日，牛郎织女的美丽传说更是凝聚着自古以来国人对于“忠贞爱情”的美好向往，彰显了“家合万事兴”的优秀民族文化。在2006年和2008年，七夕节、牛郎织女传说相继被列入我国第一批、第二批国家级非物质文化遗产代表性项目名录，此后陕西西安、甘肃西和、浙江石塘等七个地区的七夕节风俗和牛郎织女传说也陆续入围国家级非遗扩展项目名录。年年七夕，今又七夕，2018年七夕，跟着“非遗”去旅行，感受中华大地最浪漫的节日七夕节是流传千年的中国传统节日，牛郎织女的美丽传说更是凝聚着自古以来国人对于“忠贞爱情”的美好向往，彰显了“家合万事兴”的优秀民族文化。在2006年和2008年，七夕节、牛郎织女传说相继被列入我国第一批、第二批国家级非物质文化遗产代表性项目名录，此后陕西西安、甘肃西和、浙江石塘等七个地区的七夕节风俗和牛郎织女传说也陆续入围国家级非遗扩展项目名录。年年七夕，今又七夕，2018年七夕，跟着“非遗”去旅行，感受中华大地最浪漫的节日七夕节是流传千年的中国传统节日，牛郎织女的美丽传说更是凝聚着自古以来国人对于“忠贞爱情”的美好向往，彰显了“家合万事兴”的优秀民族文化。")
        storge.addLayoutManager(layoutManager)
        let textView = UITextView(frame: CGRect(x: 50, y: 100, width: 200, height: 300), textContainer: container)
        textView.isSelectable = false
        textView.isEditable = false
        textView.backgroundColor = UIColor.cyan
        self.view.addSubview(textView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

