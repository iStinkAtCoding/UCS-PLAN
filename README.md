# UE Autolisp Routine: Automating UCS and PLAN commands while maintaining current zoom extents and view

## Routine Descriptions:
The UE.LSP routine automates the UCS and PLAN commands for AutoCAD applications. When the Plan command is done it restores the orignal view size and view center as it was when the command UE was initiated. The routine automatically prompts the user to save the UCS with a name.

The PLANZOOM.LSP is a seperate routine that will run the PLAN but restore original view size and view center as it was when the command was initiated.

## How to Use UE.LSP:
1) Load the Lisp file into your AutoCad/Civil3D application
2) Type "UE" into the command line (whatever view you have here, excluding view rotation, will be restored at the end of routine)
3) Type UCS name to save
4) Select points for origin, x axis, and XY Plane (similar to UCS command inputs)

## User Feedback and Personal Improvement
Although this routine is simple, I feel it could be used by others as I could not find something similar online. I would love to hear feedback or help with any modifications someone may need.
