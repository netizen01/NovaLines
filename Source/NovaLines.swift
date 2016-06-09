//
//  NovaLineButton
//
//  Inspired By: https://github.com/victorBaro/VBFPopFlatButton
//

import UIKit

public enum NovaLineType: String {
    case Line
    case Line2
    case Line3
    case Minus
    case Menu2
    case Menu3
    case Close
    case Add
    case Square
    case Left
    case Right
    case Up
    case Down
    case Left2
    case Right2
    case Up2
    case Down2
    case Download
    case Download2
    case Upload2
    case Upload
    case RightTriangle
    case UpTriangle
    case LeftTriangle
    case DownTriangle
    case Check
}


@IBDesignable public class NovaLineView: UIView {
    
    
    @IBInspectable public var lineColor: UIColor = .whiteColor() {
        didSet {
            segment1.lineColor = lineColor
            segment2.lineColor = lineColor
            segment3.lineColor = lineColor
        }
    }
    
    @IBInspectable public var animationSpringDamping: CGFloat = 0.7    // 0 = more spring. 1 = no spring
    @IBInspectable public var animationSpringVelocity: CGFloat = 0.5
    @IBInspectable public var animationDuration: Double = 0.5
    @IBInspectable public var triangleCompact: CGFloat = 0.8
    @IBInspectable public var inset: CGFloat = 0
    
