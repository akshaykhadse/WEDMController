SamacSys ECAD Model
439969/30955/2.18/5/0/Undefined or Miscellaneous

DESIGNSPARK_INTERMEDIATE_ASCII

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "r127_55.88"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 0.5588) (shapeHeight 1.27))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 0) (shapeHeight 0))
	)
	(textStyleDef "Default"
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 50 mils)
			(strokeWidth 5 mils)
		)
	)
	(patternDef "SOT95P280X145-5N" (originalName "SOT95P280X145-5N")
		(multiLayer
			(pad (padNum 1) (padStyleRef r127_55.88) (pt -1.2954, 0.9398) (rotation 90))
			(pad (padNum 2) (padStyleRef r127_55.88) (pt -1.2954, 0) (rotation 90))
			(pad (padNum 3) (padStyleRef r127_55.88) (pt -1.2954, -0.9398) (rotation 90))
			(pad (padNum 4) (padStyleRef r127_55.88) (pt 1.2954, -0.9398) (rotation 90))
			(pad (padNum 5) (padStyleRef r127_55.88) (pt 1.2954, 0.9398) (rotation 90))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt -3.4544, 2.54) (textStyleRef "Default") (isVisible True))
		)
		(layerContents (layerNumRef 18)
			(line (pt -0.4826 -1.4986) (pt 0.4826 -1.4986) (width 0.1524))
		)
		(layerContents (layerNumRef 18)
			(line (pt 0.8382 -0.3302) (pt 0.8382 0.3302) (width 0.1524))
		)
		(layerContents (layerNumRef 18)
			(line (pt 0.4826 1.4986) (pt 0.3048 1.4986) (width 0.1524))
		)
		(layerContents (layerNumRef 18)
			(line (pt 0.3048 1.4986) (pt -0.3048 1.4986) (width 0.1524))
		)
		(layerContents (layerNumRef 18)
			(line (pt -0.3048 1.4986) (pt -0.4826 1.4986) (width 0.1524))
		)
		(layerContents (layerNumRef 18)
			(arc (pt -5.5511151231258E-17, 1.4986) (radius 0.3048) (startAngle .0) (sweepAngle -180.0) (width 0.1524))
		)
	)
	(symbolDef "NC7SZ04M5" (originalName "NC7SZ04M5")

		(pin (pinNum 1) (pt 0 mils 0 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinDes (text (pt 175 mils 0 mils) (rotation 0) (justify "Right") (textStyleRef "Default"))) (pinName (text (pt 225 mils -25 mils) (rotation 0) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 2) (pt 0 mils -100 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinDes (text (pt 175 mils -100 mils) (rotation 0) (justify "Right") (textStyleRef "Default"))) (pinName (text (pt 225 mils -125 mils) (rotation 0) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 3) (pt 0 mils -200 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinDes (text (pt 175 mils -200 mils) (rotation 0) (justify "Right") (textStyleRef "Default"))) (pinName (text (pt 225 mils -225 mils) (rotation 0) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 4) (pt 900 mils 0 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinDes (text (pt 725 mils 0 mils) (rotation 0) (justify "Left") (textStyleRef "Default"))) (pinName (text (pt 700 mils -25 mils) (rotation 0) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 5) (pt 900 mils -100 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinDes (text (pt 725 mils -100 mils) (rotation 0) (justify "Left") (textStyleRef "Default"))) (pinName (text (pt 700 mils -125 mils) (rotation 0) (justify "Right") (textStyleRef "Default"))
		))

		(line (pt 200 mils 100 mils) (pt 700 mils 100 mils) (width 10 mils))
		(line (pt 700 mils 100 mils) (pt 700 mils -300 mils) (width 10 mils))
		(line (pt 700 mils -300 mils) (pt 200 mils -300 mils) (width 10 mils))
		(line (pt 200 mils -300 mils) (pt 200 mils 100 mils) (width 10 mils))

		(attr "RefDes" "RefDes" (pt 750 mils 350 mils) (isVisible True) (textStyleRef "Default"))

	)

	(compDef "NC7SZ04M5" (originalName "NC7SZ04M5") (compHeader (numPins 5) (numParts 1) (refDesPrefix U)
		)
		(compPin "1" (pinName "NC") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "2" (pinName "A") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "3" (pinName "GND") (partNum 1) (symPinNum 3) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "4" (pinName "Y") (partNum 1) (symPinNum 4) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "5" (pinName "VCC") (partNum 1) (symPinNum 5) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "NC7SZ04M5"))
		(attachedPattern (patternNum 1) (patternName "SOT95P280X145-5N")
			(numPads 5)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
				(padNum 3) (compPinRef "3")
				(padNum 4) (compPinRef "4")
				(padNum 5) (compPinRef "5")
			)
		)
		(attr "Supplier_Name" "RS")
		(attr "RS Part Number" "7614555")
		(attr "Manufacturer_Name" "Fairchild Semiconductor")
		(attr "Manufacturer_Part_Number" "NC7SZ04M5")
		(attr "Allied_Number" "")
		(attr "Other Part Number" "")
		(attr "Description" "Fairchild Semiconductor NC7SZ04M5 Inverter, 1.65  5.5 V, 5-Pin SOT-23")
		(attr "Datasheet Link" "")
		(attr "3D Package" "")
	)

)