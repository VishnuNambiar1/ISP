import Scenes
import Igis
import Foundation

  /*
     This class is responsible for the interaction Layer.
     Internally, it maintains the RenderableEntities for this layer.
   */


class InteractionLayer : Layer, KeyDownHandler {
    
    let head = Head()
    let torso = Limb()
    let rightArm = Limb()
    let leftArm = Limb()
    let rightLeg = Limb()
    let leftLeg = Limb()
    let rope = Limb()
    let post = HangingPost()
    let guess = Guess()
    let lives = Guess()
    let numberOfGuessesObj = Guess()
    let box = ClearBox()
    
    //Letters
    let a = Guess()
    let b = Guess()
    let c = Guess()
    let d = Guess()
    let e = Guess()
    let f = Guess()
    let g = Guess()
    let h = Guess()
    let i = Guess()
    let j = Guess()
    let k = Guess()
    let l = Guess()
    let m = Guess()
    let n = Guess()
    let o = Guess()
    let p = Guess()
    let q = Guess()
    let r = Guess()
    let s = Guess()
    let t = Guess()
    let u = Guess()
    let v = Guess()
    let w = Guess()
    let x = Guess()
    let y = Guess()
    let z = Guess()

    //Modifiable Variables
    var colorA = "black"
    var colorB = "black"
    var colorC = "black"
    var colorD = "black"
    var colorE = "black"
    var colorF = "black"
    var colorG = "black"
    var colorH = "black"
    var colorI = "black"
    var colorJ = "black"
    var colorK = "black"
    var colorL = "black"
    var colorM = "black"
    var colorN = "black"
    var colorO = "black"
    var colorP = "black"
    var colorQ = "black"
    var colorR = "black"
    var colorS = "black"
    var colorT = "black"
    var colorU = "black"
    var colorV = "black"
    var colorW = "black"
    var colorX = "black"
    var colorY = "black"
    var colorZ = "black"

    var wordss : [String]
        
    var chosenWord : String
   
    var colorInit  = "black"
    
    //var userWord = [String]()

    func wordPrep(word: String) -> [String]                                       {
        var wordSet = [String]()
        
        for _ in word {
            let blank = "-"
            wordSet.append(blank)
        }

        
        return wordSet
        
    }

    var userWord : [String]
    
    

    var userLives : Int

    var numberOfGuesses : Int

    var inputLetter : String

    var selectedColor : String
    
    func createWordArray(_ input: String) -> [String]{
        var wordArray = [String]()
        for element in input{
            wordArray.append(String(element))
        }
        return wordArray
    }

    func printUserWord(_ word: [String]) -> String{
        var userWordString = ""
        for elements in word{
            userWordString += elements
        }
        return userWordString
    }

    var userString : String

    var chosenWordArray : [String]

    
    
    func takeUserInput() -> String{
        var userInput = inputLetter
        userInput = userInput.lowercased()
        //userInput += " "
        return String(userInput)
    }
    
    func guessResult() -> [String]{
        
        let userGuess = takeUserInput()
        let temp = userWord
        for index in 0 ..< userWord.count{
            if userGuess == String(chosenWordArray[index]){
                userWord[index] = userGuess
            }
            
        }
        
        if(userWord == temp){
            userLives -= 1
            //selectedColor = "red"
        }    
        numberOfGuesses += 1
        return userWord
    }
    
    var xPoint = 0
    var yPoint = 0
    var postCorner = 0
    
