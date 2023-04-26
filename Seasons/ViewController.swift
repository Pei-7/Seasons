//
//  ViewController.swift
//  Seasons
//
//  Created by 陳佩琪 on 2023/4/25.
//
//
//  ViewController.swift
//  barSwitchTest
//
//  Created by Peggy Tsai on 2021/2/24.
//
import UIKit
import SpriteKit

class ViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBar()
    }
    
    func setTabBar() {
        let firstVC = FirstVC()
        let secondVC = SecondVC()
        let thirdVC = ThirdVC()
        let fourthVC = FourthVC()
        
        firstVC.title = "spring"
        secondVC.title = "summer"
        thirdVC.title = "autumn"
        fourthVC.title = "winter"
        
        self.setViewControllers([firstVC,secondVC,thirdVC,fourthVC], animated: false)
        let imageList = ["cloud","sun.max","wind","snowflake"]
        let count = imageList.count - 1
        guard let items = self.tabBar.items else { return }
        
        for x in 0...count {
            items[x].image = UIImage(systemName: imageList[x])
        }
        
        self.tabBar.tintColor = .white
    }
}

class FirstVC: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()

        
            //漸變
            let gradientView = UIView(frame: CGRect(x: 0, y: 0, width: 390, height: 844))
            let gradientLayer = CAGradientLayer()
            gradientLayer.frame = gradientView.bounds
            gradientLayer.colors = [UIColor(red: 182/255, green: 96/255, blue: 115/255, alpha: 1).cgColor,UIColor.white.cgColor]
        gradientLayer.locations = [0.25,0.9]
            gradientView.layer.addSublayer(gradientLayer)
            view.addSubview(gradientView)
            
            //gif 動畫
            let waterColorImageView = UIImageView(frame: CGRect(x: -220, y: 220, width: 600, height: 305))
            let animatedWaterColorImage = UIImage.animatedImageNamed("waterColorScene-", duration: 10)
            waterColorImageView.image = animatedWaterColorImage
            view.addSubview(waterColorImageView)
            
            //mask 遮罩
            let calligraphyImageView = UIImageView(image: UIImage(named: "calligraphy-spring"))
            calligraphyImageView.frame = CGRect(x: 270, y: 0, width: 306, height: 323)
            waterColorImageView.mask = calligraphyImageView
                
            //CAEmitter 特效
            let skView = SKView(frame: view.frame)
            //加到 calligraphy 圖層之上
            view.addSubview(skView)
            //將 background 設置為透明
            skView.backgroundColor = UIColor.clear
            let scene = SKScene(size: skView.frame.size)
        scene.anchorPoint = CGPoint(x: 0.5, y: 1)
            ////將 background 設置為透明
            scene.backgroundColor = UIColor.clear
            let emitterNode = SKEmitterNode(fileNamed: "MyRainParticle")
            scene.addChild(emitterNode!)
            skView.presentScene(scene)
        
    }
}

class SecondVC: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradientView = UIView(frame: CGRect(x: 0, y: 0, width: 390, height: 844))
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = gradientView.bounds
        gradientLayer.colors = [UIColor(red: 95/255, green: 142/255, blue: 101/255, alpha: 1).cgColor,UIColor.white.cgColor]
        gradientLayer.locations = [0.25,0.9]
        gradientView.layer.addSublayer(gradientLayer)
        view.addSubview(gradientView)
        
        //gif 動畫
        let waterColorImageView = UIImageView(frame: CGRect(x: -42, y: 230, width: 560, height: 285))
        let animatedWaterColorImage = UIImage.animatedImageNamed("summergif-", duration: 10)
        waterColorImageView.image = animatedWaterColorImage
        view.addSubview(waterColorImageView)
        
        //mask 遮罩
        let calligraphyImageView = UIImageView(image: UIImage(named: "calligraphy-summer"))
        calligraphyImageView.frame = CGRect(x: 92, y: -10, width: 306, height: 323)
        waterColorImageView.mask = calligraphyImageView
        
        //CAEmitter 特效
        let skView = SKView(frame: view.frame)
        //加到 calligraphy 圖層之上
        view.addSubview(skView)
        //將 background 設置為透明
        skView.backgroundColor = UIColor.clear
        let scene = SKScene(size: skView.frame.size)
        scene.anchorPoint = CGPoint(x: 0, y: 1)
        ////將 background 設置為透明
        scene.backgroundColor = UIColor.clear
        let emitterNode = SKEmitterNode(fileNamed: "MySummerParticle")
        scene.addChild(emitterNode!)
        skView.presentScene(scene)


    }
}

