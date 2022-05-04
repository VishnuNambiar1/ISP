import Igis
import Scenes

class HangingPost: RenderableEntity {

    //let ellipse = Ellipse(center:Point(x:0, y:0), radiusX:30, radiusY:30, fillMode:.fillAndStroke)
    var rectangle : Rectangle
    let strokeStyle = StrokeStyle(color:Color(.black))
    let fillStyle = FillStyle(color:Color(.red))
    let lineWidth = LineWidth(width:3)
    var base = 0
    var length = 0
    var barLength = 0

    init() {
        var rect = Rect(topLeft:Point(x:base, y:10), size:Size(width:300, height:(length)))
        rectangle = Rectangle(rect:rect, fillMode:.fillAndStroke)
        
        // Using a meaningful name can be helpful for debugging
        super.init(name:"HangingPost")
    }

    override func render(canvas:Canvas) {
        
        var rect = Rect(topLeft:Point(x:base, y:40), size:Size(width:50, height:(length)))
        rectangle = Rectangle(rect:rect, fillMode:.fillAndStroke)
        let strokeStyle = StrokeStyle(color:Color(.black))
        let fillStyle = FillStyle(color:Color(.orange))
        let lineWidth = LineWidth(width:3)
        canvas.render(strokeStyle, fillStyle, lineWidth, rectangle)
        rect = Rect(topLeft:Point(x:base, y:10), size:Size(width:barLength, height:30))
        rectangle = Rectangle(rect:rect, fillMode:.fillAndStroke)
        canvas.render(rectangle)
        rect = Rect(topLeft:Point(x:base, y:length + 40), size:Size(width:barLength / 2, height:30))
        rectangle = Rectangle(rect:rect, fillMode:.fillAndStroke)
        canvas.render(rectangle)
        
    }

    func move(point: Int, height: Int, bar: Int) {
        base = point
        length = height
        barLength = bar
    }
    
}
