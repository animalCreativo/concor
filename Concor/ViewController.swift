//
//  ViewController.swift
//  Concor
//
//  Created by Francisco Barrios Romo on 21-10-16.
//  Copyright © 2016 RentalApps. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

    @IBOutlet var fondo: UIImageView!
    
    @IBOutlet var slide01Texto1: UIImageView!
    @IBOutlet var slide01Texto2: UIImageView!
    @IBOutlet var slide01Cinta: UIImageView!
    @IBOutlet var slide01Item1: UIImageView!
    @IBOutlet var slide01Item2: UIImageView!
    @IBOutlet var slide01Item3: UIImageView!
    @IBOutlet var slide01Item4: UIImageView!
    
    @IBOutlet var slide02Corazon: UIImageView!
    
    @IBOutlet var slide02TextoCorazon: UILabel!
    
    @IBOutlet var slide03Texto: UIImageView!
    @IBOutlet var slide03Item12: UIImageView!
    @IBOutlet var slide03Item11: UIImageView!
    @IBOutlet var slide03Item21: UIImageView!
    @IBOutlet var slide03Item22: UIImageView!
    @IBOutlet var slide03Corazon: UIImageView!
    @IBOutlet var slide03PildoraRed: UIImageView!
    
    @IBOutlet var slide04Texto: UIImageView!

    @IBOutlet var slide05Img: UIImageView!
    @IBOutlet var slide05Flechas: UIImageView!
    @IBOutlet var slide05Texto: UIImageView!
    @IBOutlet var slide05Logo: UIImageView!
    
    @IBOutlet var slide05Tabletas: UIImageView!
    @IBOutlet var slide05Caja: UIImageView!
    
    @IBOutlet var pildoraRed01: UIImageView!
    @IBOutlet var pildoraRed02: UIImageView!
    @IBOutlet var pildoraRed03: UIImageView!
    @IBOutlet var pildoraRed04: UIImageView!
    @IBOutlet var pildoraRed05: UIImageView!
    
    @IBOutlet var heartYellow1: UIImageView!
    @IBOutlet var heartYellow2: UIImageView!
    @IBOutlet var heartYellow3: UIImageView!
    @IBOutlet var heartGrey1: UIImageView!
    @IBOutlet var heartGrey2: UIImageView!
    
    @IBOutlet var pildora01: UIImageView!
    @IBOutlet var pildora02: UIImageView!
    @IBOutlet var pildoraGrey01: UIImageView!
    @IBOutlet var pildoraGrey02: UIImageView!
    
    @IBOutlet var slide06Img: UIImageView!
    @IBOutlet var slide06Texto1: UIImageView!
    @IBOutlet var slide06Texto2: UIImageView!
    @IBOutlet var slide06Texto3: UIImageView!
    @IBOutlet var slide06Texto2a: UIImageView!
    @IBOutlet var btnSlide6: UIButton!
    
    @IBOutlet var slide06PopTexto: UIImageView!
    
    @IBOutlet var slide07Texto1: UIImageView!
    @IBOutlet var slide07Texto2: UIImageView!
    @IBOutlet var slide07Texto3: UIImageView!
    @IBOutlet var slide07Logo: UIImageView!
    @IBOutlet var slide07Corazon: UIImageView!
    @IBOutlet var btnSlide07: UIButton!
    
    @IBOutlet var slide07PopTexto: UIImageView!
 
    @IBOutlet var slide08Texto1: UIImageView!
    @IBOutlet var slide08Texto2: UIImageView!
    @IBOutlet var slide08Texto3: UIImageView!
    @IBOutlet var slide08Img: UIImageView!
    @IBOutlet var slide08Texto2a: UIImageView!

    @IBOutlet var slide08PopTexto: UIImageView!
    @IBOutlet var btnSlide08: UIButton!
  
    @IBOutlet var slide08Corazon: UIImageView!
    
    @IBOutlet var slide09Img2: UIImageView!
    @IBOutlet var slide09Img1: UIImageView!
    @IBOutlet var slide09Titulo: UIImageView!
    @IBOutlet var slide09Referencia1: UIImageView!
    @IBOutlet var slide09Referencia2: UIImageView!
    
    
    @IBOutlet var slide09Corazon: UIImageView!
    @IBOutlet var slide09Indicador1: UIImageView!
    @IBOutlet var slide09Indicador2: UIImageView!
    @IBOutlet var slide09Indicador3: UIImageView!
    @IBOutlet var slide09Indicador4: UIImageView!
    
    @IBOutlet var slide10Texto1: UIImageView!
    @IBOutlet var slide10Texto2: UIImageView!
    @IBOutlet var slide10Texto3: UIImageView!
    @IBOutlet var slide10Img: UIImageView!
    
    
    
    @IBOutlet var btnCorazon: UIButton!
    
    @IBOutlet var lblParrafo1: UILabel!

    @IBAction func btnSlide08(_ sender: AnyObject) {
        if (self.btnSlide08.frame.origin.x == 506){
            self.player!.fadeOut()
            self.timerCorazon8.invalidate()
            
            self.slide08Texto1.isHidden = false
            self.slide08Texto2.isHidden = true
            self.slide08Texto2a.isHidden = true
            self.slide08Texto3.isHidden = true
            self.slide08Img.isHidden = true
            self.slide08Corazon.isHidden = true
            
            self.btnSlide08.frame =  CGRect(x: 193, y: 336, width: 690, height: 140)
            
            self.slide08PopTexto.isHidden = true
            self.slide08PopTexto.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            
            delay(0.1){
                self.slide08PopTexto.isHidden = false
                self.slide08PopTexto.animationScaleEffect(view: self.slide08PopTexto, animationTime: 0.3)
            }
        }else{
            self.btnSlide08.isHidden = true
            self.slide8b()
        }
    }
    @IBAction func btnSlide07(_ sender: AnyObject) {
        if (self.btnSlide07.frame.origin.x == 193){
            self.player!.fadeOut()
            self.timerCorazon7.invalidate()
            
            self.slide07Texto1.isHidden = false
            self.slide07Texto2.isHidden = true
            self.slide07Texto3.isHidden = true
            self.slide07Corazon.isHidden = true
            self.fondo.image = UIImage(named: "slide07Fondo2")
            self.btnSlide07.frame =  CGRect(x: 234, y: 273, width: 492, height: 217)
           
            self.slide07PopTexto.isHidden = true
            self.slide07PopTexto.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            
            delay(0.1){
                self.slide07PopTexto.isHidden = false
                self.slide07PopTexto.animationScaleEffect(view: self.slide07PopTexto, animationTime: 0.3)
            }
        }else{
            self.btnSlide07.isHidden = true
            self.slide7b()
        }
    }
    
    @IBAction func btnSlide6(_ sender: AnyObject) {
        if (self.btnSlide6.frame.origin.x == 729){
            NSLog("po")
            self.slide06Texto2a.isHidden = true
            self.slide06Texto2.isHidden = true
            self.slide06Texto1.isHidden = true
            self.slide06Texto3.isHidden = true
            self.slide05Img.isHidden = true
            self.slide05Caja.isHidden = true
            self.slide05Tabletas.isHidden = true
          
            self.btnSlide6.frame =  CGRect(x: 304, y: 238, width: 384, height: 230)
            self.fondo.image = UIImage(named: "slide06Fondo2")
            self.slide06PopTexto.isHidden = true
            self.slide06PopTexto.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            delay(0.1){
                self.slide06PopTexto.isHidden = false
                self.slide06PopTexto.animationScaleEffect(view: self.slide06PopTexto, animationTime: 0.3)
            }
        }else{
        //self.btnSlide6.frame =  CGRect(x: 729, y: 291, width: 241, height: 150)
            self.btnSlide6.isHidden = true
            self.slide6b()
        NSLog("pl")
            
        }
    }
    
  /*  @IBAction func btnCaja(_ sender: AnyObject) {
        self.btnCaja.isHidden = true
        self.slide5b()
        UIView.animate(withDuration: 0.3, delay: 0.1, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            
            self.slide05Tabletas.center.x = 79
        }), completion: nil)
     
    }*/
    
    @IBAction func btnCorazon(_ sender: AnyObject) {
       
        self.player!.fadeOut()
        self.timerCorazon1.invalidate()
        self.slide2()
        self.btnCorazon.isHidden = true
    }
    
    var a=0
   
    var swipeRight = UISwipeGestureRecognizer()
    var swipeLeft = UISwipeGestureRecognizer()
    
    var posSlide03Item11 = CGPoint(x:0,y:0)
    var posSlide03Item21 = CGFloat(0.0)
    var posSlide04Texto = CGFloat(0.0)
    var posSlide05Img = CGFloat(0.0)
    var posSlide05Caja = CGFloat(0.0)
    var posSlide05Tabletas = CGFloat(0.0)
    var posSlide06Img = CGFloat(0.0)
    var posSlide06Texto2 = CGFloat(0.0)
    var posSlide06Texto2a = CGFloat(0.0)
    var posSlide07Texto1 = CGFloat(0.0)
    var posSlide08Texto1 = CGFloat(0.0)
    var posSlide08Img = CGFloat(0.0)
    var posSlide08Corazon = CGFloat(0.0)
    var posSlide09Img1 = CGFloat(0.0)
    var posSlide09Corazon = CGFloat(0.0)
    var posSlide09Img2 = CGFloat(0.0)
    var posSlide09Titulo = CGFloat(0.0)
    var posSlide10Texto2 = CGFloat(0.0)
    var posSlide10Img = CGFloat(0.0)
    var player: AVAudioPlayer?
    
    var posPildoraRed01 = CGPoint(x:0,y:0)
    var posPildoraRed02 = CGPoint(x:0,y:0)
    var posPildoraRed03 = CGPoint(x:0,y:0)
    var posPildoraRed04 = CGPoint(x:0,y:0)
    var posPildoraRed05 = CGPoint(x:0,y:0)
    
    var posHeartYellow1 = CGPoint(x:0,y:0)
    var posHeartYellow2 = CGPoint(x:0,y:0)
    var posHeartYellow3 = CGPoint(x:0,y:0)
    
    var posHeartGrey1 = CGPoint(x:0,y:0)
    var posHeartGrey2 = CGPoint(x:0,y:0)
    
    var posPildora01 = CGPoint(x:0,y:0)
    var posPildora02 = CGPoint(x:0,y:0)
    
    var posPildoraGrey01 = CGPoint(x:0,y:0)
    var posPildoraGrey02 = CGPoint(x:0,y:0)
    
    var timerCorazon1: Timer!
    var timerCorazon7: Timer!
    var timerCorazon8: Timer!
    var timerCorazon9: Timer!
    
    var myMutableString = NSMutableAttributedString()
    var string = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respond(_:)))
        swipeRight.direction = .right
        view.addGestureRecognizer(swipeRight)
        
        swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respond(_:)))
        swipeLeft.direction = .left
        view.addGestureRecognizer(swipeLeft)
 
        posSlide04Texto = self.slide04Texto.center.x
        posSlide05Img = self.slide05Img.center.x
        posSlide05Caja = self.slide05Caja.center.x
        posSlide05Tabletas = self.slide05Tabletas.center.x
        posSlide06Img = self.slide06Img.center.x
        posSlide06Texto2 = self.slide06Texto2.center.y
        posSlide06Texto2a = self.slide06Texto2a.center.y
        posSlide07Texto1 = self.slide07Texto1.center.x
        posSlide08Texto1 = self.slide08Texto1.center.x
        posSlide08Img = self.slide08Img.center.y
        posSlide08Corazon = self.slide08Corazon.center.y
        posSlide09Corazon = self.slide09Corazon.center.y
        posSlide09Img1 = self.slide09Img1.center.x
        posSlide09Img2 = self.slide09Img2.center.y
        posSlide09Titulo = self.slide09Titulo.center.x
        posSlide10Texto2 = self.slide10Texto2.center.x
        posSlide10Img = self.slide10Texto2.center.y
        posSlide03Item11 = self.slide03Item11.center
        posSlide03Item21 = self.slide03Item21.center.x
        
        posPildoraRed01 = self.pildoraRed01.center
        posPildoraRed02 = self.pildoraRed02.center
        posPildoraRed03 = self.pildoraRed03.center
        posPildoraRed04 = self.pildoraRed04.center
        posPildoraRed05 = self.pildoraRed05.center
        
        posHeartYellow1 = self.heartYellow1.center
        posHeartYellow2 = self.heartYellow2.center
        posHeartYellow3 = self.heartYellow3.center
        
        posHeartGrey1  = self.heartGrey1.center
        posHeartGrey2  = self.heartGrey2.center
        
        posPildora01  = self.pildora01.center
        posPildora02  = self.pildora02.center
        
        posPildoraGrey01 = self.pildoraGrey01.center
        posPildoraGrey02 = self.pildoraGrey02.center

        
    }
   
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
       self.slide1()

    }
    
    func playSound() {
        guard let url = Bundle.main.url(forResource: "heart", withExtension: "mp3") else {
            print("url not found")
            return
        }
        
        do {
            /// this codes for making this app ready to takeover the device audio
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            /// change fileTypeHint according to the type of your audio file (you can omit this)
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3)
            
            // no need for prepareToPlay because prepareToPlay is happen automatically when calling play()
            player!.play()
            player!.numberOfLoops = -1
        } catch let error as NSError {
            print("error: \(error.localizedDescription)")
        }
    }
    
    
    
    func slide1(){
      
        a=10
        NSLog("a:%d",self.a)
        self.slide01Item3.layer.removeAllAnimations()
        self.slide07Corazon.layer.removeAllAnimations()
        self.slide08Corazon.layer.removeAllAnimations()
        self.slide09Corazon.layer.removeAllAnimations()
        
        self.fondo.image = UIImage(named: "slide01Fondo")
        self.slide01Texto1.alpha = 1
        self.slide01Texto2.alpha = 1
        self.slide01Item1.alpha = 1
        self.slide01Item2.alpha = 1
        self.slide01Item3.alpha = 1
        self.slide01Item4.alpha = 1
     
        self.hiddenAll()
        
        self.slide01Texto1.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.slide01Texto2.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        
        self.slide01Item1.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.slide01Item2.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.slide01Item3.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.slide01Item4.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        
        delay(0.1){
            self.slide01Texto1.isHidden = false
            self.slide01Texto1.animationScaleEffect(view: self.slide01Texto1, animationTime: 0.3)
        }
        delay(0.3){
            self.slide01Texto2.isHidden = false
            self.slide01Texto2.animationScaleEffect(view: self.slide01Texto2, animationTime: 0.3)
        }
        delay(0.5){
            self.slide01Cinta.isHidden = false
            self.slide01Cinta.alpha = 0
            self.slide01Cinta.fadeIn(duration: 0.3)
        }
        
        delay(0.7){
            self.slide01Item1.isHidden = false
            self.slide01Item1.animationScaleEffect(view: self.slide01Item1, animationTime: 0.3)
        }
        delay(0.9){
            self.slide01Item2.isHidden = false
            self.slide01Item2.animationScaleEffect(view: self.slide01Item2, animationTime: 0.3)
        }
        delay(1.1){
            self.slide01Item3.isHidden = false
            self.slide01Item3.animationScaleEffect(view: self.slide01Item3, animationTime: 0.3)
        }
        delay(1.3){
            self.slide01Item4.isHidden = false
            self.slide01Item4.animationScaleEffect(view: self.slide01Item4, animationTime: 0.3)
        }
        
        
        delay(1.3){
            
           self.timerCorazon1 = Timer.scheduledTimer(timeInterval: 0.7, target: self, selector: #selector(self.runTimedSlide01Item3), userInfo: nil, repeats: true)
           // self.slide01Item3.animationScaleEffect21(view: self.slide01Item3)
            
            
            self.btnCorazon.isHidden = false
            self.playSound()
            /*self.slide01Item1.animantion = "pop"
            self.slide01Item1.curve = "easeIn"
            self.slide01Item1.duration=1.0
            self.slide01Item1.animated()
 */
        }
      
    }
    
    func slide1back(){
        a=11
        NSLog("a:%d",self.a)
       
        self.slide01Item3.layer.removeAllAnimations()
        self.slide07Corazon.layer.removeAllAnimations()
        self.slide08Corazon.layer.removeAllAnimations()
        self.slide09Corazon.layer.removeAllAnimations()
        
        
        self.fondo.image = UIImage(named: "slide01Fondo")
        self.slide01Texto1.alpha = 1
        self.slide01Texto2.alpha = 1
        self.slide01Item1.alpha = 1
        self.slide01Item2.alpha = 1
        self.slide01Item3.alpha = 1
        self.slide01Item4.alpha = 1
        
        self.hiddenAll()
        self.slide01Cinta.isHidden = false
        self.slide01Texto1.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.slide01Texto2.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        
        self.slide01Item1.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.slide01Item2.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.slide01Item3.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.slide01Item4.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        
        delay(0.1){
            self.slide01Texto1.isHidden = false
            self.slide01Texto1.animationScaleEffect(view: self.slide01Texto1, animationTime: 0.3)
        }
        delay(0.3){
            self.slide01Texto2.isHidden = false
            self.slide01Texto2.animationScaleEffect(view: self.slide01Texto2, animationTime: 0.3)
        }
        delay(0.5){
            self.slide01Item1.isHidden = false
            self.slide01Item1.animationScaleEffect(view: self.slide01Item1, animationTime: 0.3)
        }
        delay(0.7){
            self.slide01Item2.isHidden = false
            self.slide01Item2.animationScaleEffect(view: self.slide01Item2, animationTime: 0.3)
        }
        delay(0.9){
            self.slide01Item3.isHidden = false
            self.slide01Item3.animationScaleEffect(view: self.slide01Item3, animationTime: 0.3)
        }
        delay(1.2){
            self.slide01Item4.isHidden = false
            self.slide01Item4.animationScaleEffect(view: self.slide01Item4, animationTime: 0.3)
        }
   
        delay(1.3){
            self.timerCorazon1 = Timer.scheduledTimer(timeInterval: 0.7, target: self, selector: #selector(self.runTimedSlide01Item3), userInfo: nil, repeats: true)
        
            self.playSound()
            /*self.slide01Item1.animantion = "pop"
             self.slide01Item1.curve = "easeIn"
             self.slide01Item1.duration=1.0
             self.slide01Item1.animated()
             */
        }
        delay(1.5){
           
            self.btnCorazon.isHidden = false
           
        }
        
    }

    func slide2(){
        self.view.removeGestureRecognizer(swipeLeft)
        self.view.removeGestureRecognizer(swipeRight)
        
        a=20
        NSLog("a:%d",self.a)
        self.slide01Item3.layer.removeAllAnimations()
        self.slide07Corazon.layer.removeAllAnimations()
        self.slide08Corazon.layer.removeAllAnimations()
        self.slide09Corazon.layer.removeAllAnimations()
     
        
        self.fondo.image = UIImage(named: "slide01Fondo")
        
        self.hiddenAll()
        self.slide01Cinta.isHidden = false
        self.slide02Corazon.alpha = 1
        self.slide02Corazon.isHidden = true
        self.slide02TextoCorazon.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        delay(0.1){
            //self.slide01Cinta.alpha = 0
            //self.slide01Cinta.fadeOut(duration: 0.3)
            self.slide01Texto1.alpha = 0
            self.slide01Texto1.fadeOut(duration: 0.3)
            self.slide01Texto2.alpha = 0
            self.slide01Texto2.fadeOut(duration: 0.3)
            self.slide01Item1.alpha = 0
            self.slide01Item1.fadeOut(duration: 0.3)
            self.slide01Item2.alpha = 0
            self.slide01Item2.fadeOut(duration: 0.3)
            self.slide01Item3.alpha = 0
            self.slide01Item3.fadeOut(duration: 0.3)
            self.slide01Item4.alpha = 0
            self.slide01Item4.fadeOut(duration: 0.3)
        }
        //self.slide02Corazon.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.string = "LA FORMA DE LOS\nCOMPRIMIDOS\nCONCOR, HABLA\nPOR SÍ\nSOLA"
        
        self.myMutableString = NSMutableAttributedString(string: self.string, attributes: [NSFontAttributeName:UIFont(name: "AzoSans-Regular", size: 48.0)!])
        self.myMutableString.addAttribute(NSForegroundColorAttributeName, value: UIColor(red:0.32, green:0.19, blue:0.51, alpha:1.0), range: NSRange(location:0,length:self.string.characters.count))
        self.myMutableString.addAttribute(NSFontAttributeName, value: UIFont(name: "AzoSans-Black", size: 48.0)!, range: NSRange(location:15,length:19))

       
        self.slide02TextoCorazon.numberOfLines = 5;
        self.slide02TextoCorazon.attributedText  = self.myMutableString
        delay(0.4){
            
            //self.slide02Corazon.animationScaleEffect(view: self.slide02Corazon, animationTime: 0.5)
            //self.slide02Corazon.frame.origin.x = 300
            self.slide02TextoCorazon.isHidden = false
            // self.slide02TextoCorazon.frame.origin.x = 300
           // self.slide02Corazon.animationScaleEffect(view: self.slide02Corazon, animationTime: 0.5)
        }
        
        UIView.animate(withDuration: 0.25, delay: 1.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide02TextoCorazon.transform = CGAffineTransform(scaleX: 0.8, y: 1.2)
            self.slide02TextoCorazon.center.y = self.slide02TextoCorazon.center.y - 10
        }), completion: nil)
        UIView.animate(withDuration: 0.25, delay: 1.25, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide02TextoCorazon.transform = CGAffineTransform(scaleX: 1.5, y: 1.2)
            self.slide02TextoCorazon.center.y = self.slide02TextoCorazon.center.y + 10
            self.slide02TextoCorazon.center.x = self.slide02TextoCorazon.center.x - 10
            
        }), completion: nil)
        UIView.animate(withDuration: 0.25, delay: 1.5, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide02TextoCorazon.transform = CGAffineTransform(scaleX: 1.1, y: 1.2)
            self.slide02TextoCorazon.center.x = self.slide02TextoCorazon.center.x + 10
            self.slide02TextoCorazon.center.y = self.slide02TextoCorazon.center.y - 10
            
        }), completion: nil)
        UIView.animate(withDuration: 0.25, delay: 1.75, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide02TextoCorazon.transform = CGAffineTransform(scaleX: 1.1, y: 1.8)
            self.slide02TextoCorazon.center.y = self.slide02TextoCorazon.center.y + 10
            
            
        }), completion: nil)
        UIView.animate(withDuration: 0.25, delay: 2.0, usingSpringWithDamping: 0.7, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide02TextoCorazon.transform = CGAffineTransform(scaleX: 1.1, y: 0.8)
            self.slide02TextoCorazon.center.y = self.slide02TextoCorazon.center.y + 10
            
            
        }), completion: nil)
        
        
        /*UIView.animate(withDuration: 0.5, delay: 1.9, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide02TextoCorazon.transform = CGAffineTransform(scaleX: 1.1, y: 1.3)
        }), completion: nil)*/
        delay(2.06){
            self.slide02Corazon.isHidden = false
            self.slide02TextoCorazon.isHidden = true
        }
        delay(2.5){
           self.view.addGestureRecognizer(self.swipeLeft)
           self.view.addGestureRecognizer(self.swipeRight)
            
            NSLog("cabaloo")
        }
 
    }
    func slide2back(){
        a=21
        NSLog("a:%d",self.a)
        self.slide01Item3.layer.removeAllAnimations()
        self.slide07Corazon.layer.removeAllAnimations()
        self.slide08Corazon.layer.removeAllAnimations()
        self.slide09Corazon.layer.removeAllAnimations()
        view.removeGestureRecognizer(swipeLeft)
        view.removeGestureRecognizer(swipeRight)
        
        self.fondo.image = UIImage(named: "slide01Fondo")
        
        self.hiddenAll()
        
        self.slide02Corazon.alpha = 1
        self.slide02Corazon.isHidden = true
        
        delay(0.1){
            self.slide01Cinta.isHidden = false
            self.slide01Cinta.alpha = 0
            self.slide01Cinta.fadeIn(duration: 0.3)
    
        }
        self.slide02Corazon.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        delay(0.4){
            self.slide02Corazon.isHidden = false
            self.slide02Corazon.animationScaleEffect(view: self.slide02Corazon, animationTime: 0.5)
        }
        
        
        delay(1.5){
            
            self.view.addGestureRecognizer(self.swipeLeft)
            self.view.addGestureRecognizer(self.swipeRight)
        }
        
        
    }
    func slide3(){
        self.fondo.frame.origin.x = 0
        self.fondo.frame.origin.y = 0
        a=30
        NSLog("a:%d",self.a)
        view.removeGestureRecognizer(swipeLeft)
        view.removeGestureRecognizer(swipeRight)
        
        self.fondo.image = UIImage(named: "slide03Fondo")
        
        self.hiddenAll()
       // self.slide03PildoraRed.transform = self.slide03PildoraRed.transform.rotated(by: CGFloat(-M_PI/8))
        self.slide03PildoraRed.isHidden = false
        self.slide03Corazon.isHidden = false
        
        self.slide03Texto.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        
        
        delay(0.1){
            self.slide03Texto.isHidden = false
            self.slide03Texto.animationScaleEffect(view: self.slide03Texto, animationTime: 0.3)
        }
   
        self.slide03Item11.frame.origin.x=self.posSlide03Item11.x-400
        self.slide03Item11.frame.origin.y=self.posSlide03Item11.y-90
        self.slide03Item12.frame.origin.x=self.posSlide03Item11.x-380
        self.slide03Item12.frame.origin.y=self.posSlide03Item11.y-20
        UIView.animate(withDuration: 1.4, delay: 0.3, usingSpringWithDamping: 1.0, initialSpringVelocity: 0.2, options:[] , animations: ({
            self.slide03Item11.isHidden = false
            self.slide03Item12.isHidden = false
            self.slide03Item11.center.x = self.posSlide03Item11.x-150
            self.slide03Item12.center.x = self.posSlide03Item11.x-150
            self.slide03Item11.transform = self.slide03Item11.transform.rotated(by: CGFloat(M_PI))
        }), completion: nil)
        
        self.slide03Item21.frame.origin.x=self.posSlide03Item21+400
        self.slide03Item22.frame.origin.x=self.posSlide03Item21+400
        UIView.animate(withDuration: 1.5, delay: 1.0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.2, options:[] , animations: ({
            self.slide03Item21.isHidden = false
            self.slide03Item22.isHidden = false
            self.slide03Item21.center.x = self.posSlide03Item21-50
            self.slide03Item22.center.x = self.posSlide03Item21-50
            self.slide03Item21.transform = self.slide03Item21.transform.rotated(by: -CGFloat(M_PI))
            
            }), completion: nil)
        
        delay(2.9){
           
            self.view.addGestureRecognizer(self.swipeLeft)
            self.view.addGestureRecognizer(self.swipeRight)
            
        }
        
        
    }
    
    func slide4(){
        a=40
        NSLog("a:%d",self.a)
        view.removeGestureRecognizer(swipeLeft)
        view.removeGestureRecognizer(swipeRight)
        
        self.fondo.image = UIImage(named: "slide04Fondo")
        
        self.fondo.frame.origin.x = -150
        self.fondo.frame.origin.y = 200
       
        self.pildoraRed01.center.x = -10
        self.pildoraRed01.center.y = 130
        self.heartYellow1.center.x = posHeartYellow1.x - 35
        self.heartYellow1.center.y = posHeartYellow1.y + 35
        self.pildora01.center.x = posPildora01.x - 25
        self.pildora01.center.y = posPildora01.y + 25
        self.heartYellow2.center.x = posHeartYellow2.x + 8
        self.heartYellow2.center.y = posHeartYellow2.y + 25
        self.pildoraRed02.center.x = posPildoraRed02.x - 10
        self.pildoraRed02.center.y = posPildoraRed02.y + 65
        self.pildoraRed03.center.x = posPildoraRed03.x - 120
        self.pildoraRed03.center.y = posPildoraRed03.y + 70
        self.pildoraRed04.center.x = posPildoraRed04.x - 34
        self.pildoraRed04.center.y = posPildoraRed04.y + 28
        
        self.heartGrey1.center.x = posHeartGrey1.x - 35
        self.heartGrey1.center.y = posHeartGrey1.y + 25
        
        self.heartYellow3.center.x = posHeartYellow3.x - 25
        self.heartYellow3.center.y = posHeartYellow3.y - 5
        
        self.pildora02.center.x = posPildora02.x - 20
        self.pildora02.center.y = posPildora02.y + 20
        
        self.heartGrey2.center.x = posHeartGrey2.x - 15
        self.heartGrey2.center.y = posHeartGrey2.y + 15
        
        self.pildoraGrey01.center.x = posPildoraGrey01.x - 25
        self.pildoraGrey01.center.y = posPildoraGrey01.y - 25
        
        self.pildoraRed05.center.x = posPildoraRed05.x - 10
        self.pildoraRed05.center.y = posPildoraRed05.y + 10
        
        self.pildoraGrey02.center.x = posPildoraGrey02.x - 20
        self.pildoraGrey02.center.y = posPildoraGrey02.y - 5
        
        self.hiddenAll()
        
        self.pildoraGrey01.isHidden = false
        self.pildoraGrey02.isHidden = false
        self.pildora01.isHidden = false
        self.pildora02.isHidden = false
        self.heartGrey1.isHidden = false
        self.heartGrey2.isHidden = false
        self.heartYellow1.isHidden = false
        self.heartYellow2.isHidden = false
        self.heartYellow3.isHidden = false
        self.pildoraRed01.isHidden = false
        self.pildoraRed02.isHidden = false
        self.pildoraRed03.isHidden = false
        self.pildoraRed04.isHidden = false
        self.pildoraRed05.isHidden = false
        
        self.slide04Texto.frame.origin.x=self.view.frame.width+3000
        
        UIView.animate(withDuration: 0.8, delay: 1.8, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide04Texto.isHidden = false
            self.slide04Texto.center.x = self.posSlide04Texto
        }), completion: nil)

        UIView.animate(withDuration: 1.0, delay: 0.1, usingSpringWithDamping: 0.7, initialSpringVelocity: 1, options: [], animations: ({
            self.fondo.frame.origin.x = -10
            self.fondo.frame.origin.y = 10
        }), completion: nil)
        
        UIView.animate(withDuration: 0.4, delay: 0.7, usingSpringWithDamping: 0.8, initialSpringVelocity: 1, options: [], animations: ({
            self.pildoraRed01.center = self.posPildoraRed01
            self.pildoraRed02.center = self.posPildoraRed02
            self.pildoraRed03.center = self.posPildoraRed03
            self.pildoraRed04.center = self.posPildoraRed04
        }), completion: nil)
        
        UIView.animate(withDuration: 0.5, delay: 0.7, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: [], animations: ({
            self.pildora01.center = self.posPildora01

        }), completion: nil)
        UIView.animate(withDuration: 0.6, delay: 0.7, usingSpringWithDamping: 0.8, initialSpringVelocity: 1, options: [], animations: ({
            self.heartYellow1.center = self.posHeartYellow1
            self.heartYellow2.center = self.posHeartYellow2
            
        }), completion: nil)
        
        UIView.animate(withDuration: 0.6, delay: 1.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 1, options: [], animations: ({
            self.heartGrey1.center = self.posHeartGrey1
            
        }), completion: nil)
        
        UIView.animate(withDuration: 0.6, delay: 0.9, usingSpringWithDamping: 0.7, initialSpringVelocity: 1, options: [], animations: ({
            self.heartYellow3.center = self.posHeartYellow3
            
        }), completion: nil)
        UIView.animate(withDuration: 0.6, delay: 1.2, usingSpringWithDamping: 0.8, initialSpringVelocity: 1, options: [], animations: ({
               self.pildora02.center = self.posPildora02
        }), completion: nil)
        
        UIView.animate(withDuration: 0.3, delay: 1.5, usingSpringWithDamping: 0.8, initialSpringVelocity: 1, options: [], animations: ({
            self.pildoraGrey01.center = self.posPildoraGrey01
        }), completion: nil)
        
        UIView.animate(withDuration: 0.4, delay: 1.5, usingSpringWithDamping: 0.8, initialSpringVelocity: 1, options: [], animations: ({
              self.heartGrey2.center = self.posHeartGrey2
        }), completion: nil)
        
        UIView.animate(withDuration: 0.3, delay: 1.7, usingSpringWithDamping: 0.8, initialSpringVelocity: 1, options: [], animations: ({
            self.pildoraRed05.center = self.posPildoraRed05
        }), completion: nil)
        
        UIView.animate(withDuration: 0.2, delay: 1.9, usingSpringWithDamping: 0.8, initialSpringVelocity: 1, options: [], animations: ({
            self.pildoraGrey02.center = self.posPildoraGrey02
        }), completion: nil)
        
        delay(2.8){
            self.view.addGestureRecognizer(self.swipeLeft)
            self.view.addGestureRecognizer(self.swipeRight)
            
        }
        
        
    }
    
    func slide5(){
        if (self.timerCorazon7 != nil){
            self.timerCorazon7.invalidate()
            self.player!.fadeOut()
        }
        self.fondo.frame.origin.x = 0
        self.fondo.frame.origin.y = 0
        self.slide05Flechas.alpha = 1.0
        self.slide05Texto.alpha = 1.0
        a=50
        NSLog("a:%d",self.a)
        view.removeGestureRecognizer(swipeLeft)
        view.removeGestureRecognizer(swipeRight)
        self.slide05Tabletas.isUserInteractionEnabled = false
        self.fondo.image = UIImage(named: "slide05Fondo")
        
        self.hiddenAll()
        
        self.slide05Caja.frame.origin.x=self.view.frame.width-3000
        self.slide05Tabletas.frame.origin.x=self.view.frame.width-3000
        self.slide05Flechas.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.slide05Texto.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        
        
        UIView.animate(withDuration: 0.3, delay: 0.1, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide05Caja.isHidden = false
            self.slide05Caja.center.x = self.posSlide05Caja
        }), completion: nil)
        
        UIView.animate(withDuration: 0.5, delay: 0.4, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide05Tabletas.isHidden = false
            self.slide05Tabletas.center.x = self.posSlide05Tabletas
        }), completion: nil)
        
        delay(0.7){
            self.slide05Flechas.isHidden = false
            self.slide05Flechas.animationScaleEffect(view: self.slide05Flechas, animationTime: 0.3)
        }
        delay(0.9){
            self.slide05Texto.isHidden = false
            self.slide05Texto.animationScaleEffect(view: self.slide05Texto, animationTime: 0.3)
        }
        delay(1.2){
            self.slide05Logo.isHidden = false
            self.slide05Logo.alpha = 0
            self.slide05Logo.fadeIn(duration: 0.3)
           
        }
        delay(1.8){
            self.slide05Tabletas.isUserInteractionEnabled = true
            self.view.addGestureRecognizer(self.swipeLeft)
            self.view.addGestureRecognizer(self.swipeRight)
        }
  
    }
    func slide5b(){
        if (self.timerCorazon7 != nil){
            self.timerCorazon7.invalidate()
            self.player!.fadeOut()
        }
        self.fondo.frame.origin.x = 0
        self.fondo.frame.origin.y = 0
        a=51
        NSLog("a:%d",self.a)
        view.removeGestureRecognizer(swipeLeft)
        view.removeGestureRecognizer(swipeRight)
        self.slide05Tabletas.isUserInteractionEnabled = false
        self.fondo.image = UIImage(named: "slide05Fondo")
        
        self.hiddenAll()
        //self.slide05Tabletas.isUserInteractionEnabled = true
        self.slide06Texto1.isHidden = true
        self.slide06Texto2.isHidden = true
        self.slide06Texto2a.isHidden = true
        self.slide06Texto3.isHidden = true
        self.slide05Texto.isHidden = true
        self.slide05Flechas.isHidden = true
        self.slide05Flechas.alpha = 1.0
        self.slide05Texto.alpha = 1.0
        self.slide05Flechas.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.slide05Texto.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.slide05Logo.isHidden = false
        self.slide05Caja.isHidden = false
        self.slide05Tabletas.isHidden = false
        delay(0.1){
            self.slide05Flechas.isHidden = false
            
            self.slide05Flechas.animationScaleEffect(view: self.slide05Flechas, animationTime: 0.3)
        }
       
        delay(0.3){
            self.slide05Texto.isHidden = false
            self.slide05Texto.animationScaleEffect(view: self.slide05Texto, animationTime: 0.3)
            
        }

        delay(0.9){
            self.slide05Tabletas.isUserInteractionEnabled = true
            self.view.addGestureRecognizer(self.swipeLeft)
            self.view.addGestureRecognizer(self.swipeRight)
        }
  
    }

    
    func slide6(){
        
        if (self.timerCorazon7 != nil){
            self.timerCorazon7.invalidate()
            self.player!.fadeOut()
        }
        self.fondo.frame.origin.x = 0
        self.fondo.frame.origin.y = 0
        self.fondo.image = UIImage(named: "slide05Fondo")
        view.removeGestureRecognizer(swipeLeft)
        view.removeGestureRecognizer(swipeRight)
        self.slide05Tabletas.isUserInteractionEnabled = false
        self.hiddenAll()
        self.slide05Caja.isHidden = false
        self.slide05Tabletas.isHidden = false
        self.slide05Logo.isHidden = false
        a=60
        view.removeGestureRecognizer(swipeLeft)
        view.removeGestureRecognizer(swipeRight)
        NSLog("a:%d",self.a)
        self.slide05Texto.isHidden = true
        self.slide05Flechas.isHidden = true
        self.slide06Texto1.isHidden = true
        self.slide06Texto2.isHidden = true
        self.slide06Texto3.isHidden = true
        
        self.btnSlide6.frame =  CGRect(x: 729, y: 291, width: 241, height: 240)
        
        self.slide06Texto2.frame.origin.y = self.view.frame.height-3000
        self.slide06Texto2a.frame.origin.y = self.view.frame.height-3000
        self.slide06Texto1.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.slide06Texto2a.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        delay(0.1){
            self.slide06Texto1.isHidden = false
            self.slide06Texto1.animationScaleEffect(view: self.slide06Texto1, animationTime: 0.3)
        }
  
        UIView.animate(withDuration: 0.3, delay: 0.5, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide06Texto2.isHidden = false
            self.slide06Texto2.center.y = self.posSlide06Texto2
            self.slide06Texto2a.isHidden = false
            self.slide06Texto2a.center.y = self.posSlide06Texto2a
        }), completion: nil)
        
        
        delay(0.7){
            self.slide06Texto3.isHidden = false
            self.slide06Texto3.alpha = 0
            self.slide06Texto3.fadeIn(duration: 0.3)
            
        }

        delay(1.2){
            self.btnSlide6.isHidden = false
            self.view.addGestureRecognizer(self.swipeLeft)
            self.view.addGestureRecognizer(self.swipeRight)
            self.slide05Tabletas.isUserInteractionEnabled = true
            
        }

 
    }
    func slide6b(){
        
        if (self.timerCorazon7 != nil){
            self.timerCorazon7.invalidate()
            self.player!.fadeOut()
        }
        self.fondo.frame.origin.x = 0
        self.fondo.frame.origin.y = 0
        self.fondo.image = UIImage(named: "slide06Fondo2")
        view.removeGestureRecognizer(swipeLeft)
        view.removeGestureRecognizer(swipeRight)
        self.slide05Tabletas.isUserInteractionEnabled = false
        self.hiddenAll()
        self.slide05Logo.isHidden = false
 
        a=60
        view.removeGestureRecognizer(swipeLeft)
        view.removeGestureRecognizer(swipeRight)
        NSLog("a:%d",self.a)
        self.slide05Texto.isHidden = true
        self.slide05Flechas.isHidden = true
        self.slide06Texto1.isHidden = true
        self.slide06Texto2.isHidden = true
        self.slide06Texto3.isHidden = true
        
        self.btnSlide6.frame =  CGRect(x: 729, y: 291, width: 241, height: 240)
        
        self.slide06Texto2.frame.origin.y = self.view.frame.height-3000
        self.slide06Texto2a.frame.origin.y = self.view.frame.height-3000
        self.slide06Texto1.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.slide06Texto2a.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        delay(0.2){
            self.slide05Caja.isHidden = false
            self.slide05Tabletas.isHidden = false
            self.slide05Tabletas.alpha = 0
            self.slide05Tabletas.fadeIn(duration: 0.3)
            self.slide05Caja.alpha = 0
            self.slide05Caja.fadeIn(duration: 0.3)
        }
        delay(0.1){
            self.slide06Texto1.isHidden = false
            self.slide06Texto1.animationScaleEffect(view: self.slide06Texto1, animationTime: 0.3)
        }
        
        
        UIView.animate(withDuration: 0.3, delay: 0.5, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide06Texto2.isHidden = false
            self.slide06Texto2.center.y = self.posSlide06Texto2
            self.slide06Texto2a.isHidden = false
            self.slide06Texto2a.center.y = self.posSlide06Texto2a
        }), completion: nil)
        
        
        delay(0.7){
            self.slide06Texto3.isHidden = false
            self.slide06Texto3.alpha = 0
            self.slide06Texto3.fadeIn(duration: 0.3)
            
        }
        
        delay(1.2){
            self.btnSlide6.isHidden = false
            self.view.addGestureRecognizer(self.swipeLeft)
            self.view.addGestureRecognizer(self.swipeRight)
            self.slide05Tabletas.isUserInteractionEnabled = true
        }
        
        
    }
    func slide7(){
        
        if (self.timerCorazon8 != nil){
            self.timerCorazon8.invalidate()
            self.player!.fadeOut()
        }
        a=70
        NSLog("a:%d",self.a)
        self.slide01Item3.layer.removeAllAnimations()
        self.slide07Corazon.layer.removeAllAnimations()
        self.slide08Corazon.layer.removeAllAnimations()
        self.slide09Corazon.layer.removeAllAnimations()
        view.removeGestureRecognizer(swipeLeft)
        view.removeGestureRecognizer(swipeRight)
        
        self.fondo.image = UIImage(named: "slide07Fondo")
        
        self.hiddenAll()
        
        self.slide07Corazon.isHidden = false
        self.btnSlide07.frame =  CGRect(x: 193, y: 249, width: 290, height: 170)
        self.slide07Texto1.frame.origin.x=self.view.frame.width-3000
        
        self.slide07Texto2.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.slide07Texto3.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        
        UIView.animate(withDuration: 0.3, delay: 0.1, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide07Texto1.isHidden = false
            self.slide07Texto1.center.x = self.posSlide07Texto1
        }), completion: nil)
        
        delay(0.3){
            self.slide07Texto2.isHidden = false
            self.slide07Texto2.animationScaleEffect(view: self.slide07Texto2, animationTime: 0.3)
        }
        delay(0.5){
            self.slide07Texto3.isHidden = false
            self.slide07Texto3.animationScaleEffect(view: self.slide07Texto3, animationTime: 0.3)
        }
    
        delay(0.7){
            self.slide07Logo.isHidden = false
            self.slide07Logo.alpha = 0
            self.slide07Logo.fadeIn(duration: 0.3)
            
            self.timerCorazon7 = Timer.scheduledTimer(timeInterval: 0.7, target: self, selector: #selector(self.runTimedSlide07Corazon), userInfo: nil, repeats: true)
            self.playSound()
        }
    
        delay(1.7){
            self.btnSlide07.isHidden = false
            self.view.addGestureRecognizer(self.swipeLeft)
            self.view.addGestureRecognizer(self.swipeRight)
            
        }

    }
    func slide7b(){
        
        if (self.timerCorazon8 != nil){
            self.timerCorazon8.invalidate()
            self.player!.fadeOut()
        }
        a=70
        NSLog("a:%d",self.a)
        self.slide01Item3.layer.removeAllAnimations()
        self.slide07Corazon.layer.removeAllAnimations()
        self.slide08Corazon.layer.removeAllAnimations()
        self.slide09Corazon.layer.removeAllAnimations()
        view.removeGestureRecognizer(swipeLeft)
        view.removeGestureRecognizer(swipeRight)
        
        self.fondo.image = UIImage(named: "slide07Fondo")
        
        self.hiddenAll()
        
        self.slide07Corazon.isHidden = false
        self.btnSlide07.frame =  CGRect(x: 193, y: 249, width: 290, height: 170)
        self.slide07Logo.isHidden = false
        self.slide07Texto1.isHidden = false
        
        self.slide07Texto2.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.slide07Texto3.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        
        
        delay(0.3){
            self.slide07Texto2.isHidden = false
            self.slide07Texto2.animationScaleEffect(view: self.slide07Texto2, animationTime: 0.3)
        }
        delay(0.5){
            self.slide07Texto3.isHidden = false
            self.slide07Texto3.animationScaleEffect(view: self.slide07Texto3, animationTime: 0.3)
        }
        
        delay(0.7){
            self.timerCorazon7 = Timer.scheduledTimer(timeInterval: 0.7, target: self, selector: #selector(self.runTimedSlide07Corazon), userInfo: nil, repeats: true)
            self.playSound()
        }
        
        delay(1.7){
            self.btnSlide07.isHidden = false
            self.view.addGestureRecognizer(self.swipeLeft)
            self.view.addGestureRecognizer(self.swipeRight)
            
        }
        
    }
    func slide8(){
   
        if (self.timerCorazon9 != nil){
            self.timerCorazon9.invalidate()
            self.player!.fadeOut()
        }
        if (self.timerCorazon7 != nil){
            self.timerCorazon7.invalidate()
            self.player!.fadeOut()
        }
        a=80
        NSLog("a:%d",self.a)
        self.slide01Item3.layer.removeAllAnimations()
        self.slide07Corazon.layer.removeAllAnimations()
        self.slide08Corazon.layer.removeAllAnimations()
        self.slide09Corazon.layer.removeAllAnimations()
        view.removeGestureRecognizer(swipeLeft)
        view.removeGestureRecognizer(swipeRight)
        
        self.fondo.image = UIImage(named: "slide08Fondo")
        self.btnSlide08.frame =  CGRect(x: 506, y: 298, width: 417, height: 111)
        self.hiddenAll()
        
        self.slide08Texto1.frame.origin.x=self.view.frame.width+3000
        self.slide08Img.frame.origin.y=self.view.frame.height+3000
        self.slide08Corazon.frame.origin.y=self.view.frame.height+3000
        
        self.slide08Texto2.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.slide08Texto2a.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.slide08Texto3.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        
        UIView.animate(withDuration: 0.3, delay: 0.1, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide08Img.isHidden = false
            self.slide08Img.center.y = self.posSlide08Img
            self.slide08Corazon.isHidden = false
            self.slide08Corazon.center.y = self.posSlide08Corazon
        }), completion: nil)
        
        UIView.animate(withDuration: 0.3, delay: 0.3, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide08Texto1.isHidden = false
            self.slide08Texto1.center.x = self.posSlide08Texto1
        }), completion: nil)
        
        delay(0.5){
            self.slide08Texto2.isHidden = false
            self.slide08Texto2.animationScaleEffect(view: self.slide08Texto2, animationTime: 0.3)
            self.slide08Texto2a.isHidden = false
            self.slide08Texto2a.animationScaleEffect(view: self.slide08Texto2a, animationTime: 0.3)
        }
        delay(0.7){
            self.slide08Texto3.isHidden = false
            self.slide08Texto3.animationScaleEffect(view: self.slide08Texto3, animationTime: 0.3)
        }
        
        delay(0.9){
            self.slide07Logo.isHidden = false
            self.slide07Logo.alpha = 0
            self.slide07Logo.fadeIn(duration: 0.3)
            self.slide08Corazon.isHidden = false
            self.timerCorazon8 = Timer.scheduledTimer(timeInterval: 0.7, target: self, selector: #selector(self.runTimedSlide08Corazon), userInfo: nil, repeats: true)
            self.playSound()
        }
     
        delay(2.4){
            self.btnSlide08.isHidden = false
            self.view.addGestureRecognizer(self.swipeLeft)
            self.view.addGestureRecognizer(self.swipeRight)
            
        }
        
       
    }
    func slide8b(){
        
        if (self.timerCorazon9 != nil){
            self.timerCorazon9.invalidate()
            self.player!.fadeOut()
        }
        if (self.timerCorazon7 != nil){
            self.timerCorazon7.invalidate()
            self.player!.fadeOut()
        }
        a=80
        NSLog("a:%d",self.a)
        self.slide01Item3.layer.removeAllAnimations()
        self.slide07Corazon.layer.removeAllAnimations()
        self.slide08Corazon.layer.removeAllAnimations()
        self.slide09Corazon.layer.removeAllAnimations()
        view.removeGestureRecognizer(swipeLeft)
        view.removeGestureRecognizer(swipeRight)
        
        self.fondo.image = UIImage(named: "slide08Fondo")
        self.btnSlide08.frame =  CGRect(x: 506, y: 298, width: 417, height: 111)
        self.hiddenAll()
        
        self.slide07Logo.isHidden = false
        self.slide08Texto1.isHidden = false
        
        self.slide08Img.frame.origin.y=self.view.frame.height+3000
        self.slide08Corazon.frame.origin.y=self.view.frame.height+3000
        
        self.slide08Texto2.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.slide08Texto2a.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.slide08Texto3.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        
        UIView.animate(withDuration: 0.3, delay: 0.1, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide08Img.isHidden = false
            self.slide08Img.center.y = self.posSlide08Img
            self.slide08Corazon.isHidden = false
            self.slide08Corazon.center.y = self.posSlide08Corazon
        }), completion: nil)
        
        
        delay(0.3){
            self.slide08Texto2.isHidden = false
            self.slide08Texto2.animationScaleEffect(view: self.slide08Texto2, animationTime: 0.3)
            self.slide08Texto2a.isHidden = false
            self.slide08Texto2a.animationScaleEffect(view: self.slide08Texto2a, animationTime: 0.3)
        }
        delay(0.5){
            self.slide08Texto3.isHidden = false
            self.slide08Texto3.animationScaleEffect(view: self.slide08Texto3, animationTime: 0.3)
        }
        
        delay(0.7){
    
            self.slide08Corazon.isHidden = false
            self.timerCorazon8 = Timer.scheduledTimer(timeInterval: 0.7, target: self, selector: #selector(self.runTimedSlide08Corazon), userInfo: nil, repeats: true)
            self.playSound()
        }
        
        delay(2.4){
            self.btnSlide08.isHidden = false
            self.view.addGestureRecognizer(self.swipeLeft)
            self.view.addGestureRecognizer(self.swipeRight)
            
        }
        
        
    }
    func slide9(){
        if (self.timerCorazon8 != nil){
            self.timerCorazon8.invalidate()
            self.player!.fadeOut()
        }
 
        a=90
        NSLog("a:%d",self.a)
        self.slide01Item3.layer.removeAllAnimations()
        self.slide07Corazon.layer.removeAllAnimations()
        self.slide08Corazon.layer.removeAllAnimations()
        self.slide09Corazon.layer.removeAllAnimations()
        
        self.slide09Titulo.image = UIImage(named: "slide09TituloPersistencia")
        self.fondo.image = UIImage(named: "slide09Fondo")
        self.slide09Indicador1.image  = UIImage(named: "indicador02")
        self.slide09Indicador2.image  = UIImage(named: "indicador01")
        self.slide09Indicador3.image  = UIImage(named: "indicador01")
        self.slide09Indicador4.image  = UIImage(named: "indicador01")
        
        self.hiddenAll()
        view.removeGestureRecognizer(swipeLeft)
        view.removeGestureRecognizer(swipeRight)
        
       // self.lblParrafo1.font = UIFont(name: "AzoSans-Bold", size: 30)
        
        self.string = "30% de los pacientes que inician\ntratamiento con un fármaco\ncardiovascular genérico en 3 clases\nterapéuticas luego de la\nhospitalización por infarto del\nmiocardio se enfrentan a un\ncambio en la forma o color de la\nmedicación. Estos cambios\nestuvieron asociados con el\nuso no persistente de las\nmedicaciones."
        self.myMutableString = NSMutableAttributedString(string: self.string, attributes: [NSFontAttributeName:UIFont(name: "AzoSans-Light", size: 22.0)!])
        self.myMutableString.addAttribute(NSForegroundColorAttributeName, value: UIColor.white, range: NSRange(location:0,length:self.string.characters.count))
        self.myMutableString.addAttribute(NSFontAttributeName, value: UIFont(name: "AzoSans-Bold", size: 24.0)!, range: NSRange(location:225,length:82))
        self.myMutableString.addAttribute(NSForegroundColorAttributeName, value: UIColor(red:1.0, green:1.0, blue:0.51, alpha:1.0), range: NSRange(location:225,length:82))
        self.lblParrafo1.numberOfLines = 12;
        self.lblParrafo1.attributedText  = self.myMutableString

        self.slide09Titulo.frame.origin.x=self.view.frame.width+3000
        self.slide09Img1.frame.origin.x=self.view.frame.width+3000
        self.slide09Img2.frame.origin.y=self.view.frame.height+3000
        self.slide09Corazon.frame.origin.y=self.view.frame.height+3000
        
        self.lblParrafo1.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.slide09Indicador1.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.slide09Indicador2.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.slide09Indicador3.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.slide09Indicador4.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
   
        UIView.animate(withDuration: 0.3, delay: 0.1, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide09Titulo.isHidden = false
            self.slide09Titulo.center.x = self.posSlide09Titulo
        }), completion: nil)
        
        UIView.animate(withDuration: 0.3, delay: 0.3, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide09Img1.isHidden = false
            self.slide09Img1.center.x = self.posSlide09Img1
        }), completion: nil)
        
        UIView.animate(withDuration: 0.3, delay: 0.5, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide09Img2.isHidden = false
            self.slide09Img2.center.y = self.posSlide09Img2
            self.slide09Corazon.isHidden = false
            self.slide09Corazon.center.y = self.posSlide09Corazon
        }), completion: nil)
        
        delay(0.9){
            self.lblParrafo1.isHidden = false
            self.lblParrafo1.animationScaleEffect(view: self.lblParrafo1, animationTime: 0.3)
        }
        delay(1.1){
            self.slide09Indicador1.isHidden = false
            self.slide09Indicador1.animationScaleEffect(view: self.slide09Indicador1, animationTime: 0.3)
        }
        delay(1.3){
            self.slide09Indicador2.isHidden = false
            self.slide09Indicador2.animationScaleEffect(view: self.slide09Indicador2, animationTime: 0.3)
        }
        delay(1.5){
            self.slide09Indicador3.isHidden = false
            self.slide09Indicador3.animationScaleEffect(view: self.slide09Indicador3, animationTime: 0.3)
        }
        delay(1.7){
            self.slide09Indicador4.isHidden = false
            self.slide09Indicador4.animationScaleEffect(view: self.slide09Indicador4, animationTime: 0.3)
        }
  
        delay(2.0){
            self.slide07Logo.isHidden = false
            self.slide07Logo.alpha = 0
            self.slide07Logo.fadeIn(duration: 0.3)
        }
        
        delay(2.2){
            self.slide09Referencia1.isHidden = false
            self.slide09Referencia1.alpha = 0
            self.slide09Referencia1.fadeIn(duration: 0.3)
            self.slide09Corazon.isHidden = false
            self.timerCorazon9 = Timer.scheduledTimer(timeInterval: 0.7, target: self, selector: #selector(self.runTimedSlide09Corazon), userInfo: nil, repeats: true)
            self.playSound()
        }
        
        delay(3.0){
            self.view.addGestureRecognizer(self.swipeLeft)
            self.view.addGestureRecognizer(self.swipeRight)
            
        }
        
       
    }
    func slide9a(){
        a=91
        NSLog("a:%d",self.a)
        view.removeGestureRecognizer(swipeLeft)
        view.removeGestureRecognizer(swipeRight)
        /*
        self.slide09Parrafo1.isHidden = true
        self.slide09Parrafo2.isHidden = true
        self.slide09Parrafo3.isHidden = true
        self.slide09Parrafo4.isHidden = true
         */
        self.slide09Referencia1.isHidden = true
        self.slide09Referencia2.isHidden = true
        self.slide09Titulo.image = UIImage(named: "slide09TituloPersistencia")
        self.slide09Indicador1.image  = UIImage(named: "indicador02")
        self.slide09Indicador2.image  = UIImage(named: "indicador01")
        self.slide09Indicador3.image  = UIImage(named: "indicador01")
        self.slide09Indicador4.image  = UIImage(named: "indicador01")
        //self.slide09Parrafo1.isHidden = false
        self.string = "30% de los pacientes que inician\ntratamiento con un fármaco\ncardiovascular genérico en 3 clases\nterapéuticas luego de la\nhospitalización por infarto del\nmiocardio se enfrentan a un\ncambio en la forma o color de la\nmedicación. Estos cambios\nestuvieron asociados con el\nuso no persistente de las\nmedicaciones."
        self.myMutableString = NSMutableAttributedString(string: self.string, attributes: [NSFontAttributeName:UIFont(name: "AzoSans-Light", size: 22.0)!])
        self.myMutableString.addAttribute(NSForegroundColorAttributeName, value: UIColor.white, range: NSRange(location:0,length:self.string.characters.count))
        self.myMutableString.addAttribute(NSFontAttributeName, value: UIFont(name: "AzoSans-Bold", size: 24.0)!, range: NSRange(location:225,length:82))
        self.myMutableString.addAttribute(NSForegroundColorAttributeName, value: UIColor(red:1.0, green:1.0, blue:0.51, alpha:1.0), range: NSRange(location:225,length:82))
        self.lblParrafo1.numberOfLines = 12;
    
        
        self.lblParrafo1.attributedText  = self.myMutableString
        self.slide09Referencia1.isHidden = false
        delay(0.3){
            self.view.addGestureRecognizer(self.swipeLeft)
            self.view.addGestureRecognizer(self.swipeRight)
            
        }
    }
    func slide9b(){
        a=92
        NSLog("a:%d",self.a)
        view.removeGestureRecognizer(swipeLeft)
        view.removeGestureRecognizer(swipeRight)
        /*
        self.slide09Parrafo1.isHidden = true
        self.slide09Parrafo2.isHidden = true
        self.slide09Parrafo3.isHidden = true
        self.slide09Parrafo4.isHidden = true
         */
        self.slide09Referencia1.isHidden = true
        self.slide09Referencia2.isHidden = true
        self.slide09Titulo.image = UIImage(named: "slide09TituloContinuidad")
        self.slide09Indicador1.image  = UIImage(named: "indicador01")
        self.slide09Indicador2.image  = UIImage(named: "indicador02")
        self.slide09Indicador3.image  = UIImage(named: "indicador01")
        self.slide09Indicador4.image  = UIImage(named: "indicador01")
        //self.slide09Parrafo2.isHidden = false
        self.string = "Los cambios en el aspecto físico de\nlos medicamentos pueden estar\nasociados con interrupciones en el\n uso de los medicamentos por los\n pacientes."
        //self.string = "Mientras que la diferencia en la\n forma de los fármacos es más\n fácilmente distinguible o\n involucran el sentido del tacto\n además de la visión."
        self.myMutableString = NSMutableAttributedString(string: self.string, attributes: [NSFontAttributeName:UIFont(name: "AzoSans-Light", size: 22.0)!])
        self.myMutableString.addAttribute(NSForegroundColorAttributeName, value: UIColor.white, range: NSRange(location:0,length:self.string.characters.count))
        self.myMutableString.addAttribute(NSFontAttributeName, value: UIFont(name: "AzoSans-Bold", size: 24.0)!, range: NSRange(location:80,length:65))
        self.myMutableString.addAttribute(NSForegroundColorAttributeName, value: UIColor(red:1.0, green:1.0, blue:0.51, alpha:1.0), range: NSRange(location:80,length:65))
        self.lblParrafo1.numberOfLines = 5;
        
        
        
        self.lblParrafo1.attributedText  = self.myMutableString
        self.slide09Referencia1.isHidden = false
        delay(0.3){
            self.view.addGestureRecognizer(self.swipeLeft)
            self.view.addGestureRecognizer(self.swipeRight)
            
        }
    }
    func slide9c(){
        a=93
        NSLog("a:%d",self.a)
        view.removeGestureRecognizer(swipeLeft)
        view.removeGestureRecognizer(swipeRight)
        /*
        self.slide09Parrafo1.isHidden = true
        self.slide09Parrafo2.isHidden = true
        self.slide09Parrafo3.isHidden = true
        self.slide09Parrafo4.isHidden = true
         */
        self.slide09Referencia1.isHidden = true
        self.slide09Referencia2.isHidden = true
        self.slide09Titulo.image = UIImage(named: "slide09TituloFacil")
        self.slide09Indicador1.image  = UIImage(named: "indicador01")
        self.slide09Indicador2.image  = UIImage(named: "indicador01")
        self.slide09Indicador3.image  = UIImage(named: "indicador02")
        self.slide09Indicador4.image  = UIImage(named: "indicador01")
        //self.slide09Parrafo3.isHidden = false
        self.string = "La diferencia en la forma de los\nfármacos es más fácilmente\n distinguible o involucran el\nsentido del tacto además de la\nvisión."
        self.myMutableString = NSMutableAttributedString(string: self.string, attributes: [NSFontAttributeName:UIFont(name: "AzoSans-Light", size: 22.0)!])
        self.myMutableString.addAttribute(NSForegroundColorAttributeName, value: UIColor.white, range: NSRange(location:0,length:self.string.characters.count))
        self.myMutableString.addAttribute(NSFontAttributeName, value: UIFont(name: "AzoSans-Bold", size: 24.0)!, range: NSRange(location:0,length:73))
        self.myMutableString.addAttribute(NSForegroundColorAttributeName, value: UIColor(red:1.0, green:1.0, blue:0.51, alpha:1.0), range: NSRange(location:0,length:73))
        self.lblParrafo1.numberOfLines = 5;

        self.lblParrafo1.attributedText  = self.myMutableString
        self.slide09Referencia1.isHidden = false
        delay(0.3){
            self.view.addGestureRecognizer(self.swipeLeft)
            self.view.addGestureRecognizer(self.swipeRight)
            
        }
    }
    
    func slide9d(){
        a=94
        NSLog("a:%d",self.a)
        view.removeGestureRecognizer(swipeLeft)
        view.removeGestureRecognizer(swipeRight)
        /*
        self.slide09Parrafo1.isHidden = true
        self.slide09Parrafo2.isHidden = true
        self.slide09Parrafo3.isHidden = true
        self.slide09Parrafo4.isHidden = true
         */
        self.slide09Referencia1.isHidden = true
        self.slide09Referencia2.isHidden = true
        self.slide09Titulo.image = UIImage(named: "slide09TituloAdherencia")
        self.slide09Indicador1.image  = UIImage(named: "indicador01")
        self.slide09Indicador2.image  = UIImage(named: "indicador01")
        self.slide09Indicador3.image  = UIImage(named: "indicador01")
        self.slide09Indicador4.image  = UIImage(named: "indicador02")
        //self.slide09Parrafo4.isHidden = false
        self.string = "Los cambios en el aspecto de los\nmedicamentos usados para tratar\ncondiciones crónicas pueden llevar\na la no adherencia y a resultados\nnegativos en la salud."
        
        self.myMutableString = NSMutableAttributedString(string: self.string, attributes: [NSFontAttributeName:UIFont(name: "AzoSans-Light", size: 22.0)!])
        self.myMutableString.addAttribute(NSForegroundColorAttributeName, value: UIColor.white, range: NSRange(location:0,length:self.string.characters.count))
        self.myMutableString.addAttribute(NSFontAttributeName, value: UIFont(name: "AzoSans-Bold", size: 24.0)!, range: NSRange(location:108,length:48))
        self.myMutableString.addAttribute(NSForegroundColorAttributeName, value: UIColor(red:1.0, green:1.0, blue:0.51, alpha:1.0), range: NSRange(location:108,length:48))
        self.lblParrafo1.numberOfLines = 5;
        self.lblParrafo1.attributedText  = self.myMutableString
        self.slide09Referencia2.isHidden = false
        delay(0.3){
            self.view.addGestureRecognizer(self.swipeLeft)
            self.view.addGestureRecognizer(self.swipeRight)
            
        }
      
    }
    func slide9dback(){
        a=95
        NSLog("a:%d",self.a)
        view.removeGestureRecognizer(swipeLeft)
        view.removeGestureRecognizer(swipeRight)
        
        self.fondo.image = UIImage(named: "slide09Fondo")
        self.slide09Titulo.image = UIImage(named: "slide09TituloAdherencia")
        self.slide09Indicador1.image  = UIImage(named: "indicador01")
        self.slide09Indicador2.image  = UIImage(named: "indicador01")
        self.slide09Indicador3.image  = UIImage(named: "indicador01")
        self.slide09Indicador4.image  = UIImage(named: "indicador02")
        
        self.hiddenAll()
        
        self.slide09Titulo.frame.origin.x=self.view.frame.width+3000
        self.slide09Img1.frame.origin.x=self.view.frame.width+3000
        self.slide09Img2.frame.origin.y=self.view.frame.height+3000
        self.slide09Corazon.frame.origin.y=self.view.frame.height+3000
        
        self.string = "Los cambios en el aspecto de los\nmedicamentos usados para tratar\ncondiciones crónicas pueden llevar\na la no adherencia y a resultados\nnegativos en la salud."
        
        
        self.myMutableString = NSMutableAttributedString(string: self.string, attributes: [NSFontAttributeName:UIFont(name: "AzoSans-Light", size: 22.0)!])
        self.myMutableString.addAttribute(NSForegroundColorAttributeName, value: UIColor.white, range: NSRange(location:0,length:self.string.characters.count))
        self.myMutableString.addAttribute(NSFontAttributeName, value: UIFont(name: "AzoSans-Bold", size: 24.0)!, range: NSRange(location:108,length:48))
        self.myMutableString.addAttribute(NSForegroundColorAttributeName, value: UIColor(red:1.0, green:1.0, blue:0.51, alpha:1.0), range: NSRange(location:108,length:48))
        self.lblParrafo1.numberOfLines = 5;
        self.lblParrafo1.attributedText  = self.myMutableString
        self.lblParrafo1.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        
        self.slide09Indicador1.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.slide09Indicador2.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.slide09Indicador3.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.slide09Indicador4.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        
        UIView.animate(withDuration: 0.3, delay: 0.1, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide09Titulo.isHidden = false
            self.slide09Titulo.center.x = self.posSlide09Titulo
        }), completion: nil)
        
        UIView.animate(withDuration: 0.3, delay: 0.3, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide09Img1.isHidden = false
            self.slide09Img1.center.x = self.posSlide09Img1
        }), completion: nil)
        
        UIView.animate(withDuration: 0.3, delay: 0.5, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide09Img2.isHidden = false
            self.slide09Img2.center.y = self.posSlide09Img2
            self.slide09Corazon.isHidden = false
            self.slide09Corazon.center.y = self.posSlide09Corazon
        }), completion: nil)
        
        delay(0.9){
           self.lblParrafo1.isHidden = false
           self.lblParrafo1.animationScaleEffect(view: self.lblParrafo1, animationTime: 0.3)
        }
        delay(1.1){
            self.slide09Indicador1.isHidden = false
            self.slide09Indicador1.animationScaleEffect(view: self.slide09Indicador1, animationTime: 0.3)
        }
        delay(1.3){
            self.slide09Indicador2.isHidden = false
            self.slide09Indicador2.animationScaleEffect(view: self.slide09Indicador2, animationTime: 0.3)
        }
        delay(1.5){
            self.slide09Indicador3.isHidden = false
            self.slide09Indicador3.animationScaleEffect(view: self.slide09Indicador3, animationTime: 0.3)
        }
        delay(1.7){
            self.slide09Indicador4.isHidden = false
            self.slide09Indicador4.animationScaleEffect(view: self.slide09Indicador4, animationTime: 0.3)
        }
        
        delay(2.0){
            self.slide07Logo.isHidden = false
            self.slide07Logo.alpha = 0
            self.slide07Logo.fadeIn(duration: 0.3)
            self.timerCorazon9 = Timer.scheduledTimer(timeInterval: 0.7, target: self, selector: #selector(self.runTimedSlide09Corazon), userInfo: nil, repeats: true)
            self.playSound()
        }
        
        delay(2.2){
            self.slide09Referencia2.isHidden = false
            self.slide09Referencia2.alpha = 0
            self.slide09Referencia2.fadeIn(duration: 0.3)
        }
        
        delay(2.9){
            self.view.addGestureRecognizer(self.swipeLeft)
            self.view.addGestureRecognizer(self.swipeRight)
            
        }
    
    }
    func slide10(){
        if (self.timerCorazon9 != nil){
        self.timerCorazon9.invalidate()
        self.player!.fadeOut()
        }
        a=100
        NSLog("a:%d",self.a)
        view.removeGestureRecognizer(swipeLeft)
        view.removeGestureRecognizer(swipeRight)
        
        self.fondo.image = UIImage(named: "slide10Fondo")
        
        self.hiddenAll()
        
        self.slide10Texto2.frame.origin.x=self.view.frame.width+3000
        self.slide10Img.frame.origin.y=self.view.frame.height+3000
        self.slide10Texto3.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
    
        delay(0.1){
            self.slide10Texto1.isHidden = false
            self.slide10Texto1.alpha = 0
            self.slide10Texto1.fadeIn(duration: 0.3)
        }
        
        UIView.animate(withDuration: 0.3, delay: 0.3, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide10Texto2.isHidden = false
            self.slide10Texto2.center.x = self.posSlide10Texto2
        }), completion: nil)
        
        UIView.animate(withDuration: 0.3, delay: 0.6, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide10Img.isHidden = false
            self.slide10Img.center.y = self.posSlide10Img
        }), completion: nil)
        delay(0.7){
            self.slide10Texto3.isHidden = false
            self.slide10Texto3.animationScaleEffect(view: self.slide10Texto3, animationTime: 0.3)
        }
  
        delay(1.5){
            self.view.addGestureRecognizer(self.swipeLeft)
            self.view.addGestureRecognizer(self.swipeRight)
        }

    }

    
    func hiddenAll(){
        self.hiddenSlide01()
        self.hiddenSlide03()
        self.hiddenSlide04()
        self.hiddenSlide05()
        self.hiddenSlide06()
        self.hiddenSlide07()
        self.hiddenSlide08()
        self.hiddenSlide09()
        self.hiddenSlide10()
    }
    func hiddenSlide01(){
        self.slide01Texto1.isHidden = true
        self.slide01Texto2.isHidden = true
        self.slide01Cinta.isHidden = true
        
        self.slide01Item1.isHidden = true
        self.slide01Item2.isHidden = true
        self.slide01Item3.isHidden = true
        self.slide01Item4.isHidden = true
        self.slide02Corazon.isHidden = true
        self.btnCorazon.isHidden = true
        self.slide02TextoCorazon.isHidden = true
    }
    func hiddenSlide03(){
        self.slide03Texto.isHidden = true
        self.slide03Item11.isHidden = true
        self.slide03Item12.isHidden = true
        self.slide03Item21.isHidden = true
        self.slide03Item22.isHidden = true
        self.slide03Corazon.isHidden = true
        self.slide03PildoraRed.isHidden = true
    }
    func hiddenSlide04(){
        self.slide04Texto.isHidden = true
        self.pildoraGrey01.isHidden = true
        self.pildoraGrey02.isHidden = true
        self.pildora01.isHidden = true
        self.pildora02.isHidden = true
        self.heartGrey1.isHidden = true
        self.heartGrey2.isHidden = true
        self.heartYellow1.isHidden = true
        self.heartYellow2.isHidden = true
        self.heartYellow3.isHidden = true
        self.pildoraRed01.isHidden = true
        self.pildoraRed02.isHidden = true
        self.pildoraRed03.isHidden = true
        self.pildoraRed04.isHidden = true
        self.pildoraRed05.isHidden = true
    }
    func hiddenSlide05(){
        self.slide05Img.isHidden = true
        self.slide05Logo.isHidden = true
        self.slide05Texto.isHidden = true
        self.slide05Flechas.isHidden = true
        self.slide05Caja.isHidden = true
        self.slide05Tabletas.isHidden = true
       
    }
    func hiddenSlide06(){
        self.slide06Img.isHidden = true
        self.slide06Texto1.isHidden = true
        self.slide06Texto2.isHidden = true
        self.slide06Texto2a.isHidden = true
        self.slide06Texto3.isHidden = true
        self.btnSlide6.isHidden = true
        self.slide06PopTexto.isHidden = true
    }
    func hiddenSlide07(){
        self.slide07Logo.isHidden = true
        self.slide07Texto1.isHidden = true
        self.slide07Texto2.isHidden = true
        self.slide07Texto3.isHidden = true
        self.slide07Corazon.isHidden = true
        self.btnSlide07.isHidden = true
        self.slide07PopTexto.isHidden = true
    }
    func hiddenSlide08(){
        self.slide08Img.isHidden = true
        self.slide08Texto1.isHidden = true
        self.slide08Texto2.isHidden = true
        self.slide08Texto2a.isHidden = true
        self.slide08Texto3.isHidden = true
        self.slide08Corazon.isHidden = true
        self.btnSlide08.isHidden = true
        self.slide08PopTexto.isHidden = true
     
    }
    func hiddenSlide09(){
        self.slide09Corazon.isHidden = true
        self.slide09Img1.isHidden = true
        self.slide09Img2.isHidden = true
        self.slide09Titulo.isHidden = true
        self.lblParrafo1.isHidden = true
        self.slide09Indicador1.isHidden = true
        self.slide09Indicador2.isHidden = true
        self.slide09Indicador3.isHidden = true
        self.slide09Indicador4.isHidden = true
        self.slide09Referencia1.isHidden = true
        self.slide09Referencia2.isHidden = true
    }
    func hiddenSlide10(){
        self.slide10Texto1.isHidden = true
        self.slide10Texto2.isHidden = true
        self.slide10Texto3.isHidden = true
        self.slide10Img.isHidden = true
    }
    func runTimedSlide01Item3() {
        UIView.animate(withDuration: 0.15, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide01Item3.transform=CGAffineTransform(scaleX: 1.1, y: 1.1)
        }), completion: nil)
        UIView.animate(withDuration: 0.05, delay: 0.15, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide01Item3.transform=CGAffineTransform(scaleX: 1.0, y: 1.0)
        }), completion: nil)
        UIView.animate(withDuration: 0.15, delay: 0.20, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide01Item3.transform=CGAffineTransform(scaleX: 1.07, y: 1.07)
        }), completion: nil)
        UIView.animate(withDuration: 0.05, delay: 0.35, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide01Item3.transform=CGAffineTransform(scaleX: 1.0, y: 1.0)
        }), completion: nil)
        
    }
    func runTimedSlide07Corazon() {
        
        UIView.animate(withDuration: 0.15, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide07Corazon.transform=CGAffineTransform(scaleX: 1.1, y: 1.1)
        }), completion: nil)
        UIView.animate(withDuration: 0.05, delay: 0.15, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide07Corazon.transform=CGAffineTransform(scaleX: 1.0, y: 1.0)
        }), completion: nil)
        UIView.animate(withDuration: 0.15, delay: 0.20, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide07Corazon.transform=CGAffineTransform(scaleX: 1.07, y: 1.07)
        }), completion: nil)
        UIView.animate(withDuration: 0.05, delay: 0.35, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide07Corazon.transform=CGAffineTransform(scaleX: 1.0, y: 1.0)
        }), completion: nil)
        
    }
    func runTimedSlide08Corazon() {
        UIView.animate(withDuration: 0.15, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide08Corazon.transform=CGAffineTransform(scaleX: 1.1, y: 1.1)
        }), completion: nil)
        UIView.animate(withDuration: 0.05, delay: 0.15, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide08Corazon.transform=CGAffineTransform(scaleX: 1.0, y: 1.0)
        }), completion: nil)
        UIView.animate(withDuration: 0.15, delay: 0.20, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide08Corazon.transform=CGAffineTransform(scaleX: 1.07, y: 1.07)
        }), completion: nil)
        UIView.animate(withDuration: 0.05, delay: 0.35, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide08Corazon.transform=CGAffineTransform(scaleX: 1.0, y: 1.0)
        }), completion: nil)
        
    }
    func runTimedSlide09Corazon() {
        UIView.animate(withDuration: 0.15, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide09Corazon.transform=CGAffineTransform(scaleX: 1.1, y: 1.1)
        }), completion: nil)
        UIView.animate(withDuration: 0.05, delay: 0.15, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide09Corazon.transform=CGAffineTransform(scaleX: 1.0, y: 1.0)
        }), completion: nil)
        UIView.animate(withDuration: 0.15, delay: 0.20, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide09Corazon.transform=CGAffineTransform(scaleX: 1.07, y: 1.07)
        }), completion: nil)
        UIView.animate(withDuration: 0.05, delay: 0.35, usingSpringWithDamping: 1.0, initialSpringVelocity: 1, options:[] , animations: ({
            self.slide09Corazon.transform=CGAffineTransform(scaleX: 1.0, y: 1.0)
        }), completion: nil)
    }
    
    func respond(_ gesture:UIGestureRecognizer){
        if let swipeGesture = gesture as? UISwipeGestureRecognizer{
            switch swipeGesture.direction{
            case UISwipeGestureRecognizerDirection.right:
                if(a==100){
                    self.slide9dback()
                }else if ((a==94)||(a==95)){
                    self.slide9c()
                }else if (a==93){
                    self.slide9b()
                }else if (a==92){
                    self.slide9a()
                }else if ((a==91)||(a==90)){
                    self.slide8()
                }else if(a==80){
                    self.slide7()
                }else if(a==70){
                    self.slide5()
                }else if(a==60){
                    self.slide4()
                }else if((a==51)||(a==50)){
                    self.slide4()
                }else if(a==40){
                    self.slide3()
                }else if(a==30){
                    self.slide2back()
                }else if((a==20)||(a==21) ){
                    self.slide1back()
                }
            case UISwipeGestureRecognizerDirection.left:
                
                if(a==10){
                }else if((a==20)||(a==21)){
                    self.slide3()
                }else if(a==30){
                    self.slide4()
                }else if(a==40){
                    self.slide5()
                }else if((a==50)||(a==51)){
                  self.slide7()
                }else if((a==60)){
                  self.slide7()
                    
                }else if((a==70)){
                    self.slide8()
                }else if((a==80)){
                    self.slide9()
                }else if((a==90)||(a==91)){
                    self.slide9b()
                }else if(a==92){
                    self.slide9c()
                }else if(a==93){
                    self.slide9d()
                }else if((a==94)||(a==95)){
                    self.slide10()
                }
            default:
                break
            }
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch =  touches.first{
            if (touch.view!.isEqual(slide05Tabletas)) {
                self.view.removeGestureRecognizer(self.swipeLeft)
                self.view.removeGestureRecognizer(self.swipeRight)
                slide05Tabletas.center.x = touch.location(in: self.view).x
                slide05Tabletas.center.x=slide05Tabletas.center.x-200
                if (self.slide05Tabletas.center.x>380)
                {
                    slide05Tabletas.center.x=375
                    
                }else if (self.slide05Tabletas.center.x<80)
                {
                    slide05Tabletas.center.x=84
               
                }else if ((self.slide05Tabletas.center.x>=80) && (self.slide05Tabletas.center.x<=380)){
                    self.slide05Texto.alpha = (380-self.slide05Tabletas.center.x)/380
                    self.slide05Flechas.alpha = (380-self.slide05Tabletas.center.x)/380
                }
                
            }
        }
        super.touchesBegan(touches, with: event)
    }
   
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if touches.first != nil{
            self.view.addGestureRecognizer(self.swipeLeft)
            self.view.addGestureRecognizer(self.swipeRight)
            if (self.slide05Tabletas.center.x==375)
            {
               slide05Tabletas.center.x=370
                
               //self.slide05Tabletas.isUserInteractionEnabled = false
                self.slide6()
            }else if (self.slide05Tabletas.center.x == 88)
            {
                self.slide05Tabletas.center.x = 91
                self.slide5b()
                
            }
   
        }
        super.touchesEnded(touches, with: event)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if let touch =  touches.first{
            if (touch.view!.isEqual(slide05Tabletas)) {
                slide05Tabletas.center.x = touch.location(in: self.view).x
                slide05Tabletas.center.x=slide05Tabletas.center.x-200
                if (self.slide05Tabletas.center.x>380)
                {
                    slide05Tabletas.center.x=375
                    
                }else if (self.slide05Tabletas.center.x<80)
                {
                    slide05Tabletas.center.x=88
                    
                }else if ((self.slide05Tabletas.center.x>=80) && (self.slide05Tabletas.center.x<=380)){
                    self.slide05Texto.alpha = (380-self.slide05Tabletas.center.x)/380
                    self.slide05Flechas.alpha = (380-self.slide05Tabletas.center.x)/380
                }
               
            }
        }
        super.touchesMoved(touches, with: event)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
public extension UIView {
    
    /**
     Fade in a view with a duration
     
     - parameter duration: custom animation duration
     */
    func fadeIn(duration: TimeInterval = 1.0) {
        UIView.animate(withDuration: duration, animations: {
            self.alpha = 1.0
        })
    }
    
    /**
     Fade out a view with a duration
     
     - parameter duration: custom animation duration
     */
    func fadeOut(duration: TimeInterval = 1.0) {
        UIView.animate(withDuration:duration, animations: {
            self.alpha = 0.0
        })
    }
    
    func animationScaleEffect(view:UIView,animationTime:Float){
        
        UIView.animate(withDuration: TimeInterval(animationTime),animations: {
            
            view.transform=CGAffineTransform(scaleX: 0.1, y: 0.1)},completion:{completion in UIView.animate(withDuration:TimeInterval(animationTime), animations: { () -> Void in
                
                view.transform=CGAffineTransform(scaleX: 1, y: 1)
                
                
            })
                
        })
        
    }
    func animationScaleEffectZoom(view:UIView,animationTime:Float){
        UIView.animate(withDuration: TimeInterval(animationTime),animations: {
            
            view.transform=CGAffineTransform(scaleX: 1.0, y: 1.0)},completion:{completion in UIView.animate(withDuration:TimeInterval(animationTime), animations: { () -> Void in
                
                view.transform=CGAffineTransform(scaleX: 1.1, y: 1.1)
                
                
            })
                
        })
        
    }
    func animationScaleEffectZoom2(view:UIView,animationTime:Float){
        UIView.animate(withDuration: TimeInterval(animationTime),animations: {
            
            view.transform=CGAffineTransform(scaleX: 1.0, y: 1.0)},completion:{completion in UIView.animate(withDuration:TimeInterval(animationTime), animations: { () -> Void in
                
                view.transform=CGAffineTransform(scaleX: 1.02, y: 1.02)
                
                
            })
                
        })
        
    }
}

func delay(_ delay:Double, closure:@escaping ()->()) {
    let when = DispatchTime.now() + delay
    DispatchQueue.main.asyncAfter(deadline: when, execute: closure)
}

extension AVAudioPlayer {
    func fadeOut() {
        if volume > 0.1 {
            // Fade
            volume -= 0.1
            perform(#selector(fadeOut), with: nil, afterDelay: 0.1)
        } else {
            // Stop and get the sound ready for playing again
            stop()
            prepareToPlay()
            volume = 1
        }
    }
}

