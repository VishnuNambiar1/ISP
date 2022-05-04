import Scenes
import Igis
  /*
     This class is responsible for the interaction Layer.
     Internally, it maintains the RenderableEntities for this layer.
   */


class InteractionLayer : Layer {

    let head = Head()
    let torso = Limb()
    let rightArm = Limb()
    let leftArm = Limb()
    let rightLeg = Limb()
    let leftLeg = Limb()
    let rope = Limb()
    let post = HangingPost()
    let guess = Guess()
    
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
    
    init() {
        // Using a meaningful name can be helpful for debugging
        super.init(name:"Interaction")
        insert(entity: rope, at: .front)
        insert(entity: head, at: .front)
        insert(entity: torso, at: .front)
        insert(entity: rightArm, at: .front)
        insert(entity: leftArm, at: .front)
        insert(entity: rightLeg, at: .front)
        insert(entity: leftLeg, at: .front)
        insert(entity: post, at: .front)
        insert(entity: guess, at: .front)

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

    override func preSetup(canvasSize: Size, canvas: Canvas) {
        let xPoint = (canvasSize.center.x / 3)
        let yPoint = (canvasSize.center.y / 3)
        let postCorner = 20

        //Hangman
        head.move(to:Point(x: xPoint, y: yPoint))
        rope.move(x1:(xPoint), y1:40, x2:(xPoint), y2:(yPoint))
        torso.move(x1:(xPoint), y1:(yPoint + 30), x2:(xPoint), y2:(yPoint + 130))
        leftArm.move(x1:(xPoint), y1:(yPoint + 30), x2:(xPoint - 30), y2:(yPoint + 80))
        rightArm.move(x1:(xPoint), y1:(yPoint + 30), x2:(xPoint + 30), y2:(yPoint + 80))
        leftLeg.move(x1:(xPoint), y1:(yPoint + 130), x2:(xPoint - 30), y2:(yPoint + 210))
        rightLeg.move(x1:(xPoint), y1:(yPoint + 130), x2:(xPoint + 30), y2:(yPoint + 210))
        post.move(point: postCorner, height: (canvasSize.center.y * 2 - 100), bar: xPoint + 20)

        //The Word To Guess
        guess.move(x: xPoint * 3, y: yPoint *  1, text:"_ _ _ _ _", style:"80pt Calibri", color: "black")

        //Letters (Purple means color error)
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
        
}
