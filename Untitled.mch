MACHINE Rent

EXTENDS           Time, Penalty

USES              Client, Vehicle

SEES              Boolean, Category, Price, ClientsCTX

VARIABLES         rents, return_date

INVARIANT         rents : clients >+> vehicles & return_date : ran(rents) --> NAT1

INITIALIZATION    rents, return_date := {}, {}

OPERATIONS

rr <-- rent(cc, vv, rd)=
  PRE vv : vehicles & cc : clients & rd:NAT1 & rd > time
  THEN
    IF cc /: dom(rents) & vv /: ran(rents) & penalty(cc) = 0
    THEN rents(cc) := vv||return_date(vv) := rd||rr:=true
    ELSE rr:=false
    END
  END;

rr <-- return(cc)=
  PRE cc:CLIENTS_ST
  THEN
    IF cc : dom(rents)
    THEN rr := apply_penalty(cc, 0,  0)
    ELSE rr:=false
    END
  END;

pp <--penalty_by_delay(vv)=
  PRE vv:ran(rents)
  THEN pp := delay_price(category(vv))*query_delay(return_date(vv))
  END;

qq <-- query_rents(cc, vv)=
  PRE 1=1
  THEN
    IF cc : dom(rents) & vv : ran(rents) & rents(cc) = vv
    THEN qq := true
    ELSE qq := false
    END
  END;

qq <-- query_rented(vv)=
  PRE 1=1
  THEN
    IF vv : ran(rents)
    THEN qq := true
    ELSE qq := false
    END
  END;

qq <-- query_renter(cc)=
  PRE 1=1
  THEN
    IF cc : dom(rents)
    THEN qq := true
    ELSE qq := false
    END
  END

END
