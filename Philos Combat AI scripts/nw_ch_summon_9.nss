//::///////////////////////////////////////////////
//:: Associate: On Spawn In
//:: NW_CH_AC9
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*

This must support the OC henchmen and all summoned/companion
creatures.

*/
//:://////////////////////////////////////////////
//:: Created By: Preston Watamaniuk
//:: Created On: Nov 19, 2001
//:://////////////////////////////////////////////
//:: Updated By: Georg Zoeller, 2003-08-20: Added variable check for spawn in animation
//****************************  ADDED AI CODE  *****************************
#include "0i_associates"
//****************************  ADDED AI CODE  *****************************
//#include "X0_INC_HENAI"
#include "x2_inc_switches"
void main()
{
     //Sets up the special henchmen listening patterns
    SetAssociateListenPatterns();

    // Set additional henchman listening patterns
    //bkSetListeningPatterns();
    // * If Incorporeal, apply changes
    if (GetCreatureFlag(OBJECT_SELF, CREATURE_VAR_IS_INCORPOREAL) == TRUE)
    {
        effect eConceal = EffectConcealment(50, MISS_CHANCE_TYPE_NORMAL);
        eConceal = ExtraordinaryEffect(eConceal);
        effect eGhost = EffectCutsceneGhost();
        eGhost = ExtraordinaryEffect(eGhost);
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, eConceal, OBJECT_SELF);
        ApplyEffectToObject(DURATION_TYPE_PERMANENT, eGhost, OBJECT_SELF);
    }
    // Set starting location
    SetAssociateStartLocation();
    //****************************  ADDED AI CODE  *****************************
    ai_OnAssociateSpawn(OBJECT_SELF);
    //****************************  ADDED AI CODE  *****************************
}


