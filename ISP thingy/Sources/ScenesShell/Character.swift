import Igis
import Scenes

class Head: RenderableEntity {

    let ellipse = Ellipse(center:Point(x:0, y:0), radiusX:30, radiusY:30, fillMode:.fillAndStroke)
    var strokeStyle = StrokeStyle(color:Color(.black))
    var fillStyle = FillStyle(color:Color(.red))
    var lineWidth = LineWidth(width:3)
    var color1 = "black"
    
    init() {
        // Using a meaningful name can be helpful for debugging
        super.init(name:"Head")
    }

    override func render(canvas:Canvas) {
        strokeStyle = StrokeStyle(color:Color(.black))
        fillStyle = FillStyle(color:Color(.white))
        lineWidth = LineWidth(width:3)
        if color1 == "black" {
            strokeStyle = StrokeStyle(color:Color(.black))
        }
        else if color1 == "white" {
            strokeStyle = StrokeStyle(color:Color(.white))
        }
        else {
            strokeStyle = StrokeStyle(color:Color(.purple))
        }
        canvas.render(strokeStyle, fillStyle, lineWidth, ellipse)
    }

    func move(to point:Point, color: String) {
        ellipse.center = point
        color1 = color
    }
    
}
