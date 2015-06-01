MACHINE           Penalty

SEES              Boolean , ClientsCTX

ABSTRACT_VARIABLES penalty

INVARIANT         penalty : CLIENTS_ST --> NAT

INITIALISATION    penalty := CLIENTS_ST * { 0 }

OPERATIONS

rr <-- apply_penalty ( cc , dmgp , dlyp ) =
  PRE cc : CLIENTS_ST & dmgp : NAT & dlyp : NAT
  THEN
    IF ( dmgp + dlyp ) > 0
    THEN penalty ( cc ) := ( dmgp + dlyp ) || rr := true
    ELSE rr := false
    END
  END ;

qq <-- query_penalty ( cc ) =
  PRE cc : CLIENTS_ST
  THEN qq := penalty ( cc )
  END

END
