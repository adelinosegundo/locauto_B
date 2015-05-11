MACHINE           Rent

INCLUDES          Client, Vehicle

SEES              Boolean

VARIABLES         rents

INVARIANT         rents : clients >+> vehicles

INITIALIZATION    rents := {}

OPERATIONS

rr <-- rent(cc, vv)=
  PRE vv : vehicles & cc : clients
  THEN
    IF cc /: dom(rents) & vv /: ran(rents)
    THEN rents(cc) := vv||rr:=true
    ELSE rr:=false
    END
  END;

rr <-- return(cc)=
  PRE 1=1
  THEN
    IF cc : dom(rents)
    THEN rents := {cc} <<| rents||rr:=true
    ELSE rr:=false
    END
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
