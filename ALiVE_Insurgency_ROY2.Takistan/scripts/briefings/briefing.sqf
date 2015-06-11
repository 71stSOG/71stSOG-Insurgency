/*
  _____
  \_   \_ __  ___ _   _ _ __ __ _  ___ _ __   ___ _   _
   / /\/ '_ \/ __| | | | '__/ _` |/ _ \ '_ \ / __| | | |
/\/ /_ | | | \__ \ |_| | | | (_| |  __/ | | | (__| |_| |
\____/ |_| |_|___/\__,_|_|  \__, |\___|_| |_|\___|\__, |
                            |___/                 |___/

@filename: briefing.sqf

Author:

	Hazey

Last modified:

	1/17/2015

Description:

	Mission Briefing.
______________________________________________________*/	

player createDiarySubject ["insPage","ALiVE Insurgency"];
player createDiarySubject ["radioPage","Radio Frequencies"];
player createDiarySubject ["rulesPage","Server Rules"];
player createDiarySubject ["71stPage","71st"];

player createDiaryRecord ["insPage", ["Advanced Roles",
"<br/><t size=2 align=left>Medic - Deploy Mash</t><br/>
===========<br/><br/>
- Allows you to deploy a new respawn point for your side.<br/><br/>
- Only one respawn point per medic can be deployed at a time.<br/><br/>
- Must be within 5 meteres to un-deploy.<br/><br/>
- When the medic dies, so does the respawn point! - Protect the medic! -<br/><br/>

<br/><t size=2 align=left>Engineer/MG - Deploy Sandbag</t><br/>
===========<br/><br/>
- Allows you to spawn a small sandbag for protection 2 meters in front of you.<br/><br/>
- Only one sandbag per engineer/mg can be deployed at a time.<br/><br/>
- Must be within 5 meteres to un-deploy.<br/><br/>
<br/><br/><br/>

These are still WIP.
"]];

player createDiaryRecord ["insPage", ["About",
"<br/>DESCRIPTION<br/>
===========<br/><br/>
Insurgency | ALiVE is a throwback to the old Arma 2 Insurgency by Fireball+Pogoman<br/><br/>
Players must search houses or kill enemy units to find randomly generated INTEL items which mark enemy cache locations.<br/><br/>
Destroy X amount of cache locations and win!<br/><br/>

<t size=2 align=left>How to play?</t><br/>
Search and clear the indicated red grids. (When Enabled VIA CQB module)<br/><br/>
When a grid is cleared it will turn green.<br/><br/>
Be sure to search the houses for randomly generated INTEL items.<br/><br/>
Picking up INTEL items will create a marker in the general area of a cache location.<br/><br/>
Find and destroy the cache.<br/><br/>

<t size=2 align=left>Who with?</t><br/>
Join our teamspeak 3 channel (ts3.71stSOG.com) to meet up with others on the map, or use the ingame VOIP.<br/><br/>

CREDITS
========<br/><br/>

Roy
I owe everything to Hazey

Hazey<br/>
ALiVE Dev team<br/>
Highhead, Tupolov, ARjay<br/>
PogoMan - Old Insurgency idea<br/>
Fireball - Old Insurgency idea<br/>
"]];

player createDiaryRecord ["whiskeyPage", ["Now Recruiting",
"<br/>Now Recruiting<br/>
===========<br/><br/>
http://71stsog.com/<br/><br/>
18+ Community<br/><br/><br/><br/>

<br/>News<br/>
===========<br/><br/>
Admins wear the [LXXI] Tags. Their say is final.<br/>
Found a bug? Post it on our forums. http://71stsog.com/<br/>
Looking for a squad? Were recruiting!<br/>
"]];

player createDiaryRecord ["rulesPage", ["Rules",
"<br/>71st Public Server Rules<br/>
===========<br/><br/>
1. Hacking and mission exploitation will not be tolerated.<br/>
2. Intentional team-killing will not be tolerated.<br/>
3. Excessive, unintentional team-killing may result in a Kick/Ban.<br/>
4. Unnecessary destruction of BLUFOR vehicles will not be tolerated.<br/>
5. Verbal abuse and bullying will not be tolerated.<br/>
6. Firing a weapon on base may result in a Kick/Ban.<br/>
7. Griefing and obstructive play will not be tolerated.<br/>
8. Excessive mic spamming will not be tolerated.<br/>
9. A server moderator or admins word is final.<br/>
10. Landing inside of the HQ may result in a warning or kick.<br/><br/>

By remaining on this server, you hereby agree to the above.<br/><br/>

Enjoy your stay.

"]];

player createDiaryRecord ["radioPage", ["Radio SOPs",
"<br/>ACRE2 REQUIRED<br/>
===========<br/><br/>

Infantry<br/>
===========<br/>
Alpha - 343 - Preset 1<br/>
Bravo - 343 - Preset 2<br/>
Charlie - 343 - Preset 3<br/><br/>

Squad to Squad - 152/117 - Preset 4<br/><br/>

Support<br/>
===========<br/>
Air Trans - 152/117 - Preset 5<br/>
Cas - 152/117 - Preset 6<br/>
Armor - 152/117 - Preset 7<br/>
Artillery - 152/117 - Preset 8<br/><br/>


Command and Control - 152/117 - Preset 10<br/><br/>


All infantry inner squad communications will be with a 343 on the squads designated preset frequency. <br/><br/>

All squad leaders are to have a 117 long range radio or have a designated RTO with a 117 on preset 4.<br/><br/>

Support squads are free to use long range radios for inner squad communications on designated frequency as well as Command and Control frequency.<br/><br/>

"]];

player createDiaryRecord ["radioPage", ["Teamspeak IP",
"<br/>ts3.71stSOG.com<br/>

"]];