class ThirdVC: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradientView = UIView(frame: CGRect(x: 0, y: 0, width: 390, height: 844))
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = gradientView.bounds
        gradientLayer.colors = [UIColor(red: 229/255, green: 139/255, blue: 66/255, alpha: 1).cgColor,UIColor.white.cgColor]
        gradientLayer.locations = [0.25,0.9]
        gradientView.layer.addSublayer(gradientLayer)
        view.addSubview(gradientView)
        
        //gif 動畫
        let waterColorImageView = UIImageView(frame: CGRect(x: -126, y: 258, width: 491, height: 250))
        let animatedWaterColorImage = UIImage.animatedImageNamed("autumngif-", duration: 10)
        waterColorImageView.image = animatedWaterColorImage
        view.addSubview(waterColorImageView)
        
        //mask 遮罩
        let calligraphyImageView = UIImageView(image: UIImage(named: "calligraphy-autumn"))
        calligraphyImageView.frame = CGRect(x: 173, y: -38, width: 306, height: 323)
        waterColorImageView.mask = calligraphyImageView
        
        //CAEmitter 特效
        let skView = SKView(frame: view.frame)
        //加到 calligraphy 圖層之上
        view.addSubview(skView)
        //將 background 設置為透明
        skView.backgroundColor = UIColor.clear
        let scene = SKScene(size: skView.frame.size)
        scene.anchorPoint = CGPoint(x: 1, y: 1)
        ////將 background 設置為透明
        scene.backgroundColor = UIColor.clear
        let emitterNode = SKEmitterNode(fileNamed: "MyAutumnParticle")
        scene.addChild(emitterNode!)
        skView.presentScene(scene)
    

    }
}


class FourthVC: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradientView = UIView(frame: CGRect(x: 0, y: 0, width: 390, height: 844))
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = gradientView.bounds
        gradientLayer.colors = [UIColor(red: 117/255, green: 132/255, blue: 143/255, alpha: 1).cgColor,UIColor.white.cgColor]
        gradientLayer.locations = [0.25,0.9]
        gradientView.layer.addSublayer(gradientLayer)
        view.addSubview(gradientView)
        
        //gif 動畫
        let waterColorImageView = UIImageView(frame: CGRect(x: -80, y: 230, width: 600, height: 305))
        let animatedWaterColorImage = UIImage.animatedImageNamed("wintergif-", duration: 10)
        waterColorImageView.image = animatedWaterColorImage
        view.addSubview(waterColorImageView)
        
        //mask 遮罩
        let calligraphyImageView = UIImageView(image: UIImage(named: "calligraphy-winter"))
        calligraphyImageView.frame = CGRect(x: 130, y: -10, width: 306, height: 323)
        waterColorImageView.mask = calligraphyImageView
        
        //CAEmitter 特效
        let skView = SKView(frame: view.frame)
        //加到 calligraphy 圖層之上
        view.addSubview(skView)
        //將 background 設置為透明
        skView.backgroundColor = UIColor.clear
        let scene = SKScene(size: skView.frame.size)
        scene.anchorPoint = CGPoint(x: 0.5, y: 1)
        ////將 background 設置為透明
        scene.backgroundColor = UIColor.clear
        let emitterNode = SKEmitterNode(fileNamed: "MySnowParticle")
        scene.addChild(emitterNode!)
        skView.presentScene(scene)
    

    }
}
