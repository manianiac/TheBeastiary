<html>
<head>

    <link rel="stylesheet" type="text/css" href="resources/css/jquery.mobile.flatui.css" />
    <link rel="stylesheet" type="text/css" href="resources/css/cardUI.css" />
    <link rel="stylesheet" type="text/css" href="resources/css/smoothness/jquery-ui.theme.min.css" />
    <script src="resources/js/jquery.js"></script>
    <script>
        $(document).bind('mobileinit', function() {
            $.mobile.changePage.defaults.changeHash = false;
            $.mobile.hashListeningEnabled = false;
            $.mobile.pushStateEnabled = false;
        });
    </script>
    <script src="resources/js/jquery.mobile-1.4.0-rc.1.js"></script>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>




<title>Statblock example</title><style>
      body {
        margin: 0;
      }

      stat-block {
        /* A bit of margin for presentation purposes, to show off the drop
        shadow. */
        margin-left: 20px;
        margin-top: 20px;
      }
    </style></head><body><template id="tapered-rule">
  <style>
    svg {
      fill: #922610;
      /* Stroke is necessary for good antialiasing in Chrome. */
      stroke: #922610;
      margin-top: 0.7em;
      margin-bottom: 0.35em;
    }
  </style>
  <svg height="5" width="400">
    <polyline points="0,0 400,2.5 0,5"></polyline>
  </svg>
</template><script>
(function(window, document) {
  var elemName = 'tapered-rule';
  var thatDoc = document;
  var thisDoc = (thatDoc.currentScript || thatDoc._currentScript).ownerDocument;
  var proto = Object.create(HTMLElement.prototype, {
    createdCallback: {
      value: function() {
        var template = thisDoc.getElementById(elemName);
        var clone = thatDoc.importNode(template.content, true);
        this.createShadowRoot().appendChild(clone);
      }
    }
  });
  thatDoc.registerElement(elemName, {prototype: proto});
})(window, document);
</script><template id="top-stats">
  <tapered-rule></tapered-rule>
  <content></content>
  <tapered-rule></tapered-rule>
</template><script>
(function(window, document) {
  var elemName = 'top-stats';
  var thatDoc = document;
  var thisDoc = (thatDoc.currentScript || thatDoc._currentScript).ownerDocument;
  var proto = Object.create(HTMLElement.prototype, {
    createdCallback: {
      value: function() {
        var template = thisDoc.getElementById(elemName);
        var clone = thatDoc.importNode(template.content, true);
        this.createShadowRoot().appendChild(clone);
      }
    }
  });
  thatDoc.registerElement(elemName, {prototype: proto});
})(window, document);
</script><template id="creature-heading">
  <style>
    ::content > h1 {
      font-family: 'Lora', 'Calisto MT', 'Bookman Old Style', Bookman,
                    'Goudy Old Style', Garamond, 'Hoefler Text',
                    'Bitstream Charter', Georgia, serif;
      color: #7A200D;
      font-weight: 700;
      margin-top: -6px;
      margin-bottom: -2px;
      font-size: 25px;
      letter-spacing: 2px;
      font-variant: small-caps;
    }

    ::content > h2 {
      font-weight: normal;
      font-style: italic;
      font-size: 12px;
      margin: 0;
    }
  </style>
  <content select="h1"></content>
  <content select="h2"></content>
</template><script>
(function(window, document) {
  var elemName = 'creature-heading';
  var thatDoc = document;
  var thisDoc = (thatDoc.currentScript || thatDoc._currentScript).ownerDocument;
  var proto = Object.create(HTMLElement.prototype, {
    createdCallback: {
      value: function() {
        var template = thisDoc.getElementById(elemName);
        var clone = thatDoc.importNode(template.content, true);
        this.createShadowRoot().appendChild(clone);
      }
    }
  });
  thatDoc.registerElement(elemName, {prototype: proto});
})(window, document);
</script><template id="abilities-block">
  <style>
    :host {
      color: #7A200D;
    }

    table {
      width: 100%;
      border: 0px;
      border-collapse: collapse;
    }
    th, td {
      width: 50px;
      text-align: center;
    }
  </style>
  <tapered-rule></tapered-rule>
  <table>
    <tbody><tr>
      <th>STR</th>
      <th>DEX</th>
      <th>CON</th>
      <th>INT</th>
      <th>WIS</th>
      <th>CHA</th>
    </tr>
    <tr>
      <td id="str"></td>
      <td id="dex"></td>
      <td id="con"></td>
      <td id="int"></td>
      <td id="wis"></td>
      <td id="cha"></td>
    </tr>
  </tbody></table>
  <tapered-rule></tapered-rule>
