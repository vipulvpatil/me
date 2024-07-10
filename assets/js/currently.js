import params from "@params"

const displayCurrently = (schedule, tz) => {
  let currentDate = new Date()
  const tzOptions = {
    timeZone: tz,
  }
  const myTzDate = new Date(currentDate.toLocaleString("en-US", tzOptions))
  const hours = myTzDate.getHours()
  const minutes = myTzDate.getMinutes()

  const displayOptions = {
    timeZone: tz,
    year: "numeric",
    month: "short",
    day: "numeric",
    hour: "numeric",
    minute: "numeric",
  }
  let myDisplayDate = currentDate.toLocaleString("en-US", displayOptions)

  let mytimeElement = document.getElementById("mytime")
  if (!!mytimeElement) {
    mytimeElement.innerHTML = myDisplayDate
  }

  var activityElements = [
    document.getElementById("games"),
    document.getElementById("code"),
    document.getElementById("football"),
    document.getElementById("family"),
    document.getElementById("sleep"),
  ]

  activityElements.forEach( element => {
    element.classList.add("unselected")
    element.classList.remove("selected")
  })

  let currently = document.getElementById("family")
  schedule.forEach( element => {
    if ((hours > element.hours) || ((hours == element.hours) && (minutes >= element.minutes))) {
      currently = document.getElementById(element.activity)
    }
  })
  currently.classList.add("selected")
  currently.classList.remove("unselected")
}

window.addEventListener("DOMContentLoaded",function () {
  console.log("READY")
  displayCurrently(params.schedule, params.tz);
})
