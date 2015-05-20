MACHINE           Penalty

USES              Client

SEES              Boolean

VARIABLES         penalty

INVARIANT         penalty : clients +-> NAT

INITIALIZATION    penalty := clients*{0}

OPERATIONS

rr <-- apply_penalty(cc, dmgp, dlyp)=
  PRE cc:clients & dmgp:NAT & dlyp:NAT
  THEN
    IF (dmgp + dlyp) > 0
    THEN penalty(cc):=(dmgp + dlyp) || rr:= true
    ELSE rr:= false
    END
  END;

qq <-- query_penalty(cc)=
  PRE 1=1
  THEN qq := penalty(cc)
  END

END