    init(words: [String], chosenWord: String, userLives: Int) {
        // Using a meaningful name can be helpful for debugging
        //super.init(name:"Interaction")

        self.wordss = words
        self.chosenWord = chosenWord
        self.userWord = []
        self.userLives = userLives
        self.numberOfGuesses = 0
        self.inputLetter = ""
        self.selectedColor = ""
        self.userString = ""
        self.chosenWordArray = []

        super.init(name:"Interaction")

        self.userWord = wordPrep(word: chosenWord)
        self.userString = printUserWord(userWord)
        self.chosenWordArray = createWordArray(chosenWord)
        
        /*self.wordss = ["jacuzzi", "dog", "bird"]
        self.chosenWord = wordss.randomElement()!
        self.userWord = wordPrep(word: chosenWord)
        self.userLives = 6
        self.numberOfGuesses = 0
        self.inputLetter = ""
        self.selectedColor = ""
        self.userString = printUserWord(userWord)
        self.chosenWordArray = createWordArray(chosenWord)*/
        
        insert(entity: rope, at: .front)



        
        insert(entity: head, at: .front)
        
        insert(entity: torso, at: .front)
        
        insert(entity: rightArm, at: .front)
        
        insert(entity: leftArm, at: .front)
        
        insert(entity: rightLeg, at: .front)
        
        insert(entity: leftLeg, at: .front)
        

        insert(entity: box, at: .front)
        insert(entity: post, at: .front)
        insert(entity: guess, at: .front)
        insert(entity: lives, at: .front)
        insert(entity: numberOfGuessesObj, at: .front)
        
        insert(entity: a, at: .front)
        insert(entity: b, at: .front)
        insert(entity: c, at: .front)
        insert(entity: d, at: .front)
        insert(entity: e, at: .front)
        insert(entity: f, at: .front)
        insert(entity: g, at: .front)
        insert(entity: h, at: .front)
        insert(entity: i, at: .front)
        insert(entity: j, at: .front)
        insert(entity: k, at: .front)
        insert(entity: l, at: .front)
        insert(entity: m, at: .front)
        insert(entity: n, at: .front)
        insert(entity: o, at: .front)
        insert(entity: p, at: .front)
        insert(entity: q, at: .front)
        insert(entity: r, at: .front)
        insert(entity: s, at: .front)
        insert(entity: t, at: .front)
        insert(entity: u, at: .front)
        insert(entity: v, at: .front)
        insert(entity: w, at: .front)
        insert(entity: x, at: .front)
        insert(entity: y, at: .front)
        insert(entity: z, at: .front)
        
        // We insert our RenderableEntities in the constructor
        
    }

