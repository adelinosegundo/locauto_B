Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Damage))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Damage))==(Machine(Damage));
  Level(Machine(Damage))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Damage)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Damage))==(DamagesCTX,VehiclesCTX,Boolean)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Damage))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Damage))==(?);
  List_Includes(Machine(Damage))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Damage))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Damage))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Damage))==(?);
  Context_List_Variables(Machine(Damage))==(?);
  Abstract_List_Variables(Machine(Damage))==(?);
  Local_List_Variables(Machine(Damage))==(damages);
  List_Variables(Machine(Damage))==(damages);
  External_List_Variables(Machine(Damage))==(damages)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Damage))==(?);
  Abstract_List_VisibleVariables(Machine(Damage))==(?);
  External_List_VisibleVariables(Machine(Damage))==(?);
  Expanded_List_VisibleVariables(Machine(Damage))==(?);
  List_VisibleVariables(Machine(Damage))==(?);
  Internal_List_VisibleVariables(Machine(Damage))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Damage))==(btrue);
  Gluing_List_Invariant(Machine(Damage))==(btrue);
  Expanded_List_Invariant(Machine(Damage))==(btrue);
  Abstract_List_Invariant(Machine(Damage))==(btrue);
  Context_List_Invariant(Machine(Damage))==(btrue);
  List_Invariant(Machine(Damage))==(damages: VEHICLES_ST --> DAMAGES_ST)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Damage))==(btrue);
  Abstract_List_Assertions(Machine(Damage))==(btrue);
  Context_List_Assertions(Machine(Damage))==(btrue);
  List_Assertions(Machine(Damage))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Damage))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Damage))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Damage))==(damages:=VEHICLES_ST*{no_damage});
  Context_List_Initialisation(Machine(Damage))==(skip);
  List_Initialisation(Machine(Damage))==(damages:=VEHICLES_ST*{no_damage})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Damage))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Damage),Machine(DamagesCTX))==(?);
  List_Instanciated_Parameters(Machine(Damage),Machine(VehiclesCTX))==(?);
  List_Instanciated_Parameters(Machine(Damage),Machine(Boolean))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Damage))==(btrue);
  List_Constraints(Machine(Damage))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Damage))==(apply_damage,fix_damage);
  List_Operations(Machine(Damage))==(apply_damage,fix_damage)
