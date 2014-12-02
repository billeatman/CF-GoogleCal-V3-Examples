<cfset gc = createObject("component", "CF-GoogleCal-V3.googlecalendarv3").init(oauth2: application.oauth2)>

<!--- get all calendars --->
<cfset qCal = gc.GetAllCalendars()>
<cfdump var="#qCal#">
