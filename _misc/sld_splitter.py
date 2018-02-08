"""
Small utility to make QGIS SLDs more geoserver comptabile :
- It splits the style in several FeatureTypeStyle to take QGIS drawing order into account
- It uses real world units for all rules that contain [ts] (for truescale)
"""

from xml.etree import ElementTree
import copy


input_file = "C:\\Users\\Olivier\\Dropbox\\Affaires\\SPC\\Sources\\geonode-offlineosm\\geonode_offlineosm\\styles\\offline_osm_lines.sld"
output_file = "C:\\Users\\Olivier\\Dropbox\\Affaires\\SPC\\Sources\\geonode-offlineosm\\geonode_offlineosm\\styles\\offline_osm_lines_split.sld"

tree = ElementTree.parse(input_file)
root = tree.getroot()

sld = "{http://www.opengis.net/sld}"
se = "{http://www.opengis.net/se}"

userstyle = root.find("./{sld}NamedLayer/{sld}UserStyle".format(sld=sld, se=se))
base_fts = userstyle.find("./{se}FeatureTypeStyle".format(sld=sld, se=se))

root.find("./{sld}NamedLayer/{sld}UserStyle".format(sld=sld, se=se)).remove(base_fts)

background_line_colors = [
    # ^^^ BACKGROUND ^^^
    # rivers backgrounds
    '#b4c8c8',
    # rivers foregrounds
    '#cce4e4',
    # roads backgrounds
    '#000000',
    # roads foregrounds
    '#e6e6e6',
    '#ffffff',
    '#ffffb3',
    # vvv FOREGROUND vvv
]

layered_fts = []
for _ in range(len(background_line_colors)+1):
    layered_fts.append( ElementTree.Element("{se}FeatureTypeStyle".format(sld=sld, se=se)) )


for i,rule in enumerate(base_fts.findall("./{se}Rule".format(sld=sld, se=se))):
    rulename = rule.find("./{se}Name".format(sld=sld, se=se))
    truescale = rulename is not None and ("[ts]" in rulename.text)

    rules = {}

    for linesymbol in rule.findall("{se}LineSymbolizer".format(sld=sld, se=se)):
        stroke = linesymbol.find("{se}Stroke".format(sld=sld, se=se))
        param = stroke.find("{se}SvgParameter[@name='stroke']".format(sld=sld, se=se))

        index = background_line_colors.index(param.text)            
        if index not in rules:
            rules[index] = copy.deepcopy(rule)
            for ls in rules[index].findall("{se}LineSymbolizer".format(sld=sld, se=se)):
                rules[index].remove(ls)

        if truescale:
            linesymbol.attrib["uom"] = "http://www.opengeospatial.org/se/units/metre"
        
        rules[index].append(linesymbol)

    for key, rule in rules.items():
        layered_fts[key].append( rule )

for i,fts in enumerate(layered_fts):
    if len(fts.findall("./{se}Rule".format(sld=sld, se=se))):
        userstyle.append(fts)



tree.write(output_file, encoding="UTF-8",xml_declaration=True, short_empty_elements=False)

# from xml.dom.minidom import D