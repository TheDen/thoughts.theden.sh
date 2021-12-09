function hype () {
	var sheet = window.document.styleSheets[0];
	sheet.insertRule('*, *:before, *:after { cursor: url("/cursor.png"), auto; }', sheet.cssRules.length);
  console.log("updated")
}
