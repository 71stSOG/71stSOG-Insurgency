Script name :  Close Air Support
Author      :  JW Custom 
Version     :  0.1b




Changelog:
----------

v0.1b

- Initial release




Mission implementation:
-----------------------

1). Copy/move description.ext into your mission folder. If you already
    got one then copy the content from this one into your own.

2). Copy/move init.sqf into your mission folder. If you already
    got one then copy/paste the content from this one into your own.

3). Copy/move the JWC_CASFS folder into your mission folder.

4). Add line below to the init field of the unit/object which should carry the CAS Field System.

    null = [this, 500, true, 2] execVM "JWC_CASFS\addAction.sqf"




Parameters:
-----------

Param 0 = [this, 500, true, 2] -> Object/unit to assign the action.
          ------

Param 1 = [this, 500, true, 2] -> Max distance in meters allowed between requester and target.
                -----               

Param 2 = [this, 500, true, 2] -> If true only owner of action can call it. If owner is not
                     ------       "Man" action won't get locked to owner even if the param is true!

Param 3 = [this, 500, true, 2] -> Max number of time allowed to call in CAS. Canceled requests
                           ---    and aborted access is not counted.



Munition types:
---------------

JDAM         : Laser Guided Mk82 (Based on map click)

CBU(AP)      : Cluster Bomb Anti-Personnel (Based on map click)

JDAM/CBU(AP) : Combo of above (Based on map click)




Info:
-----

Icons of spotted vehicles on the map ain't placed correctly so setting target position
directly on this icon will result in being of actual target!

To help this issue you can toggle the "Snap to nearest target" by pressing [A] while the
CAS menu is open. Only targets which user have a knowsAbout value higher than 2.5 will be
snapped to.    



Ingame usage:
-------------

1). Select the "Open CAS Field System" action from the action menu(mouse scroll).

2). Click on map to mark target position. If needed you can toggle the "snap" function
    by pressing [A] to snap target position to nearest known target for precision with
    vehicle targets mainly.

3). Select munition.

4). Click "Request CAS" button to complete the request or click "Exit Menu" to abort. 

5). If you need to cancel enroute CAS select the "Request Close Air Support" action
    from the action menu and click "Cancel CAS". 
