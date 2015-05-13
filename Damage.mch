MACHINE           Damage

SEES              DamagesCTX

VARIABLES         damage_price

INVARIANT         damage_price : DAMAGES_ST +-> NAT

INITIALIZATION    damage_price := {no_damage|->0}

OPERATIONS

set_damage_price(dd, pp)=
  PRE dd : DAMAGES_ST & pp:NAT
  THEN damage_price(dd) := pp
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