    public var type: NovaLineType = .Line {
        didSet {
            var center1 = CGPoint(x: CGRectGetMidX(bounds), y: CGRectGetMidY(bounds))
            var center2 = center1
            var center3 = center1
            
            let halfLength = lineLength * 0.5
            let halfThickness = lineThickness * 0.5
            let trianglePointMod: CGFloat = 0.90588
            let triangleBaseMod: CGFloat = 0.82353
            
            
            switch type {
            case .Line:
                segment1.angle = Angle(0, 180)
                segment2.angle = Angle(0, 180)
                segment3.angle = Angle(0, 180)
                
            case .Line2:
                segment1.angle = Angle(0, 180)
                segment2.angle = Angle(0, 180)
                segment3.angle = Angle(0, 180)
                center1.x = center1.x - lineLength * 0.3
                center2.x = center2.x + lineLength * 0.3
                center3 = center2
                
            case .Line3:
                segment1.angle = Angle(0, 180)
                segment2.angle = Angle(0, 180)
                segment3.angle = Angle(0, 180)
                center1.x = center1.x - lineLength * 0.6
                center3.x = center3.x + lineLength * 0.6
                
                
            case .Minus:
                segment1.angle = Angle(90, 180)
                segment2.angle = Angle(90, 180)
                segment3.angle = Angle(90, 180)
                
            case .Menu2:
                segment1.angle = Angle(90, 180)
                segment2.angle = Angle(90, 180)
                segment3.angle = Angle(90, 180)
                center1.y = center1.y - lineLength * 0.3
                center2.y = center2.y + lineLength * 0.3
                center3 = center2
                
            case .Menu3:
                segment1.angle = Angle(90, 180)
                segment2.angle = Angle(90, 180)
                segment3.angle = Angle(90, 180)
                center1.y = center1.y - lineLength * 0.6
                center3.y = center3.y + lineLength * 0.6
                
            case .Add:
                segment1.angle = Angle(90, 180)
                segment2.angle = Angle(0, 180)
                segment3.angle = Angle(0, 180)
                
            case .Close:
                segment1.angle = Angle(45, 180)
                segment2.angle = Angle(135, 180)
                segment3.angle = Angle(135, 180)
                
            case .Square:
                segment1.angle = Angle(135, 90)
                segment2.angle = Angle(315, 90)
                segment3.angle = Angle(315, 90)
                center1.x = center1.x - halfLength + halfThickness
                center2.x = center2.x + halfLength - halfThickness
                center1.y = center1.y - halfLength + halfThickness
                center2.y = center2.y + halfLength - halfThickness
                center3 = center2
                
            case .Left:
                segment1.angle = Angle(225, 0)
                segment2.angle = Angle(135, 0)
                segment3.angle = Angle(135, 0)
                center1.x = center1.x - halfLength + halfThickness
                center2 = center1
                center3 = center1
                
            case .Right:
                segment1.angle = Angle(315, 0)
                segment2.angle = Angle(45, 0)
                segment3.angle = Angle(45, 0)
                center1.x = center1.x + halfLength - halfThickness
                center2 = center1
                center3 = center1
                
            case .Up:
                segment1.angle = Angle(45, 0)
                segment2.angle = Angle(135, 0)
                segment3.angle = Angle(135, 0)
                center1.y = center1.y - halfLength + halfThickness
                center2 = center1
                center3 = center1
                
            case .Down:
                segment1.angle = Angle(225, 0)
                segment2.angle = Angle(315, 0)
                segment3.angle = Angle(315, 0)
                center1.y = center1.y + halfLength - halfThickness
                center2 = center1
                center3 = center1
                
            case .Left2:
                segment1.angle = Angle(180, 90)
                segment2.angle = Angle(180, 90)
                segment3.angle = Angle(180, 90)
                center1.x = center1.x - lineLength * 0.8 + halfThickness
                center2.x = center2.x + halfThickness
                center3 = center2
                
            case .Right2:
                segment1.angle = Angle(0, 90)
                segment2.angle = Angle(0, 90)
                segment3.angle = Angle(0, 90)
                center1.x = center1.x - halfThickness
                center2.x = center2.x + lineLength * 0.8 - halfThickness
                center3 = center2
                
            case .Up2:
                segment1.angle = Angle(90, 90)
                segment2.angle = Angle(90, 90)
                segment3.angle = Angle(90, 90)
                center1.y = center1.y - lineLength * 0.8 + halfThickness
                center2.y = center2.y + halfThickness
                center3 = center2
                
            case .Down2:
                segment1.angle = Angle(270, 90)
                segment2.angle = Angle(270, 90)
                segment3.angle = Angle(270, 90)
                center1.y = center1.y - halfThickness
                center2.y = center2.y + lineLength * 0.8 - halfThickness
                center3 = center2
                
            case .Download:
                segment1.angle = Angle(270, 90)
                segment2.angle = Angle(0, 180)
                segment3.angle = Angle(0, 180)
                center1.y = center1.y + lineLength - lineThickness
                
            case .Upload:
                segment1.angle = Angle(90, 90)
                segment2.angle = Angle(0, 180)
                segment3.angle = Angle(0, 180)
                center1.y = center1.y - lineLength + lineThickness
                
            case .Download2:
                segment1.angle = Angle(270, 90)
                segment2.angle = Angle(0, 180)
                segment3.angle = Angle(90, 180)
                center1.y = center1.y + lineLength - lineThickness
                center3.y = center3.y + lineLength
                
            case .Upload2:
                segment1.angle = Angle(90, 90)
                segment2.angle = Angle(0, 180)
                segment3.angle = Angle(90, 180)
                center1.y = center1.y - lineLength + lineThickness
                center3.y = center3.y - lineLength
                
            case .UpTriangle:
                segment1.angle = Angle(90, 60)
                segment2.angle = Angle(330, 60)
                segment3.angle = Angle(210, 60)
                center1.y = center1.y - lineLength * trianglePointMod * triangleCompact
                center2.y = center2.y + lineLength * triangleBaseMod * triangleCompact
                center2.x = center2.x + lineLength * triangleCompact
                center3.y = center3.y + lineLength * triangleBaseMod * triangleCompact
                center3.x = center3.x - lineLength * triangleCompact
                
            case .DownTriangle:
                segment1.angle = Angle(270, 60)
                segment2.angle = Angle(150, 60)
                segment3.angle = Angle(30, 60)
                center1.y = center1.y + lineLength * trianglePointMod * triangleCompact
                center2.y = center2.y - lineLength * triangleBaseMod * triangleCompact
                center2.x = center2.x - lineLength * triangleCompact
                center3.y = center3.y - lineLength * triangleBaseMod * triangleCompact
                center3.x = center3.x + lineLength * triangleCompact
                
            case .LeftTriangle:
                segment1.angle = Angle(180, 60)
                segment2.angle = Angle(60, 60)
                segment3.angle = Angle(300, 60)
                center1.x = center1.x - lineLength * trianglePointMod * triangleCompact
                center2.y = center2.y - lineLength * triangleCompact
                center2.x = center2.x + lineLength * triangleBaseMod * triangleCompact
                center3.y = center3.y + lineLength * triangleCompact
                center3.x = center3.x + lineLength * triangleBaseMod * triangleCompact
                
            case .RightTriangle:
                segment1.angle = Angle(0, 60)
                segment2.angle = Angle(240, 60)
                segment3.angle = Angle(120, 60)
                center1.x = center1.x + lineLength * trianglePointMod * triangleCompact
                center2.y = center2.y + lineLength * triangleCompact
                center2.x = center2.x - lineLength * triangleBaseMod * triangleCompact
                center3.x = center3.x - lineLength * triangleBaseMod * triangleCompact
                center3.y = center3.y - lineLength * triangleCompact
                
            case .Check:
                segment1.angle = Angle(270, 90)
                segment2.angle = Angle(225, 0)
                segment3.angle = Angle(225, 0)
                center1.y = center1.y + lineLength * 0.8
                center1.x = center1.x - lineLength * 0.2
                center2.y = center2.y + lineLength * 0.4
                center2.x = center2.x + lineLength * 0.2
                center3 = center2
            }
            
            segment1.center = center1
            segment2.center = center2
            segment3.center = center3
        }
    }
    @IBInspectable public var lineRadius: CGFloat = 2 {
        didSet {
            segment1.radius = lineRadius
            segment2.radius = lineRadius
            segment3.radius = lineRadius
        }
    }
    
