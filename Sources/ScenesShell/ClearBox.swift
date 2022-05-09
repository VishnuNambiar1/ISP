import Igis
import Scenes

class ClearBox: RenderableEntity {
    var rectangle: Rectangle

    var rectX = 0
    var rectY = 0
    var sizeX = 0
    var sizeY = 0

    init() {
        var rect = Rect(topLeft:Point(x:10, y:10), size:Size(width:300, height:300))
        rectangle = Rectangle(rect:rect, fillMode:.fillAndStroke)
        super.init(name:"Guess")
    }

    override func render(canvas:Canvas) {
        let fillStyle = FillStyle(color:Color(.white))
        let strokeStyle = StrokeStyle(color:Color(.white))
        let rect = Rect(topLeft:Point(x:rectX, y:rectY), size:Size(width:sizeX, height:sizeY))
        rectangle = Rectangle(rect:rect, fillMode:.fillAndStroke)
        canvas.render(fillStyle, strokeStyle, rectangle)
    }
    
    func move(pX: Int, pY: Int, sX: Int, sY: Int) {
        rectX = pX
        rectY = pY
        sizeX = sX
        sizeY = sY
    }
}
