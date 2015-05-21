Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(DamagesCTX))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(DamagesCTX))==(Machine(DamagesCTX));
  Level(Machine(DamagesCTX))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(DamagesCTX)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(DamagesCTX))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(DamagesCTX))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(DamagesCTX))==(?);
  List_Includes(Machine(DamagesCTX))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(DamagesCTX))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(DamagesCTX))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(DamagesCTX))==(?);
  Context_List_Variables(Machine(DamagesCTX))==(?);
  Abstract_List_Variables(Machine(DamagesCTX))==(?);
  Local_List_Variables(Machine(DamagesCTX))==(?);
  List_Variables(Machine(DamagesCTX))==(?);
  External_List_Variables(Machine(DamagesCTX))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(DamagesCTX))==(?);
  Abstract_List_VisibleVariables(Machine(DamagesCTX))==(?);
  External_List_VisibleVariables(Machine(DamagesCTX))==(?);
  Expanded_List_VisibleVariables(Machine(DamagesCTX))==(?);
  List_VisibleVariables(Machine(DamagesCTX))==(?);
  Internal_List_VisibleVariables(Machine(DamagesCTX))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(DamagesCTX))==(btrue);
  Gluing_List_Invariant(Machine(DamagesCTX))==(btrue);
  Expanded_List_Invariant(Machine(DamagesCTX))==(btrue);
  Abstract_List_Invariant(Machine(DamagesCTX))==(btrue);
  Context_List_Invariant(Machine(DamagesCTX))==(btrue);
  List_Invariant(Machine(DamagesCTX))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(DamagesCTX))==(btrue);
  Abstract_List_Assertions(Machine(DamagesCTX))==(btrue);
  Context_List_Assertions(Machine(DamagesCTX))==(btrue);
  List_Assertions(Machine(DamagesCTX))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(DamagesCTX))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(DamagesCTX))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(DamagesCTX))==(skip);
  Context_List_Initialisation(Machine(DamagesCTX))==(skip);
  List_Initialisation(Machine(DamagesCTX))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(DamagesCTX))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(DamagesCTX))==(btrue);
  List_Constraints(Machine(DamagesCTX))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(DamagesCTX))==(?);
  List_Operations(Machine(DamagesCTX))==(?)
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
  List_Valuable_Constants(Machine(DamagesCTX))==(?);
  Inherited_List_Constants(Machine(DamagesCTX))==(?);
  List_Constants(Machine(DamagesCTX))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(DamagesCTX),DAMAGES_ST)==({light,moderate,heavy,no_damage});
  Context_List_Enumerated(Machine(DamagesCTX))==(?);
  Context_List_Defered(Machine(DamagesCTX))==(?);
  Context_List_Sets(Machine(DamagesCTX))==(?);
  List_Valuable_Sets(Machine(DamagesCTX))==(?);
  Inherited_List_Enumerated(Machine(DamagesCTX))==(?);
  Inherited_List_Defered(Machine(DamagesCTX))==(?);
  Inherited_List_Sets(Machine(DamagesCTX))==(?);
  List_Enumerated(Machine(DamagesCTX))==(DAMAGES_ST);
  List_Defered(Machine(DamagesCTX))==(?);
  List_Sets(Machine(DamagesCTX))==(DAMAGES_ST)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(DamagesCTX))==(?);
  Expanded_List_HiddenConstants(Machine(DamagesCTX))==(?);
  List_HiddenConstants(Machine(DamagesCTX))==(?);
  External_List_HiddenConstants(Machine(DamagesCTX))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(DamagesCTX))==(btrue);
  Context_List_Properties(Machine(DamagesCTX))==(btrue);
  Inherited_List_Properties(Machine(DamagesCTX))==(btrue);
  List_Properties(Machine(DamagesCTX))==(DAMAGES_ST: FIN(INTEGER) & not(DAMAGES_ST = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(DamagesCTX)) == (DAMAGES_ST,light,moderate,heavy,no_damage | ? | ? | ? | ? | ? | ? | ? | DamagesCTX);
  List_Of_HiddenCst_Ids(Machine(DamagesCTX)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(DamagesCTX)) == (?);
  List_Of_VisibleVar_Ids(Machine(DamagesCTX)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(DamagesCTX)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(DamagesCTX)) == (Type(DAMAGES_ST) == Cst(SetOf(etype(DAMAGES_ST,0,3))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(DamagesCTX)) == (Type(light) == Cst(etype(DAMAGES_ST,0,3));Type(moderate) == Cst(etype(DAMAGES_ST,0,3));Type(heavy) == Cst(etype(DAMAGES_ST,0,3));Type(no_damage) == Cst(etype(DAMAGES_ST,0,3)))
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
