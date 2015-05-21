MACHINE           Rent

INCLUDES          Penalty

USES              Client , Vehicle

SEES              Boolean , Category , Time , Price , Damage , ClientsCTX , VehiclesCTX

ABSTRACT_VARIABLES rents , return_date

INVARIANT         rents : clients >+> vehicles & return_date : ran ( rents ) --> NAT1

INITIALISATION    rents , return_date := {} , {}

OPERATIONS

rr <-- rent ( cc , vv , rd ) =
  PRE vv : VEHICLES_ST & cc : CLIENTS_ST & rd : NAT1 & rd > time
  THEN
    IF vv : vehicles & cc : clients & cc /: dom ( rents ) & vv /: ran ( rents ) & penalty ( cc ) = 0
    THEN rents ( cc ) := vv || return_date ( vv ) := rd || rr := true
    ELSE rr := false
    END
  END ;

rr , rp <-- return ( cc ) =
  PRE cc : CLIENTS_ST
  THEN
    IF cc : dom ( rents )
    THEN
        IF return_date ( rents ( cc ) ) < time
        THEN
            rents := { cc } <<| rents ||
            return_date := {} <<| return_date ||
            rp <-- apply_penalty ( cc , damage_price ( damages ( rents ( cc ) ) ) , ( time - return_date ( rents ( cc ) ) * delay_price ( category ( rents ( cc ) ) ) ) ) ||
            rr := true
        ELSE
            rents := { cc } <<| rents ||
            return_date := { rents ( cc ) } <<| return_date ||
            rp <-- apply_penalty ( cc , damage_price ( damages ( rents ( cc ) ) ) , 0 ) ||
            rr := true
        END
    ELSE rr := false ||
        rp := false
    END
  END ;

qq <-- query_rents ( cc , vv ) =
  PRE cc : CLIENTS_ST & vv : VEHICLES_ST
  THEN
    IF cc : dom ( rents ) & vv : ran ( rents ) & rents ( cc ) = vv
    THEN qq := true
    ELSE qq := false
    END
  END ;

qq <-- query_rented ( vv ) =
  PRE vv : VEHICLES_ST
  THEN
    IF vv : ran ( rents )
    THEN qq := true
    ELSE qq := false
    END
  END ;

qq <-- query_renter ( cc ) =
  PRE cc : CLIENTS_ST
  THEN
    IF cc : dom ( rents )
    THEN qq := true
    ELSE qq := false
    END
  END

END
