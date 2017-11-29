<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/2000/svg"
    >
    <xsl:output
        method="xml"
        indent="yes"
       
        doctype-public="-//W3C//DTD SVG 1.1//EN"
        
        media-type="image/svg" />
    
    <xsl:template match="background-elements">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 3840 2160 " width="100%" height="100%" 
            preserveAspectRatio="xMinYMin meet"
            xmlns:xlink="http://www.w3.org/1999/xlink">
            
            <desc>Spielfeldhintergrund</desc>
            <defs>
                <image id="background" width="100%" height="100%" xlink:href="xml_game_background.jpg"/>
            </defs>
            
            <use id="background_game2" xlink:href="#background" x="{x-coordinate}" y="{y-coordinate}" width="100%" height="100%"></use>
            
        </svg>
    </xsl:template>
    
    <xsl:template match="id">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 5500 1000 " width="100%" height="100%" 
            preserveAspectRatio="xMinYMin meet"
            xmlns:xlink="http://www.w3.org/1999/xlink">
            
            <desc></desc>
            <defs>
                
                <pattern id="memoryCard" patternUnits="userSpaceOnUse" width="1000" height="1000">
                    <image xlink:href="memoryCard.jpg" x="0" y="0" width="500" height="500" />
                </pattern>
                <rect id="cardBack" width="500" height="500" style="stroke:black; stroke-width:1; fill:url(#memoryCard)"
                />
                <rect id="cardFront" width="500" height="500" style="stroke:black; stroke-width:1; fill:white"
                />
                <rect id="filledCard" width="500" height="500" x="0" y="0"
                />
                <rect id="verticalLine" width="500" height="167" x="0"/>
                <rect id="verticalLine2" width="500" height="250" x="0"/>
                <rect id="verticalLine3" width="500" height="100" x="0"/>
                <rect id="horizontalLine" width="166" height="500" y="0"/>
                <rect id="horizontalLine2" width="100" height="500" y="0"/>
                
            </defs>
            
            <!--  Germany  -->
            <g id="cardFront1" transform="translate({x-coordinate}, {y-coordinate})"> 
                <use xlink:href="#cardFront"  x="0" y="0" />
                <use xlink:href="#verticalLine" y="0" fill="#000000"/> 
                <use xlink:href="#verticalLine" y="166" fill="#ff0000"/> 
                <use xlink:href="#verticalLine" y="333" fill="#ffff00"/> 
            </g>
            <!--  Netherlands  -->
            <g id="cardFront2" transform="translate (1200, 50)"> 
                <use xlink:href="#cardFront"  x="0" y="0" />
                <use xlink:href="#verticalLine" y="0" fill="#ae1c28"/> 
                <use xlink:href="#verticalLine" y="333" fill="#21468b"/> 
            </g>
            <!--  Austria  -->
            <g id="cardFront3" transform="translate(1800, 50)"> 
                <use xlink:href="#cardFront"  x="0" y="0" />
                <use xlink:href="#verticalLine" y="0" fill="#ed2939"/> 
                <use xlink:href="#verticalLine" y="333" fill="#ed2939"/> 
            </g>
            <!--  Estonia  -->
            <g id="cardFront4" transform="translate(2400, 50)"> 
                <use xlink:href="#cardFront"  x="0" y="0" />
                <use xlink:href="#verticalLine" y="0" fill="#4891d9"/> 
                <use xlink:href="#verticalLine" y="166" fill="#000000"/> 
            </g>
            <!-- Lithuania   -->
            <g id="cardFront5" transform="translate(3000, 50)"> 
                <use xlink:href="#cardFront"  x="0" y="0" />
                <use xlink:href="#verticalLine" y="0" fill="#fdb913"/> 
                <use xlink:href="#verticalLine" y="166" fill="#006a44"/> 
                <use xlink:href="#verticalLine" y="333" fill="#c1272d"/> 
            </g>
            <!--  Spain  -->
            <g id="cardFront6" transform="translate(3600, 50)"> 
                <use xlink:href="#cardFront"  x="0" y="0" />
                <use xlink:href="#verticalLine" y="0" fill="#c60b1e"/> 
                <use xlink:href="#verticalLine" y="166" fill="#ffc400"/> 
                <use xlink:href="#verticalLine" y="333" fill="#c60b1e"/> 
            </g>
            <!--  Bulgaria  -->
            <g id="cardFront7" transform="translate(50, 650)"> 
                <use xlink:href="#cardFront"  x="0" y="0" />
                <use xlink:href="#verticalLine" y="166" fill="#00966e"/> 
                <use xlink:href="#verticalLine" y="333" fill="#d62612"/> 
            </g>
            <!--  Italy  -->
            <g id="cardFront8" transform="translate(600, 650)"> 
                <use xlink:href="#cardFront"  x="0" y="0" />
                <use xlink:href="#horizontalLine" x="0" fill=" #009246"/> 
                <use xlink:href="#horizontalLine" x="333" fill="#ce2b37"/> 
            </g>
            <!--  France  -->
            <g id="cardFront9" transform="translate(1200, 650)"> 
                <use xlink:href="#cardFront"  x="0" y="0" />
                <use xlink:href="#horizontalLine" x="0" fill=" #002395"/>  
                <use xlink:href="#horizontalLine" x="333" fill="#ed2939"/> 
            </g>
            <!--  Ireland  -->
            <g id="cardFront10" transform="translate(1800, 650)"> 
                <use xlink:href="#cardFront"  x="0" y="0" />
                <use xlink:href="#horizontalLine" x="0" fill="#169b62"/> 
                <use xlink:href="#horizontalLine" x="333" fill="#ff883e"/> 
            </g>
            <!--  Belgium  -->
            <g id="cardFront11" transform="translate(2400, 650)"> 
                <use xlink:href="#cardFront"  x="0" y="0" />
                <use xlink:href="#horizontalLine" x="0" fill="#000000"/> 
                <use xlink:href="#horizontalLine" x="166" fill="#fae042"/> 
                <use xlink:href="#horizontalLine" x="333" fill="#ed2939"/> 
            </g>
            <!--  Poland  -->
            <g id="cardFront12" transform="translate(3000, 650)"> 
                <use xlink:href="#cardFront"  x="0" y="0" />
                <use xlink:href="#verticalLine2" y="251" fill="#dc143c"/> 
            </g>
            <!--  Ukraine  -->
            <g id="cardFront13" transform="translate(3600, 650)"> 
                <use xlink:href="#cardFront"  x="0" y="0" />
                <use xlink:href="#verticalLine2" y="0" fill=" #005bbb"/> 
                <use xlink:href="#verticalLine2" y="251" fill="#ffd500"/> 
            </g>
            <!--  Finland  -->
            <g id="cardFront14" transform="translate(4200, 50)"> 
                <use xlink:href="#cardFront"  x="0" y="0" />
                <use xlink:href="#verticalLine3" y="210" fill="#003580"/> 
                <use xlink:href="#horizontalLine2" x="120" fill="#003580"/> 
            </g>
            <!--  Sweden  -->
            <g id="cardFront15" transform="translate(4200, 650)" > 
                <use xlink:href="#cardFront"  x="0" y="0"/>
                <use xlink:href="#filledCard"  x="0" y="0" fill ="#006aa7"/>
                <use xlink:href="#verticalLine3" y="210" fill=" #fecc00"/> 
                <use xlink:href="#horizontalLine2" x="120" fill="#fecc00"/> 
            </g>
            <!--  Denmark  -->
            <g id="cardFront16" transform="translate(4800, 50)"> 
                <use xlink:href="#cardFront"  x="0" y="0"/>
                <use xlink:href="#filledCard"  x="0" y="0" fill=" #c60c30"/>
                <use xlink:href="#verticalLine3" y="210" fill="#ffffff "/> 
                <use xlink:href="#horizontalLine2" x="120" fill="#ffffff"/> 
            </g>
        </svg>
    </xsl:template>
    
    
    <xsl:template match="flag">
        <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" >
            
            <!-- test about the arrangement of the flag -->
            <xsl:if test="arrangementOfFlag= 1" >
                <!-- test about the number of stripes -->
                <xsl:if test="numberOfStripes= 3">
                    
                    <rect x="10" y="10" 
                        width="{width}" 
                        height="{height}" 
                        stroke="black"
                        stroke-width="2"
                        fill="{colour1}"
                    />   <!-- fix filling problem -->   
                    
                </xsl:if>
            </xsl:if>
        </svg>
    </xsl:template>
    
    
    <xsl:template match="/background">
        <img>
            <xsl:attribute name="width">
                100
            </xsl:attribute>
            <xsl:attribute name="height">
                100
            </xsl:attribute>
            <xsl:attribute name="class">
                CalloutRightPhoto
            </xsl:attribute>
            <xsl:attribute name="src">
                <xsl:value-of select="/background/Image/img/@src"/>
            </xsl:attribute>
        </img>
    </xsl:template>
</xsl:stylesheet>