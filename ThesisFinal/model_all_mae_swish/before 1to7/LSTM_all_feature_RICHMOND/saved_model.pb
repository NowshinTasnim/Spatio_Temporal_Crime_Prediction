̗/
??
B
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
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
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
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
?"serve*2.4.12v2.4.1-0-g85c8b2a817f8??,
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
?
lstm_5/lstm_cell_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?**
shared_namelstm_5/lstm_cell_5/kernel
?
-lstm_5/lstm_cell_5/kernel/Read/ReadVariableOpReadVariableOplstm_5/lstm_cell_5/kernel*
_output_shapes
:	?*
dtype0
?
#lstm_5/lstm_cell_5/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*4
shared_name%#lstm_5/lstm_cell_5/recurrent_kernel
?
7lstm_5/lstm_cell_5/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_5/lstm_cell_5/recurrent_kernel* 
_output_shapes
:
??*
dtype0
?
lstm_5/lstm_cell_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_namelstm_5/lstm_cell_5/bias
?
+lstm_5/lstm_cell_5/bias/Read/ReadVariableOpReadVariableOplstm_5/lstm_cell_5/bias*
_output_shapes	
:?*
dtype0
?
lstm_6/lstm_cell_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??**
shared_namelstm_6/lstm_cell_6/kernel
?
-lstm_6/lstm_cell_6/kernel/Read/ReadVariableOpReadVariableOplstm_6/lstm_cell_6/kernel* 
_output_shapes
:
??*
dtype0
?
#lstm_6/lstm_cell_6/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*4
shared_name%#lstm_6/lstm_cell_6/recurrent_kernel
?
7lstm_6/lstm_cell_6/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_6/lstm_cell_6/recurrent_kernel*
_output_shapes
:	@?*
dtype0
?
lstm_6/lstm_cell_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_namelstm_6/lstm_cell_6/bias
?
+lstm_6/lstm_cell_6/bias/Read/ReadVariableOpReadVariableOplstm_6/lstm_cell_6/bias*
_output_shapes	
:?*
dtype0
?
time_distributed_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@**
shared_nametime_distributed_3/kernel
?
-time_distributed_3/kernel/Read/ReadVariableOpReadVariableOptime_distributed_3/kernel*
_output_shapes

:@@*
dtype0
?
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
?
time_distributed_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@**
shared_nametime_distributed_4/kernel
?
-time_distributed_4/kernel/Read/ReadVariableOpReadVariableOptime_distributed_4/kernel*
_output_shapes

:@*
dtype0
?
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
?
 Adam/lstm_5/lstm_cell_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*1
shared_name" Adam/lstm_5/lstm_cell_5/kernel/m
?
4Adam/lstm_5/lstm_cell_5/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_5/lstm_cell_5/kernel/m*
_output_shapes
:	?*
dtype0
?
*Adam/lstm_5/lstm_cell_5/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*;
shared_name,*Adam/lstm_5/lstm_cell_5/recurrent_kernel/m
?
>Adam/lstm_5/lstm_cell_5/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_5/lstm_cell_5/recurrent_kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/lstm_5/lstm_cell_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/lstm_5/lstm_cell_5/bias/m
?
2Adam/lstm_5/lstm_cell_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_5/lstm_cell_5/bias/m*
_output_shapes	
:?*
dtype0
?
 Adam/lstm_6/lstm_cell_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*1
shared_name" Adam/lstm_6/lstm_cell_6/kernel/m
?
4Adam/lstm_6/lstm_cell_6/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_6/lstm_cell_6/kernel/m* 
_output_shapes
:
??*
dtype0
?
*Adam/lstm_6/lstm_cell_6/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*;
shared_name,*Adam/lstm_6/lstm_cell_6/recurrent_kernel/m
?
>Adam/lstm_6/lstm_cell_6/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_6/lstm_cell_6/recurrent_kernel/m*
_output_shapes
:	@?*
dtype0
?
Adam/lstm_6/lstm_cell_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/lstm_6/lstm_cell_6/bias/m
?
2Adam/lstm_6/lstm_cell_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_6/lstm_cell_6/bias/m*
_output_shapes	
:?*
dtype0
?
 Adam/time_distributed_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*1
shared_name" Adam/time_distributed_3/kernel/m
?
4Adam/time_distributed_3/kernel/m/Read/ReadVariableOpReadVariableOp Adam/time_distributed_3/kernel/m*
_output_shapes

:@@*
dtype0
?
Adam/time_distributed_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/time_distributed_3/bias/m
?
2Adam/time_distributed_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/time_distributed_3/bias/m*
_output_shapes
:@*
dtype0
?
 Adam/time_distributed_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*1
shared_name" Adam/time_distributed_4/kernel/m
?
4Adam/time_distributed_4/kernel/m/Read/ReadVariableOpReadVariableOp Adam/time_distributed_4/kernel/m*
_output_shapes

:@*
dtype0
?
Adam/time_distributed_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/time_distributed_4/bias/m
?
2Adam/time_distributed_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/time_distributed_4/bias/m*
_output_shapes
:*
dtype0
?
 Adam/lstm_5/lstm_cell_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*1
shared_name" Adam/lstm_5/lstm_cell_5/kernel/v
?
4Adam/lstm_5/lstm_cell_5/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_5/lstm_cell_5/kernel/v*
_output_shapes
:	?*
dtype0
?
*Adam/lstm_5/lstm_cell_5/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*;
shared_name,*Adam/lstm_5/lstm_cell_5/recurrent_kernel/v
?
>Adam/lstm_5/lstm_cell_5/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_5/lstm_cell_5/recurrent_kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/lstm_5/lstm_cell_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/lstm_5/lstm_cell_5/bias/v
?
2Adam/lstm_5/lstm_cell_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_5/lstm_cell_5/bias/v*
_output_shapes	
:?*
dtype0
?
 Adam/lstm_6/lstm_cell_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*1
shared_name" Adam/lstm_6/lstm_cell_6/kernel/v
?
4Adam/lstm_6/lstm_cell_6/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_6/lstm_cell_6/kernel/v* 
_output_shapes
:
??*
dtype0
?
*Adam/lstm_6/lstm_cell_6/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*;
shared_name,*Adam/lstm_6/lstm_cell_6/recurrent_kernel/v
?
>Adam/lstm_6/lstm_cell_6/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_6/lstm_cell_6/recurrent_kernel/v*
_output_shapes
:	@?*
dtype0
?
Adam/lstm_6/lstm_cell_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/lstm_6/lstm_cell_6/bias/v
?
2Adam/lstm_6/lstm_cell_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_6/lstm_cell_6/bias/v*
_output_shapes	
:?*
dtype0
?
 Adam/time_distributed_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*1
shared_name" Adam/time_distributed_3/kernel/v
?
4Adam/time_distributed_3/kernel/v/Read/ReadVariableOpReadVariableOp Adam/time_distributed_3/kernel/v*
_output_shapes

:@@*
dtype0
?
Adam/time_distributed_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/time_distributed_3/bias/v
?
2Adam/time_distributed_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/time_distributed_3/bias/v*
_output_shapes
:@*
dtype0
?
 Adam/time_distributed_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*1
shared_name" Adam/time_distributed_4/kernel/v
?
4Adam/time_distributed_4/kernel/v/Read/ReadVariableOpReadVariableOp Adam/time_distributed_4/kernel/v*
_output_shapes

:@*
dtype0
?
Adam/time_distributed_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/time_distributed_4/bias/v
?
2Adam/time_distributed_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/time_distributed_4/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?C
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?C
value?CB?C B?C
?
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
?
cell

state_spec
#_self_saveable_object_factories
	variables
regularization_losses
trainable_variables
	keras_api
?
cell

state_spec
#_self_saveable_object_factories
	variables
regularization_losses
trainable_variables
	keras_api
?
	layer
#_self_saveable_object_factories
regularization_losses
	variables
trainable_variables
	keras_api
?
	 layer
#!_self_saveable_object_factories
"regularization_losses
#	variables
$trainable_variables
%	keras_api
?
&iter

'beta_1

(beta_2
	)decay
*learning_rate+m?,m?-m?.m?/m?0m?1m?2m?3m?4m?+v?,v?-v?.v?/v?0v?1v?2v?3v?4v?
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
?
5layer_metrics
6layer_regularization_losses
	variables
7non_trainable_variables
8metrics
	regularization_losses

trainable_variables

9layers
?

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
?
?layer_metrics
@layer_regularization_losses
	variables
Anon_trainable_variables

Bstates
Cmetrics
regularization_losses
trainable_variables

Dlayers
?

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
?
Jlayer_metrics
Klayer_regularization_losses
	variables
Lnon_trainable_variables

Mstates
Nmetrics
regularization_losses
trainable_variables

Olayers
?

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
?
Ulayer_metrics
Vlayer_regularization_losses
Wmetrics
regularization_losses
Xnon_trainable_variables
	variables
trainable_variables

Ylayers
?

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
?
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
?
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
?
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
?
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
?
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

?count
?
_fn_kwargs
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
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
?1