</template><script>
(function(window, document) {
  function abilityModifier(abilityScore) {
    var score = parseInt(abilityScore, 10);
    return Math.floor((score - 10) / 2);
  }

  function formattedModifier(abilityModifier) {
    if (abilityModifier >= 0) {
      return '+' + abilityModifier;
    }
    // This is an en dash, NOT a "normal" dash. The minus sign needs to be more
    // visible.
    return '–' + Math.abs(abilityModifier);
  }

  function abilityText(abilityScore) {
    return [String(abilityScore),
            ' (',
            formattedModifier(abilityModifier(abilityScore)),
            ')'].join('');
  }

  var elemName = 'abilities-block';
  var thatDoc = document;
  var thisDoc = (thatDoc.currentScript || thatDoc._currentScript).ownerDocument;
  var proto = Object.create(HTMLElement.prototype, {
    createdCallback: {
      value: function() {
        var template = thisDoc.getElementById(elemName);
        var clone = thatDoc.importNode(template.content, true);
        var root = this.createShadowRoot().appendChild(clone);
      }
    },
    attachedCallback: {
      value: function() {
        var root = this.shadowRoot;
        for (var i = 0; i < this.attributes.length; i++) {
          var attribute = this.attributes[i];
          var abilityShortName = attribute.name.split('-')[1];
          root.getElementById(abilityShortName).textContent =
             abilityText(attribute.value);
        }

      }
    }
  });
  thatDoc.registerElement(elemName, {prototype: proto});
})(window, document);
</script><template id="property-block">
  <style>
    ::content > h4 {
      display: inline;
      font-weight: bold;
      font-style: italic;
    }

    ::content > p {
      display: inline;
    }

    p {
      margin-top: 0.3em;
      margin-bottom: 0.9em;
    }
  </style>
  <p><content></content></p>
</template><script>
(function(window, document) {
  var elemName = 'property-block';
  var thatDoc = document;
  var thisDoc = (thatDoc.currentScript || thatDoc._currentScript).ownerDocument;
  var proto = Object.create(HTMLElement.prototype, {
    createdCallback: {
      value: function() {
        var template = thisDoc.getElementById(elemName);
        var clone = thatDoc.importNode(template.content, true);
        this.createShadowRoot().appendChild(clone);
      }
    }
  });
  thatDoc.registerElement(elemName, {prototype: proto});
})(window, document);
</script><template id="property-line">
  <style>
    :host {
      color: #7A200D;
    }

    div {
      /* Indenting everything EXCEPT the first line. */
      text-indent: -1em;
      margin-left: 1em;
    }

    ::content > * {
      display: inline;
    }

    ::content > p {
      margin-left: 0.4em;
    }
  </style>
  <!-- Specific select expressions needed instead of just one <content>
  to avoid the original witespace between the elements.  -->
  <div><content select="h4"></content><content select="p"></content></div>
</template><script>
(function(window, document) {
  var elemName = 'property-line';
  var thatDoc = document;
  var thisDoc = (thatDoc.currentScript || thatDoc._currentScript).ownerDocument;
  var proto = Object.create(HTMLElement.prototype, {
    createdCallback: {
      value: function() {
        var template = thisDoc.getElementById(elemName);
        var clone = thatDoc.importNode(template.content, true);
        this.createShadowRoot().appendChild(clone);
      }
    }
  });
  thatDoc.registerElement(elemName, {prototype: proto});
})(window, document);
</script><template id="stat-block">
  <style>
    :host {
      width: 424px;
      display: block;
	  <!--float: right;-->
    }

    #content-wrap {
      font-family: 'Noto Sans', 'Myriad Pro', Calibri, Helvetica, Arial,
                    sans-serif;
      font-size: 13px;
      display: block;
      background: #FDF1DC;
      padding: 0.6em;
      border: 1px #DDD solid;
      box-shadow: 0 0 1.5em #867453;

      /* We don't want the box-shadow in front of the bar divs. */
      position: relative;
      z-index: 0;

      /* Leaving room for the two bars to protrude outwards */
      margin-left: 2px;
      margin-right: 2px;
    }

    ::content > h3 {
      border-bottom: 1px solid #7A200D;
      color: #7A200D;
      font-size: 18px;
      font-variant: small-caps;
      font-weight: normal;
      letter-spacing: 1px;
      margin: 0;
    }

    /* Last block shouldn't have margin, too much white space. */
    ::content property-block:last-child /deep/ p {
      margin-bottom: 0;
    }

    .bar {
      height: 5px;
      background: #E69A28;
      border: 1px solid #000;
      position: relative;
      z-index: 1;
    }
  </style>
  <div class="bar"></div>
  <div id="content-wrap">
    <content></content>
  </div>
  <div class="bar"></div>