END
&
THEORY ListInputX IS
  List_Input(Machine(Damage),apply_damage)==(dd,vv);
  List_Input(Machine(Damage),fix_damage)==(vv)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Damage),apply_damage)==(?);
  List_Output(Machine(Damage),fix_damage)==(rr)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Damage),apply_damage)==(apply_damage(dd,vv));
  List_Header(Machine(Damage),fix_damage)==(rr <-- fix_damage(vv))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Damage),apply_damage)==(dd: DAMAGES_ST & dd/=no_damage & vv: VEHICLES_ST);
  List_Precondition(Machine(Damage),fix_damage)==(vv: VEHICLES_ST)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Damage),fix_damage)==(vv: VEHICLES_ST | damages(vv)/=no_damage ==> damages,rr:=damages<+{vv|->no_damage},true [] not(damages(vv)/=no_damage) ==> rr:=false);
  Expanded_List_Substitution(Machine(Damage),apply_damage)==(dd: DAMAGES_ST & dd/=no_damage & vv: VEHICLES_ST | damages:=damages<+{vv|->dd});
  List_Substitution(Machine(Damage),apply_damage)==(damages(vv):=dd);
  List_Substitution(Machine(Damage),fix_damage)==(IF damages(vv)/=no_damage THEN damages(vv):=no_damage || rr:=true ELSE rr:=false END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Damage))==(?);
  Inherited_List_Constants(Machine(Damage))==(?);
  List_Constants(Machine(Damage))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Damage),BOOL_RESPONSE)==({true,false});
  Context_List_Enumerated(Machine(Damage))==(DAMAGES_ST,BOOL_RESPONSE);
  Context_List_Defered(Machine(Damage))==(VEHICLES_ST);
  Context_List_Sets(Machine(Damage))==(DAMAGES_ST,VEHICLES_ST,BOOL_RESPONSE);
  List_Valuable_Sets(Machine(Damage))==(?);
  Inherited_List_Enumerated(Machine(Damage))==(?);
  Inherited_List_Defered(Machine(Damage))==(?);
  Inherited_List_Sets(Machine(Damage))==(?);
  List_Enumerated(Machine(Damage))==(?);
  List_Defered(Machine(Damage))==(?);
  List_Sets(Machine(Damage))==(?);
  Set_Definition(Machine(Damage),DAMAGES_ST)==({light,moderate,heavy,no_damage})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Damage))==(?);
  Expanded_List_HiddenConstants(Machine(Damage))==(?);
  List_HiddenConstants(Machine(Damage))==(?);
  External_List_HiddenConstants(Machine(Damage))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Damage))==(btrue);
  Context_List_Properties(Machine(Damage))==(DAMAGES_ST: FIN(INTEGER) & not(DAMAGES_ST = {}) & VEHICLES_ST: FIN(INTEGER) & not(VEHICLES_ST = {}) & BOOL_RESPONSE: FIN(INTEGER) & not(BOOL_RESPONSE = {}));
  Inherited_List_Properties(Machine(Damage))==(btrue);
  List_Properties(Machine(Damage))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Damage),Machine(Boolean))==(?);
  Seen_Context_List_Enumerated(Machine(Damage))==(?);
  Seen_Context_List_Invariant(Machine(Damage))==(btrue);
  Seen_Context_List_Assertions(Machine(Damage))==(btrue);
  Seen_Context_List_Properties(Machine(Damage))==(btrue);
  Seen_List_Constraints(Machine(Damage))==(btrue);
  Seen_List_Operations(Machine(Damage),Machine(Boolean))==(?);
  Seen_Expanded_List_Invariant(Machine(Damage),Machine(Boolean))==(btrue);
  Seen_Internal_List_Operations(Machine(Damage),Machine(VehiclesCTX))==(?);
  Seen_List_Operations(Machine(Damage),Machine(VehiclesCTX))==(?);
  Seen_Expanded_List_Invariant(Machine(Damage),Machine(VehiclesCTX))==(btrue);
  Seen_Internal_List_Operations(Machine(Damage),Machine(DamagesCTX))==(?);
  Seen_List_Operations(Machine(Damage),Machine(DamagesCTX))==(?);
  Seen_Expanded_List_Invariant(Machine(Damage),Machine(DamagesCTX))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Damage),apply_damage)==(?);
  List_ANY_Var(Machine(Damage),fix_damage)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Damage)) == (? | ? | damages | ? | apply_damage,fix_damage | ? | seen(Machine(DamagesCTX)),seen(Machine(VehiclesCTX)),seen(Machine(Boolean)) | ? | Damage);
  List_Of_HiddenCst_Ids(Machine(Damage)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Damage)) == (?);
  List_Of_VisibleVar_Ids(Machine(Damage)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Damage)) == (?: ?);
  List_Of_Ids(Machine(Boolean)) == (BOOL_RESPONSE,true,false | ? | ? | ? | ? | ? | ? | ? | Boolean);
  List_Of_HiddenCst_Ids(Machine(Boolean)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Boolean)) == (?);
  List_Of_VisibleVar_Ids(Machine(Boolean)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Boolean)) == (?: ?);
  List_Of_Ids(Machine(VehiclesCTX)) == (VEHICLES_ST | ? | ? | ? | ? | ? | ? | ? | VehiclesCTX);
  List_Of_HiddenCst_Ids(Machine(VehiclesCTX)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(VehiclesCTX)) == (?);
  List_Of_VisibleVar_Ids(Machine(VehiclesCTX)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(VehiclesCTX)) == (?: ?);
  List_Of_Ids(Machine(DamagesCTX)) == (DAMAGES_ST,light,moderate,heavy,no_damage | ? | ? | ? | ? | ? | ? | ? | DamagesCTX);
  List_Of_HiddenCst_Ids(Machine(DamagesCTX)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(DamagesCTX)) == (?);
  List_Of_VisibleVar_Ids(Machine(DamagesCTX)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(DamagesCTX)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Damage)) == (Type(damages) == Mvl(SetOf(atype(VEHICLES_ST,"[VEHICLES_ST","]VEHICLES_ST")*etype(DAMAGES_ST,0,3))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Damage)) == (Type(fix_damage) == Cst(etype(BOOL_RESPONSE,?,?),atype(VEHICLES_ST,?,?));Type(apply_damage) == Cst(No_type,etype(DAMAGES_ST,?,?)*atype(VEHICLES_ST,?,?)))
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
