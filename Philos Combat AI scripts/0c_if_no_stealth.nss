/*//////////////////////////////////////////////////////////////////////////////
 Script: 0c_if_no_stealth
 Programmer: Philos
////////////////////////////////////////////////////////////////////////////////
 Text Appears When script that checks to see if the henchmen is either in
 stealth mode or not.
*///////////////////////////////////////////////////////////////////////////////
#include "0i_main"
int StartingConditional()
{
    return (!GetStealthMode(OBJECT_SELF));
}
