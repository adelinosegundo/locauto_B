MACHINE           Vehicle

SEES              Boolean, VehiclesCTX, Category

VARIABLES         vehicles

INVARIANT         vehicles <: VEHICLES_ST

INITIALIZATION    vehicles := {}

OPERATIONS

rr <-- add_vehicle(vv)=
  PRE vv : VEHICLES_ST & vv:dom(category)
  THEN
    IF vv /: vehicles
    THEN vehicles := vehicles \/ {vv}||rr:=true
    ELSE rr:=false
    END
  END;

rr <-- remove_vehicle(vv)=
  PRE 1=1
  THEN
    IF vv : vehicles
    THEN vehicles := vehicles - {vv}||rr:=true
    ELSE rr:=false
    END
  END;

qq <-- query_vehicle(vv) =
  PRE 1=1
  THEN
    IF vv:vehicles
    THEN qq := true
    ELSE qq := false
    END
  END

END
