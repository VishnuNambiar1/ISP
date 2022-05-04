import Igis
import Scenes

class Head: RenderableEntity {

    let ellipse = Ellipse(center:Point(x:0, y:0), radiusX:30, radiusY:30, fillMode:.fillAndStroke)
    let strokeStyle = StrokeStyle(color:Color(.black))
    let fillStyle = FillStyle(color:Color(.red))
    let lineWidth = LineWidth(width:3)

    init() {
        // Using a meaningful name can be helpful for debugging
        super.init(name:"Head")
    }

    override func render(canvas:Canvas) {
        let strokeStyle = StrokeStyle(color:Color(.black))
        let fillStyle = FillStyle(color:Color(.white))
        let lineWidth = LineWidth(width:3)
        canvas.render(strokeStyle, fillStyle, lineWidth, ellipse)
    }

    func move(to point:Point) {
        ellipse.center = point
    }
    
}
