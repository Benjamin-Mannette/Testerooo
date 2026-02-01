class_name Char_Obj
extends Node

const control: PackedScene = preload("res://characterobj.tscn")

@export var Item_id: int
@export var Name: String
@export var Tech_Name: String
@export var Vulg_Name: String
@export var Is_Expert_Required: bool
@export var Expertise_Required: String
@export var Associated_Department: String
@export var Number_of_uses: int
@export var Associated_Character: String
@export var Use_type: String
#Name = Name of object
#Tech_Name = Technical name of the object- Doctor terms...
#Vulg_Name = Coloquial term or name of object- Civilian terms...
#Item_id = id of the object
#Is_Expert_Required = whether it requires an NPC of a Specific Expertise to use
#Expertise_Required = WHich Expertise is required to use/interact
#Associated_Department = Which department has nominal control of the object
#Number_of_uses = number of times the item can be used- Candy Bar
#Associated_Character = Character associated with the object.
#Use_type = type of use for the object: Diologue aid, Key, Generative, Informative



static func new_Char_Obj(name: String, techname: String, vulgname: String, isexprec: bool, exprec: String, assdept: String, asschar: String, usetype: String, itemid : int, numberofuses:= 10,) -> Char_Obj:
	var new_Char_Obj: Char_Obj = control.instantiate()
	new_Char_Obj.Name = name
	new_Char_Obj.Item_id = itemid
	new_Char_Obj.Tech_Name = techname
	new_Char_Obj.Vulg_Name = vulgname
	new_Char_Obj.Is_Expert_Required = isexprec
	new_Char_Obj.Expertise_Required = exprec
	new_Char_Obj.Associated_Department = assdept
	new_Char_Obj.Number_of_uses = numberofuses
	new_Char_Obj.Associated_Character = asschar
	new_Char_Obj.Use_type = usetype
	return new_Char_Obj
	
	