    @IBInspectable public var lineThickness: CGFloat = 4 {
        didSet {
            segment1.thickness = lineThickness
            segment2.thickness = lineThickness
            segment3.thickness = lineThickness
        }
    }
    
    
    public func setType(type: NovaLineType, animated: Bool) {
        if animated {
            UIView.animateWithDuration(animationDuration,
                                       delay: 0,
                                       usingSpringWithDamping: animationSpringDamping,
                                       initialSpringVelocity: animationSpringVelocity,
                                       options: [.BeginFromCurrentState],
                                       animations:
                {
                    self.type = type
            }) { finished in
                
            }
            
        } else {
            self.type = type
        }
    }
    
    
    public let segment1 = DoubleLineSegment(frame: CGRect.zero)
    public let segment2 = DoubleLineSegment(frame: CGRect.zero)
    public let segment3 = DoubleLineSegment(frame: CGRect.zero)
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        
        initSegments()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        initSegments()
    }
    
    private func initSegments() {
        userInteractionEnabled = false
        
        addSubview(segment1)
        addSubview(segment2)
        addSubview(segment3)
        
        segment1.userInteractionEnabled = false
        segment2.userInteractionEnabled = false
        segment3.userInteractionEnabled = false
        
        segment1.radius = lineRadius
        segment2.radius = lineRadius
        segment3.radius = lineRadius
        
        segment1.thickness = lineThickness
        segment2.thickness = lineThickness
        segment3.thickness = lineThickness
    }
    
    private var lineLength: CGFloat {
        return bounds.width * 0.5 - (inset + lineThickness * 0.5)
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        let inThick = (inset + lineThickness * 0.5)
        segment1.frame = CGRectInset(bounds, inThick, inThick)
        segment2.frame = CGRectInset(bounds, inThick, inThick)
        segment3.frame = CGRectInset(bounds, inThick, inThick)
        
        segment1.length = lineLength
        segment2.length = lineLength
        segment3.length = lineLength
        
        let type = self.type
        self.type = type
    }
    
    @available(*, unavailable, message="This property is reserved for Interface Builder. Use 'type' instead.")
    @IBInspectable public var typeAdapter: String? {
        willSet {
            if let newType = NovaLineType(rawValue: newValue ?? "") {
                type = newType
            }
        }
    }
}



private struct Angle {
    
    // Angle to have the 2 lines point towards
    var pointAt: CGFloat
    
    // The interior angle of the arrow
    var interiorAngle: CGFloat
    
    // To make things easy, construct with degrees
    init(_ pointDeg: CGFloat, _ angleDeg: CGFloat) {
        self.pointAt = pointDeg * CGFloat(M_PI / 180)
        self.interiorAngle = angleDeg * CGFloat(M_PI / 180)
    }
    
}



public class DoubleLineSegment: UIView {
    
    private var angle: Angle = Angle(90, 180) {
        didSet {
            rebuildFrames()
        }
    }
    
    private var length: CGFloat = 0 {
        didSet {
            recalculateAnchors()
            rebuildFrames()
        }
    }
    
    private var thickness: CGFloat = 0 {
        didSet {
            recalculateAnchors()
            rebuildFrames()
        }
    }
    
    private var radius: CGFloat = 0 {
        didSet {
            topPath.layer.cornerRadius = radius
            bottomPath.layer.cornerRadius = radius
        }
    }
    
