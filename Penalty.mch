MACHINE           Penalty

SEES              Boolean, VehiclesCTX

SETS              CATEGORY_ST={car, motocycle, lux_car}

VARIABLES         category

INVARIANT         category : VEHICLES_ST >+> CATEGORY_ST

INITIALIZATION    category := {}

OPERATIONS

rr <-- set_category(vv, cc)=
  PRE vv : VEHICLES_ST & cc:CATEGORY_ST
  THEN
    IF vv /: dom(category)
    THEN category(vv) := cc||rr:=true
    ELSE rr:=false
    END
  END;

rr <-- change_category(vv, cc)=
  PRE vv : VEHICLES_ST & cc:CATEGORY_ST
  THEN
    IF vv:dom(category) & category(vv)/=cc
    THEN category(vv) := cc || rr:=true
    ELSE rr:=false
    END
  END;

qq, rr <-- query_category(vv) =
  PRE 1=1
  THEN
    IF vv:dom(category)
    THEN qq := category(vv) || rr:= true
    ELSE qq :: CATEGORY_ST || rr:= false
    END
  END

END
