import AppKit

let fm = FileManager.default
let outputDir = "/Users/nahedhalharbi/Development/PrayWindow/PrayWindow/Assets.xcassets/AppIcon.appiconset"
let size = CGSize(width: 1024, height: 1024)

struct Variant {
    let filename: String
    let top: NSColor
    let bottom: NSColor
    let glow: NSColor
    let symbol: NSColor
}

let variants = [
    Variant(filename: "AppIcon-1024.png", top: NSColor(calibratedRed: 0.08, green: 0.39, blue: 0.34, alpha: 1), bottom: NSColor(calibratedRed: 0.05, green: 0.15, blue: 0.20, alpha: 1), glow: NSColor(calibratedRed: 0.95, green: 0.80, blue: 0.47, alpha: 0.95), symbol: NSColor(calibratedRed: 0.98, green: 0.96, blue: 0.92, alpha: 1)),
    Variant(filename: "AppIcon-1024-dark.png", top: NSColor(calibratedRed: 0.07, green: 0.10, blue: 0.18, alpha: 1), bottom: NSColor(calibratedRed: 0.03, green: 0.05, blue: 0.09, alpha: 1), glow: NSColor(calibratedRed: 0.51, green: 0.78, blue: 0.90, alpha: 0.9), symbol: NSColor(calibratedRed: 0.93, green: 0.97, blue: 1.0, alpha: 1)),
    Variant(filename: "AppIcon-1024-tinted.png", top: NSColor(calibratedRed: 0.29, green: 0.59, blue: 0.52, alpha: 1), bottom: NSColor(calibratedRed: 0.15, green: 0.29, blue: 0.31, alpha: 1), glow: NSColor(calibratedRed: 1.0, green: 0.91, blue: 0.70, alpha: 0.92), symbol: NSColor(calibratedRed: 0.99, green: 0.98, blue: 0.95, alpha: 1)),
]

func roundedRectPath(in rect: CGRect, radius: CGFloat) -> NSBezierPath {
    NSBezierPath(roundedRect: rect, xRadius: radius, yRadius: radius)
}

func crescentPath(center: CGPoint, outer: CGFloat, innerOffset: CGPoint, inner: CGFloat) -> NSBezierPath {
    let path = NSBezierPath()
    path.appendOval(in: CGRect(x: center.x - outer / 2, y: center.y - outer / 2, width: outer, height: outer))
    let cutout = NSBezierPath()
    cutout.appendOval(in: CGRect(x: center.x - inner / 2 + innerOffset.x, y: center.y - inner / 2 + innerOffset.y, width: inner, height: inner))
    path.append(cutout)
    path.windingRule = .evenOdd
    return path
}

for variant in variants {
    let image = NSImage(size: size)
    image.lockFocus()

    let rect = CGRect(origin: .zero, size: size)
    NSGraphicsContext.current?.imageInterpolation = .high

    let bgPath = roundedRectPath(in: rect, radius: 230)
    bgPath.addClip()

    let gradient = NSGradient(colors: [variant.top, variant.bottom])!
    gradient.draw(in: bgPath, angle: -45)

    variant.glow.withAlphaComponent(0.16).setFill()
    NSBezierPath(ovalIn: CGRect(x: 70, y: 560, width: 600, height: 600)).fill()
    NSBezierPath(ovalIn: CGRect(x: 540, y: 80, width: 330, height: 330)).fill()

    let mosque = NSBezierPath()
    mosque.move(to: CGPoint(x: 248, y: 292))
    mosque.line(to: CGPoint(x: 248, y: 540))
    mosque.line(to: CGPoint(x: 332, y: 540))
    mosque.line(to: CGPoint(x: 332, y: 628))
    mosque.curve(to: CGPoint(x: 512, y: 774), controlPoint1: CGPoint(x: 332, y: 708), controlPoint2: CGPoint(x: 408, y: 774))
    mosque.curve(to: CGPoint(x: 692, y: 628), controlPoint1: CGPoint(x: 616, y: 774), controlPoint2: CGPoint(x: 692, y: 708))
    mosque.line(to: CGPoint(x: 692, y: 540))
    mosque.line(to: CGPoint(x: 776, y: 540))
    mosque.line(to: CGPoint(x: 776, y: 292))
    mosque.close()

    variant.symbol.withAlphaComponent(0.92).setFill()
    mosque.fill()

    let arch = NSBezierPath(roundedRect: CGRect(x: 424, y: 292, width: 176, height: 236), xRadius: 88, yRadius: 88)
    variant.bottom.withAlphaComponent(0.95).setFill()
    arch.fill()

    let minaret = NSBezierPath(roundedRect: CGRect(x: 166, y: 278, width: 94, height: 420), xRadius: 47, yRadius: 47)
    variant.symbol.withAlphaComponent(0.92).setFill()
    minaret.fill()

    let balcony = NSBezierPath(roundedRect: CGRect(x: 138, y: 470, width: 150, height: 34), xRadius: 17, yRadius: 17)
    balcony.fill()

    let crescent = crescentPath(center: CGPoint(x: 215, y: 742), outer: 116, innerOffset: CGPoint(x: 34, y: 0), inner: 92)
    variant.glow.setFill()
    crescent.fill()

    let horizon = NSBezierPath()
    horizon.move(to: CGPoint(x: 0, y: 232))
    horizon.curve(to: CGPoint(x: 1024, y: 250), controlPoint1: CGPoint(x: 260, y: 180), controlPoint2: CGPoint(x: 700, y: 300))
    horizon.line(to: CGPoint(x: 1024, y: 0))
    horizon.line(to: CGPoint(x: 0, y: 0))
    horizon.close()
    variant.glow.withAlphaComponent(0.12).setFill()
    horizon.fill()

    image.unlockFocus()

    guard
        let tiff = image.tiffRepresentation,
        let rep = NSBitmapImageRep(data: tiff),
        let png = rep.representation(using: .png, properties: [:])
    else {
        fatalError("Failed to render \(variant.filename)")
    }

    let url = URL(fileURLWithPath: outputDir).appendingPathComponent(variant.filename)
    try png.write(to: url)
    print("Wrote \(url.path)")
}
