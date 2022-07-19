<%
from datetime import datetime
%>
<html>
<head>
    <link href="static/style.css" rel="stylesheet" />
</head>
<body>
    <div class="nav nav-weapon">
        % for char in user.characters :
        <a href="#char-${char.id}">
            <div style="background: no-repeat url(${char.icon}) bottom right / 20px 20px, url(${char.weapon.icon}) center center / contain;">
                <img class="char-icon" src="${char.icon}" alt="${char.name}"/>
            </div>
        </a>
        % endfor
    </div>
    <div class="content">
        % for char in user.characters :
        <div class="char e-${char.element}-border-color" id="char-${char.id}">
            <div class="char-infographs">
                <div class="char-img" style="background-image:url(${char.image});">
                    <div class="char-info-sphere">
                        <div class="char-level-sphere e-${char.element}-bg-color"><div class="char-level">${char.level}</div></div>
                        <div class="char-level-sphere"><div class="char-friendship">${char.friendship}</div></div>
                    </div>
                    <div class="char-constellations-sphere">
                        % for const in char.constellations:
                        <div class="char-const const-is-actived-${const.activated}" id="const-${const.id}">
                            <div class="char-const-icon e-${char.element}-bg-color"
                                    data-name="${const.name}"
                                    style="background-image:url(${const.icon});">
                            </div>
                        </div>
                        % endfor
                    </div>
                    <div class="char-weapon-img" style="background-image:url(${char.weapon.icon});">
                        <div class="char-weapon-info-sphere">
                            <div class="char-weapon-sphere">
                                <div class="char-weapon-level">${char.weapon.level}</div>
                            </div>
                            <div class="char-weapon-sphere">
                                <div class="char-weapon-affix">R${char.weapon.refinement}</div>
                            </div>
                            <div class="char-weapon-sphere">
                                <div class="char-weapon-affix">&#10022;${char.weapon.ascension}</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="char-info">
                <h1 class="char-name e-${char.element}-color char-rarity-${char.rarity}">${char.name}</h1>
                <div class="char-artefacts">
                    % for artefact in char.artifacts:
                    <div class="char-artefact-icon" id="artefact-${artefact.id}"
                            style="background-image:url(${artefact.icon});"
                            data-name="${artefact.name}">
                        <div class="char-artefact-level char-artefact-rarity-${artefact.rarity}">+${artefact.level}</div>
                    </div>
                    % endfor
                </div>


                <h2 class="char-weapon-name char-weapon-rarity-${char.weapon.rarity}">${char.weapon.name}</h2>

            </div>
        </div>
        % endfor
    </div>
</body>
</html>

