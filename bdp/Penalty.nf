Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Penalty))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Penalty))==(Machine(Penalty));
  Level(Machine(Penalty))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Penalty)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Penalty))==(Boolean,ClientsCTX)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Penalty))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Penalty))==(?);
  List_Includes(Machine(Penalty))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Penalty))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Penalty))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Penalty))==(?);
  Context_List_Variables(Machine(Penalty))==(?);
  Abstract_List_Variables(Machine(Penalty))==(?);
  Local_List_Variables(Machine(Penalty))==(penalty);
  List_Variables(Machine(Penalty))==(penalty);
  External_List_Variables(Machine(Penalty))==(penalty)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Penalty))==(?);
  Abstract_List_VisibleVariables(Machine(Penalty))==(?);
  External_List_VisibleVariables(Machine(Penalty))==(?);
  Expanded_List_VisibleVariables(Machine(Penalty))==(?);
  List_VisibleVariables(Machine(Penalty))==(?);
  Internal_List_VisibleVariables(Machine(Penalty))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Penalty))==(btrue);
  Gluing_List_Invariant(Machine(Penalty))==(btrue);
  Expanded_List_Invariant(Machine(Penalty))==(btrue);
  Abstract_List_Invariant(Machine(Penalty))==(btrue);
  Context_List_Invariant(Machine(Penalty))==(btrue);
  List_Invariant(Machine(Penalty))==(penalty: CLIENTS_ST +-> NAT)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Penalty))==(btrue);
  Abstract_List_Assertions(Machine(Penalty))==(btrue);
  Context_List_Assertions(Machine(Penalty))==(btrue);
  List_Assertions(Machine(Penalty))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Penalty))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Penalty))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Penalty))==(penalty:=CLIENTS_ST*{0});
  Context_List_Initialisation(Machine(Penalty))==(skip);
  List_Initialisation(Machine(Penalty))==(penalty:=CLIENTS_ST*{0})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Penalty))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Penalty),Machine(Boolean))==(?);
  List_Instanciated_Parameters(Machine(Penalty),Machine(ClientsCTX))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Penalty))==(btrue);
  List_Constraints(Machine(Penalty))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Penalty))==(apply_penalty,query_penalty);
  List_Operations(Machine(Penalty))==(apply_penalty,query_penalty)
