<cfset gc = createObject("component", "CF-GoogleCal-V3.googlecalendarv3").init(oauth2: application.oauth2)>

<cfset qCal = gc.createCalendar(summary: 'Hello World', description: "Hello World Calendar")>
<cfdump var="#qCal#">
