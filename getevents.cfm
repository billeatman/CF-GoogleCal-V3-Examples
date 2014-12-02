<cfset gc = createObject("component", "CF-GoogleCal-V3.googlecalendarv3").init(oauth2: application.oauth2)>

<!--- get all calendars --->
<cfset qCal = gc.GetAllCalendars()>

<!--- get the primary calendar --->
<cfquery name="qPrimary" dbtype="query">
	select * from qCal
	where [primary] = <cfqueryparam value="true" cfsqltype="cf_sql_bit">
</cfquery>

<!--- get events for the primary calendar --->
<cfset qEvents = gc.getEvents(calendarId: qPrimary.id)>

<cfdump var="#qEvents#">