MACHINE           Damage

SEES              DamagesCTX, VehiclesCTX, Boolean

VARIABLES         damage_price, damages

INVARIANT         damage_price : DAMAGES_ST +-> NAT & damages : VEHICLES_ST --> DAMAGES_ST

INITIALIZATION    damage_price, damages := {no_damage|->0}, VEHICLES_ST * {no_damage}

OPERATIONS

set_damage_price(dd, pp)=
  PRE dd : DAMAGES_ST & pp:NAT
  THEN damage_price(dd) := pp
  END;

apply_damage(dd, cc)=
  PRE dd : DAMAGES_ST & cc : VEHICLES_ST
  THEN damages(cc) := dd
  END;

rr <-- fix_damage(cc)
  PRE 1=1 
  THEN 
    IF cc : dom(damages)
    THEN damages(cc) := no_damage || rr := true
    ELSE rr := false
    END
  END;

qq <-- query_damage_penalty(cc)=
  PRE cc : VEHICLES_ST
  THEN qq := damage_price(damages(cc)) 
  END;

qq, rr <-- query_damage_price(dd) =
  PRE 1=1
  THEN
    IF dd:dom(damage_price)
    THEN qq := damage_price(dd) || rr:= true
    ELSE qq :: NAT || rr:= false
    END
  END

END