END
&
THEORY ListInputX IS
  List_Input(Machine(Penalty),apply_penalty)==(cc,dmgp,dlyp);
  List_Input(Machine(Penalty),query_penalty)==(cc)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Penalty),apply_penalty)==(rr);
  List_Output(Machine(Penalty),query_penalty)==(qq)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Penalty),apply_penalty)==(rr <-- apply_penalty(cc,dmgp,dlyp));
  List_Header(Machine(Penalty),query_penalty)==(qq <-- query_penalty(cc))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Penalty),apply_penalty)==(cc: CLIENTS_ST & dmgp: NAT & dlyp: NAT);
  List_Precondition(Machine(Penalty),query_penalty)==(cc: CLIENTS_ST)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Penalty),query_penalty)==(cc: CLIENTS_ST | qq:=penalty(cc));
  Expanded_List_Substitution(Machine(Penalty),apply_penalty)==(cc: CLIENTS_ST & dmgp: NAT & dlyp: NAT | dmgp+dlyp>0 ==> penalty,rr:=penalty<+{cc|->dmgp+dlyp},true [] not(dmgp+dlyp>0) ==> rr:=false);
  List_Substitution(Machine(Penalty),apply_penalty)==(IF dmgp+dlyp>0 THEN penalty(cc):=dmgp+dlyp || rr:=true ELSE rr:=false END);
  List_Substitution(Machine(Penalty),query_penalty)==(qq:=penalty(cc))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Penalty))==(?);
  Inherited_List_Constants(Machine(Penalty))==(?);
  List_Constants(Machine(Penalty))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Penalty),BOOL_RESPONSE)==({true,false});
  Context_List_Enumerated(Machine(Penalty))==(BOOL_RESPONSE);
  Context_List_Defered(Machine(Penalty))==(CLIENTS_ST);
  Context_List_Sets(Machine(Penalty))==(BOOL_RESPONSE,CLIENTS_ST);
  List_Valuable_Sets(Machine(Penalty))==(?);
  Inherited_List_Enumerated(Machine(Penalty))==(?);
  Inherited_List_Defered(Machine(Penalty))==(?);
  Inherited_List_Sets(Machine(Penalty))==(?);
  List_Enumerated(Machine(Penalty))==(?);
  List_Defered(Machine(Penalty))==(?);
  List_Sets(Machine(Penalty))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Penalty))==(?);
  Expanded_List_HiddenConstants(Machine(Penalty))==(?);
  List_HiddenConstants(Machine(Penalty))==(?);
  External_List_HiddenConstants(Machine(Penalty))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Penalty))==(btrue);
  Context_List_Properties(Machine(Penalty))==(BOOL_RESPONSE: FIN(INTEGER) & not(BOOL_RESPONSE = {}) & CLIENTS_ST: FIN(INTEGER) & not(CLIENTS_ST = {}));
  Inherited_List_Properties(Machine(Penalty))==(btrue);
  List_Properties(Machine(Penalty))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Penalty),Machine(ClientsCTX))==(?);
  Seen_Context_List_Enumerated(Machine(Penalty))==(?);
  Seen_Context_List_Invariant(Machine(Penalty))==(btrue);
  Seen_Context_List_Assertions(Machine(Penalty))==(btrue);
  Seen_Context_List_Properties(Machine(Penalty))==(btrue);
  Seen_List_Constraints(Machine(Penalty))==(btrue);
  Seen_List_Operations(Machine(Penalty),Machine(ClientsCTX))==(?);
  Seen_Expanded_List_Invariant(Machine(Penalty),Machine(ClientsCTX))==(btrue);
  Seen_Internal_List_Operations(Machine(Penalty),Machine(Boolean))==(?);
  Seen_List_Operations(Machine(Penalty),Machine(Boolean))==(?);
  Seen_Expanded_List_Invariant(Machine(Penalty),Machine(Boolean))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Penalty),apply_penalty)==(?);
  List_ANY_Var(Machine(Penalty),query_penalty)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Penalty)) == (? | ? | penalty | ? | apply_penalty,query_penalty | ? | seen(Machine(Boolean)),seen(Machine(ClientsCTX)) | ? | Penalty);
  List_Of_HiddenCst_Ids(Machine(Penalty)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Penalty)) == (?);
  List_Of_VisibleVar_Ids(Machine(Penalty)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Penalty)) == (?: ?);
  List_Of_Ids(Machine(ClientsCTX)) == (CLIENTS_ST | ? | ? | ? | ? | ? | ? | ? | ClientsCTX);
  List_Of_HiddenCst_Ids(Machine(ClientsCTX)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(ClientsCTX)) == (?);
  List_Of_VisibleVar_Ids(Machine(ClientsCTX)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(ClientsCTX)) == (?: ?);
  List_Of_Ids(Machine(Boolean)) == (BOOL_RESPONSE,true,false | ? | ? | ? | ? | ? | ? | ? | Boolean);
  List_Of_HiddenCst_Ids(Machine(Boolean)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Boolean)) == (?);
  List_Of_VisibleVar_Ids(Machine(Boolean)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Boolean)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Penalty)) == (Type(penalty) == Mvl(SetOf(atype(CLIENTS_ST,?,?)*btype(INTEGER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Penalty)) == (Type(query_penalty) == Cst(btype(INTEGER,?,?),atype(CLIENTS_ST,?,?));Type(apply_penalty) == Cst(etype(BOOL_RESPONSE,?,?),atype(CLIENTS_ST,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)));
  Observers(Machine(Penalty)) == (Type(query_penalty) == Cst(btype(INTEGER,?,?),atype(CLIENTS_ST,?,?)))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