?	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
xv
VARIABLE_VALUE Adam/lstm_5/lstm_cell_5/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/lstm_5/lstm_cell_5/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/lstm_5/lstm_cell_5/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_6/lstm_cell_6/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
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
??
VARIABLE_VALUE*Adam/lstm_5/lstm_cell_5/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/lstm_5/lstm_cell_5/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_6/lstm_cell_6/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
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
?
serving_default_lstm_5_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_5_inputlstm_5/lstm_cell_5/kernel#lstm_5/lstm_cell_5/recurrent_kernellstm_5/lstm_cell_5/biaslstm_6/lstm_cell_6/kernel#lstm_6/lstm_cell_6/recurrent_kernellstm_6/lstm_cell_6/biastime_distributed_3/kerneltime_distributed_3/biastime_distributed_4/kerneltime_distributed_4/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_708290
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
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
GPU 2J 8? *(
f#R!
__inference__traced_save_711222
?
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
GPU 2J 8? *+
f&R$
"__inference__traced_restore_711355??*
?d
?
B__inference_lstm_5_layer_call_and_return_conditional_losses_707411

inputs0
,lstm_cell_102_matmul_readvariableop_resource2
.lstm_cell_102_matmul_1_readvariableop_resource1
-lstm_cell_102_biasadd_readvariableop_resource
identity??$lstm_cell_102/BiasAdd/ReadVariableOp?#lstm_cell_102/MatMul/ReadVariableOp?%lstm_cell_102/MatMul_1/ReadVariableOp?whileD
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
strided_slice/stack_2?
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
B :?2
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
B :?2
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
B :?2
zeros/packed/1?
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
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
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
B :?2
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
B :?2
zeros_1/packed/1?
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
:??????????2	
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
:?????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_102/MatMul/ReadVariableOpReadVariableOp,lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02%
#lstm_cell_102/MatMul/ReadVariableOp?
lstm_cell_102/MatMulMatMulstrided_slice_2:output:0+lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/MatMul?
%lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02'
%lstm_cell_102/MatMul_1/ReadVariableOp?
lstm_cell_102/MatMul_1MatMulzeros:output:0-lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/MatMul_1?
lstm_cell_102/addAddV2lstm_cell_102/MatMul:product:0 lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/add?
$lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_102/BiasAdd/ReadVariableOp?
lstm_cell_102/BiasAddBiasAddlstm_cell_102/add:z:0,lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/BiasAddl
lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/Const?
lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/split/split_dim?
lstm_cell_102/splitSplit&lstm_cell_102/split/split_dim:output:0lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_102/split?
lstm_cell_102/SigmoidSigmoidlstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid?
lstm_cell_102/Sigmoid_1Sigmoidlstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_1?
lstm_cell_102/mulMullstm_cell_102/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul?
lstm_cell_102/Sigmoid_2Sigmoidlstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_2?
lstm_cell_102/mul_1Mullstm_cell_102/split:output:2lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_1?
lstm_cell_102/IdentityIdentitylstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Identity?
lstm_cell_102/IdentityN	IdentityNlstm_cell_102/mul_1:z:0lstm_cell_102/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-707296*<
_output_shapes*
(:??????????:??????????2
lstm_cell_102/IdentityN?
lstm_cell_102/mul_2Mullstm_cell_102/Sigmoid:y:0 lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_2?
lstm_cell_102/add_1AddV2lstm_cell_102/mul:z:0lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/add_1?
lstm_cell_102/Sigmoid_3Sigmoidlstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_3?
lstm_cell_102/Sigmoid_4Sigmoidlstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_4?
lstm_cell_102/mul_3Mullstm_cell_102/add_1:z:0lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_3?
lstm_cell_102/Identity_1Identitylstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Identity_1?
lstm_cell_102/IdentityN_1	IdentityNlstm_cell_102/mul_3:z:0lstm_cell_102/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-707305*<
_output_shapes*
(:??????????:??????????2
lstm_cell_102/IdentityN_1?
lstm_cell_102/mul_4Mullstm_cell_102/Sigmoid_3:y:0"lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_4?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_102_matmul_readvariableop_resource.lstm_cell_102_matmul_1_readvariableop_resource-lstm_cell_102_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_707316*
condR
while_cond_707315*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0%^lstm_cell_102/BiasAdd/ReadVariableOp$^lstm_cell_102/MatMul/ReadVariableOp&^lstm_cell_102/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????:::2L
$lstm_cell_102/BiasAdd/ReadVariableOp$lstm_cell_102/BiasAdd/ReadVariableOp2J
#lstm_cell_102/MatMul/ReadVariableOp#lstm_cell_102/MatMul/ReadVariableOp2N
%lstm_cell_102/MatMul_1/ReadVariableOp%lstm_cell_102/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_710596

inputs*
&dense_8_matmul_readvariableop_resource+
'dense_8_biasadd_readvariableop_resource
identity??dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????@2	
Reshape?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_8/MatMul/ReadVariableOp?
dense_8/MatMulMatMulReshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_8/MatMul?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_8/BiasAdd/ReadVariableOp?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_8/BiasAddy
dense_8/SigmoidSigmoiddense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_8/Sigmoid?
dense_8/mulMuldense_8/BiasAdd:output:0dense_8/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
dense_8/muls
dense_8/IdentityIdentitydense_8/mul:z:0*
T0*'
_output_shapes
:?????????@2
dense_8/Identity?
dense_8/IdentityN	IdentityNdense_8/mul:z:0dense_8/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-710587*:
_output_shapes(
&:?????????@:?????????@2
dense_8/IdentityNw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   @   2
Reshape_1/shape?
	Reshape_1Reshapedense_8/IdentityN:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????@2
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp*
T0*+
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????@::2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
while_cond_707488
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_707488___redundant_placeholder04
0while_while_cond_707488___redundant_placeholder14
0while_while_cond_707488___redundant_placeholder24
0while_while_cond_707488___redundant_placeholder3
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
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
3__inference_time_distributed_4_layer_call_fn_710737

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_7071992
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:??????????????????@::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?
?
3__inference_time_distributed_3_layer_call_fn_710686

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_7071072
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????@2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:??????????????????@::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?
?
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_710641

inputs*
&dense_8_matmul_readvariableop_resource+
'dense_8_biasadd_readvariableop_resource
identity??dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOpD
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
strided_slice/stack_2?
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
valueB"????@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????@2	
Reshape?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_8/MatMul/ReadVariableOp?
dense_8/MatMulMatMulReshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_8/MatMul?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_8/BiasAdd/ReadVariableOp?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_8/BiasAddy
dense_8/SigmoidSigmoiddense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_8/Sigmoid?
dense_8/mulMuldense_8/BiasAdd:output:0dense_8/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
dense_8/muls
dense_8/IdentityIdentitydense_8/mul:z:0*
T0*'
_output_shapes
:?????????@2
dense_8/Identity?
dense_8/IdentityN	IdentityNdense_8/mul:z:0dense_8/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-710630*:
_output_shapes(
&:?????????@:?????????@2
dense_8/IdentityNq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshapedense_8/IdentityN:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :??????????????????@2
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????@2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:??????????????????@::2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?e
?
B__inference_lstm_5_layer_call_and_return_conditional_losses_709257
inputs_00
,lstm_cell_102_matmul_readvariableop_resource2
.lstm_cell_102_matmul_1_readvariableop_resource1
-lstm_cell_102_biasadd_readvariableop_resource
identity??$lstm_cell_102/BiasAdd/ReadVariableOp?#lstm_cell_102/MatMul/ReadVariableOp?%lstm_cell_102/MatMul_1/ReadVariableOp?whileF
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
strided_slice/stack_2?
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
B :?2
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
B :?2
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
B :?2
zeros/packed/1?
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
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
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
B :?2
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
B :?2
zeros_1/packed/1?
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
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_102/MatMul/ReadVariableOpReadVariableOp,lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02%
#lstm_cell_102/MatMul/ReadVariableOp?
lstm_cell_102/MatMulMatMulstrided_slice_2:output:0+lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/MatMul?
%lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02'
%lstm_cell_102/MatMul_1/ReadVariableOp?
lstm_cell_102/MatMul_1MatMulzeros:output:0-lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/MatMul_1?
lstm_cell_102/addAddV2lstm_cell_102/MatMul:product:0 lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/add?
$lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_102/BiasAdd/ReadVariableOp?
lstm_cell_102/BiasAddBiasAddlstm_cell_102/add:z:0,lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/BiasAddl
lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/Const?
lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/split/split_dim?
lstm_cell_102/splitSplit&lstm_cell_102/split/split_dim:output:0lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_102/split?
lstm_cell_102/SigmoidSigmoidlstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid?
lstm_cell_102/Sigmoid_1Sigmoidlstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_1?
lstm_cell_102/mulMullstm_cell_102/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul?
lstm_cell_102/Sigmoid_2Sigmoidlstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_2?
lstm_cell_102/mul_1Mullstm_cell_102/split:output:2lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_1?
lstm_cell_102/IdentityIdentitylstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Identity?
lstm_cell_102/IdentityN	IdentityNlstm_cell_102/mul_1:z:0lstm_cell_102/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-709142*<
_output_shapes*
(:??????????:??????????2
lstm_cell_102/IdentityN?
lstm_cell_102/mul_2Mullstm_cell_102/Sigmoid:y:0 lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_2?
lstm_cell_102/add_1AddV2lstm_cell_102/mul:z:0lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/add_1?
lstm_cell_102/Sigmoid_3Sigmoidlstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_3?
lstm_cell_102/Sigmoid_4Sigmoidlstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_4?
lstm_cell_102/mul_3Mullstm_cell_102/add_1:z:0lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_3?
lstm_cell_102/Identity_1Identitylstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Identity_1?
lstm_cell_102/IdentityN_1	IdentityNlstm_cell_102/mul_3:z:0lstm_cell_102/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-709151*<
_output_shapes*
(:??????????:??????????2
lstm_cell_102/IdentityN_1?
lstm_cell_102/mul_4Mullstm_cell_102/Sigmoid_3:y:0"lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_4?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_102_matmul_readvariableop_resource.lstm_cell_102_matmul_1_readvariableop_resource-lstm_cell_102_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_709162*
condR
while_cond_709161*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0%^lstm_cell_102/BiasAdd/ReadVariableOp$^lstm_cell_102/MatMul/ReadVariableOp&^lstm_cell_102/MatMul_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????????????:::2L
$lstm_cell_102/BiasAdd/ReadVariableOp$lstm_cell_102/BiasAdd/ReadVariableOp2J
#lstm_cell_102/MatMul/ReadVariableOp#lstm_cell_102/MatMul/ReadVariableOp2N
%lstm_cell_102/MatMul_1/ReadVariableOp%lstm_cell_102/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?M
?
while_body_709898
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
3while_lstm_cell_103_biasadd_readvariableop_resource??*while/lstm_cell_103/BiasAdd/ReadVariableOp?)while/lstm_cell_103/MatMul/ReadVariableOp?+while/lstm_cell_103/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_103/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_103_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_103/MatMul/ReadVariableOp?
while/lstm_cell_103/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_103/MatMul?
+while/lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_103_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02-
+while/lstm_cell_103/MatMul_1/ReadVariableOp?
while/lstm_cell_103/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_103/MatMul_1?
while/lstm_cell_103/addAddV2$while/lstm_cell_103/MatMul:product:0&while/lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_103/add?
*while/lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_103_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_103/BiasAdd/ReadVariableOp?
while/lstm_cell_103/BiasAddBiasAddwhile/lstm_cell_103/add:z:02while/lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_103/BiasAddx
while/lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_103/Const?
#while/lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_103/split/split_dim?
while/lstm_cell_103/splitSplit,while/lstm_cell_103/split/split_dim:output:0$while/lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
while/lstm_cell_103/split?
while/lstm_cell_103/SigmoidSigmoid"while/lstm_cell_103/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Sigmoid?
while/lstm_cell_103/Sigmoid_1Sigmoid"while/lstm_cell_103/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Sigmoid_1?
while/lstm_cell_103/mulMul!while/lstm_cell_103/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/mul?
while/lstm_cell_103/Sigmoid_2Sigmoid"while/lstm_cell_103/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Sigmoid_2?
while/lstm_cell_103/mul_1Mul"while/lstm_cell_103/split:output:2!while/lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/mul_1?
while/lstm_cell_103/IdentityIdentitywhile/lstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Identity?
while/lstm_cell_103/IdentityN	IdentityNwhile/lstm_cell_103/mul_1:z:0"while/lstm_cell_103/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-709941*:
_output_shapes(
&:?????????@:?????????@2
while/lstm_cell_103/IdentityN?
while/lstm_cell_103/mul_2Mulwhile/lstm_cell_103/Sigmoid:y:0&while/lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/mul_2?
while/lstm_cell_103/add_1AddV2while/lstm_cell_103/mul:z:0while/lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/add_1?
while/lstm_cell_103/Sigmoid_3Sigmoid"while/lstm_cell_103/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Sigmoid_3?
while/lstm_cell_103/Sigmoid_4Sigmoidwhile/lstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Sigmoid_4?
while/lstm_cell_103/mul_3Mulwhile/lstm_cell_103/add_1:z:0!while/lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/mul_3?
while/lstm_cell_103/Identity_1Identitywhile/lstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:?????????@2 
while/lstm_cell_103/Identity_1?
while/lstm_cell_103/IdentityN_1	IdentityNwhile/lstm_cell_103/mul_3:z:0while/lstm_cell_103/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-709950*:
_output_shapes(
&:?????????@:?????????@2!
while/lstm_cell_103/IdentityN_1?
while/lstm_cell_103/mul_4Mul!while/lstm_cell_103/Sigmoid_3:y:0(while/lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/mul_4?
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_103/mul_4:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_103/add_1:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
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
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????@:?????????@: : :::2X
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
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_710438
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_710438___redundant_placeholder04
0while_while_cond_710438___redundant_placeholder14
0while_while_cond_710438___redundant_placeholder24
0while_while_cond_710438___redundant_placeholder3
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
@: : : : :?????????@:?????????@: ::::: 
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
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?"
?
I__inference_lstm_cell_102_layer_call_and_return_conditional_losses_705853

inputs

states
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource

identity_2

identity_3

identity_4??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
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
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
muld
	Sigmoid_2Sigmoidsplit:output:2*
T0*(
_output_shapes
:??????????2
	Sigmoid_2g
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
mul_1^
IdentityIdentity	mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity?
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*,
_gradient_op_typeCustomGradient-705834*<
_output_shapes*
(:??????????:??????????2
	IdentityNi
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*(
_output_shapes
:??????????2
mul_2^
add_1AddV2mul:z:0	mul_2:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_3Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_3_
	Sigmoid_4Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_4b
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
mul_3b

Identity_1Identity	mul_3:z:0*
T0*(
_output_shapes
:??????????2

Identity_1?
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-705843*<
_output_shapes*
(:??????????:??????????2
IdentityN_1m
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
mul_4?

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2?

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_3?

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*Z
_input_shapesI
G:?????????:??????????:??????????:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?M
?
while_body_710439
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
3while_lstm_cell_103_biasadd_readvariableop_resource??*while/lstm_cell_103/BiasAdd/ReadVariableOp?)while/lstm_cell_103/MatMul/ReadVariableOp?+while/lstm_cell_103/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_103/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_103_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_103/MatMul/ReadVariableOp?
while/lstm_cell_103/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_103/MatMul?
+while/lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_103_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02-
+while/lstm_cell_103/MatMul_1/ReadVariableOp?
while/lstm_cell_103/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_103/MatMul_1?
while/lstm_cell_103/addAddV2$while/lstm_cell_103/MatMul:product:0&while/lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_103/add?
*while/lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_103_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_103/BiasAdd/ReadVariableOp?
while/lstm_cell_103/BiasAddBiasAddwhile/lstm_cell_103/add:z:02while/lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_103/BiasAddx
while/lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_103/Const?
#while/lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_103/split/split_dim?
while/lstm_cell_103/splitSplit,while/lstm_cell_103/split/split_dim:output:0$while/lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
while/lstm_cell_103/split?
while/lstm_cell_103/SigmoidSigmoid"while/lstm_cell_103/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Sigmoid?
while/lstm_cell_103/Sigmoid_1Sigmoid"while/lstm_cell_103/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Sigmoid_1?
while/lstm_cell_103/mulMul!while/lstm_cell_103/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/mul?
while/lstm_cell_103/Sigmoid_2Sigmoid"while/lstm_cell_103/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Sigmoid_2?
while/lstm_cell_103/mul_1Mul"while/lstm_cell_103/split:output:2!while/lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/mul_1?
while/lstm_cell_103/IdentityIdentitywhile/lstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Identity?
while/lstm_cell_103/IdentityN	IdentityNwhile/lstm_cell_103/mul_1:z:0"while/lstm_cell_103/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-710482*:
_output_shapes(
&:?????????@:?????????@2
while/lstm_cell_103/IdentityN?
while/lstm_cell_103/mul_2Mulwhile/lstm_cell_103/Sigmoid:y:0&while/lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/mul_2?
while/lstm_cell_103/add_1AddV2while/lstm_cell_103/mul:z:0while/lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/add_1?
while/lstm_cell_103/Sigmoid_3Sigmoid"while/lstm_cell_103/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Sigmoid_3?
while/lstm_cell_103/Sigmoid_4Sigmoidwhile/lstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Sigmoid_4?
while/lstm_cell_103/mul_3Mulwhile/lstm_cell_103/add_1:z:0!while/lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/mul_3?
while/lstm_cell_103/Identity_1Identitywhile/lstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:?????????@2 
while/lstm_cell_103/Identity_1?
while/lstm_cell_103/IdentityN_1	IdentityNwhile/lstm_cell_103/mul_3:z:0while/lstm_cell_103/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-710491*:
_output_shapes(
&:?????????@:?????????@2!
while/lstm_cell_103/IdentityN_1?
while/lstm_cell_103/mul_4Mul!while/lstm_cell_103/Sigmoid_3:y:0(while/lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/mul_4?
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_103/mul_4:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_103/add_1:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
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
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????@:?????????@: : :::2X
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
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
??
?
!__inference__wrapped_model_705727
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
identity??8sequential_3/lstm_5/lstm_cell_102/BiasAdd/ReadVariableOp?7sequential_3/lstm_5/lstm_cell_102/MatMul/ReadVariableOp?9sequential_3/lstm_5/lstm_cell_102/MatMul_1/ReadVariableOp?sequential_3/lstm_5/while?8sequential_3/lstm_6/lstm_cell_103/BiasAdd/ReadVariableOp?7sequential_3/lstm_6/lstm_cell_103/MatMul/ReadVariableOp?9sequential_3/lstm_6/lstm_cell_103/MatMul_1/ReadVariableOp?sequential_3/lstm_6/while?>sequential_3/time_distributed_3/dense_8/BiasAdd/ReadVariableOp?=sequential_3/time_distributed_3/dense_8/MatMul/ReadVariableOp?>sequential_3/time_distributed_4/dense_9/BiasAdd/ReadVariableOp?=sequential_3/time_distributed_4/dense_9/MatMul/ReadVariableOpr
sequential_3/lstm_5/ShapeShapelstm_5_input*
T0*
_output_shapes
:2
sequential_3/lstm_5/Shape?
'sequential_3/lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_3/lstm_5/strided_slice/stack?
)sequential_3/lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_3/lstm_5/strided_slice/stack_1?
)sequential_3/lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_3/lstm_5/strided_slice/stack_2?
!sequential_3/lstm_5/strided_sliceStridedSlice"sequential_3/lstm_5/Shape:output:00sequential_3/lstm_5/strided_slice/stack:output:02sequential_3/lstm_5/strided_slice/stack_1:output:02sequential_3/lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_3/lstm_5/strided_slice?
sequential_3/lstm_5/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2!
sequential_3/lstm_5/zeros/mul/y?
sequential_3/lstm_5/zeros/mulMul*sequential_3/lstm_5/strided_slice:output:0(sequential_3/lstm_5/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_3/lstm_5/zeros/mul?
 sequential_3/lstm_5/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2"
 sequential_3/lstm_5/zeros/Less/y?
sequential_3/lstm_5/zeros/LessLess!sequential_3/lstm_5/zeros/mul:z:0)sequential_3/lstm_5/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
sequential_3/lstm_5/zeros/Less?
"sequential_3/lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2$
"sequential_3/lstm_5/zeros/packed/1?
 sequential_3/lstm_5/zeros/packedPack*sequential_3/lstm_5/strided_slice:output:0+sequential_3/lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_3/lstm_5/zeros/packed?
sequential_3/lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_3/lstm_5/zeros/Const?
sequential_3/lstm_5/zerosFill)sequential_3/lstm_5/zeros/packed:output:0(sequential_3/lstm_5/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
sequential_3/lstm_5/zeros?
!sequential_3/lstm_5/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2#
!sequential_3/lstm_5/zeros_1/mul/y?
sequential_3/lstm_5/zeros_1/mulMul*sequential_3/lstm_5/strided_slice:output:0*sequential_3/lstm_5/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_3/lstm_5/zeros_1/mul?
"sequential_3/lstm_5/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"sequential_3/lstm_5/zeros_1/Less/y?
 sequential_3/lstm_5/zeros_1/LessLess#sequential_3/lstm_5/zeros_1/mul:z:0+sequential_3/lstm_5/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_3/lstm_5/zeros_1/Less?
$sequential_3/lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2&
$sequential_3/lstm_5/zeros_1/packed/1?
"sequential_3/lstm_5/zeros_1/packedPack*sequential_3/lstm_5/strided_slice:output:0-sequential_3/lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_3/lstm_5/zeros_1/packed?
!sequential_3/lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_3/lstm_5/zeros_1/Const?
sequential_3/lstm_5/zeros_1Fill+sequential_3/lstm_5/zeros_1/packed:output:0*sequential_3/lstm_5/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
sequential_3/lstm_5/zeros_1?
"sequential_3/lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"sequential_3/lstm_5/transpose/perm?
sequential_3/lstm_5/transpose	Transposelstm_5_input+sequential_3/lstm_5/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
sequential_3/lstm_5/transpose?
sequential_3/lstm_5/Shape_1Shape!sequential_3/lstm_5/transpose:y:0*
T0*
_output_shapes
:2
sequential_3/lstm_5/Shape_1?
)sequential_3/lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_3/lstm_5/strided_slice_1/stack?
+sequential_3/lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_5/strided_slice_1/stack_1?
+sequential_3/lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_5/strided_slice_1/stack_2?
#sequential_3/lstm_5/strided_slice_1StridedSlice$sequential_3/lstm_5/Shape_1:output:02sequential_3/lstm_5/strided_slice_1/stack:output:04sequential_3/lstm_5/strided_slice_1/stack_1:output:04sequential_3/lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_3/lstm_5/strided_slice_1?
/sequential_3/lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????21
/sequential_3/lstm_5/TensorArrayV2/element_shape?
!sequential_3/lstm_5/TensorArrayV2TensorListReserve8sequential_3/lstm_5/TensorArrayV2/element_shape:output:0,sequential_3/lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!sequential_3/lstm_5/TensorArrayV2?
Isequential_3/lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2K
Isequential_3/lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape?
;sequential_3/lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_3/lstm_5/transpose:y:0Rsequential_3/lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;sequential_3/lstm_5/TensorArrayUnstack/TensorListFromTensor?
)sequential_3/lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_3/lstm_5/strided_slice_2/stack?
+sequential_3/lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_5/strided_slice_2/stack_1?
+sequential_3/lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_5/strided_slice_2/stack_2?
#sequential_3/lstm_5/strided_slice_2StridedSlice!sequential_3/lstm_5/transpose:y:02sequential_3/lstm_5/strided_slice_2/stack:output:04sequential_3/lstm_5/strided_slice_2/stack_1:output:04sequential_3/lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2%
#sequential_3/lstm_5/strided_slice_2?
7sequential_3/lstm_5/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp@sequential_3_lstm_5_lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype029
7sequential_3/lstm_5/lstm_cell_102/MatMul/ReadVariableOp?
(sequential_3/lstm_5/lstm_cell_102/MatMulMatMul,sequential_3/lstm_5/strided_slice_2:output:0?sequential_3/lstm_5/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2*
(sequential_3/lstm_5/lstm_cell_102/MatMul?
9sequential_3/lstm_5/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOpBsequential_3_lstm_5_lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02;
9sequential_3/lstm_5/lstm_cell_102/MatMul_1/ReadVariableOp?
*sequential_3/lstm_5/lstm_cell_102/MatMul_1MatMul"sequential_3/lstm_5/zeros:output:0Asequential_3/lstm_5/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2,
*sequential_3/lstm_5/lstm_cell_102/MatMul_1?
%sequential_3/lstm_5/lstm_cell_102/addAddV22sequential_3/lstm_5/lstm_cell_102/MatMul:product:04sequential_3/lstm_5/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2'
%sequential_3/lstm_5/lstm_cell_102/add?
8sequential_3/lstm_5/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOpAsequential_3_lstm_5_lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential_3/lstm_5/lstm_cell_102/BiasAdd/ReadVariableOp?
)sequential_3/lstm_5/lstm_cell_102/BiasAddBiasAdd)sequential_3/lstm_5/lstm_cell_102/add:z:0@sequential_3/lstm_5/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2+
)sequential_3/lstm_5/lstm_cell_102/BiasAdd?
'sequential_3/lstm_5/lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_3/lstm_5/lstm_cell_102/Const?
1sequential_3/lstm_5/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :23
1sequential_3/lstm_5/lstm_cell_102/split/split_dim?
'sequential_3/lstm_5/lstm_cell_102/splitSplit:sequential_3/lstm_5/lstm_cell_102/split/split_dim:output:02sequential_3/lstm_5/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2)
'sequential_3/lstm_5/lstm_cell_102/split?
)sequential_3/lstm_5/lstm_cell_102/SigmoidSigmoid0sequential_3/lstm_5/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????2+
)sequential_3/lstm_5/lstm_cell_102/Sigmoid?
+sequential_3/lstm_5/lstm_cell_102/Sigmoid_1Sigmoid0sequential_3/lstm_5/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????2-
+sequential_3/lstm_5/lstm_cell_102/Sigmoid_1?
%sequential_3/lstm_5/lstm_cell_102/mulMul/sequential_3/lstm_5/lstm_cell_102/Sigmoid_1:y:0$sequential_3/lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:??????????2'
%sequential_3/lstm_5/lstm_cell_102/mul?
+sequential_3/lstm_5/lstm_cell_102/Sigmoid_2Sigmoid0sequential_3/lstm_5/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????2-
+sequential_3/lstm_5/lstm_cell_102/Sigmoid_2?
'sequential_3/lstm_5/lstm_cell_102/mul_1Mul0sequential_3/lstm_5/lstm_cell_102/split:output:2/sequential_3/lstm_5/lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2)
'sequential_3/lstm_5/lstm_cell_102/mul_1?
*sequential_3/lstm_5/lstm_cell_102/IdentityIdentity+sequential_3/lstm_5/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????2,
*sequential_3/lstm_5/lstm_cell_102/Identity?
+sequential_3/lstm_5/lstm_cell_102/IdentityN	IdentityN+sequential_3/lstm_5/lstm_cell_102/mul_1:z:00sequential_3/lstm_5/lstm_cell_102/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-705413*<
_output_shapes*
(:??????????:??????????2-
+sequential_3/lstm_5/lstm_cell_102/IdentityN?
'sequential_3/lstm_5/lstm_cell_102/mul_2Mul-sequential_3/lstm_5/lstm_cell_102/Sigmoid:y:04sequential_3/lstm_5/lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:??????????2)
'sequential_3/lstm_5/lstm_cell_102/mul_2?
'sequential_3/lstm_5/lstm_cell_102/add_1AddV2)sequential_3/lstm_5/lstm_cell_102/mul:z:0+sequential_3/lstm_5/lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:??????????2)
'sequential_3/lstm_5/lstm_cell_102/add_1?
+sequential_3/lstm_5/lstm_cell_102/Sigmoid_3Sigmoid0sequential_3/lstm_5/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????2-
+sequential_3/lstm_5/lstm_cell_102/Sigmoid_3?
+sequential_3/lstm_5/lstm_cell_102/Sigmoid_4Sigmoid+sequential_3/lstm_5/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????2-
+sequential_3/lstm_5/lstm_cell_102/Sigmoid_4?
'sequential_3/lstm_5/lstm_cell_102/mul_3Mul+sequential_3/lstm_5/lstm_cell_102/add_1:z:0/sequential_3/lstm_5/lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2)
'sequential_3/lstm_5/lstm_cell_102/mul_3?
,sequential_3/lstm_5/lstm_cell_102/Identity_1Identity+sequential_3/lstm_5/lstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:??????????2.
,sequential_3/lstm_5/lstm_cell_102/Identity_1?
-sequential_3/lstm_5/lstm_cell_102/IdentityN_1	IdentityN+sequential_3/lstm_5/lstm_cell_102/mul_3:z:0+sequential_3/lstm_5/lstm_cell_102/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-705422*<
_output_shapes*
(:??????????:??????????2/
-sequential_3/lstm_5/lstm_cell_102/IdentityN_1?
'sequential_3/lstm_5/lstm_cell_102/mul_4Mul/sequential_3/lstm_5/lstm_cell_102/Sigmoid_3:y:06sequential_3/lstm_5/lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2)
'sequential_3/lstm_5/lstm_cell_102/mul_4?
1sequential_3/lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   23
1sequential_3/lstm_5/TensorArrayV2_1/element_shape?
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
sequential_3/lstm_5/time?
,sequential_3/lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2.
,sequential_3/lstm_5/while/maximum_iterations?
&sequential_3/lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_3/lstm_5/while/loop_counter?
sequential_3/lstm_5/whileWhile/sequential_3/lstm_5/while/loop_counter:output:05sequential_3/lstm_5/while/maximum_iterations:output:0!sequential_3/lstm_5/time:output:0,sequential_3/lstm_5/TensorArrayV2_1:handle:0"sequential_3/lstm_5/zeros:output:0$sequential_3/lstm_5/zeros_1:output:0,sequential_3/lstm_5/strided_slice_1:output:0Ksequential_3/lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_3_lstm_5_lstm_cell_102_matmul_readvariableop_resourceBsequential_3_lstm_5_lstm_cell_102_matmul_1_readvariableop_resourceAsequential_3_lstm_5_lstm_cell_102_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*1
body)R'
%sequential_3_lstm_5_while_body_705433*1
cond)R'
%sequential_3_lstm_5_while_cond_705432*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
sequential_3/lstm_5/while?
Dsequential_3/lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2F
Dsequential_3/lstm_5/TensorArrayV2Stack/TensorListStack/element_shape?
6sequential_3/lstm_5/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_3/lstm_5/while:output:3Msequential_3/lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype028
6sequential_3/lstm_5/TensorArrayV2Stack/TensorListStack?
)sequential_3/lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2+
)sequential_3/lstm_5/strided_slice_3/stack?
+sequential_3/lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_3/lstm_5/strided_slice_3/stack_1?
+sequential_3/lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_5/strided_slice_3/stack_2?
#sequential_3/lstm_5/strided_slice_3StridedSlice?sequential_3/lstm_5/TensorArrayV2Stack/TensorListStack:tensor:02sequential_3/lstm_5/strided_slice_3/stack:output:04sequential_3/lstm_5/strided_slice_3/stack_1:output:04sequential_3/lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2%
#sequential_3/lstm_5/strided_slice_3?
$sequential_3/lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_3/lstm_5/transpose_1/perm?
sequential_3/lstm_5/transpose_1	Transpose?sequential_3/lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_3/lstm_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2!
sequential_3/lstm_5/transpose_1?
sequential_3/lstm_5/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_3/lstm_5/runtime?
sequential_3/lstm_6/ShapeShape#sequential_3/lstm_5/transpose_1:y:0*
T0*
_output_shapes
:2
sequential_3/lstm_6/Shape?
'sequential_3/lstm_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_3/lstm_6/strided_slice/stack?
)sequential_3/lstm_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_3/lstm_6/strided_slice/stack_1?
)sequential_3/lstm_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_3/lstm_6/strided_slice/stack_2?
!sequential_3/lstm_6/strided_sliceStridedSlice"sequential_3/lstm_6/Shape:output:00sequential_3/lstm_6/strided_slice/stack:output:02sequential_3/lstm_6/strided_slice/stack_1:output:02sequential_3/lstm_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_3/lstm_6/strided_slice?
sequential_3/lstm_6/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2!
sequential_3/lstm_6/zeros/mul/y?
sequential_3/lstm_6/zeros/mulMul*sequential_3/lstm_6/strided_slice:output:0(sequential_3/lstm_6/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_3/lstm_6/zeros/mul?
 sequential_3/lstm_6/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2"
 sequential_3/lstm_6/zeros/Less/y?
sequential_3/lstm_6/zeros/LessLess!sequential_3/lstm_6/zeros/mul:z:0)sequential_3/lstm_6/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
sequential_3/lstm_6/zeros/Less?
"sequential_3/lstm_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2$
"sequential_3/lstm_6/zeros/packed/1?
 sequential_3/lstm_6/zeros/packedPack*sequential_3/lstm_6/strided_slice:output:0+sequential_3/lstm_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_3/lstm_6/zeros/packed?
sequential_3/lstm_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_3/lstm_6/zeros/Const?
sequential_3/lstm_6/zerosFill)sequential_3/lstm_6/zeros/packed:output:0(sequential_3/lstm_6/zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
sequential_3/lstm_6/zeros?
!sequential_3/lstm_6/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2#
!sequential_3/lstm_6/zeros_1/mul/y?
sequential_3/lstm_6/zeros_1/mulMul*sequential_3/lstm_6/strided_slice:output:0*sequential_3/lstm_6/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_3/lstm_6/zeros_1/mul?
"sequential_3/lstm_6/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"sequential_3/lstm_6/zeros_1/Less/y?
 sequential_3/lstm_6/zeros_1/LessLess#sequential_3/lstm_6/zeros_1/mul:z:0+sequential_3/lstm_6/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_3/lstm_6/zeros_1/Less?
$sequential_3/lstm_6/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2&
$sequential_3/lstm_6/zeros_1/packed/1?
"sequential_3/lstm_6/zeros_1/packedPack*sequential_3/lstm_6/strided_slice:output:0-sequential_3/lstm_6/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_3/lstm_6/zeros_1/packed?
!sequential_3/lstm_6/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_3/lstm_6/zeros_1/Const?
sequential_3/lstm_6/zeros_1Fill+sequential_3/lstm_6/zeros_1/packed:output:0*sequential_3/lstm_6/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
sequential_3/lstm_6/zeros_1?
"sequential_3/lstm_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"sequential_3/lstm_6/transpose/perm?
sequential_3/lstm_6/transpose	Transpose#sequential_3/lstm_5/transpose_1:y:0+sequential_3/lstm_6/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
sequential_3/lstm_6/transpose?
sequential_3/lstm_6/Shape_1Shape!sequential_3/lstm_6/transpose:y:0*
T0*
_output_shapes
:2
sequential_3/lstm_6/Shape_1?
)sequential_3/lstm_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_3/lstm_6/strided_slice_1/stack?
+sequential_3/lstm_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_6/strided_slice_1/stack_1?
+sequential_3/lstm_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_6/strided_slice_1/stack_2?
#sequential_3/lstm_6/strided_slice_1StridedSlice$sequential_3/lstm_6/Shape_1:output:02sequential_3/lstm_6/strided_slice_1/stack:output:04sequential_3/lstm_6/strided_slice_1/stack_1:output:04sequential_3/lstm_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_3/lstm_6/strided_slice_1?
/sequential_3/lstm_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????21
/sequential_3/lstm_6/TensorArrayV2/element_shape?
!sequential_3/lstm_6/TensorArrayV2TensorListReserve8sequential_3/lstm_6/TensorArrayV2/element_shape:output:0,sequential_3/lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!sequential_3/lstm_6/TensorArrayV2?
Isequential_3/lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2K
Isequential_3/lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shape?
;sequential_3/lstm_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_3/lstm_6/transpose:y:0Rsequential_3/lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;sequential_3/lstm_6/TensorArrayUnstack/TensorListFromTensor?
)sequential_3/lstm_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_3/lstm_6/strided_slice_2/stack?
+sequential_3/lstm_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_6/strided_slice_2/stack_1?
+sequential_3/lstm_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_6/strided_slice_2/stack_2?
#sequential_3/lstm_6/strided_slice_2StridedSlice!sequential_3/lstm_6/transpose:y:02sequential_3/lstm_6/strided_slice_2/stack:output:04sequential_3/lstm_6/strided_slice_2/stack_1:output:04sequential_3/lstm_6/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2%
#sequential_3/lstm_6/strided_slice_2?
7sequential_3/lstm_6/lstm_cell_103/MatMul/ReadVariableOpReadVariableOp@sequential_3_lstm_6_lstm_cell_103_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype029
7sequential_3/lstm_6/lstm_cell_103/MatMul/ReadVariableOp?
(sequential_3/lstm_6/lstm_cell_103/MatMulMatMul,sequential_3/lstm_6/strided_slice_2:output:0?sequential_3/lstm_6/lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2*
(sequential_3/lstm_6/lstm_cell_103/MatMul?
9sequential_3/lstm_6/lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOpBsequential_3_lstm_6_lstm_cell_103_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02;
9sequential_3/lstm_6/lstm_cell_103/MatMul_1/ReadVariableOp?
*sequential_3/lstm_6/lstm_cell_103/MatMul_1MatMul"sequential_3/lstm_6/zeros:output:0Asequential_3/lstm_6/lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2,
*sequential_3/lstm_6/lstm_cell_103/MatMul_1?
%sequential_3/lstm_6/lstm_cell_103/addAddV22sequential_3/lstm_6/lstm_cell_103/MatMul:product:04sequential_3/lstm_6/lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2'
%sequential_3/lstm_6/lstm_cell_103/add?
8sequential_3/lstm_6/lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOpAsequential_3_lstm_6_lstm_cell_103_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential_3/lstm_6/lstm_cell_103/BiasAdd/ReadVariableOp?
)sequential_3/lstm_6/lstm_cell_103/BiasAddBiasAdd)sequential_3/lstm_6/lstm_cell_103/add:z:0@sequential_3/lstm_6/lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2+
)sequential_3/lstm_6/lstm_cell_103/BiasAdd?
'sequential_3/lstm_6/lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_3/lstm_6/lstm_cell_103/Const?
1sequential_3/lstm_6/lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :23
1sequential_3/lstm_6/lstm_cell_103/split/split_dim?
'sequential_3/lstm_6/lstm_cell_103/splitSplit:sequential_3/lstm_6/lstm_cell_103/split/split_dim:output:02sequential_3/lstm_6/lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2)
'sequential_3/lstm_6/lstm_cell_103/split?
)sequential_3/lstm_6/lstm_cell_103/SigmoidSigmoid0sequential_3/lstm_6/lstm_cell_103/split:output:0*
T0*'
_output_shapes
:?????????@2+
)sequential_3/lstm_6/lstm_cell_103/Sigmoid?
+sequential_3/lstm_6/lstm_cell_103/Sigmoid_1Sigmoid0sequential_3/lstm_6/lstm_cell_103/split:output:1*
T0*'
_output_shapes
:?????????@2-
+sequential_3/lstm_6/lstm_cell_103/Sigmoid_1?
%sequential_3/lstm_6/lstm_cell_103/mulMul/sequential_3/lstm_6/lstm_cell_103/Sigmoid_1:y:0$sequential_3/lstm_6/zeros_1:output:0*
T0*'
_output_shapes
:?????????@2'
%sequential_3/lstm_6/lstm_cell_103/mul?
+sequential_3/lstm_6/lstm_cell_103/Sigmoid_2Sigmoid0sequential_3/lstm_6/lstm_cell_103/split:output:2*
T0*'
_output_shapes
:?????????@2-
+sequential_3/lstm_6/lstm_cell_103/Sigmoid_2?
'sequential_3/lstm_6/lstm_cell_103/mul_1Mul0sequential_3/lstm_6/lstm_cell_103/split:output:2/sequential_3/lstm_6/lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2)
'sequential_3/lstm_6/lstm_cell_103/mul_1?
*sequential_3/lstm_6/lstm_cell_103/IdentityIdentity+sequential_3/lstm_6/lstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:?????????@2,
*sequential_3/lstm_6/lstm_cell_103/Identity?
+sequential_3/lstm_6/lstm_cell_103/IdentityN	IdentityN+sequential_3/lstm_6/lstm_cell_103/mul_1:z:00sequential_3/lstm_6/lstm_cell_103/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-705582*:
_output_shapes(
&:?????????@:?????????@2-
+sequential_3/lstm_6/lstm_cell_103/IdentityN?
'sequential_3/lstm_6/lstm_cell_103/mul_2Mul-sequential_3/lstm_6/lstm_cell_103/Sigmoid:y:04sequential_3/lstm_6/lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2)
'sequential_3/lstm_6/lstm_cell_103/mul_2?
'sequential_3/lstm_6/lstm_cell_103/add_1AddV2)sequential_3/lstm_6/lstm_cell_103/mul:z:0+sequential_3/lstm_6/lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:?????????@2)
'sequential_3/lstm_6/lstm_cell_103/add_1?
+sequential_3/lstm_6/lstm_cell_103/Sigmoid_3Sigmoid0sequential_3/lstm_6/lstm_cell_103/split:output:3*
T0*'
_output_shapes
:?????????@2-
+sequential_3/lstm_6/lstm_cell_103/Sigmoid_3?
+sequential_3/lstm_6/lstm_cell_103/Sigmoid_4Sigmoid+sequential_3/lstm_6/lstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:?????????@2-
+sequential_3/lstm_6/lstm_cell_103/Sigmoid_4?
'sequential_3/lstm_6/lstm_cell_103/mul_3Mul+sequential_3/lstm_6/lstm_cell_103/add_1:z:0/sequential_3/lstm_6/lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2)
'sequential_3/lstm_6/lstm_cell_103/mul_3?
,sequential_3/lstm_6/lstm_cell_103/Identity_1Identity+sequential_3/lstm_6/lstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:?????????@2.
,sequential_3/lstm_6/lstm_cell_103/Identity_1?
-sequential_3/lstm_6/lstm_cell_103/IdentityN_1	IdentityN+sequential_3/lstm_6/lstm_cell_103/mul_3:z:0+sequential_3/lstm_6/lstm_cell_103/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-705591*:
_output_shapes(
&:?????????@:?????????@2/
-sequential_3/lstm_6/lstm_cell_103/IdentityN_1?
'sequential_3/lstm_6/lstm_cell_103/mul_4Mul/sequential_3/lstm_6/lstm_cell_103/Sigmoid_3:y:06sequential_3/lstm_6/lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2)
'sequential_3/lstm_6/lstm_cell_103/mul_4?
1sequential_3/lstm_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   23
1sequential_3/lstm_6/TensorArrayV2_1/element_shape?
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
sequential_3/lstm_6/time?
,sequential_3/lstm_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2.
,sequential_3/lstm_6/while/maximum_iterations?
&sequential_3/lstm_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_3/lstm_6/while/loop_counter?
sequential_3/lstm_6/whileWhile/sequential_3/lstm_6/while/loop_counter:output:05sequential_3/lstm_6/while/maximum_iterations:output:0!sequential_3/lstm_6/time:output:0,sequential_3/lstm_6/TensorArrayV2_1:handle:0"sequential_3/lstm_6/zeros:output:0$sequential_3/lstm_6/zeros_1:output:0,sequential_3/lstm_6/strided_slice_1:output:0Ksequential_3/lstm_6/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_3_lstm_6_lstm_cell_103_matmul_readvariableop_resourceBsequential_3_lstm_6_lstm_cell_103_matmul_1_readvariableop_resourceAsequential_3_lstm_6_lstm_cell_103_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*1
body)R'
%sequential_3_lstm_6_while_body_705602*1
cond)R'
%sequential_3_lstm_6_while_cond_705601*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
sequential_3/lstm_6/while?
Dsequential_3/lstm_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2F
Dsequential_3/lstm_6/TensorArrayV2Stack/TensorListStack/element_shape?
6sequential_3/lstm_6/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_3/lstm_6/while:output:3Msequential_3/lstm_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype028
6sequential_3/lstm_6/TensorArrayV2Stack/TensorListStack?
)sequential_3/lstm_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2+
)sequential_3/lstm_6/strided_slice_3/stack?
+sequential_3/lstm_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_3/lstm_6/strided_slice_3/stack_1?
+sequential_3/lstm_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_6/strided_slice_3/stack_2?
#sequential_3/lstm_6/strided_slice_3StridedSlice?sequential_3/lstm_6/TensorArrayV2Stack/TensorListStack:tensor:02sequential_3/lstm_6/strided_slice_3/stack:output:04sequential_3/lstm_6/strided_slice_3/stack_1:output:04sequential_3/lstm_6/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2%
#sequential_3/lstm_6/strided_slice_3?
$sequential_3/lstm_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_3/lstm_6/transpose_1/perm?
sequential_3/lstm_6/transpose_1	Transpose?sequential_3/lstm_6/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_3/lstm_6/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@2!
sequential_3/lstm_6/transpose_1?
sequential_3/lstm_6/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_3/lstm_6/runtime?
-sequential_3/time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2/
-sequential_3/time_distributed_3/Reshape/shape?
'sequential_3/time_distributed_3/ReshapeReshape#sequential_3/lstm_6/transpose_1:y:06sequential_3/time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????@2)
'sequential_3/time_distributed_3/Reshape?
=sequential_3/time_distributed_3/dense_8/MatMul/ReadVariableOpReadVariableOpFsequential_3_time_distributed_3_dense_8_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02?
=sequential_3/time_distributed_3/dense_8/MatMul/ReadVariableOp?
.sequential_3/time_distributed_3/dense_8/MatMulMatMul0sequential_3/time_distributed_3/Reshape:output:0Esequential_3/time_distributed_3/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@20
.sequential_3/time_distributed_3/dense_8/MatMul?
>sequential_3/time_distributed_3/dense_8/BiasAdd/ReadVariableOpReadVariableOpGsequential_3_time_distributed_3_dense_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02@
>sequential_3/time_distributed_3/dense_8/BiasAdd/ReadVariableOp?
/sequential_3/time_distributed_3/dense_8/BiasAddBiasAdd8sequential_3/time_distributed_3/dense_8/MatMul:product:0Fsequential_3/time_distributed_3/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@21
/sequential_3/time_distributed_3/dense_8/BiasAdd?
/sequential_3/time_distributed_3/dense_8/SigmoidSigmoid8sequential_3/time_distributed_3/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@21
/sequential_3/time_distributed_3/dense_8/Sigmoid?
+sequential_3/time_distributed_3/dense_8/mulMul8sequential_3/time_distributed_3/dense_8/BiasAdd:output:03sequential_3/time_distributed_3/dense_8/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2-
+sequential_3/time_distributed_3/dense_8/mul?
0sequential_3/time_distributed_3/dense_8/IdentityIdentity/sequential_3/time_distributed_3/dense_8/mul:z:0*
T0*'
_output_shapes
:?????????@22
0sequential_3/time_distributed_3/dense_8/Identity?
1sequential_3/time_distributed_3/dense_8/IdentityN	IdentityN/sequential_3/time_distributed_3/dense_8/mul:z:08sequential_3/time_distributed_3/dense_8/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-705704*:
_output_shapes(
&:?????????@:?????????@23
1sequential_3/time_distributed_3/dense_8/IdentityN?
/sequential_3/time_distributed_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   @   21
/sequential_3/time_distributed_3/Reshape_1/shape?
)sequential_3/time_distributed_3/Reshape_1Reshape:sequential_3/time_distributed_3/dense_8/IdentityN:output:08sequential_3/time_distributed_3/Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????@2+
)sequential_3/time_distributed_3/Reshape_1?
/sequential_3/time_distributed_3/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   21
/sequential_3/time_distributed_3/Reshape_2/shape?
)sequential_3/time_distributed_3/Reshape_2Reshape#sequential_3/lstm_6/transpose_1:y:08sequential_3/time_distributed_3/Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????@2+
)sequential_3/time_distributed_3/Reshape_2?
-sequential_3/time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2/
-sequential_3/time_distributed_4/Reshape/shape?
'sequential_3/time_distributed_4/ReshapeReshape2sequential_3/time_distributed_3/Reshape_1:output:06sequential_3/time_distributed_4/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????@2)
'sequential_3/time_distributed_4/Reshape?
=sequential_3/time_distributed_4/dense_9/MatMul/ReadVariableOpReadVariableOpFsequential_3_time_distributed_4_dense_9_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02?
=sequential_3/time_distributed_4/dense_9/MatMul/ReadVariableOp?
.sequential_3/time_distributed_4/dense_9/MatMulMatMul0sequential_3/time_distributed_4/Reshape:output:0Esequential_3/time_distributed_4/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????20
.sequential_3/time_distributed_4/dense_9/MatMul?
>sequential_3/time_distributed_4/dense_9/BiasAdd/ReadVariableOpReadVariableOpGsequential_3_time_distributed_4_dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02@
>sequential_3/time_distributed_4/dense_9/BiasAdd/ReadVariableOp?
/sequential_3/time_distributed_4/dense_9/BiasAddBiasAdd8sequential_3/time_distributed_4/dense_9/MatMul:product:0Fsequential_3/time_distributed_4/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????21
/sequential_3/time_distributed_4/dense_9/BiasAdd?
/sequential_3/time_distributed_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      21
/sequential_3/time_distributed_4/Reshape_1/shape?
)sequential_3/time_distributed_4/Reshape_1Reshape8sequential_3/time_distributed_4/dense_9/BiasAdd:output:08sequential_3/time_distributed_4/Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????2+
)sequential_3/time_distributed_4/Reshape_1?
/sequential_3/time_distributed_4/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   21
/sequential_3/time_distributed_4/Reshape_2/shape?
)sequential_3/time_distributed_4/Reshape_2Reshape2sequential_3/time_distributed_3/Reshape_1:output:08sequential_3/time_distributed_4/Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????@2+
)sequential_3/time_distributed_4/Reshape_2?
IdentityIdentity2sequential_3/time_distributed_4/Reshape_1:output:09^sequential_3/lstm_5/lstm_cell_102/BiasAdd/ReadVariableOp8^sequential_3/lstm_5/lstm_cell_102/MatMul/ReadVariableOp:^sequential_3/lstm_5/lstm_cell_102/MatMul_1/ReadVariableOp^sequential_3/lstm_5/while9^sequential_3/lstm_6/lstm_cell_103/BiasAdd/ReadVariableOp8^sequential_3/lstm_6/lstm_cell_103/MatMul/ReadVariableOp:^sequential_3/lstm_6/lstm_cell_103/MatMul_1/ReadVariableOp^sequential_3/lstm_6/while?^sequential_3/time_distributed_3/dense_8/BiasAdd/ReadVariableOp>^sequential_3/time_distributed_3/dense_8/MatMul/ReadVariableOp?^sequential_3/time_distributed_4/dense_9/BiasAdd/ReadVariableOp>^sequential_3/time_distributed_4/dense_9/MatMul/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:?????????::::::::::2t
8sequential_3/lstm_5/lstm_cell_102/BiasAdd/ReadVariableOp8sequential_3/lstm_5/lstm_cell_102/BiasAdd/ReadVariableOp2r
7sequential_3/lstm_5/lstm_cell_102/MatMul/ReadVariableOp7sequential_3/lstm_5/lstm_cell_102/MatMul/ReadVariableOp2v
9sequential_3/lstm_5/lstm_cell_102/MatMul_1/ReadVariableOp9sequential_3/lstm_5/lstm_cell_102/MatMul_1/ReadVariableOp26
sequential_3/lstm_5/whilesequential_3/lstm_5/while2t
8sequential_3/lstm_6/lstm_cell_103/BiasAdd/ReadVariableOp8sequential_3/lstm_6/lstm_cell_103/BiasAdd/ReadVariableOp2r
7sequential_3/lstm_6/lstm_cell_103/MatMul/ReadVariableOp7sequential_3/lstm_6/lstm_cell_103/MatMul/ReadVariableOp2v
9sequential_3/lstm_6/lstm_cell_103/MatMul_1/ReadVariableOp9sequential_3/lstm_6/lstm_cell_103/MatMul_1/ReadVariableOp26
sequential_3/lstm_6/whilesequential_3/lstm_6/while2?
>sequential_3/time_distributed_3/dense_8/BiasAdd/ReadVariableOp>sequential_3/time_distributed_3/dense_8/BiasAdd/ReadVariableOp2~
=sequential_3/time_distributed_3/dense_8/MatMul/ReadVariableOp=sequential_3/time_distributed_3/dense_8/MatMul/ReadVariableOp2?
>sequential_3/time_distributed_4/dense_9/BiasAdd/ReadVariableOp>sequential_3/time_distributed_4/dense_9/BiasAdd/ReadVariableOp2~
=sequential_3/time_distributed_4/dense_9/MatMul/ReadVariableOp=sequential_3/time_distributed_4/dense_9/MatMul/ReadVariableOp:Y U
+
_output_shapes
:?????????
&
_user_specified_namelstm_5_input
?
?
while_cond_707690
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_707690___redundant_placeholder04
0while_while_cond_707690___redundant_placeholder14
0while_while_cond_707690___redundant_placeholder24
0while_while_cond_707690___redundant_placeholder3
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
@: : : : :?????????@:?????????@: ::::: 
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
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?	
?
C__inference_dense_9_layer_call_and_return_conditional_losses_711067

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
.__inference_lstm_cell_103_layer_call_fn_711015

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????@:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_103_layer_call_and_return_conditional_losses_7064402
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*Y
_input_shapesH
F:??????????:?????????@:?????????@:::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/1
?W
?
__inference__traced_save_711222
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

