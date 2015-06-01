MACHINE           Damage

SEES              DamagesCTX , VehiclesCTX , Boolean

ABSTRACT_VARIABLES damages

INVARIANT         damages : VEHICLES_ST --> DAMAGES_ST

INITIALISATION    damages := VEHICLES_ST * { no_damage }

OPERATIONS

apply_damage ( dd , vv ) =
  PRE dd : DAMAGES_ST & dd /= no_damage & vv : VEHICLES_ST
  THEN damages ( vv ) := dd
  END ;

rr <-- fix_damage ( vv ) =
  PRE vv : VEHICLES_ST
  THEN
    IF damages ( vv ) /= no_damage
    THEN damages ( vv ) := no_damage || rr := true
    ELSE rr := false
    END
  END

END
