MACHINE Client

SEES Boolean

INCLUDES ClientsCTX

OPERATIONS

add_client(cc)=
  PRE cc /: CLIENTS
  THEN CLIENTS := CLIENTS \/ {cc}
  END;

remove_client(cc)=
  PRE cc : CLIENTS
  THEN CLIENTS := CLIENTS - {cc}
  END;

pp <-- query_client(cc)=
  PRE 1=1
  THEN
    IF cc : CLIENTS
    THEN pp := true
    ELSE pp := false
    END
  END

END