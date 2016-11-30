//: Playground - noun: a place where people can play

import UIKit
import XCPlayground
import PlaygroundSupport
import CoreGraphics
import ObjectiveC

let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
containerView.backgroundColor = UIColor.darkGray
PlaygroundPage.current.liveView = containerView

let backdropView = UIView(frame: CGRect(x: 0.0, y: containerView.frame.height / 2, width: containerView.frame.width, height: containerView.frame.height))
backdropView.backgroundColor = UIColor.green
backdropView.alpha = 0.2
containerView.addSubview(backdropView)

let link = UIView(frame: CGRect(x: 0, y: 0, width: 80, height: 120))
link.center = containerView.center;

//cut a hole in the link
//identical to linkview's layer
let path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 80, height: 120), cornerRadius: 40)

//the hole we are cutting
let radius: CGFloat = 20.0
let circlePath = UIBezierPath(roundedRect:  CGRect(x:25, y: 30, width: 1.5*radius, height: 3*radius), cornerRadius: radius)

path.append(circlePath)
path.usesEvenOddFillRule = true

let fillLayer = CAShapeLayer()
fillLayer.path = path.cgPath
fillLayer.fillRule = kCAFillRuleEvenOdd
fillLayer.fillColor = UIColor.orange.cgColor
fillLayer.opacity = 1

link.layer.addSublayer(fillLayer)

containerView.addSubview(link)


