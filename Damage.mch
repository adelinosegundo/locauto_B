MACHINE           Damage

SEES              DamagesCTX, VehiclesCTX, Boolean

VARIABLES         damages

INVARIANT         damages : VEHICLES_ST --> DAMAGES_ST

INITIALIZATION    damages := VEHICLES_ST * {no_damage}

OPERATIONS

apply_damage(dd, vv)=
  PRE dd : DAMAGES_ST-{no_damage} & vv : VEHICLES_ST
  THEN damages(vv) := dd
  END;

rr <-- fix_damage(vv)=
  PRE 1=1
  THEN
    IF damages(vv) /= no_damage
    THEN damages(vv) := no_damage || rr := true
    ELSE rr := false
    END
  END

END
