function hype() {
  document.getElementById("hype").disabled === !1
    ? ((document.getElementById("hype").disabled = !0), music.pause())
    : ((document.getElementById("hype").disabled = !1),
      typeof music == "undefined" && (music = new Audio("/music/gosh.mp3")),
      music.play());
}
