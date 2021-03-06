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
    
        <xsl:template match="menu">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 3840 2160 " width="100%" height="100%" 
                preserveAspectRatio="xMinYMin meet"
                xmlns:xlink="http://www.w3.org/1999/xlink">
            
            
                
            <defs> 
                <rect id="menuRectangle"
                    width="{width}"
                    height="{height}"
                    x="{x_coordinate}"
                    y="{y_coordinate}"
                    stroke="black"
                    stroke-width="4"
                    fill="transparent"
                />
                <!-- transparent is a valid color -->
                
                <rect id="buttonRectangle"
                    width="15%"
                    height="10%"
                    x="{x_coordinate}"
                    y="{y_coordinate}"
                    stroke="black"
                    stroke-width="3"
                    fill="white"
                />
            </defs>
            <use xlink:href="#menuRectangle" id="menu"></use>
            <!-- test about the arrangement of the flag -->
            <xsl:if test="numberOfButtons= 1" >
                <use  xlink:href="#buttonRectangle" id="button1" x="100" y="100" width="100" ></use>
            </xsl:if>
            <xsl:if test="numberOfButtons= 2" >
                <use  xlink:href="#buttonRectangle" id="button1" x="100" y="100" width="100" ></use>
                <use  xlink:href="#buttonRectangle" id="button2" x="100" y="450" width="100" ></use>
                
            </xsl:if>
            
        </svg>
    </xsl:template>
    
    
    <xsl:template match="background">
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
    
    
    <xsl:template match="templatesMemory">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 5500 1000 " width="100%" height="100%" 
            preserveAspectRatio="xMinYMin meet"
            xmlns:xlink="http://www.w3.org/1999/xlink">
            
            <desc>cards</desc>
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
                
                <image id="background" width="4000" height="3000" xlink:href="Spielfeld_Hintergrund.jpeg"/>
                <rect id="anzeigename" width="10%" height="40%" x="{x-coordinate}" y="{y-coordinate}" fill="white"/>
                <rect id="anDerReihe" width="15%" height="15%" x="0" y="83" fill="pink"/>
                 
            </defs>
            <xsl:if test="backgroundTemplate = 1" >
            <use id="background_game2" xlink:href="#background" x="0" y="0" width="100%" height="100%"></use>
            </xsl:if>
            
            <!-- an der Reihe -->
            <xsl:if test="istDran=1">
                <g id="spieler1dran" transform="translate(0,80)">
                    <use xlink:href="#anDerReihe"/>
                    <text font-size="80" font-family="Verdana" x="45" y="185"> Spieler 1 ist dran </text>
                </g>
                
            </xsl:if>
            
            <xsl:if test="istDran=2">
                <g id="spieler1dran" transform="translate(0,80)">
                    <use xlink:href="#anDerReihe"/>
                    <text font-size="80" font-family="Verdana" x="45" y="185"> Spieler 2 ist dran </text>
                </g>
            </xsl:if>
            
            <xsl:if test="istDran=3">
                <g id="spieler1dran" transform="translate(0,80)">
                    <use xlink:href="#anDerReihe"/>
                    <text font-size="80" font-family="Verdana" x="45" y="185"> Spieler 3 ist dran </text>
                </g>
            </xsl:if>
            
            <xsl:if test="istDran=4">
                <g id="spieler1dran" transform="translate(0,80)">
                    <use xlink:href="#anDerReihe"/>
                    <text font-size="80" font-family="Verdana" x="45" y="185"> Spieler 4 ist dran </text>
                </g>
            </xsl:if>
            
            
            
            <!-- an der Reihe -->
            
            <!-- 1Spieler -->
            <xsl:if test="anzahlspieler = 1">
                
                <xsl:for-each select="spieler">
                
                    <xsl:if test="id = 1">
            <g id= "einspieler" transform="translate(400,2200)">
                <use xlink:href="#anzeigename" fill="white"></use>
                <text font-size="100" font-family="Verdana" x="21" y="95"> Spieler 1 </text>
                <text font-size="100" font-family="Verdana" x="21" y="200"> <xsl:value-of select="spielername"/> </text>
                <text font-size="50" font-family="Verdana" x="21" y= "300" >Punkte <xsl:value-of select="punkte"/> </text>
            </g> 
                    </xsl:if>
                </xsl:for-each>
            </xsl:if>
            
            <!-- 1Spieler -->
            
            <!-- 2Spieler -->
            <xsl:if test="anzahlspieler = 2">
                
                <xsl:for-each select="spieler">
                    <xsl:if test="id = 1">
                        <g id= "einspieler" transform="translate(400,2200)">
                        
                            <use xlink:href="#anzeigename"></use>
                            <text font-size="100" font-family="Verdana" x="21" y="95"> Spieler 1 </text>
                            <text font-size="100" font-family="Verdana" x="21" y="200"> <xsl:value-of select="spielername"/> </text>
                            <text font-size="50" font-family="Verdana" x="21" y= "300" >Punkte <xsl:value-of select="punkte"/> </text>
                        </g> 
                    </xsl:if>
                    <xsl:if test="id = 2">
                        <g id= "zweispieler" transform="translate(1300,2200)">
                            <use xlink:href="#anzeigename"></use>
                            <text font-size="100" font-family="Verdana" x="21" y="95"> Spieler 2 </text>
                            <text font-size="100" font-family="Verdana" x="21" y="200"> <xsl:value-of select="spielername"/> </text>
                            <text font-size="50" font-family="Verdana" x="21" y= "300" >Punkte <xsl:value-of select="punkte"/> </text>
                        </g> 
                    </xsl:if>
                    
                </xsl:for-each>
            </xsl:if>
            <!-- 2Spieler -->
            
            <!-- 3Spieler -->
            <xsl:if test="anzahlspieler = 3">
                
                <xsl:for-each select="spieler">
                    <xsl:if test="id = 1">
                        <g id= "einspieler" transform="translate(400,2200)">
                            <use xlink:href="#anzeigename"></use>
                            <text font-size="100" font-family="Verdana" x="21" y="95"> Spieler 1 </text>
                            <text font-size="100" font-family="Verdana" x="21" y="200"> <xsl:value-of select="spielername"/> </text>
                            <text font-size="50" font-family="Verdana" x="21" y= "300" >Punkte <xsl:value-of select="punkte"/> </text>
                        </g> 
                    </xsl:if>
                    <xsl:if test="id = 2">
                        <g id= "zweispieler" transform="translate(1300,2200)">
                            <use xlink:href="#anzeigename"></use>
                            <text font-size="100" font-family="Verdana" x="21" y="95"> Spieler 2 </text>
                            <text font-size="100" font-family="Verdana" x="21" y="200"> <xsl:value-of select="spielername"/> </text>
                            <text font-size="50" font-family="Verdana" x="21" y= "300" >Punkte <xsl:value-of select="punkte"/> </text>
                        </g> 
                    </xsl:if>
                    
                    <xsl:if test="id = 3">
                        <g id= "dreispieler" transform="translate(2200,2200)">
                            <use xlink:href="#anzeigename"></use>
                            <text font-size="100" font-family="Verdana" x="21" y="95"> Spieler 3 </text>
                            <text font-size="100" font-family="Verdana" x="21" y="200"> <xsl:value-of select="spielername"/> </text>
                            <text font-size="50" font-family="Verdana" x="21" y= "300" >Punkte <xsl:value-of select="punkte"/> </text>
                        </g> 
                    </xsl:if>
                    
                </xsl:for-each>
            </xsl:if>
            
            <!-- 3Spieler -->
            
            <!-- 4Spieler -->
            
            <xsl:if test="anzahlspieler = 4">
                
                <xsl:for-each select="spieler">
                    <xsl:if test="id = 1">
                        <g id= "einspieler" transform="translate(400,2200)">
                            <use xlink:href="#anzeigename"></use>
                            <text font-size="100" font-family="Verdana" x="21" y="95"> Spieler 1 </text>
                            <text font-size="100" font-family="Verdana" x="21" y="200"> <xsl:value-of select="spielername"/> </text>
                            <text font-size="50" font-family="Verdana" x="21" y= "300" >Punkte <xsl:value-of select="punkte"/> </text>
                        </g> 
                    </xsl:if>
                    <xsl:if test="id = 2">
                        <g id= "zweispieler" transform="translate(1300,2200)">
                            <use xlink:href="#anzeigename"></use>
                            <text font-size="100" font-family="Verdana" x="21" y="95"> Spieler 2 </text>
                            <text font-size="100" font-family="Verdana" x="21" y="200"> <xsl:value-of select="spielername"/> </text>
                            <text font-size="50" font-family="Verdana" x="21" y= "300" >Punkte <xsl:value-of select="punkte"/> </text>
                        </g> 
                    </xsl:if>
                    
                    <xsl:if test="id = 3">
                        <g id= "dreispieler" transform="translate(2200,2200)">
                            <use xlink:href="#anzeigename"></use>
                            <text font-size="100" font-family="Verdana" x="21" y="95"> Spieler 3 </text>
                            <text font-size="100" font-family="Verdana" x="21" y="200"> <xsl:value-of select="spielername"/> </text>
                            <text font-size="50" font-family="Verdana" x="21" y= "300" >Punkte <xsl:value-of select="punkte"/> </text>
                        </g> 
                    </xsl:if>
                    <xsl:if test="id = 4">
                        <g id= "vierspieler" transform="translate(3100,2200)">
                            <use xlink:href="#anzeigename"></use>
                            <text font-size="100" font-family="Verdana" x="21" y="95"> Spieler 4 </text>
                            <text font-size="100" font-family="Verdana" x="21" y="200"> <xsl:value-of select="spielername"/> </text>
                            <text font-size="50" font-family="Verdana" x="21" y= "300" >Punkte <xsl:value-of select="punkte"/> </text>
                        </g> 
                    </xsl:if>
                    
                </xsl:for-each>
            </xsl:if>
            
            
            
            
            
            <!-- 4Spieler -->
            
            
            
            
            
            
            
            
            
            
            
            
            
                <xsl:for-each select="card">
            <xsl:if test="cardId = 1" >
            <!--  Germany  -->
                <xsl:if test="kartenZustand = 1">
            <g id="cardFront1" transform="translate({x-coordinate}, {y-coordinate})"> 
                <use xlink:href="#cardFront"  x="0" y="0" />
                <use xlink:href="#verticalLine" y="0" fill="#000000"/> 
                <use xlink:href="#verticalLine" y="166" fill="#ff0000"/> 
                <use xlink:href="#verticalLine" y="333" fill="#ffff00"/> 
            </g>
                </xsl:if>
                <xsl:if test="kartenZustand=0">
                    <g id="cardBack" transform="translate ({x-coordinate}, {y-coordinate})">
                        <use xlink:href="#cardBack" x="0" y="0"/>
                        
                    </g>
                </xsl:if>
                
                </xsl:if>
                   
            <xsl:if test="cardId = 2" >
            <!--  Netherlands  -->
                <xsl:if test="kartenZustand=1">
                <g id="cardFront2" transform="translate ({x-coordinate}, {y-coordinate})"> 
                <use xlink:href="#cardFront"  x="0" y="0" />
                <use xlink:href="#verticalLine" y="0" fill="#ae1c28"/> 
                <use xlink:href="#verticalLine" y="333" fill="#21468b"/> 
            </g>
                </xsl:if>
                
                <xsl:if test="kartenZustand=0">
                    <g id="cardBack" transform="translate ({x-coordinate}, {y-coordinate})">
                        <use xlink:href="#cardBack" x="0" y="0"/>
                        
                    </g>
                </xsl:if>
            </xsl:if>
            <xsl:if test="cardId = 3" >
            <!--  Austria  -->
                <xsl:if test="kartenZustand=1">
                <g id="cardFront3" transform="translate({x-coordinate}, {y-coordinate})"> 
                <use xlink:href="#cardFront"  x="0" y="0" />
                <use xlink:href="#verticalLine" y="0" fill="#ed2939"/> 
                <use xlink:href="#verticalLine" y="333" fill="#ed2939"/> 
            </g>
                </xsl:if>
                <xsl:if test="kartenZustand=0">
                    <g id="cardBack" transform="translate ({x-coordinate}, {y-coordinate})">
                        <use xlink:href="#cardBack" x="0" y="0"/>
                        
                    </g>
                </xsl:if>
            </xsl:if>
            <xsl:if test="cardId = 4" >
            <!--  Estonia  -->
                <xsl:if test="kartenZustand=1">
                <g id="cardFront4" transform="translate({x-coordinate}, {y-coordinate})"> 
                <use xlink:href="#cardFront"  x="0" y="0" />
                <use xlink:href="#verticalLine" y="0" fill="#4891d9"/> 
                <use xlink:href="#verticalLine" y="166" fill="#000000"/> 
            </g>
                </xsl:if>
                <xsl:if test="kartenZustand=0">
                    <g id="cardBack" transform="translate ({x-coordinate}, {y-coordinate})">
                        <use xlink:href="#cardBack" x="0" y="0"/>
                        
                    </g>
                </xsl:if>
            </xsl:if>
            <xsl:if test="cardId = 5" >
            <!-- Lithuania   -->
                <xsl:if test="kartenZustand=1">
                <g id="cardFront5" transform="translate({x-coordinate}, {y-coordinate})"> 
                <use xlink:href="#cardFront"  x="0" y="0" />
                <use xlink:href="#verticalLine" y="0" fill="#fdb913"/> 
                <use xlink:href="#verticalLine" y="166" fill="#006a44"/> 
                <use xlink:href="#verticalLine" y="333" fill="#c1272d"/> 
            </g>
                </xsl:if>
                <xsl:if test="kartenZustand=0">
                    <g id="cardBack" transform="translate ({x-coordinate}, {y-coordinate})">
                        <use xlink:href="#cardBack" x="0" y="0"/>
                        
                    </g>
                </xsl:if>
            </xsl:if>
            <xsl:if test="cardId = 6" >
            <!--  Spain  -->
                <xsl:if test="kartenZustand=1">
                <g id="cardFront6" transform="translate({x-coordinate}, {y-coordinate})"> 
                <use xlink:href="#cardFront"  x="0" y="0" />
                <use xlink:href="#verticalLine" y="0" fill="#c60b1e"/> 
                <use xlink:href="#verticalLine" y="166" fill="#ffc400"/> 
                <use xlink:href="#verticalLine" y="333" fill="#c60b1e"/> 
            </g>
                </xsl:if>
                <xsl:if test="kartenZustand=0">
                    <g id="cardBack" transform="translate ({x-coordinate}, {y-coordinate})">
                        <use xlink:href="#cardBack" x="0" y="0"/>
                        
                    </g>
                </xsl:if>
            </xsl:if>
            <xsl:if test="cardId = 7" >
            <!--  Bulgaria  -->
                <xsl:if test="kartenZustand=1">
                <g id="cardFront7" transform="translate({x-coordinate}, {y-coordinate})"> 
                <use xlink:href="#cardFront"  x="0" y="0" />
                <use xlink:href="#verticalLine" y="166" fill="#00966e"/> 
                <use xlink:href="#verticalLine" y="333" fill="#d62612"/> 
            </g>
                </xsl:if>
                <xsl:if test="kartenZustand=0">
                    <g id="cardBack" transform="translate ({x-coordinate}, {y-coordinate})">
                        <use xlink:href="#cardBack" x="0" y="0"/>
                        
                    </g>
                </xsl:if>
            </xsl:if>
            <xsl:if test="cardId = 8" >
            <!--  Italy  -->
                <xsl:if test="kartenZustand=1">
                <g id="cardFront8" transform="translate({x-coordinate}, {y-coordinate})"> 
                <use xlink:href="#cardFront"  x="0" y="0" />
                <use xlink:href="#horizontalLine" x="0" fill=" #009246"/> 
                <use xlink:href="#horizontalLine" x="333" fill="#ce2b37"/> 
            </g>
                </xsl:if>
               
                <xsl:if test="kartenZustand=0">
                    <g id="cardBack" transform="translate ({x-coordinate}, {y-coordinate})">
                        <use xlink:href="#cardBack" x="0" y="0"/>
                        
                    </g>
                </xsl:if>
            </xsl:if>
            <xsl:if test="cardId = 9" >
            <!--  France  -->
                <xsl:if test="kartenZustand=1">
                <g id="cardFront9" transform="translate({x-coordinate}, {y-coordinate})"> 
                <use xlink:href="#cardFront"  x="0" y="0" />
                <use xlink:href="#horizontalLine" x="0" fill=" #002395"/>  
                <use xlink:href="#horizontalLine" x="333" fill="#ed2939"/> 
            </g>
                </xsl:if>
                <xsl:if test="kartenZustand=0">
                    <g id="cardBack" transform="translate ({x-coordinate}, {y-coordinate})">
                        <use xlink:href="#cardBack" x="0" y="0"/>
                        
                    </g>
                </xsl:if>
            </xsl:if>
            <xsl:if test="cardId = 10" >
            <!--  Ireland  -->
                <xsl:if test="kartenZustand=1">
                <g id="cardFront10" transform="translate({x-coordinate}, {y-coordinate})"> 
                <use xlink:href="#cardFront"  x="0" y="0" />
                <use xlink:href="#horizontalLine" x="0" fill="#169b62"/> 
                <use xlink:href="#horizontalLine" x="333" fill="#ff883e"/> 
            </g>
                </xsl:if>
                <xsl:if test="kartenZustand=0">
                    <g id="cardBack" transform="translate ({x-coordinate}, {y-coordinate})">
                        <use xlink:href="#cardBack" x="0" y="0"/>
                        
                    </g>
                </xsl:if>
            </xsl:if>
            <xsl:if test="cardId = 11" >
            <!--  Belgium  -->
                <xsl:if test="kartenZustand=1">
                <g id="cardFront11" transform="translate({x-coordinate}, {y-coordinate})"> 
                <use xlink:href="#cardFront"  x="0" y="0" />
                <use xlink:href="#horizontalLine" x="0" fill="#000000"/> 
                <use xlink:href="#horizontalLine" x="166" fill="#fae042"/> 
                <use xlink:href="#horizontalLine" x="333" fill="#ed2939"/> 
            </g>
                </xsl:if>
                <xsl:if test="kartenZustand=0">
                    <g id="cardBack" transform="translate ({x-coordinate}, {y-coordinate})">
                        <use xlink:href="#cardBack" x="0" y="0"/>
                        
                    </g>
                </xsl:if>
            </xsl:if>
            <xsl:if test="cardId = 12" >
            <!--  Poland  -->
                <xsl:if test="kartenZustand=1">
                <g id="cardFront12" transform="translate({x-coordinate}, {y-coordinate})"> 
                <use xlink:href="#cardFront"  x="0" y="0" />
                <use xlink:href="#verticalLine2" y="251" fill="#dc143c"/> 
            </g>
                </xsl:if>
                <xsl:if test="kartenZustand=0">
                    <g id="cardBack" transform="translate ({x-coordinate}, {y-coordinate})">
                        <use xlink:href="#cardBack" x="0" y="0"/>
                        
                    </g>
                </xsl:if>
            </xsl:if>
            <xsl:if test="cardId = 13" >
            <!--  Ukraine  -->
                <xsl:if test="kartenZustand=1">
                <g id="cardFront13" transform="translate({x-coordinate}, {y-coordinate})"> 
                <use xlink:href="#cardFront"  x="0" y="0" />
                <use xlink:href="#verticalLine2" y="0" fill=" #005bbb"/> 
                <use xlink:href="#verticalLine2" y="251" fill="#ffd500"/> 
            </g>
                </xsl:if>
                <xsl:if test="kartenZustand=0">
                    <g id="cardBack" transform="translate ({x-coordinate}, {y-coordinate})">
                        <use xlink:href="#cardBack" x="0" y="0"/>
                        
                    </g>
                </xsl:if>
            </xsl:if>
            <xsl:if test="cardId = 14" >
            <!--  Finland  -->
                <xsl:if test="kartenZustand=1">
                <g id="cardFront14" transform="translate({x-coordinate}, {y-coordinate})"> 
                <use xlink:href="#cardFront"  x="0" y="0" />
                <use xlink:href="#verticalLine3" y="210" fill="#003580"/> 
                <use xlink:href="#horizontalLine2" x="120" fill="#003580"/> 
            </g>
                </xsl:if>
                <xsl:if test="kartenZustand=0">
                    <g id="cardBack" transform="translate ({x-coordinate}, {y-coordinate})">
                        <use xlink:href="#cardBack" x="0" y="0"/>
                        
                    </g>
                </xsl:if>
            </xsl:if>
            <xsl:if test="cardId = 15" >
            <!--  Sweden  -->
                <xsl:if test="kartenZustand=1">
                <g id="cardFront15" transform="translate({x-coordinate}, {y-coordinate})" > 
                <use xlink:href="#cardFront"  x="0" y="0"/>
                <use xlink:href="#filledCard"  x="0" y="0" fill ="#006aa7"/>
                <use xlink:href="#verticalLine3" y="210" fill=" #fecc00"/> 
                <use xlink:href="#horizontalLine2" x="120" fill="#fecc00"/> 
                   
            </g>
                </xsl:if>
                <xsl:if test="kartenZustand=0">
                    <g id="cardBack" transform="translate ({x-coordinate}, {y-coordinate})">
                        <use xlink:href="#cardBack" x="0" y="0"/>
                        
                    </g>
                </xsl:if>
            </xsl:if>
            <xsl:if test="cardId = 16" >
            <!--  Denmark  -->
                <xsl:if test="kartenZustand=1">
                <g id="cardFront16" transform="translate({x-coordinate}, {y-coordinate})"> 
                <use xlink:href="#cardFront"  x="0" y="0"/>
                <use xlink:href="#filledCard"  x="0" y="0" fill=" #c60c30"/>
                <use xlink:href="#verticalLine3" y="210" fill="#ffffff "/> 
                <use xlink:href="#horizontalLine2" x="120" fill="#ffffff"/> 
            </g>
                </xsl:if>
                <xsl:if test="kartenZustand=0">
                    <g id="cardBack" transform="translate ({x-coordinate}, {y-coordinate})">
                        <use xlink:href="#cardBack" x="0" y="0"/>
                        
                    </g>
                </xsl:if>
                
            </xsl:if>
            </xsl:for-each>
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
    
    <!-- <xsl:attribute name="id"><xsl:value-of select="position()"/></xsl:attribute> -->

</xsl:stylesheet>