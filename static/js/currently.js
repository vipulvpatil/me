const displayCurrently = () => {
  console.log("READY")
  var activityElements = [
    document.getElementById("games"),
    document.getElementById("code"),
    document.getElementById("football"),
    document.getElementById("family"),
    document.getElementById("sleep"),
  ]

  activityElements.forEach( element => {
    element.classList.add("unselected")
  })

  const currently = activityElements[Math.floor(Math.random()*activityElements.length)]
  currently.classList.remove("unselected")
}

window.addEventListener('DOMContentLoaded',function () {
  displayCurrently();
})