    public var lineColor: UIColor = .whiteColor() {
        didSet {
            topPath.backgroundColor = lineColor
            bottomPath.backgroundColor = lineColor
        }
    }
    
    // Our "paths" are nothing more than UIViews. Pretty simple.
    private let topPath = UIView(frame: CGRect.zero)
    private let bottomPath = UIView(frame: CGRect.zero)
    
    // The anchor points attach the two paths
    private func recalculateAnchors() {
        let anchorMod: CGFloat
        if length > 0 && thickness > 0 {
            anchorMod = (thickness * 0.5) / length
        } else {
            anchorMod = 0
        }
        // --------X
        topPath.layer.anchorPoint = CGPoint(x: 1 - anchorMod, y: 0.5)
        
        // X--------
        bottomPath.layer.anchorPoint = CGPoint(x: anchorMod, y: 0.5)
    }
    
    private func rebuildFrames() {
        // Reset the transform before rebuiling the frame
        topPath.transform = CGAffineTransformMakeRotation(0)
        bottomPath.transform = CGAffineTransformMakeRotation(0)
        
        // This sets up the paths like such:
        // -----top------X-----bottom------
        // ... where X is the anchor point for each path
        // top is pointing at 0 degrees and bottom is pointing at 180 degrees
        topPath.frame = CGRectMake(thickness * 0.5, CGRectGetMidY(bounds) - thickness * 0.5, length, thickness)
        bottomPath.frame = CGRectMake(CGRectGetMidX(bounds) - thickness * 0.5, CGRectGetMidY(bounds) - thickness * 0.5, length, thickness)
        
        // The final angles are based on the "Point At" angle adjusted by half the interior angle
        let topAngle = -angle.pointAt + angle.interiorAngle * 0.5
        let bottomAngle = CGFloat(M_PI) - angle.pointAt - angle.interiorAngle * 0.5
        
        topPath.transform = CGAffineTransformMakeRotation(topAngle)
        bottomPath.transform = CGAffineTransformMakeRotation(bottomAngle)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initPaths()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initPaths()
    }
    
    private func initPaths() {
        addSubview(bottomPath)
        addSubview(topPath)
        
        topPath.backgroundColor = lineColor
        bottomPath.backgroundColor = lineColor
    }
    
}





@IBDesignable public class NovaLineButton: UIButton {
    
    public let lineView = NovaLineView(frame: CGRect.zero)
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(lineView)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        addSubview(lineView)
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        lineView.frame = bounds
    }
    
    @IBInspectable public var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
}



// Bridge Inspectable Properties for IB
extension NovaLineButton {
    
    public var type: NovaLineType {
        get {
            return lineView.type
        }
        set {
            lineView.type = newValue
        }
    }
    
    @IBInspectable public var lineColor: UIColor {
        get {
            return lineView.lineColor
        }
        set {
            lineView.lineColor = newValue
        }
    }
    
    @IBInspectable public var animationSpringDamping: CGFloat {
        get {
            return lineView.animationSpringDamping
        }
        set {
            lineView.animationSpringDamping = newValue
        }
    }
    
    @IBInspectable public var animationSpringVelocity: CGFloat {
        get {
            return lineView.animationSpringVelocity
        }
        set {
            lineView.animationSpringVelocity = newValue
        }
    }
    
    @IBInspectable public var animationDuration: Double {
        get {
            return lineView.animationDuration
        }
        set {
            lineView.animationDuration = newValue
        }
    }
    
    @IBInspectable public var triangleCompact: CGFloat {
        get {
            return lineView.triangleCompact
        }
        set {
            lineView.triangleCompact = newValue
        }
    }
    
    @IBInspectable public var inset: CGFloat {
        get {
            return lineView.inset
        }
        set {
            lineView.inset = newValue
        }
    }
    
    @IBInspectable public var lineRadius: CGFloat {
        get {
            return lineView.lineRadius
        }
        set {
            lineView.lineRadius = newValue
        }
    }
    
    @IBInspectable public var lineThickness: CGFloat {
        get {
            return lineView.lineThickness
        }
        set {
            lineView.lineThickness = newValue
        }
    }
    
    @available(*, unavailable, message="This property is reserved for Interface Builder. Use 'type' instead.")
    @IBInspectable public var typeAdapter: String? {
        get {
            return lineView.type.rawValue
        }
        set {
            if let newType = NovaLineType(rawValue: newValue ?? "") {
                lineView.type = newType
            }
        }
    }
    
}


