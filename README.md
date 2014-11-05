CF-GoogleCal-V3-Examples
========================

Examples for CF-GoogleCal-V3

Warning, use a test Google account!

This example creates a calendar called "Hello World" and dumps the result.  This has been tested in CF and Railo.

more coming soon...



# Getting Started #

For an example, visit the example project

https://github.com/billeatman/oauth2-Examples.git

# CommandBox #

http://www.ortussolutions.com/products/commandbox

install cf-googlecal-v3-examples

# Getting Started #

Nice starter documentation for oauth2:
http://www.progratory.com/index.cfm/2014/10/31/Getting-started-with-oauth2-for-Google

# Basics #

To get started, fill in your own client_id, client_secret and scope.  These are found in the Google developer console.  Make the changes in application.cfc.  

```
	<cfset application.oauth2 = new oauth2.oauth2(
		client_id 		=   'YOUR %Client ID%',
		client_secret 	= 	'YOUR %Client secret%',
		redirect_uri	=	'http://localhost/GoogleCal/oauth2/index.cfm',
		scope           =   'https://www.googleapis.com/auth/calendar',
		state			=	'',
		access_type		=	'offline', <!--- Use offline for refresh tokens --->
		approval_prompt	=	'force'
	) />
```

Contributors:

Author: William Eatman @billeatman
   
Based on the original GoogleCal by Raymond Camden @raymondcamden
http://googlecal.riaforge.org/

Based on Oauth2 work done by Matt Gifford @coldfumonkeh
http://googleanalytics.riaforge.org/

