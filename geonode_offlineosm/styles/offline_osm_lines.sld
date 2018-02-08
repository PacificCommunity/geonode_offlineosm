<?xml version='1.0' encoding='UTF-8'?>
<ns0:StyledLayerDescriptor xmlns:ns0="http://www.opengis.net/sld" xmlns:ns2="http://www.opengis.net/se" xmlns:ns3="http://www.opengis.net/ogc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.1.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd">
  <ns0:NamedLayer>
    <ns2:Name>Offline Osm Lines</ns2:Name>
    <ns0:UserStyle>
      <ns2:Name>Offline Osm Lines</ns2:Name>
      <ns2:FeatureTypeStyle><ns2:Rule>
          <ns2:Name>"waterway" = 'river'</ns2:Name>
          <ns2:Description>
            <ns2:Title>"waterway" = 'river'</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:And>
              <ns3:Not>
                <ns3:PropertyIsNull>
                  <ns3:PropertyName>waterway</ns3:PropertyName>
                </ns3:PropertyIsNull>
              </ns3:Not>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>waterway</ns3:PropertyName>
                <ns3:Literal>river</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:And>
          </ns3:Filter>
          <ns2:MinScaleDenominator>500000</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>2000000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer>
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#b4c8c8</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">1</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">bevel</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
        </ns2:Rule>
        <ns2:Rule>
          <ns2:Name>"waterway" = 'river'</ns2:Name>
          <ns2:Description>
            <ns2:Title>"waterway" = 'river'</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:And>
              <ns3:Not>
                <ns3:PropertyIsNull>
                  <ns3:PropertyName>waterway</ns3:PropertyName>
                </ns3:PropertyIsNull>
              </ns3:Not>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>waterway</ns3:PropertyName>
                <ns3:Literal>river</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:And>
          </ns3:Filter>
          <ns2:MinScaleDenominator>25000</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>500000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer>
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#b4c8c8</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">4</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">bevel</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
          </ns2:Rule>
        <ns2:Rule>
          <ns2:Name>"waterway" = 'river'</ns2:Name>
          <ns2:Description>
            <ns2:Title>"waterway" = 'river'</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:And>
              <ns3:Not>
                <ns3:PropertyIsNull>
                  <ns3:PropertyName>waterway</ns3:PropertyName>
                </ns3:PropertyIsNull>
              </ns3:Not>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>waterway</ns3:PropertyName>
                <ns3:Literal>river</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:And>
          </ns3:Filter>
          <ns2:MinScaleDenominator>5000</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>25000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer>
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#b4c8c8</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">12</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">round</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
          </ns2:Rule>
        <ns2:Rule>
          <ns2:Name>"waterway" = 'stream'</ns2:Name>
          <ns2:Description>
            <ns2:Title>"waterway" = 'stream'</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:And>
              <ns3:Not>
                <ns3:PropertyIsNull>
                  <ns3:PropertyName>waterway</ns3:PropertyName>
                </ns3:PropertyIsNull>
              </ns3:Not>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>waterway</ns3:PropertyName>
                <ns3:Literal>stream</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:And>
          </ns3:Filter>
          <ns2:MinScaleDenominator>5000</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>25000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer>
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#b4c8c8</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">6</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">round</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
          </ns2:Rule>
        <ns2:Rule>
          <ns2:Name>"waterway" = 'river' [ts]</ns2:Name>
          <ns2:Description>
            <ns2:Title>"waterway" = 'river' [ts]</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:And>
              <ns3:Not>
                <ns3:PropertyIsNull>
                  <ns3:PropertyName>waterway</ns3:PropertyName>
                </ns3:PropertyIsNull>
              </ns3:Not>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>waterway</ns3:PropertyName>
                <ns3:Literal>river</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:And>
          </ns3:Filter>
          <ns2:MinScaleDenominator>1</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>5000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#b4c8c8</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">10</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">round</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
          </ns2:Rule>
        <ns2:Rule>
          <ns2:Name>"waterway" = 'stream' [ts]</ns2:Name>
          <ns2:Description>
            <ns2:Title>"waterway" = 'stream' [ts]</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:And>
              <ns3:Not>
                <ns3:PropertyIsNull>
                  <ns3:PropertyName>waterway</ns3:PropertyName>
                </ns3:PropertyIsNull>
              </ns3:Not>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>waterway</ns3:PropertyName>
                <ns3:Literal>stream</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:And>
          </ns3:Filter>
          <ns2:MinScaleDenominator>1</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>5000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#b4c8c8</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">4</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">round</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
          </ns2:Rule>
        <ns2:Rule>
          <ns2:Name>"waterway" = 'drain' [ts]</ns2:Name>
          <ns2:Description>
            <ns2:Title>"waterway" = 'drain' [ts]</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:And>
              <ns3:Not>
                <ns3:PropertyIsNull>
                  <ns3:PropertyName>waterway</ns3:PropertyName>
                </ns3:PropertyIsNull>
              </ns3:Not>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>waterway</ns3:PropertyName>
                <ns3:Literal>drain</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:And>
          </ns3:Filter>
          <ns2:MinScaleDenominator>1</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>5000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#b4c8c8</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">2</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">round</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
          </ns2:Rule>
        </ns2:FeatureTypeStyle><ns2:FeatureTypeStyle><ns2:Rule>
          <ns2:Name>"waterway" = 'river'</ns2:Name>
          <ns2:Description>
            <ns2:Title>"waterway" = 'river'</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:And>
              <ns3:Not>
                <ns3:PropertyIsNull>
                  <ns3:PropertyName>waterway</ns3:PropertyName>
                </ns3:PropertyIsNull>
              </ns3:Not>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>waterway</ns3:PropertyName>
                <ns3:Literal>river</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:And>
          </ns3:Filter>
          <ns2:MinScaleDenominator>25000</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>500000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer>
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#cce4e4</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">2</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">bevel</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
        </ns2:Rule>
        <ns2:Rule>
          <ns2:Name>"waterway" = 'river'</ns2:Name>
          <ns2:Description>
            <ns2:Title>"waterway" = 'river'</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:And>
              <ns3:Not>
                <ns3:PropertyIsNull>
                  <ns3:PropertyName>waterway</ns3:PropertyName>
                </ns3:PropertyIsNull>
              </ns3:Not>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>waterway</ns3:PropertyName>
                <ns3:Literal>river</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:And>
          </ns3:Filter>
          <ns2:MinScaleDenominator>5000</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>25000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer>
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#cce4e4</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">10</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">round</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
        </ns2:Rule>
        <ns2:Rule>
          <ns2:Name>"waterway" = 'stream'</ns2:Name>
          <ns2:Description>
            <ns2:Title>"waterway" = 'stream'</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:And>
              <ns3:Not>
                <ns3:PropertyIsNull>
                  <ns3:PropertyName>waterway</ns3:PropertyName>
                </ns3:PropertyIsNull>
              </ns3:Not>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>waterway</ns3:PropertyName>
                <ns3:Literal>stream</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:And>
          </ns3:Filter>
          <ns2:MinScaleDenominator>5000</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>25000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer>
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#cce4e4</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">4</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">round</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
        </ns2:Rule>
        <ns2:Rule>
          <ns2:Name>"waterway" = 'river' [ts]</ns2:Name>
          <ns2:Description>
            <ns2:Title>"waterway" = 'river' [ts]</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:And>
              <ns3:Not>
                <ns3:PropertyIsNull>
                  <ns3:PropertyName>waterway</ns3:PropertyName>
                </ns3:PropertyIsNull>
              </ns3:Not>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>waterway</ns3:PropertyName>
                <ns3:Literal>river</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:And>
          </ns3:Filter>
          <ns2:MinScaleDenominator>1</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>5000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#cce4e4</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">9</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">round</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
        </ns2:Rule>
        <ns2:Rule>
          <ns2:Name>"waterway" = 'stream' [ts]</ns2:Name>
          <ns2:Description>
            <ns2:Title>"waterway" = 'stream' [ts]</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:And>
              <ns3:Not>
                <ns3:PropertyIsNull>
                  <ns3:PropertyName>waterway</ns3:PropertyName>
                </ns3:PropertyIsNull>
              </ns3:Not>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>waterway</ns3:PropertyName>
                <ns3:Literal>stream</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:And>
          </ns3:Filter>
          <ns2:MinScaleDenominator>1</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>5000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#cce4e4</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">3</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">round</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
        </ns2:Rule>
        <ns2:Rule>
          <ns2:Name>"waterway" = 'drain' [ts]</ns2:Name>
          <ns2:Description>
            <ns2:Title>"waterway" = 'drain' [ts]</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:And>
              <ns3:Not>
                <ns3:PropertyIsNull>
                  <ns3:PropertyName>waterway</ns3:PropertyName>
                </ns3:PropertyIsNull>
              </ns3:Not>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>waterway</ns3:PropertyName>
                <ns3:Literal>drain</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:And>
          </ns3:Filter>
          <ns2:MinScaleDenominator>1</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>5000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#cce4e4</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">1</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">round</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
        </ns2:Rule>
        </ns2:FeatureTypeStyle><ns2:FeatureTypeStyle><ns2:Rule>
          <ns2:Name>"highway" = 'primary'</ns2:Name>
          <ns2:Description>
            <ns2:Title>"highway" = 'primary'</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:Or>
              <ns3:And>
                <ns3:Not>
                  <ns3:PropertyIsNull>
                    <ns3:PropertyName>highway</ns3:PropertyName>
                  </ns3:PropertyIsNull>
                </ns3:Not>
                <ns3:PropertyIsEqualTo>
                  <ns3:PropertyName>highway</ns3:PropertyName>
                  <ns3:Literal>primary</ns3:Literal>
                </ns3:PropertyIsEqualTo>
              </ns3:And>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>highway</ns3:PropertyName>
                <ns3:Literal>primary_link</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:Or>
          </ns3:Filter>
          <ns2:MinScaleDenominator>500000</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>5000000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer>
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#000000</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">6</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">bevel</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
          </ns2:Rule>
        <ns2:Rule>
          <ns2:Name>"highway" = 'primary'</ns2:Name>
          <ns2:Description>
            <ns2:Title>"highway" = 'primary'</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:Or>
              <ns3:And>
                <ns3:Not>
                  <ns3:PropertyIsNull>
                    <ns3:PropertyName>highway</ns3:PropertyName>
                  </ns3:PropertyIsNull>
                </ns3:Not>
                <ns3:PropertyIsEqualTo>
                  <ns3:PropertyName>highway</ns3:PropertyName>
                  <ns3:Literal>primary</ns3:Literal>
                </ns3:PropertyIsEqualTo>
              </ns3:And>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>highway</ns3:PropertyName>
                <ns3:Literal>primary_link</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:Or>
          </ns3:Filter>
          <ns2:MinScaleDenominator>25000</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>500000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer>
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#000000</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">10</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">bevel</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
          </ns2:Rule>
        <ns2:Rule>
          <ns2:Name>"highway" = 'secondary'</ns2:Name>
          <ns2:Description>
            <ns2:Title>"highway" = 'secondary'</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:Or>
              <ns3:Or>
                <ns3:Or>
                  <ns3:And>
                    <ns3:Not>
                      <ns3:PropertyIsNull>
                        <ns3:PropertyName>highway</ns3:PropertyName>
                      </ns3:PropertyIsNull>
                    </ns3:Not>
                    <ns3:PropertyIsEqualTo>
                      <ns3:PropertyName>highway</ns3:PropertyName>
                      <ns3:Literal>secondary</ns3:Literal>
                    </ns3:PropertyIsEqualTo>
                  </ns3:And>
                  <ns3:PropertyIsEqualTo>
                    <ns3:PropertyName>highway</ns3:PropertyName>
                    <ns3:Literal>secondary_link</ns3:Literal>
                  </ns3:PropertyIsEqualTo>
                </ns3:Or>
                <ns3:PropertyIsEqualTo>
                  <ns3:PropertyName>highway</ns3:PropertyName>
                  <ns3:Literal>unclassified</ns3:Literal>
                </ns3:PropertyIsEqualTo>
              </ns3:Or>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>highway</ns3:PropertyName>
                <ns3:Literal>road</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:Or>
          </ns3:Filter>
          <ns2:MinScaleDenominator>25000</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>500000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer>
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#000000</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">4</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">bevel</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
          </ns2:Rule>
        <ns2:Rule>
          <ns2:Name>"highway" = 'tertiary'100</ns2:Name>
          <ns2:Description>
            <ns2:Title>"highway" = 'tertiary'100</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:And>
              <ns3:Not>
                <ns3:PropertyIsNull>
                  <ns3:PropertyName>highway</ns3:PropertyName>
                </ns3:PropertyIsNull>
              </ns3:Not>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>highway</ns3:PropertyName>
                <ns3:Literal>tertiary</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:And>
          </ns3:Filter>
          <ns2:MinScaleDenominator>25000</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>100000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer>
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#000000</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">3</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">bevel</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
          </ns2:Rule>
        <ns2:Rule>
          <ns2:Name>"highway" = 'primary'</ns2:Name>
          <ns2:Description>
            <ns2:Title>"highway" = 'primary'</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:Or>
              <ns3:And>
                <ns3:Not>
                  <ns3:PropertyIsNull>
                    <ns3:PropertyName>highway</ns3:PropertyName>
                  </ns3:PropertyIsNull>
                </ns3:Not>
                <ns3:PropertyIsEqualTo>
                  <ns3:PropertyName>highway</ns3:PropertyName>
                  <ns3:Literal>primary</ns3:Literal>
                </ns3:PropertyIsEqualTo>
              </ns3:And>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>highway</ns3:PropertyName>
                <ns3:Literal>primary_link</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:Or>
          </ns3:Filter>
          <ns2:MinScaleDenominator>5000</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>25000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer>
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#000000</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">16</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">bevel</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
          </ns2:Rule>
        <ns2:Rule>
          <ns2:Name>"highway" = 'secondary'</ns2:Name>
          <ns2:Description>
            <ns2:Title>"highway" = 'secondary'</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:Or>
              <ns3:Or>
                <ns3:Or>
                  <ns3:And>
                    <ns3:Not>
                      <ns3:PropertyIsNull>
                        <ns3:PropertyName>highway</ns3:PropertyName>
                      </ns3:PropertyIsNull>
                    </ns3:Not>
                    <ns3:PropertyIsEqualTo>
                      <ns3:PropertyName>highway</ns3:PropertyName>
                      <ns3:Literal>secondary</ns3:Literal>
                    </ns3:PropertyIsEqualTo>
                  </ns3:And>
                  <ns3:PropertyIsEqualTo>
                    <ns3:PropertyName>highway</ns3:PropertyName>
                    <ns3:Literal>secondary_link</ns3:Literal>
                  </ns3:PropertyIsEqualTo>
                </ns3:Or>
                <ns3:PropertyIsEqualTo>
                  <ns3:PropertyName>highway</ns3:PropertyName>
                  <ns3:Literal>unclassified</ns3:Literal>
                </ns3:PropertyIsEqualTo>
              </ns3:Or>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>highway</ns3:PropertyName>
                <ns3:Literal>road</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:Or>
          </ns3:Filter>
          <ns2:MinScaleDenominator>5000</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>25000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer>
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#000000</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">12</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">bevel</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
          </ns2:Rule>
        <ns2:Rule>
          <ns2:Name>"highway" = 'tertiary'</ns2:Name>
          <ns2:Description>
            <ns2:Title>"highway" = 'tertiary'</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:And>
              <ns3:Not>
                <ns3:PropertyIsNull>
                  <ns3:PropertyName>highway</ns3:PropertyName>
                </ns3:PropertyIsNull>
              </ns3:Not>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>highway</ns3:PropertyName>
                <ns3:Literal>tertiary</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:And>
          </ns3:Filter>
          <ns2:MinScaleDenominator>5000</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>25000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer>
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#000000</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">10</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">bevel</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
          </ns2:Rule>
        <ns2:Rule>
          <ns2:Name>"highway" = 'residential'</ns2:Name>
          <ns2:Description>
            <ns2:Title>"highway" = 'residential'</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:Or>
              <ns3:And>
                <ns3:Not>
                  <ns3:PropertyIsNull>
                    <ns3:PropertyName>highway</ns3:PropertyName>
                  </ns3:PropertyIsNull>
                </ns3:Not>
                <ns3:PropertyIsEqualTo>
                  <ns3:PropertyName>highway</ns3:PropertyName>
                  <ns3:Literal>residential</ns3:Literal>
                </ns3:PropertyIsEqualTo>
              </ns3:And>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>highway</ns3:PropertyName>
                <ns3:Literal>living_street</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:Or>
          </ns3:Filter>
          <ns2:MinScaleDenominator>5000</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>25000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer>
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#000000</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">6</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">bevel</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
          </ns2:Rule>
        <ns2:Rule>
          <ns2:Name>"highway" = 'primary' [ts]</ns2:Name>
          <ns2:Description>
            <ns2:Title>"highway" = 'primary' [ts]</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:Or>
              <ns3:And>
                <ns3:Not>
                  <ns3:PropertyIsNull>
                    <ns3:PropertyName>highway</ns3:PropertyName>
                  </ns3:PropertyIsNull>
                </ns3:Not>
                <ns3:PropertyIsEqualTo>
                  <ns3:PropertyName>highway</ns3:PropertyName>
                  <ns3:Literal>primary</ns3:Literal>
                </ns3:PropertyIsEqualTo>
              </ns3:And>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>highway</ns3:PropertyName>
                <ns3:Literal>primary_link</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:Or>
          </ns3:Filter>
          <ns2:MinScaleDenominator>1</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>5000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#000000</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">11</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">bevel</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
          </ns2:Rule>
        <ns2:Rule>
          <ns2:Name>"highway" = 'secondary' [ts]</ns2:Name>
          <ns2:Description>
            <ns2:Title>"highway" = 'secondary' [ts]</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:Or>
              <ns3:Or>
                <ns3:Or>
                  <ns3:And>
                    <ns3:Not>
                      <ns3:PropertyIsNull>
                        <ns3:PropertyName>highway</ns3:PropertyName>
                      </ns3:PropertyIsNull>
                    </ns3:Not>
                    <ns3:PropertyIsEqualTo>
                      <ns3:PropertyName>highway</ns3:PropertyName>
                      <ns3:Literal>secondary</ns3:Literal>
                    </ns3:PropertyIsEqualTo>
                  </ns3:And>
                  <ns3:PropertyIsEqualTo>
                    <ns3:PropertyName>highway</ns3:PropertyName>
                    <ns3:Literal>secondary_link</ns3:Literal>
                  </ns3:PropertyIsEqualTo>
                </ns3:Or>
                <ns3:PropertyIsEqualTo>
                  <ns3:PropertyName>highway</ns3:PropertyName>
                  <ns3:Literal>unclassified</ns3:Literal>
                </ns3:PropertyIsEqualTo>
              </ns3:Or>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>highway</ns3:PropertyName>
                <ns3:Literal>road</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:Or>
          </ns3:Filter>
          <ns2:MinScaleDenominator>1</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>5000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#000000</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">9</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">bevel</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
          </ns2:Rule>
        <ns2:Rule>
          <ns2:Name>"highway" = 'tertiary' [ts]</ns2:Name>
          <ns2:Description>
            <ns2:Title>"highway" = 'tertiary' [ts]</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:And>
              <ns3:Not>
                <ns3:PropertyIsNull>
                  <ns3:PropertyName>highway</ns3:PropertyName>
                </ns3:PropertyIsNull>
              </ns3:Not>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>highway</ns3:PropertyName>
                <ns3:Literal>tertiary</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:And>
          </ns3:Filter>
          <ns2:MinScaleDenominator>1</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>5000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#000000</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">7</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">bevel</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
          </ns2:Rule>
        <ns2:Rule>
          <ns2:Name>"highway" = 'residential' [ts]</ns2:Name>
          <ns2:Description>
            <ns2:Title>"highway" = 'residential' [ts]</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:Or>
              <ns3:And>
                <ns3:Not>
                  <ns3:PropertyIsNull>
                    <ns3:PropertyName>highway</ns3:PropertyName>
                  </ns3:PropertyIsNull>
                </ns3:Not>
                <ns3:PropertyIsEqualTo>
                  <ns3:PropertyName>highway</ns3:PropertyName>
                  <ns3:Literal>residential</ns3:Literal>
                </ns3:PropertyIsEqualTo>
              </ns3:And>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>highway</ns3:PropertyName>
                <ns3:Literal>living_street</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:Or>
          </ns3:Filter>
          <ns2:MinScaleDenominator>1</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>5000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#000000</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">5</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">bevel</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
          </ns2:Rule>
        <ns2:Rule>
          <ns2:Name>"highway" = 'footway' [ts]</ns2:Name>
          <ns2:Description>
            <ns2:Title>"highway" = 'footway' [ts]</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:Or>
              <ns3:Or>
                <ns3:Or>
                  <ns3:And>
                    <ns3:Not>
                      <ns3:PropertyIsNull>
                        <ns3:PropertyName>highway</ns3:PropertyName>
                      </ns3:PropertyIsNull>
                    </ns3:Not>
                    <ns3:PropertyIsEqualTo>
                      <ns3:PropertyName>highway</ns3:PropertyName>
                      <ns3:Literal>footway</ns3:Literal>
                    </ns3:PropertyIsEqualTo>
                  </ns3:And>
                  <ns3:PropertyIsEqualTo>
                    <ns3:PropertyName>highway</ns3:PropertyName>
                    <ns3:Literal>path</ns3:Literal>
                  </ns3:PropertyIsEqualTo>
                </ns3:Or>
                <ns3:PropertyIsEqualTo>
                  <ns3:PropertyName>highway</ns3:PropertyName>
                  <ns3:Literal>pedestrian</ns3:Literal>
                </ns3:PropertyIsEqualTo>
              </ns3:Or>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>highway</ns3:PropertyName>
                <ns3:Literal>steps</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:Or>
          </ns3:Filter>
          <ns2:MinScaleDenominator>1</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>2500</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#000000</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">3</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">bevel</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-dasharray">0.0001 4</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
          </ns2:Rule>
        <ns2:Rule>
          <ns2:Name>"highway" = 'service' [ts]</ns2:Name>
          <ns2:Description>
            <ns2:Title>"highway" = 'service' [ts]</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:Or>
              <ns3:And>
                <ns3:Not>
                  <ns3:PropertyIsNull>
                    <ns3:PropertyName>highway</ns3:PropertyName>
                  </ns3:PropertyIsNull>
                </ns3:Not>
                <ns3:PropertyIsEqualTo>
                  <ns3:PropertyName>highway</ns3:PropertyName>
                  <ns3:Literal>service</ns3:Literal>
                </ns3:PropertyIsEqualTo>
              </ns3:And>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>highway</ns3:PropertyName>
                <ns3:Literal>track</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:Or>
          </ns3:Filter>
          <ns2:MinScaleDenominator>1</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>5000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#000000</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">4</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">bevel</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
          </ns2:Rule>
        </ns2:FeatureTypeStyle><ns2:FeatureTypeStyle><ns2:Rule>
          <ns2:Name>"highway" = 'service' [ts]</ns2:Name>
          <ns2:Description>
            <ns2:Title>"highway" = 'service' [ts]</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:Or>
              <ns3:And>
                <ns3:Not>
                  <ns3:PropertyIsNull>
                    <ns3:PropertyName>highway</ns3:PropertyName>
                  </ns3:PropertyIsNull>
                </ns3:Not>
                <ns3:PropertyIsEqualTo>
                  <ns3:PropertyName>highway</ns3:PropertyName>
                  <ns3:Literal>service</ns3:Literal>
                </ns3:PropertyIsEqualTo>
              </ns3:And>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>highway</ns3:PropertyName>
                <ns3:Literal>track</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:Or>
          </ns3:Filter>
          <ns2:MinScaleDenominator>1</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>5000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#e6e6e6</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">3</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">bevel</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
        </ns2:Rule>
        </ns2:FeatureTypeStyle><ns2:FeatureTypeStyle><ns2:Rule>
          <ns2:Name>"highway" = 'secondary'</ns2:Name>
          <ns2:Description>
            <ns2:Title>"highway" = 'secondary'</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:Or>
              <ns3:Or>
                <ns3:Or>
                  <ns3:And>
                    <ns3:Not>
                      <ns3:PropertyIsNull>
                        <ns3:PropertyName>highway</ns3:PropertyName>
                      </ns3:PropertyIsNull>
                    </ns3:Not>
                    <ns3:PropertyIsEqualTo>
                      <ns3:PropertyName>highway</ns3:PropertyName>
                      <ns3:Literal>secondary</ns3:Literal>
                    </ns3:PropertyIsEqualTo>
                  </ns3:And>
                  <ns3:PropertyIsEqualTo>
                    <ns3:PropertyName>highway</ns3:PropertyName>
                    <ns3:Literal>secondary_link</ns3:Literal>
                  </ns3:PropertyIsEqualTo>
                </ns3:Or>
                <ns3:PropertyIsEqualTo>
                  <ns3:PropertyName>highway</ns3:PropertyName>
                  <ns3:Literal>unclassified</ns3:Literal>
                </ns3:PropertyIsEqualTo>
              </ns3:Or>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>highway</ns3:PropertyName>
                <ns3:Literal>road</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:Or>
          </ns3:Filter>
          <ns2:MinScaleDenominator>25000</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>500000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer>
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#ffffff</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">3</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">bevel</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
        </ns2:Rule>
        <ns2:Rule>
          <ns2:Name>"highway" = 'tertiary'100</ns2:Name>
          <ns2:Description>
            <ns2:Title>"highway" = 'tertiary'100</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:And>
              <ns3:Not>
                <ns3:PropertyIsNull>
                  <ns3:PropertyName>highway</ns3:PropertyName>
                </ns3:PropertyIsNull>
              </ns3:Not>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>highway</ns3:PropertyName>
                <ns3:Literal>tertiary</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:And>
          </ns3:Filter>
          <ns2:MinScaleDenominator>25000</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>100000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer>
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#ffffff</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">2</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">bevel</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
        </ns2:Rule>
        <ns2:Rule>
          <ns2:Name>"highway" = 'primary'</ns2:Name>
          <ns2:Description>
            <ns2:Title>"highway" = 'primary'</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:Or>
              <ns3:And>
                <ns3:Not>
                  <ns3:PropertyIsNull>
                    <ns3:PropertyName>highway</ns3:PropertyName>
                  </ns3:PropertyIsNull>
                </ns3:Not>
                <ns3:PropertyIsEqualTo>
                  <ns3:PropertyName>highway</ns3:PropertyName>
                  <ns3:Literal>primary</ns3:Literal>
                </ns3:PropertyIsEqualTo>
              </ns3:And>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>highway</ns3:PropertyName>
                <ns3:Literal>primary_link</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:Or>
          </ns3:Filter>
          <ns2:MinScaleDenominator>5000</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>25000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer>
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#ffffff</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">14</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">bevel</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
        </ns2:Rule>
        <ns2:Rule>
          <ns2:Name>"highway" = 'secondary'</ns2:Name>
          <ns2:Description>
            <ns2:Title>"highway" = 'secondary'</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:Or>
              <ns3:Or>
                <ns3:Or>
                  <ns3:And>
                    <ns3:Not>
                      <ns3:PropertyIsNull>
                        <ns3:PropertyName>highway</ns3:PropertyName>
                      </ns3:PropertyIsNull>
                    </ns3:Not>
                    <ns3:PropertyIsEqualTo>
                      <ns3:PropertyName>highway</ns3:PropertyName>
                      <ns3:Literal>secondary</ns3:Literal>
                    </ns3:PropertyIsEqualTo>
                  </ns3:And>
                  <ns3:PropertyIsEqualTo>
                    <ns3:PropertyName>highway</ns3:PropertyName>
                    <ns3:Literal>secondary_link</ns3:Literal>
                  </ns3:PropertyIsEqualTo>
                </ns3:Or>
                <ns3:PropertyIsEqualTo>
                  <ns3:PropertyName>highway</ns3:PropertyName>
                  <ns3:Literal>unclassified</ns3:Literal>
                </ns3:PropertyIsEqualTo>
              </ns3:Or>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>highway</ns3:PropertyName>
                <ns3:Literal>road</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:Or>
          </ns3:Filter>
          <ns2:MinScaleDenominator>5000</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>25000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer>
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#ffffff</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">10</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">bevel</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
        </ns2:Rule>
        <ns2:Rule>
          <ns2:Name>"highway" = 'tertiary'</ns2:Name>
          <ns2:Description>
            <ns2:Title>"highway" = 'tertiary'</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:And>
              <ns3:Not>
                <ns3:PropertyIsNull>
                  <ns3:PropertyName>highway</ns3:PropertyName>
                </ns3:PropertyIsNull>
              </ns3:Not>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>highway</ns3:PropertyName>
                <ns3:Literal>tertiary</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:And>
          </ns3:Filter>
          <ns2:MinScaleDenominator>5000</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>25000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer>
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#ffffff</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">8</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">bevel</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
        </ns2:Rule>
        <ns2:Rule>
          <ns2:Name>"highway" = 'residential'</ns2:Name>
          <ns2:Description>
            <ns2:Title>"highway" = 'residential'</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:Or>
              <ns3:And>
                <ns3:Not>
                  <ns3:PropertyIsNull>
                    <ns3:PropertyName>highway</ns3:PropertyName>
                  </ns3:PropertyIsNull>
                </ns3:Not>
                <ns3:PropertyIsEqualTo>
                  <ns3:PropertyName>highway</ns3:PropertyName>
                  <ns3:Literal>residential</ns3:Literal>
                </ns3:PropertyIsEqualTo>
              </ns3:And>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>highway</ns3:PropertyName>
                <ns3:Literal>living_street</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:Or>
          </ns3:Filter>
          <ns2:MinScaleDenominator>5000</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>25000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer>
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#ffffff</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">4</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">bevel</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
        </ns2:Rule>
        <ns2:Rule>
          <ns2:Name>"highway" = 'primary' [ts]</ns2:Name>
          <ns2:Description>
            <ns2:Title>"highway" = 'primary' [ts]</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:Or>
              <ns3:And>
                <ns3:Not>
                  <ns3:PropertyIsNull>
                    <ns3:PropertyName>highway</ns3:PropertyName>
                  </ns3:PropertyIsNull>
                </ns3:Not>
                <ns3:PropertyIsEqualTo>
                  <ns3:PropertyName>highway</ns3:PropertyName>
                  <ns3:Literal>primary</ns3:Literal>
                </ns3:PropertyIsEqualTo>
              </ns3:And>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>highway</ns3:PropertyName>
                <ns3:Literal>primary_link</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:Or>
          </ns3:Filter>
          <ns2:MinScaleDenominator>1</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>5000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#ffffff</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">10</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">bevel</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
        </ns2:Rule>
        <ns2:Rule>
          <ns2:Name>"highway" = 'secondary' [ts]</ns2:Name>
          <ns2:Description>
            <ns2:Title>"highway" = 'secondary' [ts]</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:Or>
              <ns3:Or>
                <ns3:Or>
                  <ns3:And>
                    <ns3:Not>
                      <ns3:PropertyIsNull>
                        <ns3:PropertyName>highway</ns3:PropertyName>
                      </ns3:PropertyIsNull>
                    </ns3:Not>
                    <ns3:PropertyIsEqualTo>
                      <ns3:PropertyName>highway</ns3:PropertyName>
                      <ns3:Literal>secondary</ns3:Literal>
                    </ns3:PropertyIsEqualTo>
                  </ns3:And>
                  <ns3:PropertyIsEqualTo>
                    <ns3:PropertyName>highway</ns3:PropertyName>
                    <ns3:Literal>secondary_link</ns3:Literal>
                  </ns3:PropertyIsEqualTo>
                </ns3:Or>
                <ns3:PropertyIsEqualTo>
                  <ns3:PropertyName>highway</ns3:PropertyName>
                  <ns3:Literal>unclassified</ns3:Literal>
                </ns3:PropertyIsEqualTo>
              </ns3:Or>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>highway</ns3:PropertyName>
                <ns3:Literal>road</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:Or>
          </ns3:Filter>
          <ns2:MinScaleDenominator>1</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>5000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#ffffff</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">8</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">bevel</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
        </ns2:Rule>
        <ns2:Rule>
          <ns2:Name>"highway" = 'tertiary' [ts]</ns2:Name>
          <ns2:Description>
            <ns2:Title>"highway" = 'tertiary' [ts]</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:And>
              <ns3:Not>
                <ns3:PropertyIsNull>
                  <ns3:PropertyName>highway</ns3:PropertyName>
                </ns3:PropertyIsNull>
              </ns3:Not>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>highway</ns3:PropertyName>
                <ns3:Literal>tertiary</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:And>
          </ns3:Filter>
          <ns2:MinScaleDenominator>1</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>5000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#ffffff</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">6</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">bevel</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
        </ns2:Rule>
        <ns2:Rule>
          <ns2:Name>"highway" = 'residential' [ts]</ns2:Name>
          <ns2:Description>
            <ns2:Title>"highway" = 'residential' [ts]</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:Or>
              <ns3:And>
                <ns3:Not>
                  <ns3:PropertyIsNull>
                    <ns3:PropertyName>highway</ns3:PropertyName>
                  </ns3:PropertyIsNull>
                </ns3:Not>
                <ns3:PropertyIsEqualTo>
                  <ns3:PropertyName>highway</ns3:PropertyName>
                  <ns3:Literal>residential</ns3:Literal>
                </ns3:PropertyIsEqualTo>
              </ns3:And>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>highway</ns3:PropertyName>
                <ns3:Literal>living_street</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:Or>
          </ns3:Filter>
          <ns2:MinScaleDenominator>1</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>5000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#ffffff</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">4</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">bevel</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
        </ns2:Rule>
        <ns2:Rule>
          <ns2:Name>"highway" = 'footway' [ts]</ns2:Name>
          <ns2:Description>
            <ns2:Title>"highway" = 'footway' [ts]</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:Or>
              <ns3:Or>
                <ns3:Or>
                  <ns3:And>
                    <ns3:Not>
                      <ns3:PropertyIsNull>
                        <ns3:PropertyName>highway</ns3:PropertyName>
                      </ns3:PropertyIsNull>
                    </ns3:Not>
                    <ns3:PropertyIsEqualTo>
                      <ns3:PropertyName>highway</ns3:PropertyName>
                      <ns3:Literal>footway</ns3:Literal>
                    </ns3:PropertyIsEqualTo>
                  </ns3:And>
                  <ns3:PropertyIsEqualTo>
                    <ns3:PropertyName>highway</ns3:PropertyName>
                    <ns3:Literal>path</ns3:Literal>
                  </ns3:PropertyIsEqualTo>
                </ns3:Or>
                <ns3:PropertyIsEqualTo>
                  <ns3:PropertyName>highway</ns3:PropertyName>
                  <ns3:Literal>pedestrian</ns3:Literal>
                </ns3:PropertyIsEqualTo>
              </ns3:Or>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>highway</ns3:PropertyName>
                <ns3:Literal>steps</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:Or>
          </ns3:Filter>
          <ns2:MinScaleDenominator>1</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>2500</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#ffffff</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">2</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">bevel</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-dasharray">0.0001 4</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
        </ns2:Rule>
        </ns2:FeatureTypeStyle><ns2:FeatureTypeStyle><ns2:Rule>
          <ns2:Name>"highway" = 'primary'</ns2:Name>
          <ns2:Description>
            <ns2:Title>"highway" = 'primary'</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:Or>
              <ns3:And>
                <ns3:Not>
                  <ns3:PropertyIsNull>
                    <ns3:PropertyName>highway</ns3:PropertyName>
                  </ns3:PropertyIsNull>
                </ns3:Not>
                <ns3:PropertyIsEqualTo>
                  <ns3:PropertyName>highway</ns3:PropertyName>
                  <ns3:Literal>primary</ns3:Literal>
                </ns3:PropertyIsEqualTo>
              </ns3:And>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>highway</ns3:PropertyName>
                <ns3:Literal>primary_link</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:Or>
          </ns3:Filter>
          <ns2:MinScaleDenominator>500000</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>5000000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer>
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#ffffb3</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">4</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">bevel</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
        </ns2:Rule>
        <ns2:Rule>
          <ns2:Name>"highway" = 'primary'</ns2:Name>
          <ns2:Description>
            <ns2:Title>"highway" = 'primary'</ns2:Title>
          </ns2:Description>
          <ns3:Filter>
            <ns3:Or>
              <ns3:And>
                <ns3:Not>
                  <ns3:PropertyIsNull>
                    <ns3:PropertyName>highway</ns3:PropertyName>
                  </ns3:PropertyIsNull>
                </ns3:Not>
                <ns3:PropertyIsEqualTo>
                  <ns3:PropertyName>highway</ns3:PropertyName>
                  <ns3:Literal>primary</ns3:Literal>
                </ns3:PropertyIsEqualTo>
              </ns3:And>
              <ns3:PropertyIsEqualTo>
                <ns3:PropertyName>highway</ns3:PropertyName>
                <ns3:Literal>primary_link</ns3:Literal>
              </ns3:PropertyIsEqualTo>
            </ns3:Or>
          </ns3:Filter>
          <ns2:MinScaleDenominator>25000</ns2:MinScaleDenominator>
          <ns2:MaxScaleDenominator>500000</ns2:MaxScaleDenominator>
          <ns2:LineSymbolizer>
            <ns2:Stroke>
              <ns2:SvgParameter name="stroke">#ffffb3</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-width">8</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linejoin">bevel</ns2:SvgParameter>
              <ns2:SvgParameter name="stroke-linecap">round</ns2:SvgParameter>
            </ns2:Stroke>
          </ns2:LineSymbolizer>
        </ns2:Rule>
        </ns2:FeatureTypeStyle></ns0:UserStyle>
  </ns0:NamedLayer>
</ns0:StyledLayerDescriptor>