identity_1??MergeV2Checkpoints?
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
Const_1?
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
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:**
dtype0*?
value?B?*B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:**
dtype0*g
value^B\*B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop4savev2_lstm_5_lstm_cell_5_kernel_read_readvariableop>savev2_lstm_5_lstm_cell_5_recurrent_kernel_read_readvariableop2savev2_lstm_5_lstm_cell_5_bias_read_readvariableop4savev2_lstm_6_lstm_cell_6_kernel_read_readvariableop>savev2_lstm_6_lstm_cell_6_recurrent_kernel_read_readvariableop2savev2_lstm_6_lstm_cell_6_bias_read_readvariableop4savev2_time_distributed_3_kernel_read_readvariableop2savev2_time_distributed_3_bias_read_readvariableop4savev2_time_distributed_4_kernel_read_readvariableop2savev2_time_distributed_4_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop;savev2_adam_lstm_5_lstm_cell_5_kernel_m_read_readvariableopEsavev2_adam_lstm_5_lstm_cell_5_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_5_lstm_cell_5_bias_m_read_readvariableop;savev2_adam_lstm_6_lstm_cell_6_kernel_m_read_readvariableopEsavev2_adam_lstm_6_lstm_cell_6_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_6_lstm_cell_6_bias_m_read_readvariableop;savev2_adam_time_distributed_3_kernel_m_read_readvariableop9savev2_adam_time_distributed_3_bias_m_read_readvariableop;savev2_adam_time_distributed_4_kernel_m_read_readvariableop9savev2_adam_time_distributed_4_bias_m_read_readvariableop;savev2_adam_lstm_5_lstm_cell_5_kernel_v_read_readvariableopEsavev2_adam_lstm_5_lstm_cell_5_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_5_lstm_cell_5_bias_v_read_readvariableop;savev2_adam_lstm_6_lstm_cell_6_kernel_v_read_readvariableopEsavev2_adam_lstm_6_lstm_cell_6_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_6_lstm_cell_6_bias_v_read_readvariableop;savev2_adam_time_distributed_3_kernel_v_read_readvariableop9savev2_adam_time_distributed_3_bias_v_read_readvariableop;savev2_adam_time_distributed_4_kernel_v_read_readvariableop9savev2_adam_time_distributed_4_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *8
dtypes.
,2*	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : : : :	?:
??:?:
??:	@?:?:@@:@:@:: : : : : : :	?:
??:?:
??:	@?:?:@@:@:@::	?:
??:?:
??:	@?:?:@@:@:@:: 2(
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
:	?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&	"
 
_output_shapes
:
??:%
!

_output_shapes
:	@?:!

_output_shapes	
:?:$ 

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
:	?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:%!

_output_shapes
:	@?:!

_output_shapes	
:?:$ 

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
:	?:&!"
 
_output_shapes
:
??:!"

_output_shapes	
:?:&#"
 
_output_shapes
:
??:%$!

_output_shapes
:	@?:!%

_output_shapes	
:?:$& 

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
?
?
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_708067

inputs*
&dense_9_matmul_readvariableop_resource+
'dense_9_biasadd_readvariableop_resource
identity??dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????@2	
Reshape?
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_9/MatMul/ReadVariableOp?
dense_9/MatMulMatMulReshape:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_9/MatMul?
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_9/BiasAdd/ReadVariableOp?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_9/BiasAddw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      2
Reshape_1/shape?
	Reshape_1Reshapedense_9/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????2
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????@::2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
while_cond_709334
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_709334___redundant_placeholder04
0while_while_cond_709334___redundant_placeholder14
0while_while_cond_709334___redundant_placeholder24
0while_while_cond_709334___redundant_placeholder3
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
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
3__inference_time_distributed_3_layer_call_fn_710614

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_7080282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????@::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?d
?
B__inference_lstm_5_layer_call_and_return_conditional_losses_707584

inputs0
,lstm_cell_102_matmul_readvariableop_resource2
.lstm_cell_102_matmul_1_readvariableop_resource1
-lstm_cell_102_biasadd_readvariableop_resource
identity??$lstm_cell_102/BiasAdd/ReadVariableOp?#lstm_cell_102/MatMul/ReadVariableOp?%lstm_cell_102/MatMul_1/ReadVariableOp?whileD
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
strided_slice/stack_2?
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
B :?2
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
B :?2
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
B :?2
zeros/packed/1?
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
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
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
B :?2
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
B :?2
zeros_1/packed/1?
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
:??????????2	
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
:?????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_102/MatMul/ReadVariableOpReadVariableOp,lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02%
#lstm_cell_102/MatMul/ReadVariableOp?
lstm_cell_102/MatMulMatMulstrided_slice_2:output:0+lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/MatMul?
%lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02'
%lstm_cell_102/MatMul_1/ReadVariableOp?
lstm_cell_102/MatMul_1MatMulzeros:output:0-lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/MatMul_1?
lstm_cell_102/addAddV2lstm_cell_102/MatMul:product:0 lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/add?
$lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_102/BiasAdd/ReadVariableOp?
lstm_cell_102/BiasAddBiasAddlstm_cell_102/add:z:0,lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/BiasAddl
lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/Const?
lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/split/split_dim?
lstm_cell_102/splitSplit&lstm_cell_102/split/split_dim:output:0lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_102/split?
lstm_cell_102/SigmoidSigmoidlstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid?
lstm_cell_102/Sigmoid_1Sigmoidlstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_1?
lstm_cell_102/mulMullstm_cell_102/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul?
lstm_cell_102/Sigmoid_2Sigmoidlstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_2?
lstm_cell_102/mul_1Mullstm_cell_102/split:output:2lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_1?
lstm_cell_102/IdentityIdentitylstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Identity?
lstm_cell_102/IdentityN	IdentityNlstm_cell_102/mul_1:z:0lstm_cell_102/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-707469*<
_output_shapes*
(:??????????:??????????2
lstm_cell_102/IdentityN?
lstm_cell_102/mul_2Mullstm_cell_102/Sigmoid:y:0 lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_2?
lstm_cell_102/add_1AddV2lstm_cell_102/mul:z:0lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/add_1?
lstm_cell_102/Sigmoid_3Sigmoidlstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_3?
lstm_cell_102/Sigmoid_4Sigmoidlstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_4?
lstm_cell_102/mul_3Mullstm_cell_102/add_1:z:0lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_3?
lstm_cell_102/Identity_1Identitylstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Identity_1?
lstm_cell_102/IdentityN_1	IdentityNlstm_cell_102/mul_3:z:0lstm_cell_102/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-707478*<
_output_shapes*
(:??????????:??????????2
lstm_cell_102/IdentityN_1?
lstm_cell_102/mul_4Mullstm_cell_102/Sigmoid_3:y:0"lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_4?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_102_matmul_readvariableop_resource.lstm_cell_102_matmul_1_readvariableop_resource-lstm_cell_102_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_707489*
condR
while_cond_707488*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0%^lstm_cell_102/BiasAdd/ReadVariableOp$^lstm_cell_102/MatMul/ReadVariableOp&^lstm_cell_102/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????:::2L
$lstm_cell_102/BiasAdd/ReadVariableOp$lstm_cell_102/BiasAdd/ReadVariableOp2J
#lstm_cell_102/MatMul/ReadVariableOp#lstm_cell_102/MatMul/ReadVariableOp2N
%lstm_cell_102/MatMul_1/ReadVariableOp%lstm_cell_102/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?D
?
B__inference_lstm_5_layer_call_and_return_conditional_losses_706216

inputs
lstm_cell_102_706134
lstm_cell_102_706136
lstm_cell_102_706138
identity??%lstm_cell_102/StatefulPartitionedCall?whileD
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
strided_slice/stack_2?
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
B :?2
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
B :?2
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
B :?2
zeros/packed/1?
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
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
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
B :?2
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
B :?2
zeros_1/packed/1?
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
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
%lstm_cell_102/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_102_706134lstm_cell_102_706136lstm_cell_102_706138*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_102_layer_call_and_return_conditional_losses_7058102'
%lstm_cell_102/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_102_706134lstm_cell_102_706136lstm_cell_102_706138*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_706147*
condR
while_cond_706146*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0&^lstm_cell_102/StatefulPartitionedCall^while*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????????????:::2N
%lstm_cell_102/StatefulPartitionedCall%lstm_cell_102/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
??
?	
H__inference_sequential_3_layer_call_and_return_conditional_losses_708662

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
identity??+lstm_5/lstm_cell_102/BiasAdd/ReadVariableOp?*lstm_5/lstm_cell_102/MatMul/ReadVariableOp?,lstm_5/lstm_cell_102/MatMul_1/ReadVariableOp?lstm_5/while?+lstm_6/lstm_cell_103/BiasAdd/ReadVariableOp?*lstm_6/lstm_cell_103/MatMul/ReadVariableOp?,lstm_6/lstm_cell_103/MatMul_1/ReadVariableOp?lstm_6/while?1time_distributed_3/dense_8/BiasAdd/ReadVariableOp?0time_distributed_3/dense_8/MatMul/ReadVariableOp?1time_distributed_4/dense_9/BiasAdd/ReadVariableOp?0time_distributed_4/dense_9/MatMul/ReadVariableOpR
lstm_5/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_5/Shape?
lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_5/strided_slice/stack?
lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_5/strided_slice/stack_1?
lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_5/strided_slice/stack_2?
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
B :?2
lstm_5/zeros/mul/y?
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
B :?2
lstm_5/zeros/Less/y?
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
B :?2
lstm_5/zeros/packed/1?
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
lstm_5/zeros/Const?
lstm_5/zerosFilllstm_5/zeros/packed:output:0lstm_5/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_5/zeroso
lstm_5/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_5/zeros_1/mul/y?
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
B :?2
lstm_5/zeros_1/Less/y?
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
B :?2
lstm_5/zeros_1/packed/1?
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
lstm_5/zeros_1/Const?
lstm_5/zeros_1Filllstm_5/zeros_1/packed:output:0lstm_5/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_5/zeros_1?
lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_5/transpose/perm?
lstm_5/transpose	Transposeinputslstm_5/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_5/transposed
lstm_5/Shape_1Shapelstm_5/transpose:y:0*
T0*
_output_shapes
:2
lstm_5/Shape_1?
lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_5/strided_slice_1/stack?
lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_1/stack_1?
lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_1/stack_2?
lstm_5/strided_slice_1StridedSlicelstm_5/Shape_1:output:0%lstm_5/strided_slice_1/stack:output:0'lstm_5/strided_slice_1/stack_1:output:0'lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_5/strided_slice_1?
"lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"lstm_5/TensorArrayV2/element_shape?
lstm_5/TensorArrayV2TensorListReserve+lstm_5/TensorArrayV2/element_shape:output:0lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_5/TensorArrayV2?
<lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2>
<lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape?
.lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_5/transpose:y:0Elstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_5/TensorArrayUnstack/TensorListFromTensor?
lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_5/strided_slice_2/stack?
lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_2/stack_1?
lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_2/stack_2?
lstm_5/strided_slice_2StridedSlicelstm_5/transpose:y:0%lstm_5/strided_slice_2/stack:output:0'lstm_5/strided_slice_2/stack_1:output:0'lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_5/strided_slice_2?
*lstm_5/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp3lstm_5_lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02,
*lstm_5/lstm_cell_102/MatMul/ReadVariableOp?
lstm_5/lstm_cell_102/MatMulMatMullstm_5/strided_slice_2:output:02lstm_5/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_102/MatMul?
,lstm_5/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp5lstm_5_lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,lstm_5/lstm_cell_102/MatMul_1/ReadVariableOp?
lstm_5/lstm_cell_102/MatMul_1MatMullstm_5/zeros:output:04lstm_5/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_102/MatMul_1?
lstm_5/lstm_cell_102/addAddV2%lstm_5/lstm_cell_102/MatMul:product:0'lstm_5/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_102/add?
+lstm_5/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp4lstm_5_lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+lstm_5/lstm_cell_102/BiasAdd/ReadVariableOp?
lstm_5/lstm_cell_102/BiasAddBiasAddlstm_5/lstm_cell_102/add:z:03lstm_5/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_102/BiasAddz
lstm_5/lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_5/lstm_cell_102/Const?
$lstm_5/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_5/lstm_cell_102/split/split_dim?
lstm_5/lstm_cell_102/splitSplit-lstm_5/lstm_cell_102/split/split_dim:output:0%lstm_5/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_5/lstm_cell_102/split?
lstm_5/lstm_cell_102/SigmoidSigmoid#lstm_5/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_102/Sigmoid?
lstm_5/lstm_cell_102/Sigmoid_1Sigmoid#lstm_5/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????2 
lstm_5/lstm_cell_102/Sigmoid_1?
lstm_5/lstm_cell_102/mulMul"lstm_5/lstm_cell_102/Sigmoid_1:y:0lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_102/mul?
lstm_5/lstm_cell_102/Sigmoid_2Sigmoid#lstm_5/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????2 
lstm_5/lstm_cell_102/Sigmoid_2?
lstm_5/lstm_cell_102/mul_1Mul#lstm_5/lstm_cell_102/split:output:2"lstm_5/lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_102/mul_1?
lstm_5/lstm_cell_102/IdentityIdentitylstm_5/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_102/Identity?
lstm_5/lstm_cell_102/IdentityN	IdentityNlstm_5/lstm_cell_102/mul_1:z:0#lstm_5/lstm_cell_102/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-708348*<
_output_shapes*
(:??????????:??????????2 
lstm_5/lstm_cell_102/IdentityN?
lstm_5/lstm_cell_102/mul_2Mul lstm_5/lstm_cell_102/Sigmoid:y:0'lstm_5/lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_102/mul_2?
lstm_5/lstm_cell_102/add_1AddV2lstm_5/lstm_cell_102/mul:z:0lstm_5/lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_102/add_1?
lstm_5/lstm_cell_102/Sigmoid_3Sigmoid#lstm_5/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????2 
lstm_5/lstm_cell_102/Sigmoid_3?
lstm_5/lstm_cell_102/Sigmoid_4Sigmoidlstm_5/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????2 
lstm_5/lstm_cell_102/Sigmoid_4?
lstm_5/lstm_cell_102/mul_3Mullstm_5/lstm_cell_102/add_1:z:0"lstm_5/lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_102/mul_3?
lstm_5/lstm_cell_102/Identity_1Identitylstm_5/lstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:??????????2!
lstm_5/lstm_cell_102/Identity_1?
 lstm_5/lstm_cell_102/IdentityN_1	IdentityNlstm_5/lstm_cell_102/mul_3:z:0lstm_5/lstm_cell_102/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-708357*<
_output_shapes*
(:??????????:??????????2"
 lstm_5/lstm_cell_102/IdentityN_1?
lstm_5/lstm_cell_102/mul_4Mul"lstm_5/lstm_cell_102/Sigmoid_3:y:0)lstm_5/lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_102/mul_4?
$lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2&
$lstm_5/TensorArrayV2_1/element_shape?
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
lstm_5/time?
lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
lstm_5/while/maximum_iterationsx
lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_5/while/loop_counter?
lstm_5/whileWhile"lstm_5/while/loop_counter:output:0(lstm_5/while/maximum_iterations:output:0lstm_5/time:output:0lstm_5/TensorArrayV2_1:handle:0lstm_5/zeros:output:0lstm_5/zeros_1:output:0lstm_5/strided_slice_1:output:0>lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_5_lstm_cell_102_matmul_readvariableop_resource5lstm_5_lstm_cell_102_matmul_1_readvariableop_resource4lstm_5_lstm_cell_102_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*$
bodyR
lstm_5_while_body_708368*$
condR
lstm_5_while_cond_708367*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
lstm_5/while?
7lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7lstm_5/TensorArrayV2Stack/TensorListStack/element_shape?
)lstm_5/TensorArrayV2Stack/TensorListStackTensorListStacklstm_5/while:output:3@lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02+
)lstm_5/TensorArrayV2Stack/TensorListStack?
lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_5/strided_slice_3/stack?
lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_5/strided_slice_3/stack_1?
lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_3/stack_2?
lstm_5/strided_slice_3StridedSlice2lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_5/strided_slice_3/stack:output:0'lstm_5/strided_slice_3/stack_1:output:0'lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm_5/strided_slice_3?
lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_5/transpose_1/perm?
lstm_5/transpose_1	Transpose2lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
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
lstm_6/Shape?
lstm_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_6/strided_slice/stack?
lstm_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_6/strided_slice/stack_1?
lstm_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_6/strided_slice/stack_2?
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
lstm_6/zeros/mul/y?
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
B :?2
lstm_6/zeros/Less/y?
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
lstm_6/zeros/packed/1?
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
lstm_6/zeros/Const?
lstm_6/zerosFilllstm_6/zeros/packed:output:0lstm_6/zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_6/zerosn
lstm_6/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_6/zeros_1/mul/y?
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
B :?2
lstm_6/zeros_1/Less/y?
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
lstm_6/zeros_1/packed/1?
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
lstm_6/zeros_1/Const?
lstm_6/zeros_1Filllstm_6/zeros_1/packed:output:0lstm_6/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_6/zeros_1?
lstm_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_6/transpose/perm?
lstm_6/transpose	Transposelstm_5/transpose_1:y:0lstm_6/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm_6/transposed
lstm_6/Shape_1Shapelstm_6/transpose:y:0*
T0*
_output_shapes
:2
lstm_6/Shape_1?
lstm_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_6/strided_slice_1/stack?
lstm_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_1/stack_1?
lstm_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_1/stack_2?
lstm_6/strided_slice_1StridedSlicelstm_6/Shape_1:output:0%lstm_6/strided_slice_1/stack:output:0'lstm_6/strided_slice_1/stack_1:output:0'lstm_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_6/strided_slice_1?
"lstm_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"lstm_6/TensorArrayV2/element_shape?
lstm_6/TensorArrayV2TensorListReserve+lstm_6/TensorArrayV2/element_shape:output:0lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_6/TensorArrayV2?
<lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2>
<lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shape?
.lstm_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_6/transpose:y:0Elstm_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_6/TensorArrayUnstack/TensorListFromTensor?
lstm_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_6/strided_slice_2/stack?
lstm_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_2/stack_1?
lstm_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_2/stack_2?
lstm_6/strided_slice_2StridedSlicelstm_6/transpose:y:0%lstm_6/strided_slice_2/stack:output:0'lstm_6/strided_slice_2/stack_1:output:0'lstm_6/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm_6/strided_slice_2?
*lstm_6/lstm_cell_103/MatMul/ReadVariableOpReadVariableOp3lstm_6_lstm_cell_103_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02,
*lstm_6/lstm_cell_103/MatMul/ReadVariableOp?
lstm_6/lstm_cell_103/MatMulMatMullstm_6/strided_slice_2:output:02lstm_6/lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_6/lstm_cell_103/MatMul?
,lstm_6/lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOp5lstm_6_lstm_cell_103_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02.
,lstm_6/lstm_cell_103/MatMul_1/ReadVariableOp?
lstm_6/lstm_cell_103/MatMul_1MatMullstm_6/zeros:output:04lstm_6/lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_6/lstm_cell_103/MatMul_1?
lstm_6/lstm_cell_103/addAddV2%lstm_6/lstm_cell_103/MatMul:product:0'lstm_6/lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_6/lstm_cell_103/add?
+lstm_6/lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOp4lstm_6_lstm_cell_103_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+lstm_6/lstm_cell_103/BiasAdd/ReadVariableOp?
lstm_6/lstm_cell_103/BiasAddBiasAddlstm_6/lstm_cell_103/add:z:03lstm_6/lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_6/lstm_cell_103/BiasAddz
lstm_6/lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_6/lstm_cell_103/Const?
$lstm_6/lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_6/lstm_cell_103/split/split_dim?
lstm_6/lstm_cell_103/splitSplit-lstm_6/lstm_cell_103/split/split_dim:output:0%lstm_6/lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
lstm_6/lstm_cell_103/split?
lstm_6/lstm_cell_103/SigmoidSigmoid#lstm_6/lstm_cell_103/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_103/Sigmoid?
lstm_6/lstm_cell_103/Sigmoid_1Sigmoid#lstm_6/lstm_cell_103/split:output:1*
T0*'
_output_shapes
:?????????@2 
lstm_6/lstm_cell_103/Sigmoid_1?
lstm_6/lstm_cell_103/mulMul"lstm_6/lstm_cell_103/Sigmoid_1:y:0lstm_6/zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_103/mul?
lstm_6/lstm_cell_103/Sigmoid_2Sigmoid#lstm_6/lstm_cell_103/split:output:2*
T0*'
_output_shapes
:?????????@2 
lstm_6/lstm_cell_103/Sigmoid_2?
lstm_6/lstm_cell_103/mul_1Mul#lstm_6/lstm_cell_103/split:output:2"lstm_6/lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_103/mul_1?
lstm_6/lstm_cell_103/IdentityIdentitylstm_6/lstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_103/Identity?
lstm_6/lstm_cell_103/IdentityN	IdentityNlstm_6/lstm_cell_103/mul_1:z:0#lstm_6/lstm_cell_103/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-708517*:
_output_shapes(
&:?????????@:?????????@2 
lstm_6/lstm_cell_103/IdentityN?
lstm_6/lstm_cell_103/mul_2Mul lstm_6/lstm_cell_103/Sigmoid:y:0'lstm_6/lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_103/mul_2?
lstm_6/lstm_cell_103/add_1AddV2lstm_6/lstm_cell_103/mul:z:0lstm_6/lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_103/add_1?
lstm_6/lstm_cell_103/Sigmoid_3Sigmoid#lstm_6/lstm_cell_103/split:output:3*
T0*'
_output_shapes
:?????????@2 
lstm_6/lstm_cell_103/Sigmoid_3?
lstm_6/lstm_cell_103/Sigmoid_4Sigmoidlstm_6/lstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:?????????@2 
lstm_6/lstm_cell_103/Sigmoid_4?
lstm_6/lstm_cell_103/mul_3Mullstm_6/lstm_cell_103/add_1:z:0"lstm_6/lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_103/mul_3?
lstm_6/lstm_cell_103/Identity_1Identitylstm_6/lstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:?????????@2!
lstm_6/lstm_cell_103/Identity_1?
 lstm_6/lstm_cell_103/IdentityN_1	IdentityNlstm_6/lstm_cell_103/mul_3:z:0lstm_6/lstm_cell_103/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-708526*:
_output_shapes(
&:?????????@:?????????@2"
 lstm_6/lstm_cell_103/IdentityN_1?
lstm_6/lstm_cell_103/mul_4Mul"lstm_6/lstm_cell_103/Sigmoid_3:y:0)lstm_6/lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_103/mul_4?
$lstm_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2&
$lstm_6/TensorArrayV2_1/element_shape?
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
lstm_6/time?
lstm_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
lstm_6/while/maximum_iterationsx
lstm_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_6/while/loop_counter?
lstm_6/whileWhile"lstm_6/while/loop_counter:output:0(lstm_6/while/maximum_iterations:output:0lstm_6/time:output:0lstm_6/TensorArrayV2_1:handle:0lstm_6/zeros:output:0lstm_6/zeros_1:output:0lstm_6/strided_slice_1:output:0>lstm_6/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_6_lstm_cell_103_matmul_readvariableop_resource5lstm_6_lstm_cell_103_matmul_1_readvariableop_resource4lstm_6_lstm_cell_103_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*$
bodyR
lstm_6_while_body_708537*$
condR
lstm_6_while_cond_708536*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
lstm_6/while?
7lstm_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   29
7lstm_6/TensorArrayV2Stack/TensorListStack/element_shape?
)lstm_6/TensorArrayV2Stack/TensorListStackTensorListStacklstm_6/while:output:3@lstm_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype02+
)lstm_6/TensorArrayV2Stack/TensorListStack?
lstm_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_6/strided_slice_3/stack?
lstm_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_6/strided_slice_3/stack_1?
lstm_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_3/stack_2?
lstm_6/strided_slice_3StridedSlice2lstm_6/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_6/strided_slice_3/stack:output:0'lstm_6/strided_slice_3/stack_1:output:0'lstm_6/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
lstm_6/strided_slice_3?
lstm_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_6/transpose_1/perm?
lstm_6/transpose_1	Transpose2lstm_6/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_6/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@2
lstm_6/transpose_1t
lstm_6/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_6/runtime?
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2"
 time_distributed_3/Reshape/shape?
time_distributed_3/ReshapeReshapelstm_6/transpose_1:y:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????@2
time_distributed_3/Reshape?
0time_distributed_3/dense_8/MatMul/ReadVariableOpReadVariableOp9time_distributed_3_dense_8_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype022
0time_distributed_3/dense_8/MatMul/ReadVariableOp?
!time_distributed_3/dense_8/MatMulMatMul#time_distributed_3/Reshape:output:08time_distributed_3/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2#
!time_distributed_3/dense_8/MatMul?
1time_distributed_3/dense_8/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_3_dense_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype023
1time_distributed_3/dense_8/BiasAdd/ReadVariableOp?
"time_distributed_3/dense_8/BiasAddBiasAdd+time_distributed_3/dense_8/MatMul:product:09time_distributed_3/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2$
"time_distributed_3/dense_8/BiasAdd?
"time_distributed_3/dense_8/SigmoidSigmoid+time_distributed_3/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2$
"time_distributed_3/dense_8/Sigmoid?
time_distributed_3/dense_8/mulMul+time_distributed_3/dense_8/BiasAdd:output:0&time_distributed_3/dense_8/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2 
time_distributed_3/dense_8/mul?
#time_distributed_3/dense_8/IdentityIdentity"time_distributed_3/dense_8/mul:z:0*
T0*'
_output_shapes
:?????????@2%
#time_distributed_3/dense_8/Identity?
$time_distributed_3/dense_8/IdentityN	IdentityN"time_distributed_3/dense_8/mul:z:0+time_distributed_3/dense_8/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-708639*:
_output_shapes(
&:?????????@:?????????@2&
$time_distributed_3/dense_8/IdentityN?
"time_distributed_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   @   2$
"time_distributed_3/Reshape_1/shape?
time_distributed_3/Reshape_1Reshape-time_distributed_3/dense_8/IdentityN:output:0+time_distributed_3/Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????@2
time_distributed_3/Reshape_1?
"time_distributed_3/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2$
"time_distributed_3/Reshape_2/shape?
time_distributed_3/Reshape_2Reshapelstm_6/transpose_1:y:0+time_distributed_3/Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????@2
time_distributed_3/Reshape_2?
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2"
 time_distributed_4/Reshape/shape?
time_distributed_4/ReshapeReshape%time_distributed_3/Reshape_1:output:0)time_distributed_4/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????@2
time_distributed_4/Reshape?
0time_distributed_4/dense_9/MatMul/ReadVariableOpReadVariableOp9time_distributed_4_dense_9_matmul_readvariableop_resource*
_output_shapes

:@*
dtype022
0time_distributed_4/dense_9/MatMul/ReadVariableOp?
!time_distributed_4/dense_9/MatMulMatMul#time_distributed_4/Reshape:output:08time_distributed_4/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!time_distributed_4/dense_9/MatMul?
1time_distributed_4/dense_9/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_4_dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype023
1time_distributed_4/dense_9/BiasAdd/ReadVariableOp?
"time_distributed_4/dense_9/BiasAddBiasAdd+time_distributed_4/dense_9/MatMul:product:09time_distributed_4/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2$
"time_distributed_4/dense_9/BiasAdd?
"time_distributed_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      2$
"time_distributed_4/Reshape_1/shape?
time_distributed_4/Reshape_1Reshape+time_distributed_4/dense_9/BiasAdd:output:0+time_distributed_4/Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????2
time_distributed_4/Reshape_1?
"time_distributed_4/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2$
"time_distributed_4/Reshape_2/shape?
time_distributed_4/Reshape_2Reshape%time_distributed_3/Reshape_1:output:0+time_distributed_4/Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????@2
time_distributed_4/Reshape_2?
IdentityIdentity%time_distributed_4/Reshape_1:output:0,^lstm_5/lstm_cell_102/BiasAdd/ReadVariableOp+^lstm_5/lstm_cell_102/MatMul/ReadVariableOp-^lstm_5/lstm_cell_102/MatMul_1/ReadVariableOp^lstm_5/while,^lstm_6/lstm_cell_103/BiasAdd/ReadVariableOp+^lstm_6/lstm_cell_103/MatMul/ReadVariableOp-^lstm_6/lstm_cell_103/MatMul_1/ReadVariableOp^lstm_6/while2^time_distributed_3/dense_8/BiasAdd/ReadVariableOp1^time_distributed_3/dense_8/MatMul/ReadVariableOp2^time_distributed_4/dense_9/BiasAdd/ReadVariableOp1^time_distributed_4/dense_9/MatMul/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:?????????::::::::::2Z
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
:?????????
 
_user_specified_nameinputs
?
?
H__inference_sequential_3_layer_call_and_return_conditional_losses_708232

inputs
lstm_5_708203
lstm_5_708205
lstm_5_708207
lstm_6_708210
lstm_6_708212
lstm_6_708214
time_distributed_3_708217
time_distributed_3_708219
time_distributed_4_708224
time_distributed_4_708226
identity??lstm_5/StatefulPartitionedCall?lstm_6/StatefulPartitionedCall?*time_distributed_3/StatefulPartitionedCall?*time_distributed_4/StatefulPartitionedCall?
lstm_5/StatefulPartitionedCallStatefulPartitionedCallinputslstm_5_708203lstm_5_708205lstm_5_708207*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_7075842 
lstm_5/StatefulPartitionedCall?
lstm_6/StatefulPartitionedCallStatefulPartitionedCall'lstm_5/StatefulPartitionedCall:output:0lstm_6_708210lstm_6_708212lstm_6_708214*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_7079592 
lstm_6/StatefulPartitionedCall?
*time_distributed_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_6/StatefulPartitionedCall:output:0time_distributed_3_708217time_distributed_3_708219*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_7080282,
*time_distributed_3/StatefulPartitionedCall?
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2"
 time_distributed_3/Reshape/shape?
time_distributed_3/ReshapeReshape'lstm_6/StatefulPartitionedCall:output:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????@2
time_distributed_3/Reshape?
*time_distributed_4/StatefulPartitionedCallStatefulPartitionedCall3time_distributed_3/StatefulPartitionedCall:output:0time_distributed_4_708224time_distributed_4_708226*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_7080812,
*time_distributed_4/StatefulPartitionedCall?
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2"
 time_distributed_4/Reshape/shape?
time_distributed_4/ReshapeReshape3time_distributed_3/StatefulPartitionedCall:output:0)time_distributed_4/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????@2
time_distributed_4/Reshape?
IdentityIdentity3time_distributed_4/StatefulPartitionedCall:output:0^lstm_5/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall+^time_distributed_3/StatefulPartitionedCall+^time_distributed_4/StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:?????????::::::::::2@
lstm_5/StatefulPartitionedCalllstm_5/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall2X
*time_distributed_3/StatefulPartitionedCall*time_distributed_3/StatefulPartitionedCall2X
*time_distributed_4/StatefulPartitionedCall*time_distributed_4/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
'__inference_lstm_6_layer_call_fn_710556

inputs
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_7079592
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????:::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
while_cond_706776
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_706776___redundant_placeholder04
0while_while_cond_706776___redundant_placeholder14
0while_while_cond_706776___redundant_placeholder24
0while_while_cond_706776___redundant_placeholder3
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
@: : : : :?????????@:?????????@: ::::: 
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
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?d
?
B__inference_lstm_5_layer_call_and_return_conditional_losses_709625

inputs0
,lstm_cell_102_matmul_readvariableop_resource2
.lstm_cell_102_matmul_1_readvariableop_resource1
-lstm_cell_102_biasadd_readvariableop_resource
identity??$lstm_cell_102/BiasAdd/ReadVariableOp?#lstm_cell_102/MatMul/ReadVariableOp?%lstm_cell_102/MatMul_1/ReadVariableOp?whileD
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
strided_slice/stack_2?
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
B :?2
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
B :?2
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
B :?2
zeros/packed/1?
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
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
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
B :?2
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
B :?2
zeros_1/packed/1?
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
:??????????2	
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
:?????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_102/MatMul/ReadVariableOpReadVariableOp,lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02%
#lstm_cell_102/MatMul/ReadVariableOp?
lstm_cell_102/MatMulMatMulstrided_slice_2:output:0+lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/MatMul?
%lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02'
%lstm_cell_102/MatMul_1/ReadVariableOp?
lstm_cell_102/MatMul_1MatMulzeros:output:0-lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/MatMul_1?
lstm_cell_102/addAddV2lstm_cell_102/MatMul:product:0 lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/add?
$lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_102/BiasAdd/ReadVariableOp?
lstm_cell_102/BiasAddBiasAddlstm_cell_102/add:z:0,lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/BiasAddl
lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/Const?
lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/split/split_dim?
lstm_cell_102/splitSplit&lstm_cell_102/split/split_dim:output:0lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_102/split?
lstm_cell_102/SigmoidSigmoidlstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid?
lstm_cell_102/Sigmoid_1Sigmoidlstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_1?
lstm_cell_102/mulMullstm_cell_102/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul?
lstm_cell_102/Sigmoid_2Sigmoidlstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_2?
lstm_cell_102/mul_1Mullstm_cell_102/split:output:2lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_1?
lstm_cell_102/IdentityIdentitylstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Identity?
lstm_cell_102/IdentityN	IdentityNlstm_cell_102/mul_1:z:0lstm_cell_102/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-709510*<
_output_shapes*
(:??????????:??????????2
lstm_cell_102/IdentityN?
lstm_cell_102/mul_2Mullstm_cell_102/Sigmoid:y:0 lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_2?
lstm_cell_102/add_1AddV2lstm_cell_102/mul:z:0lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/add_1?
lstm_cell_102/Sigmoid_3Sigmoidlstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_3?
lstm_cell_102/Sigmoid_4Sigmoidlstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_4?
lstm_cell_102/mul_3Mullstm_cell_102/add_1:z:0lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_3?
lstm_cell_102/Identity_1Identitylstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Identity_1?
lstm_cell_102/IdentityN_1	IdentityNlstm_cell_102/mul_3:z:0lstm_cell_102/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-709519*<
_output_shapes*
(:??????????:??????????2
lstm_cell_102/IdentityN_1?
lstm_cell_102/mul_4Mullstm_cell_102/Sigmoid_3:y:0"lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_4?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_102_matmul_readvariableop_resource.lstm_cell_102_matmul_1_readvariableop_resource-lstm_cell_102_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_709530*
condR
while_cond_709529*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0%^lstm_cell_102/BiasAdd/ReadVariableOp$^lstm_cell_102/MatMul/ReadVariableOp&^lstm_cell_102/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????:::2L
$lstm_cell_102/BiasAdd/ReadVariableOp$lstm_cell_102/BiasAdd/ReadVariableOp2J
#lstm_cell_102/MatMul/ReadVariableOp#lstm_cell_102/MatMul/ReadVariableOp2N
%lstm_cell_102/MatMul_1/ReadVariableOp%lstm_cell_102/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
3__inference_time_distributed_3_layer_call_fn_710605

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_7080082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????@::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?M
?
while_body_707864
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
3while_lstm_cell_103_biasadd_readvariableop_resource??*while/lstm_cell_103/BiasAdd/ReadVariableOp?)while/lstm_cell_103/MatMul/ReadVariableOp?+while/lstm_cell_103/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_103/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_103_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_103/MatMul/ReadVariableOp?
while/lstm_cell_103/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_103/MatMul?
+while/lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_103_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02-
+while/lstm_cell_103/MatMul_1/ReadVariableOp?
while/lstm_cell_103/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_103/MatMul_1?
while/lstm_cell_103/addAddV2$while/lstm_cell_103/MatMul:product:0&while/lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_103/add?
*while/lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_103_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_103/BiasAdd/ReadVariableOp?
while/lstm_cell_103/BiasAddBiasAddwhile/lstm_cell_103/add:z:02while/lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_103/BiasAddx
while/lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_103/Const?
#while/lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_103/split/split_dim?
while/lstm_cell_103/splitSplit,while/lstm_cell_103/split/split_dim:output:0$while/lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
while/lstm_cell_103/split?
while/lstm_cell_103/SigmoidSigmoid"while/lstm_cell_103/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Sigmoid?
while/lstm_cell_103/Sigmoid_1Sigmoid"while/lstm_cell_103/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Sigmoid_1?
while/lstm_cell_103/mulMul!while/lstm_cell_103/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/mul?
while/lstm_cell_103/Sigmoid_2Sigmoid"while/lstm_cell_103/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Sigmoid_2?
while/lstm_cell_103/mul_1Mul"while/lstm_cell_103/split:output:2!while/lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/mul_1?
while/lstm_cell_103/IdentityIdentitywhile/lstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Identity?
while/lstm_cell_103/IdentityN	IdentityNwhile/lstm_cell_103/mul_1:z:0"while/lstm_cell_103/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-707907*:
_output_shapes(
&:?????????@:?????????@2
while/lstm_cell_103/IdentityN?
while/lstm_cell_103/mul_2Mulwhile/lstm_cell_103/Sigmoid:y:0&while/lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/mul_2?
while/lstm_cell_103/add_1AddV2while/lstm_cell_103/mul:z:0while/lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/add_1?
while/lstm_cell_103/Sigmoid_3Sigmoid"while/lstm_cell_103/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Sigmoid_3?
while/lstm_cell_103/Sigmoid_4Sigmoidwhile/lstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Sigmoid_4?
while/lstm_cell_103/mul_3Mulwhile/lstm_cell_103/add_1:z:0!while/lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/mul_3?
while/lstm_cell_103/Identity_1Identitywhile/lstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:?????????@2 
while/lstm_cell_103/Identity_1?
while/lstm_cell_103/IdentityN_1	IdentityNwhile/lstm_cell_103/mul_3:z:0while/lstm_cell_103/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-707916*:
_output_shapes(
&:?????????@:?????????@2!
while/lstm_cell_103/IdentityN_1?
while/lstm_cell_103/mul_4Mul!while/lstm_cell_103/Sigmoid_3:y:0(while/lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/mul_4?
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_103/mul_4:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_103/add_1:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
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
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????@:?????????@: : :::2X
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
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_706146
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_706146___redundant_placeholder04
0while_while_cond_706146___redundant_placeholder14
0while_while_cond_706146___redundant_placeholder24
0while_while_cond_706146___redundant_placeholder3
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
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?D
?
B__inference_lstm_6_layer_call_and_return_conditional_losses_706978

inputs
lstm_cell_103_706896
lstm_cell_103_706898
lstm_cell_103_706900
identity??%lstm_cell_103/StatefulPartitionedCall?whileD
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
strided_slice/stack_2?
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
B :?2
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
zeros/packed/1?
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
:?????????@2
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
B :?2
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
zeros_1/packed/1?
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
:?????????@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
%lstm_cell_103/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_103_706896lstm_cell_103_706898lstm_cell_103_706900*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????@:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_103_layer_call_and_return_conditional_losses_7064832'
%lstm_cell_103/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_103_706896lstm_cell_103_706898lstm_cell_103_706900*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_706909*
condR
while_cond_706908*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0&^lstm_cell_103/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :??????????????????@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:???????????????????:::2N
%lstm_cell_103/StatefulPartitionedCall%lstm_cell_103/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?"
?
I__inference_lstm_cell_103_layer_call_and_return_conditional_losses_706483

inputs

states
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource

identity_2

identity_3

identity_4??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
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
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????@2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????@2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????@2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:?????????@2
	Sigmoid_2f
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
mul_1]
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:?????????@2

Identity?
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*,
_gradient_op_typeCustomGradient-706464*:
_output_shapes(
&:?????????@:?????????@2
	IdentityNh
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
mul_2]
add_1AddV2mul:z:0	mul_2:z:0*
T0*'
_output_shapes
:?????????@2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????@2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????@2
	Sigmoid_4a
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
mul_3a

Identity_1Identity	mul_3:z:0*
T0*'
_output_shapes
:?????????@2

Identity_1?
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-706473*:
_output_shapes(
&:?????????@:?????????@2
IdentityN_1l
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
mul_4?

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_2?

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_3?

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*Y
_input_shapesH
F:??????????:?????????@:?????????@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_namestates:OK
'
_output_shapes
:?????????@
 
_user_specified_namestates
?d
?
B__inference_lstm_5_layer_call_and_return_conditional_losses_709798

inputs0
,lstm_cell_102_matmul_readvariableop_resource2
.lstm_cell_102_matmul_1_readvariableop_resource1
-lstm_cell_102_biasadd_readvariableop_resource
identity??$lstm_cell_102/BiasAdd/ReadVariableOp?#lstm_cell_102/MatMul/ReadVariableOp?%lstm_cell_102/MatMul_1/ReadVariableOp?whileD
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
strided_slice/stack_2?
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
B :?2
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
B :?2
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
B :?2
zeros/packed/1?
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
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
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
B :?2
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
B :?2
zeros_1/packed/1?
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
:??????????2	
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
:?????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_102/MatMul/ReadVariableOpReadVariableOp,lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02%
#lstm_cell_102/MatMul/ReadVariableOp?
lstm_cell_102/MatMulMatMulstrided_slice_2:output:0+lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/MatMul?
%lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02'
%lstm_cell_102/MatMul_1/ReadVariableOp?
lstm_cell_102/MatMul_1MatMulzeros:output:0-lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/MatMul_1?
lstm_cell_102/addAddV2lstm_cell_102/MatMul:product:0 lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/add?
$lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_102/BiasAdd/ReadVariableOp?
lstm_cell_102/BiasAddBiasAddlstm_cell_102/add:z:0,lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/BiasAddl
lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/Const?
lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/split/split_dim?
lstm_cell_102/splitSplit&lstm_cell_102/split/split_dim:output:0lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_102/split?
lstm_cell_102/SigmoidSigmoidlstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid?
lstm_cell_102/Sigmoid_1Sigmoidlstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_1?
lstm_cell_102/mulMullstm_cell_102/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul?
lstm_cell_102/Sigmoid_2Sigmoidlstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_2?
lstm_cell_102/mul_1Mullstm_cell_102/split:output:2lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_1?
lstm_cell_102/IdentityIdentitylstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Identity?
lstm_cell_102/IdentityN	IdentityNlstm_cell_102/mul_1:z:0lstm_cell_102/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-709683*<
_output_shapes*
(:??????????:??????????2
lstm_cell_102/IdentityN?
lstm_cell_102/mul_2Mullstm_cell_102/Sigmoid:y:0 lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_2?
lstm_cell_102/add_1AddV2lstm_cell_102/mul:z:0lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/add_1?
lstm_cell_102/Sigmoid_3Sigmoidlstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_3?
lstm_cell_102/Sigmoid_4Sigmoidlstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_4?
lstm_cell_102/mul_3Mullstm_cell_102/add_1:z:0lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_3?
lstm_cell_102/Identity_1Identitylstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Identity_1?
lstm_cell_102/IdentityN_1	IdentityNlstm_cell_102/mul_3:z:0lstm_cell_102/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-709692*<
_output_shapes*
(:??????????:??????????2
lstm_cell_102/IdentityN_1?
lstm_cell_102/mul_4Mullstm_cell_102/Sigmoid_3:y:0"lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_4?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_102_matmul_readvariableop_resource.lstm_cell_102_matmul_1_readvariableop_resource-lstm_cell_102_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_709703*
condR
while_cond_709702*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0%^lstm_cell_102/BiasAdd/ReadVariableOp$^lstm_cell_102/MatMul/ReadVariableOp&^lstm_cell_102/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????:::2L
$lstm_cell_102/BiasAdd/ReadVariableOp$lstm_cell_102/BiasAdd/ReadVariableOp2J
#lstm_cell_102/MatMul/ReadVariableOp#lstm_cell_102/MatMul/ReadVariableOp2N
%lstm_cell_102/MatMul_1/ReadVariableOp%lstm_cell_102/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
C__inference_dense_8_layer_call_and_return_conditional_losses_707014

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2	
Sigmoidb
mulMulBiasAdd:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
mul[
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:?????????@2

Identity?
	IdentityN	IdentityNmul:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-707007*:
_output_shapes(
&:?????????@:?????????@2
	IdentityN?

Identity_1IdentityIdentityN:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?e
?
B__inference_lstm_5_layer_call_and_return_conditional_losses_709430
inputs_00
,lstm_cell_102_matmul_readvariableop_resource2
.lstm_cell_102_matmul_1_readvariableop_resource1
-lstm_cell_102_biasadd_readvariableop_resource
identity??$lstm_cell_102/BiasAdd/ReadVariableOp?#lstm_cell_102/MatMul/ReadVariableOp?%lstm_cell_102/MatMul_1/ReadVariableOp?whileF
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
strided_slice/stack_2?
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
B :?2
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
B :?2
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
B :?2
zeros/packed/1?
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
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
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
B :?2
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
B :?2
zeros_1/packed/1?
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
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_102/MatMul/ReadVariableOpReadVariableOp,lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02%
#lstm_cell_102/MatMul/ReadVariableOp?
lstm_cell_102/MatMulMatMulstrided_slice_2:output:0+lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/MatMul?
%lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02'
%lstm_cell_102/MatMul_1/ReadVariableOp?
lstm_cell_102/MatMul_1MatMulzeros:output:0-lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/MatMul_1?
lstm_cell_102/addAddV2lstm_cell_102/MatMul:product:0 lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/add?
$lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_102/BiasAdd/ReadVariableOp?
lstm_cell_102/BiasAddBiasAddlstm_cell_102/add:z:0,lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/BiasAddl
lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/Const?
lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/split/split_dim?
lstm_cell_102/splitSplit&lstm_cell_102/split/split_dim:output:0lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_102/split?
lstm_cell_102/SigmoidSigmoidlstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid?
lstm_cell_102/Sigmoid_1Sigmoidlstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_1?
lstm_cell_102/mulMullstm_cell_102/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul?
lstm_cell_102/Sigmoid_2Sigmoidlstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_2?
lstm_cell_102/mul_1Mullstm_cell_102/split:output:2lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_1?
lstm_cell_102/IdentityIdentitylstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Identity?
lstm_cell_102/IdentityN	IdentityNlstm_cell_102/mul_1:z:0lstm_cell_102/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-709315*<
_output_shapes*
(:??????????:??????????2
lstm_cell_102/IdentityN?
lstm_cell_102/mul_2Mullstm_cell_102/Sigmoid:y:0 lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_2?
lstm_cell_102/add_1AddV2lstm_cell_102/mul:z:0lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/add_1?
lstm_cell_102/Sigmoid_3Sigmoidlstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_3?
lstm_cell_102/Sigmoid_4Sigmoidlstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_4?
lstm_cell_102/mul_3Mullstm_cell_102/add_1:z:0lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_3?
lstm_cell_102/Identity_1Identitylstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Identity_1?
lstm_cell_102/IdentityN_1	IdentityNlstm_cell_102/mul_3:z:0lstm_cell_102/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-709324*<
_output_shapes*
(:??????????:??????????2
lstm_cell_102/IdentityN_1?
lstm_cell_102/mul_4Mullstm_cell_102/Sigmoid_3:y:0"lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_4?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_102_matmul_readvariableop_resource.lstm_cell_102_matmul_1_readvariableop_resource-lstm_cell_102_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_709335*
condR
while_cond_709334*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0%^lstm_cell_102/BiasAdd/ReadVariableOp$^lstm_cell_102/MatMul/ReadVariableOp&^lstm_cell_102/MatMul_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????????????:::2L
$lstm_cell_102/BiasAdd/ReadVariableOp$lstm_cell_102/BiasAdd/ReadVariableOp2J
#lstm_cell_102/MatMul/ReadVariableOp#lstm_cell_102/MatMul/ReadVariableOp2N
%lstm_cell_102/MatMul_1/ReadVariableOp%lstm_cell_102/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
%sequential_3_lstm_6_while_cond_705601D
@sequential_3_lstm_6_while_sequential_3_lstm_6_while_loop_counterJ
Fsequential_3_lstm_6_while_sequential_3_lstm_6_while_maximum_iterations)
%sequential_3_lstm_6_while_placeholder+
'sequential_3_lstm_6_while_placeholder_1+
'sequential_3_lstm_6_while_placeholder_2+
'sequential_3_lstm_6_while_placeholder_3F
Bsequential_3_lstm_6_while_less_sequential_3_lstm_6_strided_slice_1\
Xsequential_3_lstm_6_while_sequential_3_lstm_6_while_cond_705601___redundant_placeholder0\
Xsequential_3_lstm_6_while_sequential_3_lstm_6_while_cond_705601___redundant_placeholder1\
Xsequential_3_lstm_6_while_sequential_3_lstm_6_while_cond_705601___redundant_placeholder2\
Xsequential_3_lstm_6_while_sequential_3_lstm_6_while_cond_705601___redundant_placeholder3&
"sequential_3_lstm_6_while_identity
?
sequential_3/lstm_6/while/LessLess%sequential_3_lstm_6_while_placeholderBsequential_3_lstm_6_while_less_sequential_3_lstm_6_strided_slice_1*
T0*
_output_shapes
: 2 
sequential_3/lstm_6/while/Less?
"sequential_3/lstm_6/while/IdentityIdentity"sequential_3/lstm_6/while/Less:z:0*
T0
*
_output_shapes
: 2$
"sequential_3/lstm_6/while/Identity"Q
"sequential_3_lstm_6_while_identity+sequential_3/lstm_6/while/Identity:output:0*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 
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
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_710265
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_710265___redundant_placeholder04
0while_while_cond_710265___redundant_placeholder14
0while_while_cond_710265___redundant_placeholder24
0while_while_cond_710265___redundant_placeholder3
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
@: : : : :?????????@:?????????@: ::::: 
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
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?M
?
while_body_707316
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
3while_lstm_cell_102_biasadd_readvariableop_resource??*while/lstm_cell_102/BiasAdd/ReadVariableOp?)while/lstm_cell_102/MatMul/ReadVariableOp?+while/lstm_cell_102/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02+
)while/lstm_cell_102/MatMul/ReadVariableOp?
while/lstm_cell_102/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/MatMul?
+while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02-
+while/lstm_cell_102/MatMul_1/ReadVariableOp?
while/lstm_cell_102/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/MatMul_1?
while/lstm_cell_102/addAddV2$while/lstm_cell_102/MatMul:product:0&while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/add?
*while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_102/BiasAdd/ReadVariableOp?
while/lstm_cell_102/BiasAddBiasAddwhile/lstm_cell_102/add:z:02while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/BiasAddx
while/lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_102/Const?
#while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_102/split/split_dim?
while/lstm_cell_102/splitSplit,while/lstm_cell_102/split/split_dim:output:0$while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_102/split?
while/lstm_cell_102/SigmoidSigmoid"while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid?
while/lstm_cell_102/Sigmoid_1Sigmoid"while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_1?
while/lstm_cell_102/mulMul!while/lstm_cell_102/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul?
while/lstm_cell_102/Sigmoid_2Sigmoid"while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_2?
while/lstm_cell_102/mul_1Mul"while/lstm_cell_102/split:output:2!while/lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_1?
while/lstm_cell_102/IdentityIdentitywhile/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Identity?
while/lstm_cell_102/IdentityN	IdentityNwhile/lstm_cell_102/mul_1:z:0"while/lstm_cell_102/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-707359*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell_102/IdentityN?
while/lstm_cell_102/mul_2Mulwhile/lstm_cell_102/Sigmoid:y:0&while/lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_2?
while/lstm_cell_102/add_1AddV2while/lstm_cell_102/mul:z:0while/lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/add_1?
while/lstm_cell_102/Sigmoid_3Sigmoid"while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_3?
while/lstm_cell_102/Sigmoid_4Sigmoidwhile/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_4?
while/lstm_cell_102/mul_3Mulwhile/lstm_cell_102/add_1:z:0!while/lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_3?
while/lstm_cell_102/Identity_1Identitywhile/lstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:??????????2 
while/lstm_cell_102/Identity_1?
while/lstm_cell_102/IdentityN_1	IdentityNwhile/lstm_cell_102/mul_3:z:0while/lstm_cell_102/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-707368*<
_output_shapes*
(:??????????:??????????2!
while/lstm_cell_102/IdentityN_1?
while/lstm_cell_102/mul_4Mul!while/lstm_cell_102/Sigmoid_3:y:0(while/lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_4?
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_102/mul_4:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_102/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
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
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2X
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?	
?
-__inference_sequential_3_layer_call_fn_708198
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
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_5_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_7081752
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:?????????::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:?????????
&
_user_specified_namelstm_5_input
?M
?
while_body_707489
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
3while_lstm_cell_102_biasadd_readvariableop_resource??*while/lstm_cell_102/BiasAdd/ReadVariableOp?)while/lstm_cell_102/MatMul/ReadVariableOp?+while/lstm_cell_102/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02+
)while/lstm_cell_102/MatMul/ReadVariableOp?
while/lstm_cell_102/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/MatMul?
+while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02-
+while/lstm_cell_102/MatMul_1/ReadVariableOp?
while/lstm_cell_102/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/MatMul_1?
while/lstm_cell_102/addAddV2$while/lstm_cell_102/MatMul:product:0&while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/add?
*while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_102/BiasAdd/ReadVariableOp?
while/lstm_cell_102/BiasAddBiasAddwhile/lstm_cell_102/add:z:02while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/BiasAddx
while/lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_102/Const?
#while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_102/split/split_dim?
while/lstm_cell_102/splitSplit,while/lstm_cell_102/split/split_dim:output:0$while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_102/split?
while/lstm_cell_102/SigmoidSigmoid"while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid?
while/lstm_cell_102/Sigmoid_1Sigmoid"while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_1?
while/lstm_cell_102/mulMul!while/lstm_cell_102/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul?
while/lstm_cell_102/Sigmoid_2Sigmoid"while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_2?
while/lstm_cell_102/mul_1Mul"while/lstm_cell_102/split:output:2!while/lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_1?
while/lstm_cell_102/IdentityIdentitywhile/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Identity?
while/lstm_cell_102/IdentityN	IdentityNwhile/lstm_cell_102/mul_1:z:0"while/lstm_cell_102/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-707532*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell_102/IdentityN?
while/lstm_cell_102/mul_2Mulwhile/lstm_cell_102/Sigmoid:y:0&while/lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_2?
while/lstm_cell_102/add_1AddV2while/lstm_cell_102/mul:z:0while/lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/add_1?
while/lstm_cell_102/Sigmoid_3Sigmoid"while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_3?
while/lstm_cell_102/Sigmoid_4Sigmoidwhile/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_4?
while/lstm_cell_102/mul_3Mulwhile/lstm_cell_102/add_1:z:0!while/lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_3?
while/lstm_cell_102/Identity_1Identitywhile/lstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:??????????2 
while/lstm_cell_102/Identity_1?
while/lstm_cell_102/IdentityN_1	IdentityNwhile/lstm_cell_102/mul_3:z:0while/lstm_cell_102/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-707541*<
_output_shapes*
(:??????????:??????????2!
while/lstm_cell_102/IdentityN_1?
while/lstm_cell_102/mul_4Mul!while/lstm_cell_102/Sigmoid_3:y:0(while/lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_4?
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_102/mul_4:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_102/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
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
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2X
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
}
(__inference_dense_8_layer_call_fn_711057

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_7070142
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?d
?
B__inference_lstm_6_layer_call_and_return_conditional_losses_707959

inputs0
,lstm_cell_103_matmul_readvariableop_resource2
.lstm_cell_103_matmul_1_readvariableop_resource1
-lstm_cell_103_biasadd_readvariableop_resource
identity??$lstm_cell_103/BiasAdd/ReadVariableOp?#lstm_cell_103/MatMul/ReadVariableOp?%lstm_cell_103/MatMul_1/ReadVariableOp?whileD
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
strided_slice/stack_2?
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
B :?2
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
zeros/packed/1?
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
:?????????@2
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
B :?2
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
zeros_1/packed/1?
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
:?????????@2	
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
:??????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_103/MatMul/ReadVariableOpReadVariableOp,lstm_cell_103_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_103/MatMul/ReadVariableOp?
lstm_cell_103/MatMulMatMulstrided_slice_2:output:0+lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_103/MatMul?
%lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_103_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02'
%lstm_cell_103/MatMul_1/ReadVariableOp?
lstm_cell_103/MatMul_1MatMulzeros:output:0-lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_103/MatMul_1?
lstm_cell_103/addAddV2lstm_cell_103/MatMul:product:0 lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_103/add?
$lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_103_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_103/BiasAdd/ReadVariableOp?
lstm_cell_103/BiasAddBiasAddlstm_cell_103/add:z:0,lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_103/BiasAddl
lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_103/Const?
lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_103/split/split_dim?
lstm_cell_103/splitSplit&lstm_cell_103/split/split_dim:output:0lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
lstm_cell_103/split?
lstm_cell_103/SigmoidSigmoidlstm_cell_103/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Sigmoid?
lstm_cell_103/Sigmoid_1Sigmoidlstm_cell_103/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Sigmoid_1?
lstm_cell_103/mulMullstm_cell_103/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/mul?
lstm_cell_103/Sigmoid_2Sigmoidlstm_cell_103/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Sigmoid_2?
lstm_cell_103/mul_1Mullstm_cell_103/split:output:2lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/mul_1?
lstm_cell_103/IdentityIdentitylstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Identity?
lstm_cell_103/IdentityN	IdentityNlstm_cell_103/mul_1:z:0lstm_cell_103/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-707844*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_103/IdentityN?
lstm_cell_103/mul_2Mullstm_cell_103/Sigmoid:y:0 lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/mul_2?
lstm_cell_103/add_1AddV2lstm_cell_103/mul:z:0lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/add_1?
lstm_cell_103/Sigmoid_3Sigmoidlstm_cell_103/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Sigmoid_3?
lstm_cell_103/Sigmoid_4Sigmoidlstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Sigmoid_4?
lstm_cell_103/mul_3Mullstm_cell_103/add_1:z:0lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/mul_3?
lstm_cell_103/Identity_1Identitylstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Identity_1?
lstm_cell_103/IdentityN_1	IdentityNlstm_cell_103/mul_3:z:0lstm_cell_103/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-707853*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_103/IdentityN_1?
lstm_cell_103/mul_4Mullstm_cell_103/Sigmoid_3:y:0"lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/mul_4?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_103_matmul_readvariableop_resource.lstm_cell_103_matmul_1_readvariableop_resource-lstm_cell_103_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_707864*
condR
while_cond_707863*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0%^lstm_cell_103/BiasAdd/ReadVariableOp$^lstm_cell_103/MatMul/ReadVariableOp&^lstm_cell_103/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????:::2L
$lstm_cell_103/BiasAdd/ReadVariableOp$lstm_cell_103/BiasAdd/ReadVariableOp2J
#lstm_cell_103/MatMul/ReadVariableOp#lstm_cell_103/MatMul/ReadVariableOp2N
%lstm_cell_103/MatMul_1/ReadVariableOp%lstm_cell_103/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
while_cond_707863
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_707863___redundant_placeholder04
0while_while_cond_707863___redundant_placeholder14
0while_while_cond_707863___redundant_placeholder24
0while_while_cond_707863___redundant_placeholder3
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
@: : : : :?????????@:?????????@: ::::: 
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
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?M
?
while_body_710071
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
3while_lstm_cell_103_biasadd_readvariableop_resource??*while/lstm_cell_103/BiasAdd/ReadVariableOp?)while/lstm_cell_103/MatMul/ReadVariableOp?+while/lstm_cell_103/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_103/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_103_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_103/MatMul/ReadVariableOp?
while/lstm_cell_103/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_103/MatMul?
+while/lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_103_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02-
+while/lstm_cell_103/MatMul_1/ReadVariableOp?
while/lstm_cell_103/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_103/MatMul_1?
while/lstm_cell_103/addAddV2$while/lstm_cell_103/MatMul:product:0&while/lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_103/add?
*while/lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_103_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_103/BiasAdd/ReadVariableOp?
while/lstm_cell_103/BiasAddBiasAddwhile/lstm_cell_103/add:z:02while/lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_103/BiasAddx
while/lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_103/Const?
#while/lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_103/split/split_dim?
while/lstm_cell_103/splitSplit,while/lstm_cell_103/split/split_dim:output:0$while/lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
while/lstm_cell_103/split?
while/lstm_cell_103/SigmoidSigmoid"while/lstm_cell_103/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Sigmoid?
while/lstm_cell_103/Sigmoid_1Sigmoid"while/lstm_cell_103/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Sigmoid_1?
while/lstm_cell_103/mulMul!while/lstm_cell_103/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/mul?
while/lstm_cell_103/Sigmoid_2Sigmoid"while/lstm_cell_103/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Sigmoid_2?
while/lstm_cell_103/mul_1Mul"while/lstm_cell_103/split:output:2!while/lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/mul_1?
while/lstm_cell_103/IdentityIdentitywhile/lstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Identity?
while/lstm_cell_103/IdentityN	IdentityNwhile/lstm_cell_103/mul_1:z:0"while/lstm_cell_103/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-710114*:
_output_shapes(
&:?????????@:?????????@2
while/lstm_cell_103/IdentityN?
while/lstm_cell_103/mul_2Mulwhile/lstm_cell_103/Sigmoid:y:0&while/lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/mul_2?
while/lstm_cell_103/add_1AddV2while/lstm_cell_103/mul:z:0while/lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/add_1?
while/lstm_cell_103/Sigmoid_3Sigmoid"while/lstm_cell_103/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Sigmoid_3?
while/lstm_cell_103/Sigmoid_4Sigmoidwhile/lstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Sigmoid_4?
while/lstm_cell_103/mul_3Mulwhile/lstm_cell_103/add_1:z:0!while/lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/mul_3?
while/lstm_cell_103/Identity_1Identitywhile/lstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:?????????@2 
while/lstm_cell_103/Identity_1?
while/lstm_cell_103/IdentityN_1	IdentityNwhile/lstm_cell_103/mul_3:z:0while/lstm_cell_103/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-710123*:
_output_shapes(
&:?????????@:?????????@2!
while/lstm_cell_103/IdentityN_1?
while/lstm_cell_103/mul_4Mul!while/lstm_cell_103/Sigmoid_3:y:0(while/lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/mul_4?
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_103/mul_4:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_103/add_1:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
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
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????@:?????????@: : :::2X
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
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_706278
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_706278___redundant_placeholder04
0while_while_cond_706278___redundant_placeholder14
0while_while_cond_706278___redundant_placeholder24
0while_while_cond_706278___redundant_placeholder3
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
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
??
?
"__inference__traced_restore_711355
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
identity_42??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:**
dtype0*?
value?B?*B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:**
dtype0*g
value^B\*B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::*8
dtypes.
,2*	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_adam_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_beta_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_2Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp%assignvariableop_4_adam_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp,assignvariableop_5_lstm_5_lstm_cell_5_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp6assignvariableop_6_lstm_5_lstm_cell_5_recurrent_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp*assignvariableop_7_lstm_5_lstm_cell_5_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp,assignvariableop_8_lstm_6_lstm_cell_6_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp6assignvariableop_9_lstm_6_lstm_cell_6_recurrent_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp+assignvariableop_10_lstm_6_lstm_cell_6_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp-assignvariableop_11_time_distributed_3_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp+assignvariableop_12_time_distributed_3_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp-assignvariableop_13_time_distributed_4_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp+assignvariableop_14_time_distributed_4_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_2Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_2Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp4assignvariableop_21_adam_lstm_5_lstm_cell_5_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp>assignvariableop_22_adam_lstm_5_lstm_cell_5_recurrent_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp2assignvariableop_23_adam_lstm_5_lstm_cell_5_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp4assignvariableop_24_adam_lstm_6_lstm_cell_6_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp>assignvariableop_25_adam_lstm_6_lstm_cell_6_recurrent_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp2assignvariableop_26_adam_lstm_6_lstm_cell_6_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp4assignvariableop_27_adam_time_distributed_3_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp2assignvariableop_28_adam_time_distributed_3_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp4assignvariableop_29_adam_time_distributed_4_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp2assignvariableop_30_adam_time_distributed_4_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp4assignvariableop_31_adam_lstm_5_lstm_cell_5_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp>assignvariableop_32_adam_lstm_5_lstm_cell_5_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp2assignvariableop_33_adam_lstm_5_lstm_cell_5_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp4assignvariableop_34_adam_lstm_6_lstm_cell_6_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp>assignvariableop_35_adam_lstm_6_lstm_cell_6_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp2assignvariableop_36_adam_lstm_6_lstm_cell_6_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp4assignvariableop_37_adam_time_distributed_3_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp2assignvariableop_38_adam_time_distributed_3_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp4assignvariableop_39_adam_time_distributed_4_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp2assignvariableop_40_adam_time_distributed_4_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_409
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_41Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_41?
Identity_42IdentityIdentity_41:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_42"#
identity_42Identity_42:output:0*?
_input_shapes?
?: :::::::::::::::::::::::::::::::::::::::::2$
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
?%
?
while_body_706147
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0 
while_lstm_cell_102_706171_0 
while_lstm_cell_102_706173_0 
while_lstm_cell_102_706175_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_102_706171
while_lstm_cell_102_706173
while_lstm_cell_102_706175??+while/lstm_cell_102/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
+while/lstm_cell_102/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_102_706171_0while_lstm_cell_102_706173_0while_lstm_cell_102_706175_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_102_layer_call_and_return_conditional_losses_7058102-
+while/lstm_cell_102/StatefulPartitionedCall?
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0,^while/lstm_cell_102/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations,^while/lstm_cell_102/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0,^while/lstm_cell_102/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0,^while/lstm_cell_102/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity4while/lstm_cell_102/StatefulPartitionedCall:output:1,^while/lstm_cell_102/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identity4while/lstm_cell_102/StatefulPartitionedCall:output:2,^while/lstm_cell_102/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_102_706171while_lstm_cell_102_706171_0":
while_lstm_cell_102_706173while_lstm_cell_102_706173_0":
while_lstm_cell_102_706175while_lstm_cell_102_706175_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2Z
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_710576

inputs*
&dense_8_matmul_readvariableop_resource+
'dense_8_biasadd_readvariableop_resource
identity??dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????@2	
Reshape?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_8/MatMul/ReadVariableOp?
dense_8/MatMulMatMulReshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_8/MatMul?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_8/BiasAdd/ReadVariableOp?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_8/BiasAddy
dense_8/SigmoidSigmoiddense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_8/Sigmoid?
dense_8/mulMuldense_8/BiasAdd:output:0dense_8/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
dense_8/muls
dense_8/IdentityIdentitydense_8/mul:z:0*
T0*'
_output_shapes
:?????????@2
dense_8/Identity?
dense_8/IdentityN	IdentityNdense_8/mul:z:0dense_8/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-710567*:
_output_shapes(
&:?????????@:?????????@2
dense_8/IdentityNw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   @   2
Reshape_1/shape?
	Reshape_1Reshapedense_8/IdentityN:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????@2
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp*
T0*+
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????@::2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
%sequential_3_lstm_5_while_cond_705432D
@sequential_3_lstm_5_while_sequential_3_lstm_5_while_loop_counterJ
Fsequential_3_lstm_5_while_sequential_3_lstm_5_while_maximum_iterations)
%sequential_3_lstm_5_while_placeholder+
'sequential_3_lstm_5_while_placeholder_1+
'sequential_3_lstm_5_while_placeholder_2+
'sequential_3_lstm_5_while_placeholder_3F
Bsequential_3_lstm_5_while_less_sequential_3_lstm_5_strided_slice_1\
Xsequential_3_lstm_5_while_sequential_3_lstm_5_while_cond_705432___redundant_placeholder0\
Xsequential_3_lstm_5_while_sequential_3_lstm_5_while_cond_705432___redundant_placeholder1\
Xsequential_3_lstm_5_while_sequential_3_lstm_5_while_cond_705432___redundant_placeholder2\
Xsequential_3_lstm_5_while_sequential_3_lstm_5_while_cond_705432___redundant_placeholder3&
"sequential_3_lstm_5_while_identity
?
sequential_3/lstm_5/while/LessLess%sequential_3_lstm_5_while_placeholderBsequential_3_lstm_5_while_less_sequential_3_lstm_5_strided_slice_1*
T0*
_output_shapes
: 2 
sequential_3/lstm_5/while/Less?
"sequential_3/lstm_5/while/IdentityIdentity"sequential_3/lstm_5/while/Less:z:0*
T0
*
_output_shapes
: 2$
"sequential_3/lstm_5/while/Identity"Q
"sequential_3_lstm_5_while_identity+sequential_3/lstm_5/while/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
}
(__inference_dense_9_layer_call_fn_711076

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_7071352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
-__inference_sequential_3_layer_call_fn_708255
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
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_5_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_7082322
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:?????????::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:?????????
&
_user_specified_namelstm_5_input
?
?
3__inference_time_distributed_4_layer_call_fn_710792

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_7080812
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????@::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
'__inference_lstm_5_layer_call_fn_709441
inputs_0
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_7062162
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????????????:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?D
?
B__inference_lstm_5_layer_call_and_return_conditional_losses_706348

inputs
lstm_cell_102_706266
lstm_cell_102_706268
lstm_cell_102_706270
identity??%lstm_cell_102/StatefulPartitionedCall?whileD
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
strided_slice/stack_2?
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
B :?2
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
B :?2
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
B :?2
zeros/packed/1?
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
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
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
B :?2
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
B :?2
zeros_1/packed/1?
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
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
%lstm_cell_102/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_102_706266lstm_cell_102_706268lstm_cell_102_706270*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_102_layer_call_and_return_conditional_losses_7058532'
%lstm_cell_102/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_102_706266lstm_cell_102_706268lstm_cell_102_706270*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_706279*
condR
while_cond_706278*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0&^lstm_cell_102/StatefulPartitionedCall^while*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????????????:::2N
%lstm_cell_102/StatefulPartitionedCall%lstm_cell_102/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_708028

inputs*
&dense_8_matmul_readvariableop_resource+
'dense_8_biasadd_readvariableop_resource
identity??dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????@2	
Reshape?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_8/MatMul/ReadVariableOp?
dense_8/MatMulMatMulReshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_8/MatMul?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_8/BiasAdd/ReadVariableOp?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_8/BiasAddy
dense_8/SigmoidSigmoiddense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_8/Sigmoid?
dense_8/mulMuldense_8/BiasAdd:output:0dense_8/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
dense_8/muls
dense_8/IdentityIdentitydense_8/mul:z:0*
T0*'
_output_shapes
:?????????@2
dense_8/Identity?
dense_8/IdentityN	IdentityNdense_8/mul:z:0dense_8/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-708019*:
_output_shapes(
&:?????????@:?????????@2
dense_8/IdentityNw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   @   2
Reshape_1/shape?
	Reshape_1Reshapedense_8/IdentityN:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????@2
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp*
T0*+
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????@::2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?M
?
while_body_709162
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
3while_lstm_cell_102_biasadd_readvariableop_resource??*while/lstm_cell_102/BiasAdd/ReadVariableOp?)while/lstm_cell_102/MatMul/ReadVariableOp?+while/lstm_cell_102/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02+
)while/lstm_cell_102/MatMul/ReadVariableOp?
while/lstm_cell_102/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/MatMul?
+while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02-
+while/lstm_cell_102/MatMul_1/ReadVariableOp?
while/lstm_cell_102/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/MatMul_1?
while/lstm_cell_102/addAddV2$while/lstm_cell_102/MatMul:product:0&while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/add?
*while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_102/BiasAdd/ReadVariableOp?
while/lstm_cell_102/BiasAddBiasAddwhile/lstm_cell_102/add:z:02while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/BiasAddx
while/lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_102/Const?
#while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_102/split/split_dim?
while/lstm_cell_102/splitSplit,while/lstm_cell_102/split/split_dim:output:0$while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_102/split?
while/lstm_cell_102/SigmoidSigmoid"while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid?
while/lstm_cell_102/Sigmoid_1Sigmoid"while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_1?
while/lstm_cell_102/mulMul!while/lstm_cell_102/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul?
while/lstm_cell_102/Sigmoid_2Sigmoid"while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_2?
while/lstm_cell_102/mul_1Mul"while/lstm_cell_102/split:output:2!while/lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_1?
while/lstm_cell_102/IdentityIdentitywhile/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Identity?
while/lstm_cell_102/IdentityN	IdentityNwhile/lstm_cell_102/mul_1:z:0"while/lstm_cell_102/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-709205*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell_102/IdentityN?
while/lstm_cell_102/mul_2Mulwhile/lstm_cell_102/Sigmoid:y:0&while/lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_2?
while/lstm_cell_102/add_1AddV2while/lstm_cell_102/mul:z:0while/lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/add_1?
while/lstm_cell_102/Sigmoid_3Sigmoid"while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_3?
while/lstm_cell_102/Sigmoid_4Sigmoidwhile/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_4?
while/lstm_cell_102/mul_3Mulwhile/lstm_cell_102/add_1:z:0!while/lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_3?
while/lstm_cell_102/Identity_1Identitywhile/lstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:??????????2 
while/lstm_cell_102/Identity_1?
while/lstm_cell_102/IdentityN_1	IdentityNwhile/lstm_cell_102/mul_3:z:0while/lstm_cell_102/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-709214*<
_output_shapes*
(:??????????:??????????2!
while/lstm_cell_102/IdentityN_1?
while/lstm_cell_102/mul_4Mul!while/lstm_cell_102/Sigmoid_3:y:0(while/lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_4?
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_102/mul_4:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_102/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
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
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2X
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?d
?
B__inference_lstm_6_layer_call_and_return_conditional_losses_709993
inputs_00
,lstm_cell_103_matmul_readvariableop_resource2
.lstm_cell_103_matmul_1_readvariableop_resource1
-lstm_cell_103_biasadd_readvariableop_resource
identity??$lstm_cell_103/BiasAdd/ReadVariableOp?#lstm_cell_103/MatMul/ReadVariableOp?%lstm_cell_103/MatMul_1/ReadVariableOp?whileF
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
strided_slice/stack_2?
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
B :?2
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
zeros/packed/1?
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
:?????????@2
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
B :?2
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
zeros_1/packed/1?
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
:?????????@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_103/MatMul/ReadVariableOpReadVariableOp,lstm_cell_103_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_103/MatMul/ReadVariableOp?
lstm_cell_103/MatMulMatMulstrided_slice_2:output:0+lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_103/MatMul?
%lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_103_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02'
%lstm_cell_103/MatMul_1/ReadVariableOp?
lstm_cell_103/MatMul_1MatMulzeros:output:0-lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_103/MatMul_1?
lstm_cell_103/addAddV2lstm_cell_103/MatMul:product:0 lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_103/add?
$lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_103_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_103/BiasAdd/ReadVariableOp?
lstm_cell_103/BiasAddBiasAddlstm_cell_103/add:z:0,lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_103/BiasAddl
lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_103/Const?
lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_103/split/split_dim?
lstm_cell_103/splitSplit&lstm_cell_103/split/split_dim:output:0lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
lstm_cell_103/split?
lstm_cell_103/SigmoidSigmoidlstm_cell_103/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Sigmoid?
lstm_cell_103/Sigmoid_1Sigmoidlstm_cell_103/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Sigmoid_1?
lstm_cell_103/mulMullstm_cell_103/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/mul?
lstm_cell_103/Sigmoid_2Sigmoidlstm_cell_103/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Sigmoid_2?
lstm_cell_103/mul_1Mullstm_cell_103/split:output:2lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/mul_1?
lstm_cell_103/IdentityIdentitylstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Identity?
lstm_cell_103/IdentityN	IdentityNlstm_cell_103/mul_1:z:0lstm_cell_103/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-709878*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_103/IdentityN?
lstm_cell_103/mul_2Mullstm_cell_103/Sigmoid:y:0 lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/mul_2?
lstm_cell_103/add_1AddV2lstm_cell_103/mul:z:0lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/add_1?
lstm_cell_103/Sigmoid_3Sigmoidlstm_cell_103/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Sigmoid_3?
lstm_cell_103/Sigmoid_4Sigmoidlstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Sigmoid_4?
lstm_cell_103/mul_3Mullstm_cell_103/add_1:z:0lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/mul_3?
lstm_cell_103/Identity_1Identitylstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Identity_1?
lstm_cell_103/IdentityN_1	IdentityNlstm_cell_103/mul_3:z:0lstm_cell_103/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-709887*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_103/IdentityN_1?
lstm_cell_103/mul_4Mullstm_cell_103/Sigmoid_3:y:0"lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/mul_4?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_103_matmul_readvariableop_resource.lstm_cell_103_matmul_1_readvariableop_resource-lstm_cell_103_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_709898*
condR
while_cond_709897*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0%^lstm_cell_103/BiasAdd/ReadVariableOp$^lstm_cell_103/MatMul/ReadVariableOp&^lstm_cell_103/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :??????????????????@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:???????????????????:::2L
$lstm_cell_103/BiasAdd/ReadVariableOp$lstm_cell_103/BiasAdd/ReadVariableOp2J
#lstm_cell_103/MatMul/ReadVariableOp#lstm_cell_103/MatMul/ReadVariableOp2N
%lstm_cell_103/MatMul_1/ReadVariableOp%lstm_cell_103/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
$__inference_signature_wrapper_708290
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
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_5_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_7057272
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:?????????::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:?????????
&
_user_specified_namelstm_5_input
?M
?
while_body_709335
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
3while_lstm_cell_102_biasadd_readvariableop_resource??*while/lstm_cell_102/BiasAdd/ReadVariableOp?)while/lstm_cell_102/MatMul/ReadVariableOp?+while/lstm_cell_102/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02+
)while/lstm_cell_102/MatMul/ReadVariableOp?
while/lstm_cell_102/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/MatMul?
+while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02-
+while/lstm_cell_102/MatMul_1/ReadVariableOp?
while/lstm_cell_102/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/MatMul_1?
while/lstm_cell_102/addAddV2$while/lstm_cell_102/MatMul:product:0&while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/add?
*while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_102/BiasAdd/ReadVariableOp?
while/lstm_cell_102/BiasAddBiasAddwhile/lstm_cell_102/add:z:02while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/BiasAddx
while/lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_102/Const?
#while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_102/split/split_dim?
while/lstm_cell_102/splitSplit,while/lstm_cell_102/split/split_dim:output:0$while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_102/split?
while/lstm_cell_102/SigmoidSigmoid"while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid?
while/lstm_cell_102/Sigmoid_1Sigmoid"while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_1?
while/lstm_cell_102/mulMul!while/lstm_cell_102/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul?
while/lstm_cell_102/Sigmoid_2Sigmoid"while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_2?
while/lstm_cell_102/mul_1Mul"while/lstm_cell_102/split:output:2!while/lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_1?
while/lstm_cell_102/IdentityIdentitywhile/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Identity?
while/lstm_cell_102/IdentityN	IdentityNwhile/lstm_cell_102/mul_1:z:0"while/lstm_cell_102/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-709378*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell_102/IdentityN?
while/lstm_cell_102/mul_2Mulwhile/lstm_cell_102/Sigmoid:y:0&while/lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_2?
while/lstm_cell_102/add_1AddV2while/lstm_cell_102/mul:z:0while/lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/add_1?
while/lstm_cell_102/Sigmoid_3Sigmoid"while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_3?
while/lstm_cell_102/Sigmoid_4Sigmoidwhile/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_4?
while/lstm_cell_102/mul_3Mulwhile/lstm_cell_102/add_1:z:0!while/lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_3?
while/lstm_cell_102/Identity_1Identitywhile/lstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:??????????2 
while/lstm_cell_102/Identity_1?
while/lstm_cell_102/IdentityN_1	IdentityNwhile/lstm_cell_102/mul_3:z:0while/lstm_cell_102/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-709387*<
_output_shapes*
(:??????????:??????????2!
while/lstm_cell_102/IdentityN_1?
while/lstm_cell_102/mul_4Mul!while/lstm_cell_102/Sigmoid_3:y:0(while/lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_4?
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_102/mul_4:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_102/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
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
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2X
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?d
?
B__inference_lstm_6_layer_call_and_return_conditional_losses_710361

inputs0
,lstm_cell_103_matmul_readvariableop_resource2
.lstm_cell_103_matmul_1_readvariableop_resource1
-lstm_cell_103_biasadd_readvariableop_resource
identity??$lstm_cell_103/BiasAdd/ReadVariableOp?#lstm_cell_103/MatMul/ReadVariableOp?%lstm_cell_103/MatMul_1/ReadVariableOp?whileD
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
strided_slice/stack_2?
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
B :?2
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
zeros/packed/1?
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
:?????????@2
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
B :?2
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
zeros_1/packed/1?
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
:?????????@2	
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
:??????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_103/MatMul/ReadVariableOpReadVariableOp,lstm_cell_103_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_103/MatMul/ReadVariableOp?
lstm_cell_103/MatMulMatMulstrided_slice_2:output:0+lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_103/MatMul?
%lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_103_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02'
%lstm_cell_103/MatMul_1/ReadVariableOp?
lstm_cell_103/MatMul_1MatMulzeros:output:0-lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_103/MatMul_1?
lstm_cell_103/addAddV2lstm_cell_103/MatMul:product:0 lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_103/add?
$lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_103_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_103/BiasAdd/ReadVariableOp?
lstm_cell_103/BiasAddBiasAddlstm_cell_103/add:z:0,lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_103/BiasAddl
lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_103/Const?
lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_103/split/split_dim?
lstm_cell_103/splitSplit&lstm_cell_103/split/split_dim:output:0lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
lstm_cell_103/split?
lstm_cell_103/SigmoidSigmoidlstm_cell_103/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Sigmoid?
lstm_cell_103/Sigmoid_1Sigmoidlstm_cell_103/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Sigmoid_1?
lstm_cell_103/mulMullstm_cell_103/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/mul?
lstm_cell_103/Sigmoid_2Sigmoidlstm_cell_103/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Sigmoid_2?
lstm_cell_103/mul_1Mullstm_cell_103/split:output:2lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/mul_1?
lstm_cell_103/IdentityIdentitylstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Identity?
lstm_cell_103/IdentityN	IdentityNlstm_cell_103/mul_1:z:0lstm_cell_103/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-710246*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_103/IdentityN?
lstm_cell_103/mul_2Mullstm_cell_103/Sigmoid:y:0 lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/mul_2?
lstm_cell_103/add_1AddV2lstm_cell_103/mul:z:0lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/add_1?
lstm_cell_103/Sigmoid_3Sigmoidlstm_cell_103/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Sigmoid_3?
lstm_cell_103/Sigmoid_4Sigmoidlstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Sigmoid_4?
lstm_cell_103/mul_3Mullstm_cell_103/add_1:z:0lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/mul_3?
lstm_cell_103/Identity_1Identitylstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Identity_1?
lstm_cell_103/IdentityN_1	IdentityNlstm_cell_103/mul_3:z:0lstm_cell_103/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-710255*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_103/IdentityN_1?
lstm_cell_103/mul_4Mullstm_cell_103/Sigmoid_3:y:0"lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/mul_4?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_103_matmul_readvariableop_resource.lstm_cell_103_matmul_1_readvariableop_resource-lstm_cell_103_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_710266*
condR
while_cond_710265*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0%^lstm_cell_103/BiasAdd/ReadVariableOp$^lstm_cell_103/MatMul/ReadVariableOp&^lstm_cell_103/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????:::2L
$lstm_cell_103/BiasAdd/ReadVariableOp$lstm_cell_103/BiasAdd/ReadVariableOp2J
#lstm_cell_103/MatMul/ReadVariableOp#lstm_cell_103/MatMul/ReadVariableOp2N
%lstm_cell_103/MatMul_1/ReadVariableOp%lstm_cell_103/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
3__inference_time_distributed_3_layer_call_fn_710677

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_7070782
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????@2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:??????????????????@::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?Y
?	
lstm_6_while_body_708909*
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
:lstm_6_while_lstm_cell_103_biasadd_readvariableop_resource??1lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp?0lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp?2lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp?
>lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2@
>lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0lstm_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0lstm_6_while_placeholderGlstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype022
0lstm_6/while/TensorArrayV2Read/TensorListGetItem?
0lstm_6/while/lstm_cell_103/MatMul/ReadVariableOpReadVariableOp;lstm_6_while_lstm_cell_103_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype022
0lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp?
!lstm_6/while/lstm_cell_103/MatMulMatMul7lstm_6/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!lstm_6/while/lstm_cell_103/MatMul?
2lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOp=lstm_6_while_lstm_cell_103_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype024
2lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp?
#lstm_6/while/lstm_cell_103/MatMul_1MatMullstm_6_while_placeholder_2:lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2%
#lstm_6/while/lstm_cell_103/MatMul_1?
lstm_6/while/lstm_cell_103/addAddV2+lstm_6/while/lstm_cell_103/MatMul:product:0-lstm_6/while/lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2 
lstm_6/while/lstm_cell_103/add?
1lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOp<lstm_6_while_lstm_cell_103_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype023
1lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp?
"lstm_6/while/lstm_cell_103/BiasAddBiasAdd"lstm_6/while/lstm_cell_103/add:z:09lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2$
"lstm_6/while/lstm_cell_103/BiasAdd?
 lstm_6/while/lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2"
 lstm_6/while/lstm_cell_103/Const?
*lstm_6/while/lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_6/while/lstm_cell_103/split/split_dim?
 lstm_6/while/lstm_cell_103/splitSplit3lstm_6/while/lstm_cell_103/split/split_dim:output:0+lstm_6/while/lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2"
 lstm_6/while/lstm_cell_103/split?
"lstm_6/while/lstm_cell_103/SigmoidSigmoid)lstm_6/while/lstm_cell_103/split:output:0*
T0*'
_output_shapes
:?????????@2$
"lstm_6/while/lstm_cell_103/Sigmoid?
$lstm_6/while/lstm_cell_103/Sigmoid_1Sigmoid)lstm_6/while/lstm_cell_103/split:output:1*
T0*'
_output_shapes
:?????????@2&
$lstm_6/while/lstm_cell_103/Sigmoid_1?
lstm_6/while/lstm_cell_103/mulMul(lstm_6/while/lstm_cell_103/Sigmoid_1:y:0lstm_6_while_placeholder_3*
T0*'
_output_shapes
:?????????@2 
lstm_6/while/lstm_cell_103/mul?
$lstm_6/while/lstm_cell_103/Sigmoid_2Sigmoid)lstm_6/while/lstm_cell_103/split:output:2*
T0*'
_output_shapes
:?????????@2&
$lstm_6/while/lstm_cell_103/Sigmoid_2?
 lstm_6/while/lstm_cell_103/mul_1Mul)lstm_6/while/lstm_cell_103/split:output:2(lstm_6/while/lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2"
 lstm_6/while/lstm_cell_103/mul_1?
#lstm_6/while/lstm_cell_103/IdentityIdentity$lstm_6/while/lstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:?????????@2%
#lstm_6/while/lstm_cell_103/Identity?
$lstm_6/while/lstm_cell_103/IdentityN	IdentityN$lstm_6/while/lstm_cell_103/mul_1:z:0)lstm_6/while/lstm_cell_103/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-708952*:
_output_shapes(
&:?????????@:?????????@2&
$lstm_6/while/lstm_cell_103/IdentityN?
 lstm_6/while/lstm_cell_103/mul_2Mul&lstm_6/while/lstm_cell_103/Sigmoid:y:0-lstm_6/while/lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2"
 lstm_6/while/lstm_cell_103/mul_2?
 lstm_6/while/lstm_cell_103/add_1AddV2"lstm_6/while/lstm_cell_103/mul:z:0$lstm_6/while/lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:?????????@2"
 lstm_6/while/lstm_cell_103/add_1?
$lstm_6/while/lstm_cell_103/Sigmoid_3Sigmoid)lstm_6/while/lstm_cell_103/split:output:3*
T0*'
_output_shapes
:?????????@2&
$lstm_6/while/lstm_cell_103/Sigmoid_3?
$lstm_6/while/lstm_cell_103/Sigmoid_4Sigmoid$lstm_6/while/lstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:?????????@2&
$lstm_6/while/lstm_cell_103/Sigmoid_4?
 lstm_6/while/lstm_cell_103/mul_3Mul$lstm_6/while/lstm_cell_103/add_1:z:0(lstm_6/while/lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2"
 lstm_6/while/lstm_cell_103/mul_3?
%lstm_6/while/lstm_cell_103/Identity_1Identity$lstm_6/while/lstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:?????????@2'
%lstm_6/while/lstm_cell_103/Identity_1?
&lstm_6/while/lstm_cell_103/IdentityN_1	IdentityN$lstm_6/while/lstm_cell_103/mul_3:z:0$lstm_6/while/lstm_cell_103/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-708961*:
_output_shapes(
&:?????????@:?????????@2(
&lstm_6/while/lstm_cell_103/IdentityN_1?
 lstm_6/while/lstm_cell_103/mul_4Mul(lstm_6/while/lstm_cell_103/Sigmoid_3:y:0/lstm_6/while/lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2"
 lstm_6/while/lstm_cell_103/mul_4?
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
lstm_6/while/add/y?
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
lstm_6/while/add_1/y?
lstm_6/while/add_1AddV2&lstm_6_while_lstm_6_while_loop_counterlstm_6/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_6/while/add_1?
lstm_6/while/IdentityIdentitylstm_6/while/add_1:z:02^lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp1^lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp3^lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity?
lstm_6/while/Identity_1Identity,lstm_6_while_lstm_6_while_maximum_iterations2^lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp1^lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp3^lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_1?
lstm_6/while/Identity_2Identitylstm_6/while/add:z:02^lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp1^lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp3^lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_2?
lstm_6/while/Identity_3IdentityAlstm_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp1^lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp3^lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_3?
lstm_6/while/Identity_4Identity$lstm_6/while/lstm_cell_103/mul_4:z:02^lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp1^lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp3^lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
lstm_6/while/Identity_4?
lstm_6/while/Identity_5Identity$lstm_6/while/lstm_cell_103/add_1:z:02^lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp1^lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp3^lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
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
9lstm_6_while_lstm_cell_103_matmul_readvariableop_resource;lstm_6_while_lstm_cell_103_matmul_readvariableop_resource_0"?
_lstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensoralstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????@:?????????@: : :::2f
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
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
'__inference_lstm_6_layer_call_fn_710177
inputs_0
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_7068462
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:???????????????????:::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
.__inference_lstm_cell_102_layer_call_fn_710912

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_102_layer_call_and_return_conditional_losses_7058532
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*Z
_input_shapesI
G:?????????:??????????:??????????:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?"
?
I__inference_lstm_cell_102_layer_call_and_return_conditional_losses_710878

inputs
states_0
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource

identity_2

identity_3

identity_4??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
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
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
muld
	Sigmoid_2Sigmoidsplit:output:2*
T0*(
_output_shapes
:??????????2
	Sigmoid_2g
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
mul_1^
IdentityIdentity	mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity?
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*,
_gradient_op_typeCustomGradient-710859*<
_output_shapes*
(:??????????:??????????2
	IdentityNi
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*(
_output_shapes
:??????????2
mul_2^
add_1AddV2mul:z:0	mul_2:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_3Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_3_
	Sigmoid_4Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_4b
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
mul_3b

Identity_1Identity	mul_3:z:0*
T0*(
_output_shapes
:??????????2

Identity_1?
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-710868*<
_output_shapes*
(:??????????:??????????2
IdentityN_1m
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
mul_4?

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2?

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_3?

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*Z
_input_shapesI
G:?????????:??????????:??????????:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?
?
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_708008

inputs*
&dense_8_matmul_readvariableop_resource+
'dense_8_biasadd_readvariableop_resource
identity??dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????@2	
Reshape?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_8/MatMul/ReadVariableOp?
dense_8/MatMulMatMulReshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_8/MatMul?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_8/BiasAdd/ReadVariableOp?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_8/BiasAddy
dense_8/SigmoidSigmoiddense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_8/Sigmoid?
dense_8/mulMuldense_8/BiasAdd:output:0dense_8/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
dense_8/muls
dense_8/IdentityIdentitydense_8/mul:z:0*
T0*'
_output_shapes
:?????????@2
dense_8/Identity?
dense_8/IdentityN	IdentityNdense_8/mul:z:0dense_8/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-707999*:
_output_shapes(
&:?????????@:?????????@2
dense_8/IdentityNw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   @   2
Reshape_1/shape?
	Reshape_1Reshapedense_8/IdentityN:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????@2
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp*
T0*+
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????@::2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_707199

inputs
dense_9_707189
dense_9_707191
identity??dense_9/StatefulPartitionedCallD
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
strided_slice/stack_2?
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
valueB"????@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????@2	
Reshape?
dense_9/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_9_707189dense_9_707191*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_7071352!
dense_9/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshape(dense_9/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :??????????????????2
	Reshape_1?
IdentityIdentityReshape_1:output:0 ^dense_9/StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:??????????????????@::2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?
?
.__inference_lstm_cell_102_layer_call_fn_710895

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_102_layer_call_and_return_conditional_losses_7058102
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*Z
_input_shapesI
G:?????????:??????????:??????????:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?Y
?	
lstm_5_while_body_708368*
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
:lstm_5_while_lstm_cell_102_biasadd_readvariableop_resource??1lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp?0lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp?2lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp?
>lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2@
>lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0lstm_5_while_placeholderGlstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype022
0lstm_5/while/TensorArrayV2Read/TensorListGetItem?
0lstm_5/while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp;lstm_5_while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype022
0lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp?
!lstm_5/while/lstm_cell_102/MatMulMatMul7lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!lstm_5/while/lstm_cell_102/MatMul?
2lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp=lstm_5_while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype024
2lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp?
#lstm_5/while/lstm_cell_102/MatMul_1MatMullstm_5_while_placeholder_2:lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2%
#lstm_5/while/lstm_cell_102/MatMul_1?
lstm_5/while/lstm_cell_102/addAddV2+lstm_5/while/lstm_cell_102/MatMul:product:0-lstm_5/while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2 
lstm_5/while/lstm_cell_102/add?
1lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp<lstm_5_while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype023
1lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp?
"lstm_5/while/lstm_cell_102/BiasAddBiasAdd"lstm_5/while/lstm_cell_102/add:z:09lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2$
"lstm_5/while/lstm_cell_102/BiasAdd?
 lstm_5/while/lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2"
 lstm_5/while/lstm_cell_102/Const?
*lstm_5/while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_5/while/lstm_cell_102/split/split_dim?
 lstm_5/while/lstm_cell_102/splitSplit3lstm_5/while/lstm_cell_102/split/split_dim:output:0+lstm_5/while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2"
 lstm_5/while/lstm_cell_102/split?
"lstm_5/while/lstm_cell_102/SigmoidSigmoid)lstm_5/while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????2$
"lstm_5/while/lstm_cell_102/Sigmoid?
$lstm_5/while/lstm_cell_102/Sigmoid_1Sigmoid)lstm_5/while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????2&
$lstm_5/while/lstm_cell_102/Sigmoid_1?
lstm_5/while/lstm_cell_102/mulMul(lstm_5/while/lstm_cell_102/Sigmoid_1:y:0lstm_5_while_placeholder_3*
T0*(
_output_shapes
:??????????2 
lstm_5/while/lstm_cell_102/mul?
$lstm_5/while/lstm_cell_102/Sigmoid_2Sigmoid)lstm_5/while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????2&
$lstm_5/while/lstm_cell_102/Sigmoid_2?
 lstm_5/while/lstm_cell_102/mul_1Mul)lstm_5/while/lstm_cell_102/split:output:2(lstm_5/while/lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2"
 lstm_5/while/lstm_cell_102/mul_1?
#lstm_5/while/lstm_cell_102/IdentityIdentity$lstm_5/while/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????2%
#lstm_5/while/lstm_cell_102/Identity?
$lstm_5/while/lstm_cell_102/IdentityN	IdentityN$lstm_5/while/lstm_cell_102/mul_1:z:0)lstm_5/while/lstm_cell_102/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-708411*<
_output_shapes*
(:??????????:??????????2&
$lstm_5/while/lstm_cell_102/IdentityN?
 lstm_5/while/lstm_cell_102/mul_2Mul&lstm_5/while/lstm_cell_102/Sigmoid:y:0-lstm_5/while/lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_5/while/lstm_cell_102/mul_2?
 lstm_5/while/lstm_cell_102/add_1AddV2"lstm_5/while/lstm_cell_102/mul:z:0$lstm_5/while/lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:??????????2"
 lstm_5/while/lstm_cell_102/add_1?
$lstm_5/while/lstm_cell_102/Sigmoid_3Sigmoid)lstm_5/while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????2&
$lstm_5/while/lstm_cell_102/Sigmoid_3?
$lstm_5/while/lstm_cell_102/Sigmoid_4Sigmoid$lstm_5/while/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????2&
$lstm_5/while/lstm_cell_102/Sigmoid_4?
 lstm_5/while/lstm_cell_102/mul_3Mul$lstm_5/while/lstm_cell_102/add_1:z:0(lstm_5/while/lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2"
 lstm_5/while/lstm_cell_102/mul_3?
%lstm_5/while/lstm_cell_102/Identity_1Identity$lstm_5/while/lstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:??????????2'
%lstm_5/while/lstm_cell_102/Identity_1?
&lstm_5/while/lstm_cell_102/IdentityN_1	IdentityN$lstm_5/while/lstm_cell_102/mul_3:z:0$lstm_5/while/lstm_cell_102/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-708420*<
_output_shapes*
(:??????????:??????????2(
&lstm_5/while/lstm_cell_102/IdentityN_1?
 lstm_5/while/lstm_cell_102/mul_4Mul(lstm_5/while/lstm_cell_102/Sigmoid_3:y:0/lstm_5/while/lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_5/while/lstm_cell_102/mul_4?
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
lstm_5/while/add/y?
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
lstm_5/while/add_1/y?
lstm_5/while/add_1AddV2&lstm_5_while_lstm_5_while_loop_counterlstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_5/while/add_1?
lstm_5/while/IdentityIdentitylstm_5/while/add_1:z:02^lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp1^lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp3^lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity?
lstm_5/while/Identity_1Identity,lstm_5_while_lstm_5_while_maximum_iterations2^lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp1^lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp3^lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_1?
lstm_5/while/Identity_2Identitylstm_5/while/add:z:02^lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp1^lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp3^lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_2?
lstm_5/while/Identity_3IdentityAlstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp1^lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp3^lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_3?
lstm_5/while/Identity_4Identity$lstm_5/while/lstm_cell_102/mul_4:z:02^lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp1^lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp3^lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_5/while/Identity_4?
lstm_5/while/Identity_5Identity$lstm_5/while/lstm_cell_102/add_1:z:02^lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp1^lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp3^lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
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
9lstm_5_while_lstm_cell_102_matmul_readvariableop_resource;lstm_5_while_lstm_cell_102_matmul_readvariableop_resource_0"?
_lstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensoralstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2f
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?D
?
B__inference_lstm_6_layer_call_and_return_conditional_losses_706846

inputs
lstm_cell_103_706764
lstm_cell_103_706766
lstm_cell_103_706768
identity??%lstm_cell_103/StatefulPartitionedCall?whileD
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
strided_slice/stack_2?
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
B :?2
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
zeros/packed/1?
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
:?????????@2
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
B :?2
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
zeros_1/packed/1?
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
:?????????@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
%lstm_cell_103/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_103_706764lstm_cell_103_706766lstm_cell_103_706768*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????@:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_103_layer_call_and_return_conditional_losses_7064402'
%lstm_cell_103/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_103_706764lstm_cell_103_706766lstm_cell_103_706768*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_706777*
condR
while_cond_706776*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0&^lstm_cell_103/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :??????????????????@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:???????????????????:::2N
%lstm_cell_103/StatefulPartitionedCall%lstm_cell_103/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?"
?
I__inference_lstm_cell_102_layer_call_and_return_conditional_losses_710835

inputs
states_0
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource

identity_2

identity_3

identity_4??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
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
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
muld
	Sigmoid_2Sigmoidsplit:output:2*
T0*(
_output_shapes
:??????????2
	Sigmoid_2g
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
mul_1^
IdentityIdentity	mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity?
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*,
_gradient_op_typeCustomGradient-710816*<
_output_shapes*
(:??????????:??????????2
	IdentityNi
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*(
_output_shapes
:??????????2
mul_2^
add_1AddV2mul:z:0	mul_2:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_3Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_3_
	Sigmoid_4Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_4b
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
mul_3b

Identity_1Identity	mul_3:z:0*
T0*(
_output_shapes
:??????????2

Identity_1?
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-710825*<
_output_shapes*
(:??????????:??????????2
IdentityN_1m
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
mul_4?

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2?

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_3?

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*Z
_input_shapesI
G:?????????:??????????:??????????:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?M
?
while_body_710266
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
3while_lstm_cell_103_biasadd_readvariableop_resource??*while/lstm_cell_103/BiasAdd/ReadVariableOp?)while/lstm_cell_103/MatMul/ReadVariableOp?+while/lstm_cell_103/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_103/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_103_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_103/MatMul/ReadVariableOp?
while/lstm_cell_103/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_103/MatMul?
+while/lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_103_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02-
+while/lstm_cell_103/MatMul_1/ReadVariableOp?
while/lstm_cell_103/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_103/MatMul_1?
while/lstm_cell_103/addAddV2$while/lstm_cell_103/MatMul:product:0&while/lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_103/add?
*while/lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_103_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_103/BiasAdd/ReadVariableOp?
while/lstm_cell_103/BiasAddBiasAddwhile/lstm_cell_103/add:z:02while/lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_103/BiasAddx
while/lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_103/Const?
#while/lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_103/split/split_dim?
while/lstm_cell_103/splitSplit,while/lstm_cell_103/split/split_dim:output:0$while/lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
while/lstm_cell_103/split?
while/lstm_cell_103/SigmoidSigmoid"while/lstm_cell_103/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Sigmoid?
while/lstm_cell_103/Sigmoid_1Sigmoid"while/lstm_cell_103/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Sigmoid_1?
while/lstm_cell_103/mulMul!while/lstm_cell_103/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/mul?
while/lstm_cell_103/Sigmoid_2Sigmoid"while/lstm_cell_103/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Sigmoid_2?
while/lstm_cell_103/mul_1Mul"while/lstm_cell_103/split:output:2!while/lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/mul_1?
while/lstm_cell_103/IdentityIdentitywhile/lstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Identity?
while/lstm_cell_103/IdentityN	IdentityNwhile/lstm_cell_103/mul_1:z:0"while/lstm_cell_103/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-710309*:
_output_shapes(
&:?????????@:?????????@2
while/lstm_cell_103/IdentityN?
while/lstm_cell_103/mul_2Mulwhile/lstm_cell_103/Sigmoid:y:0&while/lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/mul_2?
while/lstm_cell_103/add_1AddV2while/lstm_cell_103/mul:z:0while/lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/add_1?
while/lstm_cell_103/Sigmoid_3Sigmoid"while/lstm_cell_103/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Sigmoid_3?
while/lstm_cell_103/Sigmoid_4Sigmoidwhile/lstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Sigmoid_4?
while/lstm_cell_103/mul_3Mulwhile/lstm_cell_103/add_1:z:0!while/lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/mul_3?
while/lstm_cell_103/Identity_1Identitywhile/lstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:?????????@2 
while/lstm_cell_103/Identity_1?
while/lstm_cell_103/IdentityN_1	IdentityNwhile/lstm_cell_103/mul_3:z:0while/lstm_cell_103/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-710318*:
_output_shapes(
&:?????????@:?????????@2!
while/lstm_cell_103/IdentityN_1?
while/lstm_cell_103/mul_4Mul!while/lstm_cell_103/Sigmoid_3:y:0(while/lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/mul_4?
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_103/mul_4:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_103/add_1:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
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
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????@:?????????@: : :::2X
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
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_707107

inputs
dense_8_707097
dense_8_707099
identity??dense_8/StatefulPartitionedCallD
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
strided_slice/stack_2?
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
valueB"????@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????@2	
Reshape?
dense_8/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_8_707097dense_8_707099*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_7070142!
dense_8/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshape(dense_8/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :??????????????????@2
	Reshape_1?
IdentityIdentityReshape_1:output:0 ^dense_8/StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????@2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:??????????????????@::2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?
?
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_710707

inputs*
&dense_9_matmul_readvariableop_resource+
'dense_9_biasadd_readvariableop_resource
identity??dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOpD
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
strided_slice/stack_2?
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
valueB"????@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????@2	
Reshape?
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_9/MatMul/ReadVariableOp?
dense_9/MatMulMatMulReshape:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_9/MatMul?
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_9/BiasAdd/ReadVariableOp?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_9/BiasAddq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshapedense_9/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :??????????????????2
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:??????????????????@::2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?
?
H__inference_sequential_3_layer_call_and_return_conditional_losses_708140
lstm_5_input
lstm_5_708111
lstm_5_708113
lstm_5_708115
lstm_6_708118
lstm_6_708120
lstm_6_708122
time_distributed_3_708125
time_distributed_3_708127
time_distributed_4_708132
time_distributed_4_708134
identity??lstm_5/StatefulPartitionedCall?lstm_6/StatefulPartitionedCall?*time_distributed_3/StatefulPartitionedCall?*time_distributed_4/StatefulPartitionedCall?
lstm_5/StatefulPartitionedCallStatefulPartitionedCalllstm_5_inputlstm_5_708111lstm_5_708113lstm_5_708115*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_7075842 
lstm_5/StatefulPartitionedCall?
lstm_6/StatefulPartitionedCallStatefulPartitionedCall'lstm_5/StatefulPartitionedCall:output:0lstm_6_708118lstm_6_708120lstm_6_708122*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_7079592 
lstm_6/StatefulPartitionedCall?
*time_distributed_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_6/StatefulPartitionedCall:output:0time_distributed_3_708125time_distributed_3_708127*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_7080282,
*time_distributed_3/StatefulPartitionedCall?
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2"
 time_distributed_3/Reshape/shape?
time_distributed_3/ReshapeReshape'lstm_6/StatefulPartitionedCall:output:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????@2
time_distributed_3/Reshape?
*time_distributed_4/StatefulPartitionedCallStatefulPartitionedCall3time_distributed_3/StatefulPartitionedCall:output:0time_distributed_4_708132time_distributed_4_708134*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_7080812,
*time_distributed_4/StatefulPartitionedCall?
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2"
 time_distributed_4/Reshape/shape?
time_distributed_4/ReshapeReshape3time_distributed_3/StatefulPartitionedCall:output:0)time_distributed_4/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????@2
time_distributed_4/Reshape?
IdentityIdentity3time_distributed_4/StatefulPartitionedCall:output:0^lstm_5/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall+^time_distributed_3/StatefulPartitionedCall+^time_distributed_4/StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:?????????::::::::::2@
lstm_5/StatefulPartitionedCalllstm_5/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall2X
*time_distributed_3/StatefulPartitionedCall*time_distributed_3/StatefulPartitionedCall2X
*time_distributed_4/StatefulPartitionedCall*time_distributed_4/StatefulPartitionedCall:Y U
+
_output_shapes
:?????????
&
_user_specified_namelstm_5_input
?
?
-__inference_sequential_3_layer_call_fn_709059

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
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_7081752
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:?????????::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?%
?
while_body_706279
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0 
while_lstm_cell_102_706303_0 
while_lstm_cell_102_706305_0 
while_lstm_cell_102_706307_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_102_706303
while_lstm_cell_102_706305
while_lstm_cell_102_706307??+while/lstm_cell_102/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
+while/lstm_cell_102/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_102_706303_0while_lstm_cell_102_706305_0while_lstm_cell_102_706307_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_102_layer_call_and_return_conditional_losses_7058532-
+while/lstm_cell_102/StatefulPartitionedCall?
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0,^while/lstm_cell_102/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations,^while/lstm_cell_102/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0,^while/lstm_cell_102/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0,^while/lstm_cell_102/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity4while/lstm_cell_102/StatefulPartitionedCall:output:1,^while/lstm_cell_102/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identity4while/lstm_cell_102/StatefulPartitionedCall:output:2,^while/lstm_cell_102/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_102_706303while_lstm_cell_102_706303_0":
while_lstm_cell_102_706305while_lstm_cell_102_706305_0":
while_lstm_cell_102_706307while_lstm_cell_102_706307_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2Z
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?M
?
while_body_709530
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
3while_lstm_cell_102_biasadd_readvariableop_resource??*while/lstm_cell_102/BiasAdd/ReadVariableOp?)while/lstm_cell_102/MatMul/ReadVariableOp?+while/lstm_cell_102/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02+
)while/lstm_cell_102/MatMul/ReadVariableOp?
while/lstm_cell_102/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/MatMul?
+while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02-
+while/lstm_cell_102/MatMul_1/ReadVariableOp?
while/lstm_cell_102/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/MatMul_1?
while/lstm_cell_102/addAddV2$while/lstm_cell_102/MatMul:product:0&while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/add?
*while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_102/BiasAdd/ReadVariableOp?
while/lstm_cell_102/BiasAddBiasAddwhile/lstm_cell_102/add:z:02while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/BiasAddx
while/lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_102/Const?
#while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_102/split/split_dim?
while/lstm_cell_102/splitSplit,while/lstm_cell_102/split/split_dim:output:0$while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_102/split?
while/lstm_cell_102/SigmoidSigmoid"while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid?
while/lstm_cell_102/Sigmoid_1Sigmoid"while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_1?
while/lstm_cell_102/mulMul!while/lstm_cell_102/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul?
while/lstm_cell_102/Sigmoid_2Sigmoid"while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_2?
while/lstm_cell_102/mul_1Mul"while/lstm_cell_102/split:output:2!while/lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_1?
while/lstm_cell_102/IdentityIdentitywhile/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Identity?
while/lstm_cell_102/IdentityN	IdentityNwhile/lstm_cell_102/mul_1:z:0"while/lstm_cell_102/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-709573*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell_102/IdentityN?
while/lstm_cell_102/mul_2Mulwhile/lstm_cell_102/Sigmoid:y:0&while/lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_2?
while/lstm_cell_102/add_1AddV2while/lstm_cell_102/mul:z:0while/lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/add_1?
while/lstm_cell_102/Sigmoid_3Sigmoid"while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_3?
while/lstm_cell_102/Sigmoid_4Sigmoidwhile/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_4?
while/lstm_cell_102/mul_3Mulwhile/lstm_cell_102/add_1:z:0!while/lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_3?
while/lstm_cell_102/Identity_1Identitywhile/lstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:??????????2 
while/lstm_cell_102/Identity_1?
while/lstm_cell_102/IdentityN_1	IdentityNwhile/lstm_cell_102/mul_3:z:0while/lstm_cell_102/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-709582*<
_output_shapes*
(:??????????:??????????2!
while/lstm_cell_102/IdentityN_1?
while/lstm_cell_102/mul_4Mul!while/lstm_cell_102/Sigmoid_3:y:0(while/lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_4?
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_102/mul_4:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_102/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
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
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2X
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
H__inference_sequential_3_layer_call_and_return_conditional_losses_708175

inputs
lstm_5_708146
lstm_5_708148
lstm_5_708150
lstm_6_708153
lstm_6_708155
lstm_6_708157
time_distributed_3_708160
time_distributed_3_708162
time_distributed_4_708167
time_distributed_4_708169
identity??lstm_5/StatefulPartitionedCall?lstm_6/StatefulPartitionedCall?*time_distributed_3/StatefulPartitionedCall?*time_distributed_4/StatefulPartitionedCall?
lstm_5/StatefulPartitionedCallStatefulPartitionedCallinputslstm_5_708146lstm_5_708148lstm_5_708150*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_7074112 
lstm_5/StatefulPartitionedCall?
lstm_6/StatefulPartitionedCallStatefulPartitionedCall'lstm_5/StatefulPartitionedCall:output:0lstm_6_708153lstm_6_708155lstm_6_708157*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_7077862 
lstm_6/StatefulPartitionedCall?
*time_distributed_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_6/StatefulPartitionedCall:output:0time_distributed_3_708160time_distributed_3_708162*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_7080082,
*time_distributed_3/StatefulPartitionedCall?
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2"
 time_distributed_3/Reshape/shape?
time_distributed_3/ReshapeReshape'lstm_6/StatefulPartitionedCall:output:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????@2
time_distributed_3/Reshape?
*time_distributed_4/StatefulPartitionedCallStatefulPartitionedCall3time_distributed_3/StatefulPartitionedCall:output:0time_distributed_4_708167time_distributed_4_708169*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_7080672,
*time_distributed_4/StatefulPartitionedCall?
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2"
 time_distributed_4/Reshape/shape?
time_distributed_4/ReshapeReshape3time_distributed_3/StatefulPartitionedCall:output:0)time_distributed_4/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????@2
time_distributed_4/Reshape?
IdentityIdentity3time_distributed_4/StatefulPartitionedCall:output:0^lstm_5/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall+^time_distributed_3/StatefulPartitionedCall+^time_distributed_4/StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:?????????::::::::::2@
lstm_5/StatefulPartitionedCalllstm_5/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall2X
*time_distributed_3/StatefulPartitionedCall*time_distributed_3/StatefulPartitionedCall2X
*time_distributed_4/StatefulPartitionedCall*time_distributed_4/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?	
H__inference_sequential_3_layer_call_and_return_conditional_losses_709034

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
identity??+lstm_5/lstm_cell_102/BiasAdd/ReadVariableOp?*lstm_5/lstm_cell_102/MatMul/ReadVariableOp?,lstm_5/lstm_cell_102/MatMul_1/ReadVariableOp?lstm_5/while?+lstm_6/lstm_cell_103/BiasAdd/ReadVariableOp?*lstm_6/lstm_cell_103/MatMul/ReadVariableOp?,lstm_6/lstm_cell_103/MatMul_1/ReadVariableOp?lstm_6/while?1time_distributed_3/dense_8/BiasAdd/ReadVariableOp?0time_distributed_3/dense_8/MatMul/ReadVariableOp?1time_distributed_4/dense_9/BiasAdd/ReadVariableOp?0time_distributed_4/dense_9/MatMul/ReadVariableOpR
lstm_5/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_5/Shape?
lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_5/strided_slice/stack?
lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_5/strided_slice/stack_1?
lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_5/strided_slice/stack_2?
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
B :?2
lstm_5/zeros/mul/y?
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
B :?2
lstm_5/zeros/Less/y?
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
B :?2
lstm_5/zeros/packed/1?
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
lstm_5/zeros/Const?
lstm_5/zerosFilllstm_5/zeros/packed:output:0lstm_5/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_5/zeroso
lstm_5/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_5/zeros_1/mul/y?
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
B :?2
lstm_5/zeros_1/Less/y?
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
B :?2
lstm_5/zeros_1/packed/1?
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
lstm_5/zeros_1/Const?
lstm_5/zeros_1Filllstm_5/zeros_1/packed:output:0lstm_5/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_5/zeros_1?
lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_5/transpose/perm?
lstm_5/transpose	Transposeinputslstm_5/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_5/transposed
lstm_5/Shape_1Shapelstm_5/transpose:y:0*
T0*
_output_shapes
:2
lstm_5/Shape_1?
lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_5/strided_slice_1/stack?
lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_1/stack_1?
lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_1/stack_2?
lstm_5/strided_slice_1StridedSlicelstm_5/Shape_1:output:0%lstm_5/strided_slice_1/stack:output:0'lstm_5/strided_slice_1/stack_1:output:0'lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_5/strided_slice_1?
"lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"lstm_5/TensorArrayV2/element_shape?
lstm_5/TensorArrayV2TensorListReserve+lstm_5/TensorArrayV2/element_shape:output:0lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_5/TensorArrayV2?
<lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2>
<lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape?
.lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_5/transpose:y:0Elstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_5/TensorArrayUnstack/TensorListFromTensor?
lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_5/strided_slice_2/stack?
lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_2/stack_1?
lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_2/stack_2?
lstm_5/strided_slice_2StridedSlicelstm_5/transpose:y:0%lstm_5/strided_slice_2/stack:output:0'lstm_5/strided_slice_2/stack_1:output:0'lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_5/strided_slice_2?
*lstm_5/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp3lstm_5_lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02,
*lstm_5/lstm_cell_102/MatMul/ReadVariableOp?
lstm_5/lstm_cell_102/MatMulMatMullstm_5/strided_slice_2:output:02lstm_5/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_102/MatMul?
,lstm_5/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp5lstm_5_lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,lstm_5/lstm_cell_102/MatMul_1/ReadVariableOp?
lstm_5/lstm_cell_102/MatMul_1MatMullstm_5/zeros:output:04lstm_5/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_102/MatMul_1?
lstm_5/lstm_cell_102/addAddV2%lstm_5/lstm_cell_102/MatMul:product:0'lstm_5/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_102/add?
+lstm_5/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp4lstm_5_lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+lstm_5/lstm_cell_102/BiasAdd/ReadVariableOp?
lstm_5/lstm_cell_102/BiasAddBiasAddlstm_5/lstm_cell_102/add:z:03lstm_5/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_102/BiasAddz
lstm_5/lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_5/lstm_cell_102/Const?
$lstm_5/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_5/lstm_cell_102/split/split_dim?
lstm_5/lstm_cell_102/splitSplit-lstm_5/lstm_cell_102/split/split_dim:output:0%lstm_5/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_5/lstm_cell_102/split?
lstm_5/lstm_cell_102/SigmoidSigmoid#lstm_5/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_102/Sigmoid?
lstm_5/lstm_cell_102/Sigmoid_1Sigmoid#lstm_5/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????2 
lstm_5/lstm_cell_102/Sigmoid_1?
lstm_5/lstm_cell_102/mulMul"lstm_5/lstm_cell_102/Sigmoid_1:y:0lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_102/mul?
lstm_5/lstm_cell_102/Sigmoid_2Sigmoid#lstm_5/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????2 
lstm_5/lstm_cell_102/Sigmoid_2?
lstm_5/lstm_cell_102/mul_1Mul#lstm_5/lstm_cell_102/split:output:2"lstm_5/lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_102/mul_1?
lstm_5/lstm_cell_102/IdentityIdentitylstm_5/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_102/Identity?
lstm_5/lstm_cell_102/IdentityN	IdentityNlstm_5/lstm_cell_102/mul_1:z:0#lstm_5/lstm_cell_102/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-708720*<
_output_shapes*
(:??????????:??????????2 
lstm_5/lstm_cell_102/IdentityN?
lstm_5/lstm_cell_102/mul_2Mul lstm_5/lstm_cell_102/Sigmoid:y:0'lstm_5/lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_102/mul_2?
lstm_5/lstm_cell_102/add_1AddV2lstm_5/lstm_cell_102/mul:z:0lstm_5/lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_102/add_1?
lstm_5/lstm_cell_102/Sigmoid_3Sigmoid#lstm_5/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????2 
lstm_5/lstm_cell_102/Sigmoid_3?
lstm_5/lstm_cell_102/Sigmoid_4Sigmoidlstm_5/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????2 
lstm_5/lstm_cell_102/Sigmoid_4?
lstm_5/lstm_cell_102/mul_3Mullstm_5/lstm_cell_102/add_1:z:0"lstm_5/lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_102/mul_3?
lstm_5/lstm_cell_102/Identity_1Identitylstm_5/lstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:??????????2!
lstm_5/lstm_cell_102/Identity_1?
 lstm_5/lstm_cell_102/IdentityN_1	IdentityNlstm_5/lstm_cell_102/mul_3:z:0lstm_5/lstm_cell_102/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-708729*<
_output_shapes*
(:??????????:??????????2"
 lstm_5/lstm_cell_102/IdentityN_1?
lstm_5/lstm_cell_102/mul_4Mul"lstm_5/lstm_cell_102/Sigmoid_3:y:0)lstm_5/lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_102/mul_4?
$lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2&
$lstm_5/TensorArrayV2_1/element_shape?
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
lstm_5/time?
lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
lstm_5/while/maximum_iterationsx
lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_5/while/loop_counter?
lstm_5/whileWhile"lstm_5/while/loop_counter:output:0(lstm_5/while/maximum_iterations:output:0lstm_5/time:output:0lstm_5/TensorArrayV2_1:handle:0lstm_5/zeros:output:0lstm_5/zeros_1:output:0lstm_5/strided_slice_1:output:0>lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_5_lstm_cell_102_matmul_readvariableop_resource5lstm_5_lstm_cell_102_matmul_1_readvariableop_resource4lstm_5_lstm_cell_102_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*$
bodyR
lstm_5_while_body_708740*$
condR
lstm_5_while_cond_708739*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
lstm_5/while?
7lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7lstm_5/TensorArrayV2Stack/TensorListStack/element_shape?
)lstm_5/TensorArrayV2Stack/TensorListStackTensorListStacklstm_5/while:output:3@lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02+
)lstm_5/TensorArrayV2Stack/TensorListStack?
lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_5/strided_slice_3/stack?
lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_5/strided_slice_3/stack_1?
lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_3/stack_2?
lstm_5/strided_slice_3StridedSlice2lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_5/strided_slice_3/stack:output:0'lstm_5/strided_slice_3/stack_1:output:0'lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm_5/strided_slice_3?
lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_5/transpose_1/perm?
lstm_5/transpose_1	Transpose2lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
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
lstm_6/Shape?
lstm_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_6/strided_slice/stack?
lstm_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_6/strided_slice/stack_1?
lstm_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_6/strided_slice/stack_2?
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
lstm_6/zeros/mul/y?
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
B :?2
lstm_6/zeros/Less/y?
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
lstm_6/zeros/packed/1?
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
lstm_6/zeros/Const?
lstm_6/zerosFilllstm_6/zeros/packed:output:0lstm_6/zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_6/zerosn
lstm_6/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_6/zeros_1/mul/y?
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
B :?2
lstm_6/zeros_1/Less/y?
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
lstm_6/zeros_1/packed/1?
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
lstm_6/zeros_1/Const?
lstm_6/zeros_1Filllstm_6/zeros_1/packed:output:0lstm_6/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_6/zeros_1?
lstm_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_6/transpose/perm?
lstm_6/transpose	Transposelstm_5/transpose_1:y:0lstm_6/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm_6/transposed
lstm_6/Shape_1Shapelstm_6/transpose:y:0*
T0*
_output_shapes
:2
lstm_6/Shape_1?
lstm_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_6/strided_slice_1/stack?
lstm_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_1/stack_1?
lstm_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_1/stack_2?
lstm_6/strided_slice_1StridedSlicelstm_6/Shape_1:output:0%lstm_6/strided_slice_1/stack:output:0'lstm_6/strided_slice_1/stack_1:output:0'lstm_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_6/strided_slice_1?
"lstm_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"lstm_6/TensorArrayV2/element_shape?
lstm_6/TensorArrayV2TensorListReserve+lstm_6/TensorArrayV2/element_shape:output:0lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_6/TensorArrayV2?
<lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2>
<lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shape?
.lstm_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_6/transpose:y:0Elstm_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_6/TensorArrayUnstack/TensorListFromTensor?
lstm_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_6/strided_slice_2/stack?
lstm_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_2/stack_1?
lstm_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_2/stack_2?
lstm_6/strided_slice_2StridedSlicelstm_6/transpose:y:0%lstm_6/strided_slice_2/stack:output:0'lstm_6/strided_slice_2/stack_1:output:0'lstm_6/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm_6/strided_slice_2?
*lstm_6/lstm_cell_103/MatMul/ReadVariableOpReadVariableOp3lstm_6_lstm_cell_103_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02,
*lstm_6/lstm_cell_103/MatMul/ReadVariableOp?
lstm_6/lstm_cell_103/MatMulMatMullstm_6/strided_slice_2:output:02lstm_6/lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_6/lstm_cell_103/MatMul?
,lstm_6/lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOp5lstm_6_lstm_cell_103_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02.
,lstm_6/lstm_cell_103/MatMul_1/ReadVariableOp?
lstm_6/lstm_cell_103/MatMul_1MatMullstm_6/zeros:output:04lstm_6/lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_6/lstm_cell_103/MatMul_1?
lstm_6/lstm_cell_103/addAddV2%lstm_6/lstm_cell_103/MatMul:product:0'lstm_6/lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_6/lstm_cell_103/add?
+lstm_6/lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOp4lstm_6_lstm_cell_103_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+lstm_6/lstm_cell_103/BiasAdd/ReadVariableOp?
lstm_6/lstm_cell_103/BiasAddBiasAddlstm_6/lstm_cell_103/add:z:03lstm_6/lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_6/lstm_cell_103/BiasAddz
lstm_6/lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_6/lstm_cell_103/Const?
$lstm_6/lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_6/lstm_cell_103/split/split_dim?
lstm_6/lstm_cell_103/splitSplit-lstm_6/lstm_cell_103/split/split_dim:output:0%lstm_6/lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
lstm_6/lstm_cell_103/split?
lstm_6/lstm_cell_103/SigmoidSigmoid#lstm_6/lstm_cell_103/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_103/Sigmoid?
lstm_6/lstm_cell_103/Sigmoid_1Sigmoid#lstm_6/lstm_cell_103/split:output:1*
T0*'
_output_shapes
:?????????@2 
lstm_6/lstm_cell_103/Sigmoid_1?
lstm_6/lstm_cell_103/mulMul"lstm_6/lstm_cell_103/Sigmoid_1:y:0lstm_6/zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_103/mul?
lstm_6/lstm_cell_103/Sigmoid_2Sigmoid#lstm_6/lstm_cell_103/split:output:2*
T0*'
_output_shapes
:?????????@2 
lstm_6/lstm_cell_103/Sigmoid_2?
lstm_6/lstm_cell_103/mul_1Mul#lstm_6/lstm_cell_103/split:output:2"lstm_6/lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_103/mul_1?
lstm_6/lstm_cell_103/IdentityIdentitylstm_6/lstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_103/Identity?
lstm_6/lstm_cell_103/IdentityN	IdentityNlstm_6/lstm_cell_103/mul_1:z:0#lstm_6/lstm_cell_103/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-708889*:
_output_shapes(
&:?????????@:?????????@2 
lstm_6/lstm_cell_103/IdentityN?
lstm_6/lstm_cell_103/mul_2Mul lstm_6/lstm_cell_103/Sigmoid:y:0'lstm_6/lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_103/mul_2?
lstm_6/lstm_cell_103/add_1AddV2lstm_6/lstm_cell_103/mul:z:0lstm_6/lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_103/add_1?
lstm_6/lstm_cell_103/Sigmoid_3Sigmoid#lstm_6/lstm_cell_103/split:output:3*
T0*'
_output_shapes
:?????????@2 
lstm_6/lstm_cell_103/Sigmoid_3?
lstm_6/lstm_cell_103/Sigmoid_4Sigmoidlstm_6/lstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:?????????@2 
lstm_6/lstm_cell_103/Sigmoid_4?
lstm_6/lstm_cell_103/mul_3Mullstm_6/lstm_cell_103/add_1:z:0"lstm_6/lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_103/mul_3?
lstm_6/lstm_cell_103/Identity_1Identitylstm_6/lstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:?????????@2!
lstm_6/lstm_cell_103/Identity_1?
 lstm_6/lstm_cell_103/IdentityN_1	IdentityNlstm_6/lstm_cell_103/mul_3:z:0lstm_6/lstm_cell_103/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-708898*:
_output_shapes(
&:?????????@:?????????@2"
 lstm_6/lstm_cell_103/IdentityN_1?
lstm_6/lstm_cell_103/mul_4Mul"lstm_6/lstm_cell_103/Sigmoid_3:y:0)lstm_6/lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_103/mul_4?
$lstm_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2&
$lstm_6/TensorArrayV2_1/element_shape?
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
lstm_6/time?
lstm_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
lstm_6/while/maximum_iterationsx
lstm_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_6/while/loop_counter?
lstm_6/whileWhile"lstm_6/while/loop_counter:output:0(lstm_6/while/maximum_iterations:output:0lstm_6/time:output:0lstm_6/TensorArrayV2_1:handle:0lstm_6/zeros:output:0lstm_6/zeros_1:output:0lstm_6/strided_slice_1:output:0>lstm_6/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_6_lstm_cell_103_matmul_readvariableop_resource5lstm_6_lstm_cell_103_matmul_1_readvariableop_resource4lstm_6_lstm_cell_103_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*$
bodyR
lstm_6_while_body_708909*$
condR
lstm_6_while_cond_708908*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
lstm_6/while?
7lstm_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   29
7lstm_6/TensorArrayV2Stack/TensorListStack/element_shape?
)lstm_6/TensorArrayV2Stack/TensorListStackTensorListStacklstm_6/while:output:3@lstm_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype02+
)lstm_6/TensorArrayV2Stack/TensorListStack?
lstm_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_6/strided_slice_3/stack?
lstm_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_6/strided_slice_3/stack_1?
lstm_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_3/stack_2?
lstm_6/strided_slice_3StridedSlice2lstm_6/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_6/strided_slice_3/stack:output:0'lstm_6/strided_slice_3/stack_1:output:0'lstm_6/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
lstm_6/strided_slice_3?
lstm_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_6/transpose_1/perm?
lstm_6/transpose_1	Transpose2lstm_6/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_6/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@2
lstm_6/transpose_1t
lstm_6/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_6/runtime?
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2"
 time_distributed_3/Reshape/shape?
time_distributed_3/ReshapeReshapelstm_6/transpose_1:y:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????@2
time_distributed_3/Reshape?
0time_distributed_3/dense_8/MatMul/ReadVariableOpReadVariableOp9time_distributed_3_dense_8_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype022
0time_distributed_3/dense_8/MatMul/ReadVariableOp?
!time_distributed_3/dense_8/MatMulMatMul#time_distributed_3/Reshape:output:08time_distributed_3/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2#
!time_distributed_3/dense_8/MatMul?
1time_distributed_3/dense_8/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_3_dense_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype023
1time_distributed_3/dense_8/BiasAdd/ReadVariableOp?
"time_distributed_3/dense_8/BiasAddBiasAdd+time_distributed_3/dense_8/MatMul:product:09time_distributed_3/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2$
"time_distributed_3/dense_8/BiasAdd?
"time_distributed_3/dense_8/SigmoidSigmoid+time_distributed_3/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2$
"time_distributed_3/dense_8/Sigmoid?
time_distributed_3/dense_8/mulMul+time_distributed_3/dense_8/BiasAdd:output:0&time_distributed_3/dense_8/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2 
time_distributed_3/dense_8/mul?
#time_distributed_3/dense_8/IdentityIdentity"time_distributed_3/dense_8/mul:z:0*
T0*'
_output_shapes
:?????????@2%
#time_distributed_3/dense_8/Identity?
$time_distributed_3/dense_8/IdentityN	IdentityN"time_distributed_3/dense_8/mul:z:0+time_distributed_3/dense_8/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-709011*:
_output_shapes(
&:?????????@:?????????@2&
$time_distributed_3/dense_8/IdentityN?
"time_distributed_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   @   2$
"time_distributed_3/Reshape_1/shape?
time_distributed_3/Reshape_1Reshape-time_distributed_3/dense_8/IdentityN:output:0+time_distributed_3/Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????@2
time_distributed_3/Reshape_1?
"time_distributed_3/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2$
"time_distributed_3/Reshape_2/shape?
time_distributed_3/Reshape_2Reshapelstm_6/transpose_1:y:0+time_distributed_3/Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????@2
time_distributed_3/Reshape_2?
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2"
 time_distributed_4/Reshape/shape?
time_distributed_4/ReshapeReshape%time_distributed_3/Reshape_1:output:0)time_distributed_4/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????@2
time_distributed_4/Reshape?
0time_distributed_4/dense_9/MatMul/ReadVariableOpReadVariableOp9time_distributed_4_dense_9_matmul_readvariableop_resource*
_output_shapes

:@*
dtype022
0time_distributed_4/dense_9/MatMul/ReadVariableOp?
!time_distributed_4/dense_9/MatMulMatMul#time_distributed_4/Reshape:output:08time_distributed_4/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!time_distributed_4/dense_9/MatMul?
1time_distributed_4/dense_9/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_4_dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype023
1time_distributed_4/dense_9/BiasAdd/ReadVariableOp?
"time_distributed_4/dense_9/BiasAddBiasAdd+time_distributed_4/dense_9/MatMul:product:09time_distributed_4/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2$
"time_distributed_4/dense_9/BiasAdd?
"time_distributed_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      2$
"time_distributed_4/Reshape_1/shape?
time_distributed_4/Reshape_1Reshape+time_distributed_4/dense_9/BiasAdd:output:0+time_distributed_4/Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????2
time_distributed_4/Reshape_1?
"time_distributed_4/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2$
"time_distributed_4/Reshape_2/shape?
time_distributed_4/Reshape_2Reshape%time_distributed_3/Reshape_1:output:0+time_distributed_4/Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????@2
time_distributed_4/Reshape_2?
IdentityIdentity%time_distributed_4/Reshape_1:output:0,^lstm_5/lstm_cell_102/BiasAdd/ReadVariableOp+^lstm_5/lstm_cell_102/MatMul/ReadVariableOp-^lstm_5/lstm_cell_102/MatMul_1/ReadVariableOp^lstm_5/while,^lstm_6/lstm_cell_103/BiasAdd/ReadVariableOp+^lstm_6/lstm_cell_103/MatMul/ReadVariableOp-^lstm_6/lstm_cell_103/MatMul_1/ReadVariableOp^lstm_6/while2^time_distributed_3/dense_8/BiasAdd/ReadVariableOp1^time_distributed_3/dense_8/MatMul/ReadVariableOp2^time_distributed_4/dense_9/BiasAdd/ReadVariableOp1^time_distributed_4/dense_9/MatMul/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:?????????::::::::::2Z
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
:?????????
 
_user_specified_nameinputs
?M
?
while_body_707691
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
3while_lstm_cell_103_biasadd_readvariableop_resource??*while/lstm_cell_103/BiasAdd/ReadVariableOp?)while/lstm_cell_103/MatMul/ReadVariableOp?+while/lstm_cell_103/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_103/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_103_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_103/MatMul/ReadVariableOp?
while/lstm_cell_103/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_103/MatMul?
+while/lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_103_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02-
+while/lstm_cell_103/MatMul_1/ReadVariableOp?
while/lstm_cell_103/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_103/MatMul_1?
while/lstm_cell_103/addAddV2$while/lstm_cell_103/MatMul:product:0&while/lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_103/add?
*while/lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_103_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_103/BiasAdd/ReadVariableOp?
while/lstm_cell_103/BiasAddBiasAddwhile/lstm_cell_103/add:z:02while/lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_103/BiasAddx
while/lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_103/Const?
#while/lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_103/split/split_dim?
while/lstm_cell_103/splitSplit,while/lstm_cell_103/split/split_dim:output:0$while/lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
while/lstm_cell_103/split?
while/lstm_cell_103/SigmoidSigmoid"while/lstm_cell_103/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Sigmoid?
while/lstm_cell_103/Sigmoid_1Sigmoid"while/lstm_cell_103/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Sigmoid_1?
while/lstm_cell_103/mulMul!while/lstm_cell_103/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/mul?
while/lstm_cell_103/Sigmoid_2Sigmoid"while/lstm_cell_103/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Sigmoid_2?
while/lstm_cell_103/mul_1Mul"while/lstm_cell_103/split:output:2!while/lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/mul_1?
while/lstm_cell_103/IdentityIdentitywhile/lstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Identity?
while/lstm_cell_103/IdentityN	IdentityNwhile/lstm_cell_103/mul_1:z:0"while/lstm_cell_103/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-707734*:
_output_shapes(
&:?????????@:?????????@2
while/lstm_cell_103/IdentityN?
while/lstm_cell_103/mul_2Mulwhile/lstm_cell_103/Sigmoid:y:0&while/lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/mul_2?
while/lstm_cell_103/add_1AddV2while/lstm_cell_103/mul:z:0while/lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/add_1?
while/lstm_cell_103/Sigmoid_3Sigmoid"while/lstm_cell_103/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Sigmoid_3?
while/lstm_cell_103/Sigmoid_4Sigmoidwhile/lstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/Sigmoid_4?
while/lstm_cell_103/mul_3Mulwhile/lstm_cell_103/add_1:z:0!while/lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/mul_3?
while/lstm_cell_103/Identity_1Identitywhile/lstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:?????????@2 
while/lstm_cell_103/Identity_1?
while/lstm_cell_103/IdentityN_1	IdentityNwhile/lstm_cell_103/mul_3:z:0while/lstm_cell_103/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-707743*:
_output_shapes(
&:?????????@:?????????@2!
while/lstm_cell_103/IdentityN_1?
while/lstm_cell_103/mul_4Mul!while/lstm_cell_103/Sigmoid_3:y:0(while/lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_103/mul_4?
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_103/mul_4:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_103/add_1:z:0+^while/lstm_cell_103/BiasAdd/ReadVariableOp*^while/lstm_cell_103/MatMul/ReadVariableOp,^while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
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
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????@:?????????@: : :::2X
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
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?

?
lstm_5_while_cond_708739*
&lstm_5_while_lstm_5_while_loop_counter0
,lstm_5_while_lstm_5_while_maximum_iterations
lstm_5_while_placeholder
lstm_5_while_placeholder_1
lstm_5_while_placeholder_2
lstm_5_while_placeholder_3,
(lstm_5_while_less_lstm_5_strided_slice_1B
>lstm_5_while_lstm_5_while_cond_708739___redundant_placeholder0B
>lstm_5_while_lstm_5_while_cond_708739___redundant_placeholder1B
>lstm_5_while_lstm_5_while_cond_708739___redundant_placeholder2B
>lstm_5_while_lstm_5_while_cond_708739___redundant_placeholder3
lstm_5_while_identity
?
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
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?M
?
while_body_709703
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
3while_lstm_cell_102_biasadd_readvariableop_resource??*while/lstm_cell_102/BiasAdd/ReadVariableOp?)while/lstm_cell_102/MatMul/ReadVariableOp?+while/lstm_cell_102/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02+
)while/lstm_cell_102/MatMul/ReadVariableOp?
while/lstm_cell_102/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/MatMul?
+while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02-
+while/lstm_cell_102/MatMul_1/ReadVariableOp?
while/lstm_cell_102/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/MatMul_1?
while/lstm_cell_102/addAddV2$while/lstm_cell_102/MatMul:product:0&while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/add?
*while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_102/BiasAdd/ReadVariableOp?
while/lstm_cell_102/BiasAddBiasAddwhile/lstm_cell_102/add:z:02while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/BiasAddx
while/lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_102/Const?
#while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_102/split/split_dim?
while/lstm_cell_102/splitSplit,while/lstm_cell_102/split/split_dim:output:0$while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_102/split?
while/lstm_cell_102/SigmoidSigmoid"while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid?
while/lstm_cell_102/Sigmoid_1Sigmoid"while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_1?
while/lstm_cell_102/mulMul!while/lstm_cell_102/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul?
while/lstm_cell_102/Sigmoid_2Sigmoid"while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_2?
while/lstm_cell_102/mul_1Mul"while/lstm_cell_102/split:output:2!while/lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_1?
while/lstm_cell_102/IdentityIdentitywhile/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Identity?
while/lstm_cell_102/IdentityN	IdentityNwhile/lstm_cell_102/mul_1:z:0"while/lstm_cell_102/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-709746*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell_102/IdentityN?
while/lstm_cell_102/mul_2Mulwhile/lstm_cell_102/Sigmoid:y:0&while/lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_2?
while/lstm_cell_102/add_1AddV2while/lstm_cell_102/mul:z:0while/lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/add_1?
while/lstm_cell_102/Sigmoid_3Sigmoid"while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_3?
while/lstm_cell_102/Sigmoid_4Sigmoidwhile/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_4?
while/lstm_cell_102/mul_3Mulwhile/lstm_cell_102/add_1:z:0!while/lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_3?
while/lstm_cell_102/Identity_1Identitywhile/lstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:??????????2 
while/lstm_cell_102/Identity_1?
while/lstm_cell_102/IdentityN_1	IdentityNwhile/lstm_cell_102/mul_3:z:0while/lstm_cell_102/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-709755*<
_output_shapes*
(:??????????:??????????2!
while/lstm_cell_102/IdentityN_1?
while/lstm_cell_102/mul_4Mul!while/lstm_cell_102/Sigmoid_3:y:0(while/lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_4?
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_102/mul_4:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_102/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
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
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2X
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_710774

inputs*
&dense_9_matmul_readvariableop_resource+
'dense_9_biasadd_readvariableop_resource
identity??dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????@2	
Reshape?
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_9/MatMul/ReadVariableOp?
dense_9/MatMulMatMulReshape:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_9/MatMul?
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_9/BiasAdd/ReadVariableOp?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_9/BiasAddw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      2
Reshape_1/shape?
	Reshape_1Reshapedense_9/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????2
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????@::2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
'__inference_lstm_5_layer_call_fn_709820

inputs
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_7075842
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
'__inference_lstm_6_layer_call_fn_710188
inputs_0
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_7069782
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:???????????????????:::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?%
?
while_body_706909
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0 
while_lstm_cell_103_706933_0 
while_lstm_cell_103_706935_0 
while_lstm_cell_103_706937_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_103_706933
while_lstm_cell_103_706935
while_lstm_cell_103_706937??+while/lstm_cell_103/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
+while/lstm_cell_103/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_103_706933_0while_lstm_cell_103_706935_0while_lstm_cell_103_706937_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????@:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_103_layer_call_and_return_conditional_losses_7064832-
+while/lstm_cell_103/StatefulPartitionedCall?
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0,^while/lstm_cell_103/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations,^while/lstm_cell_103/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0,^while/lstm_cell_103/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0,^while/lstm_cell_103/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity4while/lstm_cell_103/StatefulPartitionedCall:output:1,^while/lstm_cell_103/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identity4while/lstm_cell_103/StatefulPartitionedCall:output:2,^while/lstm_cell_103/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_103_706933while_lstm_cell_103_706933_0":
while_lstm_cell_103_706935while_lstm_cell_103_706935_0":
while_lstm_cell_103_706937while_lstm_cell_103_706937_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????@:?????????@: : :::2Z
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
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?"
?
I__inference_lstm_cell_103_layer_call_and_return_conditional_losses_710955

inputs
states_0
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource

identity_2

identity_3

identity_4??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
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
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????@2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????@2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????@2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:?????????@2
	Sigmoid_2f
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
mul_1]
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:?????????@2

Identity?
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*,
_gradient_op_typeCustomGradient-710936*:
_output_shapes(
&:?????????@:?????????@2
	IdentityNh
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
mul_2]
add_1AddV2mul:z:0	mul_2:z:0*
T0*'
_output_shapes
:?????????@2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????@2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????@2
	Sigmoid_4a
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
mul_3a

Identity_1Identity	mul_3:z:0*
T0*'
_output_shapes
:?????????@2

Identity_1?
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-710945*:
_output_shapes(
&:?????????@:?????????@2
IdentityN_1l
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
mul_4?

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_2?

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_3?

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*Y
_input_shapesH
F:??????????:?????????@:?????????@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/1
?Y
?	
lstm_6_while_body_708537*
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
:lstm_6_while_lstm_cell_103_biasadd_readvariableop_resource??1lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp?0lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp?2lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp?
>lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2@
>lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0lstm_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0lstm_6_while_placeholderGlstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype022
0lstm_6/while/TensorArrayV2Read/TensorListGetItem?
0lstm_6/while/lstm_cell_103/MatMul/ReadVariableOpReadVariableOp;lstm_6_while_lstm_cell_103_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype022
0lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp?
!lstm_6/while/lstm_cell_103/MatMulMatMul7lstm_6/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!lstm_6/while/lstm_cell_103/MatMul?
2lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOp=lstm_6_while_lstm_cell_103_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype024
2lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp?
#lstm_6/while/lstm_cell_103/MatMul_1MatMullstm_6_while_placeholder_2:lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2%
#lstm_6/while/lstm_cell_103/MatMul_1?
lstm_6/while/lstm_cell_103/addAddV2+lstm_6/while/lstm_cell_103/MatMul:product:0-lstm_6/while/lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2 
lstm_6/while/lstm_cell_103/add?
1lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOp<lstm_6_while_lstm_cell_103_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype023
1lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp?
"lstm_6/while/lstm_cell_103/BiasAddBiasAdd"lstm_6/while/lstm_cell_103/add:z:09lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2$
"lstm_6/while/lstm_cell_103/BiasAdd?
 lstm_6/while/lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2"
 lstm_6/while/lstm_cell_103/Const?
*lstm_6/while/lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_6/while/lstm_cell_103/split/split_dim?
 lstm_6/while/lstm_cell_103/splitSplit3lstm_6/while/lstm_cell_103/split/split_dim:output:0+lstm_6/while/lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2"
 lstm_6/while/lstm_cell_103/split?
"lstm_6/while/lstm_cell_103/SigmoidSigmoid)lstm_6/while/lstm_cell_103/split:output:0*
T0*'
_output_shapes
:?????????@2$
"lstm_6/while/lstm_cell_103/Sigmoid?
$lstm_6/while/lstm_cell_103/Sigmoid_1Sigmoid)lstm_6/while/lstm_cell_103/split:output:1*
T0*'
_output_shapes
:?????????@2&
$lstm_6/while/lstm_cell_103/Sigmoid_1?
lstm_6/while/lstm_cell_103/mulMul(lstm_6/while/lstm_cell_103/Sigmoid_1:y:0lstm_6_while_placeholder_3*
T0*'
_output_shapes
:?????????@2 
lstm_6/while/lstm_cell_103/mul?
$lstm_6/while/lstm_cell_103/Sigmoid_2Sigmoid)lstm_6/while/lstm_cell_103/split:output:2*
T0*'
_output_shapes
:?????????@2&
$lstm_6/while/lstm_cell_103/Sigmoid_2?
 lstm_6/while/lstm_cell_103/mul_1Mul)lstm_6/while/lstm_cell_103/split:output:2(lstm_6/while/lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2"
 lstm_6/while/lstm_cell_103/mul_1?
#lstm_6/while/lstm_cell_103/IdentityIdentity$lstm_6/while/lstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:?????????@2%
#lstm_6/while/lstm_cell_103/Identity?
$lstm_6/while/lstm_cell_103/IdentityN	IdentityN$lstm_6/while/lstm_cell_103/mul_1:z:0)lstm_6/while/lstm_cell_103/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-708580*:
_output_shapes(
&:?????????@:?????????@2&
$lstm_6/while/lstm_cell_103/IdentityN?
 lstm_6/while/lstm_cell_103/mul_2Mul&lstm_6/while/lstm_cell_103/Sigmoid:y:0-lstm_6/while/lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2"
 lstm_6/while/lstm_cell_103/mul_2?
 lstm_6/while/lstm_cell_103/add_1AddV2"lstm_6/while/lstm_cell_103/mul:z:0$lstm_6/while/lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:?????????@2"
 lstm_6/while/lstm_cell_103/add_1?
$lstm_6/while/lstm_cell_103/Sigmoid_3Sigmoid)lstm_6/while/lstm_cell_103/split:output:3*
T0*'
_output_shapes
:?????????@2&
$lstm_6/while/lstm_cell_103/Sigmoid_3?
$lstm_6/while/lstm_cell_103/Sigmoid_4Sigmoid$lstm_6/while/lstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:?????????@2&
$lstm_6/while/lstm_cell_103/Sigmoid_4?
 lstm_6/while/lstm_cell_103/mul_3Mul$lstm_6/while/lstm_cell_103/add_1:z:0(lstm_6/while/lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2"
 lstm_6/while/lstm_cell_103/mul_3?
%lstm_6/while/lstm_cell_103/Identity_1Identity$lstm_6/while/lstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:?????????@2'
%lstm_6/while/lstm_cell_103/Identity_1?
&lstm_6/while/lstm_cell_103/IdentityN_1	IdentityN$lstm_6/while/lstm_cell_103/mul_3:z:0$lstm_6/while/lstm_cell_103/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-708589*:
_output_shapes(
&:?????????@:?????????@2(
&lstm_6/while/lstm_cell_103/IdentityN_1?
 lstm_6/while/lstm_cell_103/mul_4Mul(lstm_6/while/lstm_cell_103/Sigmoid_3:y:0/lstm_6/while/lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2"
 lstm_6/while/lstm_cell_103/mul_4?
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
lstm_6/while/add/y?
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
lstm_6/while/add_1/y?
lstm_6/while/add_1AddV2&lstm_6_while_lstm_6_while_loop_counterlstm_6/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_6/while/add_1?
lstm_6/while/IdentityIdentitylstm_6/while/add_1:z:02^lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp1^lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp3^lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity?
lstm_6/while/Identity_1Identity,lstm_6_while_lstm_6_while_maximum_iterations2^lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp1^lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp3^lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_1?
lstm_6/while/Identity_2Identitylstm_6/while/add:z:02^lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp1^lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp3^lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_2?
lstm_6/while/Identity_3IdentityAlstm_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp1^lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp3^lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_3?
lstm_6/while/Identity_4Identity$lstm_6/while/lstm_cell_103/mul_4:z:02^lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp1^lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp3^lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
lstm_6/while/Identity_4?
lstm_6/while/Identity_5Identity$lstm_6/while/lstm_cell_103/add_1:z:02^lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp1^lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp3^lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
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
9lstm_6_while_lstm_cell_103_matmul_readvariableop_resource;lstm_6_while_lstm_cell_103_matmul_readvariableop_resource_0"?
_lstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensoralstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????@:?????????@: : :::2f
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
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?o
?
%sequential_3_lstm_5_while_body_705433D
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
Gsequential_3_lstm_5_while_lstm_cell_102_biasadd_readvariableop_resource??>sequential_3/lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp?=sequential_3/lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp??sequential_3/lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp?
Ksequential_3/lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2M
Ksequential_3/lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape?
=sequential_3/lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_3_lstm_5_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_5_tensorarrayunstack_tensorlistfromtensor_0%sequential_3_lstm_5_while_placeholderTsequential_3/lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02?
=sequential_3/lstm_5/while/TensorArrayV2Read/TensorListGetItem?
=sequential_3/lstm_5/while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOpHsequential_3_lstm_5_while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02?
=sequential_3/lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp?
.sequential_3/lstm_5/while/lstm_cell_102/MatMulMatMulDsequential_3/lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_3/lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????20
.sequential_3/lstm_5/while/lstm_cell_102/MatMul?
?sequential_3/lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOpJsequential_3_lstm_5_while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02A
?sequential_3/lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp?
0sequential_3/lstm_5/while/lstm_cell_102/MatMul_1MatMul'sequential_3_lstm_5_while_placeholder_2Gsequential_3/lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????22
0sequential_3/lstm_5/while/lstm_cell_102/MatMul_1?
+sequential_3/lstm_5/while/lstm_cell_102/addAddV28sequential_3/lstm_5/while/lstm_cell_102/MatMul:product:0:sequential_3/lstm_5/while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2-
+sequential_3/lstm_5/while/lstm_cell_102/add?
>sequential_3/lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOpIsequential_3_lstm_5_while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02@
>sequential_3/lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp?
/sequential_3/lstm_5/while/lstm_cell_102/BiasAddBiasAdd/sequential_3/lstm_5/while/lstm_cell_102/add:z:0Fsequential_3/lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????21
/sequential_3/lstm_5/while/lstm_cell_102/BiasAdd?
-sequential_3/lstm_5/while/lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2/
-sequential_3/lstm_5/while/lstm_cell_102/Const?
7sequential_3/lstm_5/while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :29
7sequential_3/lstm_5/while/lstm_cell_102/split/split_dim?
-sequential_3/lstm_5/while/lstm_cell_102/splitSplit@sequential_3/lstm_5/while/lstm_cell_102/split/split_dim:output:08sequential_3/lstm_5/while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2/
-sequential_3/lstm_5/while/lstm_cell_102/split?
/sequential_3/lstm_5/while/lstm_cell_102/SigmoidSigmoid6sequential_3/lstm_5/while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????21
/sequential_3/lstm_5/while/lstm_cell_102/Sigmoid?
1sequential_3/lstm_5/while/lstm_cell_102/Sigmoid_1Sigmoid6sequential_3/lstm_5/while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????23
1sequential_3/lstm_5/while/lstm_cell_102/Sigmoid_1?
+sequential_3/lstm_5/while/lstm_cell_102/mulMul5sequential_3/lstm_5/while/lstm_cell_102/Sigmoid_1:y:0'sequential_3_lstm_5_while_placeholder_3*
T0*(
_output_shapes
:??????????2-
+sequential_3/lstm_5/while/lstm_cell_102/mul?
1sequential_3/lstm_5/while/lstm_cell_102/Sigmoid_2Sigmoid6sequential_3/lstm_5/while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????23
1sequential_3/lstm_5/while/lstm_cell_102/Sigmoid_2?
-sequential_3/lstm_5/while/lstm_cell_102/mul_1Mul6sequential_3/lstm_5/while/lstm_cell_102/split:output:25sequential_3/lstm_5/while/lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2/
-sequential_3/lstm_5/while/lstm_cell_102/mul_1?
0sequential_3/lstm_5/while/lstm_cell_102/IdentityIdentity1sequential_3/lstm_5/while/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????22
0sequential_3/lstm_5/while/lstm_cell_102/Identity?
1sequential_3/lstm_5/while/lstm_cell_102/IdentityN	IdentityN1sequential_3/lstm_5/while/lstm_cell_102/mul_1:z:06sequential_3/lstm_5/while/lstm_cell_102/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-705476*<
_output_shapes*
(:??????????:??????????23
1sequential_3/lstm_5/while/lstm_cell_102/IdentityN?
-sequential_3/lstm_5/while/lstm_cell_102/mul_2Mul3sequential_3/lstm_5/while/lstm_cell_102/Sigmoid:y:0:sequential_3/lstm_5/while/lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:??????????2/
-sequential_3/lstm_5/while/lstm_cell_102/mul_2?
-sequential_3/lstm_5/while/lstm_cell_102/add_1AddV2/sequential_3/lstm_5/while/lstm_cell_102/mul:z:01sequential_3/lstm_5/while/lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:??????????2/
-sequential_3/lstm_5/while/lstm_cell_102/add_1?
1sequential_3/lstm_5/while/lstm_cell_102/Sigmoid_3Sigmoid6sequential_3/lstm_5/while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????23
1sequential_3/lstm_5/while/lstm_cell_102/Sigmoid_3?
1sequential_3/lstm_5/while/lstm_cell_102/Sigmoid_4Sigmoid1sequential_3/lstm_5/while/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????23
1sequential_3/lstm_5/while/lstm_cell_102/Sigmoid_4?
-sequential_3/lstm_5/while/lstm_cell_102/mul_3Mul1sequential_3/lstm_5/while/lstm_cell_102/add_1:z:05sequential_3/lstm_5/while/lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2/
-sequential_3/lstm_5/while/lstm_cell_102/mul_3?
2sequential_3/lstm_5/while/lstm_cell_102/Identity_1Identity1sequential_3/lstm_5/while/lstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:??????????24
2sequential_3/lstm_5/while/lstm_cell_102/Identity_1?
3sequential_3/lstm_5/while/lstm_cell_102/IdentityN_1	IdentityN1sequential_3/lstm_5/while/lstm_cell_102/mul_3:z:01sequential_3/lstm_5/while/lstm_cell_102/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-705485*<
_output_shapes*
(:??????????:??????????25
3sequential_3/lstm_5/while/lstm_cell_102/IdentityN_1?
-sequential_3/lstm_5/while/lstm_cell_102/mul_4Mul5sequential_3/lstm_5/while/lstm_cell_102/Sigmoid_3:y:0<sequential_3/lstm_5/while/lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2/
-sequential_3/lstm_5/while/lstm_cell_102/mul_4?
>sequential_3/lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_3_lstm_5_while_placeholder_1%sequential_3_lstm_5_while_placeholder1sequential_3/lstm_5/while/lstm_cell_102/mul_4:z:0*
_output_shapes
: *
element_dtype02@
>sequential_3/lstm_5/while/TensorArrayV2Write/TensorListSetItem?
sequential_3/lstm_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_3/lstm_5/while/add/y?
sequential_3/lstm_5/while/addAddV2%sequential_3_lstm_5_while_placeholder(sequential_3/lstm_5/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_3/lstm_5/while/add?
!sequential_3/lstm_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_3/lstm_5/while/add_1/y?
sequential_3/lstm_5/while/add_1AddV2@sequential_3_lstm_5_while_sequential_3_lstm_5_while_loop_counter*sequential_3/lstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
sequential_3/lstm_5/while/add_1?
"sequential_3/lstm_5/while/IdentityIdentity#sequential_3/lstm_5/while/add_1:z:0?^sequential_3/lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp>^sequential_3/lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp@^sequential_3/lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2$
"sequential_3/lstm_5/while/Identity?
$sequential_3/lstm_5/while/Identity_1IdentityFsequential_3_lstm_5_while_sequential_3_lstm_5_while_maximum_iterations?^sequential_3/lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp>^sequential_3/lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp@^sequential_3/lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_3/lstm_5/while/Identity_1?
$sequential_3/lstm_5/while/Identity_2Identity!sequential_3/lstm_5/while/add:z:0?^sequential_3/lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp>^sequential_3/lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp@^sequential_3/lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_3/lstm_5/while/Identity_2?
$sequential_3/lstm_5/while/Identity_3IdentityNsequential_3/lstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0?^sequential_3/lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp>^sequential_3/lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp@^sequential_3/lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_3/lstm_5/while/Identity_3?
$sequential_3/lstm_5/while/Identity_4Identity1sequential_3/lstm_5/while/lstm_cell_102/mul_4:z:0?^sequential_3/lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp>^sequential_3/lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp@^sequential_3/lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2&
$sequential_3/lstm_5/while/Identity_4?
$sequential_3/lstm_5/while/Identity_5Identity1sequential_3/lstm_5/while/lstm_cell_102/add_1:z:0?^sequential_3/lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp>^sequential_3/lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp@^sequential_3/lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2&
$sequential_3/lstm_5/while/Identity_5"Q
"sequential_3_lstm_5_while_identity+sequential_3/lstm_5/while/Identity:output:0"U
$sequential_3_lstm_5_while_identity_1-sequential_3/lstm_5/while/Identity_1:output:0"U
$sequential_3_lstm_5_while_identity_2-sequential_3/lstm_5/while/Identity_2:output:0"U
$sequential_3_lstm_5_while_identity_3-sequential_3/lstm_5/while/Identity_3:output:0"U
$sequential_3_lstm_5_while_identity_4-sequential_3/lstm_5/while/Identity_4:output:0"U
$sequential_3_lstm_5_while_identity_5-sequential_3/lstm_5/while/Identity_5:output:0"?
Gsequential_3_lstm_5_while_lstm_cell_102_biasadd_readvariableop_resourceIsequential_3_lstm_5_while_lstm_cell_102_biasadd_readvariableop_resource_0"?
Hsequential_3_lstm_5_while_lstm_cell_102_matmul_1_readvariableop_resourceJsequential_3_lstm_5_while_lstm_cell_102_matmul_1_readvariableop_resource_0"?
Fsequential_3_lstm_5_while_lstm_cell_102_matmul_readvariableop_resourceHsequential_3_lstm_5_while_lstm_cell_102_matmul_readvariableop_resource_0"?
=sequential_3_lstm_5_while_sequential_3_lstm_5_strided_slice_1?sequential_3_lstm_5_while_sequential_3_lstm_5_strided_slice_1_0"?
ysequential_3_lstm_5_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_5_tensorarrayunstack_tensorlistfromtensor{sequential_3_lstm_5_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2?
>sequential_3/lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp>sequential_3/lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp2~
=sequential_3/lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp=sequential_3/lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp2?
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?d
?
B__inference_lstm_6_layer_call_and_return_conditional_losses_710166
inputs_00
,lstm_cell_103_matmul_readvariableop_resource2
.lstm_cell_103_matmul_1_readvariableop_resource1
-lstm_cell_103_biasadd_readvariableop_resource
identity??$lstm_cell_103/BiasAdd/ReadVariableOp?#lstm_cell_103/MatMul/ReadVariableOp?%lstm_cell_103/MatMul_1/ReadVariableOp?whileF
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
strided_slice/stack_2?
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
B :?2
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
zeros/packed/1?
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
:?????????@2
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
B :?2
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
zeros_1/packed/1?
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
:?????????@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_103/MatMul/ReadVariableOpReadVariableOp,lstm_cell_103_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_103/MatMul/ReadVariableOp?
lstm_cell_103/MatMulMatMulstrided_slice_2:output:0+lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_103/MatMul?
%lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_103_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02'
%lstm_cell_103/MatMul_1/ReadVariableOp?
lstm_cell_103/MatMul_1MatMulzeros:output:0-lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_103/MatMul_1?
lstm_cell_103/addAddV2lstm_cell_103/MatMul:product:0 lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_103/add?
$lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_103_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_103/BiasAdd/ReadVariableOp?
lstm_cell_103/BiasAddBiasAddlstm_cell_103/add:z:0,lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_103/BiasAddl
lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_103/Const?
lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_103/split/split_dim?
lstm_cell_103/splitSplit&lstm_cell_103/split/split_dim:output:0lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
lstm_cell_103/split?
lstm_cell_103/SigmoidSigmoidlstm_cell_103/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Sigmoid?
lstm_cell_103/Sigmoid_1Sigmoidlstm_cell_103/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Sigmoid_1?
lstm_cell_103/mulMullstm_cell_103/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/mul?
lstm_cell_103/Sigmoid_2Sigmoidlstm_cell_103/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Sigmoid_2?
lstm_cell_103/mul_1Mullstm_cell_103/split:output:2lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/mul_1?
lstm_cell_103/IdentityIdentitylstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Identity?
lstm_cell_103/IdentityN	IdentityNlstm_cell_103/mul_1:z:0lstm_cell_103/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-710051*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_103/IdentityN?
lstm_cell_103/mul_2Mullstm_cell_103/Sigmoid:y:0 lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/mul_2?
lstm_cell_103/add_1AddV2lstm_cell_103/mul:z:0lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/add_1?
lstm_cell_103/Sigmoid_3Sigmoidlstm_cell_103/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Sigmoid_3?
lstm_cell_103/Sigmoid_4Sigmoidlstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Sigmoid_4?
lstm_cell_103/mul_3Mullstm_cell_103/add_1:z:0lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/mul_3?
lstm_cell_103/Identity_1Identitylstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Identity_1?
lstm_cell_103/IdentityN_1	IdentityNlstm_cell_103/mul_3:z:0lstm_cell_103/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-710060*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_103/IdentityN_1?
lstm_cell_103/mul_4Mullstm_cell_103/Sigmoid_3:y:0"lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/mul_4?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_103_matmul_readvariableop_resource.lstm_cell_103_matmul_1_readvariableop_resource-lstm_cell_103_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_710071*
condR
while_cond_710070*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0%^lstm_cell_103/BiasAdd/ReadVariableOp$^lstm_cell_103/MatMul/ReadVariableOp&^lstm_cell_103/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :??????????????????@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:???????????????????:::2L
$lstm_cell_103/BiasAdd/ReadVariableOp$lstm_cell_103/BiasAdd/ReadVariableOp2J
#lstm_cell_103/MatMul/ReadVariableOp#lstm_cell_103/MatMul/ReadVariableOp2N
%lstm_cell_103/MatMul_1/ReadVariableOp%lstm_cell_103/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?n
?
%sequential_3_lstm_6_while_body_705602D
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
Gsequential_3_lstm_6_while_lstm_cell_103_biasadd_readvariableop_resource??>sequential_3/lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp?=sequential_3/lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp??sequential_3/lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp?
Ksequential_3/lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2M
Ksequential_3/lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shape?
=sequential_3/lstm_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_3_lstm_6_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_6_tensorarrayunstack_tensorlistfromtensor_0%sequential_3_lstm_6_while_placeholderTsequential_3/lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02?
=sequential_3/lstm_6/while/TensorArrayV2Read/TensorListGetItem?
=sequential_3/lstm_6/while/lstm_cell_103/MatMul/ReadVariableOpReadVariableOpHsequential_3_lstm_6_while_lstm_cell_103_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02?
=sequential_3/lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp?
.sequential_3/lstm_6/while/lstm_cell_103/MatMulMatMulDsequential_3/lstm_6/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_3/lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????20
.sequential_3/lstm_6/while/lstm_cell_103/MatMul?
?sequential_3/lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOpJsequential_3_lstm_6_while_lstm_cell_103_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02A
?sequential_3/lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp?
0sequential_3/lstm_6/while/lstm_cell_103/MatMul_1MatMul'sequential_3_lstm_6_while_placeholder_2Gsequential_3/lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????22
0sequential_3/lstm_6/while/lstm_cell_103/MatMul_1?
+sequential_3/lstm_6/while/lstm_cell_103/addAddV28sequential_3/lstm_6/while/lstm_cell_103/MatMul:product:0:sequential_3/lstm_6/while/lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2-
+sequential_3/lstm_6/while/lstm_cell_103/add?
>sequential_3/lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOpIsequential_3_lstm_6_while_lstm_cell_103_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02@
>sequential_3/lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp?
/sequential_3/lstm_6/while/lstm_cell_103/BiasAddBiasAdd/sequential_3/lstm_6/while/lstm_cell_103/add:z:0Fsequential_3/lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????21
/sequential_3/lstm_6/while/lstm_cell_103/BiasAdd?
-sequential_3/lstm_6/while/lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2/
-sequential_3/lstm_6/while/lstm_cell_103/Const?
7sequential_3/lstm_6/while/lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :29
7sequential_3/lstm_6/while/lstm_cell_103/split/split_dim?
-sequential_3/lstm_6/while/lstm_cell_103/splitSplit@sequential_3/lstm_6/while/lstm_cell_103/split/split_dim:output:08sequential_3/lstm_6/while/lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2/
-sequential_3/lstm_6/while/lstm_cell_103/split?
/sequential_3/lstm_6/while/lstm_cell_103/SigmoidSigmoid6sequential_3/lstm_6/while/lstm_cell_103/split:output:0*
T0*'
_output_shapes
:?????????@21
/sequential_3/lstm_6/while/lstm_cell_103/Sigmoid?
1sequential_3/lstm_6/while/lstm_cell_103/Sigmoid_1Sigmoid6sequential_3/lstm_6/while/lstm_cell_103/split:output:1*
T0*'
_output_shapes
:?????????@23
1sequential_3/lstm_6/while/lstm_cell_103/Sigmoid_1?
+sequential_3/lstm_6/while/lstm_cell_103/mulMul5sequential_3/lstm_6/while/lstm_cell_103/Sigmoid_1:y:0'sequential_3_lstm_6_while_placeholder_3*
T0*'
_output_shapes
:?????????@2-
+sequential_3/lstm_6/while/lstm_cell_103/mul?
1sequential_3/lstm_6/while/lstm_cell_103/Sigmoid_2Sigmoid6sequential_3/lstm_6/while/lstm_cell_103/split:output:2*
T0*'
_output_shapes
:?????????@23
1sequential_3/lstm_6/while/lstm_cell_103/Sigmoid_2?
-sequential_3/lstm_6/while/lstm_cell_103/mul_1Mul6sequential_3/lstm_6/while/lstm_cell_103/split:output:25sequential_3/lstm_6/while/lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2/
-sequential_3/lstm_6/while/lstm_cell_103/mul_1?
0sequential_3/lstm_6/while/lstm_cell_103/IdentityIdentity1sequential_3/lstm_6/while/lstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:?????????@22
0sequential_3/lstm_6/while/lstm_cell_103/Identity?
1sequential_3/lstm_6/while/lstm_cell_103/IdentityN	IdentityN1sequential_3/lstm_6/while/lstm_cell_103/mul_1:z:06sequential_3/lstm_6/while/lstm_cell_103/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-705645*:
_output_shapes(
&:?????????@:?????????@23
1sequential_3/lstm_6/while/lstm_cell_103/IdentityN?
-sequential_3/lstm_6/while/lstm_cell_103/mul_2Mul3sequential_3/lstm_6/while/lstm_cell_103/Sigmoid:y:0:sequential_3/lstm_6/while/lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2/
-sequential_3/lstm_6/while/lstm_cell_103/mul_2?
-sequential_3/lstm_6/while/lstm_cell_103/add_1AddV2/sequential_3/lstm_6/while/lstm_cell_103/mul:z:01sequential_3/lstm_6/while/lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:?????????@2/
-sequential_3/lstm_6/while/lstm_cell_103/add_1?
1sequential_3/lstm_6/while/lstm_cell_103/Sigmoid_3Sigmoid6sequential_3/lstm_6/while/lstm_cell_103/split:output:3*
T0*'
_output_shapes
:?????????@23
1sequential_3/lstm_6/while/lstm_cell_103/Sigmoid_3?
1sequential_3/lstm_6/while/lstm_cell_103/Sigmoid_4Sigmoid1sequential_3/lstm_6/while/lstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:?????????@23
1sequential_3/lstm_6/while/lstm_cell_103/Sigmoid_4?
-sequential_3/lstm_6/while/lstm_cell_103/mul_3Mul1sequential_3/lstm_6/while/lstm_cell_103/add_1:z:05sequential_3/lstm_6/while/lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2/
-sequential_3/lstm_6/while/lstm_cell_103/mul_3?
2sequential_3/lstm_6/while/lstm_cell_103/Identity_1Identity1sequential_3/lstm_6/while/lstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:?????????@24
2sequential_3/lstm_6/while/lstm_cell_103/Identity_1?
3sequential_3/lstm_6/while/lstm_cell_103/IdentityN_1	IdentityN1sequential_3/lstm_6/while/lstm_cell_103/mul_3:z:01sequential_3/lstm_6/while/lstm_cell_103/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-705654*:
_output_shapes(
&:?????????@:?????????@25
3sequential_3/lstm_6/while/lstm_cell_103/IdentityN_1?
-sequential_3/lstm_6/while/lstm_cell_103/mul_4Mul5sequential_3/lstm_6/while/lstm_cell_103/Sigmoid_3:y:0<sequential_3/lstm_6/while/lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2/
-sequential_3/lstm_6/while/lstm_cell_103/mul_4?
>sequential_3/lstm_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_3_lstm_6_while_placeholder_1%sequential_3_lstm_6_while_placeholder1sequential_3/lstm_6/while/lstm_cell_103/mul_4:z:0*
_output_shapes
: *
element_dtype02@
>sequential_3/lstm_6/while/TensorArrayV2Write/TensorListSetItem?
sequential_3/lstm_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_3/lstm_6/while/add/y?
sequential_3/lstm_6/while/addAddV2%sequential_3_lstm_6_while_placeholder(sequential_3/lstm_6/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_3/lstm_6/while/add?
!sequential_3/lstm_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_3/lstm_6/while/add_1/y?
sequential_3/lstm_6/while/add_1AddV2@sequential_3_lstm_6_while_sequential_3_lstm_6_while_loop_counter*sequential_3/lstm_6/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
sequential_3/lstm_6/while/add_1?
"sequential_3/lstm_6/while/IdentityIdentity#sequential_3/lstm_6/while/add_1:z:0?^sequential_3/lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp>^sequential_3/lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp@^sequential_3/lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2$
"sequential_3/lstm_6/while/Identity?
$sequential_3/lstm_6/while/Identity_1IdentityFsequential_3_lstm_6_while_sequential_3_lstm_6_while_maximum_iterations?^sequential_3/lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp>^sequential_3/lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp@^sequential_3/lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_3/lstm_6/while/Identity_1?
$sequential_3/lstm_6/while/Identity_2Identity!sequential_3/lstm_6/while/add:z:0?^sequential_3/lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp>^sequential_3/lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp@^sequential_3/lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_3/lstm_6/while/Identity_2?
$sequential_3/lstm_6/while/Identity_3IdentityNsequential_3/lstm_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0?^sequential_3/lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp>^sequential_3/lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp@^sequential_3/lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_3/lstm_6/while/Identity_3?
$sequential_3/lstm_6/while/Identity_4Identity1sequential_3/lstm_6/while/lstm_cell_103/mul_4:z:0?^sequential_3/lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp>^sequential_3/lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp@^sequential_3/lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2&
$sequential_3/lstm_6/while/Identity_4?
$sequential_3/lstm_6/while/Identity_5Identity1sequential_3/lstm_6/while/lstm_cell_103/add_1:z:0?^sequential_3/lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp>^sequential_3/lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp@^sequential_3/lstm_6/while/lstm_cell_103/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2&
$sequential_3/lstm_6/while/Identity_5"Q
"sequential_3_lstm_6_while_identity+sequential_3/lstm_6/while/Identity:output:0"U
$sequential_3_lstm_6_while_identity_1-sequential_3/lstm_6/while/Identity_1:output:0"U
$sequential_3_lstm_6_while_identity_2-sequential_3/lstm_6/while/Identity_2:output:0"U
$sequential_3_lstm_6_while_identity_3-sequential_3/lstm_6/while/Identity_3:output:0"U
$sequential_3_lstm_6_while_identity_4-sequential_3/lstm_6/while/Identity_4:output:0"U
$sequential_3_lstm_6_while_identity_5-sequential_3/lstm_6/while/Identity_5:output:0"?
Gsequential_3_lstm_6_while_lstm_cell_103_biasadd_readvariableop_resourceIsequential_3_lstm_6_while_lstm_cell_103_biasadd_readvariableop_resource_0"?
Hsequential_3_lstm_6_while_lstm_cell_103_matmul_1_readvariableop_resourceJsequential_3_lstm_6_while_lstm_cell_103_matmul_1_readvariableop_resource_0"?
Fsequential_3_lstm_6_while_lstm_cell_103_matmul_readvariableop_resourceHsequential_3_lstm_6_while_lstm_cell_103_matmul_readvariableop_resource_0"?
=sequential_3_lstm_6_while_sequential_3_lstm_6_strided_slice_1?sequential_3_lstm_6_while_sequential_3_lstm_6_strided_slice_1_0"?
ysequential_3_lstm_6_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_6_tensorarrayunstack_tensorlistfromtensor{sequential_3_lstm_6_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_6_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????@:?????????@: : :::2?
>sequential_3/lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp>sequential_3/lstm_6/while/lstm_cell_103/BiasAdd/ReadVariableOp2~
=sequential_3/lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp=sequential_3/lstm_6/while/lstm_cell_103/MatMul/ReadVariableOp2?
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
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?"
?
I__inference_lstm_cell_102_layer_call_and_return_conditional_losses_705810

inputs

states
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource

identity_2

identity_3

identity_4??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
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
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
muld
	Sigmoid_2Sigmoidsplit:output:2*
T0*(
_output_shapes
:??????????2
	Sigmoid_2g
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
mul_1^
IdentityIdentity	mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity?
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*,
_gradient_op_typeCustomGradient-705791*<
_output_shapes*
(:??????????:??????????2
	IdentityNi
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*(
_output_shapes
:??????????2
mul_2^
add_1AddV2mul:z:0	mul_2:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_3Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_3_
	Sigmoid_4Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_4b
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
mul_3b

Identity_1Identity	mul_3:z:0*
T0*(
_output_shapes
:??????????2

Identity_1?
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-705800*<
_output_shapes*
(:??????????:??????????2
IdentityN_1m
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
mul_4?

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2?

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_3?

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*Z
_input_shapesI
G:?????????:??????????:??????????:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?
?
'__inference_lstm_6_layer_call_fn_710545

inputs
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_7077862
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????:::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
3__inference_time_distributed_4_layer_call_fn_710783

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_7080672
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????@::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
C__inference_dense_8_layer_call_and_return_conditional_losses_711048

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2	
Sigmoidb
mulMulBiasAdd:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
mul[
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:?????????@2

Identity?
	IdentityN	IdentityNmul:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-711041*:
_output_shapes(
&:?????????@:?????????@2
	IdentityN?

Identity_1IdentityIdentityN:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
while_cond_709897
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_709897___redundant_placeholder04
0while_while_cond_709897___redundant_placeholder14
0while_while_cond_709897___redundant_placeholder24
0while_while_cond_709897___redundant_placeholder3
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
@: : : : :?????????@:?????????@: ::::: 
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
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
?
'__inference_lstm_5_layer_call_fn_709809

inputs
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_7074112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?"
?
I__inference_lstm_cell_103_layer_call_and_return_conditional_losses_710998

inputs
states_0
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource

identity_2

identity_3

identity_4??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
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
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????@2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????@2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????@2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:?????????@2
	Sigmoid_2f
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
mul_1]
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:?????????@2

Identity?
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*,
_gradient_op_typeCustomGradient-710979*:
_output_shapes(
&:?????????@:?????????@2
	IdentityNh
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
mul_2]
add_1AddV2mul:z:0	mul_2:z:0*
T0*'
_output_shapes
:?????????@2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????@2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????@2
	Sigmoid_4a
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
mul_3a

Identity_1Identity	mul_3:z:0*
T0*'
_output_shapes
:?????????@2

Identity_1?
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-710988*:
_output_shapes(
&:?????????@:?????????@2
IdentityN_1l
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
mul_4?

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_2?

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_3?

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*Y
_input_shapesH
F:??????????:?????????@:?????????@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/1
?Y
?	
lstm_5_while_body_708740*
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
:lstm_5_while_lstm_cell_102_biasadd_readvariableop_resource??1lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp?0lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp?2lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp?
>lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2@
>lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0lstm_5_while_placeholderGlstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype022
0lstm_5/while/TensorArrayV2Read/TensorListGetItem?
0lstm_5/while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp;lstm_5_while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype022
0lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp?
!lstm_5/while/lstm_cell_102/MatMulMatMul7lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!lstm_5/while/lstm_cell_102/MatMul?
2lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp=lstm_5_while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype024
2lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp?
#lstm_5/while/lstm_cell_102/MatMul_1MatMullstm_5_while_placeholder_2:lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2%
#lstm_5/while/lstm_cell_102/MatMul_1?
lstm_5/while/lstm_cell_102/addAddV2+lstm_5/while/lstm_cell_102/MatMul:product:0-lstm_5/while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2 
lstm_5/while/lstm_cell_102/add?
1lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp<lstm_5_while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype023
1lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp?
"lstm_5/while/lstm_cell_102/BiasAddBiasAdd"lstm_5/while/lstm_cell_102/add:z:09lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2$
"lstm_5/while/lstm_cell_102/BiasAdd?
 lstm_5/while/lstm_cell_102/ConstConst*
_output_shapes
: *
dtype0*
value	B :2"
 lstm_5/while/lstm_cell_102/Const?
*lstm_5/while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_5/while/lstm_cell_102/split/split_dim?
 lstm_5/while/lstm_cell_102/splitSplit3lstm_5/while/lstm_cell_102/split/split_dim:output:0+lstm_5/while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2"
 lstm_5/while/lstm_cell_102/split?
"lstm_5/while/lstm_cell_102/SigmoidSigmoid)lstm_5/while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????2$
"lstm_5/while/lstm_cell_102/Sigmoid?
$lstm_5/while/lstm_cell_102/Sigmoid_1Sigmoid)lstm_5/while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????2&
$lstm_5/while/lstm_cell_102/Sigmoid_1?
lstm_5/while/lstm_cell_102/mulMul(lstm_5/while/lstm_cell_102/Sigmoid_1:y:0lstm_5_while_placeholder_3*
T0*(
_output_shapes
:??????????2 
lstm_5/while/lstm_cell_102/mul?
$lstm_5/while/lstm_cell_102/Sigmoid_2Sigmoid)lstm_5/while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????2&
$lstm_5/while/lstm_cell_102/Sigmoid_2?
 lstm_5/while/lstm_cell_102/mul_1Mul)lstm_5/while/lstm_cell_102/split:output:2(lstm_5/while/lstm_cell_102/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2"
 lstm_5/while/lstm_cell_102/mul_1?
#lstm_5/while/lstm_cell_102/IdentityIdentity$lstm_5/while/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????2%
#lstm_5/while/lstm_cell_102/Identity?
$lstm_5/while/lstm_cell_102/IdentityN	IdentityN$lstm_5/while/lstm_cell_102/mul_1:z:0)lstm_5/while/lstm_cell_102/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-708783*<
_output_shapes*
(:??????????:??????????2&
$lstm_5/while/lstm_cell_102/IdentityN?
 lstm_5/while/lstm_cell_102/mul_2Mul&lstm_5/while/lstm_cell_102/Sigmoid:y:0-lstm_5/while/lstm_cell_102/IdentityN:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_5/while/lstm_cell_102/mul_2?
 lstm_5/while/lstm_cell_102/add_1AddV2"lstm_5/while/lstm_cell_102/mul:z:0$lstm_5/while/lstm_cell_102/mul_2:z:0*
T0*(
_output_shapes
:??????????2"
 lstm_5/while/lstm_cell_102/add_1?
$lstm_5/while/lstm_cell_102/Sigmoid_3Sigmoid)lstm_5/while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????2&
$lstm_5/while/lstm_cell_102/Sigmoid_3?
$lstm_5/while/lstm_cell_102/Sigmoid_4Sigmoid$lstm_5/while/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????2&
$lstm_5/while/lstm_cell_102/Sigmoid_4?
 lstm_5/while/lstm_cell_102/mul_3Mul$lstm_5/while/lstm_cell_102/add_1:z:0(lstm_5/while/lstm_cell_102/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2"
 lstm_5/while/lstm_cell_102/mul_3?
%lstm_5/while/lstm_cell_102/Identity_1Identity$lstm_5/while/lstm_cell_102/mul_3:z:0*
T0*(
_output_shapes
:??????????2'
%lstm_5/while/lstm_cell_102/Identity_1?
&lstm_5/while/lstm_cell_102/IdentityN_1	IdentityN$lstm_5/while/lstm_cell_102/mul_3:z:0$lstm_5/while/lstm_cell_102/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-708792*<
_output_shapes*
(:??????????:??????????2(
&lstm_5/while/lstm_cell_102/IdentityN_1?
 lstm_5/while/lstm_cell_102/mul_4Mul(lstm_5/while/lstm_cell_102/Sigmoid_3:y:0/lstm_5/while/lstm_cell_102/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_5/while/lstm_cell_102/mul_4?
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
lstm_5/while/add/y?
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
lstm_5/while/add_1/y?
lstm_5/while/add_1AddV2&lstm_5_while_lstm_5_while_loop_counterlstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_5/while/add_1?
lstm_5/while/IdentityIdentitylstm_5/while/add_1:z:02^lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp1^lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp3^lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity?
lstm_5/while/Identity_1Identity,lstm_5_while_lstm_5_while_maximum_iterations2^lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp1^lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp3^lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_1?
lstm_5/while/Identity_2Identitylstm_5/while/add:z:02^lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp1^lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp3^lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_2?
lstm_5/while/Identity_3IdentityAlstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp1^lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp3^lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_3?
lstm_5/while/Identity_4Identity$lstm_5/while/lstm_cell_102/mul_4:z:02^lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp1^lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp3^lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_5/while/Identity_4?
lstm_5/while/Identity_5Identity$lstm_5/while/lstm_cell_102/add_1:z:02^lstm_5/while/lstm_cell_102/BiasAdd/ReadVariableOp1^lstm_5/while/lstm_cell_102/MatMul/ReadVariableOp3^lstm_5/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
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
9lstm_5_while_lstm_cell_102_matmul_readvariableop_resource;lstm_5_while_lstm_cell_102_matmul_readvariableop_resource_0"?
_lstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensoralstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2f
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_707315
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_707315___redundant_placeholder04
0while_while_cond_707315___redundant_placeholder14
0while_while_cond_707315___redundant_placeholder24
0while_while_cond_707315___redundant_placeholder3
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
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?d
?
B__inference_lstm_6_layer_call_and_return_conditional_losses_707786

inputs0
,lstm_cell_103_matmul_readvariableop_resource2
.lstm_cell_103_matmul_1_readvariableop_resource1
-lstm_cell_103_biasadd_readvariableop_resource
identity??$lstm_cell_103/BiasAdd/ReadVariableOp?#lstm_cell_103/MatMul/ReadVariableOp?%lstm_cell_103/MatMul_1/ReadVariableOp?whileD
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
strided_slice/stack_2?
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
B :?2
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
zeros/packed/1?
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
:?????????@2
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
B :?2
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
zeros_1/packed/1?
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
:?????????@2	
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
:??????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_103/MatMul/ReadVariableOpReadVariableOp,lstm_cell_103_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_103/MatMul/ReadVariableOp?
lstm_cell_103/MatMulMatMulstrided_slice_2:output:0+lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_103/MatMul?
%lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_103_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02'
%lstm_cell_103/MatMul_1/ReadVariableOp?
lstm_cell_103/MatMul_1MatMulzeros:output:0-lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_103/MatMul_1?
lstm_cell_103/addAddV2lstm_cell_103/MatMul:product:0 lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_103/add?
$lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_103_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_103/BiasAdd/ReadVariableOp?
lstm_cell_103/BiasAddBiasAddlstm_cell_103/add:z:0,lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_103/BiasAddl
lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_103/Const?
lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_103/split/split_dim?
lstm_cell_103/splitSplit&lstm_cell_103/split/split_dim:output:0lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
lstm_cell_103/split?
lstm_cell_103/SigmoidSigmoidlstm_cell_103/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Sigmoid?
lstm_cell_103/Sigmoid_1Sigmoidlstm_cell_103/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Sigmoid_1?
lstm_cell_103/mulMullstm_cell_103/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/mul?
lstm_cell_103/Sigmoid_2Sigmoidlstm_cell_103/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Sigmoid_2?
lstm_cell_103/mul_1Mullstm_cell_103/split:output:2lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/mul_1?
lstm_cell_103/IdentityIdentitylstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Identity?
lstm_cell_103/IdentityN	IdentityNlstm_cell_103/mul_1:z:0lstm_cell_103/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-707671*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_103/IdentityN?
lstm_cell_103/mul_2Mullstm_cell_103/Sigmoid:y:0 lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/mul_2?
lstm_cell_103/add_1AddV2lstm_cell_103/mul:z:0lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/add_1?
lstm_cell_103/Sigmoid_3Sigmoidlstm_cell_103/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Sigmoid_3?
lstm_cell_103/Sigmoid_4Sigmoidlstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Sigmoid_4?
lstm_cell_103/mul_3Mullstm_cell_103/add_1:z:0lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/mul_3?
lstm_cell_103/Identity_1Identitylstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Identity_1?
lstm_cell_103/IdentityN_1	IdentityNlstm_cell_103/mul_3:z:0lstm_cell_103/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-707680*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_103/IdentityN_1?
lstm_cell_103/mul_4Mullstm_cell_103/Sigmoid_3:y:0"lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/mul_4?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_103_matmul_readvariableop_resource.lstm_cell_103_matmul_1_readvariableop_resource-lstm_cell_103_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_707691*
condR
while_cond_707690*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0%^lstm_cell_103/BiasAdd/ReadVariableOp$^lstm_cell_103/MatMul/ReadVariableOp&^lstm_cell_103/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????:::2L
$lstm_cell_103/BiasAdd/ReadVariableOp$lstm_cell_103/BiasAdd/ReadVariableOp2J
#lstm_cell_103/MatMul/ReadVariableOp#lstm_cell_103/MatMul/ReadVariableOp2N
%lstm_cell_103/MatMul_1/ReadVariableOp%lstm_cell_103/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_3_layer_call_fn_709084

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
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_7082322
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:?????????::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_708081

inputs*
&dense_9_matmul_readvariableop_resource+
'dense_9_biasadd_readvariableop_resource
identity??dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????@2	
Reshape?
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_9/MatMul/ReadVariableOp?
dense_9/MatMulMatMulReshape:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_9/MatMul?
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_9/BiasAdd/ReadVariableOp?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_9/BiasAddw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      2
Reshape_1/shape?
	Reshape_1Reshapedense_9/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????2
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????@::2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
.__inference_lstm_cell_103_layer_call_fn_711032

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????@:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_103_layer_call_and_return_conditional_losses_7064832
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*Y
_input_shapesH
F:??????????:?????????@:?????????@:::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/1
?
?
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_710668

inputs*
&dense_8_matmul_readvariableop_resource+
'dense_8_biasadd_readvariableop_resource
identity??dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOpD
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
strided_slice/stack_2?
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
valueB"????@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????@2	
Reshape?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_8/MatMul/ReadVariableOp?
dense_8/MatMulMatMulReshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_8/MatMul?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_8/BiasAdd/ReadVariableOp?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_8/BiasAddy
dense_8/SigmoidSigmoiddense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_8/Sigmoid?
dense_8/mulMuldense_8/BiasAdd:output:0dense_8/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
dense_8/muls
dense_8/IdentityIdentitydense_8/mul:z:0*
T0*'
_output_shapes
:?????????@2
dense_8/Identity?
dense_8/IdentityN	IdentityNdense_8/mul:z:0dense_8/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-710657*:
_output_shapes(
&:?????????@:?????????@2
dense_8/IdentityNq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshapedense_8/IdentityN:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :??????????????????@2
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????@2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:??????????????????@::2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?
?
while_cond_709702
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_709702___redundant_placeholder04
0while_while_cond_709702___redundant_placeholder14
0while_while_cond_709702___redundant_placeholder24
0while_while_cond_709702___redundant_placeholder3
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
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?"
?
I__inference_lstm_cell_103_layer_call_and_return_conditional_losses_706440

inputs

states
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource

identity_2

identity_3

identity_4??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
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
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????@2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????@2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????@2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:?????????@2
	Sigmoid_2f
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
mul_1]
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:?????????@2

Identity?
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*,
_gradient_op_typeCustomGradient-706421*:
_output_shapes(
&:?????????@:?????????@2
	IdentityNh
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
mul_2]
add_1AddV2mul:z:0	mul_2:z:0*
T0*'
_output_shapes
:?????????@2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????@2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????@2
	Sigmoid_4a
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
mul_3a

Identity_1Identity	mul_3:z:0*
T0*'
_output_shapes
:?????????@2

Identity_1?
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-706430*:
_output_shapes(
&:?????????@:?????????@2
IdentityN_1l
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
mul_4?

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_2?

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_3?

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*Y
_input_shapesH
F:??????????:?????????@:?????????@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_namestates:OK
'
_output_shapes
:?????????@
 
_user_specified_namestates
?	
?
lstm_6_while_cond_708536*
&lstm_6_while_lstm_6_while_loop_counter0
,lstm_6_while_lstm_6_while_maximum_iterations
lstm_6_while_placeholder
lstm_6_while_placeholder_1
lstm_6_while_placeholder_2
lstm_6_while_placeholder_3,
(lstm_6_while_less_lstm_6_strided_slice_1B
>lstm_6_while_lstm_6_while_cond_708536___redundant_placeholder0B
>lstm_6_while_lstm_6_while_cond_708536___redundant_placeholder1B
>lstm_6_while_lstm_6_while_cond_708536___redundant_placeholder2B
>lstm_6_while_lstm_6_while_cond_708536___redundant_placeholder3
lstm_6_while_identity
?
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
@: : : : :?????????@:?????????@: ::::: 
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
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_709529
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_709529___redundant_placeholder04
0while_while_cond_709529___redundant_placeholder14
0while_while_cond_709529___redundant_placeholder24
0while_while_cond_709529___redundant_placeholder3
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
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_709161
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_709161___redundant_placeholder04
0while_while_cond_709161___redundant_placeholder14
0while_while_cond_709161___redundant_placeholder24
0while_while_cond_709161___redundant_placeholder3
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
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_707228

inputs
dense_9_707218
dense_9_707220
identity??dense_9/StatefulPartitionedCallD
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
strided_slice/stack_2?
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
valueB"????@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????@2	
Reshape?
dense_9/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_9_707218dense_9_707220*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_7071352!
dense_9/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshape(dense_9/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :??????????????????2
	Reshape_1?
IdentityIdentityReshape_1:output:0 ^dense_9/StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:??????????????????@::2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?%
?
while_body_706777
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0 
while_lstm_cell_103_706801_0 
while_lstm_cell_103_706803_0 
while_lstm_cell_103_706805_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_103_706801
while_lstm_cell_103_706803
while_lstm_cell_103_706805??+while/lstm_cell_103/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
+while/lstm_cell_103/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_103_706801_0while_lstm_cell_103_706803_0while_lstm_cell_103_706805_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????@:?????????@:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_103_layer_call_and_return_conditional_losses_7064402-
+while/lstm_cell_103/StatefulPartitionedCall?
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0,^while/lstm_cell_103/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations,^while/lstm_cell_103/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0,^while/lstm_cell_103/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0,^while/lstm_cell_103/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity4while/lstm_cell_103/StatefulPartitionedCall:output:1,^while/lstm_cell_103/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identity4while/lstm_cell_103/StatefulPartitionedCall:output:2,^while/lstm_cell_103/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_103_706801while_lstm_cell_103_706801_0":
while_lstm_cell_103_706803while_lstm_cell_103_706803_0":
while_lstm_cell_103_706805while_lstm_cell_103_706805_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????@:?????????@: : :::2Z
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
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?	
?
C__inference_dense_9_layer_call_and_return_conditional_losses_707135

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_707078

inputs
dense_8_707068
dense_8_707070
identity??dense_8/StatefulPartitionedCallD
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
strided_slice/stack_2?
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
valueB"????@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????@2	
Reshape?
dense_8/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_8_707068dense_8_707070*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_7070142!
dense_8/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshape(dense_8/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :??????????????????@2
	Reshape_1?
IdentityIdentityReshape_1:output:0 ^dense_8/StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????@2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:??????????????????@::2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?d
?
B__inference_lstm_6_layer_call_and_return_conditional_losses_710534

inputs0
,lstm_cell_103_matmul_readvariableop_resource2
.lstm_cell_103_matmul_1_readvariableop_resource1
-lstm_cell_103_biasadd_readvariableop_resource
identity??$lstm_cell_103/BiasAdd/ReadVariableOp?#lstm_cell_103/MatMul/ReadVariableOp?%lstm_cell_103/MatMul_1/ReadVariableOp?whileD
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
strided_slice/stack_2?
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
B :?2
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
zeros/packed/1?
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
:?????????@2
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
B :?2
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
zeros_1/packed/1?
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
:?????????@2	
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
:??????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_103/MatMul/ReadVariableOpReadVariableOp,lstm_cell_103_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_103/MatMul/ReadVariableOp?
lstm_cell_103/MatMulMatMulstrided_slice_2:output:0+lstm_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_103/MatMul?
%lstm_cell_103/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_103_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02'
%lstm_cell_103/MatMul_1/ReadVariableOp?
lstm_cell_103/MatMul_1MatMulzeros:output:0-lstm_cell_103/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_103/MatMul_1?
lstm_cell_103/addAddV2lstm_cell_103/MatMul:product:0 lstm_cell_103/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_103/add?
$lstm_cell_103/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_103_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_103/BiasAdd/ReadVariableOp?
lstm_cell_103/BiasAddBiasAddlstm_cell_103/add:z:0,lstm_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_103/BiasAddl
lstm_cell_103/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_103/Const?
lstm_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_103/split/split_dim?
lstm_cell_103/splitSplit&lstm_cell_103/split/split_dim:output:0lstm_cell_103/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
lstm_cell_103/split?
lstm_cell_103/SigmoidSigmoidlstm_cell_103/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Sigmoid?
lstm_cell_103/Sigmoid_1Sigmoidlstm_cell_103/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Sigmoid_1?
lstm_cell_103/mulMullstm_cell_103/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/mul?
lstm_cell_103/Sigmoid_2Sigmoidlstm_cell_103/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Sigmoid_2?
lstm_cell_103/mul_1Mullstm_cell_103/split:output:2lstm_cell_103/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/mul_1?
lstm_cell_103/IdentityIdentitylstm_cell_103/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Identity?
lstm_cell_103/IdentityN	IdentityNlstm_cell_103/mul_1:z:0lstm_cell_103/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-710419*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_103/IdentityN?
lstm_cell_103/mul_2Mullstm_cell_103/Sigmoid:y:0 lstm_cell_103/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/mul_2?
lstm_cell_103/add_1AddV2lstm_cell_103/mul:z:0lstm_cell_103/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/add_1?
lstm_cell_103/Sigmoid_3Sigmoidlstm_cell_103/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Sigmoid_3?
lstm_cell_103/Sigmoid_4Sigmoidlstm_cell_103/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Sigmoid_4?
lstm_cell_103/mul_3Mullstm_cell_103/add_1:z:0lstm_cell_103/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/mul_3?
lstm_cell_103/Identity_1Identitylstm_cell_103/mul_3:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/Identity_1?
lstm_cell_103/IdentityN_1	IdentityNlstm_cell_103/mul_3:z:0lstm_cell_103/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-710428*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_103/IdentityN_1?
lstm_cell_103/mul_4Mullstm_cell_103/Sigmoid_3:y:0"lstm_cell_103/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_103/mul_4?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_103_matmul_readvariableop_resource.lstm_cell_103_matmul_1_readvariableop_resource-lstm_cell_103_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_710439*
condR
while_cond_710438*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0%^lstm_cell_103/BiasAdd/ReadVariableOp$^lstm_cell_103/MatMul/ReadVariableOp&^lstm_cell_103/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????:::2L
$lstm_cell_103/BiasAdd/ReadVariableOp$lstm_cell_103/BiasAdd/ReadVariableOp2J
#lstm_cell_103/MatMul/ReadVariableOp#lstm_cell_103/MatMul/ReadVariableOp2N
%lstm_cell_103/MatMul_1/ReadVariableOp%lstm_cell_103/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
'__inference_lstm_5_layer_call_fn_709452
inputs_0
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_7063482
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????????????:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_706908
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_706908___redundant_placeholder04
0while_while_cond_706908___redundant_placeholder14
0while_while_cond_706908___redundant_placeholder24
0while_while_cond_706908___redundant_placeholder3
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
@: : : : :?????????@:?????????@: ::::: 
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
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_710070
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_710070___redundant_placeholder04
0while_while_cond_710070___redundant_placeholder14
0while_while_cond_710070___redundant_placeholder24
0while_while_cond_710070___redundant_placeholder3
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
@: : : : :?????????@:?????????@: ::::: 
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
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
?
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_710728

inputs*
&dense_9_matmul_readvariableop_resource+
'dense_9_biasadd_readvariableop_resource
identity??dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOpD
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
strided_slice/stack_2?
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
valueB"????@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????@2	
Reshape?
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_9/MatMul/ReadVariableOp?
dense_9/MatMulMatMulReshape:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_9/MatMul?
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_9/BiasAdd/ReadVariableOp?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_9/BiasAddq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
?????????2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2?
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape?
	Reshape_1Reshapedense_9/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :??????????????????2
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:??????????????????@::2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?
?
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_710760

inputs*
&dense_9_matmul_readvariableop_resource+
'dense_9_biasadd_readvariableop_resource
identity??dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????@2	
Reshape?
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_9/MatMul/ReadVariableOp?
dense_9/MatMulMatMulReshape:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_9/MatMul?
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_9/BiasAdd/ReadVariableOp?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_9/BiasAddw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      2
Reshape_1/shape?
	Reshape_1Reshapedense_9/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????2
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????@::2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
3__inference_time_distributed_4_layer_call_fn_710746

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_7072282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:??????????????????@::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?

?
lstm_5_while_cond_708367*
&lstm_5_while_lstm_5_while_loop_counter0
,lstm_5_while_lstm_5_while_maximum_iterations
lstm_5_while_placeholder
lstm_5_while_placeholder_1
lstm_5_while_placeholder_2
lstm_5_while_placeholder_3,
(lstm_5_while_less_lstm_5_strided_slice_1B
>lstm_5_while_lstm_5_while_cond_708367___redundant_placeholder0B
>lstm_5_while_lstm_5_while_cond_708367___redundant_placeholder1B
>lstm_5_while_lstm_5_while_cond_708367___redundant_placeholder2B
>lstm_5_while_lstm_5_while_cond_708367___redundant_placeholder3
lstm_5_while_identity
?
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
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?	
?
lstm_6_while_cond_708908*
&lstm_6_while_lstm_6_while_loop_counter0
,lstm_6_while_lstm_6_while_maximum_iterations
lstm_6_while_placeholder
lstm_6_while_placeholder_1
lstm_6_while_placeholder_2
lstm_6_while_placeholder_3,
(lstm_6_while_less_lstm_6_strided_slice_1B
>lstm_6_while_lstm_6_while_cond_708908___redundant_placeholder0B
>lstm_6_while_lstm_6_while_cond_708908___redundant_placeholder1B
>lstm_6_while_lstm_6_while_cond_708908___redundant_placeholder2B
>lstm_6_while_lstm_6_while_cond_708908___redundant_placeholder3
lstm_6_while_identity
?
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
@: : : : :?????????@:?????????@: ::::: 
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
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
?
H__inference_sequential_3_layer_call_and_return_conditional_losses_708108
lstm_5_input
lstm_5_707607
lstm_5_707609
lstm_5_707611
lstm_6_707982
lstm_6_707984
lstm_6_707986
time_distributed_3_708047
time_distributed_3_708049
time_distributed_4_708100
time_distributed_4_708102
identity??lstm_5/StatefulPartitionedCall?lstm_6/StatefulPartitionedCall?*time_distributed_3/StatefulPartitionedCall?*time_distributed_4/StatefulPartitionedCall?
lstm_5/StatefulPartitionedCallStatefulPartitionedCalllstm_5_inputlstm_5_707607lstm_5_707609lstm_5_707611*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_7074112 
lstm_5/StatefulPartitionedCall?
lstm_6/StatefulPartitionedCallStatefulPartitionedCall'lstm_5/StatefulPartitionedCall:output:0lstm_6_707982lstm_6_707984lstm_6_707986*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_7077862 
lstm_6/StatefulPartitionedCall?
*time_distributed_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_6/StatefulPartitionedCall:output:0time_distributed_3_708047time_distributed_3_708049*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_7080082,
*time_distributed_3/StatefulPartitionedCall?
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2"
 time_distributed_3/Reshape/shape?
time_distributed_3/ReshapeReshape'lstm_6/StatefulPartitionedCall:output:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????@2
time_distributed_3/Reshape?
*time_distributed_4/StatefulPartitionedCallStatefulPartitionedCall3time_distributed_3/StatefulPartitionedCall:output:0time_distributed_4_708100time_distributed_4_708102*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_7080672,
*time_distributed_4/StatefulPartitionedCall?
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2"
 time_distributed_4/Reshape/shape?
time_distributed_4/ReshapeReshape3time_distributed_3/StatefulPartitionedCall:output:0)time_distributed_4/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????@2
time_distributed_4/Reshape?
IdentityIdentity3time_distributed_4/StatefulPartitionedCall:output:0^lstm_5/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall+^time_distributed_3/StatefulPartitionedCall+^time_distributed_4/StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:?????????::::::::::2@
lstm_5/StatefulPartitionedCalllstm_5/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall2X
*time_distributed_3/StatefulPartitionedCall*time_distributed_3/StatefulPartitionedCall2X
*time_distributed_4/StatefulPartitionedCall*time_distributed_4/StatefulPartitionedCall:Y U
+
_output_shapes
:?????????
&
_user_specified_namelstm_5_input"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
I
lstm_5_input9
serving_default_lstm_5_input:0?????????J
time_distributed_44
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?;
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
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"?8
_tf_keras_sequential?8{"class_name": "Sequential", "name": "sequential_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 24, 19]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_5_input"}}, {"class_name": "LSTM", "config": {"name": "lstm_5", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "LSTM", "config": {"name": "lstm_6", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_3", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_4", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}}]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 19]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 19]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 24, 19]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_5_input"}}, {"class_name": "LSTM", "config": {"name": "lstm_5", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "LSTM", "config": {"name": "lstm_6", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_3", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_4", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}}]}}, "training_config": {"loss": {"class_name": "MeanAbsoluteError", "config": {"reduction": "auto", "name": "mean_absolute_error"}}, "metrics": [[{"class_name": "MeanSquaredLogarithmicError", "config": {"name": "mean_squared_logarithmic_error", "dtype": "float32"}}, {"class_name": "MeanSquaredError", "config": {"name": "mean_squared_error", "dtype": "float32"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
cell

state_spec
#_self_saveable_object_factories
	variables
regularization_losses
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?

_tf_keras_rnn_layer?	{"class_name": "LSTM", "name": "lstm_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_5", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 19]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 19]}}
?
cell

state_spec
#_self_saveable_object_factories
	variables
regularization_losses
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?

_tf_keras_rnn_layer?	{"class_name": "LSTM", "name": "lstm_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_6", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 128]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 128]}}
?	
	layer
#_self_saveable_object_factories
regularization_losses
	variables
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "TimeDistributed", "name": "time_distributed_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "time_distributed_3", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 64]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 64]}}
?	
	 layer
#!_self_saveable_object_factories
"regularization_losses
#	variables
$trainable_variables
%	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "TimeDistributed", "name": "time_distributed_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "time_distributed_4", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 64]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 64]}}
?
&iter

'beta_1

(beta_2
	)decay
*learning_rate+m?,m?-m?.m?/m?0m?1m?2m?3m?4m?+v?,v?-v?.v?/v?0v?1v?2v?3v?4v?"
	optimizer
-
?serving_default"
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
?
5layer_metrics
6layer_regularization_losses
	variables
7non_trainable_variables
8metrics
	regularization_losses

trainable_variables

9layers
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

+kernel
,recurrent_kernel
-bias
#:_self_saveable_object_factories
;regularization_losses
<	variables
=trainable_variables
>	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LSTMCell", "name": "lstm_cell_102", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell_102", "trainable": true, "dtype": "float32", "units": 128, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}
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
?
?layer_metrics
@layer_regularization_losses
	variables
Anon_trainable_variables

Bstates
Cmetrics
regularization_losses
trainable_variables

Dlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

.kernel
/recurrent_kernel
0bias
#E_self_saveable_object_factories
Fregularization_losses
G	variables
Htrainable_variables
I	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LSTMCell", "name": "lstm_cell_103", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell_103", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}
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
?
Jlayer_metrics
Klayer_regularization_losses
	variables
Lnon_trainable_variables

Mstates
Nmetrics
regularization_losses
trainable_variables

Olayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

1kernel
2bias
#P_self_saveable_object_factories
Qregularization_losses
R	variables
Strainable_variables
T	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}}
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
?
Ulayer_metrics
Vlayer_regularization_losses
Wmetrics
regularization_losses
Xnon_trainable_variables
	variables
trainable_variables

Ylayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

3kernel
4bias
#Z_self_saveable_object_factories
[regularization_losses
\	variables
]trainable_variables
^	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}}
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
?
_layer_metrics
`layer_regularization_losses
ametrics
"regularization_losses
bnon_trainable_variables
#	variables
$trainable_variables

clayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
,:*	?2lstm_5/lstm_cell_5/kernel
7:5
??2#lstm_5/lstm_cell_5/recurrent_kernel
&:$?2lstm_5/lstm_cell_5/bias
-:+
??2lstm_6/lstm_cell_6/kernel
6:4	@?2#lstm_6/lstm_cell_6/recurrent_kernel
&:$?2lstm_6/lstm_cell_6/bias
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
?
glayer_metrics
hlayer_regularization_losses
imetrics
;regularization_losses
jnon_trainable_variables
<	variables
=trainable_variables

klayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
?
llayer_metrics
mlayer_regularization_losses
nmetrics
Fregularization_losses
onon_trainable_variables
G	variables
Htrainable_variables

players
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
?
qlayer_metrics
rlayer_regularization_losses
smetrics
Qregularization_losses
tnon_trainable_variables
R	variables
Strainable_variables

ulayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
?
vlayer_metrics
wlayer_regularization_losses
xmetrics
[regularization_losses
ynon_trainable_variables
\	variables
]trainable_variables

zlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
?
	{total
	|count
}	variables
~	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?
	total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanSquaredLogarithmicError", "name": "mean_squared_logarithmic_error", "dtype": "float32", "config": {"name": "mean_squared_logarithmic_error", "dtype": "float32"}}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanSquaredError", "name": "mean_squared_error", "dtype": "float32", "config": {"name": "mean_squared_error", "dtype": "float32"}}
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
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
1:/	?2 Adam/lstm_5/lstm_cell_5/kernel/m
<::
??2*Adam/lstm_5/lstm_cell_5/recurrent_kernel/m
+:)?2Adam/lstm_5/lstm_cell_5/bias/m
2:0
??2 Adam/lstm_6/lstm_cell_6/kernel/m
;:9	@?2*Adam/lstm_6/lstm_cell_6/recurrent_kernel/m
+:)?2Adam/lstm_6/lstm_cell_6/bias/m
0:.@@2 Adam/time_distributed_3/kernel/m
*:(@2Adam/time_distributed_3/bias/m
0:.@2 Adam/time_distributed_4/kernel/m
*:(2Adam/time_distributed_4/bias/m
1:/	?2 Adam/lstm_5/lstm_cell_5/kernel/v
<::
??2*Adam/lstm_5/lstm_cell_5/recurrent_kernel/v
+:)?2Adam/lstm_5/lstm_cell_5/bias/v
2:0
??2 Adam/lstm_6/lstm_cell_6/kernel/v
;:9	@?2*Adam/lstm_6/lstm_cell_6/recurrent_kernel/v
+:)?2Adam/lstm_6/lstm_cell_6/bias/v
0:.@@2 Adam/time_distributed_3/kernel/v
*:(@2Adam/time_distributed_3/bias/v
0:.@2 Adam/time_distributed_4/kernel/v
*:(2Adam/time_distributed_4/bias/v
?2?
-__inference_sequential_3_layer_call_fn_708255
-__inference_sequential_3_layer_call_fn_708198
-__inference_sequential_3_layer_call_fn_709084
-__inference_sequential_3_layer_call_fn_709059?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_sequential_3_layer_call_and_return_conditional_losses_709034
H__inference_sequential_3_layer_call_and_return_conditional_losses_708662
H__inference_sequential_3_layer_call_and_return_conditional_losses_708140
H__inference_sequential_3_layer_call_and_return_conditional_losses_708108?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
!__inference__wrapped_model_705727?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? */?,
*?'
lstm_5_input?????????
?2?
'__inference_lstm_5_layer_call_fn_709441
'__inference_lstm_5_layer_call_fn_709809
'__inference_lstm_5_layer_call_fn_709820
'__inference_lstm_5_layer_call_fn_709452?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_lstm_5_layer_call_and_return_conditional_losses_709430
B__inference_lstm_5_layer_call_and_return_conditional_losses_709798
B__inference_lstm_5_layer_call_and_return_conditional_losses_709625
B__inference_lstm_5_layer_call_and_return_conditional_losses_709257?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
'__inference_lstm_6_layer_call_fn_710188
'__inference_lstm_6_layer_call_fn_710545
'__inference_lstm_6_layer_call_fn_710556
'__inference_lstm_6_layer_call_fn_710177?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_lstm_6_layer_call_and_return_conditional_losses_710166
B__inference_lstm_6_layer_call_and_return_conditional_losses_709993
B__inference_lstm_6_layer_call_and_return_conditional_losses_710534
B__inference_lstm_6_layer_call_and_return_conditional_losses_710361?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
3__inference_time_distributed_3_layer_call_fn_710614
3__inference_time_distributed_3_layer_call_fn_710677
3__inference_time_distributed_3_layer_call_fn_710686
3__inference_time_distributed_3_layer_call_fn_710605?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_710596
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_710641
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_710576
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_710668?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
3__inference_time_distributed_4_layer_call_fn_710783
3__inference_time_distributed_4_layer_call_fn_710792
3__inference_time_distributed_4_layer_call_fn_710746
3__inference_time_distributed_4_layer_call_fn_710737?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_710707
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_710760
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_710728
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_710774?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
$__inference_signature_wrapper_708290lstm_5_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_lstm_cell_102_layer_call_fn_710912
.__inference_lstm_cell_102_layer_call_fn_710895?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
I__inference_lstm_cell_102_layer_call_and_return_conditional_losses_710835
I__inference_lstm_cell_102_layer_call_and_return_conditional_losses_710878?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
.__inference_lstm_cell_103_layer_call_fn_711015
.__inference_lstm_cell_103_layer_call_fn_711032?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
I__inference_lstm_cell_103_layer_call_and_return_conditional_losses_710955
I__inference_lstm_cell_103_layer_call_and_return_conditional_losses_710998?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_dense_8_layer_call_fn_711057?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_8_layer_call_and_return_conditional_losses_711048?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_9_layer_call_fn_711076?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_9_layer_call_and_return_conditional_losses_711067?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
!__inference__wrapped_model_705727?
+,-./012349?6
/?,
*?'
lstm_5_input?????????
? "K?H
F
time_distributed_40?-
time_distributed_4??????????
C__inference_dense_8_layer_call_and_return_conditional_losses_711048\12/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????@
? {
(__inference_dense_8_layer_call_fn_711057O12/?,
%?"
 ?
inputs?????????@
? "??????????@?
C__inference_dense_9_layer_call_and_return_conditional_losses_711067\34/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? {
(__inference_dense_9_layer_call_fn_711076O34/?,
%?"
 ?
inputs?????????@
? "???????????
B__inference_lstm_5_layer_call_and_return_conditional_losses_709257?+,-O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "3?0
)?&
0???????????????????
? ?
B__inference_lstm_5_layer_call_and_return_conditional_losses_709430?+,-O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "3?0
)?&
0???????????????????
? ?
B__inference_lstm_5_layer_call_and_return_conditional_losses_709625r+,-??<
5?2
$?!
inputs?????????

 
p

 
? "*?'
 ?
0??????????
? ?
B__inference_lstm_5_layer_call_and_return_conditional_losses_709798r+,-??<
5?2
$?!
inputs?????????

 
p 

 
? "*?'
 ?
0??????????
? ?
'__inference_lstm_5_layer_call_fn_709441~+,-O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "&?#????????????????????
'__inference_lstm_5_layer_call_fn_709452~+,-O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "&?#????????????????????
'__inference_lstm_5_layer_call_fn_709809e+,-??<
5?2
$?!
inputs?????????

 
p

 
? "????????????
'__inference_lstm_5_layer_call_fn_709820e+,-??<
5?2
$?!
inputs?????????

 
p 

 
? "????????????
B__inference_lstm_6_layer_call_and_return_conditional_losses_709993?./0P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "2?/
(?%
0??????????????????@
? ?
B__inference_lstm_6_layer_call_and_return_conditional_losses_710166?./0P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "2?/
(?%
0??????????????????@
? ?
B__inference_lstm_6_layer_call_and_return_conditional_losses_710361r./0@?=
6?3
%?"
inputs??????????

 
p

 
? ")?&
?
0?????????@
? ?
B__inference_lstm_6_layer_call_and_return_conditional_losses_710534r./0@?=
6?3
%?"
inputs??????????

 
p 

 
? ")?&
?
0?????????@
? ?
'__inference_lstm_6_layer_call_fn_710177~./0P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "%?"??????????????????@?
'__inference_lstm_6_layer_call_fn_710188~./0P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "%?"??????????????????@?
'__inference_lstm_6_layer_call_fn_710545e./0@?=
6?3
%?"
inputs??????????

 
p

 
? "??????????@?
'__inference_lstm_6_layer_call_fn_710556e./0@?=
6?3
%?"
inputs??????????

 
p 

 
? "??????????@?
I__inference_lstm_cell_102_layer_call_and_return_conditional_losses_710835?+,-??
x?u
 ?
inputs?????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p
? "v?s
l?i
?
0/0??????????
G?D
 ?
0/1/0??????????
 ?
0/1/1??????????
? ?
I__inference_lstm_cell_102_layer_call_and_return_conditional_losses_710878?+,-??
x?u
 ?
inputs?????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p 
? "v?s
l?i
?
0/0??????????
G?D
 ?
0/1/0??????????
 ?
0/1/1??????????
? ?
.__inference_lstm_cell_102_layer_call_fn_710895?+,-??
x?u
 ?
inputs?????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p
? "f?c
?
0??????????
C?@
?
1/0??????????
?
1/1???????????
.__inference_lstm_cell_102_layer_call_fn_710912?+,-??
x?u
 ?
inputs?????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p 
? "f?c
?
0??????????
C?@
?
1/0??????????
?
1/1???????????
I__inference_lstm_cell_103_layer_call_and_return_conditional_losses_710955?./0??~
w?t
!?
inputs??????????
K?H
"?
states/0?????????@
"?
states/1?????????@
p
? "s?p
i?f
?
0/0?????????@
E?B
?
0/1/0?????????@
?
0/1/1?????????@
? ?
I__inference_lstm_cell_103_layer_call_and_return_conditional_losses_710998?./0??~
w?t
!?
inputs??????????
K?H
"?
states/0?????????@
"?
states/1?????????@
p 
? "s?p
i?f
?
0/0?????????@
E?B
?
0/1/0?????????@
?
0/1/1?????????@
? ?
.__inference_lstm_cell_103_layer_call_fn_711015?./0??~
w?t
!?
inputs??????????
K?H
"?
states/0?????????@
"?
states/1?????????@
p
? "c?`
?
0?????????@
A?>
?
1/0?????????@
?
1/1?????????@?
.__inference_lstm_cell_103_layer_call_fn_711032?./0??~
w?t
!?
inputs??????????
K?H
"?
states/0?????????@
"?
states/1?????????@
p 
? "c?`
?
0?????????@
A?>
?
1/0?????????@
?
1/1?????????@?
H__inference_sequential_3_layer_call_and_return_conditional_losses_708108z
+,-./01234A?>
7?4
*?'
lstm_5_input?????????
p

 
? ")?&
?
0?????????
? ?
H__inference_sequential_3_layer_call_and_return_conditional_losses_708140z
+,-./01234A?>
7?4
*?'
lstm_5_input?????????
p 

 
? ")?&
?
0?????????
? ?
H__inference_sequential_3_layer_call_and_return_conditional_losses_708662t
+,-./01234;?8
1?.
$?!
inputs?????????
p

 
? ")?&
?
0?????????
? ?
H__inference_sequential_3_layer_call_and_return_conditional_losses_709034t
+,-./01234;?8
1?.
$?!
inputs?????????
p 

 
? ")?&
?
0?????????
? ?
-__inference_sequential_3_layer_call_fn_708198m
+,-./01234A?>
7?4
*?'
lstm_5_input?????????
p

 
? "???????????
-__inference_sequential_3_layer_call_fn_708255m
+,-./01234A?>
7?4
*?'
lstm_5_input?????????
p 

 
? "???????????
-__inference_sequential_3_layer_call_fn_709059g
+,-./01234;?8
1?.
$?!
inputs?????????
p

 
? "???????????
-__inference_sequential_3_layer_call_fn_709084g
+,-./01234;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
$__inference_signature_wrapper_708290?
+,-./01234I?F
? 
??<
:
lstm_5_input*?'
lstm_5_input?????????"K?H
F
time_distributed_40?-
time_distributed_4??????????
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_710576l12;?8
1?.
$?!
inputs?????????@
p

 
? ")?&
?
0?????????@
? ?
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_710596l12;?8
1?.
$?!
inputs?????????@
p 

 
? ")?&
?
0?????????@
? ?
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_710641~12D?A
:?7
-?*
inputs??????????????????@
p

 
? "2?/
(?%
0??????????????????@
? ?
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_710668~12D?A
:?7
-?*
inputs??????????????????@
p 

 
? "2?/
(?%
0??????????????????@
? ?
3__inference_time_distributed_3_layer_call_fn_710605_12;?8
1?.
$?!
inputs?????????@
p

 
? "??????????@?
3__inference_time_distributed_3_layer_call_fn_710614_12;?8
1?.
$?!
inputs?????????@
p 

 
? "??????????@?
3__inference_time_distributed_3_layer_call_fn_710677q12D?A
:?7
-?*
inputs??????????????????@
p

 
? "%?"??????????????????@?
3__inference_time_distributed_3_layer_call_fn_710686q12D?A
:?7
-?*
inputs??????????????????@
p 

 
? "%?"??????????????????@?
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_710707~34D?A
:?7
-?*
inputs??????????????????@
p

 
? "2?/
(?%
0??????????????????
? ?
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_710728~34D?A
:?7
-?*
inputs??????????????????@
p 

 
? "2?/
(?%
0??????????????????
? ?
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_710760l34;?8
1?.
$?!
inputs?????????@
p

 
? ")?&
?
0?????????
? ?
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_710774l34;?8
1?.
$?!
inputs?????????@
p 

 
? ")?&
?
0?????????
? ?
3__inference_time_distributed_4_layer_call_fn_710737q34D?A
:?7
-?*
inputs??????????????????@
p

 
? "%?"???????????????????
3__inference_time_distributed_4_layer_call_fn_710746q34D?A
:?7
-?*
inputs??????????????????@
p 

 
? "%?"???????????????????
3__inference_time_distributed_4_layer_call_fn_710783_34;?8
1?.
$?!
inputs?????????@
p

 
? "???????????
3__inference_time_distributed_4_layer_call_fn_710792_34;?8
1?.
$?!
inputs?????????@
p 

 
? "??????????