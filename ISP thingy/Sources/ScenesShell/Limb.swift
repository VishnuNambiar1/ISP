import Igis
import Scenes

class Limb: RenderableEntity {
    var xFrom = 0
    var yFrom = 0
    var xTo = 0
    var yTo = 0
    var color1 = "black"
    
    let line = Lines(from:Point(x:0, y:0), to:Point(x:0, y:0))
    
    var strokeStyle = StrokeStyle(color:Color(.black))

    let lineWidth = LineWidth(width:3)
    
    init() {
        super.init(name:"Limb")
    }

    override func render(canvas:Canvas) {
        let line = Lines(from:Point(x:xFrom, y:yFrom), to:Point(x:xTo, y:yTo))
        
        if color1 == "black" {
            strokeStyle = StrokeStyle(color:Color(.black))
        }
        else if color1 == "white" {
            strokeStyle = StrokeStyle(color:Color(.white))
        }
        else {
            strokeStyle = StrokeStyle(color:Color(.purple))
        }
        canvas.render(strokeStyle, lineWidth, line)
        
    }

    func move(x1: Int, y1: Int, x2: Int, y2: Int, color: String) {
        xFrom = x1
        yFrom = y1
        xTo = x2
        yTo = y2
        color1 = color
    }
}
