Class dc.irisbi.KeyResult Extends (%Persistent, %JSON.Adaptor)
{

Parameter %JSONREFERENCE = "ID";

Property KeyResultId As %Integer [ Calculated, SqlComputeCode = { set {*}={%%ID}}, SqlComputed ];

Property KeyResultSequence As %VarString(MAXLEN = 10);

Property Name As %VarString(MAXLEN = 300);

Property SeqName As %String [ Calculated, SqlComputeCode = {set {*}={KeyResultSequence}_" - "_{Name}}, SqlComputed ];

Property Description As %VarString(MAXLEN = "");

Property Formula As %VarString(MAXLEN = "");

Property UpdateFrequency As %VarString(MAXLEN = "");

Property BaselineValue As %Double;

Property TargetValue As %Double;

Property FinalValue As %Double;

Property ProgressPercent As %Double;

Property Objective As dc.irisbi.Objective;

ForeignKey ObjectiveFK(Objective) References dc.irisbi.Objective();

Index ObjectiveIndex On Objective;

Storage Default
{
<Data name="KeyResultDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>KeyResultSequence</Value>
</Value>
<Value name="3">
<Value>Name</Value>
</Value>
<Value name="4">
<Value>Description</Value>
</Value>
<Value name="5">
<Value>Formula</Value>
</Value>
<Value name="6">
<Value>UpdateFrequency</Value>
</Value>
<Value name="7">
<Value>BaselineValue</Value>
</Value>
<Value name="8">
<Value>TargetValue</Value>
</Value>
<Value name="9">
<Value>FinalValue</Value>
</Value>
<Value name="10">
<Value>ProgressPercent</Value>
</Value>
<Value name="11">
<Value>Objective</Value>
</Value>
</Data>
<DataLocation>^dc.irisbi.KeyResultD</DataLocation>
<DefaultData>KeyResultDefaultData</DefaultData>
<IdLocation>^dc.irisbi.KeyResultD</IdLocation>
<IndexLocation>^dc.irisbi.KeyResultI</IndexLocation>
<StreamLocation>^dc.irisbi.KeyResultS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