    func onKeyDown(key: String, code: String, ctrlKey: Bool, shiftKey: Bool, altKey: Bool, metaKey: Bool) {
        
        if key == "a" {
            inputLetter = "a"
            colorA = colorInit
        }
        if key == "b" {
            inputLetter = "b"
            colorB = colorInit
        }
        if key == "c" {
            inputLetter = "c"
            colorC = colorInit
        }
        if key == "d" {
            inputLetter = "d"
            colorD = colorInit
        }
        if key == "e" {
            inputLetter = "e"
            colorE = colorInit
        }
        if key == "f" {
            inputLetter = "f"
            colorF = colorInit
        }
        if key == "g" {
            inputLetter = "g"
            colorG = colorInit
        }
        if key == "h" {
            inputLetter = "h"
            colorH = colorInit
        }
        if key == "i" {
            inputLetter = "i"
            colorI = colorInit
        }
        if key == "j" {
            inputLetter = "j"
            colorJ = colorInit
        }
        if key == "k" {
            inputLetter = "k"
            colorK = colorInit
        }
        if key == "l" {
            inputLetter = "l"
        }
        if key == "m" {
            inputLetter = "m"
        }
        if key == "n" {
            inputLetter = "n"
        }
        if key == "o" {
            inputLetter = "o"
        }
        if key == "p" {
            inputLetter = "p"
        }
        if key == "q" {
            inputLetter = "q"
        }
        if key == "r" {
            inputLetter = "r"
        }
        if key == "s" {
            inputLetter = "s"
        }
        if key == "t" {
            inputLetter = "t"
        }
        if key == "u" {
            inputLetter = "u"
        }
        if key == "v" {
            inputLetter = "v"
        }
        if key == "w" {
            inputLetter = "w"
        }
        if key == "x" {
            inputLetter = "x"
        }
        if key == "y" {
            inputLetter = "y"
        }
        if key == "z" {
            inputLetter = "z"
        }

        if chosenWord == userString {
            guess.move(x: xPoint * 3, y: yPoint *  1, text: "YOU WIN", style:"100pt Calibri", color: "black")
        }

       
        
        else if userLives != 0 {
            var store = 0
            store = userLives
            userString = printUserWord(userWord)
            chosenWordArray = createWordArray(chosenWord)
            let userGuess = guessResult()
            userString = printUserWord(userGuess)
            
            if userLives < 11 {
                head.move(to:Point(x: xPoint, y: yPoint), color: "black")
            }
            
            if userLives <  9 {
                torso.move(x1:(xPoint), y1:(yPoint + 30), x2:(xPoint), y2:(yPoint + 130), color: "black")
            }
            
            if userLives < 7 {
                leftArm.move(x1:(xPoint), y1:(yPoint + 30), x2:(xPoint - 30), y2:(yPoint + 80), color: "black")
            }
            
            if userLives < 5 {
                rightArm.move(x1:(xPoint), y1:(yPoint + 30), x2:(xPoint + 30), y2:(yPoint + 80), color: "black")
            }
            
            if userLives < 3 {
                leftLeg.move(x1:(xPoint), y1:(yPoint + 130), x2:(xPoint - 30), y2:(yPoint + 210), color: "black")
            }
            
            if userLives < 1 {
                rightLeg.move(x1:(xPoint), y1:(yPoint + 130), x2:(xPoint + 30), y2:(yPoint + 210), color: "black")
            }

            if userLives < store {
                if inputLetter == "a" {
                    a.move(x: xPoint * 3, y: yPoint * 3, text:"A", style:"30pt Calibri", color: "red")
                }
                else if inputLetter == "b" {    
                    b.move(x: xPoint * 27 / 8, y: yPoint * 3, text:"B", style:"30pt Calibri", color: "red")
                }
                else if inputLetter == "c" {
                    c.move(x: xPoint * 30 / 8, y: yPoint * 3, text:"C", style:"30pt Calibri", color: "red")
                }
                else if inputLetter == "d" {
                    d.move(x: xPoint * 33 / 8, y: yPoint * 3, text:"D", style:"30pt Calibri", color: "red")
                }
                else if inputLetter == "e" {
                    e.move(x: xPoint * 36 / 8, y: yPoint * 3, text:"E", style:"30pt Calibri", color: "red")
                }
                else if inputLetter == "f" {
                    f.move(x: xPoint * 39 / 8, y: yPoint * 3, text:"F", style:"30pt Calibri", color: "red")
                }
                else if inputLetter == "g" {
                    g.move(x: xPoint * 42 / 8, y: yPoint * 3, text:"G", style:"30pt Calibri", color: "red")
                }
                else if inputLetter == "h" {
                    h.move(x: xPoint * 3, y: yPoint * 27 / 8, text:"H", style:"30pt Calibri", color: "red")
                }
                else if inputLetter == "i" {
                    i.move(x: xPoint * 27 / 8, y: yPoint * 27 / 8, text:"I", style:"30pt Calibri", color: "red")
                }
                else if inputLetter == "j" {
                    j.move(x: xPoint * 30 / 8, y: yPoint * 27 / 8, text:"J", style:"30pt Calibri", color: "red")
                }
                else if inputLetter == "k" {
                    k.move(x: xPoint * 33 / 8, y: yPoint * 27 / 8, text:"K", style:"30pt Calibri", color: "red")
                }
                else if inputLetter == "l" {
                    l.move(x: xPoint * 36 / 8, y: yPoint * 27 / 8, text:"L", style:"30pt Calibri", color: "red")
                }
                else if inputLetter == "m" {
                    m.move(x: xPoint * 39 / 8, y: yPoint * 27 / 8, text:"M", style:"30pt Calibri", color: "red")
                }
                else if inputLetter == "n" {
                    n.move(x: xPoint * 42 / 8, y: yPoint * 27 / 8, text:"N", style:"30pt Calibri", color: "red")
                }
                else if inputLetter == "o" {
                    o.move(x: xPoint * 3, y: yPoint * 30 / 8, text:"O", style:"30pt Calibri", color: "red")
                }
                else if inputLetter == "p" {
                    p.move(x: xPoint * 27 / 8, y: yPoint * 30 / 8, text:"P", style:"30pt Calibri", color: "red")
                }
                else if inputLetter == "q" {
                    q.move(x: xPoint * 30 / 8, y: yPoint * 30 / 8, text:"Q", style:"30pt Calibri", color: "red")
                }
                else if inputLetter == "r" {
                    r.move(x: xPoint * 33 / 8, y: yPoint * 30 / 8, text:"R", style:"30pt Calibri", color: "red")
                }
                else if inputLetter == "s" {
                    s.move(x: xPoint * 36 / 8, y: yPoint * 30 / 8, text:"S", style:"30pt Calibri", color: "red")
                }
                else if inputLetter == "t" {
                    t.move(x: xPoint * 39 / 8, y: yPoint * 30 / 8, text:"T", style:"30pt Calibri", color: "red")
                }
                else if inputLetter == "u" {
                    u.move(x: xPoint * 42 / 8, y: yPoint * 30 / 8, text:"U", style:"30pt Calibri", color: "red")
                }
                else if inputLetter == "v" {
                    v.move(x: xPoint * 3, y: yPoint * 33 / 8, text:"V", style:"30pt Calibri", color: "red")
                }
                else if inputLetter == "w" {
                    w.move(x: xPoint * 27 / 8, y: yPoint * 33 / 8, text:"W", style:"30pt Calibri", color: "red")
                }
                else if inputLetter == "x" {
                    x.move(x: xPoint * 30 / 8, y: yPoint * 33 / 8, text:"X", style:"30pt Calibri", color: "red")
                }
                else if inputLetter == "y" {
                    y.move(x: xPoint * 33 / 8, y: yPoint * 33 / 8, text:"Y", style:"30pt Calibri", color: "red")
                }
                else if inputLetter == "z" {
                    z.move(x: xPoint * 36 / 8, y: yPoint * 33 / 8, text:"Z", style:"30pt Calibri", color: "red")
                }
            }
            
            box.move(pX:700, pY:0, sX:1100, sY:400)
            guess.move(x: xPoint * 3, y: yPoint *  1, text: userString, style:"80pt Calibri", color: "black")
            lives.move(x: xPoint * 4, y: yPoint *  1 / 3, text: "Lives: \(userLives)", style:"40pt Calibri", color: "black")
            numberOfGuessesObj.move(x: xPoint * 3, y: yPoint *  1 / 3, text:"Guesses: \(numberOfGuesses)", style:"40pt Calibri", color: "black")
 
        }

        else {
            guess.move(x: xPoint * 3, y: yPoint *  1, text: "YOU LOSE", style:"100pt Calibri", color: "black")
        }
    }


    
    