</template><script>
(function(window, document) {
  var elemName = 'stat-block';
  var thatDoc = document;
  var thisDoc = (thatDoc.currentScript || thatDoc._currentScript).ownerDocument;
  var proto = Object.create(HTMLElement.prototype, {
    createdCallback: {
      value: function() {
        var template = thisDoc.getElementById(elemName);
        var clone = thatDoc.importNode(template.content, true);
        this.createShadowRoot().appendChild(clone);
      }
    }
  });
  thatDoc.registerElement(elemName, {prototype: proto});
})(window, document);
</script>


<body>
    <div data-role="page">
	
		
        <div class="card">
            <div class="image">
                <img src="resources/content/orcShaman.jpg">
            </div>
			</div>
		<div class = "card">
            <div class="content">
                
                    <creature-heading>
                        <h1>Animated Armor</h1>
                        <h2>Medium construct, unaligned</h2>
                    </creature-heading>

                    <top-stats>
                        <property-line>
                            <h4>Armor Class</h4>
                            <p>18 (natural armor)</p>
                        </property-line>
                        <property-line>
                            <h4>Hit Points</h4>
                            <p>33 (6d8 + 6)</p>
                        </property-line>
                        <property-line>
                            <h4>Speed</h4>
                            <p>25ft</p>
                        </property-line>

                        <abilities-block data-cha="1" data-con="13" data-dex="11" data-int="1" data-str="14" data-wis="3"></abilities-block>

                        <property-line>
                            <h4>Damage Immunities</h4>
                            <p>poison, psychic</p>
                        </property-line>
                        <property-line>
                            <h4>Condition Immunities</h4>
                            <p>blinded, charmed, deafened, exhaustion, frightened, paralyzed, petrified, poisoned</p>
                        </property-line>
                        <property-line>
                            <h4>Senses</h4>
                            <p>blindsight 60 ft. (blind beyond this radius), passive Perception 6</p>
                        </property-line>
                        <property-line>
                            <h4>Languages</h4>
                            <p>-</p>
                        </property-line>
                        <property-line>
                            <h4>Challenge</h4>
                            <p>1 (200 XP)</p>
                        </property-line>
                    </top-stats>
					</div>
					</div>
					
					<div class = "card">
            <div class="content">
					
                    <property-block>
                        <h4>Antimagic Susceptibility.</h4>
                        <p>The armor is incapacitated while in the area of an <i>antimagic
        field</i>. If targeted by <i>dispel magic</i>, the armor must succeed on a Constitution saving throw against the caster’s spell save DC or fall unconscious for 1 minute.</p>
                    </property-block>
                    <property-block>
                        <h4>False Appearance.</h4>
                        <p>While the armor remains motionless, it is indistinguishable from a normal suit of armor.</p>
                    </property-block>

                    <h3>Actions</h3>

                    <property-block>
                        <h4>Multiattack.</h4>
                        <p>The armor makes two melee attacks.</p>
                    </property-block>

                    <property-block>
                        <h4>Slam.</h4>
                        <p><i>Melee Weapon Attack:</i> +4 to hit, reach 5 ft., one target.
                            <i>Hit:</i> 5 (1d6 + 2) bludgeoning damage.</p>
                    </property-block>
            </div>
			</div>
			
			
            <div class="card">
				<div class="content">
					<form action="/html/tags/html_form_tag_action.cfm" method="post">
						<div>
							<textarea name="comments" id="comments" rows="4" cols="60" style="'Lora', 'Calisto MT', 'Bookman Old Style', Bookman,
									'Goudy Old Style', Garamond, 'Hoefler Text',
									'Bitstream Charter', Georgia, serif;font-size:12px;"></textarea>
						</div>
						<input type="submit" value="Save">
					</form>
				</div>
			</div>
			
			<div class="card">
			<div class="content">
				<a href='#'>Creator Name</a>
				<h4> Date Created </h4>
				<h4>Image From: www.image.com</h4>
            </div>
			</div>
		
		
		<p> </p>
		
    </div>
</body>
</html>