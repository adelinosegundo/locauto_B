Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Boolean))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Boolean))==(Machine(Boolean));
  Level(Machine(Boolean))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Boolean)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Boolean))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Boolean))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Boolean))==(?);
  List_Includes(Machine(Boolean))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Boolean))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Boolean))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Boolean))==(?);
  Context_List_Variables(Machine(Boolean))==(?);
  Abstract_List_Variables(Machine(Boolean))==(?);
  Local_List_Variables(Machine(Boolean))==(?);
  List_Variables(Machine(Boolean))==(?);
  External_List_Variables(Machine(Boolean))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Boolean))==(?);
  Abstract_List_VisibleVariables(Machine(Boolean))==(?);
  External_List_VisibleVariables(Machine(Boolean))==(?);
  Expanded_List_VisibleVariables(Machine(Boolean))==(?);
  List_VisibleVariables(Machine(Boolean))==(?);
  Internal_List_VisibleVariables(Machine(Boolean))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Boolean))==(btrue);
  Gluing_List_Invariant(Machine(Boolean))==(btrue);
  Expanded_List_Invariant(Machine(Boolean))==(btrue);
  Abstract_List_Invariant(Machine(Boolean))==(btrue);
  Context_List_Invariant(Machine(Boolean))==(btrue);
  List_Invariant(Machine(Boolean))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Boolean))==(btrue);
  Abstract_List_Assertions(Machine(Boolean))==(btrue);
  Context_List_Assertions(Machine(Boolean))==(btrue);
  List_Assertions(Machine(Boolean))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Boolean))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Boolean))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Boolean))==(skip);
  Context_List_Initialisation(Machine(Boolean))==(skip);
  List_Initialisation(Machine(Boolean))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Boolean))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Boolean))==(btrue);
  List_Constraints(Machine(Boolean))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Boolean))==(?);
  List_Operations(Machine(Boolean))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Boolean))==(?);
  Inherited_List_Constants(Machine(Boolean))==(?);
  List_Constants(Machine(Boolean))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Boolean),BOOL_RESPONSE)==({true,false});
  Context_List_Enumerated(Machine(Boolean))==(?);
  Context_List_Defered(Machine(Boolean))==(?);
  Context_List_Sets(Machine(Boolean))==(?);
  List_Valuable_Sets(Machine(Boolean))==(?);
  Inherited_List_Enumerated(Machine(Boolean))==(?);
  Inherited_List_Defered(Machine(Boolean))==(?);
  Inherited_List_Sets(Machine(Boolean))==(?);
  List_Enumerated(Machine(Boolean))==(BOOL_RESPONSE);
  List_Defered(Machine(Boolean))==(?);
  List_Sets(Machine(Boolean))==(BOOL_RESPONSE)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Boolean))==(?);
  Expanded_List_HiddenConstants(Machine(Boolean))==(?);
  List_HiddenConstants(Machine(Boolean))==(?);
  External_List_HiddenConstants(Machine(Boolean))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Boolean))==(btrue);
  Context_List_Properties(Machine(Boolean))==(btrue);
  Inherited_List_Properties(Machine(Boolean))==(btrue);
  List_Properties(Machine(Boolean))==(BOOL_RESPONSE: FIN(INTEGER) & not(BOOL_RESPONSE = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Boolean)) == (BOOL_RESPONSE,true,false | ? | ? | ? | ? | ? | ? | ? | Boolean);
  List_Of_HiddenCst_Ids(Machine(Boolean)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Boolean)) == (?);
  List_Of_VisibleVar_Ids(Machine(Boolean)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Boolean)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Boolean)) == (Type(BOOL_RESPONSE) == Cst(SetOf(etype(BOOL_RESPONSE,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Boolean)) == (Type(true) == Cst(etype(BOOL_RESPONSE,0,1));Type(false) == Cst(etype(BOOL_RESPONSE,0,1)))
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