    override func preSetup(canvasSize: Size, canvas: Canvas) {
        userWord = wordPrep(word: chosenWord)
        userString = printUserWord(userWord)
        xPoint = (canvasSize.center.x / 3)
        yPoint = (canvasSize.center.y / 3)
        postCorner = 20

        //Hangman
        head.move(to:Point(x: xPoint, y: yPoint), color: "white")
        rope.move(x1:(xPoint), y1:40, x2:(xPoint), y2:(yPoint), color: "black")
        torso.move(x1:(xPoint), y1:(yPoint + 30), x2:(xPoint), y2:(yPoint + 130), color: "white")
        leftArm.move(x1:(xPoint), y1:(yPoint + 30), x2:(xPoint - 30), y2:(yPoint + 80), color: "white")
        rightArm.move(x1:(xPoint), y1:(yPoint + 30), x2:(xPoint + 30), y2:(yPoint + 80), color: "white")
        leftLeg.move(x1:(xPoint), y1:(yPoint + 130), x2:(xPoint - 30), y2:(yPoint + 210), color: "white")
        rightLeg.move(x1:(xPoint), y1:(yPoint + 130), x2:(xPoint + 30), y2:(yPoint + 210), color: "white")
        post.move(point: postCorner, height: (canvasSize.center.y * 2 - 100), bar: xPoint + 20)

        //The Word To Guess
        guess.move(x: xPoint * 3, y: yPoint *  1, text: userString, style:"80pt Calibri", color: "black")
        lives.move(x: xPoint * 4, y: yPoint *  1 / 3, text: "Lives: \(userLives)", style:"40pt Calibri", color: "black")
        numberOfGuessesObj.move(x: xPoint * 3, y: yPoint *  1 / 3, text:"Guesses: \(numberOfGuesses)", style:"40pt Calibri", color: "black")
        
        //Letters (Purple means color error)
        dispatcher.registerKeyDownHandler(handler: self)
        a.move(x: xPoint * 3, y: yPoint * 3, text:"A", style:"30pt Calibri", color: colorA)
        b.move(x: xPoint * 27 / 8, y: yPoint * 3, text:"B", style:"30pt Calibri", color: colorB)
        c.move(x: xPoint * 30 / 8, y: yPoint * 3, text:"C", style:"30pt Calibri", color: colorC)
        d.move(x: xPoint * 33 / 8, y: yPoint * 3, text:"D", style:"30pt Calibri", color: colorD)
        e.move(x: xPoint * 36 / 8, y: yPoint * 3, text:"E", style:"30pt Calibri", color: colorE)
        f.move(x: xPoint * 39 / 8, y: yPoint * 3, text:"F", style:"30pt Calibri", color: colorF)
        g.move(x: xPoint * 42 / 8, y: yPoint * 3, text:"G", style:"30pt Calibri", color: colorG)
        h.move(x: xPoint * 3, y: yPoint * 27 / 8, text:"H", style:"30pt Calibri", color: colorH)
        i.move(x: xPoint * 27 / 8, y: yPoint * 27 / 8, text:"I", style:"30pt Calibri", color: colorI)
        j.move(x: xPoint * 30 / 8, y: yPoint * 27 / 8, text:"J", style:"30pt Calibri", color: colorJ)
        k.move(x: xPoint * 33 / 8, y: yPoint * 27 / 8, text:"K", style:"30pt Calibri", color: colorK)
        l.move(x: xPoint * 36 / 8, y: yPoint * 27 / 8, text:"L", style:"30pt Calibri", color: colorL)
        m.move(x: xPoint * 39 / 8, y: yPoint * 27 / 8, text:"M", style:"30pt Calibri", color: colorM)
        n.move(x: xPoint * 42 / 8, y: yPoint * 27 / 8, text:"N", style:"30pt Calibri", color: colorN)
        o.move(x: xPoint * 3, y: yPoint * 30 / 8, text:"O", style:"30pt Calibri", color: colorO)
        p.move(x: xPoint * 27 / 8, y: yPoint * 30 / 8, text:"P", style:"30pt Calibri", color: colorP)
        q.move(x: xPoint * 30 / 8, y: yPoint * 30 / 8, text:"Q", style:"30pt Calibri", color: colorQ)
        r.move(x: xPoint * 33 / 8, y: yPoint * 30 / 8, text:"R", style:"30pt Calibri", color: colorR)
        s.move(x: xPoint * 36 / 8, y: yPoint * 30 / 8, text:"S", style:"30pt Calibri", color: colorS)
        t.move(x: xPoint * 39 / 8, y: yPoint * 30 / 8, text:"T", style:"30pt Calibri", color: colorT)
        u.move(x: xPoint * 42 / 8, y: yPoint * 30 / 8, text:"U", style:"30pt Calibri", color: colorU)
        v.move(x: xPoint * 3, y: yPoint * 33 / 8, text:"V", style:"30pt Calibri", color: colorV)
        w.move(x: xPoint * 27 / 8, y: yPoint * 33 / 8, text:"W", style:"30pt Calibri", color: colorW)
        x.move(x: xPoint * 30 / 8, y: yPoint * 33 / 8, text:"X", style:"30pt Calibri", color: colorX)
        y.move(x: xPoint * 33 / 8, y: yPoint * 33 / 8, text:"Y", style:"30pt Calibri", color: colorY)
        z.move(x: xPoint * 36 / 8, y: yPoint * 33 / 8, text:"Z", style:"30pt Calibri", color: colorZ)
        
    }

    override func postTeardown() {

        //dispatcher.unregisterKeyDownHander(handler: self)
    }
        
    
}
