Class dc.irisbi.Objective Extends (%Persistent, %JSON.Adaptor)
{

Parameter %JSONREFERENCE = "ID";

Property ObjectiveId As %Integer [ Calculated, SqlComputeCode = { set {*}={%%ID}}, SqlComputed ];

Property ObjectiveSequence As %VarString(MAXLEN = 10);

Property Name As %VarString(MAXLEN = 300);

Property Description As %VarString(MAXLEN = "");

Property ProgressPercent As %Double;

Storage Default
{
<Data name="ObjectiveDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ObjectiveSequence</Value>
</Value>
<Value name="3">
<Value>Name</Value>
</Value>
<Value name="4">
<Value>Description</Value>
</Value>
<Value name="5">
<Value>ProgressPercent</Value>
</Value>
</Data>
<DataLocation>^dc.irisbi.ObjectiveD</DataLocation>
<DefaultData>ObjectiveDefaultData</DefaultData>
<IdLocation>^dc.irisbi.ObjectiveD</IdLocation>
<IndexLocation>^dc.irisbi.ObjectiveI</IndexLocation>
<StreamLocation>^dc.irisbi.ObjectiveS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
