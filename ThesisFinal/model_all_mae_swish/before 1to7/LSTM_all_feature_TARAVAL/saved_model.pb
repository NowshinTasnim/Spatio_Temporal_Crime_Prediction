ХЭ/
Д┌
B
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
9
	IdentityN

input2T
output2T"
T
list(type)(0
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
╛
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
Ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Т
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
Б
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
Ф
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
И"serve*2.4.12v2.4.1-0-g85c8b2a817f8╥д,
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
П
lstm_5/lstm_cell_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А**
shared_namelstm_5/lstm_cell_5/kernel
И
-lstm_5/lstm_cell_5/kernel/Read/ReadVariableOpReadVariableOplstm_5/lstm_cell_5/kernel*
_output_shapes
:	А*
dtype0
д
#lstm_5/lstm_cell_5/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*4
shared_name%#lstm_5/lstm_cell_5/recurrent_kernel
Э
7lstm_5/lstm_cell_5/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_5/lstm_cell_5/recurrent_kernel* 
_output_shapes
:
АА*
dtype0
З
lstm_5/lstm_cell_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*(
shared_namelstm_5/lstm_cell_5/bias
А
+lstm_5/lstm_cell_5/bias/Read/ReadVariableOpReadVariableOplstm_5/lstm_cell_5/bias*
_output_shapes	
:А*
dtype0
Р
lstm_6/lstm_cell_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА**
shared_namelstm_6/lstm_cell_6/kernel
Й
-lstm_6/lstm_cell_6/kernel/Read/ReadVariableOpReadVariableOplstm_6/lstm_cell_6/kernel* 
_output_shapes
:
АА*
dtype0
г
#lstm_6/lstm_cell_6/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@А*4
shared_name%#lstm_6/lstm_cell_6/recurrent_kernel
Ь
7lstm_6/lstm_cell_6/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_6/lstm_cell_6/recurrent_kernel*
_output_shapes
:	@А*
dtype0
З
lstm_6/lstm_cell_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*(
shared_namelstm_6/lstm_cell_6/bias
А
+lstm_6/lstm_cell_6/bias/Read/ReadVariableOpReadVariableOplstm_6/lstm_cell_6/bias*
_output_shapes	
:А*
dtype0
О
time_distributed_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@**
shared_nametime_distributed_3/kernel
З
-time_distributed_3/kernel/Read/ReadVariableOpReadVariableOptime_distributed_3/kernel*
_output_shapes

:@@*
dtype0
Ж
time_distributed_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nametime_distributed_3/bias

+time_distributed_3/bias/Read/ReadVariableOpReadVariableOptime_distributed_3/bias*
_output_shapes
:@*
dtype0
О
time_distributed_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@**
shared_nametime_distributed_4/kernel
З
-time_distributed_4/kernel/Read/ReadVariableOpReadVariableOptime_distributed_4/kernel*
_output_shapes

:@*
dtype0
Ж
time_distributed_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nametime_distributed_4/bias

+time_distributed_4/bias/Read/ReadVariableOpReadVariableOptime_distributed_4/bias*
_output_shapes
:*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
Э
 Adam/lstm_5/lstm_cell_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*1
shared_name" Adam/lstm_5/lstm_cell_5/kernel/m
Ц
4Adam/lstm_5/lstm_cell_5/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_5/lstm_cell_5/kernel/m*
_output_shapes
:	А*
dtype0
▓
*Adam/lstm_5/lstm_cell_5/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*;
shared_name,*Adam/lstm_5/lstm_cell_5/recurrent_kernel/m
л
>Adam/lstm_5/lstm_cell_5/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_5/lstm_cell_5/recurrent_kernel/m* 
_output_shapes
:
АА*
dtype0
Х
Adam/lstm_5/lstm_cell_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*/
shared_name Adam/lstm_5/lstm_cell_5/bias/m
О
2Adam/lstm_5/lstm_cell_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_5/lstm_cell_5/bias/m*
_output_shapes	
:А*
dtype0
Ю
 Adam/lstm_6/lstm_cell_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*1
shared_name" Adam/lstm_6/lstm_cell_6/kernel/m
Ч
4Adam/lstm_6/lstm_cell_6/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_6/lstm_cell_6/kernel/m* 
_output_shapes
:
АА*
dtype0
▒
*Adam/lstm_6/lstm_cell_6/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@А*;
shared_name,*Adam/lstm_6/lstm_cell_6/recurrent_kernel/m
к
>Adam/lstm_6/lstm_cell_6/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_6/lstm_cell_6/recurrent_kernel/m*
_output_shapes
:	@А*
dtype0
Х
Adam/lstm_6/lstm_cell_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*/
shared_name Adam/lstm_6/lstm_cell_6/bias/m
О
2Adam/lstm_6/lstm_cell_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_6/lstm_cell_6/bias/m*
_output_shapes	
:А*
dtype0
Ь
 Adam/time_distributed_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*1
shared_name" Adam/time_distributed_3/kernel/m
Х
4Adam/time_distributed_3/kernel/m/Read/ReadVariableOpReadVariableOp Adam/time_distributed_3/kernel/m*
_output_shapes

:@@*
dtype0
Ф
Adam/time_distributed_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/time_distributed_3/bias/m
Н
2Adam/time_distributed_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/time_distributed_3/bias/m*
_output_shapes
:@*
dtype0
Ь
 Adam/time_distributed_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*1
shared_name" Adam/time_distributed_4/kernel/m
Х
4Adam/time_distributed_4/kernel/m/Read/ReadVariableOpReadVariableOp Adam/time_distributed_4/kernel/m*
_output_shapes

:@*
dtype0
Ф
Adam/time_distributed_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/time_distributed_4/bias/m
Н
2Adam/time_distributed_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/time_distributed_4/bias/m*
_output_shapes
:*
dtype0
Э
 Adam/lstm_5/lstm_cell_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*1
shared_name" Adam/lstm_5/lstm_cell_5/kernel/v
Ц
4Adam/lstm_5/lstm_cell_5/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_5/lstm_cell_5/kernel/v*
_output_shapes
:	А*
dtype0
▓
*Adam/lstm_5/lstm_cell_5/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*;
shared_name,*Adam/lstm_5/lstm_cell_5/recurrent_kernel/v
л
>Adam/lstm_5/lstm_cell_5/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_5/lstm_cell_5/recurrent_kernel/v* 
_output_shapes
:
АА*
dtype0
Х
Adam/lstm_5/lstm_cell_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*/
shared_name Adam/lstm_5/lstm_cell_5/bias/v
О
2Adam/lstm_5/lstm_cell_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_5/lstm_cell_5/bias/v*
_output_shapes	
:А*
dtype0
Ю
 Adam/lstm_6/lstm_cell_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*1
shared_name" Adam/lstm_6/lstm_cell_6/kernel/v
Ч
4Adam/lstm_6/lstm_cell_6/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_6/lstm_cell_6/kernel/v* 
_output_shapes
:
АА*
dtype0
▒
*Adam/lstm_6/lstm_cell_6/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@А*;
shared_name,*Adam/lstm_6/lstm_cell_6/recurrent_kernel/v
к
>Adam/lstm_6/lstm_cell_6/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_6/lstm_cell_6/recurrent_kernel/v*
_output_shapes
:	@А*
dtype0
Х
Adam/lstm_6/lstm_cell_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*/
shared_name Adam/lstm_6/lstm_cell_6/bias/v
О
2Adam/lstm_6/lstm_cell_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_6/lstm_cell_6/bias/v*
_output_shapes	
:А*
dtype0
Ь
 Adam/time_distributed_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*1
shared_name" Adam/time_distributed_3/kernel/v
Х
4Adam/time_distributed_3/kernel/v/Read/ReadVariableOpReadVariableOp Adam/time_distributed_3/kernel/v*
_output_shapes

:@@*
dtype0
Ф
Adam/time_distributed_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/time_distributed_3/bias/v
Н
2Adam/time_distributed_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/time_distributed_3/bias/v*
_output_shapes
:@*
dtype0
Ь
 Adam/time_distributed_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*1
shared_name" Adam/time_distributed_4/kernel/v
Х
4Adam/time_distributed_4/kernel/v/Read/ReadVariableOpReadVariableOp Adam/time_distributed_4/kernel/v*
_output_shapes

:@*
dtype0
Ф
Adam/time_distributed_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/time_distributed_4/bias/v
Н
2Adam/time_distributed_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/time_distributed_4/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
щC
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*дC
valueЪCBЧC BРC
▓
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer

signatures
#_self_saveable_object_factories
	variables
	regularization_losses

trainable_variables
	keras_api
С
cell

state_spec
#_self_saveable_object_factories
	variables
regularization_losses
trainable_variables
	keras_api
С
cell

state_spec
#_self_saveable_object_factories
	variables
regularization_losses
trainable_variables
	keras_api
В
	layer
#_self_saveable_object_factories
regularization_losses
	variables
trainable_variables
	keras_api
В
	 layer
#!_self_saveable_object_factories
"regularization_losses
#	variables
$trainable_variables
%	keras_api
И
&iter

'beta_1

(beta_2
	)decay
*learning_rate+mЙ,mК-mЛ.mМ/mН0mО1mП2mР3mС4mТ+vУ,vФ-vХ.vЦ/vЧ0vШ1vЩ2vЪ3vЫ4vЬ
 
 
F
+0
,1
-2
.3
/4
05
16
27
38
49
 
F
+0
,1
-2
.3
/4
05
16
27
38
49
н
5layer_metrics
6layer_regularization_losses
	variables
7non_trainable_variables
8metrics
	regularization_losses

trainable_variables

9layers
г

+kernel
,recurrent_kernel
-bias
#:_self_saveable_object_factories
;regularization_losses
<	variables
=trainable_variables
>	keras_api
 
 

+0
,1
-2
 

+0
,1
-2
╣
?layer_metrics
@layer_regularization_losses
	variables
Anon_trainable_variables

Bstates
Cmetrics
regularization_losses
trainable_variables

Dlayers
г

.kernel
/recurrent_kernel
0bias
#E_self_saveable_object_factories
Fregularization_losses
G	variables
Htrainable_variables
I	keras_api
 
 

.0
/1
02
 

.0
/1
02
╣
Jlayer_metrics
Klayer_regularization_losses
	variables
Lnon_trainable_variables

Mstates
Nmetrics
regularization_losses
trainable_variables

Olayers
Н

1kernel
2bias
#P_self_saveable_object_factories
Qregularization_losses
R	variables
Strainable_variables
T	keras_api
 
 

10
21

10
21
н
Ulayer_metrics
Vlayer_regularization_losses
Wmetrics
regularization_losses
Xnon_trainable_variables
	variables
trainable_variables

Ylayers
Н

3kernel
4bias
#Z_self_saveable_object_factories
[regularization_losses
\	variables
]trainable_variables
^	keras_api
 
 

30
41

30
41
н
_layer_metrics
`layer_regularization_losses
ametrics
"regularization_losses
bnon_trainable_variables
#	variables
$trainable_variables

clayers
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_5/lstm_cell_5/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE#lstm_5/lstm_cell_5/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUElstm_5/lstm_cell_5/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_6/lstm_cell_6/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE#lstm_6/lstm_cell_6/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUElstm_6/lstm_cell_6/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEtime_distributed_3/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEtime_distributed_3/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEtime_distributed_4/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEtime_distributed_4/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
 
 
 

d0
e1
f2

0
1
2
3
 
 

+0
,1
-2

+0
,1
-2
н
glayer_metrics
hlayer_regularization_losses
imetrics
;regularization_losses
jnon_trainable_variables
<	variables
=trainable_variables

klayers
 
 
 
 
 

0
 
 

.0
/1
02

.0
/1
02
н
llayer_metrics
mlayer_regularization_losses
nmetrics
Fregularization_losses
onon_trainable_variables
G	variables
Htrainable_variables

players
 
 
 
 
 

0
 
 

10
21

10
21
н
qlayer_metrics
rlayer_regularization_losses
smetrics
Qregularization_losses
tnon_trainable_variables
R	variables
Strainable_variables

ulayers
 
 
 
 

0
 
 

30
41

30
41
н
vlayer_metrics
wlayer_regularization_losses
xmetrics
[regularization_losses
ynon_trainable_variables
\	variables
]trainable_variables

zlayers
 
 
 
 

 0
4
	{total
	|count
}	variables
~	keras_api
H
	total

Аcount
Б
_fn_kwargs
В	variables
Г	keras_api
I

Дtotal

Еcount
Ж
_fn_kwargs
З	variables
И	keras_api
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

{0
|1

}	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

0
А1

В	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE
 

Д0
Е1

З	variables
xv
VARIABLE_VALUE Adam/lstm_5/lstm_cell_5/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE*Adam/lstm_5/lstm_cell_5/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/lstm_5/lstm_cell_5/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_6/lstm_cell_6/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE*Adam/lstm_6/lstm_cell_6/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/lstm_6/lstm_cell_6/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/time_distributed_3/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/time_distributed_3/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/time_distributed_4/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/time_distributed_4/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_5/lstm_cell_5/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE*Adam/lstm_5/lstm_cell_5/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/lstm_5/lstm_cell_5/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_6/lstm_cell_6/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE*Adam/lstm_6/lstm_cell_6/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/lstm_6/lstm_cell_6/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/time_distributed_3/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/time_distributed_3/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/time_distributed_4/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/time_distributed_4/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
З
serving_default_lstm_5_inputPlaceholder*+
_output_shapes
:         *
dtype0* 
shape:         
ъ
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_5_inputlstm_5/lstm_cell_5/kernel#lstm_5/lstm_cell_5/recurrent_kernellstm_5/lstm_cell_5/biaslstm_6/lstm_cell_6/kernel#lstm_6/lstm_cell_6/recurrent_kernellstm_6/lstm_cell_6/biastime_distributed_3/kerneltime_distributed_3/biastime_distributed_4/kerneltime_distributed_4/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *.
f)R'
%__inference_signature_wrapper_1215056
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
╩
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp-lstm_5/lstm_cell_5/kernel/Read/ReadVariableOp7lstm_5/lstm_cell_5/recurrent_kernel/Read/ReadVariableOp+lstm_5/lstm_cell_5/bias/Read/ReadVariableOp-lstm_6/lstm_cell_6/kernel/Read/ReadVariableOp7lstm_6/lstm_cell_6/recurrent_kernel/Read/ReadVariableOp+lstm_6/lstm_cell_6/bias/Read/ReadVariableOp-time_distributed_3/kernel/Read/ReadVariableOp+time_distributed_3/bias/Read/ReadVariableOp-time_distributed_4/kernel/Read/ReadVariableOp+time_distributed_4/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp4Adam/lstm_5/lstm_cell_5/kernel/m/Read/ReadVariableOp>Adam/lstm_5/lstm_cell_5/recurrent_kernel/m/Read/ReadVariableOp2Adam/lstm_5/lstm_cell_5/bias/m/Read/ReadVariableOp4Adam/lstm_6/lstm_cell_6/kernel/m/Read/ReadVariableOp>Adam/lstm_6/lstm_cell_6/recurrent_kernel/m/Read/ReadVariableOp2Adam/lstm_6/lstm_cell_6/bias/m/Read/ReadVariableOp4Adam/time_distributed_3/kernel/m/Read/ReadVariableOp2Adam/time_distributed_3/bias/m/Read/ReadVariableOp4Adam/time_distributed_4/kernel/m/Read/ReadVariableOp2Adam/time_distributed_4/bias/m/Read/ReadVariableOp4Adam/lstm_5/lstm_cell_5/kernel/v/Read/ReadVariableOp>Adam/lstm_5/lstm_cell_5/recurrent_kernel/v/Read/ReadVariableOp2Adam/lstm_5/lstm_cell_5/bias/v/Read/ReadVariableOp4Adam/lstm_6/lstm_cell_6/kernel/v/Read/ReadVariableOp>Adam/lstm_6/lstm_cell_6/recurrent_kernel/v/Read/ReadVariableOp2Adam/lstm_6/lstm_cell_6/bias/v/Read/ReadVariableOp4Adam/time_distributed_3/kernel/v/Read/ReadVariableOp2Adam/time_distributed_3/bias/v/Read/ReadVariableOp4Adam/time_distributed_4/kernel/v/Read/ReadVariableOp2Adam/time_distributed_4/bias/v/Read/ReadVariableOpConst*6
Tin/
-2+	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__traced_save_1217988
С
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_5/lstm_cell_5/kernel#lstm_5/lstm_cell_5/recurrent_kernellstm_5/lstm_cell_5/biaslstm_6/lstm_cell_6/kernel#lstm_6/lstm_cell_6/recurrent_kernellstm_6/lstm_cell_6/biastime_distributed_3/kerneltime_distributed_3/biastime_distributed_4/kerneltime_distributed_4/biastotalcounttotal_1count_1total_2count_2 Adam/lstm_5/lstm_cell_5/kernel/m*Adam/lstm_5/lstm_cell_5/recurrent_kernel/mAdam/lstm_5/lstm_cell_5/bias/m Adam/lstm_6/lstm_cell_6/kernel/m*Adam/lstm_6/lstm_cell_6/recurrent_kernel/mAdam/lstm_6/lstm_cell_6/bias/m Adam/time_distributed_3/kernel/mAdam/time_distributed_3/bias/m Adam/time_distributed_4/kernel/mAdam/time_distributed_4/bias/m Adam/lstm_5/lstm_cell_5/kernel/v*Adam/lstm_5/lstm_cell_5/recurrent_kernel/vAdam/lstm_5/lstm_cell_5/bias/v Adam/lstm_6/lstm_cell_6/kernel/v*Adam/lstm_6/lstm_cell_6/recurrent_kernel/vAdam/lstm_6/lstm_cell_6/bias/v Adam/time_distributed_3/kernel/vAdam/time_distributed_3/bias/v Adam/time_distributed_4/kernel/vAdam/time_distributed_4/bias/v*5
Tin.
,2**
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference__traced_restore_1218121╤ф*
МE
у
C__inference_lstm_5_layer_call_and_return_conditional_losses_1213114

inputs
lstm_cell_102_1213032
lstm_cell_102_1213034
lstm_cell_102_1213036
identityИв%lstm_cell_102/StatefulPartitionedCallвwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         А2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         А2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_2к
%lstm_cell_102/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_102_1213032lstm_cell_102_1213034lstm_cell_102_1213036*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         А:         А:         А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_12126192'
%lstm_cell_102/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   2
TensorArrayV2_1/element_shape╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterп
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_102_1213032lstm_cell_102_1213034lstm_cell_102_1213036*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         А:         А: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1213045*
condR
while_cond_1213044*M
output_shapes<
:: : : : :         А:         А: : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   22
0TensorArrayV2Stack/TensorListStack/element_shapeЄ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permп
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeб
IdentityIdentitytranspose_1:y:0&^lstm_cell_102/StatefulPartitionedCall^while*
T0*5
_output_shapes#
!:                  А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:                  :::2N
%lstm_cell_102/StatefulPartitionedCall%lstm_cell_102/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
┤
╚
while_cond_1216100
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1216100___redundant_placeholder05
1while_while_cond_1216100___redundant_placeholder15
1while_while_cond_1216100___redundant_placeholder25
1while_while_cond_1216100___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :         А:         А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
Н
М
(__inference_lstm_5_layer_call_fn_1216218

inputs
unknown
	unknown_0
	unknown_1
identityИвStatefulPartitionedCallЕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_5_layer_call_and_return_conditional_losses_12143502
StatefulPartitionedCallУ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:         А2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         :::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╓"
с
J__inference_lstm_cell_103_layer_call_and_return_conditional_losses_1217721

inputs
states_0
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource

identity_2

identity_3

identity_4ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim┐
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         @2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         @2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         @2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:         @2
	Sigmoid_2f
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*'
_output_shapes
:         @2
mul_1]
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:         @2

Identity╢
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1217702*:
_output_shapes(
&:         @:         @2
	IdentityNh
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*'
_output_shapes
:         @2
mul_2]
add_1AddV2mul:z:0	mul_2:z:0*
T0*'
_output_shapes
:         @2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:         @2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         @2
	Sigmoid_4a
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*'
_output_shapes
:         @2
mul_3a

Identity_1Identity	mul_3:z:0*
T0*'
_output_shapes
:         @2

Identity_1╡
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1217711*:
_output_shapes(
&:         @:         @2
IdentityN_1l
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*'
_output_shapes
:         @2
mul_4м

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity_2м

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity_3м

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*Y
_input_shapesH
F:         А:         @:         @:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs:QM
'
_output_shapes
:         @
"
_user_specified_name
states/0:QM
'
_output_shapes
:         @
"
_user_specified_name
states/1
гТ
┬	
I__inference_sequential_3_layer_call_and_return_conditional_losses_1215800

inputs7
3lstm_5_lstm_cell_102_matmul_readvariableop_resource9
5lstm_5_lstm_cell_102_matmul_1_readvariableop_resource8
4lstm_5_lstm_cell_102_biasadd_readvariableop_resource7
3lstm_6_lstm_cell_103_matmul_readvariableop_resource9
5lstm_6_lstm_cell_103_matmul_1_readvariableop_resource8
4lstm_6_lstm_cell_103_biasadd_readvariableop_resource=
9time_distributed_3_dense_8_matmul_readvariableop_resource>
:time_distributed_3_dense_8_biasadd_readvariableop_resource=
9time_distributed_4_dense_9_matmul_readvariableop_resource>
:time_distributed_4_dense_9_biasadd_readvariableop_resource
identityИв+lstm_5/lstm_cell_102/BiasAdd/ReadVariableOpв*lstm_5/lstm_cell_102/MatMul/ReadVariableOpв,lstm_5/lstm_cell_102/MatMul_1/ReadVariableOpвlstm_5/whileв+lstm_6/lstm_cell_103/BiasAdd/ReadVariableOpв*lstm_6/lstm_cell_103/MatMul/ReadVariableOpв,lstm_6/lstm_cell_103/MatMul_1/ReadVariableOpвlstm_6/whileв1time_distributed_3/dense_8/BiasAdd/ReadVariableOpв0time_distributed_3/dense_8/MatMul/ReadVariableOpв1time_distributed_4/dense_9/BiasAdd/ReadVariableOpв0time_distributed_4/dense_9/MatMul/ReadVariableOpR
lstm_5/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_5/ShapeВ
lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_5/strided_slice/stackЖ
lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_5/strided_slice/stack_1Ж
lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_5/strided_slice/stack_2М
lstm_5/strided_sliceStridedSlicelstm_5/Shape:output:0#lstm_5/strided_slice/stack:output:0%lstm_5/strided_slice/stack_1:output:0%lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_5/strided_slicek
lstm_5/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
lstm_5/zeros/mul/yИ
lstm_5/zeros/mulMullstm_5/strided_slice:output:0lstm_5/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_5/zeros/mulm
lstm_5/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_5/zeros/Less/yГ
lstm_5/zeros/LessLesslstm_5/zeros/mul:z:0lstm_5/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_5/zeros/Lessq
lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
lstm_5/zeros/packed/1Я
lstm_5/zeros/packedPacklstm_5/strided_slice:output:0lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_5/zeros/packedm
lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_5/zeros/ConstТ
lstm_5/zerosFilllstm_5/zeros/packed:output:0lstm_5/zeros/Const:output:0*
T0*(
_output_shapes
:         А2
lstm_5/zeroso
lstm_5/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
lstm_5/zeros_1/mul/yО
lstm_5/zeros_1/mulMullstm_5/strided_slice:output:0lstm_5/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_5/zeros_1/mulq
lstm_5/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_5/zeros_1/Less/yЛ
lstm_5/zeros_1/LessLesslstm_5/zeros_1/mul:z:0lstm_5/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_5/zeros_1/Lessu
lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
lstm_5/zeros_1/packed/1е
lstm_5/zeros_1/packedPacklstm_5/strided_slice:output:0 lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_5/zeros_1/packedq
lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_5/zeros_1/ConstЪ
lstm_5/zeros_1Filllstm_5/zeros_1/packed:output:0lstm_5/zeros_1/Const:output:0*
T0*(
_output_shapes
:         А2
lstm_5/zeros_1Г
lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_5/transpose/permП
lstm_5/transpose	Transposeinputslstm_5/transpose/perm:output:0*
T0*+
_output_shapes
:         2
lstm_5/transposed
lstm_5/Shape_1Shapelstm_5/transpose:y:0*
T0*
_output_shapes
:2
lstm_5/Shape_1Ж
lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_5/strided_slice_1/stackК
lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_1/stack_1К
lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_1/stack_2Ш
lstm_5/strided_slice_1StridedSlicelstm_5/Shape_1:output:0%lstm_5/strided_slice_1/stack:output:0'lstm_5/strided_slice_1/stack_1:output:0'lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_5/strided_slice_1У
"lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2$
"lstm_5/TensorArrayV2/element_shape╬
lstm_5/TensorArrayV2TensorListReserve+lstm_5/TensorArrayV2/element_shape:output:0lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_5/TensorArrayV2═
<lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2>
<lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeФ
.lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_5/transpose:y:0Elstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_5/TensorArrayUnstack/TensorListFromTensorЖ
lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_5/strided_slice_2/stackК
lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_2/stack_1К
lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_2/stack_2ж
lstm_5/strided_slice_2StridedSlicelstm_5/transpose:y:0%lstm_5/strided_slice_2/stack:output:0'lstm_5/strided_slice_2/stack_1:output:0'lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
lstm_5/strided_slice_2═
*lstm_5/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp3lstm_5_lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02,
*lstm_5/lstm_cell_102/MatMul/ReadVariableOp╠
lstm_5/lstm_cell_102/MatMulMatMullstm_5/strided_slice_2:output:02lstm_5/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_5/lstm_cell_102/MatMul╘
,lstm_5/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp5lstm_5_lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02.
,lstm_5/lstm_cell_102/MatMul_1/ReadVariableOp╚
lstm_5/lstm_cell_102/MatMul_1MatMullstm_5/zeros:output:04lstm_5/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_5/lstm_cell_102/MatMul_1└
lstm_5/lstm_cell_102/addAddV2%lstm_5/lstm_cell_102/MatMul:product:0'lstm_5/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_5/lstm_cell_102/add╠
+lstm_5/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp4lstm_5_lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+lstm_5/lstm_cell_102/BiasAdd/ReadVariableOp═
lstm_5/lstm_cell_102/BiasAddBiasAddlstm_5/lstm_cell_102/add:z:03lstm_5/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_5/lstm_cell_102/BiasAddz
lstm_5/lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_5/lstm_cell_102/ConstО
$lstm_5/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_5/lstm_cell_102/split/split_dimЧ
lstm_5/lstm_cell_102/splitSplit-lstm_5/lstm_cell_102/split/split_dim:output:0%lstm_5/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
lstm_5/lstm_cell_102/splitЯ
lstm_5/lstm_cell_102/SigmoidSigmoid#lstm_5/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:         А2
lstm_5/lstm_cell_102/Sigmoidг
lstm_5/lstm_cell_102/Sigmoid_1Sigmoid#lstm_5/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:         А2 
lstm_5/lstm_cell_102/Sigmoid_1л
lstm_5/lstm_cell_102/mulMul"lstm_5/lstm_cell_102/Sigmoid_1:y:0lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:         А2
lstm_5/lstm_cell_102/mulг
lstm_5/lstm_cell_102/Sigmoid_2Sigmoid#lstm_5/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:         А2 
lstm_5/lstm_cell_102/Sigmoid_2╗
lstm_5/lstm_cell_102/mul_1Mul#lstm_5/lstm_cell_102/split:output:2"lstm_5/lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:         А2
lstm_5/lstm_cell_102/mul_1Э
lstm_5/lstm_cell_102/IdentityIdentitylstm_5/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:         А2
lstm_5/lstm_cell_102/IdentityМ
lstm_5/lstm_cell_102/IdentityN	IdentityNlstm_5/lstm_cell_102/mul_1:z:0#lstm_5/lstm_cell_102/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1215486*<
_output_shapes*
(:         А:         А2 
lstm_5/lstm_cell_102/IdentityN╜
lstm_5/lstm_cell_102/mul_2Mul lstm_5/lstm_cell_102/Sigmoid:y:0'lstm_5/lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:         А2
lstm_5/lstm_cell_102/mul_2▓
lstm_5/lstm_cell_102/add_1AddV2lstm_5/lstm_cell_102/mul:z:0lstm_5/lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:         А2
lstm_5/lstm_cell_102/add_1г
lstm_5/lstm_cell_102/Sigmoid_3Sigmoid#lstm_5/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:         А2 
lstm_5/lstm_cell_102/Sigmoid_3Ю
lstm_5/lstm_cell_102/Sigmoid_4Sigmoidlstm_5/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:         А2 
lstm_5/lstm_cell_102/Sigmoid_4╢
lstm_5/lstm_cell_102/mul_3Mullstm_5/lstm_cell_102/add_1:z:0"lstm_5/lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:         А2
lstm_5/lstm_cell_102/mul_3б
lstm_5/lstm_cell_102/Identity_1Identitylstm_5/lstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:         А2!
lstm_5/lstm_cell_102/Identity_1Л
 lstm_5/lstm_cell_102/IdentityN_1	IdentityNlstm_5/lstm_cell_102/mul_3:z:0lstm_5/lstm_cell_102/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1215495*<
_output_shapes*
(:         А:         А2"
 lstm_5/lstm_cell_102/IdentityN_1┴
lstm_5/lstm_cell_102/mul_4Mul"lstm_5/lstm_cell_102/Sigmoid_3:y:0)lstm_5/lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:         А2
lstm_5/lstm_cell_102/mul_4Э
$lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   2&
$lstm_5/TensorArrayV2_1/element_shape╘
lstm_5/TensorArrayV2_1TensorListReserve-lstm_5/TensorArrayV2_1/element_shape:output:0lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_5/TensorArrayV2_1\
lstm_5/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_5/timeН
lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2!
lstm_5/while/maximum_iterationsx
lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_5/while/loop_counterр
lstm_5/whileWhile"lstm_5/while/loop_counter:output:0(lstm_5/while/maximum_iterations:output:0lstm_5/time:output:0lstm_5/TensorArrayV2_1:handle:0lstm_5/zeros:output:0lstm_5/zeros_1:output:0lstm_5/strided_slice_1:output:0>lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_5_lstm_cell_102_matmul_readvariableop_resource5lstm_5_lstm_cell_102_matmul_1_readvariableop_resource4lstm_5_lstm_cell_102_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         А:         А: : : : : *%
_read_only_resource_inputs
	
*%
bodyR
lstm_5_while_body_1215506*%
condR
lstm_5_while_cond_1215505*M
output_shapes<
:: : : : :         А:         А: : : : : *
parallel_iterations 2
lstm_5/while├
7lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   29
7lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeЕ
)lstm_5/TensorArrayV2Stack/TensorListStackTensorListStacklstm_5/while:output:3@lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         А*
element_dtype02+
)lstm_5/TensorArrayV2Stack/TensorListStackП
lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
lstm_5/strided_slice_3/stackК
lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_5/strided_slice_3/stack_1К
lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_3/stack_2┼
lstm_5/strided_slice_3StridedSlice2lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_5/strided_slice_3/stack:output:0'lstm_5/strided_slice_3/stack_1:output:0'lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
lstm_5/strided_slice_3З
lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_5/transpose_1/perm┬
lstm_5/transpose_1	Transpose2lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:         А2
lstm_5/transpose_1t
lstm_5/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_5/runtimeb
lstm_6/ShapeShapelstm_5/transpose_1:y:0*
T0*
_output_shapes
:2
lstm_6/ShapeВ
lstm_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_6/strided_slice/stackЖ
lstm_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_6/strided_slice/stack_1Ж
lstm_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_6/strided_slice/stack_2М
lstm_6/strided_sliceStridedSlicelstm_6/Shape:output:0#lstm_6/strided_slice/stack:output:0%lstm_6/strided_slice/stack_1:output:0%lstm_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_6/strided_slicej
lstm_6/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_6/zeros/mul/yИ
lstm_6/zeros/mulMullstm_6/strided_slice:output:0lstm_6/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_6/zeros/mulm
lstm_6/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_6/zeros/Less/yГ
lstm_6/zeros/LessLesslstm_6/zeros/mul:z:0lstm_6/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_6/zeros/Lessp
lstm_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_6/zeros/packed/1Я
lstm_6/zeros/packedPacklstm_6/strided_slice:output:0lstm_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_6/zeros/packedm
lstm_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_6/zeros/ConstС
lstm_6/zerosFilllstm_6/zeros/packed:output:0lstm_6/zeros/Const:output:0*
T0*'
_output_shapes
:         @2
lstm_6/zerosn
lstm_6/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_6/zeros_1/mul/yО
lstm_6/zeros_1/mulMullstm_6/strided_slice:output:0lstm_6/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_6/zeros_1/mulq
lstm_6/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_6/zeros_1/Less/yЛ
lstm_6/zeros_1/LessLesslstm_6/zeros_1/mul:z:0lstm_6/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_6/zeros_1/Lesst
lstm_6/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_6/zeros_1/packed/1е
lstm_6/zeros_1/packedPacklstm_6/strided_slice:output:0 lstm_6/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_6/zeros_1/packedq
lstm_6/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_6/zeros_1/ConstЩ
lstm_6/zeros_1Filllstm_6/zeros_1/packed:output:0lstm_6/zeros_1/Const:output:0*
T0*'
_output_shapes
:         @2
lstm_6/zeros_1Г
lstm_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_6/transpose/permа
lstm_6/transpose	Transposelstm_5/transpose_1:y:0lstm_6/transpose/perm:output:0*
T0*,
_output_shapes
:         А2
lstm_6/transposed
lstm_6/Shape_1Shapelstm_6/transpose:y:0*
T0*
_output_shapes
:2
lstm_6/Shape_1Ж
lstm_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_6/strided_slice_1/stackК
lstm_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_1/stack_1К
lstm_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_1/stack_2Ш
lstm_6/strided_slice_1StridedSlicelstm_6/Shape_1:output:0%lstm_6/strided_slice_1/stack:output:0'lstm_6/strided_slice_1/stack_1:output:0'lstm_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_6/strided_slice_1У
"lstm_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2$
"lstm_6/TensorArrayV2/element_shape╬
lstm_6/TensorArrayV2TensorListReserve+lstm_6/TensorArrayV2/element_shape:output:0lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_6/TensorArrayV2═
<lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   2>
<lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shapeФ
.lstm_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_6/transpose:y:0Elstm_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_6/TensorArrayUnstack/TensorListFromTensorЖ
lstm_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_6/strided_slice_2/stackК
lstm_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_2/stack_1К
lstm_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_2/stack_2з
lstm_6/strided_slice_2StridedSlicelstm_6/transpose:y:0%lstm_6/strided_slice_2/stack:output:0'lstm_6/strided_slice_2/stack_1:output:0'lstm_6/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
lstm_6/strided_slice_2╬
*lstm_6/lstm_cell_103/MatMul/ReadVariableOpReadVariableOp3lstm_6_lstm_cell_103_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02,
*lstm_6/lstm_cell_103/MatMul/ReadVariableOp╠
lstm_6/lstm_cell_103/MatMulMatMullstm_6/strided_slice_2:output:02lstm_6/lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_6/lstm_cell_103/MatMul╙
,lstm_6/lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOp5lstm_6_lstm_cell_103_matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02.
,lstm_6/lstm_cell_103/MatMul_1/ReadVariableOp╚
lstm_6/lstm_cell_103/MatMul_1MatMullstm_6/zeros:output:04lstm_6/lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_6/lstm_cell_103/MatMul_1└
lstm_6/lstm_cell_103/addAddV2%lstm_6/lstm_cell_103/MatMul:product:0'lstm_6/lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_6/lstm_cell_103/add╠
+lstm_6/lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOp4lstm_6_lstm_cell_103_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+lstm_6/lstm_cell_103/BiasAdd/ReadVariableOp═
lstm_6/lstm_cell_103/BiasAddBiasAddlstm_6/lstm_cell_103/add:z:03lstm_6/lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_6/lstm_cell_103/BiasAddz
lstm_6/lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_6/lstm_cell_103/ConstО
$lstm_6/lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_6/lstm_cell_103/split/split_dimУ
lstm_6/lstm_cell_103/splitSplit-lstm_6/lstm_cell_103/split/split_dim:output:0%lstm_6/lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
lstm_6/lstm_cell_103/splitЮ
lstm_6/lstm_cell_103/SigmoidSigmoid#lstm_6/lstm_cell_103/split:output:0*
T0*'
_output_shapes
:         @2
lstm_6/lstm_cell_103/Sigmoidв
lstm_6/lstm_cell_103/Sigmoid_1Sigmoid#lstm_6/lstm_cell_103/split:output:1*
T0*'
_output_shapes
:         @2 
lstm_6/lstm_cell_103/Sigmoid_1к
lstm_6/lstm_cell_103/mulMul"lstm_6/lstm_cell_103/Sigmoid_1:y:0lstm_6/zeros_1:output:0*
T0*'
_output_shapes
:         @2
lstm_6/lstm_cell_103/mulв
lstm_6/lstm_cell_103/Sigmoid_2Sigmoid#lstm_6/lstm_cell_103/split:output:2*
T0*'
_output_shapes
:         @2 
lstm_6/lstm_cell_103/Sigmoid_2║
lstm_6/lstm_cell_103/mul_1Mul#lstm_6/lstm_cell_103/split:output:2"lstm_6/lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:         @2
lstm_6/lstm_cell_103/mul_1Ь
lstm_6/lstm_cell_103/IdentityIdentitylstm_6/lstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:         @2
lstm_6/lstm_cell_103/IdentityК
lstm_6/lstm_cell_103/IdentityN	IdentityNlstm_6/lstm_cell_103/mul_1:z:0#lstm_6/lstm_cell_103/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1215655*:
_output_shapes(
&:         @:         @2 
lstm_6/lstm_cell_103/IdentityN╝
lstm_6/lstm_cell_103/mul_2Mul lstm_6/lstm_cell_103/Sigmoid:y:0'lstm_6/lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:         @2
lstm_6/lstm_cell_103/mul_2▒
lstm_6/lstm_cell_103/add_1AddV2lstm_6/lstm_cell_103/mul:z:0lstm_6/lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:         @2
lstm_6/lstm_cell_103/add_1в
lstm_6/lstm_cell_103/Sigmoid_3Sigmoid#lstm_6/lstm_cell_103/split:output:3*
T0*'
_output_shapes
:         @2 
lstm_6/lstm_cell_103/Sigmoid_3Э
lstm_6/lstm_cell_103/Sigmoid_4Sigmoidlstm_6/lstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:         @2 
lstm_6/lstm_cell_103/Sigmoid_4╡
lstm_6/lstm_cell_103/mul_3Mullstm_6/lstm_cell_103/add_1:z:0"lstm_6/lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:         @2
lstm_6/lstm_cell_103/mul_3а
lstm_6/lstm_cell_103/Identity_1Identitylstm_6/lstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:         @2!
lstm_6/lstm_cell_103/Identity_1Й
 lstm_6/lstm_cell_103/IdentityN_1	IdentityNlstm_6/lstm_cell_103/mul_3:z:0lstm_6/lstm_cell_103/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1215664*:
_output_shapes(
&:         @:         @2"
 lstm_6/lstm_cell_103/IdentityN_1└
lstm_6/lstm_cell_103/mul_4Mul"lstm_6/lstm_cell_103/Sigmoid_3:y:0)lstm_6/lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:         @2
lstm_6/lstm_cell_103/mul_4Э
$lstm_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_6/TensorArrayV2_1/element_shape╘
lstm_6/TensorArrayV2_1TensorListReserve-lstm_6/TensorArrayV2_1/element_shape:output:0lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_6/TensorArrayV2_1\
lstm_6/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_6/timeН
lstm_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2!
lstm_6/while/maximum_iterationsx
lstm_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_6/while/loop_counter▄
lstm_6/whileWhile"lstm_6/while/loop_counter:output:0(lstm_6/while/maximum_iterations:output:0lstm_6/time:output:0lstm_6/TensorArrayV2_1:handle:0lstm_6/zeros:output:0lstm_6/zeros_1:output:0lstm_6/strided_slice_1:output:0>lstm_6/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_6_lstm_cell_103_matmul_readvariableop_resource5lstm_6_lstm_cell_103_matmul_1_readvariableop_resource4lstm_6_lstm_cell_103_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*%
bodyR
lstm_6_while_body_1215675*%
condR
lstm_6_while_cond_1215674*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations 2
lstm_6/while├
7lstm_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   29
7lstm_6/TensorArrayV2Stack/TensorListStack/element_shapeД
)lstm_6/TensorArrayV2Stack/TensorListStackTensorListStacklstm_6/while:output:3@lstm_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype02+
)lstm_6/TensorArrayV2Stack/TensorListStackП
lstm_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
lstm_6/strided_slice_3/stackК
lstm_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_6/strided_slice_3/stack_1К
lstm_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_3/stack_2─
lstm_6/strided_slice_3StridedSlice2lstm_6/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_6/strided_slice_3/stack:output:0'lstm_6/strided_slice_3/stack_1:output:0'lstm_6/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
lstm_6/strided_slice_3З
lstm_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_6/transpose_1/perm┴
lstm_6/transpose_1	Transpose2lstm_6/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_6/transpose_1/perm:output:0*
T0*+
_output_shapes
:         @2
lstm_6/transpose_1t
lstm_6/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_6/runtimeХ
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2"
 time_distributed_3/Reshape/shape╕
time_distributed_3/ReshapeReshapelstm_6/transpose_1:y:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
time_distributed_3/Reshape▐
0time_distributed_3/dense_8/MatMul/ReadVariableOpReadVariableOp9time_distributed_3_dense_8_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype022
0time_distributed_3/dense_8/MatMul/ReadVariableOpс
!time_distributed_3/dense_8/MatMulMatMul#time_distributed_3/Reshape:output:08time_distributed_3/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2#
!time_distributed_3/dense_8/MatMul▌
1time_distributed_3/dense_8/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_3_dense_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype023
1time_distributed_3/dense_8/BiasAdd/ReadVariableOpэ
"time_distributed_3/dense_8/BiasAddBiasAdd+time_distributed_3/dense_8/MatMul:product:09time_distributed_3/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2$
"time_distributed_3/dense_8/BiasAdd▓
"time_distributed_3/dense_8/SigmoidSigmoid+time_distributed_3/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:         @2$
"time_distributed_3/dense_8/Sigmoid╬
time_distributed_3/dense_8/mulMul+time_distributed_3/dense_8/BiasAdd:output:0&time_distributed_3/dense_8/Sigmoid:y:0*
T0*'
_output_shapes
:         @2 
time_distributed_3/dense_8/mulм
#time_distributed_3/dense_8/IdentityIdentity"time_distributed_3/dense_8/mul:z:0*
T0*'
_output_shapes
:         @2%
#time_distributed_3/dense_8/Identityв
$time_distributed_3/dense_8/IdentityN	IdentityN"time_distributed_3/dense_8/mul:z:0+time_distributed_3/dense_8/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1215777*:
_output_shapes(
&:         @:         @2&
$time_distributed_3/dense_8/IdentityNЭ
"time_distributed_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       @   2$
"time_distributed_3/Reshape_1/shape┘
time_distributed_3/Reshape_1Reshape-time_distributed_3/dense_8/IdentityN:output:0+time_distributed_3/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         @2
time_distributed_3/Reshape_1Щ
"time_distributed_3/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"time_distributed_3/Reshape_2/shape╛
time_distributed_3/Reshape_2Reshapelstm_6/transpose_1:y:0+time_distributed_3/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         @2
time_distributed_3/Reshape_2Х
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2"
 time_distributed_4/Reshape/shape╟
time_distributed_4/ReshapeReshape%time_distributed_3/Reshape_1:output:0)time_distributed_4/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
time_distributed_4/Reshape▐
0time_distributed_4/dense_9/MatMul/ReadVariableOpReadVariableOp9time_distributed_4_dense_9_matmul_readvariableop_resource*
_output_shapes

:@*
dtype022
0time_distributed_4/dense_9/MatMul/ReadVariableOpс
!time_distributed_4/dense_9/MatMulMatMul#time_distributed_4/Reshape:output:08time_distributed_4/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2#
!time_distributed_4/dense_9/MatMul▌
1time_distributed_4/dense_9/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_4_dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype023
1time_distributed_4/dense_9/BiasAdd/ReadVariableOpэ
"time_distributed_4/dense_9/BiasAddBiasAdd+time_distributed_4/dense_9/MatMul:product:09time_distributed_4/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2$
"time_distributed_4/dense_9/BiasAddЭ
"time_distributed_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"time_distributed_4/Reshape_1/shape╫
time_distributed_4/Reshape_1Reshape+time_distributed_4/dense_9/BiasAdd:output:0+time_distributed_4/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         2
time_distributed_4/Reshape_1Щ
"time_distributed_4/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"time_distributed_4/Reshape_2/shape═
time_distributed_4/Reshape_2Reshape%time_distributed_3/Reshape_1:output:0+time_distributed_4/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         @2
time_distributed_4/Reshape_2¤
IdentityIdentity%time_distributed_4/Reshape_1:output:0,^lstm_5/lstm_cell_102/BiasAdd/ReadVariableOp+^lstm_5/lstm_cell_102/MatMul/ReadVariableOp-^lstm_5/lstm_cell_102/MatMul_1/ReadVariableOp^lstm_5/while,^lstm_6/lstm_cell_103/BiasAdd/ReadVariableOp+^lstm_6/lstm_cell_103/MatMul/ReadVariableOp-^lstm_6/lstm_cell_103/MatMul_1/ReadVariableOp^lstm_6/while2^time_distributed_3/dense_8/BiasAdd/ReadVariableOp1^time_distributed_3/dense_8/MatMul/ReadVariableOp2^time_distributed_4/dense_9/BiasAdd/ReadVariableOp1^time_distributed_4/dense_9/MatMul/ReadVariableOp*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:         ::::::::::2Z
+lstm_5/lstm_cell_102/BiasAdd/ReadVariableOp+lstm_5/lstm_cell_102/BiasAdd/ReadVariableOp2X
*lstm_5/lstm_cell_102/MatMul/ReadVariableOp*lstm_5/lstm_cell_102/MatMul/ReadVariableOp2\
,lstm_5/lstm_cell_102/MatMul_1/ReadVariableOp,lstm_5/lstm_cell_102/MatMul_1/ReadVariableOp2
lstm_5/whilelstm_5/while2Z
+lstm_6/lstm_cell_103/BiasAdd/ReadVariableOp+lstm_6/lstm_cell_103/BiasAdd/ReadVariableOp2X
*lstm_6/lstm_cell_103/MatMul/ReadVariableOp*lstm_6/lstm_cell_103/MatMul/ReadVariableOp2\
,lstm_6/lstm_cell_103/MatMul_1/ReadVariableOp,lstm_6/lstm_cell_103/MatMul_1/ReadVariableOp2
lstm_6/whilelstm_6/while2f
1time_distributed_3/dense_8/BiasAdd/ReadVariableOp1time_distributed_3/dense_8/BiasAdd/ReadVariableOp2d
0time_distributed_3/dense_8/MatMul/ReadVariableOp0time_distributed_3/dense_8/MatMul/ReadVariableOp2f
1time_distributed_4/dense_9/BiasAdd/ReadVariableOp1time_distributed_4/dense_9/BiasAdd/ReadVariableOp2d
0time_distributed_4/dense_9/MatMul/ReadVariableOp0time_distributed_4/dense_9/MatMul/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Йo
И
&sequential_3_lstm_5_while_body_1212199D
@sequential_3_lstm_5_while_sequential_3_lstm_5_while_loop_counterJ
Fsequential_3_lstm_5_while_sequential_3_lstm_5_while_maximum_iterations)
%sequential_3_lstm_5_while_placeholder+
'sequential_3_lstm_5_while_placeholder_1+
'sequential_3_lstm_5_while_placeholder_2+
'sequential_3_lstm_5_while_placeholder_3C
?sequential_3_lstm_5_while_sequential_3_lstm_5_strided_slice_1_0
{sequential_3_lstm_5_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_5_tensorarrayunstack_tensorlistfromtensor_0L
Hsequential_3_lstm_5_while_lstm_cell_102_matmul_readvariableop_resource_0N
Jsequential_3_lstm_5_while_lstm_cell_102_matmul_1_readvariableop_resource_0M
Isequential_3_lstm_5_while_lstm_cell_102_biasadd_readvariableop_resource_0&
"sequential_3_lstm_5_while_identity(
$sequential_3_lstm_5_while_identity_1(
$sequential_3_lstm_5_while_identity_2(
$sequential_3_lstm_5_while_identity_3(
$sequential_3_lstm_5_while_identity_4(
$sequential_3_lstm_5_while_identity_5A
=sequential_3_lstm_5_while_sequential_3_lstm_5_strided_slice_1}
ysequential_3_lstm_5_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_5_tensorarrayunstack_tensorlistfromtensorJ
Fsequential_3_lstm_5_while_lstm_cell_102_matmul_readvariableop_resourceL
Hsequential_3_lstm_5_while_lstm_cell_102_matmul_1_readvariableop_resourceK
Gsequential_3_lstm_5_while_lstm_cell_102_biasadd_readvariableop_resourceИв>sequential_3/lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOpв=sequential_3/lstm_5/while/lstm_cell_102/MatMul/ReadVariableOpв?sequential_3/lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOpы
Ksequential_3/lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2M
Ksequential_3/lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape╦
=sequential_3/lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_3_lstm_5_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_5_tensorarrayunstack_tensorlistfromtensor_0%sequential_3_lstm_5_while_placeholderTsequential_3/lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02?
=sequential_3/lstm_5/while/TensorArrayV2Read/TensorListGetItemИ
=sequential_3/lstm_5/while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOpHsequential_3_lstm_5_while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02?
=sequential_3/lstm_5/while/lstm_cell_102/MatMul/ReadVariableOpк
.sequential_3/lstm_5/while/lstm_cell_102/MatMulMatMulDsequential_3/lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_3/lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А20
.sequential_3/lstm_5/while/lstm_cell_102/MatMulП
?sequential_3/lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOpJsequential_3_lstm_5_while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02A
?sequential_3/lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOpУ
0sequential_3/lstm_5/while/lstm_cell_102/MatMul_1MatMul'sequential_3_lstm_5_while_placeholder_2Gsequential_3/lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А22
0sequential_3/lstm_5/while/lstm_cell_102/MatMul_1М
+sequential_3/lstm_5/while/lstm_cell_102/addAddV28sequential_3/lstm_5/while/lstm_cell_102/MatMul:product:0:sequential_3/lstm_5/while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:         А2-
+sequential_3/lstm_5/while/lstm_cell_102/addЗ
>sequential_3/lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOpIsequential_3_lstm_5_while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02@
>sequential_3/lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOpЩ
/sequential_3/lstm_5/while/lstm_cell_102/BiasAddBiasAdd/sequential_3/lstm_5/while/lstm_cell_102/add:z:0Fsequential_3/lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А21
/sequential_3/lstm_5/while/lstm_cell_102/BiasAddа
-sequential_3/lstm_5/while/lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2/
-sequential_3/lstm_5/while/lstm_cell_102/Const┤
7sequential_3/lstm_5/while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :29
7sequential_3/lstm_5/while/lstm_cell_102/split/split_dimу
-sequential_3/lstm_5/while/lstm_cell_102/splitSplit@sequential_3/lstm_5/while/lstm_cell_102/split/split_dim:output:08sequential_3/lstm_5/while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2/
-sequential_3/lstm_5/while/lstm_cell_102/split╪
/sequential_3/lstm_5/while/lstm_cell_102/SigmoidSigmoid6sequential_3/lstm_5/while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:         А21
/sequential_3/lstm_5/while/lstm_cell_102/Sigmoid▄
1sequential_3/lstm_5/while/lstm_cell_102/Sigmoid_1Sigmoid6sequential_3/lstm_5/while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:         А23
1sequential_3/lstm_5/while/lstm_cell_102/Sigmoid_1Ї
+sequential_3/lstm_5/while/lstm_cell_102/mulMul5sequential_3/lstm_5/while/lstm_cell_102/Sigmoid_1:y:0'sequential_3_lstm_5_while_placeholder_3*
T0*(
_output_shapes
:         А2-
+sequential_3/lstm_5/while/lstm_cell_102/mul▄
1sequential_3/lstm_5/while/lstm_cell_102/Sigmoid_2Sigmoid6sequential_3/lstm_5/while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:         А23
1sequential_3/lstm_5/while/lstm_cell_102/Sigmoid_2З
-sequential_3/lstm_5/while/lstm_cell_102/mul_1Mul6sequential_3/lstm_5/while/lstm_cell_102/split:output:25sequential_3/lstm_5/while/lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:         А2/
-sequential_3/lstm_5/while/lstm_cell_102/mul_1╓
0sequential_3/lstm_5/while/lstm_cell_102/IdentityIdentity1sequential_3/lstm_5/while/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:         А22
0sequential_3/lstm_5/while/lstm_cell_102/Identity╪
1sequential_3/lstm_5/while/lstm_cell_102/IdentityN	IdentityN1sequential_3/lstm_5/while/lstm_cell_102/mul_1:z:06sequential_3/lstm_5/while/lstm_cell_102/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1212242*<
_output_shapes*
(:         А:         А23
1sequential_3/lstm_5/while/lstm_cell_102/IdentityNЙ
-sequential_3/lstm_5/while/lstm_cell_102/mul_2Mul3sequential_3/lstm_5/while/lstm_cell_102/Sigmoid:y:0:sequential_3/lstm_5/while/lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:         А2/
-sequential_3/lstm_5/while/lstm_cell_102/mul_2■
-sequential_3/lstm_5/while/lstm_cell_102/add_1AddV2/sequential_3/lstm_5/while/lstm_cell_102/mul:z:01sequential_3/lstm_5/while/lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:         А2/
-sequential_3/lstm_5/while/lstm_cell_102/add_1▄
1sequential_3/lstm_5/while/lstm_cell_102/Sigmoid_3Sigmoid6sequential_3/lstm_5/while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:         А23
1sequential_3/lstm_5/while/lstm_cell_102/Sigmoid_3╫
1sequential_3/lstm_5/while/lstm_cell_102/Sigmoid_4Sigmoid1sequential_3/lstm_5/while/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:         А23
1sequential_3/lstm_5/while/lstm_cell_102/Sigmoid_4В
-sequential_3/lstm_5/while/lstm_cell_102/mul_3Mul1sequential_3/lstm_5/while/lstm_cell_102/add_1:z:05sequential_3/lstm_5/while/lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:         А2/
-sequential_3/lstm_5/while/lstm_cell_102/mul_3┌
2sequential_3/lstm_5/while/lstm_cell_102/Identity_1Identity1sequential_3/lstm_5/while/lstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:         А24
2sequential_3/lstm_5/while/lstm_cell_102/Identity_1╫
3sequential_3/lstm_5/while/lstm_cell_102/IdentityN_1	IdentityN1sequential_3/lstm_5/while/lstm_cell_102/mul_3:z:01sequential_3/lstm_5/while/lstm_cell_102/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1212251*<
_output_shapes*
(:         А:         А25
3sequential_3/lstm_5/while/lstm_cell_102/IdentityN_1Н
-sequential_3/lstm_5/while/lstm_cell_102/mul_4Mul5sequential_3/lstm_5/while/lstm_cell_102/Sigmoid_3:y:0<sequential_3/lstm_5/while/lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:         А2/
-sequential_3/lstm_5/while/lstm_cell_102/mul_4┼
>sequential_3/lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_3_lstm_5_while_placeholder_1%sequential_3_lstm_5_while_placeholder1sequential_3/lstm_5/while/lstm_cell_102/mul_4:z:0*
_output_shapes
: *
element_dtype02@
>sequential_3/lstm_5/while/TensorArrayV2Write/TensorListSetItemД
sequential_3/lstm_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_3/lstm_5/while/add/y╣
sequential_3/lstm_5/while/addAddV2%sequential_3_lstm_5_while_placeholder(sequential_3/lstm_5/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_3/lstm_5/while/addИ
!sequential_3/lstm_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_3/lstm_5/while/add_1/y┌
sequential_3/lstm_5/while/add_1AddV2@sequential_3_lstm_5_while_sequential_3_lstm_5_while_loop_counter*sequential_3/lstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
sequential_3/lstm_5/while/add_1▌
"sequential_3/lstm_5/while/IdentityIdentity#sequential_3/lstm_5/while/add_1:z:0?^sequential_3/lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp>^sequential_3/lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp@^sequential_3/lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2$
"sequential_3/lstm_5/while/IdentityД
$sequential_3/lstm_5/while/Identity_1IdentityFsequential_3_lstm_5_while_sequential_3_lstm_5_while_maximum_iterations?^sequential_3/lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp>^sequential_3/lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp@^sequential_3/lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_3/lstm_5/while/Identity_1▀
$sequential_3/lstm_5/while/Identity_2Identity!sequential_3/lstm_5/while/add:z:0?^sequential_3/lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp>^sequential_3/lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp@^sequential_3/lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_3/lstm_5/while/Identity_2М
$sequential_3/lstm_5/while/Identity_3IdentityNsequential_3/lstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0?^sequential_3/lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp>^sequential_3/lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp@^sequential_3/lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_3/lstm_5/while/Identity_3Б
$sequential_3/lstm_5/while/Identity_4Identity1sequential_3/lstm_5/while/lstm_cell_102/mul_4:z:0?^sequential_3/lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp>^sequential_3/lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp@^sequential_3/lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:         А2&
$sequential_3/lstm_5/while/Identity_4Б
$sequential_3/lstm_5/while/Identity_5Identity1sequential_3/lstm_5/while/lstm_cell_102/add_1:z:0?^sequential_3/lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp>^sequential_3/lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp@^sequential_3/lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:         А2&
$sequential_3/lstm_5/while/Identity_5"Q
"sequential_3_lstm_5_while_identity+sequential_3/lstm_5/while/Identity:output:0"U
$sequential_3_lstm_5_while_identity_1-sequential_3/lstm_5/while/Identity_1:output:0"U
$sequential_3_lstm_5_while_identity_2-sequential_3/lstm_5/while/Identity_2:output:0"U
$sequential_3_lstm_5_while_identity_3-sequential_3/lstm_5/while/Identity_3:output:0"U
$sequential_3_lstm_5_while_identity_4-sequential_3/lstm_5/while/Identity_4:output:0"U
$sequential_3_lstm_5_while_identity_5-sequential_3/lstm_5/while/Identity_5:output:0"Ф
Gsequential_3_lstm_5_while_lstm_cell_102_biasadd_readvariableop_resourceIsequential_3_lstm_5_while_lstm_cell_102_biasadd_readvariableop_resource_0"Ц
Hsequential_3_lstm_5_while_lstm_cell_102_matmul_1_readvariableop_resourceJsequential_3_lstm_5_while_lstm_cell_102_matmul_1_readvariableop_resource_0"Т
Fsequential_3_lstm_5_while_lstm_cell_102_matmul_readvariableop_resourceHsequential_3_lstm_5_while_lstm_cell_102_matmul_readvariableop_resource_0"А
=sequential_3_lstm_5_while_sequential_3_lstm_5_strided_slice_1?sequential_3_lstm_5_while_sequential_3_lstm_5_strided_slice_1_0"°
ysequential_3_lstm_5_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_5_tensorarrayunstack_tensorlistfromtensor{sequential_3_lstm_5_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :         А:         А: : :::2А
>sequential_3/lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp>sequential_3/lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp2~
=sequential_3/lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp=sequential_3/lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp2В
?sequential_3/lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp?sequential_3/lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
Я
И
O__inference_time_distributed_4_layer_call_and_return_conditional_losses_1217473

inputs*
&dense_9_matmul_readvariableop_resource+
'dense_9_biasadd_readvariableop_resource
identityИвdense_9/BiasAdd/ReadVariableOpвdense_9/MatMul/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         @2	
Reshapeе
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_9/MatMul/ReadVariableOpХ
dense_9/MatMulMatMulReshape:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_9/MatMulд
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_9/BiasAdd/ReadVariableOpб
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_9/BiasAddq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2и
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shapeФ
	Reshape_1Reshapedense_9/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  2
	Reshape_1┤
IdentityIdentityReshape_1:output:0^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :                  2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:                  @::2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :                  @
 
_user_specified_nameinputs
ЦY
ш	
lstm_6_while_body_1215675*
&lstm_6_while_lstm_6_while_loop_counter0
,lstm_6_while_lstm_6_while_maximum_iterations
lstm_6_while_placeholder
lstm_6_while_placeholder_1
lstm_6_while_placeholder_2
lstm_6_while_placeholder_3)
%lstm_6_while_lstm_6_strided_slice_1_0e
alstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0?
;lstm_6_while_lstm_cell_103_matmul_readvariableop_resource_0A
=lstm_6_while_lstm_cell_103_matmul_1_readvariableop_resource_0@
<lstm_6_while_lstm_cell_103_biasadd_readvariableop_resource_0
lstm_6_while_identity
lstm_6_while_identity_1
lstm_6_while_identity_2
lstm_6_while_identity_3
lstm_6_while_identity_4
lstm_6_while_identity_5'
#lstm_6_while_lstm_6_strided_slice_1c
_lstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor=
9lstm_6_while_lstm_cell_103_matmul_readvariableop_resource?
;lstm_6_while_lstm_cell_103_matmul_1_readvariableop_resource>
:lstm_6_while_lstm_cell_103_biasadd_readvariableop_resourceИв1lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOpв0lstm_6/while/lstm_cell_103/MatMul/ReadVariableOpв2lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp╤
>lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   2@
>lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shape■
0lstm_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0lstm_6_while_placeholderGlstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         А*
element_dtype022
0lstm_6/while/TensorArrayV2Read/TensorListGetItemт
0lstm_6/while/lstm_cell_103/MatMul/ReadVariableOpReadVariableOp;lstm_6_while_lstm_cell_103_matmul_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype022
0lstm_6/while/lstm_cell_103/MatMul/ReadVariableOpЎ
!lstm_6/while/lstm_cell_103/MatMulMatMul7lstm_6/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2#
!lstm_6/while/lstm_cell_103/MatMulч
2lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOp=lstm_6_while_lstm_cell_103_matmul_1_readvariableop_resource_0*
_output_shapes
:	@А*
dtype024
2lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp▀
#lstm_6/while/lstm_cell_103/MatMul_1MatMullstm_6_while_placeholder_2:lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2%
#lstm_6/while/lstm_cell_103/MatMul_1╪
lstm_6/while/lstm_cell_103/addAddV2+lstm_6/while/lstm_cell_103/MatMul:product:0-lstm_6/while/lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:         А2 
lstm_6/while/lstm_cell_103/addр
1lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOp<lstm_6_while_lstm_cell_103_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype023
1lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOpх
"lstm_6/while/lstm_cell_103/BiasAddBiasAdd"lstm_6/while/lstm_cell_103/add:z:09lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2$
"lstm_6/while/lstm_cell_103/BiasAddЖ
 lstm_6/while/lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2"
 lstm_6/while/lstm_cell_103/ConstЪ
*lstm_6/while/lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_6/while/lstm_cell_103/split/split_dimл
 lstm_6/while/lstm_cell_103/splitSplit3lstm_6/while/lstm_cell_103/split/split_dim:output:0+lstm_6/while/lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2"
 lstm_6/while/lstm_cell_103/split░
"lstm_6/while/lstm_cell_103/SigmoidSigmoid)lstm_6/while/lstm_cell_103/split:output:0*
T0*'
_output_shapes
:         @2$
"lstm_6/while/lstm_cell_103/Sigmoid┤
$lstm_6/while/lstm_cell_103/Sigmoid_1Sigmoid)lstm_6/while/lstm_cell_103/split:output:1*
T0*'
_output_shapes
:         @2&
$lstm_6/while/lstm_cell_103/Sigmoid_1┐
lstm_6/while/lstm_cell_103/mulMul(lstm_6/while/lstm_cell_103/Sigmoid_1:y:0lstm_6_while_placeholder_3*
T0*'
_output_shapes
:         @2 
lstm_6/while/lstm_cell_103/mul┤
$lstm_6/while/lstm_cell_103/Sigmoid_2Sigmoid)lstm_6/while/lstm_cell_103/split:output:2*
T0*'
_output_shapes
:         @2&
$lstm_6/while/lstm_cell_103/Sigmoid_2╥
 lstm_6/while/lstm_cell_103/mul_1Mul)lstm_6/while/lstm_cell_103/split:output:2(lstm_6/while/lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:         @2"
 lstm_6/while/lstm_cell_103/mul_1о
#lstm_6/while/lstm_cell_103/IdentityIdentity$lstm_6/while/lstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:         @2%
#lstm_6/while/lstm_cell_103/Identityв
$lstm_6/while/lstm_cell_103/IdentityN	IdentityN$lstm_6/while/lstm_cell_103/mul_1:z:0)lstm_6/while/lstm_cell_103/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1215718*:
_output_shapes(
&:         @:         @2&
$lstm_6/while/lstm_cell_103/IdentityN╘
 lstm_6/while/lstm_cell_103/mul_2Mul&lstm_6/while/lstm_cell_103/Sigmoid:y:0-lstm_6/while/lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:         @2"
 lstm_6/while/lstm_cell_103/mul_2╔
 lstm_6/while/lstm_cell_103/add_1AddV2"lstm_6/while/lstm_cell_103/mul:z:0$lstm_6/while/lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:         @2"
 lstm_6/while/lstm_cell_103/add_1┤
$lstm_6/while/lstm_cell_103/Sigmoid_3Sigmoid)lstm_6/while/lstm_cell_103/split:output:3*
T0*'
_output_shapes
:         @2&
$lstm_6/while/lstm_cell_103/Sigmoid_3п
$lstm_6/while/lstm_cell_103/Sigmoid_4Sigmoid$lstm_6/while/lstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:         @2&
$lstm_6/while/lstm_cell_103/Sigmoid_4═
 lstm_6/while/lstm_cell_103/mul_3Mul$lstm_6/while/lstm_cell_103/add_1:z:0(lstm_6/while/lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:         @2"
 lstm_6/while/lstm_cell_103/mul_3▓
%lstm_6/while/lstm_cell_103/Identity_1Identity$lstm_6/while/lstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:         @2'
%lstm_6/while/lstm_cell_103/Identity_1б
&lstm_6/while/lstm_cell_103/IdentityN_1	IdentityN$lstm_6/while/lstm_cell_103/mul_3:z:0$lstm_6/while/lstm_cell_103/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1215727*:
_output_shapes(
&:         @:         @2(
&lstm_6/while/lstm_cell_103/IdentityN_1╪
 lstm_6/while/lstm_cell_103/mul_4Mul(lstm_6/while/lstm_cell_103/Sigmoid_3:y:0/lstm_6/while/lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:         @2"
 lstm_6/while/lstm_cell_103/mul_4Д
1lstm_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_6_while_placeholder_1lstm_6_while_placeholder$lstm_6/while/lstm_cell_103/mul_4:z:0*
_output_shapes
: *
element_dtype023
1lstm_6/while/TensorArrayV2Write/TensorListSetItemj
lstm_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_6/while/add/yЕ
lstm_6/while/addAddV2lstm_6_while_placeholderlstm_6/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_6/while/addn
lstm_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_6/while/add_1/yЩ
lstm_6/while/add_1AddV2&lstm_6_while_lstm_6_while_loop_counterlstm_6/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_6/while/add_1П
lstm_6/while/IdentityIdentitylstm_6/while/add_1:z:02^lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp1^lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp3^lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_6/while/Identityй
lstm_6/while/Identity_1Identity,lstm_6_while_lstm_6_while_maximum_iterations2^lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp1^lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp3^lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_1С
lstm_6/while/Identity_2Identitylstm_6/while/add:z:02^lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp1^lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp3^lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_2╛
lstm_6/while/Identity_3IdentityAlstm_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp1^lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp3^lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_3▓
lstm_6/while/Identity_4Identity$lstm_6/while/lstm_cell_103/mul_4:z:02^lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp1^lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp3^lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:         @2
lstm_6/while/Identity_4▓
lstm_6/while/Identity_5Identity$lstm_6/while/lstm_cell_103/add_1:z:02^lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp1^lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp3^lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:         @2
lstm_6/while/Identity_5"7
lstm_6_while_identitylstm_6/while/Identity:output:0";
lstm_6_while_identity_1 lstm_6/while/Identity_1:output:0";
lstm_6_while_identity_2 lstm_6/while/Identity_2:output:0";
lstm_6_while_identity_3 lstm_6/while/Identity_3:output:0";
lstm_6_while_identity_4 lstm_6/while/Identity_4:output:0";
lstm_6_while_identity_5 lstm_6/while/Identity_5:output:0"L
#lstm_6_while_lstm_6_strided_slice_1%lstm_6_while_lstm_6_strided_slice_1_0"z
:lstm_6_while_lstm_cell_103_biasadd_readvariableop_resource<lstm_6_while_lstm_cell_103_biasadd_readvariableop_resource_0"|
;lstm_6_while_lstm_cell_103_matmul_1_readvariableop_resource=lstm_6_while_lstm_cell_103_matmul_1_readvariableop_resource_0"x
9lstm_6_while_lstm_cell_103_matmul_readvariableop_resource;lstm_6_while_lstm_cell_103_matmul_readvariableop_resource_0"─
_lstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensoralstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :         @:         @: : :::2f
1lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp1lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp2d
0lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp0lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp2h
2lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp2lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
Ш
║
O__inference_time_distributed_3_layer_call_and_return_conditional_losses_1213873

inputs
dense_8_1213863
dense_8_1213865
identityИвdense_8/StatefulPartitionedCallD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         @2	
ReshapeЬ
dense_8/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_8_1213863dense_8_1213865*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_12137802!
dense_8/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2
Reshape_1/shape/2и
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shapeд
	Reshape_1Reshape(dense_8/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  @2
	Reshape_1Х
IdentityIdentityReshape_1:output:0 ^dense_8/StatefulPartitionedCall*
T0*4
_output_shapes"
 :                  @2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:                  @::2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall:\ X
4
_output_shapes"
 :                  @
 
_user_specified_nameinputs
Н
М
(__inference_lstm_6_layer_call_fn_1216943

inputs
unknown
	unknown_0
	unknown_1
identityИвStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_6_layer_call_and_return_conditional_losses_12145522
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:         @2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         А:::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         А
 
_user_specified_nameinputs
┘
°
%__inference_signature_wrapper_1215056
lstm_5_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identityИвStatefulPartitionedCall─
StatefulPartitionedCallStatefulPartitionedCalllstm_5_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference__wrapped_model_12124932
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:         ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:         
&
_user_specified_namelstm_5_input
┴
╧
/__inference_lstm_cell_103_layer_call_fn_1217798

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2ИвStatefulPartitionedCall┼
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         @:         @:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_103_layer_call_and_return_conditional_losses_12132492
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         @2

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:         @2

Identity_1Т

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:         @2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*Y
_input_shapesH
F:         А:         @:         @:::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs:QM
'
_output_shapes
:         @
"
_user_specified_name
states/0:QM
'
_output_shapes
:         @
"
_user_specified_name
states/1
╫
И
O__inference_time_distributed_4_layer_call_and_return_conditional_losses_1214833

inputs*
&dense_9_matmul_readvariableop_resource+
'dense_9_biasadd_readvariableop_resource
identityИвdense_9/BiasAdd/ReadVariableOpвdense_9/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         @2	
Reshapeе
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_9/MatMul/ReadVariableOpХ
dense_9/MatMulMatMulReshape:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_9/MatMulд
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_9/BiasAdd/ReadVariableOpб
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_9/BiasAddw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          2
Reshape_1/shapeЛ
	Reshape_1Reshapedense_9/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         2
	Reshape_1л
IdentityIdentityReshape_1:output:0^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*2
_input_shapes!
:         @::2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
┌M
И
while_body_1214082
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_08
4while_lstm_cell_102_matmul_readvariableop_resource_0:
6while_lstm_cell_102_matmul_1_readvariableop_resource_09
5while_lstm_cell_102_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor6
2while_lstm_cell_102_matmul_readvariableop_resource8
4while_lstm_cell_102_matmul_1_readvariableop_resource7
3while_lstm_cell_102_biasadd_readvariableop_resourceИв*while/lstm_cell_102/BiasAdd/ReadVariableOpв)while/lstm_cell_102/MatMul/ReadVariableOpв+while/lstm_cell_102/MatMul_1/ReadVariableOp├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem╠
)while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02+
)while/lstm_cell_102/MatMul/ReadVariableOp┌
while/lstm_cell_102/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/MatMul╙
+while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02-
+while/lstm_cell_102/MatMul_1/ReadVariableOp├
while/lstm_cell_102/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/MatMul_1╝
while/lstm_cell_102/addAddV2$while/lstm_cell_102/MatMul:product:0&while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/add╦
*while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02,
*while/lstm_cell_102/BiasAdd/ReadVariableOp╔
while/lstm_cell_102/BiasAddBiasAddwhile/lstm_cell_102/add:z:02while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/BiasAddx
while/lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_102/ConstМ
#while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_102/split/split_dimУ
while/lstm_cell_102/splitSplit,while/lstm_cell_102/split/split_dim:output:0$while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
while/lstm_cell_102/splitЬ
while/lstm_cell_102/SigmoidSigmoid"while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/Sigmoidа
while/lstm_cell_102/Sigmoid_1Sigmoid"while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/Sigmoid_1д
while/lstm_cell_102/mulMul!while/lstm_cell_102/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/mulа
while/lstm_cell_102/Sigmoid_2Sigmoid"while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/Sigmoid_2╖
while/lstm_cell_102/mul_1Mul"while/lstm_cell_102/split:output:2!while/lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/mul_1Ъ
while/lstm_cell_102/IdentityIdentitywhile/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/IdentityИ
while/lstm_cell_102/IdentityN	IdentityNwhile/lstm_cell_102/mul_1:z:0"while/lstm_cell_102/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1214125*<
_output_shapes*
(:         А:         А2
while/lstm_cell_102/IdentityN╣
while/lstm_cell_102/mul_2Mulwhile/lstm_cell_102/Sigmoid:y:0&while/lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/mul_2о
while/lstm_cell_102/add_1AddV2while/lstm_cell_102/mul:z:0while/lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/add_1а
while/lstm_cell_102/Sigmoid_3Sigmoid"while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/Sigmoid_3Ы
while/lstm_cell_102/Sigmoid_4Sigmoidwhile/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/Sigmoid_4▓
while/lstm_cell_102/mul_3Mulwhile/lstm_cell_102/add_1:z:0!while/lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/mul_3Ю
while/lstm_cell_102/Identity_1Identitywhile/lstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:         А2 
while/lstm_cell_102/Identity_1З
while/lstm_cell_102/IdentityN_1	IdentityNwhile/lstm_cell_102/mul_3:z:0while/lstm_cell_102/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1214134*<
_output_shapes*
(:         А:         А2!
while/lstm_cell_102/IdentityN_1╜
while/lstm_cell_102/mul_4Mul!while/lstm_cell_102/Sigmoid_3:y:0(while/lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/mul_4с
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_102/mul_4:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1х
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity°
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ч
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2Ф
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Й
while/Identity_4Identitywhile/lstm_cell_102/mul_4:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:         А2
while/Identity_4Й
while/Identity_5Identitywhile/lstm_cell_102/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:         А2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_102_biasadd_readvariableop_resource5while_lstm_cell_102_biasadd_readvariableop_resource_0"n
4while_lstm_cell_102_matmul_1_readvariableop_resource6while_lstm_cell_102_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_102_matmul_readvariableop_resource4while_lstm_cell_102_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :         А:         А: : :::2X
*while/lstm_cell_102/BiasAdd/ReadVariableOp*while/lstm_cell_102/BiasAdd/ReadVariableOp2V
)while/lstm_cell_102/MatMul/ReadVariableOp)while/lstm_cell_102/MatMul/ReadVariableOp2Z
+while/lstm_cell_102/MatMul_1/ReadVariableOp+while/lstm_cell_102/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
з
Й
4__inference_time_distributed_4_layer_call_fn_1217503

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_time_distributed_4_layer_call_and_return_conditional_losses_12139652
StatefulPartitionedCallЫ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :                  2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:                  @::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :                  @
 
_user_specified_nameinputs
Ш
║
O__inference_time_distributed_4_layer_call_and_return_conditional_losses_1213965

inputs
dense_9_1213955
dense_9_1213957
identityИвdense_9/StatefulPartitionedCallD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         @2	
ReshapeЬ
dense_9/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_9_1213955dense_9_1213957*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_12139012!
dense_9/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2и
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shapeд
	Reshape_1Reshape(dense_9/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  2
	Reshape_1Х
IdentityIdentityReshape_1:output:0 ^dense_9/StatefulPartitionedCall*
T0*4
_output_shapes"
 :                  2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:                  @::2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:\ X
4
_output_shapes"
 :                  @
 
_user_specified_nameinputs
Т	
▌
D__inference_dense_9_layer_call_and_return_conditional_losses_1213901

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
з
Й
4__inference_time_distributed_3_layer_call_fn_1217394

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_time_distributed_3_layer_call_and_return_conditional_losses_12138732
StatefulPartitionedCallЫ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :                  @2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:                  @::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :                  @
 
_user_specified_nameinputs
┤
╚
while_cond_1216295
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1216295___redundant_placeholder05
1while_while_cond_1216295___redundant_placeholder15
1while_while_cond_1216295___redundant_placeholder25
1while_while_cond_1216295___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :         А:         А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
╨d
°
C__inference_lstm_5_layer_call_and_return_conditional_losses_1216196

inputs0
,lstm_cell_102_matmul_readvariableop_resource2
.lstm_cell_102_matmul_1_readvariableop_resource1
-lstm_cell_102_biasadd_readvariableop_resource
identityИв$lstm_cell_102/BiasAdd/ReadVariableOpв#lstm_cell_102/MatMul/ReadVariableOpв%lstm_cell_102/MatMul_1/ReadVariableOpвwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         А2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         А2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_2╕
#lstm_cell_102/MatMul/ReadVariableOpReadVariableOp,lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02%
#lstm_cell_102/MatMul/ReadVariableOp░
lstm_cell_102/MatMulMatMulstrided_slice_2:output:0+lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/MatMul┐
%lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02'
%lstm_cell_102/MatMul_1/ReadVariableOpм
lstm_cell_102/MatMul_1MatMulzeros:output:0-lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/MatMul_1д
lstm_cell_102/addAddV2lstm_cell_102/MatMul:product:0 lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/add╖
$lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02&
$lstm_cell_102/BiasAdd/ReadVariableOp▒
lstm_cell_102/BiasAddBiasAddlstm_cell_102/add:z:0,lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/BiasAddl
lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/ConstА
lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/split/split_dim√
lstm_cell_102/splitSplit&lstm_cell_102/split/split_dim:output:0lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
lstm_cell_102/splitК
lstm_cell_102/SigmoidSigmoidlstm_cell_102/split:output:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/SigmoidО
lstm_cell_102/Sigmoid_1Sigmoidlstm_cell_102/split:output:1*
T0*(
_output_shapes
:         А2
lstm_cell_102/Sigmoid_1П
lstm_cell_102/mulMullstm_cell_102/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/mulО
lstm_cell_102/Sigmoid_2Sigmoidlstm_cell_102/split:output:2*
T0*(
_output_shapes
:         А2
lstm_cell_102/Sigmoid_2Я
lstm_cell_102/mul_1Mullstm_cell_102/split:output:2lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/mul_1И
lstm_cell_102/IdentityIdentitylstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/IdentityЁ
lstm_cell_102/IdentityN	IdentityNlstm_cell_102/mul_1:z:0lstm_cell_102/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1216081*<
_output_shapes*
(:         А:         А2
lstm_cell_102/IdentityNб
lstm_cell_102/mul_2Mullstm_cell_102/Sigmoid:y:0 lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/mul_2Ц
lstm_cell_102/add_1AddV2lstm_cell_102/mul:z:0lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/add_1О
lstm_cell_102/Sigmoid_3Sigmoidlstm_cell_102/split:output:3*
T0*(
_output_shapes
:         А2
lstm_cell_102/Sigmoid_3Й
lstm_cell_102/Sigmoid_4Sigmoidlstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/Sigmoid_4Ъ
lstm_cell_102/mul_3Mullstm_cell_102/add_1:z:0lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/mul_3М
lstm_cell_102/Identity_1Identitylstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/Identity_1я
lstm_cell_102/IdentityN_1	IdentityNlstm_cell_102/mul_3:z:0lstm_cell_102/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1216090*<
_output_shapes*
(:         А:         А2
lstm_cell_102/IdentityN_1е
lstm_cell_102/mul_4Mullstm_cell_102/Sigmoid_3:y:0"lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/mul_4П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   2
TensorArrayV2_1/element_shape╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterў
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_102_matmul_readvariableop_resource.lstm_cell_102_matmul_1_readvariableop_resource-lstm_cell_102_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         А:         А: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1216101*
condR
while_cond_1216100*M
output_shapes<
:: : : : :         А:         А: : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   22
0TensorArrayV2Stack/TensorListStack/element_shapeщ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permж
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         А2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeх
IdentityIdentitytranspose_1:y:0%^lstm_cell_102/BiasAdd/ReadVariableOp$^lstm_cell_102/MatMul/ReadVariableOp&^lstm_cell_102/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:         А2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         :::2L
$lstm_cell_102/BiasAdd/ReadVariableOp$lstm_cell_102/BiasAdd/ReadVariableOp2J
#lstm_cell_102/MatMul/ReadVariableOp#lstm_cell_102/MatMul/ReadVariableOp2N
%lstm_cell_102/MatMul_1/ReadVariableOp%lstm_cell_102/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
┴
╧
/__inference_lstm_cell_103_layer_call_fn_1217781

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2ИвStatefulPartitionedCall┼
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         @:         @:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_103_layer_call_and_return_conditional_losses_12132062
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         @2

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:         @2

Identity_1Т

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:         @2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*Y
_input_shapesH
F:         А:         @:         @:::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs:QM
'
_output_shapes
:         @
"
_user_specified_name
states/0:QM
'
_output_shapes
:         @
"
_user_specified_name
states/1
з
И
O__inference_time_distributed_3_layer_call_and_return_conditional_losses_1217414

inputs*
&dense_8_matmul_readvariableop_resource+
'dense_8_biasadd_readvariableop_resource
identityИвdense_8/BiasAdd/ReadVariableOpвdense_8/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         @2	
Reshapeе
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_8/MatMul/ReadVariableOpХ
dense_8/MatMulMatMulReshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_8/MatMulд
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_8/BiasAdd/ReadVariableOpб
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_8/BiasAddy
dense_8/SigmoidSigmoiddense_8/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_8/SigmoidВ
dense_8/mulMuldense_8/BiasAdd:output:0dense_8/Sigmoid:y:0*
T0*'
_output_shapes
:         @2
dense_8/muls
dense_8/IdentityIdentitydense_8/mul:z:0*
T0*'
_output_shapes
:         @2
dense_8/Identity╓
dense_8/IdentityN	IdentityNdense_8/mul:z:0dense_8/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1217405*:
_output_shapes(
&:         @:         @2
dense_8/IdentityNw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       @   2
Reshape_1/shapeН
	Reshape_1Reshapedense_8/IdentityN:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         @2
	Reshape_1л
IdentityIdentityReshape_1:output:0^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp*
T0*+
_output_shapes
:         @2

Identity"
identityIdentity:output:0*2
_input_shapes!
:         @::2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
░
╚
while_cond_1216836
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1216836___redundant_placeholder05
1while_while_cond_1216836___redundant_placeholder15
1while_while_cond_1216836___redundant_placeholder25
1while_while_cond_1216836___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :         @:         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
К
╪
&sequential_3_lstm_6_while_cond_1212367D
@sequential_3_lstm_6_while_sequential_3_lstm_6_while_loop_counterJ
Fsequential_3_lstm_6_while_sequential_3_lstm_6_while_maximum_iterations)
%sequential_3_lstm_6_while_placeholder+
'sequential_3_lstm_6_while_placeholder_1+
'sequential_3_lstm_6_while_placeholder_2+
'sequential_3_lstm_6_while_placeholder_3F
Bsequential_3_lstm_6_while_less_sequential_3_lstm_6_strided_slice_1]
Ysequential_3_lstm_6_while_sequential_3_lstm_6_while_cond_1212367___redundant_placeholder0]
Ysequential_3_lstm_6_while_sequential_3_lstm_6_while_cond_1212367___redundant_placeholder1]
Ysequential_3_lstm_6_while_sequential_3_lstm_6_while_cond_1212367___redundant_placeholder2]
Ysequential_3_lstm_6_while_sequential_3_lstm_6_while_cond_1212367___redundant_placeholder3&
"sequential_3_lstm_6_while_identity
╘
sequential_3/lstm_6/while/LessLess%sequential_3_lstm_6_while_placeholderBsequential_3_lstm_6_while_less_sequential_3_lstm_6_strided_slice_1*
T0*
_output_shapes
: 2 
sequential_3/lstm_6/while/LessЩ
"sequential_3/lstm_6/while/IdentityIdentity"sequential_3/lstm_6/while/Less:z:0*
T0
*
_output_shapes
: 2$
"sequential_3/lstm_6/while/Identity"Q
"sequential_3_lstm_6_while_identity+sequential_3/lstm_6/while/Identity:output:0*S
_input_shapesB
@: : : : :         @:         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
ло
с
#__inference__traced_restore_1218121
file_prefix
assignvariableop_adam_iter"
assignvariableop_1_adam_beta_1"
assignvariableop_2_adam_beta_2!
assignvariableop_3_adam_decay)
%assignvariableop_4_adam_learning_rate0
,assignvariableop_5_lstm_5_lstm_cell_5_kernel:
6assignvariableop_6_lstm_5_lstm_cell_5_recurrent_kernel.
*assignvariableop_7_lstm_5_lstm_cell_5_bias0
,assignvariableop_8_lstm_6_lstm_cell_6_kernel:
6assignvariableop_9_lstm_6_lstm_cell_6_recurrent_kernel/
+assignvariableop_10_lstm_6_lstm_cell_6_bias1
-assignvariableop_11_time_distributed_3_kernel/
+assignvariableop_12_time_distributed_3_bias1
-assignvariableop_13_time_distributed_4_kernel/
+assignvariableop_14_time_distributed_4_bias
assignvariableop_15_total
assignvariableop_16_count
assignvariableop_17_total_1
assignvariableop_18_count_1
assignvariableop_19_total_2
assignvariableop_20_count_28
4assignvariableop_21_adam_lstm_5_lstm_cell_5_kernel_mB
>assignvariableop_22_adam_lstm_5_lstm_cell_5_recurrent_kernel_m6
2assignvariableop_23_adam_lstm_5_lstm_cell_5_bias_m8
4assignvariableop_24_adam_lstm_6_lstm_cell_6_kernel_mB
>assignvariableop_25_adam_lstm_6_lstm_cell_6_recurrent_kernel_m6
2assignvariableop_26_adam_lstm_6_lstm_cell_6_bias_m8
4assignvariableop_27_adam_time_distributed_3_kernel_m6
2assignvariableop_28_adam_time_distributed_3_bias_m8
4assignvariableop_29_adam_time_distributed_4_kernel_m6
2assignvariableop_30_adam_time_distributed_4_bias_m8
4assignvariableop_31_adam_lstm_5_lstm_cell_5_kernel_vB
>assignvariableop_32_adam_lstm_5_lstm_cell_5_recurrent_kernel_v6
2assignvariableop_33_adam_lstm_5_lstm_cell_5_bias_v8
4assignvariableop_34_adam_lstm_6_lstm_cell_6_kernel_vB
>assignvariableop_35_adam_lstm_6_lstm_cell_6_recurrent_kernel_v6
2assignvariableop_36_adam_lstm_6_lstm_cell_6_bias_v8
4assignvariableop_37_adam_time_distributed_3_kernel_v6
2assignvariableop_38_adam_time_distributed_3_bias_v8
4assignvariableop_39_adam_time_distributed_4_kernel_v6
2assignvariableop_40_adam_time_distributed_4_bias_v
identity_42ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9░
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:**
dtype0*╝
value▓Bп*B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesт
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:**
dtype0*g
value^B\*B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesА
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*╛
_output_shapesл
и::::::::::::::::::::::::::::::::::::::::::*8
dtypes.
,2*	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:2

IdentityЩ
AssignVariableOpAssignVariableOpassignvariableop_adam_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1г
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_beta_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2г
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_2Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3в
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4к
AssignVariableOp_4AssignVariableOp%assignvariableop_4_adam_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5▒
AssignVariableOp_5AssignVariableOp,assignvariableop_5_lstm_5_lstm_cell_5_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6╗
AssignVariableOp_6AssignVariableOp6assignvariableop_6_lstm_5_lstm_cell_5_recurrent_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7п
AssignVariableOp_7AssignVariableOp*assignvariableop_7_lstm_5_lstm_cell_5_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8▒
AssignVariableOp_8AssignVariableOp,assignvariableop_8_lstm_6_lstm_cell_6_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9╗
AssignVariableOp_9AssignVariableOp6assignvariableop_9_lstm_6_lstm_cell_6_recurrent_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10│
AssignVariableOp_10AssignVariableOp+assignvariableop_10_lstm_6_lstm_cell_6_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11╡
AssignVariableOp_11AssignVariableOp-assignvariableop_11_time_distributed_3_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12│
AssignVariableOp_12AssignVariableOp+assignvariableop_12_time_distributed_3_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13╡
AssignVariableOp_13AssignVariableOp-assignvariableop_13_time_distributed_4_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14│
AssignVariableOp_14AssignVariableOp+assignvariableop_14_time_distributed_4_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15б
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16б
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17г
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18г
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19г
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_2Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20г
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_2Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21╝
AssignVariableOp_21AssignVariableOp4assignvariableop_21_adam_lstm_5_lstm_cell_5_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22╞
AssignVariableOp_22AssignVariableOp>assignvariableop_22_adam_lstm_5_lstm_cell_5_recurrent_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23║
AssignVariableOp_23AssignVariableOp2assignvariableop_23_adam_lstm_5_lstm_cell_5_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24╝
AssignVariableOp_24AssignVariableOp4assignvariableop_24_adam_lstm_6_lstm_cell_6_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25╞
AssignVariableOp_25AssignVariableOp>assignvariableop_25_adam_lstm_6_lstm_cell_6_recurrent_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26║
AssignVariableOp_26AssignVariableOp2assignvariableop_26_adam_lstm_6_lstm_cell_6_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27╝
AssignVariableOp_27AssignVariableOp4assignvariableop_27_adam_time_distributed_3_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28║
AssignVariableOp_28AssignVariableOp2assignvariableop_28_adam_time_distributed_3_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29╝
AssignVariableOp_29AssignVariableOp4assignvariableop_29_adam_time_distributed_4_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30║
AssignVariableOp_30AssignVariableOp2assignvariableop_30_adam_time_distributed_4_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31╝
AssignVariableOp_31AssignVariableOp4assignvariableop_31_adam_lstm_5_lstm_cell_5_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32╞
AssignVariableOp_32AssignVariableOp>assignvariableop_32_adam_lstm_5_lstm_cell_5_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33║
AssignVariableOp_33AssignVariableOp2assignvariableop_33_adam_lstm_5_lstm_cell_5_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34╝
AssignVariableOp_34AssignVariableOp4assignvariableop_34_adam_lstm_6_lstm_cell_6_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35╞
AssignVariableOp_35AssignVariableOp>assignvariableop_35_adam_lstm_6_lstm_cell_6_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36║
AssignVariableOp_36AssignVariableOp2assignvariableop_36_adam_lstm_6_lstm_cell_6_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37╝
AssignVariableOp_37AssignVariableOp4assignvariableop_37_adam_time_distributed_3_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38║
AssignVariableOp_38AssignVariableOp2assignvariableop_38_adam_time_distributed_3_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39╝
AssignVariableOp_39AssignVariableOp4assignvariableop_39_adam_time_distributed_4_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40║
AssignVariableOp_40AssignVariableOp2assignvariableop_40_adam_time_distributed_4_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_409
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpф
Identity_41Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_41╫
Identity_42IdentityIdentity_41:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_42"#
identity_42Identity_42:output:0*╗
_input_shapesй
ж: :::::::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
└M
И
while_body_1214630
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_08
4while_lstm_cell_103_matmul_readvariableop_resource_0:
6while_lstm_cell_103_matmul_1_readvariableop_resource_09
5while_lstm_cell_103_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor6
2while_lstm_cell_103_matmul_readvariableop_resource8
4while_lstm_cell_103_matmul_1_readvariableop_resource7
3while_lstm_cell_103_biasadd_readvariableop_resourceИв*while/lstm_cell_103/BiasAdd/ReadVariableOpв)while/lstm_cell_103/MatMul/ReadVariableOpв+while/lstm_cell_103/MatMul_1/ReadVariableOp├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╘
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem═
)while/lstm_cell_103/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_103_matmul_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02+
)while/lstm_cell_103/MatMul/ReadVariableOp┌
while/lstm_cell_103/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_103/MatMul╥
+while/lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_103_matmul_1_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02-
+while/lstm_cell_103/MatMul_1/ReadVariableOp├
while/lstm_cell_103/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_103/MatMul_1╝
while/lstm_cell_103/addAddV2$while/lstm_cell_103/MatMul:product:0&while/lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_103/add╦
*while/lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_103_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02,
*while/lstm_cell_103/BiasAdd/ReadVariableOp╔
while/lstm_cell_103/BiasAddBiasAddwhile/lstm_cell_103/add:z:02while/lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_103/BiasAddx
while/lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_103/ConstМ
#while/lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_103/split/split_dimП
while/lstm_cell_103/splitSplit,while/lstm_cell_103/split/split_dim:output:0$while/lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
while/lstm_cell_103/splitЫ
while/lstm_cell_103/SigmoidSigmoid"while/lstm_cell_103/split:output:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/SigmoidЯ
while/lstm_cell_103/Sigmoid_1Sigmoid"while/lstm_cell_103/split:output:1*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/Sigmoid_1г
while/lstm_cell_103/mulMul!while/lstm_cell_103/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/mulЯ
while/lstm_cell_103/Sigmoid_2Sigmoid"while/lstm_cell_103/split:output:2*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/Sigmoid_2╢
while/lstm_cell_103/mul_1Mul"while/lstm_cell_103/split:output:2!while/lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/mul_1Щ
while/lstm_cell_103/IdentityIdentitywhile/lstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/IdentityЖ
while/lstm_cell_103/IdentityN	IdentityNwhile/lstm_cell_103/mul_1:z:0"while/lstm_cell_103/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1214673*:
_output_shapes(
&:         @:         @2
while/lstm_cell_103/IdentityN╕
while/lstm_cell_103/mul_2Mulwhile/lstm_cell_103/Sigmoid:y:0&while/lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/mul_2н
while/lstm_cell_103/add_1AddV2while/lstm_cell_103/mul:z:0while/lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/add_1Я
while/lstm_cell_103/Sigmoid_3Sigmoid"while/lstm_cell_103/split:output:3*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/Sigmoid_3Ъ
while/lstm_cell_103/Sigmoid_4Sigmoidwhile/lstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/Sigmoid_4▒
while/lstm_cell_103/mul_3Mulwhile/lstm_cell_103/add_1:z:0!while/lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/mul_3Э
while/lstm_cell_103/Identity_1Identitywhile/lstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:         @2 
while/lstm_cell_103/Identity_1Е
while/lstm_cell_103/IdentityN_1	IdentityNwhile/lstm_cell_103/mul_3:z:0while/lstm_cell_103/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1214682*:
_output_shapes(
&:         @:         @2!
while/lstm_cell_103/IdentityN_1╝
while/lstm_cell_103/mul_4Mul!while/lstm_cell_103/Sigmoid_3:y:0(while/lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/mul_4с
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_103/mul_4:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1х
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity°
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ч
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2Ф
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3И
while/Identity_4Identitywhile/lstm_cell_103/mul_4:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:         @2
while/Identity_4И
while/Identity_5Identitywhile/lstm_cell_103/add_1:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:         @2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_103_biasadd_readvariableop_resource5while_lstm_cell_103_biasadd_readvariableop_resource_0"n
4while_lstm_cell_103_matmul_1_readvariableop_resource6while_lstm_cell_103_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_103_matmul_readvariableop_resource4while_lstm_cell_103_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :         @:         @: : :::2X
*while/lstm_cell_103/BiasAdd/ReadVariableOp*while/lstm_cell_103/BiasAdd/ReadVariableOp2V
)while/lstm_cell_103/MatMul/ReadVariableOp)while/lstm_cell_103/MatMul/ReadVariableOp2Z
+while/lstm_cell_103/MatMul_1/ReadVariableOp+while/lstm_cell_103/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
▒d
°
C__inference_lstm_6_layer_call_and_return_conditional_losses_1216759

inputs0
,lstm_cell_103_matmul_readvariableop_resource2
.lstm_cell_103_matmul_1_readvariableop_resource1
-lstm_cell_103_biasadd_readvariableop_resource
identityИв$lstm_cell_103/BiasAdd/ReadVariableOpв#lstm_cell_103/MatMul/ReadVariableOpв%lstm_cell_103/MatMul_1/ReadVariableOpвwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         @2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:         А2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2¤
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_2╣
#lstm_cell_103/MatMul/ReadVariableOpReadVariableOp,lstm_cell_103_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02%
#lstm_cell_103/MatMul/ReadVariableOp░
lstm_cell_103/MatMulMatMulstrided_slice_2:output:0+lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_103/MatMul╛
%lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_103_matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02'
%lstm_cell_103/MatMul_1/ReadVariableOpм
lstm_cell_103/MatMul_1MatMulzeros:output:0-lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_103/MatMul_1д
lstm_cell_103/addAddV2lstm_cell_103/MatMul:product:0 lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_cell_103/add╖
$lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_103_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02&
$lstm_cell_103/BiasAdd/ReadVariableOp▒
lstm_cell_103/BiasAddBiasAddlstm_cell_103/add:z:0,lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_103/BiasAddl
lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_103/ConstА
lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_103/split/split_dimў
lstm_cell_103/splitSplit&lstm_cell_103/split/split_dim:output:0lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
lstm_cell_103/splitЙ
lstm_cell_103/SigmoidSigmoidlstm_cell_103/split:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/SigmoidН
lstm_cell_103/Sigmoid_1Sigmoidlstm_cell_103/split:output:1*
T0*'
_output_shapes
:         @2
lstm_cell_103/Sigmoid_1О
lstm_cell_103/mulMullstm_cell_103/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/mulН
lstm_cell_103/Sigmoid_2Sigmoidlstm_cell_103/split:output:2*
T0*'
_output_shapes
:         @2
lstm_cell_103/Sigmoid_2Ю
lstm_cell_103/mul_1Mullstm_cell_103/split:output:2lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/mul_1З
lstm_cell_103/IdentityIdentitylstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/Identityю
lstm_cell_103/IdentityN	IdentityNlstm_cell_103/mul_1:z:0lstm_cell_103/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1216644*:
_output_shapes(
&:         @:         @2
lstm_cell_103/IdentityNа
lstm_cell_103/mul_2Mullstm_cell_103/Sigmoid:y:0 lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/mul_2Х
lstm_cell_103/add_1AddV2lstm_cell_103/mul:z:0lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/add_1Н
lstm_cell_103/Sigmoid_3Sigmoidlstm_cell_103/split:output:3*
T0*'
_output_shapes
:         @2
lstm_cell_103/Sigmoid_3И
lstm_cell_103/Sigmoid_4Sigmoidlstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/Sigmoid_4Щ
lstm_cell_103/mul_3Mullstm_cell_103/add_1:z:0lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/mul_3Л
lstm_cell_103/Identity_1Identitylstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/Identity_1э
lstm_cell_103/IdentityN_1	IdentityNlstm_cell_103/mul_3:z:0lstm_cell_103/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1216653*:
_output_shapes(
&:         @:         @2
lstm_cell_103/IdentityN_1д
lstm_cell_103/mul_4Mullstm_cell_103/Sigmoid_3:y:0"lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/mul_4П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
TensorArrayV2_1/element_shape╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterє
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_103_matmul_readvariableop_resource.lstm_cell_103_matmul_1_readvariableop_resource-lstm_cell_103_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1216664*
condR
while_cond_1216663*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permе
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         @2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeф
IdentityIdentitytranspose_1:y:0%^lstm_cell_103/BiasAdd/ReadVariableOp$^lstm_cell_103/MatMul/ReadVariableOp&^lstm_cell_103/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:         @2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         А:::2L
$lstm_cell_103/BiasAdd/ReadVariableOp$lstm_cell_103/BiasAdd/ReadVariableOp2J
#lstm_cell_103/MatMul/ReadVariableOp#lstm_cell_103/MatMul/ReadVariableOp2N
%lstm_cell_103/MatMul_1/ReadVariableOp%lstm_cell_103/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:         А
 
_user_specified_nameinputs
ш"
▀
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_1212619

inputs

states
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource

identity_2

identity_3

identity_4ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulХ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim├
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         А2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         А2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         А2
muld
	Sigmoid_2Sigmoidsplit:output:2*
T0*(
_output_shapes
:         А2
	Sigmoid_2g
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*(
_output_shapes
:         А2
mul_1^
IdentityIdentity	mul_1:z:0*
T0*(
_output_shapes
:         А2

Identity╕
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1212600*<
_output_shapes*
(:         А:         А2
	IdentityNi
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*(
_output_shapes
:         А2
mul_2^
add_1AddV2mul:z:0	mul_2:z:0*
T0*(
_output_shapes
:         А2
add_1d
	Sigmoid_3Sigmoidsplit:output:3*
T0*(
_output_shapes
:         А2
	Sigmoid_3_
	Sigmoid_4Sigmoid	add_1:z:0*
T0*(
_output_shapes
:         А2
	Sigmoid_4b
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*(
_output_shapes
:         А2
mul_3b

Identity_1Identity	mul_3:z:0*
T0*(
_output_shapes
:         А2

Identity_1╖
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1212609*<
_output_shapes*
(:         А:         А2
IdentityN_1m
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*(
_output_shapes
:         А2
mul_4н

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity_2н

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity_3н

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*Z
_input_shapesI
G:         :         А:         А:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_namestates:PL
(
_output_shapes
:         А
 
_user_specified_namestates
Пe
·
C__inference_lstm_5_layer_call_and_return_conditional_losses_1216391
inputs_00
,lstm_cell_102_matmul_readvariableop_resource2
.lstm_cell_102_matmul_1_readvariableop_resource1
-lstm_cell_102_biasadd_readvariableop_resource
identityИв$lstm_cell_102/BiasAdd/ReadVariableOpв#lstm_cell_102/MatMul/ReadVariableOpв%lstm_cell_102/MatMul_1/ReadVariableOpвwhileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         А2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         А2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЕ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_2╕
#lstm_cell_102/MatMul/ReadVariableOpReadVariableOp,lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02%
#lstm_cell_102/MatMul/ReadVariableOp░
lstm_cell_102/MatMulMatMulstrided_slice_2:output:0+lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/MatMul┐
%lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02'
%lstm_cell_102/MatMul_1/ReadVariableOpм
lstm_cell_102/MatMul_1MatMulzeros:output:0-lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/MatMul_1д
lstm_cell_102/addAddV2lstm_cell_102/MatMul:product:0 lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/add╖
$lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02&
$lstm_cell_102/BiasAdd/ReadVariableOp▒
lstm_cell_102/BiasAddBiasAddlstm_cell_102/add:z:0,lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/BiasAddl
lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/ConstА
lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/split/split_dim√
lstm_cell_102/splitSplit&lstm_cell_102/split/split_dim:output:0lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
lstm_cell_102/splitК
lstm_cell_102/SigmoidSigmoidlstm_cell_102/split:output:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/SigmoidО
lstm_cell_102/Sigmoid_1Sigmoidlstm_cell_102/split:output:1*
T0*(
_output_shapes
:         А2
lstm_cell_102/Sigmoid_1П
lstm_cell_102/mulMullstm_cell_102/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/mulО
lstm_cell_102/Sigmoid_2Sigmoidlstm_cell_102/split:output:2*
T0*(
_output_shapes
:         А2
lstm_cell_102/Sigmoid_2Я
lstm_cell_102/mul_1Mullstm_cell_102/split:output:2lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/mul_1И
lstm_cell_102/IdentityIdentitylstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/IdentityЁ
lstm_cell_102/IdentityN	IdentityNlstm_cell_102/mul_1:z:0lstm_cell_102/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1216276*<
_output_shapes*
(:         А:         А2
lstm_cell_102/IdentityNб
lstm_cell_102/mul_2Mullstm_cell_102/Sigmoid:y:0 lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/mul_2Ц
lstm_cell_102/add_1AddV2lstm_cell_102/mul:z:0lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/add_1О
lstm_cell_102/Sigmoid_3Sigmoidlstm_cell_102/split:output:3*
T0*(
_output_shapes
:         А2
lstm_cell_102/Sigmoid_3Й
lstm_cell_102/Sigmoid_4Sigmoidlstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/Sigmoid_4Ъ
lstm_cell_102/mul_3Mullstm_cell_102/add_1:z:0lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/mul_3М
lstm_cell_102/Identity_1Identitylstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/Identity_1я
lstm_cell_102/IdentityN_1	IdentityNlstm_cell_102/mul_3:z:0lstm_cell_102/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1216285*<
_output_shapes*
(:         А:         А2
lstm_cell_102/IdentityN_1е
lstm_cell_102/mul_4Mullstm_cell_102/Sigmoid_3:y:0"lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/mul_4П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   2
TensorArrayV2_1/element_shape╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterў
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_102_matmul_readvariableop_resource.lstm_cell_102_matmul_1_readvariableop_resource-lstm_cell_102_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         А:         А: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1216296*
condR
while_cond_1216295*M
output_shapes<
:: : : : :         А:         А: : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   22
0TensorArrayV2Stack/TensorListStack/element_shapeЄ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permп
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeю
IdentityIdentitytranspose_1:y:0%^lstm_cell_102/BiasAdd/ReadVariableOp$^lstm_cell_102/MatMul/ReadVariableOp&^lstm_cell_102/MatMul_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:                  А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:                  :::2L
$lstm_cell_102/BiasAdd/ReadVariableOp$lstm_cell_102/BiasAdd/ReadVariableOp2J
#lstm_cell_102/MatMul/ReadVariableOp#lstm_cell_102/MatMul/ReadVariableOp2N
%lstm_cell_102/MatMul_1/ReadVariableOp%lstm_cell_102/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
╙%
Я
while_body_1213045
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0!
while_lstm_cell_102_1213069_0!
while_lstm_cell_102_1213071_0!
while_lstm_cell_102_1213073_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_102_1213069
while_lstm_cell_102_1213071
while_lstm_cell_102_1213073Ив+while/lstm_cell_102/StatefulPartitionedCall├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemю
+while/lstm_cell_102/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_102_1213069_0while_lstm_cell_102_1213071_0while_lstm_cell_102_1213073_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         А:         А:         А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_12126192-
+while/lstm_cell_102/StatefulPartitionedCall°
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_102/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1М
while/IdentityIdentitywhile/add_1:z:0,^while/lstm_cell_102/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/IdentityЯ
while/Identity_1Identitywhile_while_maximum_iterations,^while/lstm_cell_102/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1О
while/Identity_2Identitywhile/add:z:0,^while/lstm_cell_102/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2╗
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0,^while/lstm_cell_102/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3╟
while/Identity_4Identity4while/lstm_cell_102/StatefulPartitionedCall:output:1,^while/lstm_cell_102/StatefulPartitionedCall*
T0*(
_output_shapes
:         А2
while/Identity_4╟
while/Identity_5Identity4while/lstm_cell_102/StatefulPartitionedCall:output:2,^while/lstm_cell_102/StatefulPartitionedCall*
T0*(
_output_shapes
:         А2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_102_1213069while_lstm_cell_102_1213069_0"<
while_lstm_cell_102_1213071while_lstm_cell_102_1213071_0"<
while_lstm_cell_102_1213073while_lstm_cell_102_1213073_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :         А:         А: : :::2Z
+while/lstm_cell_102/StatefulPartitionedCall+while/lstm_cell_102/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
Я
И
O__inference_time_distributed_4_layer_call_and_return_conditional_losses_1217494

inputs*
&dense_9_matmul_readvariableop_resource+
'dense_9_biasadd_readvariableop_resource
identityИвdense_9/BiasAdd/ReadVariableOpвdense_9/MatMul/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         @2	
Reshapeе
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_9/MatMul/ReadVariableOpХ
dense_9/MatMulMatMulReshape:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_9/MatMulд
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_9/BiasAdd/ReadVariableOpб
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_9/BiasAddq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2и
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shapeФ
	Reshape_1Reshapedense_9/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  2
	Reshape_1┤
IdentityIdentityReshape_1:output:0^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :                  2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:                  @::2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :                  @
 
_user_specified_nameinputs
Г

╘
lstm_6_while_cond_1215302*
&lstm_6_while_lstm_6_while_loop_counter0
,lstm_6_while_lstm_6_while_maximum_iterations
lstm_6_while_placeholder
lstm_6_while_placeholder_1
lstm_6_while_placeholder_2
lstm_6_while_placeholder_3,
(lstm_6_while_less_lstm_6_strided_slice_1C
?lstm_6_while_lstm_6_while_cond_1215302___redundant_placeholder0C
?lstm_6_while_lstm_6_while_cond_1215302___redundant_placeholder1C
?lstm_6_while_lstm_6_while_cond_1215302___redundant_placeholder2C
?lstm_6_while_lstm_6_while_cond_1215302___redundant_placeholder3
lstm_6_while_identity
У
lstm_6/while/LessLesslstm_6_while_placeholder(lstm_6_while_less_lstm_6_strided_slice_1*
T0*
_output_shapes
: 2
lstm_6/while/Lessr
lstm_6/while/IdentityIdentitylstm_6/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_6/while/Identity"7
lstm_6_while_identitylstm_6/while/Identity:output:0*S
_input_shapesB
@: : : : :         @:         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
ш"
▀
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_1212576

inputs

states
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource

identity_2

identity_3

identity_4ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulХ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim├
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         А2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         А2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         А2
muld
	Sigmoid_2Sigmoidsplit:output:2*
T0*(
_output_shapes
:         А2
	Sigmoid_2g
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*(
_output_shapes
:         А2
mul_1^
IdentityIdentity	mul_1:z:0*
T0*(
_output_shapes
:         А2

Identity╕
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1212557*<
_output_shapes*
(:         А:         А2
	IdentityNi
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*(
_output_shapes
:         А2
mul_2^
add_1AddV2mul:z:0	mul_2:z:0*
T0*(
_output_shapes
:         А2
add_1d
	Sigmoid_3Sigmoidsplit:output:3*
T0*(
_output_shapes
:         А2
	Sigmoid_3_
	Sigmoid_4Sigmoid	add_1:z:0*
T0*(
_output_shapes
:         А2
	Sigmoid_4b
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*(
_output_shapes
:         А2
mul_3b

Identity_1Identity	mul_3:z:0*
T0*(
_output_shapes
:         А2

Identity_1╖
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1212566*<
_output_shapes*
(:         А:         А2
IdentityN_1m
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*(
_output_shapes
:         А2
mul_4н

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity_2н

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity_3н

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*Z
_input_shapesI
G:         :         А:         А:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_namestates:PL
(
_output_shapes
:         А
 
_user_specified_namestates
▄
~
)__inference_dense_8_layer_call_fn_1217823

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_12137802
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
З

╘
lstm_5_while_cond_1215505*
&lstm_5_while_lstm_5_while_loop_counter0
,lstm_5_while_lstm_5_while_maximum_iterations
lstm_5_while_placeholder
lstm_5_while_placeholder_1
lstm_5_while_placeholder_2
lstm_5_while_placeholder_3,
(lstm_5_while_less_lstm_5_strided_slice_1C
?lstm_5_while_lstm_5_while_cond_1215505___redundant_placeholder0C
?lstm_5_while_lstm_5_while_cond_1215505___redundant_placeholder1C
?lstm_5_while_lstm_5_while_cond_1215505___redundant_placeholder2C
?lstm_5_while_lstm_5_while_cond_1215505___redundant_placeholder3
lstm_5_while_identity
У
lstm_5/while/LessLesslstm_5_while_placeholder(lstm_5_while_less_lstm_5_strided_slice_1*
T0*
_output_shapes
: 2
lstm_5/while/Lessr
lstm_5/while/IdentityIdentitylstm_5/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_5/while/Identity"7
lstm_5_while_identitylstm_5/while/Identity:output:0*U
_input_shapesD
B: : : : :         А:         А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
╓"
с
J__inference_lstm_cell_103_layer_call_and_return_conditional_losses_1217764

inputs
states_0
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource

identity_2

identity_3

identity_4ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim┐
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         @2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         @2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         @2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:         @2
	Sigmoid_2f
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*'
_output_shapes
:         @2
mul_1]
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:         @2

Identity╢
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1217745*:
_output_shapes(
&:         @:         @2
	IdentityNh
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*'
_output_shapes
:         @2
mul_2]
add_1AddV2mul:z:0	mul_2:z:0*
T0*'
_output_shapes
:         @2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:         @2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         @2
	Sigmoid_4a
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*'
_output_shapes
:         @2
mul_3a

Identity_1Identity	mul_3:z:0*
T0*'
_output_shapes
:         @2

Identity_1╡
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1217754*:
_output_shapes(
&:         @:         @2
IdentityN_1l
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*'
_output_shapes
:         @2
mul_4м

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity_2м

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity_3м

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*Y
_input_shapesH
F:         А:         @:         @:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs:QM
'
_output_shapes
:         @
"
_user_specified_name
states/0:QM
'
_output_shapes
:         @
"
_user_specified_name
states/1
з
И
O__inference_time_distributed_3_layer_call_and_return_conditional_losses_1217434

inputs*
&dense_8_matmul_readvariableop_resource+
'dense_8_biasadd_readvariableop_resource
identityИвdense_8/BiasAdd/ReadVariableOpвdense_8/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         @2	
Reshapeе
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_8/MatMul/ReadVariableOpХ
dense_8/MatMulMatMulReshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_8/MatMulд
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_8/BiasAdd/ReadVariableOpб
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_8/BiasAddy
dense_8/SigmoidSigmoiddense_8/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_8/SigmoidВ
dense_8/mulMuldense_8/BiasAdd:output:0dense_8/Sigmoid:y:0*
T0*'
_output_shapes
:         @2
dense_8/muls
dense_8/IdentityIdentitydense_8/mul:z:0*
T0*'
_output_shapes
:         @2
dense_8/Identity╓
dense_8/IdentityN	IdentityNdense_8/mul:z:0dense_8/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1217425*:
_output_shapes(
&:         @:         @2
dense_8/IdentityNw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       @   2
Reshape_1/shapeН
	Reshape_1Reshapedense_8/IdentityN:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         @2
	Reshape_1л
IdentityIdentityReshape_1:output:0^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp*
T0*+
_output_shapes
:         @2

Identity"
identityIdentity:output:0*2
_input_shapes!
:         @::2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
┤
╚
while_cond_1214254
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1214254___redundant_placeholder05
1while_while_cond_1214254___redundant_placeholder15
1while_while_cond_1214254___redundant_placeholder25
1while_while_cond_1214254___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :         А:         А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
я
И
O__inference_time_distributed_3_layer_call_and_return_conditional_losses_1217349

inputs*
&dense_8_matmul_readvariableop_resource+
'dense_8_biasadd_readvariableop_resource
identityИвdense_8/BiasAdd/ReadVariableOpвdense_8/MatMul/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         @2	
Reshapeе
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_8/MatMul/ReadVariableOpХ
dense_8/MatMulMatMulReshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_8/MatMulд
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_8/BiasAdd/ReadVariableOpб
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_8/BiasAddy
dense_8/SigmoidSigmoiddense_8/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_8/SigmoidВ
dense_8/mulMuldense_8/BiasAdd:output:0dense_8/Sigmoid:y:0*
T0*'
_output_shapes
:         @2
dense_8/muls
dense_8/IdentityIdentitydense_8/mul:z:0*
T0*'
_output_shapes
:         @2
dense_8/Identity╓
dense_8/IdentityN	IdentityNdense_8/mul:z:0dense_8/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1217338*:
_output_shapes(
&:         @:         @2
dense_8/IdentityNq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2
Reshape_1/shape/2и
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shapeЦ
	Reshape_1Reshapedense_8/IdentityN:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  @2
	Reshape_1┤
IdentityIdentityReshape_1:output:0^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :                  @2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:                  @::2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :                  @
 
_user_specified_nameinputs
┌M
И
while_body_1214255
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_08
4while_lstm_cell_102_matmul_readvariableop_resource_0:
6while_lstm_cell_102_matmul_1_readvariableop_resource_09
5while_lstm_cell_102_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor6
2while_lstm_cell_102_matmul_readvariableop_resource8
4while_lstm_cell_102_matmul_1_readvariableop_resource7
3while_lstm_cell_102_biasadd_readvariableop_resourceИв*while/lstm_cell_102/BiasAdd/ReadVariableOpв)while/lstm_cell_102/MatMul/ReadVariableOpв+while/lstm_cell_102/MatMul_1/ReadVariableOp├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem╠
)while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02+
)while/lstm_cell_102/MatMul/ReadVariableOp┌
while/lstm_cell_102/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/MatMul╙
+while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02-
+while/lstm_cell_102/MatMul_1/ReadVariableOp├
while/lstm_cell_102/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/MatMul_1╝
while/lstm_cell_102/addAddV2$while/lstm_cell_102/MatMul:product:0&while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/add╦
*while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02,
*while/lstm_cell_102/BiasAdd/ReadVariableOp╔
while/lstm_cell_102/BiasAddBiasAddwhile/lstm_cell_102/add:z:02while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/BiasAddx
while/lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_102/ConstМ
#while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_102/split/split_dimУ
while/lstm_cell_102/splitSplit,while/lstm_cell_102/split/split_dim:output:0$while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
while/lstm_cell_102/splitЬ
while/lstm_cell_102/SigmoidSigmoid"while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/Sigmoidа
while/lstm_cell_102/Sigmoid_1Sigmoid"while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/Sigmoid_1д
while/lstm_cell_102/mulMul!while/lstm_cell_102/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/mulа
while/lstm_cell_102/Sigmoid_2Sigmoid"while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/Sigmoid_2╖
while/lstm_cell_102/mul_1Mul"while/lstm_cell_102/split:output:2!while/lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/mul_1Ъ
while/lstm_cell_102/IdentityIdentitywhile/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/IdentityИ
while/lstm_cell_102/IdentityN	IdentityNwhile/lstm_cell_102/mul_1:z:0"while/lstm_cell_102/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1214298*<
_output_shapes*
(:         А:         А2
while/lstm_cell_102/IdentityN╣
while/lstm_cell_102/mul_2Mulwhile/lstm_cell_102/Sigmoid:y:0&while/lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/mul_2о
while/lstm_cell_102/add_1AddV2while/lstm_cell_102/mul:z:0while/lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/add_1а
while/lstm_cell_102/Sigmoid_3Sigmoid"while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/Sigmoid_3Ы
while/lstm_cell_102/Sigmoid_4Sigmoidwhile/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/Sigmoid_4▓
while/lstm_cell_102/mul_3Mulwhile/lstm_cell_102/add_1:z:0!while/lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/mul_3Ю
while/lstm_cell_102/Identity_1Identitywhile/lstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:         А2 
while/lstm_cell_102/Identity_1З
while/lstm_cell_102/IdentityN_1	IdentityNwhile/lstm_cell_102/mul_3:z:0while/lstm_cell_102/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1214307*<
_output_shapes*
(:         А:         А2!
while/lstm_cell_102/IdentityN_1╜
while/lstm_cell_102/mul_4Mul!while/lstm_cell_102/Sigmoid_3:y:0(while/lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/mul_4с
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_102/mul_4:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1х
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity°
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ч
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2Ф
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Й
while/Identity_4Identitywhile/lstm_cell_102/mul_4:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:         А2
while/Identity_4Й
while/Identity_5Identitywhile/lstm_cell_102/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:         А2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_102_biasadd_readvariableop_resource5while_lstm_cell_102_biasadd_readvariableop_resource_0"n
4while_lstm_cell_102_matmul_1_readvariableop_resource6while_lstm_cell_102_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_102_matmul_readvariableop_resource4while_lstm_cell_102_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :         А:         А: : :::2X
*while/lstm_cell_102/BiasAdd/ReadVariableOp*while/lstm_cell_102/BiasAdd/ReadVariableOp2V
)while/lstm_cell_102/MatMul/ReadVariableOp)while/lstm_cell_102/MatMul/ReadVariableOp2Z
+while/lstm_cell_102/MatMul_1/ReadVariableOp+while/lstm_cell_102/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
╖
О
(__inference_lstm_5_layer_call_fn_1216575
inputs_0
unknown
	unknown_0
	unknown_1
identityИвStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_5_layer_call_and_return_conditional_losses_12129822
StatefulPartitionedCallЬ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:                  А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:                  :::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
╨d
°
C__inference_lstm_5_layer_call_and_return_conditional_losses_1216023

inputs0
,lstm_cell_102_matmul_readvariableop_resource2
.lstm_cell_102_matmul_1_readvariableop_resource1
-lstm_cell_102_biasadd_readvariableop_resource
identityИв$lstm_cell_102/BiasAdd/ReadVariableOpв#lstm_cell_102/MatMul/ReadVariableOpв%lstm_cell_102/MatMul_1/ReadVariableOpвwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         А2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         А2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_2╕
#lstm_cell_102/MatMul/ReadVariableOpReadVariableOp,lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02%
#lstm_cell_102/MatMul/ReadVariableOp░
lstm_cell_102/MatMulMatMulstrided_slice_2:output:0+lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/MatMul┐
%lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02'
%lstm_cell_102/MatMul_1/ReadVariableOpм
lstm_cell_102/MatMul_1MatMulzeros:output:0-lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/MatMul_1д
lstm_cell_102/addAddV2lstm_cell_102/MatMul:product:0 lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/add╖
$lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02&
$lstm_cell_102/BiasAdd/ReadVariableOp▒
lstm_cell_102/BiasAddBiasAddlstm_cell_102/add:z:0,lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/BiasAddl
lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/ConstА
lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/split/split_dim√
lstm_cell_102/splitSplit&lstm_cell_102/split/split_dim:output:0lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
lstm_cell_102/splitК
lstm_cell_102/SigmoidSigmoidlstm_cell_102/split:output:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/SigmoidО
lstm_cell_102/Sigmoid_1Sigmoidlstm_cell_102/split:output:1*
T0*(
_output_shapes
:         А2
lstm_cell_102/Sigmoid_1П
lstm_cell_102/mulMullstm_cell_102/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/mulО
lstm_cell_102/Sigmoid_2Sigmoidlstm_cell_102/split:output:2*
T0*(
_output_shapes
:         А2
lstm_cell_102/Sigmoid_2Я
lstm_cell_102/mul_1Mullstm_cell_102/split:output:2lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/mul_1И
lstm_cell_102/IdentityIdentitylstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/IdentityЁ
lstm_cell_102/IdentityN	IdentityNlstm_cell_102/mul_1:z:0lstm_cell_102/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1215908*<
_output_shapes*
(:         А:         А2
lstm_cell_102/IdentityNб
lstm_cell_102/mul_2Mullstm_cell_102/Sigmoid:y:0 lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/mul_2Ц
lstm_cell_102/add_1AddV2lstm_cell_102/mul:z:0lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/add_1О
lstm_cell_102/Sigmoid_3Sigmoidlstm_cell_102/split:output:3*
T0*(
_output_shapes
:         А2
lstm_cell_102/Sigmoid_3Й
lstm_cell_102/Sigmoid_4Sigmoidlstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/Sigmoid_4Ъ
lstm_cell_102/mul_3Mullstm_cell_102/add_1:z:0lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/mul_3М
lstm_cell_102/Identity_1Identitylstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/Identity_1я
lstm_cell_102/IdentityN_1	IdentityNlstm_cell_102/mul_3:z:0lstm_cell_102/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1215917*<
_output_shapes*
(:         А:         А2
lstm_cell_102/IdentityN_1е
lstm_cell_102/mul_4Mullstm_cell_102/Sigmoid_3:y:0"lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/mul_4П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   2
TensorArrayV2_1/element_shape╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterў
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_102_matmul_readvariableop_resource.lstm_cell_102_matmul_1_readvariableop_resource-lstm_cell_102_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         А:         А: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1215928*
condR
while_cond_1215927*M
output_shapes<
:: : : : :         А:         А: : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   22
0TensorArrayV2Stack/TensorListStack/element_shapeщ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permж
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         А2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeх
IdentityIdentitytranspose_1:y:0%^lstm_cell_102/BiasAdd/ReadVariableOp$^lstm_cell_102/MatMul/ReadVariableOp&^lstm_cell_102/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:         А2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         :::2L
$lstm_cell_102/BiasAdd/ReadVariableOp$lstm_cell_102/BiasAdd/ReadVariableOp2J
#lstm_cell_102/MatMul/ReadVariableOp#lstm_cell_102/MatMul/ReadVariableOp2N
%lstm_cell_102/MatMul_1/ReadVariableOp%lstm_cell_102/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Ёd
·
C__inference_lstm_6_layer_call_and_return_conditional_losses_1217127
inputs_00
,lstm_cell_103_matmul_readvariableop_resource2
.lstm_cell_103_matmul_1_readvariableop_resource1
-lstm_cell_103_biasadd_readvariableop_resource
identityИв$lstm_cell_103/BiasAdd/ReadVariableOpв#lstm_cell_103/MatMul/ReadVariableOpв%lstm_cell_103/MatMul_1/ReadVariableOpвwhileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         @2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЖ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:                  А2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2¤
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_2╣
#lstm_cell_103/MatMul/ReadVariableOpReadVariableOp,lstm_cell_103_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02%
#lstm_cell_103/MatMul/ReadVariableOp░
lstm_cell_103/MatMulMatMulstrided_slice_2:output:0+lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_103/MatMul╛
%lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_103_matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02'
%lstm_cell_103/MatMul_1/ReadVariableOpм
lstm_cell_103/MatMul_1MatMulzeros:output:0-lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_103/MatMul_1д
lstm_cell_103/addAddV2lstm_cell_103/MatMul:product:0 lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_cell_103/add╖
$lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_103_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02&
$lstm_cell_103/BiasAdd/ReadVariableOp▒
lstm_cell_103/BiasAddBiasAddlstm_cell_103/add:z:0,lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_103/BiasAddl
lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_103/ConstА
lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_103/split/split_dimў
lstm_cell_103/splitSplit&lstm_cell_103/split/split_dim:output:0lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
lstm_cell_103/splitЙ
lstm_cell_103/SigmoidSigmoidlstm_cell_103/split:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/SigmoidН
lstm_cell_103/Sigmoid_1Sigmoidlstm_cell_103/split:output:1*
T0*'
_output_shapes
:         @2
lstm_cell_103/Sigmoid_1О
lstm_cell_103/mulMullstm_cell_103/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/mulН
lstm_cell_103/Sigmoid_2Sigmoidlstm_cell_103/split:output:2*
T0*'
_output_shapes
:         @2
lstm_cell_103/Sigmoid_2Ю
lstm_cell_103/mul_1Mullstm_cell_103/split:output:2lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/mul_1З
lstm_cell_103/IdentityIdentitylstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/Identityю
lstm_cell_103/IdentityN	IdentityNlstm_cell_103/mul_1:z:0lstm_cell_103/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1217012*:
_output_shapes(
&:         @:         @2
lstm_cell_103/IdentityNа
lstm_cell_103/mul_2Mullstm_cell_103/Sigmoid:y:0 lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/mul_2Х
lstm_cell_103/add_1AddV2lstm_cell_103/mul:z:0lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/add_1Н
lstm_cell_103/Sigmoid_3Sigmoidlstm_cell_103/split:output:3*
T0*'
_output_shapes
:         @2
lstm_cell_103/Sigmoid_3И
lstm_cell_103/Sigmoid_4Sigmoidlstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/Sigmoid_4Щ
lstm_cell_103/mul_3Mullstm_cell_103/add_1:z:0lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/mul_3Л
lstm_cell_103/Identity_1Identitylstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/Identity_1э
lstm_cell_103/IdentityN_1	IdentityNlstm_cell_103/mul_3:z:0lstm_cell_103/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1217021*:
_output_shapes(
&:         @:         @2
lstm_cell_103/IdentityN_1д
lstm_cell_103/mul_4Mullstm_cell_103/Sigmoid_3:y:0"lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/mul_4П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
TensorArrayV2_1/element_shape╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterє
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_103_matmul_readvariableop_resource.lstm_cell_103_matmul_1_readvariableop_resource-lstm_cell_103_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1217032*
condR
while_cond_1217031*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  @*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permо
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  @2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeэ
IdentityIdentitytranspose_1:y:0%^lstm_cell_103/BiasAdd/ReadVariableOp$^lstm_cell_103/MatMul/ReadVariableOp&^lstm_cell_103/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :                  @2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:                  А:::2L
$lstm_cell_103/BiasAdd/ReadVariableOp$lstm_cell_103/BiasAdd/ReadVariableOp2J
#lstm_cell_103/MatMul/ReadVariableOp#lstm_cell_103/MatMul/ReadVariableOp2N
%lstm_cell_103/MatMul_1/ReadVariableOp%lstm_cell_103/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:                  А
"
_user_specified_name
inputs/0
┘
№
I__inference_sequential_3_layer_call_and_return_conditional_losses_1214941

inputs
lstm_5_1214912
lstm_5_1214914
lstm_5_1214916
lstm_6_1214919
lstm_6_1214921
lstm_6_1214923
time_distributed_3_1214926
time_distributed_3_1214928
time_distributed_4_1214933
time_distributed_4_1214935
identityИвlstm_5/StatefulPartitionedCallвlstm_6/StatefulPartitionedCallв*time_distributed_3/StatefulPartitionedCallв*time_distributed_4/StatefulPartitionedCallд
lstm_5/StatefulPartitionedCallStatefulPartitionedCallinputslstm_5_1214912lstm_5_1214914lstm_5_1214916*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_5_layer_call_and_return_conditional_losses_12141772 
lstm_5/StatefulPartitionedCall─
lstm_6/StatefulPartitionedCallStatefulPartitionedCall'lstm_5/StatefulPartitionedCall:output:0lstm_6_1214919lstm_6_1214921lstm_6_1214923*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_6_layer_call_and_return_conditional_losses_12145522 
lstm_6/StatefulPartitionedCallю
*time_distributed_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_6/StatefulPartitionedCall:output:0time_distributed_3_1214926time_distributed_3_1214928*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_time_distributed_3_layer_call_and_return_conditional_losses_12147742,
*time_distributed_3/StatefulPartitionedCallХ
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2"
 time_distributed_3/Reshape/shape╔
time_distributed_3/ReshapeReshape'lstm_6/StatefulPartitionedCall:output:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
time_distributed_3/Reshape·
*time_distributed_4/StatefulPartitionedCallStatefulPartitionedCall3time_distributed_3/StatefulPartitionedCall:output:0time_distributed_4_1214933time_distributed_4_1214935*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_time_distributed_4_layer_call_and_return_conditional_losses_12148332,
*time_distributed_4/StatefulPartitionedCallХ
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2"
 time_distributed_4/Reshape/shape╒
time_distributed_4/ReshapeReshape3time_distributed_3/StatefulPartitionedCall:output:0)time_distributed_4/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
time_distributed_4/Reshapeз
IdentityIdentity3time_distributed_4/StatefulPartitionedCall:output:0^lstm_5/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall+^time_distributed_3/StatefulPartitionedCall+^time_distributed_4/StatefulPartitionedCall*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:         ::::::::::2@
lstm_5/StatefulPartitionedCalllstm_5/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall2X
*time_distributed_3/StatefulPartitionedCall*time_distributed_3/StatefulPartitionedCall2X
*time_distributed_4/StatefulPartitionedCall*time_distributed_4/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Г
Й
4__inference_time_distributed_3_layer_call_fn_1217452

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_time_distributed_3_layer_call_and_return_conditional_losses_12147942
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:         @2

Identity"
identityIdentity:output:0*2
_input_shapes!
:         @::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
Г
Й
4__inference_time_distributed_3_layer_call_fn_1217443

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_time_distributed_3_layer_call_and_return_conditional_losses_12147742
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:         @2

Identity"
identityIdentity:output:0*2
_input_shapes!
:         @::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
√
▀
D__inference_dense_8_layer_call_and_return_conditional_losses_1217814

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource

identity_1ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         @2	
Sigmoidb
mulMulBiasAdd:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @2
mul[
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:         @2

Identity╢
	IdentityN	IdentityNmul:z:0BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1217807*:
_output_shapes(
&:         @:         @2
	IdentityNЫ

Identity_1IdentityIdentityN:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
О
╪
&sequential_3_lstm_5_while_cond_1212198D
@sequential_3_lstm_5_while_sequential_3_lstm_5_while_loop_counterJ
Fsequential_3_lstm_5_while_sequential_3_lstm_5_while_maximum_iterations)
%sequential_3_lstm_5_while_placeholder+
'sequential_3_lstm_5_while_placeholder_1+
'sequential_3_lstm_5_while_placeholder_2+
'sequential_3_lstm_5_while_placeholder_3F
Bsequential_3_lstm_5_while_less_sequential_3_lstm_5_strided_slice_1]
Ysequential_3_lstm_5_while_sequential_3_lstm_5_while_cond_1212198___redundant_placeholder0]
Ysequential_3_lstm_5_while_sequential_3_lstm_5_while_cond_1212198___redundant_placeholder1]
Ysequential_3_lstm_5_while_sequential_3_lstm_5_while_cond_1212198___redundant_placeholder2]
Ysequential_3_lstm_5_while_sequential_3_lstm_5_while_cond_1212198___redundant_placeholder3&
"sequential_3_lstm_5_while_identity
╘
sequential_3/lstm_5/while/LessLess%sequential_3_lstm_5_while_placeholderBsequential_3_lstm_5_while_less_sequential_3_lstm_5_strided_slice_1*
T0*
_output_shapes
: 2 
sequential_3/lstm_5/while/LessЩ
"sequential_3/lstm_5/while/IdentityIdentity"sequential_3/lstm_5/while/Less:z:0*
T0
*
_output_shapes
: 2$
"sequential_3/lstm_5/while/Identity"Q
"sequential_3_lstm_5_while_identity+sequential_3/lstm_5/while/Identity:output:0*U
_input_shapesD
B: : : : :         А:         А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
я
И
O__inference_time_distributed_3_layer_call_and_return_conditional_losses_1217376

inputs*
&dense_8_matmul_readvariableop_resource+
'dense_8_biasadd_readvariableop_resource
identityИвdense_8/BiasAdd/ReadVariableOpвdense_8/MatMul/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         @2	
Reshapeе
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_8/MatMul/ReadVariableOpХ
dense_8/MatMulMatMulReshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_8/MatMulд
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_8/BiasAdd/ReadVariableOpб
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_8/BiasAddy
dense_8/SigmoidSigmoiddense_8/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_8/SigmoidВ
dense_8/mulMuldense_8/BiasAdd:output:0dense_8/Sigmoid:y:0*
T0*'
_output_shapes
:         @2
dense_8/muls
dense_8/IdentityIdentitydense_8/mul:z:0*
T0*'
_output_shapes
:         @2
dense_8/Identity╓
dense_8/IdentityN	IdentityNdense_8/mul:z:0dense_8/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1217365*:
_output_shapes(
&:         @:         @2
dense_8/IdentityNq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2
Reshape_1/shape/2и
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shapeЦ
	Reshape_1Reshapedense_8/IdentityN:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  @2
	Reshape_1┤
IdentityIdentityReshape_1:output:0^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :                  @2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:                  @::2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :                  @
 
_user_specified_nameinputs
╦%
Я
while_body_1213675
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0!
while_lstm_cell_103_1213699_0!
while_lstm_cell_103_1213701_0!
while_lstm_cell_103_1213703_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_103_1213699
while_lstm_cell_103_1213701
while_lstm_cell_103_1213703Ив+while/lstm_cell_103/StatefulPartitionedCall├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╘
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemы
+while/lstm_cell_103/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_103_1213699_0while_lstm_cell_103_1213701_0while_lstm_cell_103_1213703_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         @:         @:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_103_layer_call_and_return_conditional_losses_12132492-
+while/lstm_cell_103/StatefulPartitionedCall°
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_103/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1М
while/IdentityIdentitywhile/add_1:z:0,^while/lstm_cell_103/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/IdentityЯ
while/Identity_1Identitywhile_while_maximum_iterations,^while/lstm_cell_103/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1О
while/Identity_2Identitywhile/add:z:0,^while/lstm_cell_103/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2╗
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0,^while/lstm_cell_103/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3╞
while/Identity_4Identity4while/lstm_cell_103/StatefulPartitionedCall:output:1,^while/lstm_cell_103/StatefulPartitionedCall*
T0*'
_output_shapes
:         @2
while/Identity_4╞
while/Identity_5Identity4while/lstm_cell_103/StatefulPartitionedCall:output:2,^while/lstm_cell_103/StatefulPartitionedCall*
T0*'
_output_shapes
:         @2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_103_1213699while_lstm_cell_103_1213699_0"<
while_lstm_cell_103_1213701while_lstm_cell_103_1213701_0"<
while_lstm_cell_103_1213703while_lstm_cell_103_1213703_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :         @:         @: : :::2Z
+while/lstm_cell_103/StatefulPartitionedCall+while/lstm_cell_103/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
▒d
°
C__inference_lstm_6_layer_call_and_return_conditional_losses_1214725

inputs0
,lstm_cell_103_matmul_readvariableop_resource2
.lstm_cell_103_matmul_1_readvariableop_resource1
-lstm_cell_103_biasadd_readvariableop_resource
identityИв$lstm_cell_103/BiasAdd/ReadVariableOpв#lstm_cell_103/MatMul/ReadVariableOpв%lstm_cell_103/MatMul_1/ReadVariableOpвwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         @2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:         А2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2¤
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_2╣
#lstm_cell_103/MatMul/ReadVariableOpReadVariableOp,lstm_cell_103_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02%
#lstm_cell_103/MatMul/ReadVariableOp░
lstm_cell_103/MatMulMatMulstrided_slice_2:output:0+lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_103/MatMul╛
%lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_103_matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02'
%lstm_cell_103/MatMul_1/ReadVariableOpм
lstm_cell_103/MatMul_1MatMulzeros:output:0-lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_103/MatMul_1д
lstm_cell_103/addAddV2lstm_cell_103/MatMul:product:0 lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_cell_103/add╖
$lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_103_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02&
$lstm_cell_103/BiasAdd/ReadVariableOp▒
lstm_cell_103/BiasAddBiasAddlstm_cell_103/add:z:0,lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_103/BiasAddl
lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_103/ConstА
lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_103/split/split_dimў
lstm_cell_103/splitSplit&lstm_cell_103/split/split_dim:output:0lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
lstm_cell_103/splitЙ
lstm_cell_103/SigmoidSigmoidlstm_cell_103/split:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/SigmoidН
lstm_cell_103/Sigmoid_1Sigmoidlstm_cell_103/split:output:1*
T0*'
_output_shapes
:         @2
lstm_cell_103/Sigmoid_1О
lstm_cell_103/mulMullstm_cell_103/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/mulН
lstm_cell_103/Sigmoid_2Sigmoidlstm_cell_103/split:output:2*
T0*'
_output_shapes
:         @2
lstm_cell_103/Sigmoid_2Ю
lstm_cell_103/mul_1Mullstm_cell_103/split:output:2lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/mul_1З
lstm_cell_103/IdentityIdentitylstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/Identityю
lstm_cell_103/IdentityN	IdentityNlstm_cell_103/mul_1:z:0lstm_cell_103/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1214610*:
_output_shapes(
&:         @:         @2
lstm_cell_103/IdentityNа
lstm_cell_103/mul_2Mullstm_cell_103/Sigmoid:y:0 lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/mul_2Х
lstm_cell_103/add_1AddV2lstm_cell_103/mul:z:0lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/add_1Н
lstm_cell_103/Sigmoid_3Sigmoidlstm_cell_103/split:output:3*
T0*'
_output_shapes
:         @2
lstm_cell_103/Sigmoid_3И
lstm_cell_103/Sigmoid_4Sigmoidlstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/Sigmoid_4Щ
lstm_cell_103/mul_3Mullstm_cell_103/add_1:z:0lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/mul_3Л
lstm_cell_103/Identity_1Identitylstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/Identity_1э
lstm_cell_103/IdentityN_1	IdentityNlstm_cell_103/mul_3:z:0lstm_cell_103/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1214619*:
_output_shapes(
&:         @:         @2
lstm_cell_103/IdentityN_1д
lstm_cell_103/mul_4Mullstm_cell_103/Sigmoid_3:y:0"lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/mul_4П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
TensorArrayV2_1/element_shape╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterє
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_103_matmul_readvariableop_resource.lstm_cell_103_matmul_1_readvariableop_resource-lstm_cell_103_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1214630*
condR
while_cond_1214629*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permе
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         @2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeф
IdentityIdentitytranspose_1:y:0%^lstm_cell_103/BiasAdd/ReadVariableOp$^lstm_cell_103/MatMul/ReadVariableOp&^lstm_cell_103/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:         @2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         А:::2L
$lstm_cell_103/BiasAdd/ReadVariableOp$lstm_cell_103/BiasAdd/ReadVariableOp2J
#lstm_cell_103/MatMul/ReadVariableOp#lstm_cell_103/MatMul/ReadVariableOp2N
%lstm_cell_103/MatMul_1/ReadVariableOp%lstm_cell_103/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:         А
 
_user_specified_nameinputs
░Y
ш	
lstm_5_while_body_1215506*
&lstm_5_while_lstm_5_while_loop_counter0
,lstm_5_while_lstm_5_while_maximum_iterations
lstm_5_while_placeholder
lstm_5_while_placeholder_1
lstm_5_while_placeholder_2
lstm_5_while_placeholder_3)
%lstm_5_while_lstm_5_strided_slice_1_0e
alstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0?
;lstm_5_while_lstm_cell_102_matmul_readvariableop_resource_0A
=lstm_5_while_lstm_cell_102_matmul_1_readvariableop_resource_0@
<lstm_5_while_lstm_cell_102_biasadd_readvariableop_resource_0
lstm_5_while_identity
lstm_5_while_identity_1
lstm_5_while_identity_2
lstm_5_while_identity_3
lstm_5_while_identity_4
lstm_5_while_identity_5'
#lstm_5_while_lstm_5_strided_slice_1c
_lstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor=
9lstm_5_while_lstm_cell_102_matmul_readvariableop_resource?
;lstm_5_while_lstm_cell_102_matmul_1_readvariableop_resource>
:lstm_5_while_lstm_cell_102_biasadd_readvariableop_resourceИв1lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOpв0lstm_5/while/lstm_cell_102/MatMul/ReadVariableOpв2lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp╤
>lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2@
>lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape¤
0lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0lstm_5_while_placeholderGlstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype022
0lstm_5/while/TensorArrayV2Read/TensorListGetItemс
0lstm_5/while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp;lstm_5_while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype022
0lstm_5/while/lstm_cell_102/MatMul/ReadVariableOpЎ
!lstm_5/while/lstm_cell_102/MatMulMatMul7lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2#
!lstm_5/while/lstm_cell_102/MatMulш
2lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp=lstm_5_while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype024
2lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp▀
#lstm_5/while/lstm_cell_102/MatMul_1MatMullstm_5_while_placeholder_2:lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2%
#lstm_5/while/lstm_cell_102/MatMul_1╪
lstm_5/while/lstm_cell_102/addAddV2+lstm_5/while/lstm_cell_102/MatMul:product:0-lstm_5/while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:         А2 
lstm_5/while/lstm_cell_102/addр
1lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp<lstm_5_while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype023
1lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOpх
"lstm_5/while/lstm_cell_102/BiasAddBiasAdd"lstm_5/while/lstm_cell_102/add:z:09lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2$
"lstm_5/while/lstm_cell_102/BiasAddЖ
 lstm_5/while/lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2"
 lstm_5/while/lstm_cell_102/ConstЪ
*lstm_5/while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_5/while/lstm_cell_102/split/split_dimп
 lstm_5/while/lstm_cell_102/splitSplit3lstm_5/while/lstm_cell_102/split/split_dim:output:0+lstm_5/while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2"
 lstm_5/while/lstm_cell_102/split▒
"lstm_5/while/lstm_cell_102/SigmoidSigmoid)lstm_5/while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:         А2$
"lstm_5/while/lstm_cell_102/Sigmoid╡
$lstm_5/while/lstm_cell_102/Sigmoid_1Sigmoid)lstm_5/while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:         А2&
$lstm_5/while/lstm_cell_102/Sigmoid_1└
lstm_5/while/lstm_cell_102/mulMul(lstm_5/while/lstm_cell_102/Sigmoid_1:y:0lstm_5_while_placeholder_3*
T0*(
_output_shapes
:         А2 
lstm_5/while/lstm_cell_102/mul╡
$lstm_5/while/lstm_cell_102/Sigmoid_2Sigmoid)lstm_5/while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:         А2&
$lstm_5/while/lstm_cell_102/Sigmoid_2╙
 lstm_5/while/lstm_cell_102/mul_1Mul)lstm_5/while/lstm_cell_102/split:output:2(lstm_5/while/lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:         А2"
 lstm_5/while/lstm_cell_102/mul_1п
#lstm_5/while/lstm_cell_102/IdentityIdentity$lstm_5/while/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:         А2%
#lstm_5/while/lstm_cell_102/Identityд
$lstm_5/while/lstm_cell_102/IdentityN	IdentityN$lstm_5/while/lstm_cell_102/mul_1:z:0)lstm_5/while/lstm_cell_102/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1215549*<
_output_shapes*
(:         А:         А2&
$lstm_5/while/lstm_cell_102/IdentityN╒
 lstm_5/while/lstm_cell_102/mul_2Mul&lstm_5/while/lstm_cell_102/Sigmoid:y:0-lstm_5/while/lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:         А2"
 lstm_5/while/lstm_cell_102/mul_2╩
 lstm_5/while/lstm_cell_102/add_1AddV2"lstm_5/while/lstm_cell_102/mul:z:0$lstm_5/while/lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:         А2"
 lstm_5/while/lstm_cell_102/add_1╡
$lstm_5/while/lstm_cell_102/Sigmoid_3Sigmoid)lstm_5/while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:         А2&
$lstm_5/while/lstm_cell_102/Sigmoid_3░
$lstm_5/while/lstm_cell_102/Sigmoid_4Sigmoid$lstm_5/while/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:         А2&
$lstm_5/while/lstm_cell_102/Sigmoid_4╬
 lstm_5/while/lstm_cell_102/mul_3Mul$lstm_5/while/lstm_cell_102/add_1:z:0(lstm_5/while/lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:         А2"
 lstm_5/while/lstm_cell_102/mul_3│
%lstm_5/while/lstm_cell_102/Identity_1Identity$lstm_5/while/lstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:         А2'
%lstm_5/while/lstm_cell_102/Identity_1г
&lstm_5/while/lstm_cell_102/IdentityN_1	IdentityN$lstm_5/while/lstm_cell_102/mul_3:z:0$lstm_5/while/lstm_cell_102/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1215558*<
_output_shapes*
(:         А:         А2(
&lstm_5/while/lstm_cell_102/IdentityN_1┘
 lstm_5/while/lstm_cell_102/mul_4Mul(lstm_5/while/lstm_cell_102/Sigmoid_3:y:0/lstm_5/while/lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:         А2"
 lstm_5/while/lstm_cell_102/mul_4Д
1lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_5_while_placeholder_1lstm_5_while_placeholder$lstm_5/while/lstm_cell_102/mul_4:z:0*
_output_shapes
: *
element_dtype023
1lstm_5/while/TensorArrayV2Write/TensorListSetItemj
lstm_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_5/while/add/yЕ
lstm_5/while/addAddV2lstm_5_while_placeholderlstm_5/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_5/while/addn
lstm_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_5/while/add_1/yЩ
lstm_5/while/add_1AddV2&lstm_5_while_lstm_5_while_loop_counterlstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_5/while/add_1П
lstm_5/while/IdentityIdentitylstm_5/while/add_1:z:02^lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp1^lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp3^lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_5/while/Identityй
lstm_5/while/Identity_1Identity,lstm_5_while_lstm_5_while_maximum_iterations2^lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp1^lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp3^lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_1С
lstm_5/while/Identity_2Identitylstm_5/while/add:z:02^lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp1^lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp3^lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_2╛
lstm_5/while/Identity_3IdentityAlstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp1^lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp3^lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_3│
lstm_5/while/Identity_4Identity$lstm_5/while/lstm_cell_102/mul_4:z:02^lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp1^lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp3^lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:         А2
lstm_5/while/Identity_4│
lstm_5/while/Identity_5Identity$lstm_5/while/lstm_cell_102/add_1:z:02^lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp1^lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp3^lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:         А2
lstm_5/while/Identity_5"7
lstm_5_while_identitylstm_5/while/Identity:output:0";
lstm_5_while_identity_1 lstm_5/while/Identity_1:output:0";
lstm_5_while_identity_2 lstm_5/while/Identity_2:output:0";
lstm_5_while_identity_3 lstm_5/while/Identity_3:output:0";
lstm_5_while_identity_4 lstm_5/while/Identity_4:output:0";
lstm_5_while_identity_5 lstm_5/while/Identity_5:output:0"L
#lstm_5_while_lstm_5_strided_slice_1%lstm_5_while_lstm_5_strided_slice_1_0"z
:lstm_5_while_lstm_cell_102_biasadd_readvariableop_resource<lstm_5_while_lstm_cell_102_biasadd_readvariableop_resource_0"|
;lstm_5_while_lstm_cell_102_matmul_1_readvariableop_resource=lstm_5_while_lstm_cell_102_matmul_1_readvariableop_resource_0"x
9lstm_5_while_lstm_cell_102_matmul_readvariableop_resource;lstm_5_while_lstm_cell_102_matmul_readvariableop_resource_0"─
_lstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensoralstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :         А:         А: : :::2f
1lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp1lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp2d
0lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp0lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp2h
2lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp2lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
░Y
ш	
lstm_5_while_body_1215134*
&lstm_5_while_lstm_5_while_loop_counter0
,lstm_5_while_lstm_5_while_maximum_iterations
lstm_5_while_placeholder
lstm_5_while_placeholder_1
lstm_5_while_placeholder_2
lstm_5_while_placeholder_3)
%lstm_5_while_lstm_5_strided_slice_1_0e
alstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0?
;lstm_5_while_lstm_cell_102_matmul_readvariableop_resource_0A
=lstm_5_while_lstm_cell_102_matmul_1_readvariableop_resource_0@
<lstm_5_while_lstm_cell_102_biasadd_readvariableop_resource_0
lstm_5_while_identity
lstm_5_while_identity_1
lstm_5_while_identity_2
lstm_5_while_identity_3
lstm_5_while_identity_4
lstm_5_while_identity_5'
#lstm_5_while_lstm_5_strided_slice_1c
_lstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor=
9lstm_5_while_lstm_cell_102_matmul_readvariableop_resource?
;lstm_5_while_lstm_cell_102_matmul_1_readvariableop_resource>
:lstm_5_while_lstm_cell_102_biasadd_readvariableop_resourceИв1lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOpв0lstm_5/while/lstm_cell_102/MatMul/ReadVariableOpв2lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp╤
>lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2@
>lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape¤
0lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0lstm_5_while_placeholderGlstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype022
0lstm_5/while/TensorArrayV2Read/TensorListGetItemс
0lstm_5/while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp;lstm_5_while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype022
0lstm_5/while/lstm_cell_102/MatMul/ReadVariableOpЎ
!lstm_5/while/lstm_cell_102/MatMulMatMul7lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2#
!lstm_5/while/lstm_cell_102/MatMulш
2lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp=lstm_5_while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype024
2lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp▀
#lstm_5/while/lstm_cell_102/MatMul_1MatMullstm_5_while_placeholder_2:lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2%
#lstm_5/while/lstm_cell_102/MatMul_1╪
lstm_5/while/lstm_cell_102/addAddV2+lstm_5/while/lstm_cell_102/MatMul:product:0-lstm_5/while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:         А2 
lstm_5/while/lstm_cell_102/addр
1lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp<lstm_5_while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype023
1lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOpх
"lstm_5/while/lstm_cell_102/BiasAddBiasAdd"lstm_5/while/lstm_cell_102/add:z:09lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2$
"lstm_5/while/lstm_cell_102/BiasAddЖ
 lstm_5/while/lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2"
 lstm_5/while/lstm_cell_102/ConstЪ
*lstm_5/while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_5/while/lstm_cell_102/split/split_dimп
 lstm_5/while/lstm_cell_102/splitSplit3lstm_5/while/lstm_cell_102/split/split_dim:output:0+lstm_5/while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2"
 lstm_5/while/lstm_cell_102/split▒
"lstm_5/while/lstm_cell_102/SigmoidSigmoid)lstm_5/while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:         А2$
"lstm_5/while/lstm_cell_102/Sigmoid╡
$lstm_5/while/lstm_cell_102/Sigmoid_1Sigmoid)lstm_5/while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:         А2&
$lstm_5/while/lstm_cell_102/Sigmoid_1└
lstm_5/while/lstm_cell_102/mulMul(lstm_5/while/lstm_cell_102/Sigmoid_1:y:0lstm_5_while_placeholder_3*
T0*(
_output_shapes
:         А2 
lstm_5/while/lstm_cell_102/mul╡
$lstm_5/while/lstm_cell_102/Sigmoid_2Sigmoid)lstm_5/while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:         А2&
$lstm_5/while/lstm_cell_102/Sigmoid_2╙
 lstm_5/while/lstm_cell_102/mul_1Mul)lstm_5/while/lstm_cell_102/split:output:2(lstm_5/while/lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:         А2"
 lstm_5/while/lstm_cell_102/mul_1п
#lstm_5/while/lstm_cell_102/IdentityIdentity$lstm_5/while/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:         А2%
#lstm_5/while/lstm_cell_102/Identityд
$lstm_5/while/lstm_cell_102/IdentityN	IdentityN$lstm_5/while/lstm_cell_102/mul_1:z:0)lstm_5/while/lstm_cell_102/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1215177*<
_output_shapes*
(:         А:         А2&
$lstm_5/while/lstm_cell_102/IdentityN╒
 lstm_5/while/lstm_cell_102/mul_2Mul&lstm_5/while/lstm_cell_102/Sigmoid:y:0-lstm_5/while/lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:         А2"
 lstm_5/while/lstm_cell_102/mul_2╩
 lstm_5/while/lstm_cell_102/add_1AddV2"lstm_5/while/lstm_cell_102/mul:z:0$lstm_5/while/lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:         А2"
 lstm_5/while/lstm_cell_102/add_1╡
$lstm_5/while/lstm_cell_102/Sigmoid_3Sigmoid)lstm_5/while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:         А2&
$lstm_5/while/lstm_cell_102/Sigmoid_3░
$lstm_5/while/lstm_cell_102/Sigmoid_4Sigmoid$lstm_5/while/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:         А2&
$lstm_5/while/lstm_cell_102/Sigmoid_4╬
 lstm_5/while/lstm_cell_102/mul_3Mul$lstm_5/while/lstm_cell_102/add_1:z:0(lstm_5/while/lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:         А2"
 lstm_5/while/lstm_cell_102/mul_3│
%lstm_5/while/lstm_cell_102/Identity_1Identity$lstm_5/while/lstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:         А2'
%lstm_5/while/lstm_cell_102/Identity_1г
&lstm_5/while/lstm_cell_102/IdentityN_1	IdentityN$lstm_5/while/lstm_cell_102/mul_3:z:0$lstm_5/while/lstm_cell_102/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1215186*<
_output_shapes*
(:         А:         А2(
&lstm_5/while/lstm_cell_102/IdentityN_1┘
 lstm_5/while/lstm_cell_102/mul_4Mul(lstm_5/while/lstm_cell_102/Sigmoid_3:y:0/lstm_5/while/lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:         А2"
 lstm_5/while/lstm_cell_102/mul_4Д
1lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_5_while_placeholder_1lstm_5_while_placeholder$lstm_5/while/lstm_cell_102/mul_4:z:0*
_output_shapes
: *
element_dtype023
1lstm_5/while/TensorArrayV2Write/TensorListSetItemj
lstm_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_5/while/add/yЕ
lstm_5/while/addAddV2lstm_5_while_placeholderlstm_5/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_5/while/addn
lstm_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_5/while/add_1/yЩ
lstm_5/while/add_1AddV2&lstm_5_while_lstm_5_while_loop_counterlstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_5/while/add_1П
lstm_5/while/IdentityIdentitylstm_5/while/add_1:z:02^lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp1^lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp3^lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_5/while/Identityй
lstm_5/while/Identity_1Identity,lstm_5_while_lstm_5_while_maximum_iterations2^lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp1^lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp3^lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_1С
lstm_5/while/Identity_2Identitylstm_5/while/add:z:02^lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp1^lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp3^lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_2╛
lstm_5/while/Identity_3IdentityAlstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp1^lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp3^lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_3│
lstm_5/while/Identity_4Identity$lstm_5/while/lstm_cell_102/mul_4:z:02^lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp1^lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp3^lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:         А2
lstm_5/while/Identity_4│
lstm_5/while/Identity_5Identity$lstm_5/while/lstm_cell_102/add_1:z:02^lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp1^lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp3^lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:         А2
lstm_5/while/Identity_5"7
lstm_5_while_identitylstm_5/while/Identity:output:0";
lstm_5_while_identity_1 lstm_5/while/Identity_1:output:0";
lstm_5_while_identity_2 lstm_5/while/Identity_2:output:0";
lstm_5_while_identity_3 lstm_5/while/Identity_3:output:0";
lstm_5_while_identity_4 lstm_5/while/Identity_4:output:0";
lstm_5_while_identity_5 lstm_5/while/Identity_5:output:0"L
#lstm_5_while_lstm_5_strided_slice_1%lstm_5_while_lstm_5_strided_slice_1_0"z
:lstm_5_while_lstm_cell_102_biasadd_readvariableop_resource<lstm_5_while_lstm_cell_102_biasadd_readvariableop_resource_0"|
;lstm_5_while_lstm_cell_102_matmul_1_readvariableop_resource=lstm_5_while_lstm_cell_102_matmul_1_readvariableop_resource_0"x
9lstm_5_while_lstm_cell_102_matmul_readvariableop_resource;lstm_5_while_lstm_cell_102_matmul_readvariableop_resource_0"─
_lstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensoralstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :         А:         А: : :::2f
1lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp1lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp2d
0lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp0lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp2h
2lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp2lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
░
╚
while_cond_1214629
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1214629___redundant_placeholder05
1while_while_cond_1214629___redundant_placeholder15
1while_while_cond_1214629___redundant_placeholder25
1while_while_cond_1214629___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :         @:         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
┘
№
I__inference_sequential_3_layer_call_and_return_conditional_losses_1214998

inputs
lstm_5_1214969
lstm_5_1214971
lstm_5_1214973
lstm_6_1214976
lstm_6_1214978
lstm_6_1214980
time_distributed_3_1214983
time_distributed_3_1214985
time_distributed_4_1214990
time_distributed_4_1214992
identityИвlstm_5/StatefulPartitionedCallвlstm_6/StatefulPartitionedCallв*time_distributed_3/StatefulPartitionedCallв*time_distributed_4/StatefulPartitionedCallд
lstm_5/StatefulPartitionedCallStatefulPartitionedCallinputslstm_5_1214969lstm_5_1214971lstm_5_1214973*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_5_layer_call_and_return_conditional_losses_12143502 
lstm_5/StatefulPartitionedCall─
lstm_6/StatefulPartitionedCallStatefulPartitionedCall'lstm_5/StatefulPartitionedCall:output:0lstm_6_1214976lstm_6_1214978lstm_6_1214980*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_6_layer_call_and_return_conditional_losses_12147252 
lstm_6/StatefulPartitionedCallю
*time_distributed_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_6/StatefulPartitionedCall:output:0time_distributed_3_1214983time_distributed_3_1214985*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_time_distributed_3_layer_call_and_return_conditional_losses_12147942,
*time_distributed_3/StatefulPartitionedCallХ
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2"
 time_distributed_3/Reshape/shape╔
time_distributed_3/ReshapeReshape'lstm_6/StatefulPartitionedCall:output:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
time_distributed_3/Reshape·
*time_distributed_4/StatefulPartitionedCallStatefulPartitionedCall3time_distributed_3/StatefulPartitionedCall:output:0time_distributed_4_1214990time_distributed_4_1214992*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_time_distributed_4_layer_call_and_return_conditional_losses_12148472,
*time_distributed_4/StatefulPartitionedCallХ
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2"
 time_distributed_4/Reshape/shape╒
time_distributed_4/ReshapeReshape3time_distributed_3/StatefulPartitionedCall:output:0)time_distributed_4/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
time_distributed_4/Reshapeз
IdentityIdentity3time_distributed_4/StatefulPartitionedCall:output:0^lstm_5/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall+^time_distributed_3/StatefulPartitionedCall+^time_distributed_4/StatefulPartitionedCall*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:         ::::::::::2@
lstm_5/StatefulPartitionedCalllstm_5/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall2X
*time_distributed_3/StatefulPartitionedCall*time_distributed_3/StatefulPartitionedCall2X
*time_distributed_4/StatefulPartitionedCall*time_distributed_4/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
┤
╚
while_cond_1214081
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1214081___redundant_placeholder05
1while_while_cond_1214081___redundant_placeholder15
1while_while_cond_1214081___redundant_placeholder25
1while_while_cond_1214081___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :         А:         А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
Г
Й
4__inference_time_distributed_4_layer_call_fn_1217558

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_time_distributed_4_layer_call_and_return_conditional_losses_12148472
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*2
_input_shapes!
:         @::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
Ё"
с
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_1217601

inputs
states_0
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource

identity_2

identity_3

identity_4ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulХ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim├
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         А2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         А2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         А2
muld
	Sigmoid_2Sigmoidsplit:output:2*
T0*(
_output_shapes
:         А2
	Sigmoid_2g
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*(
_output_shapes
:         А2
mul_1^
IdentityIdentity	mul_1:z:0*
T0*(
_output_shapes
:         А2

Identity╕
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1217582*<
_output_shapes*
(:         А:         А2
	IdentityNi
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*(
_output_shapes
:         А2
mul_2^
add_1AddV2mul:z:0	mul_2:z:0*
T0*(
_output_shapes
:         А2
add_1d
	Sigmoid_3Sigmoidsplit:output:3*
T0*(
_output_shapes
:         А2
	Sigmoid_3_
	Sigmoid_4Sigmoid	add_1:z:0*
T0*(
_output_shapes
:         А2
	Sigmoid_4b
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*(
_output_shapes
:         А2
mul_3b

Identity_1Identity	mul_3:z:0*
T0*(
_output_shapes
:         А2

Identity_1╖
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1217591*<
_output_shapes*
(:         А:         А2
IdentityN_1m
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*(
_output_shapes
:         А2
mul_4н

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity_2н

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity_3н

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*Z
_input_shapesI
G:         :         А:         А:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:RN
(
_output_shapes
:         А
"
_user_specified_name
states/0:RN
(
_output_shapes
:         А
"
_user_specified_name
states/1
гТ
┬	
I__inference_sequential_3_layer_call_and_return_conditional_losses_1215428

inputs7
3lstm_5_lstm_cell_102_matmul_readvariableop_resource9
5lstm_5_lstm_cell_102_matmul_1_readvariableop_resource8
4lstm_5_lstm_cell_102_biasadd_readvariableop_resource7
3lstm_6_lstm_cell_103_matmul_readvariableop_resource9
5lstm_6_lstm_cell_103_matmul_1_readvariableop_resource8
4lstm_6_lstm_cell_103_biasadd_readvariableop_resource=
9time_distributed_3_dense_8_matmul_readvariableop_resource>
:time_distributed_3_dense_8_biasadd_readvariableop_resource=
9time_distributed_4_dense_9_matmul_readvariableop_resource>
:time_distributed_4_dense_9_biasadd_readvariableop_resource
identityИв+lstm_5/lstm_cell_102/BiasAdd/ReadVariableOpв*lstm_5/lstm_cell_102/MatMul/ReadVariableOpв,lstm_5/lstm_cell_102/MatMul_1/ReadVariableOpвlstm_5/whileв+lstm_6/lstm_cell_103/BiasAdd/ReadVariableOpв*lstm_6/lstm_cell_103/MatMul/ReadVariableOpв,lstm_6/lstm_cell_103/MatMul_1/ReadVariableOpвlstm_6/whileв1time_distributed_3/dense_8/BiasAdd/ReadVariableOpв0time_distributed_3/dense_8/MatMul/ReadVariableOpв1time_distributed_4/dense_9/BiasAdd/ReadVariableOpв0time_distributed_4/dense_9/MatMul/ReadVariableOpR
lstm_5/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_5/ShapeВ
lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_5/strided_slice/stackЖ
lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_5/strided_slice/stack_1Ж
lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_5/strided_slice/stack_2М
lstm_5/strided_sliceStridedSlicelstm_5/Shape:output:0#lstm_5/strided_slice/stack:output:0%lstm_5/strided_slice/stack_1:output:0%lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_5/strided_slicek
lstm_5/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
lstm_5/zeros/mul/yИ
lstm_5/zeros/mulMullstm_5/strided_slice:output:0lstm_5/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_5/zeros/mulm
lstm_5/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_5/zeros/Less/yГ
lstm_5/zeros/LessLesslstm_5/zeros/mul:z:0lstm_5/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_5/zeros/Lessq
lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
lstm_5/zeros/packed/1Я
lstm_5/zeros/packedPacklstm_5/strided_slice:output:0lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_5/zeros/packedm
lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_5/zeros/ConstТ
lstm_5/zerosFilllstm_5/zeros/packed:output:0lstm_5/zeros/Const:output:0*
T0*(
_output_shapes
:         А2
lstm_5/zeroso
lstm_5/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
lstm_5/zeros_1/mul/yО
lstm_5/zeros_1/mulMullstm_5/strided_slice:output:0lstm_5/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_5/zeros_1/mulq
lstm_5/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_5/zeros_1/Less/yЛ
lstm_5/zeros_1/LessLesslstm_5/zeros_1/mul:z:0lstm_5/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_5/zeros_1/Lessu
lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
lstm_5/zeros_1/packed/1е
lstm_5/zeros_1/packedPacklstm_5/strided_slice:output:0 lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_5/zeros_1/packedq
lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_5/zeros_1/ConstЪ
lstm_5/zeros_1Filllstm_5/zeros_1/packed:output:0lstm_5/zeros_1/Const:output:0*
T0*(
_output_shapes
:         А2
lstm_5/zeros_1Г
lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_5/transpose/permП
lstm_5/transpose	Transposeinputslstm_5/transpose/perm:output:0*
T0*+
_output_shapes
:         2
lstm_5/transposed
lstm_5/Shape_1Shapelstm_5/transpose:y:0*
T0*
_output_shapes
:2
lstm_5/Shape_1Ж
lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_5/strided_slice_1/stackК
lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_1/stack_1К
lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_1/stack_2Ш
lstm_5/strided_slice_1StridedSlicelstm_5/Shape_1:output:0%lstm_5/strided_slice_1/stack:output:0'lstm_5/strided_slice_1/stack_1:output:0'lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_5/strided_slice_1У
"lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2$
"lstm_5/TensorArrayV2/element_shape╬
lstm_5/TensorArrayV2TensorListReserve+lstm_5/TensorArrayV2/element_shape:output:0lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_5/TensorArrayV2═
<lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2>
<lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeФ
.lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_5/transpose:y:0Elstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_5/TensorArrayUnstack/TensorListFromTensorЖ
lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_5/strided_slice_2/stackК
lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_2/stack_1К
lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_2/stack_2ж
lstm_5/strided_slice_2StridedSlicelstm_5/transpose:y:0%lstm_5/strided_slice_2/stack:output:0'lstm_5/strided_slice_2/stack_1:output:0'lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
lstm_5/strided_slice_2═
*lstm_5/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp3lstm_5_lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02,
*lstm_5/lstm_cell_102/MatMul/ReadVariableOp╠
lstm_5/lstm_cell_102/MatMulMatMullstm_5/strided_slice_2:output:02lstm_5/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_5/lstm_cell_102/MatMul╘
,lstm_5/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp5lstm_5_lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02.
,lstm_5/lstm_cell_102/MatMul_1/ReadVariableOp╚
lstm_5/lstm_cell_102/MatMul_1MatMullstm_5/zeros:output:04lstm_5/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_5/lstm_cell_102/MatMul_1└
lstm_5/lstm_cell_102/addAddV2%lstm_5/lstm_cell_102/MatMul:product:0'lstm_5/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_5/lstm_cell_102/add╠
+lstm_5/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp4lstm_5_lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+lstm_5/lstm_cell_102/BiasAdd/ReadVariableOp═
lstm_5/lstm_cell_102/BiasAddBiasAddlstm_5/lstm_cell_102/add:z:03lstm_5/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_5/lstm_cell_102/BiasAddz
lstm_5/lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_5/lstm_cell_102/ConstО
$lstm_5/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_5/lstm_cell_102/split/split_dimЧ
lstm_5/lstm_cell_102/splitSplit-lstm_5/lstm_cell_102/split/split_dim:output:0%lstm_5/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
lstm_5/lstm_cell_102/splitЯ
lstm_5/lstm_cell_102/SigmoidSigmoid#lstm_5/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:         А2
lstm_5/lstm_cell_102/Sigmoidг
lstm_5/lstm_cell_102/Sigmoid_1Sigmoid#lstm_5/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:         А2 
lstm_5/lstm_cell_102/Sigmoid_1л
lstm_5/lstm_cell_102/mulMul"lstm_5/lstm_cell_102/Sigmoid_1:y:0lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:         А2
lstm_5/lstm_cell_102/mulг
lstm_5/lstm_cell_102/Sigmoid_2Sigmoid#lstm_5/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:         А2 
lstm_5/lstm_cell_102/Sigmoid_2╗
lstm_5/lstm_cell_102/mul_1Mul#lstm_5/lstm_cell_102/split:output:2"lstm_5/lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:         А2
lstm_5/lstm_cell_102/mul_1Э
lstm_5/lstm_cell_102/IdentityIdentitylstm_5/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:         А2
lstm_5/lstm_cell_102/IdentityМ
lstm_5/lstm_cell_102/IdentityN	IdentityNlstm_5/lstm_cell_102/mul_1:z:0#lstm_5/lstm_cell_102/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1215114*<
_output_shapes*
(:         А:         А2 
lstm_5/lstm_cell_102/IdentityN╜
lstm_5/lstm_cell_102/mul_2Mul lstm_5/lstm_cell_102/Sigmoid:y:0'lstm_5/lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:         А2
lstm_5/lstm_cell_102/mul_2▓
lstm_5/lstm_cell_102/add_1AddV2lstm_5/lstm_cell_102/mul:z:0lstm_5/lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:         А2
lstm_5/lstm_cell_102/add_1г
lstm_5/lstm_cell_102/Sigmoid_3Sigmoid#lstm_5/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:         А2 
lstm_5/lstm_cell_102/Sigmoid_3Ю
lstm_5/lstm_cell_102/Sigmoid_4Sigmoidlstm_5/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:         А2 
lstm_5/lstm_cell_102/Sigmoid_4╢
lstm_5/lstm_cell_102/mul_3Mullstm_5/lstm_cell_102/add_1:z:0"lstm_5/lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:         А2
lstm_5/lstm_cell_102/mul_3б
lstm_5/lstm_cell_102/Identity_1Identitylstm_5/lstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:         А2!
lstm_5/lstm_cell_102/Identity_1Л
 lstm_5/lstm_cell_102/IdentityN_1	IdentityNlstm_5/lstm_cell_102/mul_3:z:0lstm_5/lstm_cell_102/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1215123*<
_output_shapes*
(:         А:         А2"
 lstm_5/lstm_cell_102/IdentityN_1┴
lstm_5/lstm_cell_102/mul_4Mul"lstm_5/lstm_cell_102/Sigmoid_3:y:0)lstm_5/lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:         А2
lstm_5/lstm_cell_102/mul_4Э
$lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   2&
$lstm_5/TensorArrayV2_1/element_shape╘
lstm_5/TensorArrayV2_1TensorListReserve-lstm_5/TensorArrayV2_1/element_shape:output:0lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_5/TensorArrayV2_1\
lstm_5/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_5/timeН
lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2!
lstm_5/while/maximum_iterationsx
lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_5/while/loop_counterр
lstm_5/whileWhile"lstm_5/while/loop_counter:output:0(lstm_5/while/maximum_iterations:output:0lstm_5/time:output:0lstm_5/TensorArrayV2_1:handle:0lstm_5/zeros:output:0lstm_5/zeros_1:output:0lstm_5/strided_slice_1:output:0>lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_5_lstm_cell_102_matmul_readvariableop_resource5lstm_5_lstm_cell_102_matmul_1_readvariableop_resource4lstm_5_lstm_cell_102_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         А:         А: : : : : *%
_read_only_resource_inputs
	
*%
bodyR
lstm_5_while_body_1215134*%
condR
lstm_5_while_cond_1215133*M
output_shapes<
:: : : : :         А:         А: : : : : *
parallel_iterations 2
lstm_5/while├
7lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   29
7lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeЕ
)lstm_5/TensorArrayV2Stack/TensorListStackTensorListStacklstm_5/while:output:3@lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         А*
element_dtype02+
)lstm_5/TensorArrayV2Stack/TensorListStackП
lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
lstm_5/strided_slice_3/stackК
lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_5/strided_slice_3/stack_1К
lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_3/stack_2┼
lstm_5/strided_slice_3StridedSlice2lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_5/strided_slice_3/stack:output:0'lstm_5/strided_slice_3/stack_1:output:0'lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
lstm_5/strided_slice_3З
lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_5/transpose_1/perm┬
lstm_5/transpose_1	Transpose2lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:         А2
lstm_5/transpose_1t
lstm_5/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_5/runtimeb
lstm_6/ShapeShapelstm_5/transpose_1:y:0*
T0*
_output_shapes
:2
lstm_6/ShapeВ
lstm_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_6/strided_slice/stackЖ
lstm_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_6/strided_slice/stack_1Ж
lstm_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_6/strided_slice/stack_2М
lstm_6/strided_sliceStridedSlicelstm_6/Shape:output:0#lstm_6/strided_slice/stack:output:0%lstm_6/strided_slice/stack_1:output:0%lstm_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_6/strided_slicej
lstm_6/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_6/zeros/mul/yИ
lstm_6/zeros/mulMullstm_6/strided_slice:output:0lstm_6/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_6/zeros/mulm
lstm_6/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_6/zeros/Less/yГ
lstm_6/zeros/LessLesslstm_6/zeros/mul:z:0lstm_6/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_6/zeros/Lessp
lstm_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_6/zeros/packed/1Я
lstm_6/zeros/packedPacklstm_6/strided_slice:output:0lstm_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_6/zeros/packedm
lstm_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_6/zeros/ConstС
lstm_6/zerosFilllstm_6/zeros/packed:output:0lstm_6/zeros/Const:output:0*
T0*'
_output_shapes
:         @2
lstm_6/zerosn
lstm_6/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_6/zeros_1/mul/yО
lstm_6/zeros_1/mulMullstm_6/strided_slice:output:0lstm_6/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_6/zeros_1/mulq
lstm_6/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_6/zeros_1/Less/yЛ
lstm_6/zeros_1/LessLesslstm_6/zeros_1/mul:z:0lstm_6/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_6/zeros_1/Lesst
lstm_6/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_6/zeros_1/packed/1е
lstm_6/zeros_1/packedPacklstm_6/strided_slice:output:0 lstm_6/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_6/zeros_1/packedq
lstm_6/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_6/zeros_1/ConstЩ
lstm_6/zeros_1Filllstm_6/zeros_1/packed:output:0lstm_6/zeros_1/Const:output:0*
T0*'
_output_shapes
:         @2
lstm_6/zeros_1Г
lstm_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_6/transpose/permа
lstm_6/transpose	Transposelstm_5/transpose_1:y:0lstm_6/transpose/perm:output:0*
T0*,
_output_shapes
:         А2
lstm_6/transposed
lstm_6/Shape_1Shapelstm_6/transpose:y:0*
T0*
_output_shapes
:2
lstm_6/Shape_1Ж
lstm_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_6/strided_slice_1/stackК
lstm_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_1/stack_1К
lstm_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_1/stack_2Ш
lstm_6/strided_slice_1StridedSlicelstm_6/Shape_1:output:0%lstm_6/strided_slice_1/stack:output:0'lstm_6/strided_slice_1/stack_1:output:0'lstm_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_6/strided_slice_1У
"lstm_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2$
"lstm_6/TensorArrayV2/element_shape╬
lstm_6/TensorArrayV2TensorListReserve+lstm_6/TensorArrayV2/element_shape:output:0lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_6/TensorArrayV2═
<lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   2>
<lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shapeФ
.lstm_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_6/transpose:y:0Elstm_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_6/TensorArrayUnstack/TensorListFromTensorЖ
lstm_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_6/strided_slice_2/stackК
lstm_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_2/stack_1К
lstm_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_2/stack_2з
lstm_6/strided_slice_2StridedSlicelstm_6/transpose:y:0%lstm_6/strided_slice_2/stack:output:0'lstm_6/strided_slice_2/stack_1:output:0'lstm_6/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
lstm_6/strided_slice_2╬
*lstm_6/lstm_cell_103/MatMul/ReadVariableOpReadVariableOp3lstm_6_lstm_cell_103_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02,
*lstm_6/lstm_cell_103/MatMul/ReadVariableOp╠
lstm_6/lstm_cell_103/MatMulMatMullstm_6/strided_slice_2:output:02lstm_6/lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_6/lstm_cell_103/MatMul╙
,lstm_6/lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOp5lstm_6_lstm_cell_103_matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02.
,lstm_6/lstm_cell_103/MatMul_1/ReadVariableOp╚
lstm_6/lstm_cell_103/MatMul_1MatMullstm_6/zeros:output:04lstm_6/lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_6/lstm_cell_103/MatMul_1└
lstm_6/lstm_cell_103/addAddV2%lstm_6/lstm_cell_103/MatMul:product:0'lstm_6/lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_6/lstm_cell_103/add╠
+lstm_6/lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOp4lstm_6_lstm_cell_103_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+lstm_6/lstm_cell_103/BiasAdd/ReadVariableOp═
lstm_6/lstm_cell_103/BiasAddBiasAddlstm_6/lstm_cell_103/add:z:03lstm_6/lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_6/lstm_cell_103/BiasAddz
lstm_6/lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_6/lstm_cell_103/ConstО
$lstm_6/lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_6/lstm_cell_103/split/split_dimУ
lstm_6/lstm_cell_103/splitSplit-lstm_6/lstm_cell_103/split/split_dim:output:0%lstm_6/lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
lstm_6/lstm_cell_103/splitЮ
lstm_6/lstm_cell_103/SigmoidSigmoid#lstm_6/lstm_cell_103/split:output:0*
T0*'
_output_shapes
:         @2
lstm_6/lstm_cell_103/Sigmoidв
lstm_6/lstm_cell_103/Sigmoid_1Sigmoid#lstm_6/lstm_cell_103/split:output:1*
T0*'
_output_shapes
:         @2 
lstm_6/lstm_cell_103/Sigmoid_1к
lstm_6/lstm_cell_103/mulMul"lstm_6/lstm_cell_103/Sigmoid_1:y:0lstm_6/zeros_1:output:0*
T0*'
_output_shapes
:         @2
lstm_6/lstm_cell_103/mulв
lstm_6/lstm_cell_103/Sigmoid_2Sigmoid#lstm_6/lstm_cell_103/split:output:2*
T0*'
_output_shapes
:         @2 
lstm_6/lstm_cell_103/Sigmoid_2║
lstm_6/lstm_cell_103/mul_1Mul#lstm_6/lstm_cell_103/split:output:2"lstm_6/lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:         @2
lstm_6/lstm_cell_103/mul_1Ь
lstm_6/lstm_cell_103/IdentityIdentitylstm_6/lstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:         @2
lstm_6/lstm_cell_103/IdentityК
lstm_6/lstm_cell_103/IdentityN	IdentityNlstm_6/lstm_cell_103/mul_1:z:0#lstm_6/lstm_cell_103/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1215283*:
_output_shapes(
&:         @:         @2 
lstm_6/lstm_cell_103/IdentityN╝
lstm_6/lstm_cell_103/mul_2Mul lstm_6/lstm_cell_103/Sigmoid:y:0'lstm_6/lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:         @2
lstm_6/lstm_cell_103/mul_2▒
lstm_6/lstm_cell_103/add_1AddV2lstm_6/lstm_cell_103/mul:z:0lstm_6/lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:         @2
lstm_6/lstm_cell_103/add_1в
lstm_6/lstm_cell_103/Sigmoid_3Sigmoid#lstm_6/lstm_cell_103/split:output:3*
T0*'
_output_shapes
:         @2 
lstm_6/lstm_cell_103/Sigmoid_3Э
lstm_6/lstm_cell_103/Sigmoid_4Sigmoidlstm_6/lstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:         @2 
lstm_6/lstm_cell_103/Sigmoid_4╡
lstm_6/lstm_cell_103/mul_3Mullstm_6/lstm_cell_103/add_1:z:0"lstm_6/lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:         @2
lstm_6/lstm_cell_103/mul_3а
lstm_6/lstm_cell_103/Identity_1Identitylstm_6/lstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:         @2!
lstm_6/lstm_cell_103/Identity_1Й
 lstm_6/lstm_cell_103/IdentityN_1	IdentityNlstm_6/lstm_cell_103/mul_3:z:0lstm_6/lstm_cell_103/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1215292*:
_output_shapes(
&:         @:         @2"
 lstm_6/lstm_cell_103/IdentityN_1└
lstm_6/lstm_cell_103/mul_4Mul"lstm_6/lstm_cell_103/Sigmoid_3:y:0)lstm_6/lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:         @2
lstm_6/lstm_cell_103/mul_4Э
$lstm_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_6/TensorArrayV2_1/element_shape╘
lstm_6/TensorArrayV2_1TensorListReserve-lstm_6/TensorArrayV2_1/element_shape:output:0lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_6/TensorArrayV2_1\
lstm_6/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_6/timeН
lstm_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2!
lstm_6/while/maximum_iterationsx
lstm_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_6/while/loop_counter▄
lstm_6/whileWhile"lstm_6/while/loop_counter:output:0(lstm_6/while/maximum_iterations:output:0lstm_6/time:output:0lstm_6/TensorArrayV2_1:handle:0lstm_6/zeros:output:0lstm_6/zeros_1:output:0lstm_6/strided_slice_1:output:0>lstm_6/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_6_lstm_cell_103_matmul_readvariableop_resource5lstm_6_lstm_cell_103_matmul_1_readvariableop_resource4lstm_6_lstm_cell_103_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*%
bodyR
lstm_6_while_body_1215303*%
condR
lstm_6_while_cond_1215302*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations 2
lstm_6/while├
7lstm_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   29
7lstm_6/TensorArrayV2Stack/TensorListStack/element_shapeД
)lstm_6/TensorArrayV2Stack/TensorListStackTensorListStacklstm_6/while:output:3@lstm_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype02+
)lstm_6/TensorArrayV2Stack/TensorListStackП
lstm_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
lstm_6/strided_slice_3/stackК
lstm_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_6/strided_slice_3/stack_1К
lstm_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_3/stack_2─
lstm_6/strided_slice_3StridedSlice2lstm_6/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_6/strided_slice_3/stack:output:0'lstm_6/strided_slice_3/stack_1:output:0'lstm_6/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
lstm_6/strided_slice_3З
lstm_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_6/transpose_1/perm┴
lstm_6/transpose_1	Transpose2lstm_6/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_6/transpose_1/perm:output:0*
T0*+
_output_shapes
:         @2
lstm_6/transpose_1t
lstm_6/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_6/runtimeХ
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2"
 time_distributed_3/Reshape/shape╕
time_distributed_3/ReshapeReshapelstm_6/transpose_1:y:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
time_distributed_3/Reshape▐
0time_distributed_3/dense_8/MatMul/ReadVariableOpReadVariableOp9time_distributed_3_dense_8_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype022
0time_distributed_3/dense_8/MatMul/ReadVariableOpс
!time_distributed_3/dense_8/MatMulMatMul#time_distributed_3/Reshape:output:08time_distributed_3/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2#
!time_distributed_3/dense_8/MatMul▌
1time_distributed_3/dense_8/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_3_dense_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype023
1time_distributed_3/dense_8/BiasAdd/ReadVariableOpэ
"time_distributed_3/dense_8/BiasAddBiasAdd+time_distributed_3/dense_8/MatMul:product:09time_distributed_3/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2$
"time_distributed_3/dense_8/BiasAdd▓
"time_distributed_3/dense_8/SigmoidSigmoid+time_distributed_3/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:         @2$
"time_distributed_3/dense_8/Sigmoid╬
time_distributed_3/dense_8/mulMul+time_distributed_3/dense_8/BiasAdd:output:0&time_distributed_3/dense_8/Sigmoid:y:0*
T0*'
_output_shapes
:         @2 
time_distributed_3/dense_8/mulм
#time_distributed_3/dense_8/IdentityIdentity"time_distributed_3/dense_8/mul:z:0*
T0*'
_output_shapes
:         @2%
#time_distributed_3/dense_8/Identityв
$time_distributed_3/dense_8/IdentityN	IdentityN"time_distributed_3/dense_8/mul:z:0+time_distributed_3/dense_8/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1215405*:
_output_shapes(
&:         @:         @2&
$time_distributed_3/dense_8/IdentityNЭ
"time_distributed_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       @   2$
"time_distributed_3/Reshape_1/shape┘
time_distributed_3/Reshape_1Reshape-time_distributed_3/dense_8/IdentityN:output:0+time_distributed_3/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         @2
time_distributed_3/Reshape_1Щ
"time_distributed_3/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"time_distributed_3/Reshape_2/shape╛
time_distributed_3/Reshape_2Reshapelstm_6/transpose_1:y:0+time_distributed_3/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         @2
time_distributed_3/Reshape_2Х
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2"
 time_distributed_4/Reshape/shape╟
time_distributed_4/ReshapeReshape%time_distributed_3/Reshape_1:output:0)time_distributed_4/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
time_distributed_4/Reshape▐
0time_distributed_4/dense_9/MatMul/ReadVariableOpReadVariableOp9time_distributed_4_dense_9_matmul_readvariableop_resource*
_output_shapes

:@*
dtype022
0time_distributed_4/dense_9/MatMul/ReadVariableOpс
!time_distributed_4/dense_9/MatMulMatMul#time_distributed_4/Reshape:output:08time_distributed_4/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2#
!time_distributed_4/dense_9/MatMul▌
1time_distributed_4/dense_9/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_4_dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype023
1time_distributed_4/dense_9/BiasAdd/ReadVariableOpэ
"time_distributed_4/dense_9/BiasAddBiasAdd+time_distributed_4/dense_9/MatMul:product:09time_distributed_4/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2$
"time_distributed_4/dense_9/BiasAddЭ
"time_distributed_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"time_distributed_4/Reshape_1/shape╫
time_distributed_4/Reshape_1Reshape+time_distributed_4/dense_9/BiasAdd:output:0+time_distributed_4/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         2
time_distributed_4/Reshape_1Щ
"time_distributed_4/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"time_distributed_4/Reshape_2/shape═
time_distributed_4/Reshape_2Reshape%time_distributed_3/Reshape_1:output:0+time_distributed_4/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         @2
time_distributed_4/Reshape_2¤
IdentityIdentity%time_distributed_4/Reshape_1:output:0,^lstm_5/lstm_cell_102/BiasAdd/ReadVariableOp+^lstm_5/lstm_cell_102/MatMul/ReadVariableOp-^lstm_5/lstm_cell_102/MatMul_1/ReadVariableOp^lstm_5/while,^lstm_6/lstm_cell_103/BiasAdd/ReadVariableOp+^lstm_6/lstm_cell_103/MatMul/ReadVariableOp-^lstm_6/lstm_cell_103/MatMul_1/ReadVariableOp^lstm_6/while2^time_distributed_3/dense_8/BiasAdd/ReadVariableOp1^time_distributed_3/dense_8/MatMul/ReadVariableOp2^time_distributed_4/dense_9/BiasAdd/ReadVariableOp1^time_distributed_4/dense_9/MatMul/ReadVariableOp*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:         ::::::::::2Z
+lstm_5/lstm_cell_102/BiasAdd/ReadVariableOp+lstm_5/lstm_cell_102/BiasAdd/ReadVariableOp2X
*lstm_5/lstm_cell_102/MatMul/ReadVariableOp*lstm_5/lstm_cell_102/MatMul/ReadVariableOp2\
,lstm_5/lstm_cell_102/MatMul_1/ReadVariableOp,lstm_5/lstm_cell_102/MatMul_1/ReadVariableOp2
lstm_5/whilelstm_5/while2Z
+lstm_6/lstm_cell_103/BiasAdd/ReadVariableOp+lstm_6/lstm_cell_103/BiasAdd/ReadVariableOp2X
*lstm_6/lstm_cell_103/MatMul/ReadVariableOp*lstm_6/lstm_cell_103/MatMul/ReadVariableOp2\
,lstm_6/lstm_cell_103/MatMul_1/ReadVariableOp,lstm_6/lstm_cell_103/MatMul_1/ReadVariableOp2
lstm_6/whilelstm_6/while2f
1time_distributed_3/dense_8/BiasAdd/ReadVariableOp1time_distributed_3/dense_8/BiasAdd/ReadVariableOp2d
0time_distributed_3/dense_8/MatMul/ReadVariableOp0time_distributed_3/dense_8/MatMul/ReadVariableOp2f
1time_distributed_4/dense_9/BiasAdd/ReadVariableOp1time_distributed_4/dense_9/BiasAdd/ReadVariableOp2d
0time_distributed_4/dense_9/MatMul/ReadVariableOp0time_distributed_4/dense_9/MatMul/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
з
Й
4__inference_time_distributed_3_layer_call_fn_1217385

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_time_distributed_3_layer_call_and_return_conditional_losses_12138442
StatefulPartitionedCallЫ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :                  @2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:                  @::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :                  @
 
_user_specified_nameinputs
ў
√
.__inference_sequential_3_layer_call_fn_1215850

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_sequential_3_layer_call_and_return_conditional_losses_12149982
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:         ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
┌M
И
while_body_1215928
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_08
4while_lstm_cell_102_matmul_readvariableop_resource_0:
6while_lstm_cell_102_matmul_1_readvariableop_resource_09
5while_lstm_cell_102_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor6
2while_lstm_cell_102_matmul_readvariableop_resource8
4while_lstm_cell_102_matmul_1_readvariableop_resource7
3while_lstm_cell_102_biasadd_readvariableop_resourceИв*while/lstm_cell_102/BiasAdd/ReadVariableOpв)while/lstm_cell_102/MatMul/ReadVariableOpв+while/lstm_cell_102/MatMul_1/ReadVariableOp├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem╠
)while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02+
)while/lstm_cell_102/MatMul/ReadVariableOp┌
while/lstm_cell_102/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/MatMul╙
+while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02-
+while/lstm_cell_102/MatMul_1/ReadVariableOp├
while/lstm_cell_102/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/MatMul_1╝
while/lstm_cell_102/addAddV2$while/lstm_cell_102/MatMul:product:0&while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/add╦
*while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02,
*while/lstm_cell_102/BiasAdd/ReadVariableOp╔
while/lstm_cell_102/BiasAddBiasAddwhile/lstm_cell_102/add:z:02while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/BiasAddx
while/lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_102/ConstМ
#while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_102/split/split_dimУ
while/lstm_cell_102/splitSplit,while/lstm_cell_102/split/split_dim:output:0$while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
while/lstm_cell_102/splitЬ
while/lstm_cell_102/SigmoidSigmoid"while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/Sigmoidа
while/lstm_cell_102/Sigmoid_1Sigmoid"while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/Sigmoid_1д
while/lstm_cell_102/mulMul!while/lstm_cell_102/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/mulа
while/lstm_cell_102/Sigmoid_2Sigmoid"while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/Sigmoid_2╖
while/lstm_cell_102/mul_1Mul"while/lstm_cell_102/split:output:2!while/lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/mul_1Ъ
while/lstm_cell_102/IdentityIdentitywhile/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/IdentityИ
while/lstm_cell_102/IdentityN	IdentityNwhile/lstm_cell_102/mul_1:z:0"while/lstm_cell_102/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1215971*<
_output_shapes*
(:         А:         А2
while/lstm_cell_102/IdentityN╣
while/lstm_cell_102/mul_2Mulwhile/lstm_cell_102/Sigmoid:y:0&while/lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/mul_2о
while/lstm_cell_102/add_1AddV2while/lstm_cell_102/mul:z:0while/lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/add_1а
while/lstm_cell_102/Sigmoid_3Sigmoid"while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/Sigmoid_3Ы
while/lstm_cell_102/Sigmoid_4Sigmoidwhile/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/Sigmoid_4▓
while/lstm_cell_102/mul_3Mulwhile/lstm_cell_102/add_1:z:0!while/lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/mul_3Ю
while/lstm_cell_102/Identity_1Identitywhile/lstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:         А2 
while/lstm_cell_102/Identity_1З
while/lstm_cell_102/IdentityN_1	IdentityNwhile/lstm_cell_102/mul_3:z:0while/lstm_cell_102/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1215980*<
_output_shapes*
(:         А:         А2!
while/lstm_cell_102/IdentityN_1╜
while/lstm_cell_102/mul_4Mul!while/lstm_cell_102/Sigmoid_3:y:0(while/lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/mul_4с
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_102/mul_4:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1х
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity°
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ч
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2Ф
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Й
while/Identity_4Identitywhile/lstm_cell_102/mul_4:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:         А2
while/Identity_4Й
while/Identity_5Identitywhile/lstm_cell_102/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:         А2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_102_biasadd_readvariableop_resource5while_lstm_cell_102_biasadd_readvariableop_resource_0"n
4while_lstm_cell_102_matmul_1_readvariableop_resource6while_lstm_cell_102_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_102_matmul_readvariableop_resource4while_lstm_cell_102_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :         А:         А: : :::2X
*while/lstm_cell_102/BiasAdd/ReadVariableOp*while/lstm_cell_102/BiasAdd/ReadVariableOp2V
)while/lstm_cell_102/MatMul/ReadVariableOp)while/lstm_cell_102/MatMul/ReadVariableOp2Z
+while/lstm_cell_102/MatMul_1/ReadVariableOp+while/lstm_cell_102/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
Ёd
·
C__inference_lstm_6_layer_call_and_return_conditional_losses_1217300
inputs_00
,lstm_cell_103_matmul_readvariableop_resource2
.lstm_cell_103_matmul_1_readvariableop_resource1
-lstm_cell_103_biasadd_readvariableop_resource
identityИв$lstm_cell_103/BiasAdd/ReadVariableOpв#lstm_cell_103/MatMul/ReadVariableOpв%lstm_cell_103/MatMul_1/ReadVariableOpвwhileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         @2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЖ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:                  А2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2¤
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_2╣
#lstm_cell_103/MatMul/ReadVariableOpReadVariableOp,lstm_cell_103_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02%
#lstm_cell_103/MatMul/ReadVariableOp░
lstm_cell_103/MatMulMatMulstrided_slice_2:output:0+lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_103/MatMul╛
%lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_103_matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02'
%lstm_cell_103/MatMul_1/ReadVariableOpм
lstm_cell_103/MatMul_1MatMulzeros:output:0-lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_103/MatMul_1д
lstm_cell_103/addAddV2lstm_cell_103/MatMul:product:0 lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_cell_103/add╖
$lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_103_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02&
$lstm_cell_103/BiasAdd/ReadVariableOp▒
lstm_cell_103/BiasAddBiasAddlstm_cell_103/add:z:0,lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_103/BiasAddl
lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_103/ConstА
lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_103/split/split_dimў
lstm_cell_103/splitSplit&lstm_cell_103/split/split_dim:output:0lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
lstm_cell_103/splitЙ
lstm_cell_103/SigmoidSigmoidlstm_cell_103/split:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/SigmoidН
lstm_cell_103/Sigmoid_1Sigmoidlstm_cell_103/split:output:1*
T0*'
_output_shapes
:         @2
lstm_cell_103/Sigmoid_1О
lstm_cell_103/mulMullstm_cell_103/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/mulН
lstm_cell_103/Sigmoid_2Sigmoidlstm_cell_103/split:output:2*
T0*'
_output_shapes
:         @2
lstm_cell_103/Sigmoid_2Ю
lstm_cell_103/mul_1Mullstm_cell_103/split:output:2lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/mul_1З
lstm_cell_103/IdentityIdentitylstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/Identityю
lstm_cell_103/IdentityN	IdentityNlstm_cell_103/mul_1:z:0lstm_cell_103/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1217185*:
_output_shapes(
&:         @:         @2
lstm_cell_103/IdentityNа
lstm_cell_103/mul_2Mullstm_cell_103/Sigmoid:y:0 lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/mul_2Х
lstm_cell_103/add_1AddV2lstm_cell_103/mul:z:0lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/add_1Н
lstm_cell_103/Sigmoid_3Sigmoidlstm_cell_103/split:output:3*
T0*'
_output_shapes
:         @2
lstm_cell_103/Sigmoid_3И
lstm_cell_103/Sigmoid_4Sigmoidlstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/Sigmoid_4Щ
lstm_cell_103/mul_3Mullstm_cell_103/add_1:z:0lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/mul_3Л
lstm_cell_103/Identity_1Identitylstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/Identity_1э
lstm_cell_103/IdentityN_1	IdentityNlstm_cell_103/mul_3:z:0lstm_cell_103/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1217194*:
_output_shapes(
&:         @:         @2
lstm_cell_103/IdentityN_1д
lstm_cell_103/mul_4Mullstm_cell_103/Sigmoid_3:y:0"lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/mul_4П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
TensorArrayV2_1/element_shape╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterє
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_103_matmul_readvariableop_resource.lstm_cell_103_matmul_1_readvariableop_resource-lstm_cell_103_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1217205*
condR
while_cond_1217204*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  @*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permо
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  @2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeэ
IdentityIdentitytranspose_1:y:0%^lstm_cell_103/BiasAdd/ReadVariableOp$^lstm_cell_103/MatMul/ReadVariableOp&^lstm_cell_103/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :                  @2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:                  А:::2L
$lstm_cell_103/BiasAdd/ReadVariableOp$lstm_cell_103/BiasAdd/ReadVariableOp2J
#lstm_cell_103/MatMul/ReadVariableOp#lstm_cell_103/MatMul/ReadVariableOp2N
%lstm_cell_103/MatMul_1/ReadVariableOp%lstm_cell_103/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:                  А
"
_user_specified_name
inputs/0
░
╚
while_cond_1213542
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1213542___redundant_placeholder05
1while_while_cond_1213542___redundant_placeholder15
1while_while_cond_1213542___redundant_placeholder25
1while_while_cond_1213542___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :         @:         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
└M
И
while_body_1216664
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_08
4while_lstm_cell_103_matmul_readvariableop_resource_0:
6while_lstm_cell_103_matmul_1_readvariableop_resource_09
5while_lstm_cell_103_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor6
2while_lstm_cell_103_matmul_readvariableop_resource8
4while_lstm_cell_103_matmul_1_readvariableop_resource7
3while_lstm_cell_103_biasadd_readvariableop_resourceИв*while/lstm_cell_103/BiasAdd/ReadVariableOpв)while/lstm_cell_103/MatMul/ReadVariableOpв+while/lstm_cell_103/MatMul_1/ReadVariableOp├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╘
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem═
)while/lstm_cell_103/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_103_matmul_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02+
)while/lstm_cell_103/MatMul/ReadVariableOp┌
while/lstm_cell_103/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_103/MatMul╥
+while/lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_103_matmul_1_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02-
+while/lstm_cell_103/MatMul_1/ReadVariableOp├
while/lstm_cell_103/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_103/MatMul_1╝
while/lstm_cell_103/addAddV2$while/lstm_cell_103/MatMul:product:0&while/lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_103/add╦
*while/lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_103_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02,
*while/lstm_cell_103/BiasAdd/ReadVariableOp╔
while/lstm_cell_103/BiasAddBiasAddwhile/lstm_cell_103/add:z:02while/lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_103/BiasAddx
while/lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_103/ConstМ
#while/lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_103/split/split_dimП
while/lstm_cell_103/splitSplit,while/lstm_cell_103/split/split_dim:output:0$while/lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
while/lstm_cell_103/splitЫ
while/lstm_cell_103/SigmoidSigmoid"while/lstm_cell_103/split:output:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/SigmoidЯ
while/lstm_cell_103/Sigmoid_1Sigmoid"while/lstm_cell_103/split:output:1*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/Sigmoid_1г
while/lstm_cell_103/mulMul!while/lstm_cell_103/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/mulЯ
while/lstm_cell_103/Sigmoid_2Sigmoid"while/lstm_cell_103/split:output:2*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/Sigmoid_2╢
while/lstm_cell_103/mul_1Mul"while/lstm_cell_103/split:output:2!while/lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/mul_1Щ
while/lstm_cell_103/IdentityIdentitywhile/lstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/IdentityЖ
while/lstm_cell_103/IdentityN	IdentityNwhile/lstm_cell_103/mul_1:z:0"while/lstm_cell_103/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1216707*:
_output_shapes(
&:         @:         @2
while/lstm_cell_103/IdentityN╕
while/lstm_cell_103/mul_2Mulwhile/lstm_cell_103/Sigmoid:y:0&while/lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/mul_2н
while/lstm_cell_103/add_1AddV2while/lstm_cell_103/mul:z:0while/lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/add_1Я
while/lstm_cell_103/Sigmoid_3Sigmoid"while/lstm_cell_103/split:output:3*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/Sigmoid_3Ъ
while/lstm_cell_103/Sigmoid_4Sigmoidwhile/lstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/Sigmoid_4▒
while/lstm_cell_103/mul_3Mulwhile/lstm_cell_103/add_1:z:0!while/lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/mul_3Э
while/lstm_cell_103/Identity_1Identitywhile/lstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:         @2 
while/lstm_cell_103/Identity_1Е
while/lstm_cell_103/IdentityN_1	IdentityNwhile/lstm_cell_103/mul_3:z:0while/lstm_cell_103/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1216716*:
_output_shapes(
&:         @:         @2!
while/lstm_cell_103/IdentityN_1╝
while/lstm_cell_103/mul_4Mul!while/lstm_cell_103/Sigmoid_3:y:0(while/lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/mul_4с
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_103/mul_4:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1х
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity°
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ч
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2Ф
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3И
while/Identity_4Identitywhile/lstm_cell_103/mul_4:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:         @2
while/Identity_4И
while/Identity_5Identitywhile/lstm_cell_103/add_1:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:         @2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_103_biasadd_readvariableop_resource5while_lstm_cell_103_biasadd_readvariableop_resource_0"n
4while_lstm_cell_103_matmul_1_readvariableop_resource6while_lstm_cell_103_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_103_matmul_readvariableop_resource4while_lstm_cell_103_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :         @:         @: : :::2X
*while/lstm_cell_103/BiasAdd/ReadVariableOp*while/lstm_cell_103/BiasAdd/ReadVariableOp2V
)while/lstm_cell_103/MatMul/ReadVariableOp)while/lstm_cell_103/MatMul/ReadVariableOp2Z
+while/lstm_cell_103/MatMul_1/ReadVariableOp+while/lstm_cell_103/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
╨d
°
C__inference_lstm_5_layer_call_and_return_conditional_losses_1214350

inputs0
,lstm_cell_102_matmul_readvariableop_resource2
.lstm_cell_102_matmul_1_readvariableop_resource1
-lstm_cell_102_biasadd_readvariableop_resource
identityИв$lstm_cell_102/BiasAdd/ReadVariableOpв#lstm_cell_102/MatMul/ReadVariableOpв%lstm_cell_102/MatMul_1/ReadVariableOpвwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         А2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         А2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_2╕
#lstm_cell_102/MatMul/ReadVariableOpReadVariableOp,lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02%
#lstm_cell_102/MatMul/ReadVariableOp░
lstm_cell_102/MatMulMatMulstrided_slice_2:output:0+lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/MatMul┐
%lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02'
%lstm_cell_102/MatMul_1/ReadVariableOpм
lstm_cell_102/MatMul_1MatMulzeros:output:0-lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/MatMul_1д
lstm_cell_102/addAddV2lstm_cell_102/MatMul:product:0 lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/add╖
$lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02&
$lstm_cell_102/BiasAdd/ReadVariableOp▒
lstm_cell_102/BiasAddBiasAddlstm_cell_102/add:z:0,lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/BiasAddl
lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/ConstА
lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/split/split_dim√
lstm_cell_102/splitSplit&lstm_cell_102/split/split_dim:output:0lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
lstm_cell_102/splitК
lstm_cell_102/SigmoidSigmoidlstm_cell_102/split:output:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/SigmoidО
lstm_cell_102/Sigmoid_1Sigmoidlstm_cell_102/split:output:1*
T0*(
_output_shapes
:         А2
lstm_cell_102/Sigmoid_1П
lstm_cell_102/mulMullstm_cell_102/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/mulО
lstm_cell_102/Sigmoid_2Sigmoidlstm_cell_102/split:output:2*
T0*(
_output_shapes
:         А2
lstm_cell_102/Sigmoid_2Я
lstm_cell_102/mul_1Mullstm_cell_102/split:output:2lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/mul_1И
lstm_cell_102/IdentityIdentitylstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/IdentityЁ
lstm_cell_102/IdentityN	IdentityNlstm_cell_102/mul_1:z:0lstm_cell_102/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1214235*<
_output_shapes*
(:         А:         А2
lstm_cell_102/IdentityNб
lstm_cell_102/mul_2Mullstm_cell_102/Sigmoid:y:0 lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/mul_2Ц
lstm_cell_102/add_1AddV2lstm_cell_102/mul:z:0lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/add_1О
lstm_cell_102/Sigmoid_3Sigmoidlstm_cell_102/split:output:3*
T0*(
_output_shapes
:         А2
lstm_cell_102/Sigmoid_3Й
lstm_cell_102/Sigmoid_4Sigmoidlstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/Sigmoid_4Ъ
lstm_cell_102/mul_3Mullstm_cell_102/add_1:z:0lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/mul_3М
lstm_cell_102/Identity_1Identitylstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/Identity_1я
lstm_cell_102/IdentityN_1	IdentityNlstm_cell_102/mul_3:z:0lstm_cell_102/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1214244*<
_output_shapes*
(:         А:         А2
lstm_cell_102/IdentityN_1е
lstm_cell_102/mul_4Mullstm_cell_102/Sigmoid_3:y:0"lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/mul_4П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   2
TensorArrayV2_1/element_shape╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterў
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_102_matmul_readvariableop_resource.lstm_cell_102_matmul_1_readvariableop_resource-lstm_cell_102_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         А:         А: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1214255*
condR
while_cond_1214254*M
output_shapes<
:: : : : :         А:         А: : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   22
0TensorArrayV2Stack/TensorListStack/element_shapeщ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permж
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         А2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeх
IdentityIdentitytranspose_1:y:0%^lstm_cell_102/BiasAdd/ReadVariableOp$^lstm_cell_102/MatMul/ReadVariableOp&^lstm_cell_102/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:         А2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         :::2L
$lstm_cell_102/BiasAdd/ReadVariableOp$lstm_cell_102/BiasAdd/ReadVariableOp2J
#lstm_cell_102/MatMul/ReadVariableOp#lstm_cell_102/MatMul/ReadVariableOp2N
%lstm_cell_102/MatMul_1/ReadVariableOp%lstm_cell_102/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ЦY
ш	
lstm_6_while_body_1215303*
&lstm_6_while_lstm_6_while_loop_counter0
,lstm_6_while_lstm_6_while_maximum_iterations
lstm_6_while_placeholder
lstm_6_while_placeholder_1
lstm_6_while_placeholder_2
lstm_6_while_placeholder_3)
%lstm_6_while_lstm_6_strided_slice_1_0e
alstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0?
;lstm_6_while_lstm_cell_103_matmul_readvariableop_resource_0A
=lstm_6_while_lstm_cell_103_matmul_1_readvariableop_resource_0@
<lstm_6_while_lstm_cell_103_biasadd_readvariableop_resource_0
lstm_6_while_identity
lstm_6_while_identity_1
lstm_6_while_identity_2
lstm_6_while_identity_3
lstm_6_while_identity_4
lstm_6_while_identity_5'
#lstm_6_while_lstm_6_strided_slice_1c
_lstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor=
9lstm_6_while_lstm_cell_103_matmul_readvariableop_resource?
;lstm_6_while_lstm_cell_103_matmul_1_readvariableop_resource>
:lstm_6_while_lstm_cell_103_biasadd_readvariableop_resourceИв1lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOpв0lstm_6/while/lstm_cell_103/MatMul/ReadVariableOpв2lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp╤
>lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   2@
>lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shape■
0lstm_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0lstm_6_while_placeholderGlstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         А*
element_dtype022
0lstm_6/while/TensorArrayV2Read/TensorListGetItemт
0lstm_6/while/lstm_cell_103/MatMul/ReadVariableOpReadVariableOp;lstm_6_while_lstm_cell_103_matmul_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype022
0lstm_6/while/lstm_cell_103/MatMul/ReadVariableOpЎ
!lstm_6/while/lstm_cell_103/MatMulMatMul7lstm_6/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2#
!lstm_6/while/lstm_cell_103/MatMulч
2lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOp=lstm_6_while_lstm_cell_103_matmul_1_readvariableop_resource_0*
_output_shapes
:	@А*
dtype024
2lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp▀
#lstm_6/while/lstm_cell_103/MatMul_1MatMullstm_6_while_placeholder_2:lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2%
#lstm_6/while/lstm_cell_103/MatMul_1╪
lstm_6/while/lstm_cell_103/addAddV2+lstm_6/while/lstm_cell_103/MatMul:product:0-lstm_6/while/lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:         А2 
lstm_6/while/lstm_cell_103/addр
1lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOp<lstm_6_while_lstm_cell_103_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype023
1lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOpх
"lstm_6/while/lstm_cell_103/BiasAddBiasAdd"lstm_6/while/lstm_cell_103/add:z:09lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2$
"lstm_6/while/lstm_cell_103/BiasAddЖ
 lstm_6/while/lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2"
 lstm_6/while/lstm_cell_103/ConstЪ
*lstm_6/while/lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_6/while/lstm_cell_103/split/split_dimл
 lstm_6/while/lstm_cell_103/splitSplit3lstm_6/while/lstm_cell_103/split/split_dim:output:0+lstm_6/while/lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2"
 lstm_6/while/lstm_cell_103/split░
"lstm_6/while/lstm_cell_103/SigmoidSigmoid)lstm_6/while/lstm_cell_103/split:output:0*
T0*'
_output_shapes
:         @2$
"lstm_6/while/lstm_cell_103/Sigmoid┤
$lstm_6/while/lstm_cell_103/Sigmoid_1Sigmoid)lstm_6/while/lstm_cell_103/split:output:1*
T0*'
_output_shapes
:         @2&
$lstm_6/while/lstm_cell_103/Sigmoid_1┐
lstm_6/while/lstm_cell_103/mulMul(lstm_6/while/lstm_cell_103/Sigmoid_1:y:0lstm_6_while_placeholder_3*
T0*'
_output_shapes
:         @2 
lstm_6/while/lstm_cell_103/mul┤
$lstm_6/while/lstm_cell_103/Sigmoid_2Sigmoid)lstm_6/while/lstm_cell_103/split:output:2*
T0*'
_output_shapes
:         @2&
$lstm_6/while/lstm_cell_103/Sigmoid_2╥
 lstm_6/while/lstm_cell_103/mul_1Mul)lstm_6/while/lstm_cell_103/split:output:2(lstm_6/while/lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:         @2"
 lstm_6/while/lstm_cell_103/mul_1о
#lstm_6/while/lstm_cell_103/IdentityIdentity$lstm_6/while/lstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:         @2%
#lstm_6/while/lstm_cell_103/Identityв
$lstm_6/while/lstm_cell_103/IdentityN	IdentityN$lstm_6/while/lstm_cell_103/mul_1:z:0)lstm_6/while/lstm_cell_103/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1215346*:
_output_shapes(
&:         @:         @2&
$lstm_6/while/lstm_cell_103/IdentityN╘
 lstm_6/while/lstm_cell_103/mul_2Mul&lstm_6/while/lstm_cell_103/Sigmoid:y:0-lstm_6/while/lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:         @2"
 lstm_6/while/lstm_cell_103/mul_2╔
 lstm_6/while/lstm_cell_103/add_1AddV2"lstm_6/while/lstm_cell_103/mul:z:0$lstm_6/while/lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:         @2"
 lstm_6/while/lstm_cell_103/add_1┤
$lstm_6/while/lstm_cell_103/Sigmoid_3Sigmoid)lstm_6/while/lstm_cell_103/split:output:3*
T0*'
_output_shapes
:         @2&
$lstm_6/while/lstm_cell_103/Sigmoid_3п
$lstm_6/while/lstm_cell_103/Sigmoid_4Sigmoid$lstm_6/while/lstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:         @2&
$lstm_6/while/lstm_cell_103/Sigmoid_4═
 lstm_6/while/lstm_cell_103/mul_3Mul$lstm_6/while/lstm_cell_103/add_1:z:0(lstm_6/while/lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:         @2"
 lstm_6/while/lstm_cell_103/mul_3▓
%lstm_6/while/lstm_cell_103/Identity_1Identity$lstm_6/while/lstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:         @2'
%lstm_6/while/lstm_cell_103/Identity_1б
&lstm_6/while/lstm_cell_103/IdentityN_1	IdentityN$lstm_6/while/lstm_cell_103/mul_3:z:0$lstm_6/while/lstm_cell_103/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1215355*:
_output_shapes(
&:         @:         @2(
&lstm_6/while/lstm_cell_103/IdentityN_1╪
 lstm_6/while/lstm_cell_103/mul_4Mul(lstm_6/while/lstm_cell_103/Sigmoid_3:y:0/lstm_6/while/lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:         @2"
 lstm_6/while/lstm_cell_103/mul_4Д
1lstm_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_6_while_placeholder_1lstm_6_while_placeholder$lstm_6/while/lstm_cell_103/mul_4:z:0*
_output_shapes
: *
element_dtype023
1lstm_6/while/TensorArrayV2Write/TensorListSetItemj
lstm_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_6/while/add/yЕ
lstm_6/while/addAddV2lstm_6_while_placeholderlstm_6/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_6/while/addn
lstm_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_6/while/add_1/yЩ
lstm_6/while/add_1AddV2&lstm_6_while_lstm_6_while_loop_counterlstm_6/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_6/while/add_1П
lstm_6/while/IdentityIdentitylstm_6/while/add_1:z:02^lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp1^lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp3^lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_6/while/Identityй
lstm_6/while/Identity_1Identity,lstm_6_while_lstm_6_while_maximum_iterations2^lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp1^lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp3^lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_1С
lstm_6/while/Identity_2Identitylstm_6/while/add:z:02^lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp1^lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp3^lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_2╛
lstm_6/while/Identity_3IdentityAlstm_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp1^lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp3^lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_3▓
lstm_6/while/Identity_4Identity$lstm_6/while/lstm_cell_103/mul_4:z:02^lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp1^lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp3^lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:         @2
lstm_6/while/Identity_4▓
lstm_6/while/Identity_5Identity$lstm_6/while/lstm_cell_103/add_1:z:02^lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp1^lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp3^lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:         @2
lstm_6/while/Identity_5"7
lstm_6_while_identitylstm_6/while/Identity:output:0";
lstm_6_while_identity_1 lstm_6/while/Identity_1:output:0";
lstm_6_while_identity_2 lstm_6/while/Identity_2:output:0";
lstm_6_while_identity_3 lstm_6/while/Identity_3:output:0";
lstm_6_while_identity_4 lstm_6/while/Identity_4:output:0";
lstm_6_while_identity_5 lstm_6/while/Identity_5:output:0"L
#lstm_6_while_lstm_6_strided_slice_1%lstm_6_while_lstm_6_strided_slice_1_0"z
:lstm_6_while_lstm_cell_103_biasadd_readvariableop_resource<lstm_6_while_lstm_cell_103_biasadd_readvariableop_resource_0"|
;lstm_6_while_lstm_cell_103_matmul_1_readvariableop_resource=lstm_6_while_lstm_cell_103_matmul_1_readvariableop_resource_0"x
9lstm_6_while_lstm_cell_103_matmul_readvariableop_resource;lstm_6_while_lstm_cell_103_matmul_readvariableop_resource_0"─
_lstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensoralstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :         @:         @: : :::2f
1lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp1lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp2d
0lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp0lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp2h
2lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp2lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
╫
И
O__inference_time_distributed_4_layer_call_and_return_conditional_losses_1217540

inputs*
&dense_9_matmul_readvariableop_resource+
'dense_9_biasadd_readvariableop_resource
identityИвdense_9/BiasAdd/ReadVariableOpвdense_9/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         @2	
Reshapeе
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_9/MatMul/ReadVariableOpХ
dense_9/MatMulMatMulReshape:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_9/MatMulд
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_9/BiasAdd/ReadVariableOpб
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_9/BiasAddw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          2
Reshape_1/shapeЛ
	Reshape_1Reshapedense_9/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         2
	Reshape_1л
IdentityIdentityReshape_1:output:0^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*2
_input_shapes!
:         @::2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
╖
О
(__inference_lstm_6_layer_call_fn_1217322
inputs_0
unknown
	unknown_0
	unknown_1
identityИвStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_6_layer_call_and_return_conditional_losses_12137442
StatefulPartitionedCallЫ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :                  @2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:                  А:::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:                  А
"
_user_specified_name
inputs/0
√
▀
D__inference_dense_8_layer_call_and_return_conditional_losses_1213780

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource

identity_1ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         @2	
Sigmoidb
mulMulBiasAdd:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         @2
mul[
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:         @2

Identity╢
	IdentityN	IdentityNmul:z:0BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1213773*:
_output_shapes(
&:         @:         @2
	IdentityNЫ

Identity_1IdentityIdentityN:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╦%
Я
while_body_1213543
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0!
while_lstm_cell_103_1213567_0!
while_lstm_cell_103_1213569_0!
while_lstm_cell_103_1213571_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_103_1213567
while_lstm_cell_103_1213569
while_lstm_cell_103_1213571Ив+while/lstm_cell_103/StatefulPartitionedCall├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╘
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemы
+while/lstm_cell_103/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_103_1213567_0while_lstm_cell_103_1213569_0while_lstm_cell_103_1213571_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         @:         @:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_103_layer_call_and_return_conditional_losses_12132062-
+while/lstm_cell_103/StatefulPartitionedCall°
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_103/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1М
while/IdentityIdentitywhile/add_1:z:0,^while/lstm_cell_103/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/IdentityЯ
while/Identity_1Identitywhile_while_maximum_iterations,^while/lstm_cell_103/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1О
while/Identity_2Identitywhile/add:z:0,^while/lstm_cell_103/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2╗
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0,^while/lstm_cell_103/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3╞
while/Identity_4Identity4while/lstm_cell_103/StatefulPartitionedCall:output:1,^while/lstm_cell_103/StatefulPartitionedCall*
T0*'
_output_shapes
:         @2
while/Identity_4╞
while/Identity_5Identity4while/lstm_cell_103/StatefulPartitionedCall:output:2,^while/lstm_cell_103/StatefulPartitionedCall*
T0*'
_output_shapes
:         @2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_103_1213567while_lstm_cell_103_1213567_0"<
while_lstm_cell_103_1213569while_lstm_cell_103_1213569_0"<
while_lstm_cell_103_1213571while_lstm_cell_103_1213571_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :         @:         @: : :::2Z
+while/lstm_cell_103/StatefulPartitionedCall+while/lstm_cell_103/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
а╥
┐
"__inference__wrapped_model_1212493
lstm_5_inputD
@sequential_3_lstm_5_lstm_cell_102_matmul_readvariableop_resourceF
Bsequential_3_lstm_5_lstm_cell_102_matmul_1_readvariableop_resourceE
Asequential_3_lstm_5_lstm_cell_102_biasadd_readvariableop_resourceD
@sequential_3_lstm_6_lstm_cell_103_matmul_readvariableop_resourceF
Bsequential_3_lstm_6_lstm_cell_103_matmul_1_readvariableop_resourceE
Asequential_3_lstm_6_lstm_cell_103_biasadd_readvariableop_resourceJ
Fsequential_3_time_distributed_3_dense_8_matmul_readvariableop_resourceK
Gsequential_3_time_distributed_3_dense_8_biasadd_readvariableop_resourceJ
Fsequential_3_time_distributed_4_dense_9_matmul_readvariableop_resourceK
Gsequential_3_time_distributed_4_dense_9_biasadd_readvariableop_resource
identityИв8sequential_3/lstm_5/lstm_cell_102/BiasAdd/ReadVariableOpв7sequential_3/lstm_5/lstm_cell_102/MatMul/ReadVariableOpв9sequential_3/lstm_5/lstm_cell_102/MatMul_1/ReadVariableOpвsequential_3/lstm_5/whileв8sequential_3/lstm_6/lstm_cell_103/BiasAdd/ReadVariableOpв7sequential_3/lstm_6/lstm_cell_103/MatMul/ReadVariableOpв9sequential_3/lstm_6/lstm_cell_103/MatMul_1/ReadVariableOpвsequential_3/lstm_6/whileв>sequential_3/time_distributed_3/dense_8/BiasAdd/ReadVariableOpв=sequential_3/time_distributed_3/dense_8/MatMul/ReadVariableOpв>sequential_3/time_distributed_4/dense_9/BiasAdd/ReadVariableOpв=sequential_3/time_distributed_4/dense_9/MatMul/ReadVariableOpr
sequential_3/lstm_5/ShapeShapelstm_5_input*
T0*
_output_shapes
:2
sequential_3/lstm_5/ShapeЬ
'sequential_3/lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_3/lstm_5/strided_slice/stackа
)sequential_3/lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_3/lstm_5/strided_slice/stack_1а
)sequential_3/lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_3/lstm_5/strided_slice/stack_2┌
!sequential_3/lstm_5/strided_sliceStridedSlice"sequential_3/lstm_5/Shape:output:00sequential_3/lstm_5/strided_slice/stack:output:02sequential_3/lstm_5/strided_slice/stack_1:output:02sequential_3/lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_3/lstm_5/strided_sliceЕ
sequential_3/lstm_5/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2!
sequential_3/lstm_5/zeros/mul/y╝
sequential_3/lstm_5/zeros/mulMul*sequential_3/lstm_5/strided_slice:output:0(sequential_3/lstm_5/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_3/lstm_5/zeros/mulЗ
 sequential_3/lstm_5/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2"
 sequential_3/lstm_5/zeros/Less/y╖
sequential_3/lstm_5/zeros/LessLess!sequential_3/lstm_5/zeros/mul:z:0)sequential_3/lstm_5/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
sequential_3/lstm_5/zeros/LessЛ
"sequential_3/lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2$
"sequential_3/lstm_5/zeros/packed/1╙
 sequential_3/lstm_5/zeros/packedPack*sequential_3/lstm_5/strided_slice:output:0+sequential_3/lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_3/lstm_5/zeros/packedЗ
sequential_3/lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_3/lstm_5/zeros/Const╞
sequential_3/lstm_5/zerosFill)sequential_3/lstm_5/zeros/packed:output:0(sequential_3/lstm_5/zeros/Const:output:0*
T0*(
_output_shapes
:         А2
sequential_3/lstm_5/zerosЙ
!sequential_3/lstm_5/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2#
!sequential_3/lstm_5/zeros_1/mul/y┬
sequential_3/lstm_5/zeros_1/mulMul*sequential_3/lstm_5/strided_slice:output:0*sequential_3/lstm_5/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_3/lstm_5/zeros_1/mulЛ
"sequential_3/lstm_5/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2$
"sequential_3/lstm_5/zeros_1/Less/y┐
 sequential_3/lstm_5/zeros_1/LessLess#sequential_3/lstm_5/zeros_1/mul:z:0+sequential_3/lstm_5/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_3/lstm_5/zeros_1/LessП
$sequential_3/lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2&
$sequential_3/lstm_5/zeros_1/packed/1┘
"sequential_3/lstm_5/zeros_1/packedPack*sequential_3/lstm_5/strided_slice:output:0-sequential_3/lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_3/lstm_5/zeros_1/packedЛ
!sequential_3/lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_3/lstm_5/zeros_1/Const╬
sequential_3/lstm_5/zeros_1Fill+sequential_3/lstm_5/zeros_1/packed:output:0*sequential_3/lstm_5/zeros_1/Const:output:0*
T0*(
_output_shapes
:         А2
sequential_3/lstm_5/zeros_1Э
"sequential_3/lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"sequential_3/lstm_5/transpose/perm╝
sequential_3/lstm_5/transpose	Transposelstm_5_input+sequential_3/lstm_5/transpose/perm:output:0*
T0*+
_output_shapes
:         2
sequential_3/lstm_5/transposeЛ
sequential_3/lstm_5/Shape_1Shape!sequential_3/lstm_5/transpose:y:0*
T0*
_output_shapes
:2
sequential_3/lstm_5/Shape_1а
)sequential_3/lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_3/lstm_5/strided_slice_1/stackд
+sequential_3/lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_5/strided_slice_1/stack_1д
+sequential_3/lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_5/strided_slice_1/stack_2ц
#sequential_3/lstm_5/strided_slice_1StridedSlice$sequential_3/lstm_5/Shape_1:output:02sequential_3/lstm_5/strided_slice_1/stack:output:04sequential_3/lstm_5/strided_slice_1/stack_1:output:04sequential_3/lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_3/lstm_5/strided_slice_1н
/sequential_3/lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         21
/sequential_3/lstm_5/TensorArrayV2/element_shapeВ
!sequential_3/lstm_5/TensorArrayV2TensorListReserve8sequential_3/lstm_5/TensorArrayV2/element_shape:output:0,sequential_3/lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!sequential_3/lstm_5/TensorArrayV2ч
Isequential_3/lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2K
Isequential_3/lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape╚
;sequential_3/lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_3/lstm_5/transpose:y:0Rsequential_3/lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;sequential_3/lstm_5/TensorArrayUnstack/TensorListFromTensorа
)sequential_3/lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_3/lstm_5/strided_slice_2/stackд
+sequential_3/lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_5/strided_slice_2/stack_1д
+sequential_3/lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_5/strided_slice_2/stack_2Ї
#sequential_3/lstm_5/strided_slice_2StridedSlice!sequential_3/lstm_5/transpose:y:02sequential_3/lstm_5/strided_slice_2/stack:output:04sequential_3/lstm_5/strided_slice_2/stack_1:output:04sequential_3/lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2%
#sequential_3/lstm_5/strided_slice_2Ї
7sequential_3/lstm_5/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp@sequential_3_lstm_5_lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype029
7sequential_3/lstm_5/lstm_cell_102/MatMul/ReadVariableOpА
(sequential_3/lstm_5/lstm_cell_102/MatMulMatMul,sequential_3/lstm_5/strided_slice_2:output:0?sequential_3/lstm_5/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2*
(sequential_3/lstm_5/lstm_cell_102/MatMul√
9sequential_3/lstm_5/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOpBsequential_3_lstm_5_lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02;
9sequential_3/lstm_5/lstm_cell_102/MatMul_1/ReadVariableOp№
*sequential_3/lstm_5/lstm_cell_102/MatMul_1MatMul"sequential_3/lstm_5/zeros:output:0Asequential_3/lstm_5/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2,
*sequential_3/lstm_5/lstm_cell_102/MatMul_1Ї
%sequential_3/lstm_5/lstm_cell_102/addAddV22sequential_3/lstm_5/lstm_cell_102/MatMul:product:04sequential_3/lstm_5/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:         А2'
%sequential_3/lstm_5/lstm_cell_102/addє
8sequential_3/lstm_5/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOpAsequential_3_lstm_5_lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02:
8sequential_3/lstm_5/lstm_cell_102/BiasAdd/ReadVariableOpБ
)sequential_3/lstm_5/lstm_cell_102/BiasAddBiasAdd)sequential_3/lstm_5/lstm_cell_102/add:z:0@sequential_3/lstm_5/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2+
)sequential_3/lstm_5/lstm_cell_102/BiasAddФ
'sequential_3/lstm_5/lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_3/lstm_5/lstm_cell_102/Constи
1sequential_3/lstm_5/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :23
1sequential_3/lstm_5/lstm_cell_102/split/split_dim╦
'sequential_3/lstm_5/lstm_cell_102/splitSplit:sequential_3/lstm_5/lstm_cell_102/split/split_dim:output:02sequential_3/lstm_5/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2)
'sequential_3/lstm_5/lstm_cell_102/split╞
)sequential_3/lstm_5/lstm_cell_102/SigmoidSigmoid0sequential_3/lstm_5/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:         А2+
)sequential_3/lstm_5/lstm_cell_102/Sigmoid╩
+sequential_3/lstm_5/lstm_cell_102/Sigmoid_1Sigmoid0sequential_3/lstm_5/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:         А2-
+sequential_3/lstm_5/lstm_cell_102/Sigmoid_1▀
%sequential_3/lstm_5/lstm_cell_102/mulMul/sequential_3/lstm_5/lstm_cell_102/Sigmoid_1:y:0$sequential_3/lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:         А2'
%sequential_3/lstm_5/lstm_cell_102/mul╩
+sequential_3/lstm_5/lstm_cell_102/Sigmoid_2Sigmoid0sequential_3/lstm_5/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:         А2-
+sequential_3/lstm_5/lstm_cell_102/Sigmoid_2я
'sequential_3/lstm_5/lstm_cell_102/mul_1Mul0sequential_3/lstm_5/lstm_cell_102/split:output:2/sequential_3/lstm_5/lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:         А2)
'sequential_3/lstm_5/lstm_cell_102/mul_1─
*sequential_3/lstm_5/lstm_cell_102/IdentityIdentity+sequential_3/lstm_5/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:         А2,
*sequential_3/lstm_5/lstm_cell_102/Identity└
+sequential_3/lstm_5/lstm_cell_102/IdentityN	IdentityN+sequential_3/lstm_5/lstm_cell_102/mul_1:z:00sequential_3/lstm_5/lstm_cell_102/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1212179*<
_output_shapes*
(:         А:         А2-
+sequential_3/lstm_5/lstm_cell_102/IdentityNё
'sequential_3/lstm_5/lstm_cell_102/mul_2Mul-sequential_3/lstm_5/lstm_cell_102/Sigmoid:y:04sequential_3/lstm_5/lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:         А2)
'sequential_3/lstm_5/lstm_cell_102/mul_2ц
'sequential_3/lstm_5/lstm_cell_102/add_1AddV2)sequential_3/lstm_5/lstm_cell_102/mul:z:0+sequential_3/lstm_5/lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:         А2)
'sequential_3/lstm_5/lstm_cell_102/add_1╩
+sequential_3/lstm_5/lstm_cell_102/Sigmoid_3Sigmoid0sequential_3/lstm_5/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:         А2-
+sequential_3/lstm_5/lstm_cell_102/Sigmoid_3┼
+sequential_3/lstm_5/lstm_cell_102/Sigmoid_4Sigmoid+sequential_3/lstm_5/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:         А2-
+sequential_3/lstm_5/lstm_cell_102/Sigmoid_4ъ
'sequential_3/lstm_5/lstm_cell_102/mul_3Mul+sequential_3/lstm_5/lstm_cell_102/add_1:z:0/sequential_3/lstm_5/lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:         А2)
'sequential_3/lstm_5/lstm_cell_102/mul_3╚
,sequential_3/lstm_5/lstm_cell_102/Identity_1Identity+sequential_3/lstm_5/lstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:         А2.
,sequential_3/lstm_5/lstm_cell_102/Identity_1┐
-sequential_3/lstm_5/lstm_cell_102/IdentityN_1	IdentityN+sequential_3/lstm_5/lstm_cell_102/mul_3:z:0+sequential_3/lstm_5/lstm_cell_102/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1212188*<
_output_shapes*
(:         А:         А2/
-sequential_3/lstm_5/lstm_cell_102/IdentityN_1ї
'sequential_3/lstm_5/lstm_cell_102/mul_4Mul/sequential_3/lstm_5/lstm_cell_102/Sigmoid_3:y:06sequential_3/lstm_5/lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:         А2)
'sequential_3/lstm_5/lstm_cell_102/mul_4╖
1sequential_3/lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   23
1sequential_3/lstm_5/TensorArrayV2_1/element_shapeИ
#sequential_3/lstm_5/TensorArrayV2_1TensorListReserve:sequential_3/lstm_5/TensorArrayV2_1/element_shape:output:0,sequential_3/lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_3/lstm_5/TensorArrayV2_1v
sequential_3/lstm_5/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_3/lstm_5/timeз
,sequential_3/lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2.
,sequential_3/lstm_5/while/maximum_iterationsТ
&sequential_3/lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_3/lstm_5/while/loop_counterг
sequential_3/lstm_5/whileWhile/sequential_3/lstm_5/while/loop_counter:output:05sequential_3/lstm_5/while/maximum_iterations:output:0!sequential_3/lstm_5/time:output:0,sequential_3/lstm_5/TensorArrayV2_1:handle:0"sequential_3/lstm_5/zeros:output:0$sequential_3/lstm_5/zeros_1:output:0,sequential_3/lstm_5/strided_slice_1:output:0Ksequential_3/lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_3_lstm_5_lstm_cell_102_matmul_readvariableop_resourceBsequential_3_lstm_5_lstm_cell_102_matmul_1_readvariableop_resourceAsequential_3_lstm_5_lstm_cell_102_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         А:         А: : : : : *%
_read_only_resource_inputs
	
*2
body*R(
&sequential_3_lstm_5_while_body_1212199*2
cond*R(
&sequential_3_lstm_5_while_cond_1212198*M
output_shapes<
:: : : : :         А:         А: : : : : *
parallel_iterations 2
sequential_3/lstm_5/while▌
Dsequential_3/lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   2F
Dsequential_3/lstm_5/TensorArrayV2Stack/TensorListStack/element_shape╣
6sequential_3/lstm_5/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_3/lstm_5/while:output:3Msequential_3/lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         А*
element_dtype028
6sequential_3/lstm_5/TensorArrayV2Stack/TensorListStackй
)sequential_3/lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2+
)sequential_3/lstm_5/strided_slice_3/stackд
+sequential_3/lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_3/lstm_5/strided_slice_3/stack_1д
+sequential_3/lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_5/strided_slice_3/stack_2У
#sequential_3/lstm_5/strided_slice_3StridedSlice?sequential_3/lstm_5/TensorArrayV2Stack/TensorListStack:tensor:02sequential_3/lstm_5/strided_slice_3/stack:output:04sequential_3/lstm_5/strided_slice_3/stack_1:output:04sequential_3/lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2%
#sequential_3/lstm_5/strided_slice_3б
$sequential_3/lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_3/lstm_5/transpose_1/permЎ
sequential_3/lstm_5/transpose_1	Transpose?sequential_3/lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_3/lstm_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:         А2!
sequential_3/lstm_5/transpose_1О
sequential_3/lstm_5/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_3/lstm_5/runtimeЙ
sequential_3/lstm_6/ShapeShape#sequential_3/lstm_5/transpose_1:y:0*
T0*
_output_shapes
:2
sequential_3/lstm_6/ShapeЬ
'sequential_3/lstm_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_3/lstm_6/strided_slice/stackа
)sequential_3/lstm_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_3/lstm_6/strided_slice/stack_1а
)sequential_3/lstm_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_3/lstm_6/strided_slice/stack_2┌
!sequential_3/lstm_6/strided_sliceStridedSlice"sequential_3/lstm_6/Shape:output:00sequential_3/lstm_6/strided_slice/stack:output:02sequential_3/lstm_6/strided_slice/stack_1:output:02sequential_3/lstm_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_3/lstm_6/strided_sliceД
sequential_3/lstm_6/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2!
sequential_3/lstm_6/zeros/mul/y╝
sequential_3/lstm_6/zeros/mulMul*sequential_3/lstm_6/strided_slice:output:0(sequential_3/lstm_6/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_3/lstm_6/zeros/mulЗ
 sequential_3/lstm_6/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2"
 sequential_3/lstm_6/zeros/Less/y╖
sequential_3/lstm_6/zeros/LessLess!sequential_3/lstm_6/zeros/mul:z:0)sequential_3/lstm_6/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
sequential_3/lstm_6/zeros/LessК
"sequential_3/lstm_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2$
"sequential_3/lstm_6/zeros/packed/1╙
 sequential_3/lstm_6/zeros/packedPack*sequential_3/lstm_6/strided_slice:output:0+sequential_3/lstm_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_3/lstm_6/zeros/packedЗ
sequential_3/lstm_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_3/lstm_6/zeros/Const┼
sequential_3/lstm_6/zerosFill)sequential_3/lstm_6/zeros/packed:output:0(sequential_3/lstm_6/zeros/Const:output:0*
T0*'
_output_shapes
:         @2
sequential_3/lstm_6/zerosИ
!sequential_3/lstm_6/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2#
!sequential_3/lstm_6/zeros_1/mul/y┬
sequential_3/lstm_6/zeros_1/mulMul*sequential_3/lstm_6/strided_slice:output:0*sequential_3/lstm_6/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_3/lstm_6/zeros_1/mulЛ
"sequential_3/lstm_6/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2$
"sequential_3/lstm_6/zeros_1/Less/y┐
 sequential_3/lstm_6/zeros_1/LessLess#sequential_3/lstm_6/zeros_1/mul:z:0+sequential_3/lstm_6/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_3/lstm_6/zeros_1/LessО
$sequential_3/lstm_6/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2&
$sequential_3/lstm_6/zeros_1/packed/1┘
"sequential_3/lstm_6/zeros_1/packedPack*sequential_3/lstm_6/strided_slice:output:0-sequential_3/lstm_6/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_3/lstm_6/zeros_1/packedЛ
!sequential_3/lstm_6/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_3/lstm_6/zeros_1/Const═
sequential_3/lstm_6/zeros_1Fill+sequential_3/lstm_6/zeros_1/packed:output:0*sequential_3/lstm_6/zeros_1/Const:output:0*
T0*'
_output_shapes
:         @2
sequential_3/lstm_6/zeros_1Э
"sequential_3/lstm_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"sequential_3/lstm_6/transpose/perm╘
sequential_3/lstm_6/transpose	Transpose#sequential_3/lstm_5/transpose_1:y:0+sequential_3/lstm_6/transpose/perm:output:0*
T0*,
_output_shapes
:         А2
sequential_3/lstm_6/transposeЛ
sequential_3/lstm_6/Shape_1Shape!sequential_3/lstm_6/transpose:y:0*
T0*
_output_shapes
:2
sequential_3/lstm_6/Shape_1а
)sequential_3/lstm_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_3/lstm_6/strided_slice_1/stackд
+sequential_3/lstm_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_6/strided_slice_1/stack_1д
+sequential_3/lstm_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_6/strided_slice_1/stack_2ц
#sequential_3/lstm_6/strided_slice_1StridedSlice$sequential_3/lstm_6/Shape_1:output:02sequential_3/lstm_6/strided_slice_1/stack:output:04sequential_3/lstm_6/strided_slice_1/stack_1:output:04sequential_3/lstm_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_3/lstm_6/strided_slice_1н
/sequential_3/lstm_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         21
/sequential_3/lstm_6/TensorArrayV2/element_shapeВ
!sequential_3/lstm_6/TensorArrayV2TensorListReserve8sequential_3/lstm_6/TensorArrayV2/element_shape:output:0,sequential_3/lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!sequential_3/lstm_6/TensorArrayV2ч
Isequential_3/lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   2K
Isequential_3/lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shape╚
;sequential_3/lstm_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_3/lstm_6/transpose:y:0Rsequential_3/lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;sequential_3/lstm_6/TensorArrayUnstack/TensorListFromTensorа
)sequential_3/lstm_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_3/lstm_6/strided_slice_2/stackд
+sequential_3/lstm_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_6/strided_slice_2/stack_1д
+sequential_3/lstm_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_6/strided_slice_2/stack_2ї
#sequential_3/lstm_6/strided_slice_2StridedSlice!sequential_3/lstm_6/transpose:y:02sequential_3/lstm_6/strided_slice_2/stack:output:04sequential_3/lstm_6/strided_slice_2/stack_1:output:04sequential_3/lstm_6/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2%
#sequential_3/lstm_6/strided_slice_2ї
7sequential_3/lstm_6/lstm_cell_103/MatMul/ReadVariableOpReadVariableOp@sequential_3_lstm_6_lstm_cell_103_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype029
7sequential_3/lstm_6/lstm_cell_103/MatMul/ReadVariableOpА
(sequential_3/lstm_6/lstm_cell_103/MatMulMatMul,sequential_3/lstm_6/strided_slice_2:output:0?sequential_3/lstm_6/lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2*
(sequential_3/lstm_6/lstm_cell_103/MatMul·
9sequential_3/lstm_6/lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOpBsequential_3_lstm_6_lstm_cell_103_matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02;
9sequential_3/lstm_6/lstm_cell_103/MatMul_1/ReadVariableOp№
*sequential_3/lstm_6/lstm_cell_103/MatMul_1MatMul"sequential_3/lstm_6/zeros:output:0Asequential_3/lstm_6/lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2,
*sequential_3/lstm_6/lstm_cell_103/MatMul_1Ї
%sequential_3/lstm_6/lstm_cell_103/addAddV22sequential_3/lstm_6/lstm_cell_103/MatMul:product:04sequential_3/lstm_6/lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:         А2'
%sequential_3/lstm_6/lstm_cell_103/addє
8sequential_3/lstm_6/lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOpAsequential_3_lstm_6_lstm_cell_103_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02:
8sequential_3/lstm_6/lstm_cell_103/BiasAdd/ReadVariableOpБ
)sequential_3/lstm_6/lstm_cell_103/BiasAddBiasAdd)sequential_3/lstm_6/lstm_cell_103/add:z:0@sequential_3/lstm_6/lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2+
)sequential_3/lstm_6/lstm_cell_103/BiasAddФ
'sequential_3/lstm_6/lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_3/lstm_6/lstm_cell_103/Constи
1sequential_3/lstm_6/lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :23
1sequential_3/lstm_6/lstm_cell_103/split/split_dim╟
'sequential_3/lstm_6/lstm_cell_103/splitSplit:sequential_3/lstm_6/lstm_cell_103/split/split_dim:output:02sequential_3/lstm_6/lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2)
'sequential_3/lstm_6/lstm_cell_103/split┼
)sequential_3/lstm_6/lstm_cell_103/SigmoidSigmoid0sequential_3/lstm_6/lstm_cell_103/split:output:0*
T0*'
_output_shapes
:         @2+
)sequential_3/lstm_6/lstm_cell_103/Sigmoid╔
+sequential_3/lstm_6/lstm_cell_103/Sigmoid_1Sigmoid0sequential_3/lstm_6/lstm_cell_103/split:output:1*
T0*'
_output_shapes
:         @2-
+sequential_3/lstm_6/lstm_cell_103/Sigmoid_1▐
%sequential_3/lstm_6/lstm_cell_103/mulMul/sequential_3/lstm_6/lstm_cell_103/Sigmoid_1:y:0$sequential_3/lstm_6/zeros_1:output:0*
T0*'
_output_shapes
:         @2'
%sequential_3/lstm_6/lstm_cell_103/mul╔
+sequential_3/lstm_6/lstm_cell_103/Sigmoid_2Sigmoid0sequential_3/lstm_6/lstm_cell_103/split:output:2*
T0*'
_output_shapes
:         @2-
+sequential_3/lstm_6/lstm_cell_103/Sigmoid_2ю
'sequential_3/lstm_6/lstm_cell_103/mul_1Mul0sequential_3/lstm_6/lstm_cell_103/split:output:2/sequential_3/lstm_6/lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:         @2)
'sequential_3/lstm_6/lstm_cell_103/mul_1├
*sequential_3/lstm_6/lstm_cell_103/IdentityIdentity+sequential_3/lstm_6/lstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:         @2,
*sequential_3/lstm_6/lstm_cell_103/Identity╛
+sequential_3/lstm_6/lstm_cell_103/IdentityN	IdentityN+sequential_3/lstm_6/lstm_cell_103/mul_1:z:00sequential_3/lstm_6/lstm_cell_103/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1212348*:
_output_shapes(
&:         @:         @2-
+sequential_3/lstm_6/lstm_cell_103/IdentityNЁ
'sequential_3/lstm_6/lstm_cell_103/mul_2Mul-sequential_3/lstm_6/lstm_cell_103/Sigmoid:y:04sequential_3/lstm_6/lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:         @2)
'sequential_3/lstm_6/lstm_cell_103/mul_2х
'sequential_3/lstm_6/lstm_cell_103/add_1AddV2)sequential_3/lstm_6/lstm_cell_103/mul:z:0+sequential_3/lstm_6/lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:         @2)
'sequential_3/lstm_6/lstm_cell_103/add_1╔
+sequential_3/lstm_6/lstm_cell_103/Sigmoid_3Sigmoid0sequential_3/lstm_6/lstm_cell_103/split:output:3*
T0*'
_output_shapes
:         @2-
+sequential_3/lstm_6/lstm_cell_103/Sigmoid_3─
+sequential_3/lstm_6/lstm_cell_103/Sigmoid_4Sigmoid+sequential_3/lstm_6/lstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:         @2-
+sequential_3/lstm_6/lstm_cell_103/Sigmoid_4щ
'sequential_3/lstm_6/lstm_cell_103/mul_3Mul+sequential_3/lstm_6/lstm_cell_103/add_1:z:0/sequential_3/lstm_6/lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:         @2)
'sequential_3/lstm_6/lstm_cell_103/mul_3╟
,sequential_3/lstm_6/lstm_cell_103/Identity_1Identity+sequential_3/lstm_6/lstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:         @2.
,sequential_3/lstm_6/lstm_cell_103/Identity_1╜
-sequential_3/lstm_6/lstm_cell_103/IdentityN_1	IdentityN+sequential_3/lstm_6/lstm_cell_103/mul_3:z:0+sequential_3/lstm_6/lstm_cell_103/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1212357*:
_output_shapes(
&:         @:         @2/
-sequential_3/lstm_6/lstm_cell_103/IdentityN_1Ї
'sequential_3/lstm_6/lstm_cell_103/mul_4Mul/sequential_3/lstm_6/lstm_cell_103/Sigmoid_3:y:06sequential_3/lstm_6/lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:         @2)
'sequential_3/lstm_6/lstm_cell_103/mul_4╖
1sequential_3/lstm_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   23
1sequential_3/lstm_6/TensorArrayV2_1/element_shapeИ
#sequential_3/lstm_6/TensorArrayV2_1TensorListReserve:sequential_3/lstm_6/TensorArrayV2_1/element_shape:output:0,sequential_3/lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_3/lstm_6/TensorArrayV2_1v
sequential_3/lstm_6/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_3/lstm_6/timeз
,sequential_3/lstm_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2.
,sequential_3/lstm_6/while/maximum_iterationsТ
&sequential_3/lstm_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_3/lstm_6/while/loop_counterЯ
sequential_3/lstm_6/whileWhile/sequential_3/lstm_6/while/loop_counter:output:05sequential_3/lstm_6/while/maximum_iterations:output:0!sequential_3/lstm_6/time:output:0,sequential_3/lstm_6/TensorArrayV2_1:handle:0"sequential_3/lstm_6/zeros:output:0$sequential_3/lstm_6/zeros_1:output:0,sequential_3/lstm_6/strided_slice_1:output:0Ksequential_3/lstm_6/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_3_lstm_6_lstm_cell_103_matmul_readvariableop_resourceBsequential_3_lstm_6_lstm_cell_103_matmul_1_readvariableop_resourceAsequential_3_lstm_6_lstm_cell_103_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*2
body*R(
&sequential_3_lstm_6_while_body_1212368*2
cond*R(
&sequential_3_lstm_6_while_cond_1212367*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations 2
sequential_3/lstm_6/while▌
Dsequential_3/lstm_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2F
Dsequential_3/lstm_6/TensorArrayV2Stack/TensorListStack/element_shape╕
6sequential_3/lstm_6/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_3/lstm_6/while:output:3Msequential_3/lstm_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype028
6sequential_3/lstm_6/TensorArrayV2Stack/TensorListStackй
)sequential_3/lstm_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2+
)sequential_3/lstm_6/strided_slice_3/stackд
+sequential_3/lstm_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_3/lstm_6/strided_slice_3/stack_1д
+sequential_3/lstm_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_6/strided_slice_3/stack_2Т
#sequential_3/lstm_6/strided_slice_3StridedSlice?sequential_3/lstm_6/TensorArrayV2Stack/TensorListStack:tensor:02sequential_3/lstm_6/strided_slice_3/stack:output:04sequential_3/lstm_6/strided_slice_3/stack_1:output:04sequential_3/lstm_6/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2%
#sequential_3/lstm_6/strided_slice_3б
$sequential_3/lstm_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_3/lstm_6/transpose_1/permї
sequential_3/lstm_6/transpose_1	Transpose?sequential_3/lstm_6/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_3/lstm_6/transpose_1/perm:output:0*
T0*+
_output_shapes
:         @2!
sequential_3/lstm_6/transpose_1О
sequential_3/lstm_6/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_3/lstm_6/runtimeп
-sequential_3/time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2/
-sequential_3/time_distributed_3/Reshape/shapeь
'sequential_3/time_distributed_3/ReshapeReshape#sequential_3/lstm_6/transpose_1:y:06sequential_3/time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2)
'sequential_3/time_distributed_3/ReshapeЕ
=sequential_3/time_distributed_3/dense_8/MatMul/ReadVariableOpReadVariableOpFsequential_3_time_distributed_3_dense_8_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02?
=sequential_3/time_distributed_3/dense_8/MatMul/ReadVariableOpХ
.sequential_3/time_distributed_3/dense_8/MatMulMatMul0sequential_3/time_distributed_3/Reshape:output:0Esequential_3/time_distributed_3/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @20
.sequential_3/time_distributed_3/dense_8/MatMulД
>sequential_3/time_distributed_3/dense_8/BiasAdd/ReadVariableOpReadVariableOpGsequential_3_time_distributed_3_dense_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02@
>sequential_3/time_distributed_3/dense_8/BiasAdd/ReadVariableOpб
/sequential_3/time_distributed_3/dense_8/BiasAddBiasAdd8sequential_3/time_distributed_3/dense_8/MatMul:product:0Fsequential_3/time_distributed_3/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @21
/sequential_3/time_distributed_3/dense_8/BiasAdd┘
/sequential_3/time_distributed_3/dense_8/SigmoidSigmoid8sequential_3/time_distributed_3/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:         @21
/sequential_3/time_distributed_3/dense_8/SigmoidВ
+sequential_3/time_distributed_3/dense_8/mulMul8sequential_3/time_distributed_3/dense_8/BiasAdd:output:03sequential_3/time_distributed_3/dense_8/Sigmoid:y:0*
T0*'
_output_shapes
:         @2-
+sequential_3/time_distributed_3/dense_8/mul╙
0sequential_3/time_distributed_3/dense_8/IdentityIdentity/sequential_3/time_distributed_3/dense_8/mul:z:0*
T0*'
_output_shapes
:         @22
0sequential_3/time_distributed_3/dense_8/Identity╓
1sequential_3/time_distributed_3/dense_8/IdentityN	IdentityN/sequential_3/time_distributed_3/dense_8/mul:z:08sequential_3/time_distributed_3/dense_8/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1212470*:
_output_shapes(
&:         @:         @23
1sequential_3/time_distributed_3/dense_8/IdentityN╖
/sequential_3/time_distributed_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       @   21
/sequential_3/time_distributed_3/Reshape_1/shapeН
)sequential_3/time_distributed_3/Reshape_1Reshape:sequential_3/time_distributed_3/dense_8/IdentityN:output:08sequential_3/time_distributed_3/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         @2+
)sequential_3/time_distributed_3/Reshape_1│
/sequential_3/time_distributed_3/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   21
/sequential_3/time_distributed_3/Reshape_2/shapeЄ
)sequential_3/time_distributed_3/Reshape_2Reshape#sequential_3/lstm_6/transpose_1:y:08sequential_3/time_distributed_3/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         @2+
)sequential_3/time_distributed_3/Reshape_2п
-sequential_3/time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2/
-sequential_3/time_distributed_4/Reshape/shape√
'sequential_3/time_distributed_4/ReshapeReshape2sequential_3/time_distributed_3/Reshape_1:output:06sequential_3/time_distributed_4/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2)
'sequential_3/time_distributed_4/ReshapeЕ
=sequential_3/time_distributed_4/dense_9/MatMul/ReadVariableOpReadVariableOpFsequential_3_time_distributed_4_dense_9_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02?
=sequential_3/time_distributed_4/dense_9/MatMul/ReadVariableOpХ
.sequential_3/time_distributed_4/dense_9/MatMulMatMul0sequential_3/time_distributed_4/Reshape:output:0Esequential_3/time_distributed_4/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         20
.sequential_3/time_distributed_4/dense_9/MatMulД
>sequential_3/time_distributed_4/dense_9/BiasAdd/ReadVariableOpReadVariableOpGsequential_3_time_distributed_4_dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02@
>sequential_3/time_distributed_4/dense_9/BiasAdd/ReadVariableOpб
/sequential_3/time_distributed_4/dense_9/BiasAddBiasAdd8sequential_3/time_distributed_4/dense_9/MatMul:product:0Fsequential_3/time_distributed_4/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         21
/sequential_3/time_distributed_4/dense_9/BiasAdd╖
/sequential_3/time_distributed_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          21
/sequential_3/time_distributed_4/Reshape_1/shapeЛ
)sequential_3/time_distributed_4/Reshape_1Reshape8sequential_3/time_distributed_4/dense_9/BiasAdd:output:08sequential_3/time_distributed_4/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         2+
)sequential_3/time_distributed_4/Reshape_1│
/sequential_3/time_distributed_4/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   21
/sequential_3/time_distributed_4/Reshape_2/shapeБ
)sequential_3/time_distributed_4/Reshape_2Reshape2sequential_3/time_distributed_3/Reshape_1:output:08sequential_3/time_distributed_4/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         @2+
)sequential_3/time_distributed_4/Reshape_2ж
IdentityIdentity2sequential_3/time_distributed_4/Reshape_1:output:09^sequential_3/lstm_5/lstm_cell_102/BiasAdd/ReadVariableOp8^sequential_3/lstm_5/lstm_cell_102/MatMul/ReadVariableOp:^sequential_3/lstm_5/lstm_cell_102/MatMul_1/ReadVariableOp^sequential_3/lstm_5/while9^sequential_3/lstm_6/lstm_cell_103/BiasAdd/ReadVariableOp8^sequential_3/lstm_6/lstm_cell_103/MatMul/ReadVariableOp:^sequential_3/lstm_6/lstm_cell_103/MatMul_1/ReadVariableOp^sequential_3/lstm_6/while?^sequential_3/time_distributed_3/dense_8/BiasAdd/ReadVariableOp>^sequential_3/time_distributed_3/dense_8/MatMul/ReadVariableOp?^sequential_3/time_distributed_4/dense_9/BiasAdd/ReadVariableOp>^sequential_3/time_distributed_4/dense_9/MatMul/ReadVariableOp*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:         ::::::::::2t
8sequential_3/lstm_5/lstm_cell_102/BiasAdd/ReadVariableOp8sequential_3/lstm_5/lstm_cell_102/BiasAdd/ReadVariableOp2r
7sequential_3/lstm_5/lstm_cell_102/MatMul/ReadVariableOp7sequential_3/lstm_5/lstm_cell_102/MatMul/ReadVariableOp2v
9sequential_3/lstm_5/lstm_cell_102/MatMul_1/ReadVariableOp9sequential_3/lstm_5/lstm_cell_102/MatMul_1/ReadVariableOp26
sequential_3/lstm_5/whilesequential_3/lstm_5/while2t
8sequential_3/lstm_6/lstm_cell_103/BiasAdd/ReadVariableOp8sequential_3/lstm_6/lstm_cell_103/BiasAdd/ReadVariableOp2r
7sequential_3/lstm_6/lstm_cell_103/MatMul/ReadVariableOp7sequential_3/lstm_6/lstm_cell_103/MatMul/ReadVariableOp2v
9sequential_3/lstm_6/lstm_cell_103/MatMul_1/ReadVariableOp9sequential_3/lstm_6/lstm_cell_103/MatMul_1/ReadVariableOp26
sequential_3/lstm_6/whilesequential_3/lstm_6/while2А
>sequential_3/time_distributed_3/dense_8/BiasAdd/ReadVariableOp>sequential_3/time_distributed_3/dense_8/BiasAdd/ReadVariableOp2~
=sequential_3/time_distributed_3/dense_8/MatMul/ReadVariableOp=sequential_3/time_distributed_3/dense_8/MatMul/ReadVariableOp2А
>sequential_3/time_distributed_4/dense_9/BiasAdd/ReadVariableOp>sequential_3/time_distributed_4/dense_9/BiasAdd/ReadVariableOp2~
=sequential_3/time_distributed_4/dense_9/MatMul/ReadVariableOp=sequential_3/time_distributed_4/dense_9/MatMul/ReadVariableOp:Y U
+
_output_shapes
:         
&
_user_specified_namelstm_5_input
┤
╚
while_cond_1215927
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1215927___redundant_placeholder05
1while_while_cond_1215927___redundant_placeholder15
1while_while_cond_1215927___redundant_placeholder25
1while_while_cond_1215927___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :         А:         А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
Ш
║
O__inference_time_distributed_4_layer_call_and_return_conditional_losses_1213994

inputs
dense_9_1213984
dense_9_1213986
identityИвdense_9/StatefulPartitionedCallD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         @2	
ReshapeЬ
dense_9/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_9_1213984dense_9_1213986*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_12139012!
dense_9/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2и
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shapeд
	Reshape_1Reshape(dense_9/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  2
	Reshape_1Х
IdentityIdentityReshape_1:output:0 ^dense_9/StatefulPartitionedCall*
T0*4
_output_shapes"
 :                  2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:                  @::2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:\ X
4
_output_shapes"
 :                  @
 
_user_specified_nameinputs
╔
╧
/__inference_lstm_cell_102_layer_call_fn_1217678

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2ИвStatefulPartitionedCall╚
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         А:         А:         А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_12126192
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

IdentityУ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

Identity_1У

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*Z
_input_shapesI
G:         :         А:         А:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:RN
(
_output_shapes
:         А
"
_user_specified_name
states/0:RN
(
_output_shapes
:         А
"
_user_specified_name
states/1
└M
И
while_body_1214457
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_08
4while_lstm_cell_103_matmul_readvariableop_resource_0:
6while_lstm_cell_103_matmul_1_readvariableop_resource_09
5while_lstm_cell_103_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor6
2while_lstm_cell_103_matmul_readvariableop_resource8
4while_lstm_cell_103_matmul_1_readvariableop_resource7
3while_lstm_cell_103_biasadd_readvariableop_resourceИв*while/lstm_cell_103/BiasAdd/ReadVariableOpв)while/lstm_cell_103/MatMul/ReadVariableOpв+while/lstm_cell_103/MatMul_1/ReadVariableOp├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╘
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem═
)while/lstm_cell_103/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_103_matmul_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02+
)while/lstm_cell_103/MatMul/ReadVariableOp┌
while/lstm_cell_103/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_103/MatMul╥
+while/lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_103_matmul_1_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02-
+while/lstm_cell_103/MatMul_1/ReadVariableOp├
while/lstm_cell_103/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_103/MatMul_1╝
while/lstm_cell_103/addAddV2$while/lstm_cell_103/MatMul:product:0&while/lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_103/add╦
*while/lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_103_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02,
*while/lstm_cell_103/BiasAdd/ReadVariableOp╔
while/lstm_cell_103/BiasAddBiasAddwhile/lstm_cell_103/add:z:02while/lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_103/BiasAddx
while/lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_103/ConstМ
#while/lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_103/split/split_dimП
while/lstm_cell_103/splitSplit,while/lstm_cell_103/split/split_dim:output:0$while/lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
while/lstm_cell_103/splitЫ
while/lstm_cell_103/SigmoidSigmoid"while/lstm_cell_103/split:output:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/SigmoidЯ
while/lstm_cell_103/Sigmoid_1Sigmoid"while/lstm_cell_103/split:output:1*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/Sigmoid_1г
while/lstm_cell_103/mulMul!while/lstm_cell_103/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/mulЯ
while/lstm_cell_103/Sigmoid_2Sigmoid"while/lstm_cell_103/split:output:2*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/Sigmoid_2╢
while/lstm_cell_103/mul_1Mul"while/lstm_cell_103/split:output:2!while/lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/mul_1Щ
while/lstm_cell_103/IdentityIdentitywhile/lstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/IdentityЖ
while/lstm_cell_103/IdentityN	IdentityNwhile/lstm_cell_103/mul_1:z:0"while/lstm_cell_103/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1214500*:
_output_shapes(
&:         @:         @2
while/lstm_cell_103/IdentityN╕
while/lstm_cell_103/mul_2Mulwhile/lstm_cell_103/Sigmoid:y:0&while/lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/mul_2н
while/lstm_cell_103/add_1AddV2while/lstm_cell_103/mul:z:0while/lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/add_1Я
while/lstm_cell_103/Sigmoid_3Sigmoid"while/lstm_cell_103/split:output:3*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/Sigmoid_3Ъ
while/lstm_cell_103/Sigmoid_4Sigmoidwhile/lstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/Sigmoid_4▒
while/lstm_cell_103/mul_3Mulwhile/lstm_cell_103/add_1:z:0!while/lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/mul_3Э
while/lstm_cell_103/Identity_1Identitywhile/lstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:         @2 
while/lstm_cell_103/Identity_1Е
while/lstm_cell_103/IdentityN_1	IdentityNwhile/lstm_cell_103/mul_3:z:0while/lstm_cell_103/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1214509*:
_output_shapes(
&:         @:         @2!
while/lstm_cell_103/IdentityN_1╝
while/lstm_cell_103/mul_4Mul!while/lstm_cell_103/Sigmoid_3:y:0(while/lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/mul_4с
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_103/mul_4:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1х
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity°
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ч
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2Ф
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3И
while/Identity_4Identitywhile/lstm_cell_103/mul_4:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:         @2
while/Identity_4И
while/Identity_5Identitywhile/lstm_cell_103/add_1:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:         @2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_103_biasadd_readvariableop_resource5while_lstm_cell_103_biasadd_readvariableop_resource_0"n
4while_lstm_cell_103_matmul_1_readvariableop_resource6while_lstm_cell_103_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_103_matmul_readvariableop_resource4while_lstm_cell_103_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :         @:         @: : :::2X
*while/lstm_cell_103/BiasAdd/ReadVariableOp*while/lstm_cell_103/BiasAdd/ReadVariableOp2V
)while/lstm_cell_103/MatMul/ReadVariableOp)while/lstm_cell_103/MatMul/ReadVariableOp2Z
+while/lstm_cell_103/MatMul_1/ReadVariableOp+while/lstm_cell_103/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
Й	
Б
.__inference_sequential_3_layer_call_fn_1214964
lstm_5_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identityИвStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCalllstm_5_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_sequential_3_layer_call_and_return_conditional_losses_12149412
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:         ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:         
&
_user_specified_namelstm_5_input
░
╚
while_cond_1213674
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1213674___redundant_placeholder05
1while_while_cond_1213674___redundant_placeholder15
1while_while_cond_1213674___redundant_placeholder25
1while_while_cond_1213674___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :         @:         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
┌M
И
while_body_1216296
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_08
4while_lstm_cell_102_matmul_readvariableop_resource_0:
6while_lstm_cell_102_matmul_1_readvariableop_resource_09
5while_lstm_cell_102_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor6
2while_lstm_cell_102_matmul_readvariableop_resource8
4while_lstm_cell_102_matmul_1_readvariableop_resource7
3while_lstm_cell_102_biasadd_readvariableop_resourceИв*while/lstm_cell_102/BiasAdd/ReadVariableOpв)while/lstm_cell_102/MatMul/ReadVariableOpв+while/lstm_cell_102/MatMul_1/ReadVariableOp├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem╠
)while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02+
)while/lstm_cell_102/MatMul/ReadVariableOp┌
while/lstm_cell_102/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/MatMul╙
+while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02-
+while/lstm_cell_102/MatMul_1/ReadVariableOp├
while/lstm_cell_102/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/MatMul_1╝
while/lstm_cell_102/addAddV2$while/lstm_cell_102/MatMul:product:0&while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/add╦
*while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02,
*while/lstm_cell_102/BiasAdd/ReadVariableOp╔
while/lstm_cell_102/BiasAddBiasAddwhile/lstm_cell_102/add:z:02while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/BiasAddx
while/lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_102/ConstМ
#while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_102/split/split_dimУ
while/lstm_cell_102/splitSplit,while/lstm_cell_102/split/split_dim:output:0$while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
while/lstm_cell_102/splitЬ
while/lstm_cell_102/SigmoidSigmoid"while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/Sigmoidа
while/lstm_cell_102/Sigmoid_1Sigmoid"while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/Sigmoid_1д
while/lstm_cell_102/mulMul!while/lstm_cell_102/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/mulа
while/lstm_cell_102/Sigmoid_2Sigmoid"while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/Sigmoid_2╖
while/lstm_cell_102/mul_1Mul"while/lstm_cell_102/split:output:2!while/lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/mul_1Ъ
while/lstm_cell_102/IdentityIdentitywhile/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/IdentityИ
while/lstm_cell_102/IdentityN	IdentityNwhile/lstm_cell_102/mul_1:z:0"while/lstm_cell_102/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1216339*<
_output_shapes*
(:         А:         А2
while/lstm_cell_102/IdentityN╣
while/lstm_cell_102/mul_2Mulwhile/lstm_cell_102/Sigmoid:y:0&while/lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/mul_2о
while/lstm_cell_102/add_1AddV2while/lstm_cell_102/mul:z:0while/lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/add_1а
while/lstm_cell_102/Sigmoid_3Sigmoid"while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/Sigmoid_3Ы
while/lstm_cell_102/Sigmoid_4Sigmoidwhile/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/Sigmoid_4▓
while/lstm_cell_102/mul_3Mulwhile/lstm_cell_102/add_1:z:0!while/lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/mul_3Ю
while/lstm_cell_102/Identity_1Identitywhile/lstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:         А2 
while/lstm_cell_102/Identity_1З
while/lstm_cell_102/IdentityN_1	IdentityNwhile/lstm_cell_102/mul_3:z:0while/lstm_cell_102/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1216348*<
_output_shapes*
(:         А:         А2!
while/lstm_cell_102/IdentityN_1╜
while/lstm_cell_102/mul_4Mul!while/lstm_cell_102/Sigmoid_3:y:0(while/lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/mul_4с
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_102/mul_4:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1х
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity°
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ч
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2Ф
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Й
while/Identity_4Identitywhile/lstm_cell_102/mul_4:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:         А2
while/Identity_4Й
while/Identity_5Identitywhile/lstm_cell_102/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:         А2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_102_biasadd_readvariableop_resource5while_lstm_cell_102_biasadd_readvariableop_resource_0"n
4while_lstm_cell_102_matmul_1_readvariableop_resource6while_lstm_cell_102_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_102_matmul_readvariableop_resource4while_lstm_cell_102_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :         А:         А: : :::2X
*while/lstm_cell_102/BiasAdd/ReadVariableOp*while/lstm_cell_102/BiasAdd/ReadVariableOp2V
)while/lstm_cell_102/MatMul/ReadVariableOp)while/lstm_cell_102/MatMul/ReadVariableOp2Z
+while/lstm_cell_102/MatMul_1/ReadVariableOp+while/lstm_cell_102/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
з
И
O__inference_time_distributed_3_layer_call_and_return_conditional_losses_1214774

inputs*
&dense_8_matmul_readvariableop_resource+
'dense_8_biasadd_readvariableop_resource
identityИвdense_8/BiasAdd/ReadVariableOpвdense_8/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         @2	
Reshapeе
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_8/MatMul/ReadVariableOpХ
dense_8/MatMulMatMulReshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_8/MatMulд
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_8/BiasAdd/ReadVariableOpб
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_8/BiasAddy
dense_8/SigmoidSigmoiddense_8/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_8/SigmoidВ
dense_8/mulMuldense_8/BiasAdd:output:0dense_8/Sigmoid:y:0*
T0*'
_output_shapes
:         @2
dense_8/muls
dense_8/IdentityIdentitydense_8/mul:z:0*
T0*'
_output_shapes
:         @2
dense_8/Identity╓
dense_8/IdentityN	IdentityNdense_8/mul:z:0dense_8/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1214765*:
_output_shapes(
&:         @:         @2
dense_8/IdentityNw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       @   2
Reshape_1/shapeН
	Reshape_1Reshapedense_8/IdentityN:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         @2
	Reshape_1л
IdentityIdentityReshape_1:output:0^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp*
T0*+
_output_shapes
:         @2

Identity"
identityIdentity:output:0*2
_input_shapes!
:         @::2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
Н
М
(__inference_lstm_6_layer_call_fn_1216954

inputs
unknown
	unknown_0
	unknown_1
identityИвStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_6_layer_call_and_return_conditional_losses_12147252
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:         @2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         А:::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         А
 
_user_specified_nameinputs
ЭW
╡
 __inference__traced_save_1217988
file_prefix(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop8
4savev2_lstm_5_lstm_cell_5_kernel_read_readvariableopB
>savev2_lstm_5_lstm_cell_5_recurrent_kernel_read_readvariableop6
2savev2_lstm_5_lstm_cell_5_bias_read_readvariableop8
4savev2_lstm_6_lstm_cell_6_kernel_read_readvariableopB
>savev2_lstm_6_lstm_cell_6_recurrent_kernel_read_readvariableop6
2savev2_lstm_6_lstm_cell_6_bias_read_readvariableop8
4savev2_time_distributed_3_kernel_read_readvariableop6
2savev2_time_distributed_3_bias_read_readvariableop8
4savev2_time_distributed_4_kernel_read_readvariableop6
2savev2_time_distributed_4_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop?
;savev2_adam_lstm_5_lstm_cell_5_kernel_m_read_readvariableopI
Esavev2_adam_lstm_5_lstm_cell_5_recurrent_kernel_m_read_readvariableop=
9savev2_adam_lstm_5_lstm_cell_5_bias_m_read_readvariableop?
;savev2_adam_lstm_6_lstm_cell_6_kernel_m_read_readvariableopI
Esavev2_adam_lstm_6_lstm_cell_6_recurrent_kernel_m_read_readvariableop=
9savev2_adam_lstm_6_lstm_cell_6_bias_m_read_readvariableop?
;savev2_adam_time_distributed_3_kernel_m_read_readvariableop=
9savev2_adam_time_distributed_3_bias_m_read_readvariableop?
;savev2_adam_time_distributed_4_kernel_m_read_readvariableop=
9savev2_adam_time_distributed_4_bias_m_read_readvariableop?
;savev2_adam_lstm_5_lstm_cell_5_kernel_v_read_readvariableopI
Esavev2_adam_lstm_5_lstm_cell_5_recurrent_kernel_v_read_readvariableop=
9savev2_adam_lstm_5_lstm_cell_5_bias_v_read_readvariableop?
;savev2_adam_lstm_6_lstm_cell_6_kernel_v_read_readvariableopI
Esavev2_adam_lstm_6_lstm_cell_6_recurrent_kernel_v_read_readvariableop=
9savev2_adam_lstm_6_lstm_cell_6_bias_v_read_readvariableop?
;savev2_adam_time_distributed_3_kernel_v_read_readvariableop=
9savev2_adam_time_distributed_3_bias_v_read_readvariableop?
;savev2_adam_time_distributed_4_kernel_v_read_readvariableop=
9savev2_adam_time_distributed_4_bias_v_read_readvariableop
savev2_const

identity_1ИвMergeV2CheckpointsП
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1Л
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardж
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameк
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:**
dtype0*╝
value▓Bп*B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names▄
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:**
dtype0*g
value^B\*B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesЗ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop4savev2_lstm_5_lstm_cell_5_kernel_read_readvariableop>savev2_lstm_5_lstm_cell_5_recurrent_kernel_read_readvariableop2savev2_lstm_5_lstm_cell_5_bias_read_readvariableop4savev2_lstm_6_lstm_cell_6_kernel_read_readvariableop>savev2_lstm_6_lstm_cell_6_recurrent_kernel_read_readvariableop2savev2_lstm_6_lstm_cell_6_bias_read_readvariableop4savev2_time_distributed_3_kernel_read_readvariableop2savev2_time_distributed_3_bias_read_readvariableop4savev2_time_distributed_4_kernel_read_readvariableop2savev2_time_distributed_4_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop;savev2_adam_lstm_5_lstm_cell_5_kernel_m_read_readvariableopEsavev2_adam_lstm_5_lstm_cell_5_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_5_lstm_cell_5_bias_m_read_readvariableop;savev2_adam_lstm_6_lstm_cell_6_kernel_m_read_readvariableopEsavev2_adam_lstm_6_lstm_cell_6_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_6_lstm_cell_6_bias_m_read_readvariableop;savev2_adam_time_distributed_3_kernel_m_read_readvariableop9savev2_adam_time_distributed_3_bias_m_read_readvariableop;savev2_adam_time_distributed_4_kernel_m_read_readvariableop9savev2_adam_time_distributed_4_bias_m_read_readvariableop;savev2_adam_lstm_5_lstm_cell_5_kernel_v_read_readvariableopEsavev2_adam_lstm_5_lstm_cell_5_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_5_lstm_cell_5_bias_v_read_readvariableop;savev2_adam_lstm_6_lstm_cell_6_kernel_v_read_readvariableopEsavev2_adam_lstm_6_lstm_cell_6_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_6_lstm_cell_6_bias_v_read_readvariableop;savev2_adam_time_distributed_3_kernel_v_read_readvariableop9savev2_adam_time_distributed_3_bias_v_read_readvariableop;savev2_adam_time_distributed_4_kernel_v_read_readvariableop9savev2_adam_time_distributed_4_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *8
dtypes.
,2*	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesб
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*├
_input_shapes▒
о: : : : : : :	А:
АА:А:
АА:	@А:А:@@:@:@:: : : : : : :	А:
АА:А:
АА:	@А:А:@@:@:@::	А:
АА:А:
АА:	@А:А:@@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:&	"
 
_output_shapes
:
АА:%
!

_output_shapes
:	@А:!

_output_shapes	
:А:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:%!

_output_shapes
:	@А:!

_output_shapes	
:А:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::% !

_output_shapes
:	А:&!"
 
_output_shapes
:
АА:!"

_output_shapes	
:А:&#"
 
_output_shapes
:
АА:%$!

_output_shapes
:	@А:!%

_output_shapes	
:А:$& 

_output_shapes

:@@: '

_output_shapes
:@:$( 

_output_shapes

:@: )

_output_shapes
::*

_output_shapes
: 
╔
╧
/__inference_lstm_cell_102_layer_call_fn_1217661

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2ИвStatefulPartitionedCall╚
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         А:         А:         А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_12125762
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

IdentityУ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

Identity_1У

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*Z
_input_shapesI
G:         :         А:         А:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:RN
(
_output_shapes
:         А
"
_user_specified_name
states/0:RN
(
_output_shapes
:         А
"
_user_specified_name
states/1
└M
И
while_body_1217032
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_08
4while_lstm_cell_103_matmul_readvariableop_resource_0:
6while_lstm_cell_103_matmul_1_readvariableop_resource_09
5while_lstm_cell_103_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor6
2while_lstm_cell_103_matmul_readvariableop_resource8
4while_lstm_cell_103_matmul_1_readvariableop_resource7
3while_lstm_cell_103_biasadd_readvariableop_resourceИв*while/lstm_cell_103/BiasAdd/ReadVariableOpв)while/lstm_cell_103/MatMul/ReadVariableOpв+while/lstm_cell_103/MatMul_1/ReadVariableOp├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╘
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem═
)while/lstm_cell_103/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_103_matmul_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02+
)while/lstm_cell_103/MatMul/ReadVariableOp┌
while/lstm_cell_103/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_103/MatMul╥
+while/lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_103_matmul_1_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02-
+while/lstm_cell_103/MatMul_1/ReadVariableOp├
while/lstm_cell_103/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_103/MatMul_1╝
while/lstm_cell_103/addAddV2$while/lstm_cell_103/MatMul:product:0&while/lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_103/add╦
*while/lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_103_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02,
*while/lstm_cell_103/BiasAdd/ReadVariableOp╔
while/lstm_cell_103/BiasAddBiasAddwhile/lstm_cell_103/add:z:02while/lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_103/BiasAddx
while/lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_103/ConstМ
#while/lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_103/split/split_dimП
while/lstm_cell_103/splitSplit,while/lstm_cell_103/split/split_dim:output:0$while/lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
while/lstm_cell_103/splitЫ
while/lstm_cell_103/SigmoidSigmoid"while/lstm_cell_103/split:output:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/SigmoidЯ
while/lstm_cell_103/Sigmoid_1Sigmoid"while/lstm_cell_103/split:output:1*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/Sigmoid_1г
while/lstm_cell_103/mulMul!while/lstm_cell_103/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/mulЯ
while/lstm_cell_103/Sigmoid_2Sigmoid"while/lstm_cell_103/split:output:2*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/Sigmoid_2╢
while/lstm_cell_103/mul_1Mul"while/lstm_cell_103/split:output:2!while/lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/mul_1Щ
while/lstm_cell_103/IdentityIdentitywhile/lstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/IdentityЖ
while/lstm_cell_103/IdentityN	IdentityNwhile/lstm_cell_103/mul_1:z:0"while/lstm_cell_103/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1217075*:
_output_shapes(
&:         @:         @2
while/lstm_cell_103/IdentityN╕
while/lstm_cell_103/mul_2Mulwhile/lstm_cell_103/Sigmoid:y:0&while/lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/mul_2н
while/lstm_cell_103/add_1AddV2while/lstm_cell_103/mul:z:0while/lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/add_1Я
while/lstm_cell_103/Sigmoid_3Sigmoid"while/lstm_cell_103/split:output:3*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/Sigmoid_3Ъ
while/lstm_cell_103/Sigmoid_4Sigmoidwhile/lstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/Sigmoid_4▒
while/lstm_cell_103/mul_3Mulwhile/lstm_cell_103/add_1:z:0!while/lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/mul_3Э
while/lstm_cell_103/Identity_1Identitywhile/lstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:         @2 
while/lstm_cell_103/Identity_1Е
while/lstm_cell_103/IdentityN_1	IdentityNwhile/lstm_cell_103/mul_3:z:0while/lstm_cell_103/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1217084*:
_output_shapes(
&:         @:         @2!
while/lstm_cell_103/IdentityN_1╝
while/lstm_cell_103/mul_4Mul!while/lstm_cell_103/Sigmoid_3:y:0(while/lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/mul_4с
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_103/mul_4:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1х
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity°
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ч
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2Ф
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3И
while/Identity_4Identitywhile/lstm_cell_103/mul_4:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:         @2
while/Identity_4И
while/Identity_5Identitywhile/lstm_cell_103/add_1:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:         @2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_103_biasadd_readvariableop_resource5while_lstm_cell_103_biasadd_readvariableop_resource_0"n
4while_lstm_cell_103_matmul_1_readvariableop_resource6while_lstm_cell_103_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_103_matmul_readvariableop_resource4while_lstm_cell_103_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :         @:         @: : :::2X
*while/lstm_cell_103/BiasAdd/ReadVariableOp*while/lstm_cell_103/BiasAdd/ReadVariableOp2V
)while/lstm_cell_103/MatMul/ReadVariableOp)while/lstm_cell_103/MatMul/ReadVariableOp2Z
+while/lstm_cell_103/MatMul_1/ReadVariableOp+while/lstm_cell_103/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
╬"
▀
J__inference_lstm_cell_103_layer_call_and_return_conditional_losses_1213206

inputs

states
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource

identity_2

identity_3

identity_4ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim┐
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         @2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         @2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         @2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:         @2
	Sigmoid_2f
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*'
_output_shapes
:         @2
mul_1]
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:         @2

Identity╢
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1213187*:
_output_shapes(
&:         @:         @2
	IdentityNh
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*'
_output_shapes
:         @2
mul_2]
add_1AddV2mul:z:0	mul_2:z:0*
T0*'
_output_shapes
:         @2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:         @2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         @2
	Sigmoid_4a
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*'
_output_shapes
:         @2
mul_3a

Identity_1Identity	mul_3:z:0*
T0*'
_output_shapes
:         @2

Identity_1╡
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1213196*:
_output_shapes(
&:         @:         @2
IdentityN_1l
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*'
_output_shapes
:         @2
mul_4м

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity_2м

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity_3м

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*Y
_input_shapesH
F:         А:         @:         @:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs:OK
'
_output_shapes
:         @
 
_user_specified_namestates:OK
'
_output_shapes
:         @
 
_user_specified_namestates
з
И
O__inference_time_distributed_3_layer_call_and_return_conditional_losses_1214794

inputs*
&dense_8_matmul_readvariableop_resource+
'dense_8_biasadd_readvariableop_resource
identityИвdense_8/BiasAdd/ReadVariableOpвdense_8/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         @2	
Reshapeе
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_8/MatMul/ReadVariableOpХ
dense_8/MatMulMatMulReshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_8/MatMulд
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_8/BiasAdd/ReadVariableOpб
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_8/BiasAddy
dense_8/SigmoidSigmoiddense_8/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_8/SigmoidВ
dense_8/mulMuldense_8/BiasAdd:output:0dense_8/Sigmoid:y:0*
T0*'
_output_shapes
:         @2
dense_8/muls
dense_8/IdentityIdentitydense_8/mul:z:0*
T0*'
_output_shapes
:         @2
dense_8/Identity╓
dense_8/IdentityN	IdentityNdense_8/mul:z:0dense_8/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1214785*:
_output_shapes(
&:         @:         @2
dense_8/IdentityNw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       @   2
Reshape_1/shapeН
	Reshape_1Reshapedense_8/IdentityN:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         @2
	Reshape_1л
IdentityIdentityReshape_1:output:0^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp*
T0*+
_output_shapes
:         @2

Identity"
identityIdentity:output:0*2
_input_shapes!
:         @::2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
 D
у
C__inference_lstm_6_layer_call_and_return_conditional_losses_1213744

inputs
lstm_cell_103_1213662
lstm_cell_103_1213664
lstm_cell_103_1213666
identityИв%lstm_cell_103/StatefulPartitionedCallвwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         @2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permД
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  А2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2¤
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_2з
%lstm_cell_103/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_103_1213662lstm_cell_103_1213664lstm_cell_103_1213666*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         @:         @:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_103_layer_call_and_return_conditional_losses_12132492'
%lstm_cell_103/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
TensorArrayV2_1/element_shape╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterл
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_103_1213662lstm_cell_103_1213664lstm_cell_103_1213666*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1213675*
condR
while_cond_1213674*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  @*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permо
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  @2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeа
IdentityIdentitytranspose_1:y:0&^lstm_cell_103/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :                  @2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:                  А:::2N
%lstm_cell_103/StatefulPartitionedCall%lstm_cell_103/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs
Г

╘
lstm_6_while_cond_1215674*
&lstm_6_while_lstm_6_while_loop_counter0
,lstm_6_while_lstm_6_while_maximum_iterations
lstm_6_while_placeholder
lstm_6_while_placeholder_1
lstm_6_while_placeholder_2
lstm_6_while_placeholder_3,
(lstm_6_while_less_lstm_6_strided_slice_1C
?lstm_6_while_lstm_6_while_cond_1215674___redundant_placeholder0C
?lstm_6_while_lstm_6_while_cond_1215674___redundant_placeholder1C
?lstm_6_while_lstm_6_while_cond_1215674___redundant_placeholder2C
?lstm_6_while_lstm_6_while_cond_1215674___redundant_placeholder3
lstm_6_while_identity
У
lstm_6/while/LessLesslstm_6_while_placeholder(lstm_6_while_less_lstm_6_strided_slice_1*
T0*
_output_shapes
: 2
lstm_6/while/Lessr
lstm_6/while/IdentityIdentitylstm_6/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_6/while/Identity"7
lstm_6_while_identitylstm_6/while/Identity:output:0*S
_input_shapesB
@: : : : :         @:         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
░
╚
while_cond_1214456
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1214456___redundant_placeholder05
1while_while_cond_1214456___redundant_placeholder15
1while_while_cond_1214456___redundant_placeholder25
1while_while_cond_1214456___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :         @:         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
└M
И
while_body_1216837
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_08
4while_lstm_cell_103_matmul_readvariableop_resource_0:
6while_lstm_cell_103_matmul_1_readvariableop_resource_09
5while_lstm_cell_103_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor6
2while_lstm_cell_103_matmul_readvariableop_resource8
4while_lstm_cell_103_matmul_1_readvariableop_resource7
3while_lstm_cell_103_biasadd_readvariableop_resourceИв*while/lstm_cell_103/BiasAdd/ReadVariableOpв)while/lstm_cell_103/MatMul/ReadVariableOpв+while/lstm_cell_103/MatMul_1/ReadVariableOp├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╘
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem═
)while/lstm_cell_103/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_103_matmul_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02+
)while/lstm_cell_103/MatMul/ReadVariableOp┌
while/lstm_cell_103/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_103/MatMul╥
+while/lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_103_matmul_1_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02-
+while/lstm_cell_103/MatMul_1/ReadVariableOp├
while/lstm_cell_103/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_103/MatMul_1╝
while/lstm_cell_103/addAddV2$while/lstm_cell_103/MatMul:product:0&while/lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_103/add╦
*while/lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_103_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02,
*while/lstm_cell_103/BiasAdd/ReadVariableOp╔
while/lstm_cell_103/BiasAddBiasAddwhile/lstm_cell_103/add:z:02while/lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_103/BiasAddx
while/lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_103/ConstМ
#while/lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_103/split/split_dimП
while/lstm_cell_103/splitSplit,while/lstm_cell_103/split/split_dim:output:0$while/lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
while/lstm_cell_103/splitЫ
while/lstm_cell_103/SigmoidSigmoid"while/lstm_cell_103/split:output:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/SigmoidЯ
while/lstm_cell_103/Sigmoid_1Sigmoid"while/lstm_cell_103/split:output:1*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/Sigmoid_1г
while/lstm_cell_103/mulMul!while/lstm_cell_103/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/mulЯ
while/lstm_cell_103/Sigmoid_2Sigmoid"while/lstm_cell_103/split:output:2*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/Sigmoid_2╢
while/lstm_cell_103/mul_1Mul"while/lstm_cell_103/split:output:2!while/lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/mul_1Щ
while/lstm_cell_103/IdentityIdentitywhile/lstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/IdentityЖ
while/lstm_cell_103/IdentityN	IdentityNwhile/lstm_cell_103/mul_1:z:0"while/lstm_cell_103/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1216880*:
_output_shapes(
&:         @:         @2
while/lstm_cell_103/IdentityN╕
while/lstm_cell_103/mul_2Mulwhile/lstm_cell_103/Sigmoid:y:0&while/lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/mul_2н
while/lstm_cell_103/add_1AddV2while/lstm_cell_103/mul:z:0while/lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/add_1Я
while/lstm_cell_103/Sigmoid_3Sigmoid"while/lstm_cell_103/split:output:3*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/Sigmoid_3Ъ
while/lstm_cell_103/Sigmoid_4Sigmoidwhile/lstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/Sigmoid_4▒
while/lstm_cell_103/mul_3Mulwhile/lstm_cell_103/add_1:z:0!while/lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/mul_3Э
while/lstm_cell_103/Identity_1Identitywhile/lstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:         @2 
while/lstm_cell_103/Identity_1Е
while/lstm_cell_103/IdentityN_1	IdentityNwhile/lstm_cell_103/mul_3:z:0while/lstm_cell_103/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1216889*:
_output_shapes(
&:         @:         @2!
while/lstm_cell_103/IdentityN_1╝
while/lstm_cell_103/mul_4Mul!while/lstm_cell_103/Sigmoid_3:y:0(while/lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/mul_4с
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_103/mul_4:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1х
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity°
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ч
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2Ф
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3И
while/Identity_4Identitywhile/lstm_cell_103/mul_4:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:         @2
while/Identity_4И
while/Identity_5Identitywhile/lstm_cell_103/add_1:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:         @2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_103_biasadd_readvariableop_resource5while_lstm_cell_103_biasadd_readvariableop_resource_0"n
4while_lstm_cell_103_matmul_1_readvariableop_resource6while_lstm_cell_103_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_103_matmul_readvariableop_resource4while_lstm_cell_103_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :         @:         @: : :::2X
*while/lstm_cell_103/BiasAdd/ReadVariableOp*while/lstm_cell_103/BiasAdd/ReadVariableOp2V
)while/lstm_cell_103/MatMul/ReadVariableOp)while/lstm_cell_103/MatMul/ReadVariableOp2Z
+while/lstm_cell_103/MatMul_1/ReadVariableOp+while/lstm_cell_103/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
з
Й
4__inference_time_distributed_4_layer_call_fn_1217512

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_time_distributed_4_layer_call_and_return_conditional_losses_12139942
StatefulPartitionedCallЫ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :                  2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:                  @::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :                  @
 
_user_specified_nameinputs
Н
М
(__inference_lstm_5_layer_call_fn_1216207

inputs
unknown
	unknown_0
	unknown_1
identityИвStatefulPartitionedCallЕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_5_layer_call_and_return_conditional_losses_12141772
StatefulPartitionedCallУ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:         А2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         :::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
░
╚
while_cond_1217031
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1217031___redundant_placeholder05
1while_while_cond_1217031___redundant_placeholder15
1while_while_cond_1217031___redundant_placeholder25
1while_while_cond_1217031___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :         @:         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
░
╚
while_cond_1216663
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1216663___redundant_placeholder05
1while_while_cond_1216663___redundant_placeholder15
1while_while_cond_1216663___redundant_placeholder25
1while_while_cond_1216663___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :         @:         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
яn
И
&sequential_3_lstm_6_while_body_1212368D
@sequential_3_lstm_6_while_sequential_3_lstm_6_while_loop_counterJ
Fsequential_3_lstm_6_while_sequential_3_lstm_6_while_maximum_iterations)
%sequential_3_lstm_6_while_placeholder+
'sequential_3_lstm_6_while_placeholder_1+
'sequential_3_lstm_6_while_placeholder_2+
'sequential_3_lstm_6_while_placeholder_3C
?sequential_3_lstm_6_while_sequential_3_lstm_6_strided_slice_1_0
{sequential_3_lstm_6_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_6_tensorarrayunstack_tensorlistfromtensor_0L
Hsequential_3_lstm_6_while_lstm_cell_103_matmul_readvariableop_resource_0N
Jsequential_3_lstm_6_while_lstm_cell_103_matmul_1_readvariableop_resource_0M
Isequential_3_lstm_6_while_lstm_cell_103_biasadd_readvariableop_resource_0&
"sequential_3_lstm_6_while_identity(
$sequential_3_lstm_6_while_identity_1(
$sequential_3_lstm_6_while_identity_2(
$sequential_3_lstm_6_while_identity_3(
$sequential_3_lstm_6_while_identity_4(
$sequential_3_lstm_6_while_identity_5A
=sequential_3_lstm_6_while_sequential_3_lstm_6_strided_slice_1}
ysequential_3_lstm_6_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_6_tensorarrayunstack_tensorlistfromtensorJ
Fsequential_3_lstm_6_while_lstm_cell_103_matmul_readvariableop_resourceL
Hsequential_3_lstm_6_while_lstm_cell_103_matmul_1_readvariableop_resourceK
Gsequential_3_lstm_6_while_lstm_cell_103_biasadd_readvariableop_resourceИв>sequential_3/lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOpв=sequential_3/lstm_6/while/lstm_cell_103/MatMul/ReadVariableOpв?sequential_3/lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOpы
Ksequential_3/lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   2M
Ksequential_3/lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shape╠
=sequential_3/lstm_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_3_lstm_6_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_6_tensorarrayunstack_tensorlistfromtensor_0%sequential_3_lstm_6_while_placeholderTsequential_3/lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         А*
element_dtype02?
=sequential_3/lstm_6/while/TensorArrayV2Read/TensorListGetItemЙ
=sequential_3/lstm_6/while/lstm_cell_103/MatMul/ReadVariableOpReadVariableOpHsequential_3_lstm_6_while_lstm_cell_103_matmul_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02?
=sequential_3/lstm_6/while/lstm_cell_103/MatMul/ReadVariableOpк
.sequential_3/lstm_6/while/lstm_cell_103/MatMulMatMulDsequential_3/lstm_6/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_3/lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А20
.sequential_3/lstm_6/while/lstm_cell_103/MatMulО
?sequential_3/lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOpJsequential_3_lstm_6_while_lstm_cell_103_matmul_1_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02A
?sequential_3/lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOpУ
0sequential_3/lstm_6/while/lstm_cell_103/MatMul_1MatMul'sequential_3_lstm_6_while_placeholder_2Gsequential_3/lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А22
0sequential_3/lstm_6/while/lstm_cell_103/MatMul_1М
+sequential_3/lstm_6/while/lstm_cell_103/addAddV28sequential_3/lstm_6/while/lstm_cell_103/MatMul:product:0:sequential_3/lstm_6/while/lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:         А2-
+sequential_3/lstm_6/while/lstm_cell_103/addЗ
>sequential_3/lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOpIsequential_3_lstm_6_while_lstm_cell_103_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02@
>sequential_3/lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOpЩ
/sequential_3/lstm_6/while/lstm_cell_103/BiasAddBiasAdd/sequential_3/lstm_6/while/lstm_cell_103/add:z:0Fsequential_3/lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А21
/sequential_3/lstm_6/while/lstm_cell_103/BiasAddа
-sequential_3/lstm_6/while/lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2/
-sequential_3/lstm_6/while/lstm_cell_103/Const┤
7sequential_3/lstm_6/while/lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :29
7sequential_3/lstm_6/while/lstm_cell_103/split/split_dim▀
-sequential_3/lstm_6/while/lstm_cell_103/splitSplit@sequential_3/lstm_6/while/lstm_cell_103/split/split_dim:output:08sequential_3/lstm_6/while/lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2/
-sequential_3/lstm_6/while/lstm_cell_103/split╫
/sequential_3/lstm_6/while/lstm_cell_103/SigmoidSigmoid6sequential_3/lstm_6/while/lstm_cell_103/split:output:0*
T0*'
_output_shapes
:         @21
/sequential_3/lstm_6/while/lstm_cell_103/Sigmoid█
1sequential_3/lstm_6/while/lstm_cell_103/Sigmoid_1Sigmoid6sequential_3/lstm_6/while/lstm_cell_103/split:output:1*
T0*'
_output_shapes
:         @23
1sequential_3/lstm_6/while/lstm_cell_103/Sigmoid_1є
+sequential_3/lstm_6/while/lstm_cell_103/mulMul5sequential_3/lstm_6/while/lstm_cell_103/Sigmoid_1:y:0'sequential_3_lstm_6_while_placeholder_3*
T0*'
_output_shapes
:         @2-
+sequential_3/lstm_6/while/lstm_cell_103/mul█
1sequential_3/lstm_6/while/lstm_cell_103/Sigmoid_2Sigmoid6sequential_3/lstm_6/while/lstm_cell_103/split:output:2*
T0*'
_output_shapes
:         @23
1sequential_3/lstm_6/while/lstm_cell_103/Sigmoid_2Ж
-sequential_3/lstm_6/while/lstm_cell_103/mul_1Mul6sequential_3/lstm_6/while/lstm_cell_103/split:output:25sequential_3/lstm_6/while/lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:         @2/
-sequential_3/lstm_6/while/lstm_cell_103/mul_1╒
0sequential_3/lstm_6/while/lstm_cell_103/IdentityIdentity1sequential_3/lstm_6/while/lstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:         @22
0sequential_3/lstm_6/while/lstm_cell_103/Identity╓
1sequential_3/lstm_6/while/lstm_cell_103/IdentityN	IdentityN1sequential_3/lstm_6/while/lstm_cell_103/mul_1:z:06sequential_3/lstm_6/while/lstm_cell_103/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1212411*:
_output_shapes(
&:         @:         @23
1sequential_3/lstm_6/while/lstm_cell_103/IdentityNИ
-sequential_3/lstm_6/while/lstm_cell_103/mul_2Mul3sequential_3/lstm_6/while/lstm_cell_103/Sigmoid:y:0:sequential_3/lstm_6/while/lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:         @2/
-sequential_3/lstm_6/while/lstm_cell_103/mul_2¤
-sequential_3/lstm_6/while/lstm_cell_103/add_1AddV2/sequential_3/lstm_6/while/lstm_cell_103/mul:z:01sequential_3/lstm_6/while/lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:         @2/
-sequential_3/lstm_6/while/lstm_cell_103/add_1█
1sequential_3/lstm_6/while/lstm_cell_103/Sigmoid_3Sigmoid6sequential_3/lstm_6/while/lstm_cell_103/split:output:3*
T0*'
_output_shapes
:         @23
1sequential_3/lstm_6/while/lstm_cell_103/Sigmoid_3╓
1sequential_3/lstm_6/while/lstm_cell_103/Sigmoid_4Sigmoid1sequential_3/lstm_6/while/lstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:         @23
1sequential_3/lstm_6/while/lstm_cell_103/Sigmoid_4Б
-sequential_3/lstm_6/while/lstm_cell_103/mul_3Mul1sequential_3/lstm_6/while/lstm_cell_103/add_1:z:05sequential_3/lstm_6/while/lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:         @2/
-sequential_3/lstm_6/while/lstm_cell_103/mul_3┘
2sequential_3/lstm_6/while/lstm_cell_103/Identity_1Identity1sequential_3/lstm_6/while/lstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:         @24
2sequential_3/lstm_6/while/lstm_cell_103/Identity_1╒
3sequential_3/lstm_6/while/lstm_cell_103/IdentityN_1	IdentityN1sequential_3/lstm_6/while/lstm_cell_103/mul_3:z:01sequential_3/lstm_6/while/lstm_cell_103/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1212420*:
_output_shapes(
&:         @:         @25
3sequential_3/lstm_6/while/lstm_cell_103/IdentityN_1М
-sequential_3/lstm_6/while/lstm_cell_103/mul_4Mul5sequential_3/lstm_6/while/lstm_cell_103/Sigmoid_3:y:0<sequential_3/lstm_6/while/lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:         @2/
-sequential_3/lstm_6/while/lstm_cell_103/mul_4┼
>sequential_3/lstm_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_3_lstm_6_while_placeholder_1%sequential_3_lstm_6_while_placeholder1sequential_3/lstm_6/while/lstm_cell_103/mul_4:z:0*
_output_shapes
: *
element_dtype02@
>sequential_3/lstm_6/while/TensorArrayV2Write/TensorListSetItemД
sequential_3/lstm_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_3/lstm_6/while/add/y╣
sequential_3/lstm_6/while/addAddV2%sequential_3_lstm_6_while_placeholder(sequential_3/lstm_6/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_3/lstm_6/while/addИ
!sequential_3/lstm_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_3/lstm_6/while/add_1/y┌
sequential_3/lstm_6/while/add_1AddV2@sequential_3_lstm_6_while_sequential_3_lstm_6_while_loop_counter*sequential_3/lstm_6/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
sequential_3/lstm_6/while/add_1▌
"sequential_3/lstm_6/while/IdentityIdentity#sequential_3/lstm_6/while/add_1:z:0?^sequential_3/lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp>^sequential_3/lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp@^sequential_3/lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2$
"sequential_3/lstm_6/while/IdentityД
$sequential_3/lstm_6/while/Identity_1IdentityFsequential_3_lstm_6_while_sequential_3_lstm_6_while_maximum_iterations?^sequential_3/lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp>^sequential_3/lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp@^sequential_3/lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_3/lstm_6/while/Identity_1▀
$sequential_3/lstm_6/while/Identity_2Identity!sequential_3/lstm_6/while/add:z:0?^sequential_3/lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp>^sequential_3/lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp@^sequential_3/lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_3/lstm_6/while/Identity_2М
$sequential_3/lstm_6/while/Identity_3IdentityNsequential_3/lstm_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0?^sequential_3/lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp>^sequential_3/lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp@^sequential_3/lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_3/lstm_6/while/Identity_3А
$sequential_3/lstm_6/while/Identity_4Identity1sequential_3/lstm_6/while/lstm_cell_103/mul_4:z:0?^sequential_3/lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp>^sequential_3/lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp@^sequential_3/lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:         @2&
$sequential_3/lstm_6/while/Identity_4А
$sequential_3/lstm_6/while/Identity_5Identity1sequential_3/lstm_6/while/lstm_cell_103/add_1:z:0?^sequential_3/lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp>^sequential_3/lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp@^sequential_3/lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:         @2&
$sequential_3/lstm_6/while/Identity_5"Q
"sequential_3_lstm_6_while_identity+sequential_3/lstm_6/while/Identity:output:0"U
$sequential_3_lstm_6_while_identity_1-sequential_3/lstm_6/while/Identity_1:output:0"U
$sequential_3_lstm_6_while_identity_2-sequential_3/lstm_6/while/Identity_2:output:0"U
$sequential_3_lstm_6_while_identity_3-sequential_3/lstm_6/while/Identity_3:output:0"U
$sequential_3_lstm_6_while_identity_4-sequential_3/lstm_6/while/Identity_4:output:0"U
$sequential_3_lstm_6_while_identity_5-sequential_3/lstm_6/while/Identity_5:output:0"Ф
Gsequential_3_lstm_6_while_lstm_cell_103_biasadd_readvariableop_resourceIsequential_3_lstm_6_while_lstm_cell_103_biasadd_readvariableop_resource_0"Ц
Hsequential_3_lstm_6_while_lstm_cell_103_matmul_1_readvariableop_resourceJsequential_3_lstm_6_while_lstm_cell_103_matmul_1_readvariableop_resource_0"Т
Fsequential_3_lstm_6_while_lstm_cell_103_matmul_readvariableop_resourceHsequential_3_lstm_6_while_lstm_cell_103_matmul_readvariableop_resource_0"А
=sequential_3_lstm_6_while_sequential_3_lstm_6_strided_slice_1?sequential_3_lstm_6_while_sequential_3_lstm_6_strided_slice_1_0"°
ysequential_3_lstm_6_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_6_tensorarrayunstack_tensorlistfromtensor{sequential_3_lstm_6_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_6_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :         @:         @: : :::2А
>sequential_3/lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp>sequential_3/lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp2~
=sequential_3/lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp=sequential_3/lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp2В
?sequential_3/lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp?sequential_3/lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
ы
В
I__inference_sequential_3_layer_call_and_return_conditional_losses_1214906
lstm_5_input
lstm_5_1214877
lstm_5_1214879
lstm_5_1214881
lstm_6_1214884
lstm_6_1214886
lstm_6_1214888
time_distributed_3_1214891
time_distributed_3_1214893
time_distributed_4_1214898
time_distributed_4_1214900
identityИвlstm_5/StatefulPartitionedCallвlstm_6/StatefulPartitionedCallв*time_distributed_3/StatefulPartitionedCallв*time_distributed_4/StatefulPartitionedCallк
lstm_5/StatefulPartitionedCallStatefulPartitionedCalllstm_5_inputlstm_5_1214877lstm_5_1214879lstm_5_1214881*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_5_layer_call_and_return_conditional_losses_12143502 
lstm_5/StatefulPartitionedCall─
lstm_6/StatefulPartitionedCallStatefulPartitionedCall'lstm_5/StatefulPartitionedCall:output:0lstm_6_1214884lstm_6_1214886lstm_6_1214888*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_6_layer_call_and_return_conditional_losses_12147252 
lstm_6/StatefulPartitionedCallю
*time_distributed_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_6/StatefulPartitionedCall:output:0time_distributed_3_1214891time_distributed_3_1214893*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_time_distributed_3_layer_call_and_return_conditional_losses_12147942,
*time_distributed_3/StatefulPartitionedCallХ
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2"
 time_distributed_3/Reshape/shape╔
time_distributed_3/ReshapeReshape'lstm_6/StatefulPartitionedCall:output:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
time_distributed_3/Reshape·
*time_distributed_4/StatefulPartitionedCallStatefulPartitionedCall3time_distributed_3/StatefulPartitionedCall:output:0time_distributed_4_1214898time_distributed_4_1214900*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_time_distributed_4_layer_call_and_return_conditional_losses_12148472,
*time_distributed_4/StatefulPartitionedCallХ
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2"
 time_distributed_4/Reshape/shape╒
time_distributed_4/ReshapeReshape3time_distributed_3/StatefulPartitionedCall:output:0)time_distributed_4/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
time_distributed_4/Reshapeз
IdentityIdentity3time_distributed_4/StatefulPartitionedCall:output:0^lstm_5/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall+^time_distributed_3/StatefulPartitionedCall+^time_distributed_4/StatefulPartitionedCall*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:         ::::::::::2@
lstm_5/StatefulPartitionedCalllstm_5/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall2X
*time_distributed_3/StatefulPartitionedCall*time_distributed_3/StatefulPartitionedCall2X
*time_distributed_4/StatefulPartitionedCall*time_distributed_4/StatefulPartitionedCall:Y U
+
_output_shapes
:         
&
_user_specified_namelstm_5_input
╨d
°
C__inference_lstm_5_layer_call_and_return_conditional_losses_1214177

inputs0
,lstm_cell_102_matmul_readvariableop_resource2
.lstm_cell_102_matmul_1_readvariableop_resource1
-lstm_cell_102_biasadd_readvariableop_resource
identityИв$lstm_cell_102/BiasAdd/ReadVariableOpв#lstm_cell_102/MatMul/ReadVariableOpв%lstm_cell_102/MatMul_1/ReadVariableOpвwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         А2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         А2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_2╕
#lstm_cell_102/MatMul/ReadVariableOpReadVariableOp,lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02%
#lstm_cell_102/MatMul/ReadVariableOp░
lstm_cell_102/MatMulMatMulstrided_slice_2:output:0+lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/MatMul┐
%lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02'
%lstm_cell_102/MatMul_1/ReadVariableOpм
lstm_cell_102/MatMul_1MatMulzeros:output:0-lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/MatMul_1д
lstm_cell_102/addAddV2lstm_cell_102/MatMul:product:0 lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/add╖
$lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02&
$lstm_cell_102/BiasAdd/ReadVariableOp▒
lstm_cell_102/BiasAddBiasAddlstm_cell_102/add:z:0,lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/BiasAddl
lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/ConstА
lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/split/split_dim√
lstm_cell_102/splitSplit&lstm_cell_102/split/split_dim:output:0lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
lstm_cell_102/splitК
lstm_cell_102/SigmoidSigmoidlstm_cell_102/split:output:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/SigmoidО
lstm_cell_102/Sigmoid_1Sigmoidlstm_cell_102/split:output:1*
T0*(
_output_shapes
:         А2
lstm_cell_102/Sigmoid_1П
lstm_cell_102/mulMullstm_cell_102/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/mulО
lstm_cell_102/Sigmoid_2Sigmoidlstm_cell_102/split:output:2*
T0*(
_output_shapes
:         А2
lstm_cell_102/Sigmoid_2Я
lstm_cell_102/mul_1Mullstm_cell_102/split:output:2lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/mul_1И
lstm_cell_102/IdentityIdentitylstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/IdentityЁ
lstm_cell_102/IdentityN	IdentityNlstm_cell_102/mul_1:z:0lstm_cell_102/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1214062*<
_output_shapes*
(:         А:         А2
lstm_cell_102/IdentityNб
lstm_cell_102/mul_2Mullstm_cell_102/Sigmoid:y:0 lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/mul_2Ц
lstm_cell_102/add_1AddV2lstm_cell_102/mul:z:0lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/add_1О
lstm_cell_102/Sigmoid_3Sigmoidlstm_cell_102/split:output:3*
T0*(
_output_shapes
:         А2
lstm_cell_102/Sigmoid_3Й
lstm_cell_102/Sigmoid_4Sigmoidlstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/Sigmoid_4Ъ
lstm_cell_102/mul_3Mullstm_cell_102/add_1:z:0lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/mul_3М
lstm_cell_102/Identity_1Identitylstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/Identity_1я
lstm_cell_102/IdentityN_1	IdentityNlstm_cell_102/mul_3:z:0lstm_cell_102/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1214071*<
_output_shapes*
(:         А:         А2
lstm_cell_102/IdentityN_1е
lstm_cell_102/mul_4Mullstm_cell_102/Sigmoid_3:y:0"lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/mul_4П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   2
TensorArrayV2_1/element_shape╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterў
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_102_matmul_readvariableop_resource.lstm_cell_102_matmul_1_readvariableop_resource-lstm_cell_102_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         А:         А: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1214082*
condR
while_cond_1214081*M
output_shapes<
:: : : : :         А:         А: : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   22
0TensorArrayV2Stack/TensorListStack/element_shapeщ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permж
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         А2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeх
IdentityIdentitytranspose_1:y:0%^lstm_cell_102/BiasAdd/ReadVariableOp$^lstm_cell_102/MatMul/ReadVariableOp&^lstm_cell_102/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:         А2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         :::2L
$lstm_cell_102/BiasAdd/ReadVariableOp$lstm_cell_102/BiasAdd/ReadVariableOp2J
#lstm_cell_102/MatMul/ReadVariableOp#lstm_cell_102/MatMul/ReadVariableOp2N
%lstm_cell_102/MatMul_1/ReadVariableOp%lstm_cell_102/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Т	
▌
D__inference_dense_9_layer_call_and_return_conditional_losses_1217833

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
ў
√
.__inference_sequential_3_layer_call_fn_1215825

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_sequential_3_layer_call_and_return_conditional_losses_12149412
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:         ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
┌M
И
while_body_1216469
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_08
4while_lstm_cell_102_matmul_readvariableop_resource_0:
6while_lstm_cell_102_matmul_1_readvariableop_resource_09
5while_lstm_cell_102_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor6
2while_lstm_cell_102_matmul_readvariableop_resource8
4while_lstm_cell_102_matmul_1_readvariableop_resource7
3while_lstm_cell_102_biasadd_readvariableop_resourceИв*while/lstm_cell_102/BiasAdd/ReadVariableOpв)while/lstm_cell_102/MatMul/ReadVariableOpв+while/lstm_cell_102/MatMul_1/ReadVariableOp├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem╠
)while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02+
)while/lstm_cell_102/MatMul/ReadVariableOp┌
while/lstm_cell_102/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/MatMul╙
+while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02-
+while/lstm_cell_102/MatMul_1/ReadVariableOp├
while/lstm_cell_102/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/MatMul_1╝
while/lstm_cell_102/addAddV2$while/lstm_cell_102/MatMul:product:0&while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/add╦
*while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02,
*while/lstm_cell_102/BiasAdd/ReadVariableOp╔
while/lstm_cell_102/BiasAddBiasAddwhile/lstm_cell_102/add:z:02while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/BiasAddx
while/lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_102/ConstМ
#while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_102/split/split_dimУ
while/lstm_cell_102/splitSplit,while/lstm_cell_102/split/split_dim:output:0$while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
while/lstm_cell_102/splitЬ
while/lstm_cell_102/SigmoidSigmoid"while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/Sigmoidа
while/lstm_cell_102/Sigmoid_1Sigmoid"while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/Sigmoid_1д
while/lstm_cell_102/mulMul!while/lstm_cell_102/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/mulа
while/lstm_cell_102/Sigmoid_2Sigmoid"while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/Sigmoid_2╖
while/lstm_cell_102/mul_1Mul"while/lstm_cell_102/split:output:2!while/lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/mul_1Ъ
while/lstm_cell_102/IdentityIdentitywhile/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/IdentityИ
while/lstm_cell_102/IdentityN	IdentityNwhile/lstm_cell_102/mul_1:z:0"while/lstm_cell_102/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1216512*<
_output_shapes*
(:         А:         А2
while/lstm_cell_102/IdentityN╣
while/lstm_cell_102/mul_2Mulwhile/lstm_cell_102/Sigmoid:y:0&while/lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/mul_2о
while/lstm_cell_102/add_1AddV2while/lstm_cell_102/mul:z:0while/lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/add_1а
while/lstm_cell_102/Sigmoid_3Sigmoid"while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/Sigmoid_3Ы
while/lstm_cell_102/Sigmoid_4Sigmoidwhile/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/Sigmoid_4▓
while/lstm_cell_102/mul_3Mulwhile/lstm_cell_102/add_1:z:0!while/lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/mul_3Ю
while/lstm_cell_102/Identity_1Identitywhile/lstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:         А2 
while/lstm_cell_102/Identity_1З
while/lstm_cell_102/IdentityN_1	IdentityNwhile/lstm_cell_102/mul_3:z:0while/lstm_cell_102/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1216521*<
_output_shapes*
(:         А:         А2!
while/lstm_cell_102/IdentityN_1╜
while/lstm_cell_102/mul_4Mul!while/lstm_cell_102/Sigmoid_3:y:0(while/lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/mul_4с
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_102/mul_4:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1х
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity°
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ч
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2Ф
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Й
while/Identity_4Identitywhile/lstm_cell_102/mul_4:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:         А2
while/Identity_4Й
while/Identity_5Identitywhile/lstm_cell_102/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:         А2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_102_biasadd_readvariableop_resource5while_lstm_cell_102_biasadd_readvariableop_resource_0"n
4while_lstm_cell_102_matmul_1_readvariableop_resource6while_lstm_cell_102_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_102_matmul_readvariableop_resource4while_lstm_cell_102_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :         А:         А: : :::2X
*while/lstm_cell_102/BiasAdd/ReadVariableOp*while/lstm_cell_102/BiasAdd/ReadVariableOp2V
)while/lstm_cell_102/MatMul/ReadVariableOp)while/lstm_cell_102/MatMul/ReadVariableOp2Z
+while/lstm_cell_102/MatMul_1/ReadVariableOp+while/lstm_cell_102/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
Й	
Б
.__inference_sequential_3_layer_call_fn_1215021
lstm_5_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identityИвStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCalllstm_5_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_sequential_3_layer_call_and_return_conditional_losses_12149982
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:         ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:         
&
_user_specified_namelstm_5_input
ы
В
I__inference_sequential_3_layer_call_and_return_conditional_losses_1214874
lstm_5_input
lstm_5_1214373
lstm_5_1214375
lstm_5_1214377
lstm_6_1214748
lstm_6_1214750
lstm_6_1214752
time_distributed_3_1214813
time_distributed_3_1214815
time_distributed_4_1214866
time_distributed_4_1214868
identityИвlstm_5/StatefulPartitionedCallвlstm_6/StatefulPartitionedCallв*time_distributed_3/StatefulPartitionedCallв*time_distributed_4/StatefulPartitionedCallк
lstm_5/StatefulPartitionedCallStatefulPartitionedCalllstm_5_inputlstm_5_1214373lstm_5_1214375lstm_5_1214377*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_5_layer_call_and_return_conditional_losses_12141772 
lstm_5/StatefulPartitionedCall─
lstm_6/StatefulPartitionedCallStatefulPartitionedCall'lstm_5/StatefulPartitionedCall:output:0lstm_6_1214748lstm_6_1214750lstm_6_1214752*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_6_layer_call_and_return_conditional_losses_12145522 
lstm_6/StatefulPartitionedCallю
*time_distributed_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_6/StatefulPartitionedCall:output:0time_distributed_3_1214813time_distributed_3_1214815*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_time_distributed_3_layer_call_and_return_conditional_losses_12147742,
*time_distributed_3/StatefulPartitionedCallХ
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2"
 time_distributed_3/Reshape/shape╔
time_distributed_3/ReshapeReshape'lstm_6/StatefulPartitionedCall:output:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
time_distributed_3/Reshape·
*time_distributed_4/StatefulPartitionedCallStatefulPartitionedCall3time_distributed_3/StatefulPartitionedCall:output:0time_distributed_4_1214866time_distributed_4_1214868*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_time_distributed_4_layer_call_and_return_conditional_losses_12148332,
*time_distributed_4/StatefulPartitionedCallХ
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2"
 time_distributed_4/Reshape/shape╒
time_distributed_4/ReshapeReshape3time_distributed_3/StatefulPartitionedCall:output:0)time_distributed_4/Reshape/shape:output:0*
T0*'
_output_shapes
:         @2
time_distributed_4/Reshapeз
IdentityIdentity3time_distributed_4/StatefulPartitionedCall:output:0^lstm_5/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall+^time_distributed_3/StatefulPartitionedCall+^time_distributed_4/StatefulPartitionedCall*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:         ::::::::::2@
lstm_5/StatefulPartitionedCalllstm_5/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall2X
*time_distributed_3/StatefulPartitionedCall*time_distributed_3/StatefulPartitionedCall2X
*time_distributed_4/StatefulPartitionedCall*time_distributed_4/StatefulPartitionedCall:Y U
+
_output_shapes
:         
&
_user_specified_namelstm_5_input
┤
╚
while_cond_1213044
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1213044___redundant_placeholder05
1while_while_cond_1213044___redundant_placeholder15
1while_while_cond_1213044___redundant_placeholder25
1while_while_cond_1213044___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :         А:         А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
┤
╚
while_cond_1212912
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1212912___redundant_placeholder05
1while_while_cond_1212912___redundant_placeholder15
1while_while_cond_1212912___redundant_placeholder25
1while_while_cond_1212912___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :         А:         А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
Г
Й
4__inference_time_distributed_4_layer_call_fn_1217549

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_time_distributed_4_layer_call_and_return_conditional_losses_12148332
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*2
_input_shapes!
:         @::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
▄
~
)__inference_dense_9_layer_call_fn_1217842

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_12139012
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Ё"
с
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_1217644

inputs
states_0
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource

identity_2

identity_3

identity_4ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulХ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim├
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         А2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         А2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         А2
muld
	Sigmoid_2Sigmoidsplit:output:2*
T0*(
_output_shapes
:         А2
	Sigmoid_2g
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*(
_output_shapes
:         А2
mul_1^
IdentityIdentity	mul_1:z:0*
T0*(
_output_shapes
:         А2

Identity╕
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1217625*<
_output_shapes*
(:         А:         А2
	IdentityNi
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*(
_output_shapes
:         А2
mul_2^
add_1AddV2mul:z:0	mul_2:z:0*
T0*(
_output_shapes
:         А2
add_1d
	Sigmoid_3Sigmoidsplit:output:3*
T0*(
_output_shapes
:         А2
	Sigmoid_3_
	Sigmoid_4Sigmoid	add_1:z:0*
T0*(
_output_shapes
:         А2
	Sigmoid_4b
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*(
_output_shapes
:         А2
mul_3b

Identity_1Identity	mul_3:z:0*
T0*(
_output_shapes
:         А2

Identity_1╖
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1217634*<
_output_shapes*
(:         А:         А2
IdentityN_1m
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*(
_output_shapes
:         А2
mul_4н

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity_2н

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity_3н

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*Z
_input_shapesI
G:         :         А:         А:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:RN
(
_output_shapes
:         А
"
_user_specified_name
states/0:RN
(
_output_shapes
:         А
"
_user_specified_name
states/1
▒d
°
C__inference_lstm_6_layer_call_and_return_conditional_losses_1214552

inputs0
,lstm_cell_103_matmul_readvariableop_resource2
.lstm_cell_103_matmul_1_readvariableop_resource1
-lstm_cell_103_biasadd_readvariableop_resource
identityИв$lstm_cell_103/BiasAdd/ReadVariableOpв#lstm_cell_103/MatMul/ReadVariableOpв%lstm_cell_103/MatMul_1/ReadVariableOpвwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         @2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:         А2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2¤
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_2╣
#lstm_cell_103/MatMul/ReadVariableOpReadVariableOp,lstm_cell_103_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02%
#lstm_cell_103/MatMul/ReadVariableOp░
lstm_cell_103/MatMulMatMulstrided_slice_2:output:0+lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_103/MatMul╛
%lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_103_matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02'
%lstm_cell_103/MatMul_1/ReadVariableOpм
lstm_cell_103/MatMul_1MatMulzeros:output:0-lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_103/MatMul_1д
lstm_cell_103/addAddV2lstm_cell_103/MatMul:product:0 lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_cell_103/add╖
$lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_103_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02&
$lstm_cell_103/BiasAdd/ReadVariableOp▒
lstm_cell_103/BiasAddBiasAddlstm_cell_103/add:z:0,lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_103/BiasAddl
lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_103/ConstА
lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_103/split/split_dimў
lstm_cell_103/splitSplit&lstm_cell_103/split/split_dim:output:0lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
lstm_cell_103/splitЙ
lstm_cell_103/SigmoidSigmoidlstm_cell_103/split:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/SigmoidН
lstm_cell_103/Sigmoid_1Sigmoidlstm_cell_103/split:output:1*
T0*'
_output_shapes
:         @2
lstm_cell_103/Sigmoid_1О
lstm_cell_103/mulMullstm_cell_103/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/mulН
lstm_cell_103/Sigmoid_2Sigmoidlstm_cell_103/split:output:2*
T0*'
_output_shapes
:         @2
lstm_cell_103/Sigmoid_2Ю
lstm_cell_103/mul_1Mullstm_cell_103/split:output:2lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/mul_1З
lstm_cell_103/IdentityIdentitylstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/Identityю
lstm_cell_103/IdentityN	IdentityNlstm_cell_103/mul_1:z:0lstm_cell_103/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1214437*:
_output_shapes(
&:         @:         @2
lstm_cell_103/IdentityNа
lstm_cell_103/mul_2Mullstm_cell_103/Sigmoid:y:0 lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/mul_2Х
lstm_cell_103/add_1AddV2lstm_cell_103/mul:z:0lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/add_1Н
lstm_cell_103/Sigmoid_3Sigmoidlstm_cell_103/split:output:3*
T0*'
_output_shapes
:         @2
lstm_cell_103/Sigmoid_3И
lstm_cell_103/Sigmoid_4Sigmoidlstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/Sigmoid_4Щ
lstm_cell_103/mul_3Mullstm_cell_103/add_1:z:0lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/mul_3Л
lstm_cell_103/Identity_1Identitylstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/Identity_1э
lstm_cell_103/IdentityN_1	IdentityNlstm_cell_103/mul_3:z:0lstm_cell_103/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1214446*:
_output_shapes(
&:         @:         @2
lstm_cell_103/IdentityN_1д
lstm_cell_103/mul_4Mullstm_cell_103/Sigmoid_3:y:0"lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/mul_4П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
TensorArrayV2_1/element_shape╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterє
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_103_matmul_readvariableop_resource.lstm_cell_103_matmul_1_readvariableop_resource-lstm_cell_103_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1214457*
condR
while_cond_1214456*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permе
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         @2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeф
IdentityIdentitytranspose_1:y:0%^lstm_cell_103/BiasAdd/ReadVariableOp$^lstm_cell_103/MatMul/ReadVariableOp&^lstm_cell_103/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:         @2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         А:::2L
$lstm_cell_103/BiasAdd/ReadVariableOp$lstm_cell_103/BiasAdd/ReadVariableOp2J
#lstm_cell_103/MatMul/ReadVariableOp#lstm_cell_103/MatMul/ReadVariableOp2N
%lstm_cell_103/MatMul_1/ReadVariableOp%lstm_cell_103/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:         А
 
_user_specified_nameinputs
╙%
Я
while_body_1212913
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0!
while_lstm_cell_102_1212937_0!
while_lstm_cell_102_1212939_0!
while_lstm_cell_102_1212941_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_102_1212937
while_lstm_cell_102_1212939
while_lstm_cell_102_1212941Ив+while/lstm_cell_102/StatefulPartitionedCall├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemю
+while/lstm_cell_102/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_102_1212937_0while_lstm_cell_102_1212939_0while_lstm_cell_102_1212941_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         А:         А:         А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_12125762-
+while/lstm_cell_102/StatefulPartitionedCall°
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_102/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1М
while/IdentityIdentitywhile/add_1:z:0,^while/lstm_cell_102/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/IdentityЯ
while/Identity_1Identitywhile_while_maximum_iterations,^while/lstm_cell_102/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1О
while/Identity_2Identitywhile/add:z:0,^while/lstm_cell_102/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2╗
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0,^while/lstm_cell_102/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3╟
while/Identity_4Identity4while/lstm_cell_102/StatefulPartitionedCall:output:1,^while/lstm_cell_102/StatefulPartitionedCall*
T0*(
_output_shapes
:         А2
while/Identity_4╟
while/Identity_5Identity4while/lstm_cell_102/StatefulPartitionedCall:output:2,^while/lstm_cell_102/StatefulPartitionedCall*
T0*(
_output_shapes
:         А2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_102_1212937while_lstm_cell_102_1212937_0"<
while_lstm_cell_102_1212939while_lstm_cell_102_1212939_0"<
while_lstm_cell_102_1212941while_lstm_cell_102_1212941_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :         А:         А: : :::2Z
+while/lstm_cell_102/StatefulPartitionedCall+while/lstm_cell_102/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
Пe
·
C__inference_lstm_5_layer_call_and_return_conditional_losses_1216564
inputs_00
,lstm_cell_102_matmul_readvariableop_resource2
.lstm_cell_102_matmul_1_readvariableop_resource1
-lstm_cell_102_biasadd_readvariableop_resource
identityИв$lstm_cell_102/BiasAdd/ReadVariableOpв#lstm_cell_102/MatMul/ReadVariableOpв%lstm_cell_102/MatMul_1/ReadVariableOpвwhileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         А2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         А2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЕ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_2╕
#lstm_cell_102/MatMul/ReadVariableOpReadVariableOp,lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02%
#lstm_cell_102/MatMul/ReadVariableOp░
lstm_cell_102/MatMulMatMulstrided_slice_2:output:0+lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/MatMul┐
%lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02'
%lstm_cell_102/MatMul_1/ReadVariableOpм
lstm_cell_102/MatMul_1MatMulzeros:output:0-lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/MatMul_1д
lstm_cell_102/addAddV2lstm_cell_102/MatMul:product:0 lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/add╖
$lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02&
$lstm_cell_102/BiasAdd/ReadVariableOp▒
lstm_cell_102/BiasAddBiasAddlstm_cell_102/add:z:0,lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/BiasAddl
lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/ConstА
lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/split/split_dim√
lstm_cell_102/splitSplit&lstm_cell_102/split/split_dim:output:0lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
lstm_cell_102/splitК
lstm_cell_102/SigmoidSigmoidlstm_cell_102/split:output:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/SigmoidО
lstm_cell_102/Sigmoid_1Sigmoidlstm_cell_102/split:output:1*
T0*(
_output_shapes
:         А2
lstm_cell_102/Sigmoid_1П
lstm_cell_102/mulMullstm_cell_102/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/mulО
lstm_cell_102/Sigmoid_2Sigmoidlstm_cell_102/split:output:2*
T0*(
_output_shapes
:         А2
lstm_cell_102/Sigmoid_2Я
lstm_cell_102/mul_1Mullstm_cell_102/split:output:2lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/mul_1И
lstm_cell_102/IdentityIdentitylstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/IdentityЁ
lstm_cell_102/IdentityN	IdentityNlstm_cell_102/mul_1:z:0lstm_cell_102/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1216449*<
_output_shapes*
(:         А:         А2
lstm_cell_102/IdentityNб
lstm_cell_102/mul_2Mullstm_cell_102/Sigmoid:y:0 lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/mul_2Ц
lstm_cell_102/add_1AddV2lstm_cell_102/mul:z:0lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/add_1О
lstm_cell_102/Sigmoid_3Sigmoidlstm_cell_102/split:output:3*
T0*(
_output_shapes
:         А2
lstm_cell_102/Sigmoid_3Й
lstm_cell_102/Sigmoid_4Sigmoidlstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/Sigmoid_4Ъ
lstm_cell_102/mul_3Mullstm_cell_102/add_1:z:0lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/mul_3М
lstm_cell_102/Identity_1Identitylstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/Identity_1я
lstm_cell_102/IdentityN_1	IdentityNlstm_cell_102/mul_3:z:0lstm_cell_102/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1216458*<
_output_shapes*
(:         А:         А2
lstm_cell_102/IdentityN_1е
lstm_cell_102/mul_4Mullstm_cell_102/Sigmoid_3:y:0"lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:         А2
lstm_cell_102/mul_4П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   2
TensorArrayV2_1/element_shape╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterў
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_102_matmul_readvariableop_resource.lstm_cell_102_matmul_1_readvariableop_resource-lstm_cell_102_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         А:         А: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1216469*
condR
while_cond_1216468*M
output_shapes<
:: : : : :         А:         А: : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   22
0TensorArrayV2Stack/TensorListStack/element_shapeЄ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permп
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeю
IdentityIdentitytranspose_1:y:0%^lstm_cell_102/BiasAdd/ReadVariableOp$^lstm_cell_102/MatMul/ReadVariableOp&^lstm_cell_102/MatMul_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:                  А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:                  :::2L
$lstm_cell_102/BiasAdd/ReadVariableOp$lstm_cell_102/BiasAdd/ReadVariableOp2J
#lstm_cell_102/MatMul/ReadVariableOp#lstm_cell_102/MatMul/ReadVariableOp2N
%lstm_cell_102/MatMul_1/ReadVariableOp%lstm_cell_102/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
╖
О
(__inference_lstm_6_layer_call_fn_1217311
inputs_0
unknown
	unknown_0
	unknown_1
identityИвStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_6_layer_call_and_return_conditional_losses_12136122
StatefulPartitionedCallЫ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :                  @2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:                  А:::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:                  А
"
_user_specified_name
inputs/0
▒d
°
C__inference_lstm_6_layer_call_and_return_conditional_losses_1216932

inputs0
,lstm_cell_103_matmul_readvariableop_resource2
.lstm_cell_103_matmul_1_readvariableop_resource1
-lstm_cell_103_biasadd_readvariableop_resource
identityИв$lstm_cell_103/BiasAdd/ReadVariableOpв#lstm_cell_103/MatMul/ReadVariableOpв%lstm_cell_103/MatMul_1/ReadVariableOpвwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         @2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:         А2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2¤
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_2╣
#lstm_cell_103/MatMul/ReadVariableOpReadVariableOp,lstm_cell_103_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02%
#lstm_cell_103/MatMul/ReadVariableOp░
lstm_cell_103/MatMulMatMulstrided_slice_2:output:0+lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_103/MatMul╛
%lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_103_matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02'
%lstm_cell_103/MatMul_1/ReadVariableOpм
lstm_cell_103/MatMul_1MatMulzeros:output:0-lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_103/MatMul_1д
lstm_cell_103/addAddV2lstm_cell_103/MatMul:product:0 lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_cell_103/add╖
$lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_103_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02&
$lstm_cell_103/BiasAdd/ReadVariableOp▒
lstm_cell_103/BiasAddBiasAddlstm_cell_103/add:z:0,lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_103/BiasAddl
lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_103/ConstА
lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_103/split/split_dimў
lstm_cell_103/splitSplit&lstm_cell_103/split/split_dim:output:0lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
lstm_cell_103/splitЙ
lstm_cell_103/SigmoidSigmoidlstm_cell_103/split:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/SigmoidН
lstm_cell_103/Sigmoid_1Sigmoidlstm_cell_103/split:output:1*
T0*'
_output_shapes
:         @2
lstm_cell_103/Sigmoid_1О
lstm_cell_103/mulMullstm_cell_103/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/mulН
lstm_cell_103/Sigmoid_2Sigmoidlstm_cell_103/split:output:2*
T0*'
_output_shapes
:         @2
lstm_cell_103/Sigmoid_2Ю
lstm_cell_103/mul_1Mullstm_cell_103/split:output:2lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/mul_1З
lstm_cell_103/IdentityIdentitylstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/Identityю
lstm_cell_103/IdentityN	IdentityNlstm_cell_103/mul_1:z:0lstm_cell_103/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1216817*:
_output_shapes(
&:         @:         @2
lstm_cell_103/IdentityNа
lstm_cell_103/mul_2Mullstm_cell_103/Sigmoid:y:0 lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/mul_2Х
lstm_cell_103/add_1AddV2lstm_cell_103/mul:z:0lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/add_1Н
lstm_cell_103/Sigmoid_3Sigmoidlstm_cell_103/split:output:3*
T0*'
_output_shapes
:         @2
lstm_cell_103/Sigmoid_3И
lstm_cell_103/Sigmoid_4Sigmoidlstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/Sigmoid_4Щ
lstm_cell_103/mul_3Mullstm_cell_103/add_1:z:0lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/mul_3Л
lstm_cell_103/Identity_1Identitylstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/Identity_1э
lstm_cell_103/IdentityN_1	IdentityNlstm_cell_103/mul_3:z:0lstm_cell_103/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1216826*:
_output_shapes(
&:         @:         @2
lstm_cell_103/IdentityN_1д
lstm_cell_103/mul_4Mullstm_cell_103/Sigmoid_3:y:0"lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_103/mul_4П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
TensorArrayV2_1/element_shape╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterє
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_103_matmul_readvariableop_resource.lstm_cell_103_matmul_1_readvariableop_resource-lstm_cell_103_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1216837*
condR
while_cond_1216836*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permе
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         @2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeф
IdentityIdentitytranspose_1:y:0%^lstm_cell_103/BiasAdd/ReadVariableOp$^lstm_cell_103/MatMul/ReadVariableOp&^lstm_cell_103/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:         @2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         А:::2L
$lstm_cell_103/BiasAdd/ReadVariableOp$lstm_cell_103/BiasAdd/ReadVariableOp2J
#lstm_cell_103/MatMul/ReadVariableOp#lstm_cell_103/MatMul/ReadVariableOp2N
%lstm_cell_103/MatMul_1/ReadVariableOp%lstm_cell_103/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:         А
 
_user_specified_nameinputs
╬"
▀
J__inference_lstm_cell_103_layer_call_and_return_conditional_losses_1213249

inputs

states
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource

identity_2

identity_3

identity_4ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim┐
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         @2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         @2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         @2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:         @2
	Sigmoid_2f
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*'
_output_shapes
:         @2
mul_1]
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:         @2

Identity╢
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1213230*:
_output_shapes(
&:         @:         @2
	IdentityNh
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*'
_output_shapes
:         @2
mul_2]
add_1AddV2mul:z:0	mul_2:z:0*
T0*'
_output_shapes
:         @2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:         @2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         @2
	Sigmoid_4a
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*'
_output_shapes
:         @2
mul_3a

Identity_1Identity	mul_3:z:0*
T0*'
_output_shapes
:         @2

Identity_1╡
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1213239*:
_output_shapes(
&:         @:         @2
IdentityN_1l
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*'
_output_shapes
:         @2
mul_4м

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity_2м

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity_3м

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*Y
_input_shapesH
F:         А:         @:         @:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs:OK
'
_output_shapes
:         @
 
_user_specified_namestates:OK
'
_output_shapes
:         @
 
_user_specified_namestates
 D
у
C__inference_lstm_6_layer_call_and_return_conditional_losses_1213612

inputs
lstm_cell_103_1213530
lstm_cell_103_1213532
lstm_cell_103_1213534
identityИв%lstm_cell_103/StatefulPartitionedCallвwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         @2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permД
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  А2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2¤
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_2з
%lstm_cell_103/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_103_1213530lstm_cell_103_1213532lstm_cell_103_1213534*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         @:         @:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_103_layer_call_and_return_conditional_losses_12132062'
%lstm_cell_103/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
TensorArrayV2_1/element_shape╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterл
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_103_1213530lstm_cell_103_1213532lstm_cell_103_1213534*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1213543*
condR
while_cond_1213542*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  @*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permо
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  @2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeа
IdentityIdentitytranspose_1:y:0&^lstm_cell_103/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :                  @2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:                  А:::2N
%lstm_cell_103/StatefulPartitionedCall%lstm_cell_103/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs
╖
О
(__inference_lstm_5_layer_call_fn_1216586
inputs_0
unknown
	unknown_0
	unknown_1
identityИвStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_5_layer_call_and_return_conditional_losses_12131142
StatefulPartitionedCallЬ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:                  А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:                  :::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
МE
у
C__inference_lstm_5_layer_call_and_return_conditional_losses_1212982

inputs
lstm_cell_102_1212900
lstm_cell_102_1212902
lstm_cell_102_1212904
identityИв%lstm_cell_102/StatefulPartitionedCallвwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         А2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         А2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_2к
%lstm_cell_102/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_102_1212900lstm_cell_102_1212902lstm_cell_102_1212904*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         А:         А:         А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_12125762'
%lstm_cell_102/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   2
TensorArrayV2_1/element_shape╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterп
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_102_1212900lstm_cell_102_1212902lstm_cell_102_1212904*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         А:         А: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1212913*
condR
while_cond_1212912*M
output_shapes<
:: : : : :         А:         А: : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   22
0TensorArrayV2Stack/TensorListStack/element_shapeЄ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permп
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeб
IdentityIdentitytranspose_1:y:0&^lstm_cell_102/StatefulPartitionedCall^while*
T0*5
_output_shapes#
!:                  А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:                  :::2N
%lstm_cell_102/StatefulPartitionedCall%lstm_cell_102/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
╫
И
O__inference_time_distributed_4_layer_call_and_return_conditional_losses_1214847

inputs*
&dense_9_matmul_readvariableop_resource+
'dense_9_biasadd_readvariableop_resource
identityИвdense_9/BiasAdd/ReadVariableOpвdense_9/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         @2	
Reshapeе
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_9/MatMul/ReadVariableOpХ
dense_9/MatMulMatMulReshape:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_9/MatMulд
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_9/BiasAdd/ReadVariableOpб
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_9/BiasAddw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          2
Reshape_1/shapeЛ
	Reshape_1Reshapedense_9/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         2
	Reshape_1л
IdentityIdentityReshape_1:output:0^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*2
_input_shapes!
:         @::2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
░
╚
while_cond_1217204
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1217204___redundant_placeholder05
1while_while_cond_1217204___redundant_placeholder15
1while_while_cond_1217204___redundant_placeholder25
1while_while_cond_1217204___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :         @:         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
┌M
И
while_body_1216101
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_08
4while_lstm_cell_102_matmul_readvariableop_resource_0:
6while_lstm_cell_102_matmul_1_readvariableop_resource_09
5while_lstm_cell_102_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor6
2while_lstm_cell_102_matmul_readvariableop_resource8
4while_lstm_cell_102_matmul_1_readvariableop_resource7
3while_lstm_cell_102_biasadd_readvariableop_resourceИв*while/lstm_cell_102/BiasAdd/ReadVariableOpв)while/lstm_cell_102/MatMul/ReadVariableOpв+while/lstm_cell_102/MatMul_1/ReadVariableOp├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem╠
)while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02+
)while/lstm_cell_102/MatMul/ReadVariableOp┌
while/lstm_cell_102/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/MatMul╙
+while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02-
+while/lstm_cell_102/MatMul_1/ReadVariableOp├
while/lstm_cell_102/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/MatMul_1╝
while/lstm_cell_102/addAddV2$while/lstm_cell_102/MatMul:product:0&while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/add╦
*while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02,
*while/lstm_cell_102/BiasAdd/ReadVariableOp╔
while/lstm_cell_102/BiasAddBiasAddwhile/lstm_cell_102/add:z:02while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/BiasAddx
while/lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_102/ConstМ
#while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_102/split/split_dimУ
while/lstm_cell_102/splitSplit,while/lstm_cell_102/split/split_dim:output:0$while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
while/lstm_cell_102/splitЬ
while/lstm_cell_102/SigmoidSigmoid"while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/Sigmoidа
while/lstm_cell_102/Sigmoid_1Sigmoid"while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/Sigmoid_1д
while/lstm_cell_102/mulMul!while/lstm_cell_102/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/mulа
while/lstm_cell_102/Sigmoid_2Sigmoid"while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/Sigmoid_2╖
while/lstm_cell_102/mul_1Mul"while/lstm_cell_102/split:output:2!while/lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/mul_1Ъ
while/lstm_cell_102/IdentityIdentitywhile/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/IdentityИ
while/lstm_cell_102/IdentityN	IdentityNwhile/lstm_cell_102/mul_1:z:0"while/lstm_cell_102/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1216144*<
_output_shapes*
(:         А:         А2
while/lstm_cell_102/IdentityN╣
while/lstm_cell_102/mul_2Mulwhile/lstm_cell_102/Sigmoid:y:0&while/lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/mul_2о
while/lstm_cell_102/add_1AddV2while/lstm_cell_102/mul:z:0while/lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/add_1а
while/lstm_cell_102/Sigmoid_3Sigmoid"while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/Sigmoid_3Ы
while/lstm_cell_102/Sigmoid_4Sigmoidwhile/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/Sigmoid_4▓
while/lstm_cell_102/mul_3Mulwhile/lstm_cell_102/add_1:z:0!while/lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/mul_3Ю
while/lstm_cell_102/Identity_1Identitywhile/lstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:         А2 
while/lstm_cell_102/Identity_1З
while/lstm_cell_102/IdentityN_1	IdentityNwhile/lstm_cell_102/mul_3:z:0while/lstm_cell_102/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1216153*<
_output_shapes*
(:         А:         А2!
while/lstm_cell_102/IdentityN_1╜
while/lstm_cell_102/mul_4Mul!while/lstm_cell_102/Sigmoid_3:y:0(while/lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_102/mul_4с
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_102/mul_4:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1х
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity°
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ч
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2Ф
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Й
while/Identity_4Identitywhile/lstm_cell_102/mul_4:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:         А2
while/Identity_4Й
while/Identity_5Identitywhile/lstm_cell_102/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:         А2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_102_biasadd_readvariableop_resource5while_lstm_cell_102_biasadd_readvariableop_resource_0"n
4while_lstm_cell_102_matmul_1_readvariableop_resource6while_lstm_cell_102_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_102_matmul_readvariableop_resource4while_lstm_cell_102_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :         А:         А: : :::2X
*while/lstm_cell_102/BiasAdd/ReadVariableOp*while/lstm_cell_102/BiasAdd/ReadVariableOp2V
)while/lstm_cell_102/MatMul/ReadVariableOp)while/lstm_cell_102/MatMul/ReadVariableOp2Z
+while/lstm_cell_102/MatMul_1/ReadVariableOp+while/lstm_cell_102/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
╫
И
O__inference_time_distributed_4_layer_call_and_return_conditional_losses_1217526

inputs*
&dense_9_matmul_readvariableop_resource+
'dense_9_biasadd_readvariableop_resource
identityИвdense_9/BiasAdd/ReadVariableOpвdense_9/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         @2	
Reshapeе
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_9/MatMul/ReadVariableOpХ
dense_9/MatMulMatMulReshape:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_9/MatMulд
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_9/BiasAdd/ReadVariableOpб
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_9/BiasAddw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          2
Reshape_1/shapeЛ
	Reshape_1Reshapedense_9/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         2
	Reshape_1л
IdentityIdentityReshape_1:output:0^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*2
_input_shapes!
:         @::2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
З

╘
lstm_5_while_cond_1215133*
&lstm_5_while_lstm_5_while_loop_counter0
,lstm_5_while_lstm_5_while_maximum_iterations
lstm_5_while_placeholder
lstm_5_while_placeholder_1
lstm_5_while_placeholder_2
lstm_5_while_placeholder_3,
(lstm_5_while_less_lstm_5_strided_slice_1C
?lstm_5_while_lstm_5_while_cond_1215133___redundant_placeholder0C
?lstm_5_while_lstm_5_while_cond_1215133___redundant_placeholder1C
?lstm_5_while_lstm_5_while_cond_1215133___redundant_placeholder2C
?lstm_5_while_lstm_5_while_cond_1215133___redundant_placeholder3
lstm_5_while_identity
У
lstm_5/while/LessLesslstm_5_while_placeholder(lstm_5_while_less_lstm_5_strided_slice_1*
T0*
_output_shapes
: 2
lstm_5/while/Lessr
lstm_5/while/IdentityIdentitylstm_5/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_5/while/Identity"7
lstm_5_while_identitylstm_5/while/Identity:output:0*U
_input_shapesD
B: : : : :         А:         А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
└M
И
while_body_1217205
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_08
4while_lstm_cell_103_matmul_readvariableop_resource_0:
6while_lstm_cell_103_matmul_1_readvariableop_resource_09
5while_lstm_cell_103_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor6
2while_lstm_cell_103_matmul_readvariableop_resource8
4while_lstm_cell_103_matmul_1_readvariableop_resource7
3while_lstm_cell_103_biasadd_readvariableop_resourceИв*while/lstm_cell_103/BiasAdd/ReadVariableOpв)while/lstm_cell_103/MatMul/ReadVariableOpв+while/lstm_cell_103/MatMul_1/ReadVariableOp├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╘
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem═
)while/lstm_cell_103/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_103_matmul_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02+
)while/lstm_cell_103/MatMul/ReadVariableOp┌
while/lstm_cell_103/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_103/MatMul╥
+while/lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_103_matmul_1_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02-
+while/lstm_cell_103/MatMul_1/ReadVariableOp├
while/lstm_cell_103/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_103/MatMul_1╝
while/lstm_cell_103/addAddV2$while/lstm_cell_103/MatMul:product:0&while/lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_103/add╦
*while/lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_103_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02,
*while/lstm_cell_103/BiasAdd/ReadVariableOp╔
while/lstm_cell_103/BiasAddBiasAddwhile/lstm_cell_103/add:z:02while/lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_103/BiasAddx
while/lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_103/ConstМ
#while/lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_103/split/split_dimП
while/lstm_cell_103/splitSplit,while/lstm_cell_103/split/split_dim:output:0$while/lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
while/lstm_cell_103/splitЫ
while/lstm_cell_103/SigmoidSigmoid"while/lstm_cell_103/split:output:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/SigmoidЯ
while/lstm_cell_103/Sigmoid_1Sigmoid"while/lstm_cell_103/split:output:1*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/Sigmoid_1г
while/lstm_cell_103/mulMul!while/lstm_cell_103/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/mulЯ
while/lstm_cell_103/Sigmoid_2Sigmoid"while/lstm_cell_103/split:output:2*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/Sigmoid_2╢
while/lstm_cell_103/mul_1Mul"while/lstm_cell_103/split:output:2!while/lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/mul_1Щ
while/lstm_cell_103/IdentityIdentitywhile/lstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/IdentityЖ
while/lstm_cell_103/IdentityN	IdentityNwhile/lstm_cell_103/mul_1:z:0"while/lstm_cell_103/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1217248*:
_output_shapes(
&:         @:         @2
while/lstm_cell_103/IdentityN╕
while/lstm_cell_103/mul_2Mulwhile/lstm_cell_103/Sigmoid:y:0&while/lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/mul_2н
while/lstm_cell_103/add_1AddV2while/lstm_cell_103/mul:z:0while/lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/add_1Я
while/lstm_cell_103/Sigmoid_3Sigmoid"while/lstm_cell_103/split:output:3*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/Sigmoid_3Ъ
while/lstm_cell_103/Sigmoid_4Sigmoidwhile/lstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/Sigmoid_4▒
while/lstm_cell_103/mul_3Mulwhile/lstm_cell_103/add_1:z:0!while/lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/mul_3Э
while/lstm_cell_103/Identity_1Identitywhile/lstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:         @2 
while/lstm_cell_103/Identity_1Е
while/lstm_cell_103/IdentityN_1	IdentityNwhile/lstm_cell_103/mul_3:z:0while/lstm_cell_103/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1217257*:
_output_shapes(
&:         @:         @2!
while/lstm_cell_103/IdentityN_1╝
while/lstm_cell_103/mul_4Mul!while/lstm_cell_103/Sigmoid_3:y:0(while/lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_103/mul_4с
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_103/mul_4:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1х
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity°
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ч
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2Ф
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3И
while/Identity_4Identitywhile/lstm_cell_103/mul_4:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:         @2
while/Identity_4И
while/Identity_5Identitywhile/lstm_cell_103/add_1:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:         @2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_103_biasadd_readvariableop_resource5while_lstm_cell_103_biasadd_readvariableop_resource_0"n
4while_lstm_cell_103_matmul_1_readvariableop_resource6while_lstm_cell_103_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_103_matmul_readvariableop_resource4while_lstm_cell_103_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :         @:         @: : :::2X
*while/lstm_cell_103/BiasAdd/ReadVariableOp*while/lstm_cell_103/BiasAdd/ReadVariableOp2V
)while/lstm_cell_103/MatMul/ReadVariableOp)while/lstm_cell_103/MatMul/ReadVariableOp2Z
+while/lstm_cell_103/MatMul_1/ReadVariableOp+while/lstm_cell_103/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
┤
╚
while_cond_1216468
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1216468___redundant_placeholder05
1while_while_cond_1216468___redundant_placeholder15
1while_while_cond_1216468___redundant_placeholder25
1while_while_cond_1216468___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :         А:         А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
Ш
║
O__inference_time_distributed_3_layer_call_and_return_conditional_losses_1213844

inputs
dense_8_1213834
dense_8_1213836
identityИвdense_8/StatefulPartitionedCallD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         @2	
ReshapeЬ
dense_8/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_8_1213834dense_8_1213836*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_12137802!
dense_8/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2
Reshape_1/shape/2и
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shapeд
	Reshape_1Reshape(dense_8/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  @2
	Reshape_1Х
IdentityIdentityReshape_1:output:0 ^dense_8/StatefulPartitionedCall*
T0*4
_output_shapes"
 :                  @2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:                  @::2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall:\ X
4
_output_shapes"
 :                  @
 
_user_specified_nameinputs"▒L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╟
serving_default│
I
lstm_5_input9
serving_default_lstm_5_input:0         J
time_distributed_44
StatefulPartitionedCall:0         tensorflow/serving/predict:╗▄
щ;
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer

signatures
#_self_saveable_object_factories
	variables
	regularization_losses

trainable_variables
	keras_api
Э__call__
+Ю&call_and_return_all_conditional_losses
Я_default_save_signature"┌8
_tf_keras_sequential╗8{"class_name": "Sequential", "name": "sequential_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 24, 19]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_5_input"}}, {"class_name": "LSTM", "config": {"name": "lstm_5", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "LSTM", "config": {"name": "lstm_6", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_3", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_4", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}}]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 19]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 19]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 24, 19]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_5_input"}}, {"class_name": "LSTM", "config": {"name": "lstm_5", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "LSTM", "config": {"name": "lstm_6", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_3", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_4", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}}]}}, "training_config": {"loss": {"class_name": "MeanAbsoluteError", "config": {"reduction": "auto", "name": "mean_absolute_error"}}, "metrics": [[{"class_name": "MeanSquaredLogarithmicError", "config": {"name": "mean_squared_logarithmic_error", "dtype": "float32"}}, {"class_name": "MeanSquaredError", "config": {"name": "mean_squared_error", "dtype": "float32"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
х
cell

state_spec
#_self_saveable_object_factories
	variables
regularization_losses
trainable_variables
	keras_api
а__call__
+б&call_and_return_all_conditional_losses"Х

_tf_keras_rnn_layerў	{"class_name": "LSTM", "name": "lstm_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_5", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 19]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 19]}}
ц
cell

state_spec
#_self_saveable_object_factories
	variables
regularization_losses
trainable_variables
	keras_api
в__call__
+г&call_and_return_all_conditional_losses"Ц

_tf_keras_rnn_layer°	{"class_name": "LSTM", "name": "lstm_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_6", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 128]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 128]}}
┬	
	layer
#_self_saveable_object_factories
regularization_losses
	variables
trainable_variables
	keras_api
д__call__
+е&call_and_return_all_conditional_losses"Б
_tf_keras_layerч{"class_name": "TimeDistributed", "name": "time_distributed_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "time_distributed_3", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 64]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 64]}}
├	
	 layer
#!_self_saveable_object_factories
"regularization_losses
#	variables
$trainable_variables
%	keras_api
ж__call__
+з&call_and_return_all_conditional_losses"В
_tf_keras_layerш{"class_name": "TimeDistributed", "name": "time_distributed_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "time_distributed_4", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 64]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 64]}}
Ы
&iter

'beta_1

(beta_2
	)decay
*learning_rate+mЙ,mК-mЛ.mМ/mН0mО1mП2mР3mС4mТ+vУ,vФ-vХ.vЦ/vЧ0vШ1vЩ2vЪ3vЫ4vЬ"
	optimizer
-
иserving_default"
signature_map
 "
trackable_dict_wrapper
f
+0
,1
-2
.3
/4
05
16
27
38
49"
trackable_list_wrapper
 "
trackable_list_wrapper
f
+0
,1
-2
.3
/4
05
16
27
38
49"
trackable_list_wrapper
╬
5layer_metrics
6layer_regularization_losses
	variables
7non_trainable_variables
8metrics
	regularization_losses

trainable_variables

9layers
Э__call__
Я_default_save_signature
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses"
_generic_user_object
╒

+kernel
,recurrent_kernel
-bias
#:_self_saveable_object_factories
;regularization_losses
<	variables
=trainable_variables
>	keras_api
й__call__
+к&call_and_return_all_conditional_losses"є
_tf_keras_layer┘{"class_name": "LSTMCell", "name": "lstm_cell_102", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell_102", "trainable": true, "dtype": "float32", "units": 128, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
+0
,1
-2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
╝
?layer_metrics
@layer_regularization_losses
	variables
Anon_trainable_variables

Bstates
Cmetrics
regularization_losses
trainable_variables

Dlayers
а__call__
+б&call_and_return_all_conditional_losses
'б"call_and_return_conditional_losses"
_generic_user_object
╘

.kernel
/recurrent_kernel
0bias
#E_self_saveable_object_factories
Fregularization_losses
G	variables
Htrainable_variables
I	keras_api
л__call__
+м&call_and_return_all_conditional_losses"Є
_tf_keras_layer╪{"class_name": "LSTMCell", "name": "lstm_cell_103", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell_103", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
.0
/1
02"
trackable_list_wrapper
 "
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
╝
Jlayer_metrics
Klayer_regularization_losses
	variables
Lnon_trainable_variables

Mstates
Nmetrics
regularization_losses
trainable_variables

Olayers
в__call__
+г&call_and_return_all_conditional_losses
'г"call_and_return_conditional_losses"
_generic_user_object
╧

1kernel
2bias
#P_self_saveable_object_factories
Qregularization_losses
R	variables
Strainable_variables
T	keras_api
н__call__
+о&call_and_return_all_conditional_losses"Г
_tf_keras_layerщ{"class_name": "Dense", "name": "dense_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}}
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
░
Ulayer_metrics
Vlayer_regularization_losses
Wmetrics
regularization_losses
Xnon_trainable_variables
	variables
trainable_variables

Ylayers
д__call__
+е&call_and_return_all_conditional_losses
'е"call_and_return_conditional_losses"
_generic_user_object
╨

3kernel
4bias
#Z_self_saveable_object_factories
[regularization_losses
\	variables
]trainable_variables
^	keras_api
п__call__
+░&call_and_return_all_conditional_losses"Д
_tf_keras_layerъ{"class_name": "Dense", "name": "dense_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}}
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
░
_layer_metrics
`layer_regularization_losses
ametrics
"regularization_losses
bnon_trainable_variables
#	variables
$trainable_variables

clayers
ж__call__
+з&call_and_return_all_conditional_losses
'з"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
,:*	А2lstm_5/lstm_cell_5/kernel
7:5
АА2#lstm_5/lstm_cell_5/recurrent_kernel
&:$А2lstm_5/lstm_cell_5/bias
-:+
АА2lstm_6/lstm_cell_6/kernel
6:4	@А2#lstm_6/lstm_cell_6/recurrent_kernel
&:$А2lstm_6/lstm_cell_6/bias
+:)@@2time_distributed_3/kernel
%:#@2time_distributed_3/bias
+:)@2time_distributed_4/kernel
%:#2time_distributed_4/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
d0
e1
f2"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
░
glayer_metrics
hlayer_regularization_losses
imetrics
;regularization_losses
jnon_trainable_variables
<	variables
=trainable_variables

klayers
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
░
llayer_metrics
mlayer_regularization_losses
nmetrics
Fregularization_losses
onon_trainable_variables
G	variables
Htrainable_variables

players
л__call__
+м&call_and_return_all_conditional_losses
'м"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
░
qlayer_metrics
rlayer_regularization_losses
smetrics
Qregularization_losses
tnon_trainable_variables
R	variables
Strainable_variables

ulayers
н__call__
+о&call_and_return_all_conditional_losses
'о"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
░
vlayer_metrics
wlayer_regularization_losses
xmetrics
[regularization_losses
ynon_trainable_variables
\	variables
]trainable_variables

zlayers
п__call__
+░&call_and_return_all_conditional_losses
'░"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
 0"
trackable_list_wrapper
╗
	{total
	|count
}	variables
~	keras_api"Д
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
Ы
	total

Аcount
Б
_fn_kwargs
В	variables
Г	keras_api"╨
_tf_keras_metric╡{"class_name": "MeanSquaredLogarithmicError", "name": "mean_squared_logarithmic_error", "dtype": "float32", "config": {"name": "mean_squared_logarithmic_error", "dtype": "float32"}}
∙

Дtotal

Еcount
Ж
_fn_kwargs
З	variables
И	keras_api"н
_tf_keras_metricТ{"class_name": "MeanSquaredError", "name": "mean_squared_error", "dtype": "float32", "config": {"name": "mean_squared_error", "dtype": "float32"}}
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
.
{0
|1"
trackable_list_wrapper
-
}	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
/
0
А1"
trackable_list_wrapper
.
В	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Д0
Е1"
trackable_list_wrapper
.
З	variables"
_generic_user_object
1:/	А2 Adam/lstm_5/lstm_cell_5/kernel/m
<::
АА2*Adam/lstm_5/lstm_cell_5/recurrent_kernel/m
+:)А2Adam/lstm_5/lstm_cell_5/bias/m
2:0
АА2 Adam/lstm_6/lstm_cell_6/kernel/m
;:9	@А2*Adam/lstm_6/lstm_cell_6/recurrent_kernel/m
+:)А2Adam/lstm_6/lstm_cell_6/bias/m
0:.@@2 Adam/time_distributed_3/kernel/m
*:(@2Adam/time_distributed_3/bias/m
0:.@2 Adam/time_distributed_4/kernel/m
*:(2Adam/time_distributed_4/bias/m
1:/	А2 Adam/lstm_5/lstm_cell_5/kernel/v
<::
АА2*Adam/lstm_5/lstm_cell_5/recurrent_kernel/v
+:)А2Adam/lstm_5/lstm_cell_5/bias/v
2:0
АА2 Adam/lstm_6/lstm_cell_6/kernel/v
;:9	@А2*Adam/lstm_6/lstm_cell_6/recurrent_kernel/v
+:)А2Adam/lstm_6/lstm_cell_6/bias/v
0:.@@2 Adam/time_distributed_3/kernel/v
*:(@2Adam/time_distributed_3/bias/v
0:.@2 Adam/time_distributed_4/kernel/v
*:(2Adam/time_distributed_4/bias/v
Ж2Г
.__inference_sequential_3_layer_call_fn_1215021
.__inference_sequential_3_layer_call_fn_1215850
.__inference_sequential_3_layer_call_fn_1214964
.__inference_sequential_3_layer_call_fn_1215825└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Є2я
I__inference_sequential_3_layer_call_and_return_conditional_losses_1215428
I__inference_sequential_3_layer_call_and_return_conditional_losses_1215800
I__inference_sequential_3_layer_call_and_return_conditional_losses_1214874
I__inference_sequential_3_layer_call_and_return_conditional_losses_1214906└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
щ2ц
"__inference__wrapped_model_1212493┐
Л▓З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк */в,
*К'
lstm_5_input         
Г2А
(__inference_lstm_5_layer_call_fn_1216218
(__inference_lstm_5_layer_call_fn_1216586
(__inference_lstm_5_layer_call_fn_1216575
(__inference_lstm_5_layer_call_fn_1216207╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
я2ь
C__inference_lstm_5_layer_call_and_return_conditional_losses_1216196
C__inference_lstm_5_layer_call_and_return_conditional_losses_1216564
C__inference_lstm_5_layer_call_and_return_conditional_losses_1216023
C__inference_lstm_5_layer_call_and_return_conditional_losses_1216391╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Г2А
(__inference_lstm_6_layer_call_fn_1216954
(__inference_lstm_6_layer_call_fn_1216943
(__inference_lstm_6_layer_call_fn_1217311
(__inference_lstm_6_layer_call_fn_1217322╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
я2ь
C__inference_lstm_6_layer_call_and_return_conditional_losses_1217127
C__inference_lstm_6_layer_call_and_return_conditional_losses_1216932
C__inference_lstm_6_layer_call_and_return_conditional_losses_1217300
C__inference_lstm_6_layer_call_and_return_conditional_losses_1216759╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ю2Ы
4__inference_time_distributed_3_layer_call_fn_1217443
4__inference_time_distributed_3_layer_call_fn_1217452
4__inference_time_distributed_3_layer_call_fn_1217385
4__inference_time_distributed_3_layer_call_fn_1217394└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
К2З
O__inference_time_distributed_3_layer_call_and_return_conditional_losses_1217349
O__inference_time_distributed_3_layer_call_and_return_conditional_losses_1217414
O__inference_time_distributed_3_layer_call_and_return_conditional_losses_1217376
O__inference_time_distributed_3_layer_call_and_return_conditional_losses_1217434└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ю2Ы
4__inference_time_distributed_4_layer_call_fn_1217503
4__inference_time_distributed_4_layer_call_fn_1217549
4__inference_time_distributed_4_layer_call_fn_1217558
4__inference_time_distributed_4_layer_call_fn_1217512└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
К2З
O__inference_time_distributed_4_layer_call_and_return_conditional_losses_1217473
O__inference_time_distributed_4_layer_call_and_return_conditional_losses_1217526
O__inference_time_distributed_4_layer_call_and_return_conditional_losses_1217540
O__inference_time_distributed_4_layer_call_and_return_conditional_losses_1217494└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╤B╬
%__inference_signature_wrapper_1215056lstm_5_input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ж2г
/__inference_lstm_cell_102_layer_call_fn_1217661
/__inference_lstm_cell_102_layer_call_fn_1217678╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
▄2┘
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_1217601
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_1217644╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ж2г
/__inference_lstm_cell_103_layer_call_fn_1217781
/__inference_lstm_cell_103_layer_call_fn_1217798╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
▄2┘
J__inference_lstm_cell_103_layer_call_and_return_conditional_losses_1217721
J__inference_lstm_cell_103_layer_call_and_return_conditional_losses_1217764╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╙2╨
)__inference_dense_8_layer_call_fn_1217823в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ю2ы
D__inference_dense_8_layer_call_and_return_conditional_losses_1217814в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╙2╨
)__inference_dense_9_layer_call_fn_1217842в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ю2ы
D__inference_dense_9_layer_call_and_return_conditional_losses_1217833в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 ╗
"__inference__wrapped_model_1212493Ф
+,-./012349в6
/в,
*К'
lstm_5_input         
к "KкH
F
time_distributed_40К-
time_distributed_4         д
D__inference_dense_8_layer_call_and_return_conditional_losses_1217814\12/в,
%в"
 К
inputs         @
к "%в"
К
0         @
Ъ |
)__inference_dense_8_layer_call_fn_1217823O12/в,
%в"
 К
inputs         @
к "К         @д
D__inference_dense_9_layer_call_and_return_conditional_losses_1217833\34/в,
%в"
 К
inputs         @
к "%в"
К
0         
Ъ |
)__inference_dense_9_layer_call_fn_1217842O34/в,
%в"
 К
inputs         @
к "К         ╣
C__inference_lstm_5_layer_call_and_return_conditional_losses_1216023r+,-?в<
5в2
$К!
inputs         

 
p

 
к "*в'
 К
0         А
Ъ ╣
C__inference_lstm_5_layer_call_and_return_conditional_losses_1216196r+,-?в<
5в2
$К!
inputs         

 
p 

 
к "*в'
 К
0         А
Ъ ╙
C__inference_lstm_5_layer_call_and_return_conditional_losses_1216391Л+,-OвL
EвB
4Ъ1
/К,
inputs/0                  

 
p

 
к "3в0
)К&
0                  А
Ъ ╙
C__inference_lstm_5_layer_call_and_return_conditional_losses_1216564Л+,-OвL
EвB
4Ъ1
/К,
inputs/0                  

 
p 

 
к "3в0
)К&
0                  А
Ъ С
(__inference_lstm_5_layer_call_fn_1216207e+,-?в<
5в2
$К!
inputs         

 
p

 
к "К         АС
(__inference_lstm_5_layer_call_fn_1216218e+,-?в<
5в2
$К!
inputs         

 
p 

 
к "К         Ак
(__inference_lstm_5_layer_call_fn_1216575~+,-OвL
EвB
4Ъ1
/К,
inputs/0                  

 
p

 
к "&К#                  Ак
(__inference_lstm_5_layer_call_fn_1216586~+,-OвL
EвB
4Ъ1
/К,
inputs/0                  

 
p 

 
к "&К#                  А╣
C__inference_lstm_6_layer_call_and_return_conditional_losses_1216759r./0@в=
6в3
%К"
inputs         А

 
p

 
к ")в&
К
0         @
Ъ ╣
C__inference_lstm_6_layer_call_and_return_conditional_losses_1216932r./0@в=
6в3
%К"
inputs         А

 
p 

 
к ")в&
К
0         @
Ъ ╙
C__inference_lstm_6_layer_call_and_return_conditional_losses_1217127Л./0PвM
FвC
5Ъ2
0К-
inputs/0                  А

 
p

 
к "2в/
(К%
0                  @
Ъ ╙
C__inference_lstm_6_layer_call_and_return_conditional_losses_1217300Л./0PвM
FвC
5Ъ2
0К-
inputs/0                  А

 
p 

 
к "2в/
(К%
0                  @
Ъ С
(__inference_lstm_6_layer_call_fn_1216943e./0@в=
6в3
%К"
inputs         А

 
p

 
к "К         @С
(__inference_lstm_6_layer_call_fn_1216954e./0@в=
6в3
%К"
inputs         А

 
p 

 
к "К         @к
(__inference_lstm_6_layer_call_fn_1217311~./0PвM
FвC
5Ъ2
0К-
inputs/0                  А

 
p

 
к "%К"                  @к
(__inference_lstm_6_layer_call_fn_1217322~./0PвM
FвC
5Ъ2
0К-
inputs/0                  А

 
p 

 
к "%К"                  @╤
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_1217601В+,-Вв
xвu
 К
inputs         
MвJ
#К 
states/0         А
#К 
states/1         А
p
к "vвs
lвi
К
0/0         А
GЪD
 К
0/1/0         А
 К
0/1/1         А
Ъ ╤
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_1217644В+,-Вв
xвu
 К
inputs         
MвJ
#К 
states/0         А
#К 
states/1         А
p 
к "vвs
lвi
К
0/0         А
GЪD
 К
0/1/0         А
 К
0/1/1         А
Ъ ж
/__inference_lstm_cell_102_layer_call_fn_1217661Є+,-Вв
xвu
 К
inputs         
MвJ
#К 
states/0         А
#К 
states/1         А
p
к "fвc
К
0         А
CЪ@
К
1/0         А
К
1/1         Аж
/__inference_lstm_cell_102_layer_call_fn_1217678Є+,-Вв
xвu
 К
inputs         
MвJ
#К 
states/0         А
#К 
states/1         А
p 
к "fвc
К
0         А
CЪ@
К
1/0         А
К
1/1         А═
J__inference_lstm_cell_103_layer_call_and_return_conditional_losses_1217721■./0Бв~
wвt
!К
inputs         А
KвH
"К
states/0         @
"К
states/1         @
p
к "sвp
iвf
К
0/0         @
EЪB
К
0/1/0         @
К
0/1/1         @
Ъ ═
J__inference_lstm_cell_103_layer_call_and_return_conditional_losses_1217764■./0Бв~
wвt
!К
inputs         А
KвH
"К
states/0         @
"К
states/1         @
p 
к "sвp
iвf
К
0/0         @
EЪB
К
0/1/0         @
К
0/1/1         @
Ъ в
/__inference_lstm_cell_103_layer_call_fn_1217781ю./0Бв~
wвt
!К
inputs         А
KвH
"К
states/0         @
"К
states/1         @
p
к "cв`
К
0         @
AЪ>
К
1/0         @
К
1/1         @в
/__inference_lstm_cell_103_layer_call_fn_1217798ю./0Бв~
wвt
!К
inputs         А
KвH
"К
states/0         @
"К
states/1         @
p 
к "cв`
К
0         @
AЪ>
К
1/0         @
К
1/1         @╟
I__inference_sequential_3_layer_call_and_return_conditional_losses_1214874z
+,-./01234Aв>
7в4
*К'
lstm_5_input         
p

 
к ")в&
К
0         
Ъ ╟
I__inference_sequential_3_layer_call_and_return_conditional_losses_1214906z
+,-./01234Aв>
7в4
*К'
lstm_5_input         
p 

 
к ")в&
К
0         
Ъ ┴
I__inference_sequential_3_layer_call_and_return_conditional_losses_1215428t
+,-./01234;в8
1в.
$К!
inputs         
p

 
к ")в&
К
0         
Ъ ┴
I__inference_sequential_3_layer_call_and_return_conditional_losses_1215800t
+,-./01234;в8
1в.
$К!
inputs         
p 

 
к ")в&
К
0         
Ъ Я
.__inference_sequential_3_layer_call_fn_1214964m
+,-./01234Aв>
7в4
*К'
lstm_5_input         
p

 
к "К         Я
.__inference_sequential_3_layer_call_fn_1215021m
+,-./01234Aв>
7в4
*К'
lstm_5_input         
p 

 
к "К         Щ
.__inference_sequential_3_layer_call_fn_1215825g
+,-./01234;в8
1в.
$К!
inputs         
p

 
к "К         Щ
.__inference_sequential_3_layer_call_fn_1215850g
+,-./01234;в8
1в.
$К!
inputs         
p 

 
к "К         ╬
%__inference_signature_wrapper_1215056д
+,-./01234IвF
в 
?к<
:
lstm_5_input*К'
lstm_5_input         "KкH
F
time_distributed_40К-
time_distributed_4         ╤
O__inference_time_distributed_3_layer_call_and_return_conditional_losses_1217349~12DвA
:в7
-К*
inputs                  @
p

 
к "2в/
(К%
0                  @
Ъ ╤
O__inference_time_distributed_3_layer_call_and_return_conditional_losses_1217376~12DвA
:в7
-К*
inputs                  @
p 

 
к "2в/
(К%
0                  @
Ъ ┐
O__inference_time_distributed_3_layer_call_and_return_conditional_losses_1217414l12;в8
1в.
$К!
inputs         @
p

 
к ")в&
К
0         @
Ъ ┐
O__inference_time_distributed_3_layer_call_and_return_conditional_losses_1217434l12;в8
1в.
$К!
inputs         @
p 

 
к ")в&
К
0         @
Ъ й
4__inference_time_distributed_3_layer_call_fn_1217385q12DвA
:в7
-К*
inputs                  @
p

 
к "%К"                  @й
4__inference_time_distributed_3_layer_call_fn_1217394q12DвA
:в7
-К*
inputs                  @
p 

 
к "%К"                  @Ч
4__inference_time_distributed_3_layer_call_fn_1217443_12;в8
1в.
$К!
inputs         @
p

 
к "К         @Ч
4__inference_time_distributed_3_layer_call_fn_1217452_12;в8
1в.
$К!
inputs         @
p 

 
к "К         @╤
O__inference_time_distributed_4_layer_call_and_return_conditional_losses_1217473~34DвA
:в7
-К*
inputs                  @
p

 
к "2в/
(К%
0                  
Ъ ╤
O__inference_time_distributed_4_layer_call_and_return_conditional_losses_1217494~34DвA
:в7
-К*
inputs                  @
p 

 
к "2в/
(К%
0                  
Ъ ┐
O__inference_time_distributed_4_layer_call_and_return_conditional_losses_1217526l34;в8
1в.
$К!
inputs         @
p

 
к ")в&
К
0         
Ъ ┐
O__inference_time_distributed_4_layer_call_and_return_conditional_losses_1217540l34;в8
1в.
$К!
inputs         @
p 

 
к ")в&
К
0         
Ъ й
4__inference_time_distributed_4_layer_call_fn_1217503q34DвA
:в7
-К*
inputs                  @
p

 
к "%К"                  й
4__inference_time_distributed_4_layer_call_fn_1217512q34DвA
:в7
-К*
inputs                  @
p 

 
к "%К"                  Ч
4__inference_time_distributed_4_layer_call_fn_1217549_34;в8
1в.
$К!
inputs         @
p

 
к "К         Ч
4__inference_time_distributed_4_layer_call_fn_1217558_34;в8
1в.
$К!
inputs         @
p 

 
к "К         