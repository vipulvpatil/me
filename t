[1mdiff --git a/assets/css/custom.css b/assets/css/custom.css[m
[1mindex 4d2ff1f..a59bfa6 100644[m
[1m--- a/assets/css/custom.css[m
[1m+++ b/assets/css/custom.css[m
[36m@@ -59,24 +59,33 @@[m [mbody {[m
   margin: auto;[m
   display: flex;[m
   flex-direction: column;[m
[31m-  justify-content: space-evenly;[m
   border-radius: 1rem;[m
   padding: 1rem 0;[m
 }[m
 [m
 .tv-title {[m
[31m-  font-size: 3rem;[m
[32m+[m[32m  font-size: 2rem;[m
[32m+[m[32m  text-align: center;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.tv-subtitle {[m
[32m+[m[32m  font-size: 0.825rem;[m
[32m+[m[32m  line-height: 1.25rem;[m
   text-align: center;[m
[32m+[m[32m  width: 350px;[m
[32m+[m[32m  margin: auto;[m
[32m+[m[32m  padding-bottom: 1rem;[m
 }[m
 [m
 .tv-items {[m
   display: flex;[m
   flex-direction: column;[m
[31m-  margin: 0 auto;[m
[32m+[m[32m  margin: auto auto 0 auto;[m
[32m+[m[32m  flex-grow: 1;[m
 }[m
 [m
 .tv-item {[m
[31m-  padding: 0.5rem;[m
[32m+[m[32m  padding: 0.25rem;[m
   text-align: left;[m
 }[m
 [m
[36m@@ -109,7 +118,6 @@[m [mh2 {[m
 }[m
 [m
 main {[m
[31m-  margin: 0 auto;[m
   min-height: var(--content-height) !important;[m
 }[m
 [m
[1mdiff --git a/content/_index.md b/content/_index.md[m
[1mindex f74a36d..c734f4e 100644[m
[1m--- a/content/_index.md[m
[1m+++ b/content/_index.md[m
[36m@@ -4,15 +4,10 @@[m [mdate = 2024-06-24T11:37:51Z[m
 draft = false[m
 [params][m
   [activity][m
[31m-    title = 'I am currently'[m
[32m+[m[32m    title = 'Hello'[m
[32m+[m[32m    subtitle = 'I am Vipul, software engineer with a deep interests in impactful problem solving.'[m
     list = ['Playing video games', 'Writing code', 'Watching Football', 'Relaxing with family', 'Sound asleep'][m
 +++[m
 [m
[31m-# Hi, I am Vipul [m
[31m-{.columnized}[m
 [m
[31m-## A software engineer at heart️ with a deep interests in impactful problem solving.[m
[31m-{.columnized}[m
[31m-[m
[31m-Based out of Bengaluru 🇮🇳, I am an Engineer, with deep expertise in Golang. In my last role with Coinbase, I was a Senior Software Engineer working as a technical lead for the Coinbase Commerce. Although, primarily a Backend engineer, I have extensive experience in end to end product development with a substantial knowledge of React and Node. I enjoy building products that add value to customer’s life in an impactful way. In code, I value readability, simplicity and robustness above everything else.[m
[31m-{.columnized}[m
[32m+[m[32mhshshs[m
[1mdiff --git a/content/about/index.md b/content/about/index.md[m
[1mindex 48f3970..660ae52 100644[m
[1m--- a/content/about/index.md[m
[1m+++ b/content/about/index.md[m
[36m@@ -6,3 +6,7 @@[m [mdraft = false[m
 [m
 ## Background[m
 Graduating with a **Bachelor's degree in Computer Engineering** was highly sought during the early 2000s in *Mumbai, India*. Doing so in **2008**, meant that I had to navigate the after effects of a [Global Financial Crisis](https://en.wikipedia.org/wiki/2007%E2%80%932008_financial_crisis). Somehow I landed a job as a Flash Game Programmer and began my journey into the world of Software. In **2010**, Steve Job's [open letter](https://en.wikipedia.org/wiki/Thoughts_on_Flash) nudged me towards expanding my limited skillset. By **2012**, I had become an iOS Game Programmer. Come **2014**, I was as a Fullstack developer well settled in *San Francisco, U.S.A.* After a [disaster-ridden](https://en.wikipedia.org/wiki/COVID-19_pandemic) **2020**, I moved back to India to continue life as Backend Programmer. That is where I am **now**[m
[32m+[m
[32m+[m[32m## Current[m
[32m+[m
[32m+[m[32mBased out of Bengaluru 🇮🇳, I am an Engineer, with deep expertise in Golang. In my last role with Coinbase, I was a Senior Software Engineer working as a technical lead for the Coinbase Commerce. Although, primarily a Backend engineer, I have extensive experience in end to end product development with a substantial knowledge of React and Node. I enjoy building products that add value to customer’s life in an impactful way. In code, I value readability, simplicity and robustness above everything else.[m
[1mdiff --git a/layouts/index.html b/layouts/index.html[m
[1mindex b72f770..8eb1d22 100644[m
[1m--- a/layouts/index.html[m
[1m+++ b/layouts/index.html[m
[36m@@ -26,7 +26,10 @@[m
 {{ define "partials/mytv.html"}}[m
   <div class="blackbox">[m
     <div class="greybox">[m
[31m-      <div class="tv-title">{{ .Params.activity.title }}</div>[m
[32m+[m[32m      <div>[m
[32m+[m[32m        <div class="tv-title">{{ .Params.activity.title }}</div>[m
[32m+[m[32m        <div class="tv-subtitle">{{ .Params.activity.subtitle }}</div>[m
[32m+[m[32m      </div>[m
       <div class="tv-items">[m
         {{ range .Params.activity.list}}[m
           {{ partial "mytv-items.html" .}}[m
