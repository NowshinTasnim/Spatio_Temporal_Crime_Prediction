??/
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
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
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
?"serve*2.5.02v2.5.0-0-ga4dfb8d1a718??,
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
lstm_1/lstm_cell_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?**
shared_namelstm_1/lstm_cell_1/kernel
?
-lstm_1/lstm_cell_1/kernel/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_1/kernel*
_output_shapes
:	?*
dtype0
?
#lstm_1/lstm_cell_1/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*4
shared_name%#lstm_1/lstm_cell_1/recurrent_kernel
?
7lstm_1/lstm_cell_1/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_1/lstm_cell_1/recurrent_kernel* 
_output_shapes
:
??*
dtype0
?
lstm_1/lstm_cell_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_namelstm_1/lstm_cell_1/bias
?
+lstm_1/lstm_cell_1/bias/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_1/bias*
_output_shapes	
:?*
dtype0
?
lstm_2/lstm_cell_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??**
shared_namelstm_2/lstm_cell_2/kernel
?
-lstm_2/lstm_cell_2/kernel/Read/ReadVariableOpReadVariableOplstm_2/lstm_cell_2/kernel* 
_output_shapes
:
??*
dtype0
?
#lstm_2/lstm_cell_2/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*4
shared_name%#lstm_2/lstm_cell_2/recurrent_kernel
?
7lstm_2/lstm_cell_2/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_2/lstm_cell_2/recurrent_kernel*
_output_shapes
:	@?*
dtype0
?
lstm_2/lstm_cell_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_namelstm_2/lstm_cell_2/bias
?
+lstm_2/lstm_cell_2/bias/Read/ReadVariableOpReadVariableOplstm_2/lstm_cell_2/bias*
_output_shapes	
:?*
dtype0
?
time_distributed/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*(
shared_nametime_distributed/kernel
?
+time_distributed/kernel/Read/ReadVariableOpReadVariableOptime_distributed/kernel*
_output_shapes

:@@*
dtype0
?
time_distributed/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nametime_distributed/bias
{
)time_distributed/bias/Read/ReadVariableOpReadVariableOptime_distributed/bias*
_output_shapes
:@*
dtype0
?
time_distributed_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@**
shared_nametime_distributed_1/kernel
?
-time_distributed_1/kernel/Read/ReadVariableOpReadVariableOptime_distributed_1/kernel*
_output_shapes

:@*
dtype0
?
time_distributed_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nametime_distributed_1/bias

+time_distributed_1/bias/Read/ReadVariableOpReadVariableOptime_distributed_1/bias*
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
 Adam/lstm_1/lstm_cell_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*1
shared_name" Adam/lstm_1/lstm_cell_1/kernel/m
?
4Adam/lstm_1/lstm_cell_1/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_1/lstm_cell_1/kernel/m*
_output_shapes
:	?*
dtype0
?
*Adam/lstm_1/lstm_cell_1/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*;
shared_name,*Adam/lstm_1/lstm_cell_1/recurrent_kernel/m
?
>Adam/lstm_1/lstm_cell_1/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_1/lstm_cell_1/recurrent_kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/lstm_1/lstm_cell_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/lstm_1/lstm_cell_1/bias/m
?
2Adam/lstm_1/lstm_cell_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_1/lstm_cell_1/bias/m*
_output_shapes	
:?*
dtype0
?
 Adam/lstm_2/lstm_cell_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*1
shared_name" Adam/lstm_2/lstm_cell_2/kernel/m
?
4Adam/lstm_2/lstm_cell_2/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_2/lstm_cell_2/kernel/m* 
_output_shapes
:
??*
dtype0
?
*Adam/lstm_2/lstm_cell_2/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*;
shared_name,*Adam/lstm_2/lstm_cell_2/recurrent_kernel/m
?
>Adam/lstm_2/lstm_cell_2/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_2/lstm_cell_2/recurrent_kernel/m*
_output_shapes
:	@?*
dtype0
?
Adam/lstm_2/lstm_cell_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/lstm_2/lstm_cell_2/bias/m
?
2Adam/lstm_2/lstm_cell_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_2/lstm_cell_2/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/time_distributed/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*/
shared_name Adam/time_distributed/kernel/m
?
2Adam/time_distributed/kernel/m/Read/ReadVariableOpReadVariableOpAdam/time_distributed/kernel/m*
_output_shapes

:@@*
dtype0
?
Adam/time_distributed/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_nameAdam/time_distributed/bias/m
?
0Adam/time_distributed/bias/m/Read/ReadVariableOpReadVariableOpAdam/time_distributed/bias/m*
_output_shapes
:@*
dtype0
?
 Adam/time_distributed_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*1
shared_name" Adam/time_distributed_1/kernel/m
?
4Adam/time_distributed_1/kernel/m/Read/ReadVariableOpReadVariableOp Adam/time_distributed_1/kernel/m*
_output_shapes

:@*
dtype0
?
Adam/time_distributed_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/time_distributed_1/bias/m
?
2Adam/time_distributed_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/time_distributed_1/bias/m*
_output_shapes
:*
dtype0
?
 Adam/lstm_1/lstm_cell_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*1
shared_name" Adam/lstm_1/lstm_cell_1/kernel/v
?
4Adam/lstm_1/lstm_cell_1/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_1/lstm_cell_1/kernel/v*
_output_shapes
:	?*
dtype0
?
*Adam/lstm_1/lstm_cell_1/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*;
shared_name,*Adam/lstm_1/lstm_cell_1/recurrent_kernel/v
?
>Adam/lstm_1/lstm_cell_1/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_1/lstm_cell_1/recurrent_kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/lstm_1/lstm_cell_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/lstm_1/lstm_cell_1/bias/v
?
2Adam/lstm_1/lstm_cell_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_1/lstm_cell_1/bias/v*
_output_shapes	
:?*
dtype0
?
 Adam/lstm_2/lstm_cell_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*1
shared_name" Adam/lstm_2/lstm_cell_2/kernel/v
?
4Adam/lstm_2/lstm_cell_2/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_2/lstm_cell_2/kernel/v* 
_output_shapes
:
??*
dtype0
?
*Adam/lstm_2/lstm_cell_2/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*;
shared_name,*Adam/lstm_2/lstm_cell_2/recurrent_kernel/v
?
>Adam/lstm_2/lstm_cell_2/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_2/lstm_cell_2/recurrent_kernel/v*
_output_shapes
:	@?*
dtype0
?
Adam/lstm_2/lstm_cell_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/lstm_2/lstm_cell_2/bias/v
?
2Adam/lstm_2/lstm_cell_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_2/lstm_cell_2/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/time_distributed/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*/
shared_name Adam/time_distributed/kernel/v
?
2Adam/time_distributed/kernel/v/Read/ReadVariableOpReadVariableOpAdam/time_distributed/kernel/v*
_output_shapes

:@@*
dtype0
?
Adam/time_distributed/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_nameAdam/time_distributed/bias/v
?
0Adam/time_distributed/bias/v/Read/ReadVariableOpReadVariableOpAdam/time_distributed/bias/v*
_output_shapes
:@*
dtype0
?
 Adam/time_distributed_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*1
shared_name" Adam/time_distributed_1/kernel/v
?
4Adam/time_distributed_1/kernel/v/Read/ReadVariableOpReadVariableOp Adam/time_distributed_1/kernel/v*
_output_shapes

:@*
dtype0
?
Adam/time_distributed_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/time_distributed_1/bias/v
?
2Adam/time_distributed_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/time_distributed_1/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?F
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?E
value?EB?E B?E
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
trainable_variables
		variables

regularization_losses
	keras_api
?
cell

state_spec
#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api
?
cell

state_spec
#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api
?
	layer
#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api
?
	 layer
#!_self_saveable_object_factories
"trainable_variables
#	variables
$regularization_losses
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
?
trainable_variables
		variables
5metrics
6non_trainable_variables

7layers
8layer_regularization_losses

regularization_losses
9layer_metrics
?
:
state_size

+kernel
,recurrent_kernel
-bias
#;_self_saveable_object_factories
<trainable_variables
=	variables
>regularization_losses
?	keras_api
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
 
?
trainable_variables
	variables
@metrics
Anon_trainable_variables

Blayers

Cstates
Dlayer_regularization_losses
regularization_losses
Elayer_metrics
?
F
state_size

.kernel
/recurrent_kernel
0bias
#G_self_saveable_object_factories
Htrainable_variables
I	variables
Jregularization_losses
K	keras_api
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
 
?
trainable_variables
	variables
Lmetrics
Mnon_trainable_variables

Nlayers

Ostates
Player_regularization_losses
regularization_losses
Qlayer_metrics
?

1kernel
2bias
#R_self_saveable_object_factories
Strainable_variables
T	variables
Uregularization_losses
V	keras_api
 

10
21

10
21
 
?
trainable_variables
	variables
Wmetrics
Xnon_trainable_variables

Ylayers
Zlayer_regularization_losses
regularization_losses
[layer_metrics
?

3kernel
4bias
#\_self_saveable_object_factories
]trainable_variables
^	variables
_regularization_losses
`	keras_api
 

30
41

30
41
 
?
"trainable_variables
#	variables
ametrics
bnon_trainable_variables

clayers
dlayer_regularization_losses
$regularization_losses
elayer_metrics
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
_]
VARIABLE_VALUElstm_1/lstm_cell_1/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE#lstm_1/lstm_cell_1/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUElstm_1/lstm_cell_1/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_2/lstm_cell_2/kernel0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE#lstm_2/lstm_cell_2/recurrent_kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUElstm_2/lstm_cell_2/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEtime_distributed/kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEtime_distributed/bias0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEtime_distributed_1/kernel0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEtime_distributed_1/bias0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE

f0
g1
h2
 

0
1
2
3
 
 
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
 
?
<trainable_variables
=	variables
imetrics
jnon_trainable_variables

klayers
llayer_regularization_losses
>regularization_losses
mlayer_metrics
 
 

0
 
 
 
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
 
?
Htrainable_variables
I	variables
nmetrics
onon_trainable_variables

players
qlayer_regularization_losses
Jregularization_losses
rlayer_metrics
 
 

0
 
 
 
 

10
21

10
21
 
?
Strainable_variables
T	variables
smetrics
tnon_trainable_variables

ulayers
vlayer_regularization_losses
Uregularization_losses
wlayer_metrics
 
 

0
 
 
 

30
41

30
41
 
?
]trainable_variables
^	variables
xmetrics
ynon_trainable_variables

zlayers
{layer_regularization_losses
_regularization_losses
|layer_metrics
 
 

 0
 
 
5
	}total
	~count
	variables
?	keras_api
I

?total

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
}0
~1

	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
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
??
VARIABLE_VALUE Adam/lstm_1/lstm_cell_1/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/lstm_1/lstm_cell_1/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/lstm_1/lstm_cell_1/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/lstm_2/lstm_cell_2/kernel/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/lstm_2/lstm_cell_2/recurrent_kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/lstm_2/lstm_cell_2/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/time_distributed/kernel/mLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/time_distributed/bias/mLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/time_distributed_1/kernel/mLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/time_distributed_1/bias/mLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/lstm_1/lstm_cell_1/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/lstm_1/lstm_cell_1/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/lstm_1/lstm_cell_1/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/lstm_2/lstm_cell_2/kernel/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/lstm_2/lstm_cell_2/recurrent_kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/lstm_2/lstm_cell_2/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/time_distributed/kernel/vLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/time_distributed/bias/vLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/time_distributed_1/kernel/vLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/time_distributed_1/bias/vLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_1_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_1_inputlstm_1/lstm_cell_1/kernel#lstm_1/lstm_cell_1/recurrent_kernellstm_1/lstm_cell_1/biaslstm_2/lstm_cell_2/kernel#lstm_2/lstm_cell_2/recurrent_kernellstm_2/lstm_cell_2/biastime_distributed/kerneltime_distributed/biastime_distributed_1/kerneltime_distributed_1/bias*
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
GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_1072294
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp-lstm_1/lstm_cell_1/kernel/Read/ReadVariableOp7lstm_1/lstm_cell_1/recurrent_kernel/Read/ReadVariableOp+lstm_1/lstm_cell_1/bias/Read/ReadVariableOp-lstm_2/lstm_cell_2/kernel/Read/ReadVariableOp7lstm_2/lstm_cell_2/recurrent_kernel/Read/ReadVariableOp+lstm_2/lstm_cell_2/bias/Read/ReadVariableOp+time_distributed/kernel/Read/ReadVariableOp)time_distributed/bias/Read/ReadVariableOp-time_distributed_1/kernel/Read/ReadVariableOp+time_distributed_1/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp4Adam/lstm_1/lstm_cell_1/kernel/m/Read/ReadVariableOp>Adam/lstm_1/lstm_cell_1/recurrent_kernel/m/Read/ReadVariableOp2Adam/lstm_1/lstm_cell_1/bias/m/Read/ReadVariableOp4Adam/lstm_2/lstm_cell_2/kernel/m/Read/ReadVariableOp>Adam/lstm_2/lstm_cell_2/recurrent_kernel/m/Read/ReadVariableOp2Adam/lstm_2/lstm_cell_2/bias/m/Read/ReadVariableOp2Adam/time_distributed/kernel/m/Read/ReadVariableOp0Adam/time_distributed/bias/m/Read/ReadVariableOp4Adam/time_distributed_1/kernel/m/Read/ReadVariableOp2Adam/time_distributed_1/bias/m/Read/ReadVariableOp4Adam/lstm_1/lstm_cell_1/kernel/v/Read/ReadVariableOp>Adam/lstm_1/lstm_cell_1/recurrent_kernel/v/Read/ReadVariableOp2Adam/lstm_1/lstm_cell_1/bias/v/Read/ReadVariableOp4Adam/lstm_2/lstm_cell_2/kernel/v/Read/ReadVariableOp>Adam/lstm_2/lstm_cell_2/recurrent_kernel/v/Read/ReadVariableOp2Adam/lstm_2/lstm_cell_2/bias/v/Read/ReadVariableOp2Adam/time_distributed/kernel/v/Read/ReadVariableOp0Adam/time_distributed/bias/v/Read/ReadVariableOp4Adam/time_distributed_1/kernel/v/Read/ReadVariableOp2Adam/time_distributed_1/bias/v/Read/ReadVariableOpConst*6
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
GPU 2J 8? *)
f$R"
 __inference__traced_save_1075198
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_1/lstm_cell_1/kernel#lstm_1/lstm_cell_1/recurrent_kernellstm_1/lstm_cell_1/biaslstm_2/lstm_cell_2/kernel#lstm_2/lstm_cell_2/recurrent_kernellstm_2/lstm_cell_2/biastime_distributed/kerneltime_distributed/biastime_distributed_1/kerneltime_distributed_1/biastotalcounttotal_1count_1total_2count_2 Adam/lstm_1/lstm_cell_1/kernel/m*Adam/lstm_1/lstm_cell_1/recurrent_kernel/mAdam/lstm_1/lstm_cell_1/bias/m Adam/lstm_2/lstm_cell_2/kernel/m*Adam/lstm_2/lstm_cell_2/recurrent_kernel/mAdam/lstm_2/lstm_cell_2/bias/mAdam/time_distributed/kernel/mAdam/time_distributed/bias/m Adam/time_distributed_1/kernel/mAdam/time_distributed_1/bias/m Adam/lstm_1/lstm_cell_1/kernel/v*Adam/lstm_1/lstm_cell_1/recurrent_kernel/vAdam/lstm_1/lstm_cell_1/bias/v Adam/lstm_2/lstm_cell_2/kernel/v*Adam/lstm_2/lstm_cell_2/recurrent_kernel/vAdam/lstm_2/lstm_cell_2/bias/vAdam/time_distributed/kernel/vAdam/time_distributed/bias/v Adam/time_distributed_1/kernel/vAdam/time_distributed_1/bias/v*5
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
GPU 2J 8? *,
f'R%
#__inference__traced_restore_1075331??*
?

?
lstm_2_while_cond_1072537*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3,
(lstm_2_while_less_lstm_2_strided_slice_1C
?lstm_2_while_lstm_2_while_cond_1072537___redundant_placeholder0C
?lstm_2_while_lstm_2_while_cond_1072537___redundant_placeholder1C
?lstm_2_while_lstm_2_while_cond_1072537___redundant_placeholder2C
?lstm_2_while_lstm_2_while_cond_1072537___redundant_placeholder3
lstm_2_while_identity
?
lstm_2/while/LessLesslstm_2_while_placeholder(lstm_2_while_less_lstm_2_strided_slice_1*
T0*
_output_shapes
: 2
lstm_2/while/Lessr
lstm_2/while/IdentityIdentitylstm_2/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_2/while/Identity"7
lstm_2_while_identitylstm_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
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
?L
?
while_body_1073885
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_18_matmul_readvariableop_resource_0:
??H
5while_lstm_cell_18_matmul_1_readvariableop_resource_0:	@?C
4while_lstm_cell_18_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_18_matmul_readvariableop_resource:
??F
3while_lstm_cell_18_matmul_1_readvariableop_resource:	@?A
2while_lstm_cell_18_biasadd_readvariableop_resource:	???)while/lstm_cell_18/BiasAdd/ReadVariableOp?(while/lstm_cell_18/MatMul/ReadVariableOp?*while/lstm_cell_18/MatMul_1/ReadVariableOp?
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
(while/lstm_cell_18/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_18_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02*
(while/lstm_cell_18/MatMul/ReadVariableOp?
while/lstm_cell_18/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_18/MatMul?
*while/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_18_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02,
*while/lstm_cell_18/MatMul_1/ReadVariableOp?
while/lstm_cell_18/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_18/MatMul_1?
while/lstm_cell_18/addAddV2#while/lstm_cell_18/MatMul:product:0%while/lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_18/add?
)while/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_18_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_18/BiasAdd/ReadVariableOp?
while/lstm_cell_18/BiasAddBiasAddwhile/lstm_cell_18/add:z:01while/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_18/BiasAdd?
"while/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_18/split/split_dim?
while/lstm_cell_18/splitSplit+while/lstm_cell_18/split/split_dim:output:0#while/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
while/lstm_cell_18/split?
while/lstm_cell_18/SigmoidSigmoid!while/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Sigmoid?
while/lstm_cell_18/Sigmoid_1Sigmoid!while/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Sigmoid_1?
while/lstm_cell_18/mulMul while/lstm_cell_18/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/mul?
while/lstm_cell_18/Sigmoid_2Sigmoid!while/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Sigmoid_2?
while/lstm_cell_18/mul_1Mul!while/lstm_cell_18/split:output:2 while/lstm_cell_18/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/mul_1?
while/lstm_cell_18/IdentityIdentitywhile/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Identity?
while/lstm_cell_18/IdentityN	IdentityNwhile/lstm_cell_18/mul_1:z:0!while/lstm_cell_18/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1073927*:
_output_shapes(
&:?????????@:?????????@2
while/lstm_cell_18/IdentityN?
while/lstm_cell_18/mul_2Mulwhile/lstm_cell_18/Sigmoid:y:0%while/lstm_cell_18/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/mul_2?
while/lstm_cell_18/add_1AddV2while/lstm_cell_18/mul:z:0while/lstm_cell_18/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/add_1?
while/lstm_cell_18/Sigmoid_3Sigmoid!while/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Sigmoid_3?
while/lstm_cell_18/Sigmoid_4Sigmoidwhile/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Sigmoid_4?
while/lstm_cell_18/mul_3Mulwhile/lstm_cell_18/add_1:z:0 while/lstm_cell_18/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/mul_3?
while/lstm_cell_18/Identity_1Identitywhile/lstm_cell_18/mul_3:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Identity_1?
while/lstm_cell_18/IdentityN_1	IdentityNwhile/lstm_cell_18/mul_3:z:0while/lstm_cell_18/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1073936*:
_output_shapes(
&:?????????@:?????????@2 
while/lstm_cell_18/IdentityN_1?
while/lstm_cell_18/mul_4Mul while/lstm_cell_18/Sigmoid_3:y:0'while/lstm_cell_18/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/mul_4?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_18/mul_4:z:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_18/mul_4:z:0*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_18/add_1:z:0*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_18_biasadd_readvariableop_resource4while_lstm_cell_18_biasadd_readvariableop_resource_0"l
3while_lstm_cell_18_matmul_1_readvariableop_resource5while_lstm_cell_18_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_18_matmul_readvariableop_resource3while_lstm_cell_18_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2V
)while/lstm_cell_18/BiasAdd/ReadVariableOp)while/lstm_cell_18/BiasAdd/ReadVariableOp2T
(while/lstm_cell_18/MatMul/ReadVariableOp(while/lstm_cell_18/MatMul/ReadVariableOp2X
*while/lstm_cell_18/MatMul_1/ReadVariableOp*while/lstm_cell_18/MatMul_1/ReadVariableOp: 
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
?
I__inference_lstm_cell_17_layer_call_and_return_conditional_losses_1069856

inputs

states
states_11
matmul_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?

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
BiasAddd
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
2*-
_gradient_op_typeCustomGradient-1069837*<
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
2*-
_gradient_op_typeCustomGradient-1069846*<
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

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 20
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
?
?
while_cond_1073669
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1073669___redundant_placeholder05
1while_while_cond_1073669___redundant_placeholder15
1while_while_cond_1073669___redundant_placeholder25
1while_while_cond_1073669___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
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
?L
?
while_body_1071282
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_17_matmul_readvariableop_resource_0:	?I
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:
??C
4while_lstm_cell_17_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_17_matmul_readvariableop_resource:	?G
3while_lstm_cell_17_matmul_1_readvariableop_resource:
??A
2while_lstm_cell_17_biasadd_readvariableop_resource:	???)while/lstm_cell_17/BiasAdd/ReadVariableOp?(while/lstm_cell_17/MatMul/ReadVariableOp?*while/lstm_cell_17/MatMul_1/ReadVariableOp?
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
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/lstm_cell_17/MatMul/ReadVariableOp?
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/MatMul?
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02,
*while/lstm_cell_17/MatMul_1/ReadVariableOp?
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/MatMul_1?
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/add?
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_17/BiasAdd/ReadVariableOp?
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/BiasAdd?
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_17/split/split_dim?
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_17/split?
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Sigmoid?
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Sigmoid_1?
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/mul?
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Sigmoid_2?
while/lstm_cell_17/mul_1Mul!while/lstm_cell_17/split:output:2 while/lstm_cell_17/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/mul_1?
while/lstm_cell_17/IdentityIdentitywhile/lstm_cell_17/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Identity?
while/lstm_cell_17/IdentityN	IdentityNwhile/lstm_cell_17/mul_1:z:0!while/lstm_cell_17/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1071324*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell_17/IdentityN?
while/lstm_cell_17/mul_2Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/mul_2?
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/add_1?
while/lstm_cell_17/Sigmoid_3Sigmoid!while/lstm_cell_17/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Sigmoid_3?
while/lstm_cell_17/Sigmoid_4Sigmoidwhile/lstm_cell_17/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Sigmoid_4?
while/lstm_cell_17/mul_3Mulwhile/lstm_cell_17/add_1:z:0 while/lstm_cell_17/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/mul_3?
while/lstm_cell_17/Identity_1Identitywhile/lstm_cell_17/mul_3:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Identity_1?
while/lstm_cell_17/IdentityN_1	IdentityNwhile/lstm_cell_17/mul_3:z:0while/lstm_cell_17/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1071333*<
_output_shapes*
(:??????????:??????????2 
while/lstm_cell_17/IdentityN_1?
while/lstm_cell_17/mul_4Mul while/lstm_cell_17/Sigmoid_3:y:0'while/lstm_cell_17/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/mul_4?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_17/mul_4:z:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_17/mul_4:z:0*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_17_biasadd_readvariableop_resource4while_lstm_cell_17_biasadd_readvariableop_resource_0"l
3while_lstm_cell_17_matmul_1_readvariableop_resource5while_lstm_cell_17_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_17_matmul_readvariableop_resource3while_lstm_cell_17_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2V
)while/lstm_cell_17/BiasAdd/ReadVariableOp)while/lstm_cell_17/BiasAdd/ReadVariableOp2T
(while/lstm_cell_17/MatMul/ReadVariableOp(while/lstm_cell_17/MatMul/ReadVariableOp2X
*while/lstm_cell_17/MatMul_1/ReadVariableOp*while/lstm_cell_17/MatMul_1/ReadVariableOp: 
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
while_cond_1071793
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1071793___redundant_placeholder05
1while_while_cond_1071793___redundant_placeholder15
1while_while_cond_1071793___redundant_placeholder25
1while_while_cond_1071793___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
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
while_cond_1071986
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1071986___redundant_placeholder05
1while_while_cond_1071986___redundant_placeholder15
1while_while_cond_1071986___redundant_placeholder25
1while_while_cond_1071986___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
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
?E
?
C__inference_lstm_1_layer_call_and_return_conditional_losses_1069783

inputs'
lstm_cell_17_1069701:	?(
lstm_cell_17_1069703:
??#
lstm_cell_17_1069705:	?
identity??$lstm_cell_17/StatefulPartitionedCall?whileD
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
$lstm_cell_17/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_17_1069701lstm_cell_17_1069703lstm_cell_17_1069705*
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
I__inference_lstm_cell_17_layer_call_and_return_conditional_losses_10697002&
$lstm_cell_17/StatefulPartitionedCall?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_17_1069701lstm_cell_17_1069703lstm_cell_17_1069705*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1069714*
condR
while_cond_1069713*M
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
IdentityIdentitytranspose_1:y:0%^lstm_cell_17/StatefulPartitionedCall^while*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_17/StatefulPartitionedCall$lstm_cell_17/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_1070363
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1070363___redundant_placeholder05
1while_while_cond_1070363___redundant_placeholder15
1while_while_cond_1070363___redundant_placeholder25
1while_while_cond_1070363___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
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

?
lstm_1_while_cond_1072738*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3,
(lstm_1_while_less_lstm_1_strided_slice_1C
?lstm_1_while_lstm_1_while_cond_1072738___redundant_placeholder0C
?lstm_1_while_lstm_1_while_cond_1072738___redundant_placeholder1C
?lstm_1_while_lstm_1_while_cond_1072738___redundant_placeholder2C
?lstm_1_while_lstm_1_while_cond_1072738___redundant_placeholder3
lstm_1_while_identity
?
lstm_1/while/LessLesslstm_1_while_placeholder(lstm_1_while_less_lstm_1_strided_slice_1*
T0*
_output_shapes
: 2
lstm_1/while/Lessr
lstm_1/while/IdentityIdentitylstm_1/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_1/while/Identity"7
lstm_1_while_identitylstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
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
?c
?
C__inference_lstm_1_layer_call_and_return_conditional_losses_1072081

inputs>
+lstm_cell_17_matmul_readvariableop_resource:	?A
-lstm_cell_17_matmul_1_readvariableop_resource:
??;
,lstm_cell_17_biasadd_readvariableop_resource:	?
identity??#lstm_cell_17/BiasAdd/ReadVariableOp?"lstm_cell_17/MatMul/ReadVariableOp?$lstm_cell_17/MatMul_1/ReadVariableOp?whileD
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
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"lstm_cell_17/MatMul/ReadVariableOp?
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/MatMul?
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$lstm_cell_17/MatMul_1/ReadVariableOp?
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/MatMul_1?
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/add?
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_17/BiasAdd/ReadVariableOp?
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/BiasAdd~
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_17/split/split_dim?
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_17/split?
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Sigmoid?
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Sigmoid_1?
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/mul?
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Sigmoid_2?
lstm_cell_17/mul_1Mullstm_cell_17/split:output:2lstm_cell_17/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/mul_1?
lstm_cell_17/IdentityIdentitylstm_cell_17/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Identity?
lstm_cell_17/IdentityN	IdentityNlstm_cell_17/mul_1:z:0lstm_cell_17/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1071967*<
_output_shapes*
(:??????????:??????????2
lstm_cell_17/IdentityN?
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/mul_2?
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/add_1?
lstm_cell_17/Sigmoid_3Sigmoidlstm_cell_17/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Sigmoid_3?
lstm_cell_17/Sigmoid_4Sigmoidlstm_cell_17/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Sigmoid_4?
lstm_cell_17/mul_3Mullstm_cell_17/add_1:z:0lstm_cell_17/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/mul_3?
lstm_cell_17/Identity_1Identitylstm_cell_17/mul_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Identity_1?
lstm_cell_17/IdentityN_1	IdentityNlstm_cell_17/mul_3:z:0lstm_cell_17/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1071976*<
_output_shapes*
(:??????????:??????????2
lstm_cell_17/IdentityN_1?
lstm_cell_17/mul_4Mullstm_cell_17/Sigmoid_3:y:0!lstm_cell_17/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/mul_4?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1071987*
condR
while_cond_1071986*M
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
IdentityIdentitytranspose_1:y:0$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?L
?
while_body_1073670
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_17_matmul_readvariableop_resource_0:	?I
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:
??C
4while_lstm_cell_17_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_17_matmul_readvariableop_resource:	?G
3while_lstm_cell_17_matmul_1_readvariableop_resource:
??A
2while_lstm_cell_17_biasadd_readvariableop_resource:	???)while/lstm_cell_17/BiasAdd/ReadVariableOp?(while/lstm_cell_17/MatMul/ReadVariableOp?*while/lstm_cell_17/MatMul_1/ReadVariableOp?
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
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/lstm_cell_17/MatMul/ReadVariableOp?
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/MatMul?
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02,
*while/lstm_cell_17/MatMul_1/ReadVariableOp?
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/MatMul_1?
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/add?
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_17/BiasAdd/ReadVariableOp?
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/BiasAdd?
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_17/split/split_dim?
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_17/split?
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Sigmoid?
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Sigmoid_1?
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/mul?
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Sigmoid_2?
while/lstm_cell_17/mul_1Mul!while/lstm_cell_17/split:output:2 while/lstm_cell_17/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/mul_1?
while/lstm_cell_17/IdentityIdentitywhile/lstm_cell_17/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Identity?
while/lstm_cell_17/IdentityN	IdentityNwhile/lstm_cell_17/mul_1:z:0!while/lstm_cell_17/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1073712*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell_17/IdentityN?
while/lstm_cell_17/mul_2Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/mul_2?
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/add_1?
while/lstm_cell_17/Sigmoid_3Sigmoid!while/lstm_cell_17/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Sigmoid_3?
while/lstm_cell_17/Sigmoid_4Sigmoidwhile/lstm_cell_17/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Sigmoid_4?
while/lstm_cell_17/mul_3Mulwhile/lstm_cell_17/add_1:z:0 while/lstm_cell_17/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/mul_3?
while/lstm_cell_17/Identity_1Identitywhile/lstm_cell_17/mul_3:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Identity_1?
while/lstm_cell_17/IdentityN_1	IdentityNwhile/lstm_cell_17/mul_3:z:0while/lstm_cell_17/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1073721*<
_output_shapes*
(:??????????:??????????2 
while/lstm_cell_17/IdentityN_1?
while/lstm_cell_17/mul_4Mul while/lstm_cell_17/Sigmoid_3:y:0'while/lstm_cell_17/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/mul_4?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_17/mul_4:z:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_17/mul_4:z:0*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_17_biasadd_readvariableop_resource4while_lstm_cell_17_biasadd_readvariableop_resource_0"l
3while_lstm_cell_17_matmul_1_readvariableop_resource5while_lstm_cell_17_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_17_matmul_readvariableop_resource3while_lstm_cell_17_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2V
)while/lstm_cell_17/BiasAdd/ReadVariableOp)while/lstm_cell_17/BiasAdd/ReadVariableOp2T
(while/lstm_cell_17/MatMul/ReadVariableOp(while/lstm_cell_17/MatMul/ReadVariableOp2X
*while/lstm_cell_17/MatMul_1/ReadVariableOp*while/lstm_cell_17/MatMul_1/ReadVariableOp: 
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
?
M__inference_time_distributed_layer_call_and_return_conditional_losses_1071004

inputs!
dense_2_1070994:@@
dense_2_1070996:@
identity??dense_2/StatefulPartitionedCallD
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
dense_2/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_2_1070994dense_2_1070996*
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
GPU 2J 8? *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_10709452!
dense_2/StatefulPartitionedCallq
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
	Reshape_1Reshape(dense_2/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :??????????????????@2
	Reshape_1?
IdentityIdentityReshape_1:output:0 ^dense_2/StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????@: : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?L
?
while_body_1071794
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_18_matmul_readvariableop_resource_0:
??H
5while_lstm_cell_18_matmul_1_readvariableop_resource_0:	@?C
4while_lstm_cell_18_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_18_matmul_readvariableop_resource:
??F
3while_lstm_cell_18_matmul_1_readvariableop_resource:	@?A
2while_lstm_cell_18_biasadd_readvariableop_resource:	???)while/lstm_cell_18/BiasAdd/ReadVariableOp?(while/lstm_cell_18/MatMul/ReadVariableOp?*while/lstm_cell_18/MatMul_1/ReadVariableOp?
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
(while/lstm_cell_18/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_18_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02*
(while/lstm_cell_18/MatMul/ReadVariableOp?
while/lstm_cell_18/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_18/MatMul?
*while/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_18_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02,
*while/lstm_cell_18/MatMul_1/ReadVariableOp?
while/lstm_cell_18/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_18/MatMul_1?
while/lstm_cell_18/addAddV2#while/lstm_cell_18/MatMul:product:0%while/lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_18/add?
)while/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_18_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_18/BiasAdd/ReadVariableOp?
while/lstm_cell_18/BiasAddBiasAddwhile/lstm_cell_18/add:z:01while/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_18/BiasAdd?
"while/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_18/split/split_dim?
while/lstm_cell_18/splitSplit+while/lstm_cell_18/split/split_dim:output:0#while/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
while/lstm_cell_18/split?
while/lstm_cell_18/SigmoidSigmoid!while/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Sigmoid?
while/lstm_cell_18/Sigmoid_1Sigmoid!while/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Sigmoid_1?
while/lstm_cell_18/mulMul while/lstm_cell_18/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/mul?
while/lstm_cell_18/Sigmoid_2Sigmoid!while/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Sigmoid_2?
while/lstm_cell_18/mul_1Mul!while/lstm_cell_18/split:output:2 while/lstm_cell_18/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/mul_1?
while/lstm_cell_18/IdentityIdentitywhile/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Identity?
while/lstm_cell_18/IdentityN	IdentityNwhile/lstm_cell_18/mul_1:z:0!while/lstm_cell_18/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1071836*:
_output_shapes(
&:?????????@:?????????@2
while/lstm_cell_18/IdentityN?
while/lstm_cell_18/mul_2Mulwhile/lstm_cell_18/Sigmoid:y:0%while/lstm_cell_18/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/mul_2?
while/lstm_cell_18/add_1AddV2while/lstm_cell_18/mul:z:0while/lstm_cell_18/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/add_1?
while/lstm_cell_18/Sigmoid_3Sigmoid!while/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Sigmoid_3?
while/lstm_cell_18/Sigmoid_4Sigmoidwhile/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Sigmoid_4?
while/lstm_cell_18/mul_3Mulwhile/lstm_cell_18/add_1:z:0 while/lstm_cell_18/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/mul_3?
while/lstm_cell_18/Identity_1Identitywhile/lstm_cell_18/mul_3:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Identity_1?
while/lstm_cell_18/IdentityN_1	IdentityNwhile/lstm_cell_18/mul_3:z:0while/lstm_cell_18/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1071845*:
_output_shapes(
&:?????????@:?????????@2 
while/lstm_cell_18/IdentityN_1?
while/lstm_cell_18/mul_4Mul while/lstm_cell_18/Sigmoid_3:y:0'while/lstm_cell_18/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/mul_4?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_18/mul_4:z:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_18/mul_4:z:0*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_18/add_1:z:0*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_18_biasadd_readvariableop_resource4while_lstm_cell_18_biasadd_readvariableop_resource_0"l
3while_lstm_cell_18_matmul_1_readvariableop_resource5while_lstm_cell_18_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_18_matmul_readvariableop_resource3while_lstm_cell_18_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2V
)while/lstm_cell_18/BiasAdd/ReadVariableOp)while/lstm_cell_18/BiasAdd/ReadVariableOp2T
(while/lstm_cell_18/MatMul/ReadVariableOp(while/lstm_cell_18/MatMul/ReadVariableOp2X
*while/lstm_cell_18/MatMul_1/ReadVariableOp*while/lstm_cell_18/MatMul_1/ReadVariableOp: 
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
?
I__inference_lstm_cell_17_layer_call_and_return_conditional_losses_1074856

inputs
states_0
states_11
matmul_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?

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
BiasAddd
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
2*-
_gradient_op_typeCustomGradient-1074837*<
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
2*-
_gradient_op_typeCustomGradient-1074846*<
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

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 20
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
?
?
.__inference_lstm_cell_18_layer_call_fn_1074991

inputs
states_0
states_1
unknown:
??
	unknown_0:	@?
	unknown_1:	?
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
I__inference_lstm_cell_18_layer_call_and_return_conditional_losses_10703502
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

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:??????????:?????????@:?????????@: : : 22
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
?
?
while_cond_1074055
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1074055___redundant_placeholder05
1while_while_cond_1074055___redundant_placeholder15
1while_while_cond_1074055___redundant_placeholder25
1while_while_cond_1074055___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
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
?
&sequential_1_lstm_2_while_cond_1069490D
@sequential_1_lstm_2_while_sequential_1_lstm_2_while_loop_counterJ
Fsequential_1_lstm_2_while_sequential_1_lstm_2_while_maximum_iterations)
%sequential_1_lstm_2_while_placeholder+
'sequential_1_lstm_2_while_placeholder_1+
'sequential_1_lstm_2_while_placeholder_2+
'sequential_1_lstm_2_while_placeholder_3F
Bsequential_1_lstm_2_while_less_sequential_1_lstm_2_strided_slice_1]
Ysequential_1_lstm_2_while_sequential_1_lstm_2_while_cond_1069490___redundant_placeholder0]
Ysequential_1_lstm_2_while_sequential_1_lstm_2_while_cond_1069490___redundant_placeholder1]
Ysequential_1_lstm_2_while_sequential_1_lstm_2_while_cond_1069490___redundant_placeholder2]
Ysequential_1_lstm_2_while_sequential_1_lstm_2_while_cond_1069490___redundant_placeholder3&
"sequential_1_lstm_2_while_identity
?
sequential_1/lstm_2/while/LessLess%sequential_1_lstm_2_while_placeholderBsequential_1_lstm_2_while_less_sequential_1_lstm_2_strided_slice_1*
T0*
_output_shapes
: 2 
sequential_1/lstm_2/while/Less?
"sequential_1/lstm_2/while/IdentityIdentity"sequential_1/lstm_2/while/Less:z:0*
T0
*
_output_shapes
: 2$
"sequential_1/lstm_2/while/Identity"Q
"sequential_1_lstm_2_while_identity+sequential_1/lstm_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
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
?X
?

lstm_1_while_body_1072739*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3)
%lstm_1_while_lstm_1_strided_slice_1_0e
alstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_1_while_lstm_cell_17_matmul_readvariableop_resource_0:	?P
<lstm_1_while_lstm_cell_17_matmul_1_readvariableop_resource_0:
??J
;lstm_1_while_lstm_cell_17_biasadd_readvariableop_resource_0:	?
lstm_1_while_identity
lstm_1_while_identity_1
lstm_1_while_identity_2
lstm_1_while_identity_3
lstm_1_while_identity_4
lstm_1_while_identity_5'
#lstm_1_while_lstm_1_strided_slice_1c
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensorK
8lstm_1_while_lstm_cell_17_matmul_readvariableop_resource:	?N
:lstm_1_while_lstm_cell_17_matmul_1_readvariableop_resource:
??H
9lstm_1_while_lstm_cell_17_biasadd_readvariableop_resource:	???0lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOp?/lstm_1/while/lstm_cell_17/MatMul/ReadVariableOp?1lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOp?
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2@
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0lstm_1_while_placeholderGlstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype022
0lstm_1/while/TensorArrayV2Read/TensorListGetItem?
/lstm_1/while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp:lstm_1_while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype021
/lstm_1/while/lstm_cell_17/MatMul/ReadVariableOp?
 lstm_1/while/lstm_cell_17/MatMulMatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_1/while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 lstm_1/while/lstm_cell_17/MatMul?
1lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp<lstm_1_while_lstm_cell_17_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype023
1lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOp?
"lstm_1/while/lstm_cell_17/MatMul_1MatMullstm_1_while_placeholder_29lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2$
"lstm_1/while/lstm_cell_17/MatMul_1?
lstm_1/while/lstm_cell_17/addAddV2*lstm_1/while/lstm_cell_17/MatMul:product:0,lstm_1/while/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_1/while/lstm_cell_17/add?
0lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp;lstm_1_while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype022
0lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOp?
!lstm_1/while/lstm_cell_17/BiasAddBiasAdd!lstm_1/while/lstm_cell_17/add:z:08lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!lstm_1/while/lstm_cell_17/BiasAdd?
)lstm_1/while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2+
)lstm_1/while/lstm_cell_17/split/split_dim?
lstm_1/while/lstm_cell_17/splitSplit2lstm_1/while/lstm_cell_17/split/split_dim:output:0*lstm_1/while/lstm_cell_17/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2!
lstm_1/while/lstm_cell_17/split?
!lstm_1/while/lstm_cell_17/SigmoidSigmoid(lstm_1/while/lstm_cell_17/split:output:0*
T0*(
_output_shapes
:??????????2#
!lstm_1/while/lstm_cell_17/Sigmoid?
#lstm_1/while/lstm_cell_17/Sigmoid_1Sigmoid(lstm_1/while/lstm_cell_17/split:output:1*
T0*(
_output_shapes
:??????????2%
#lstm_1/while/lstm_cell_17/Sigmoid_1?
lstm_1/while/lstm_cell_17/mulMul'lstm_1/while/lstm_cell_17/Sigmoid_1:y:0lstm_1_while_placeholder_3*
T0*(
_output_shapes
:??????????2
lstm_1/while/lstm_cell_17/mul?
#lstm_1/while/lstm_cell_17/Sigmoid_2Sigmoid(lstm_1/while/lstm_cell_17/split:output:2*
T0*(
_output_shapes
:??????????2%
#lstm_1/while/lstm_cell_17/Sigmoid_2?
lstm_1/while/lstm_cell_17/mul_1Mul(lstm_1/while/lstm_cell_17/split:output:2'lstm_1/while/lstm_cell_17/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2!
lstm_1/while/lstm_cell_17/mul_1?
"lstm_1/while/lstm_cell_17/IdentityIdentity#lstm_1/while/lstm_cell_17/mul_1:z:0*
T0*(
_output_shapes
:??????????2$
"lstm_1/while/lstm_cell_17/Identity?
#lstm_1/while/lstm_cell_17/IdentityN	IdentityN#lstm_1/while/lstm_cell_17/mul_1:z:0(lstm_1/while/lstm_cell_17/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1072781*<
_output_shapes*
(:??????????:??????????2%
#lstm_1/while/lstm_cell_17/IdentityN?
lstm_1/while/lstm_cell_17/mul_2Mul%lstm_1/while/lstm_cell_17/Sigmoid:y:0,lstm_1/while/lstm_cell_17/IdentityN:output:0*
T0*(
_output_shapes
:??????????2!
lstm_1/while/lstm_cell_17/mul_2?
lstm_1/while/lstm_cell_17/add_1AddV2!lstm_1/while/lstm_cell_17/mul:z:0#lstm_1/while/lstm_cell_17/mul_2:z:0*
T0*(
_output_shapes
:??????????2!
lstm_1/while/lstm_cell_17/add_1?
#lstm_1/while/lstm_cell_17/Sigmoid_3Sigmoid(lstm_1/while/lstm_cell_17/split:output:3*
T0*(
_output_shapes
:??????????2%
#lstm_1/while/lstm_cell_17/Sigmoid_3?
#lstm_1/while/lstm_cell_17/Sigmoid_4Sigmoid#lstm_1/while/lstm_cell_17/add_1:z:0*
T0*(
_output_shapes
:??????????2%
#lstm_1/while/lstm_cell_17/Sigmoid_4?
lstm_1/while/lstm_cell_17/mul_3Mul#lstm_1/while/lstm_cell_17/add_1:z:0'lstm_1/while/lstm_cell_17/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2!
lstm_1/while/lstm_cell_17/mul_3?
$lstm_1/while/lstm_cell_17/Identity_1Identity#lstm_1/while/lstm_cell_17/mul_3:z:0*
T0*(
_output_shapes
:??????????2&
$lstm_1/while/lstm_cell_17/Identity_1?
%lstm_1/while/lstm_cell_17/IdentityN_1	IdentityN#lstm_1/while/lstm_cell_17/mul_3:z:0#lstm_1/while/lstm_cell_17/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1072790*<
_output_shapes*
(:??????????:??????????2'
%lstm_1/while/lstm_cell_17/IdentityN_1?
lstm_1/while/lstm_cell_17/mul_4Mul'lstm_1/while/lstm_cell_17/Sigmoid_3:y:0.lstm_1/while/lstm_cell_17/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2!
lstm_1/while/lstm_cell_17/mul_4?
1lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_1_while_placeholder_1lstm_1_while_placeholder#lstm_1/while/lstm_cell_17/mul_4:z:0*
_output_shapes
: *
element_dtype023
1lstm_1/while/TensorArrayV2Write/TensorListSetItemj
lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/while/add/y?
lstm_1/while/addAddV2lstm_1_while_placeholderlstm_1/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_1/while/addn
lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/while/add_1/y?
lstm_1/while/add_1AddV2&lstm_1_while_lstm_1_while_loop_counterlstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_1/while/add_1?
lstm_1/while/IdentityIdentitylstm_1/while/add_1:z:01^lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_17/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity?
lstm_1/while/Identity_1Identity,lstm_1_while_lstm_1_while_maximum_iterations1^lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_17/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_1?
lstm_1/while/Identity_2Identitylstm_1/while/add:z:01^lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_17/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_2?
lstm_1/while/Identity_3IdentityAlstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:01^lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_17/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_3?
lstm_1/while/Identity_4Identity#lstm_1/while/lstm_cell_17/mul_4:z:01^lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_17/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_1/while/Identity_4?
lstm_1/while/Identity_5Identity#lstm_1/while/lstm_cell_17/add_1:z:01^lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_17/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_1/while/Identity_5"7
lstm_1_while_identitylstm_1/while/Identity:output:0";
lstm_1_while_identity_1 lstm_1/while/Identity_1:output:0";
lstm_1_while_identity_2 lstm_1/while/Identity_2:output:0";
lstm_1_while_identity_3 lstm_1/while/Identity_3:output:0";
lstm_1_while_identity_4 lstm_1/while/Identity_4:output:0";
lstm_1_while_identity_5 lstm_1/while/Identity_5:output:0"L
#lstm_1_while_lstm_1_strided_slice_1%lstm_1_while_lstm_1_strided_slice_1_0"x
9lstm_1_while_lstm_cell_17_biasadd_readvariableop_resource;lstm_1_while_lstm_cell_17_biasadd_readvariableop_resource_0"z
:lstm_1_while_lstm_cell_17_matmul_1_readvariableop_resource<lstm_1_while_lstm_cell_17_matmul_1_readvariableop_resource_0"v
8lstm_1_while_lstm_cell_17_matmul_readvariableop_resource:lstm_1_while_lstm_cell_17_matmul_readvariableop_resource_0"?
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensoralstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2d
0lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOp0lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOp2b
/lstm_1/while/lstm_cell_17/MatMul/ReadVariableOp/lstm_1/while/lstm_cell_17/MatMul/ReadVariableOp2f
1lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOp1lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOp: 
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
?"
?
I__inference_lstm_cell_18_layer_call_and_return_conditional_losses_1074974

inputs
states_0
states_12
matmul_readvariableop_resource:
??3
 matmul_1_readvariableop_resource:	@?.
biasadd_readvariableop_resource:	?

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
BiasAddd
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
2*-
_gradient_op_typeCustomGradient-1074955*:
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
2*-
_gradient_op_typeCustomGradient-1074964*:
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

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:??????????:?????????@:?????????@: : : 20
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
?	
?
D__inference_dense_3_layer_call_and_return_conditional_losses_1071084

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
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
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?
#__inference__traced_restore_1075331
file_prefix$
assignvariableop_adam_iter:	 (
assignvariableop_1_adam_beta_1: (
assignvariableop_2_adam_beta_2: '
assignvariableop_3_adam_decay: /
%assignvariableop_4_adam_learning_rate: ?
,assignvariableop_5_lstm_1_lstm_cell_1_kernel:	?J
6assignvariableop_6_lstm_1_lstm_cell_1_recurrent_kernel:
??9
*assignvariableop_7_lstm_1_lstm_cell_1_bias:	?@
,assignvariableop_8_lstm_2_lstm_cell_2_kernel:
??I
6assignvariableop_9_lstm_2_lstm_cell_2_recurrent_kernel:	@?:
+assignvariableop_10_lstm_2_lstm_cell_2_bias:	?=
+assignvariableop_11_time_distributed_kernel:@@7
)assignvariableop_12_time_distributed_bias:@?
-assignvariableop_13_time_distributed_1_kernel:@9
+assignvariableop_14_time_distributed_1_bias:#
assignvariableop_15_total: #
assignvariableop_16_count: %
assignvariableop_17_total_1: %
assignvariableop_18_count_1: %
assignvariableop_19_total_2: %
assignvariableop_20_count_2: G
4assignvariableop_21_adam_lstm_1_lstm_cell_1_kernel_m:	?R
>assignvariableop_22_adam_lstm_1_lstm_cell_1_recurrent_kernel_m:
??A
2assignvariableop_23_adam_lstm_1_lstm_cell_1_bias_m:	?H
4assignvariableop_24_adam_lstm_2_lstm_cell_2_kernel_m:
??Q
>assignvariableop_25_adam_lstm_2_lstm_cell_2_recurrent_kernel_m:	@?A
2assignvariableop_26_adam_lstm_2_lstm_cell_2_bias_m:	?D
2assignvariableop_27_adam_time_distributed_kernel_m:@@>
0assignvariableop_28_adam_time_distributed_bias_m:@F
4assignvariableop_29_adam_time_distributed_1_kernel_m:@@
2assignvariableop_30_adam_time_distributed_1_bias_m:G
4assignvariableop_31_adam_lstm_1_lstm_cell_1_kernel_v:	?R
>assignvariableop_32_adam_lstm_1_lstm_cell_1_recurrent_kernel_v:
??A
2assignvariableop_33_adam_lstm_1_lstm_cell_1_bias_v:	?H
4assignvariableop_34_adam_lstm_2_lstm_cell_2_kernel_v:
??Q
>assignvariableop_35_adam_lstm_2_lstm_cell_2_recurrent_kernel_v:	@?A
2assignvariableop_36_adam_lstm_2_lstm_cell_2_bias_v:	?D
2assignvariableop_37_adam_time_distributed_kernel_v:@@>
0assignvariableop_38_adam_time_distributed_bias_v:@F
4assignvariableop_39_adam_time_distributed_1_kernel_v:@@
2assignvariableop_40_adam_time_distributed_1_bias_v:
identity_42??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:**
dtype0*?
value?B?*B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
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
AssignVariableOp_5AssignVariableOp,assignvariableop_5_lstm_1_lstm_cell_1_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp6assignvariableop_6_lstm_1_lstm_cell_1_recurrent_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp*assignvariableop_7_lstm_1_lstm_cell_1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp,assignvariableop_8_lstm_2_lstm_cell_2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp6assignvariableop_9_lstm_2_lstm_cell_2_recurrent_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp+assignvariableop_10_lstm_2_lstm_cell_2_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp+assignvariableop_11_time_distributed_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp)assignvariableop_12_time_distributed_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp-assignvariableop_13_time_distributed_1_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp+assignvariableop_14_time_distributed_1_biasIdentity_14:output:0"/device:CPU:0*
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
AssignVariableOp_21AssignVariableOp4assignvariableop_21_adam_lstm_1_lstm_cell_1_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp>assignvariableop_22_adam_lstm_1_lstm_cell_1_recurrent_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp2assignvariableop_23_adam_lstm_1_lstm_cell_1_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp4assignvariableop_24_adam_lstm_2_lstm_cell_2_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp>assignvariableop_25_adam_lstm_2_lstm_cell_2_recurrent_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp2assignvariableop_26_adam_lstm_2_lstm_cell_2_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp2assignvariableop_27_adam_time_distributed_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp0assignvariableop_28_adam_time_distributed_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp4assignvariableop_29_adam_time_distributed_1_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp2assignvariableop_30_adam_time_distributed_1_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp4assignvariableop_31_adam_lstm_1_lstm_cell_1_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp>assignvariableop_32_adam_lstm_1_lstm_cell_1_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp2assignvariableop_33_adam_lstm_1_lstm_cell_1_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp4assignvariableop_34_adam_lstm_2_lstm_cell_2_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp>assignvariableop_35_adam_lstm_2_lstm_cell_2_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp2assignvariableop_36_adam_lstm_2_lstm_cell_2_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp2assignvariableop_37_adam_time_distributed_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp0assignvariableop_38_adam_time_distributed_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp4assignvariableop_39_adam_time_distributed_1_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp2assignvariableop_40_adam_time_distributed_1_bias_vIdentity_40:output:0"/device:CPU:0*
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
identity_42Identity_42:output:0*g
_input_shapesV
T: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
?
?
(__inference_lstm_1_layer_call_fn_1073775
inputs_0
unknown:	?
	unknown_0:
??
	unknown_1:	?
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
GPU 2J 8? *L
fGRE
C__inference_lstm_1_layer_call_and_return_conditional_losses_10697832
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?c
?
C__inference_lstm_2_layer_call_and_return_conditional_losses_1074492

inputs?
+lstm_cell_18_matmul_readvariableop_resource:
??@
-lstm_cell_18_matmul_1_readvariableop_resource:	@?;
,lstm_cell_18_biasadd_readvariableop_resource:	?
identity??#lstm_cell_18/BiasAdd/ReadVariableOp?"lstm_cell_18/MatMul/ReadVariableOp?$lstm_cell_18/MatMul_1/ReadVariableOp?whileD
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
"lstm_cell_18/MatMul/ReadVariableOpReadVariableOp+lstm_cell_18_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02$
"lstm_cell_18/MatMul/ReadVariableOp?
lstm_cell_18/MatMulMatMulstrided_slice_2:output:0*lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_18/MatMul?
$lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_18_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02&
$lstm_cell_18/MatMul_1/ReadVariableOp?
lstm_cell_18/MatMul_1MatMulzeros:output:0,lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_18/MatMul_1?
lstm_cell_18/addAddV2lstm_cell_18/MatMul:product:0lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_18/add?
#lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_18_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_18/BiasAdd/ReadVariableOp?
lstm_cell_18/BiasAddBiasAddlstm_cell_18/add:z:0+lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_18/BiasAdd~
lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_18/split/split_dim?
lstm_cell_18/splitSplit%lstm_cell_18/split/split_dim:output:0lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
lstm_cell_18/split?
lstm_cell_18/SigmoidSigmoidlstm_cell_18/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Sigmoid?
lstm_cell_18/Sigmoid_1Sigmoidlstm_cell_18/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Sigmoid_1?
lstm_cell_18/mulMullstm_cell_18/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/mul?
lstm_cell_18/Sigmoid_2Sigmoidlstm_cell_18/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Sigmoid_2?
lstm_cell_18/mul_1Mullstm_cell_18/split:output:2lstm_cell_18/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/mul_1?
lstm_cell_18/IdentityIdentitylstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Identity?
lstm_cell_18/IdentityN	IdentityNlstm_cell_18/mul_1:z:0lstm_cell_18/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1074378*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_18/IdentityN?
lstm_cell_18/mul_2Mullstm_cell_18/Sigmoid:y:0lstm_cell_18/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/mul_2?
lstm_cell_18/add_1AddV2lstm_cell_18/mul:z:0lstm_cell_18/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/add_1?
lstm_cell_18/Sigmoid_3Sigmoidlstm_cell_18/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Sigmoid_3?
lstm_cell_18/Sigmoid_4Sigmoidlstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Sigmoid_4?
lstm_cell_18/mul_3Mullstm_cell_18/add_1:z:0lstm_cell_18/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/mul_3?
lstm_cell_18/Identity_1Identitylstm_cell_18/mul_3:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Identity_1?
lstm_cell_18/IdentityN_1	IdentityNlstm_cell_18/mul_3:z:0lstm_cell_18/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1074387*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_18/IdentityN_1?
lstm_cell_18/mul_4Mullstm_cell_18/Sigmoid_3:y:0!lstm_cell_18/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/mul_4?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_18_matmul_readvariableop_resource-lstm_cell_18_matmul_1_readvariableop_resource,lstm_cell_18_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1074398*
condR
while_cond_1074397*K
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
IdentityIdentitytranspose_1:y:0$^lstm_cell_18/BiasAdd/ReadVariableOp#^lstm_cell_18/MatMul/ReadVariableOp%^lstm_cell_18/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2J
#lstm_cell_18/BiasAdd/ReadVariableOp#lstm_cell_18/BiasAdd/ReadVariableOp2H
"lstm_cell_18/MatMul/ReadVariableOp"lstm_cell_18/MatMul/ReadVariableOp2L
$lstm_cell_18/MatMul_1/ReadVariableOp$lstm_cell_18/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?c
?
C__inference_lstm_1_layer_call_and_return_conditional_losses_1071376

inputs>
+lstm_cell_17_matmul_readvariableop_resource:	?A
-lstm_cell_17_matmul_1_readvariableop_resource:
??;
,lstm_cell_17_biasadd_readvariableop_resource:	?
identity??#lstm_cell_17/BiasAdd/ReadVariableOp?"lstm_cell_17/MatMul/ReadVariableOp?$lstm_cell_17/MatMul_1/ReadVariableOp?whileD
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
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"lstm_cell_17/MatMul/ReadVariableOp?
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/MatMul?
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$lstm_cell_17/MatMul_1/ReadVariableOp?
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/MatMul_1?
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/add?
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_17/BiasAdd/ReadVariableOp?
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/BiasAdd~
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_17/split/split_dim?
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_17/split?
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Sigmoid?
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Sigmoid_1?
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/mul?
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Sigmoid_2?
lstm_cell_17/mul_1Mullstm_cell_17/split:output:2lstm_cell_17/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/mul_1?
lstm_cell_17/IdentityIdentitylstm_cell_17/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Identity?
lstm_cell_17/IdentityN	IdentityNlstm_cell_17/mul_1:z:0lstm_cell_17/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1071262*<
_output_shapes*
(:??????????:??????????2
lstm_cell_17/IdentityN?
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/mul_2?
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/add_1?
lstm_cell_17/Sigmoid_3Sigmoidlstm_cell_17/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Sigmoid_3?
lstm_cell_17/Sigmoid_4Sigmoidlstm_cell_17/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Sigmoid_4?
lstm_cell_17/mul_3Mullstm_cell_17/add_1:z:0lstm_cell_17/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/mul_3?
lstm_cell_17/Identity_1Identitylstm_cell_17/mul_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Identity_1?
lstm_cell_17/IdentityN_1	IdentityNlstm_cell_17/mul_3:z:0lstm_cell_17/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1071271*<
_output_shapes*
(:??????????:??????????2
lstm_cell_17/IdentityN_1?
lstm_cell_17/mul_4Mullstm_cell_17/Sigmoid_3:y:0!lstm_cell_17/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/mul_4?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1071282*
condR
while_cond_1071281*M
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
IdentityIdentitytranspose_1:y:0$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
D__inference_dense_2_layer_call_and_return_conditional_losses_1070945

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@

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
2*-
_gradient_op_typeCustomGradient-1070938*:
_output_shapes(
&:?????????@:?????????@2
	IdentityN?

Identity_1IdentityIdentityN:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
while_cond_1074226
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1074226___redundant_placeholder05
1while_while_cond_1074226___redundant_placeholder15
1while_while_cond_1074226___redundant_placeholder25
1while_while_cond_1074226___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
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
?
?
M__inference_time_distributed_layer_call_and_return_conditional_losses_1074590

inputs8
&dense_2_matmul_readvariableop_resource:@@5
'dense_2_biasadd_readvariableop_resource:@
identity??dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOpD
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
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_2/BiasAddy
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_2/Sigmoid?
dense_2/mulMuldense_2/BiasAdd:output:0dense_2/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
dense_2/muls
dense_2/IdentityIdentitydense_2/mul:z:0*
T0*'
_output_shapes
:?????????@2
dense_2/Identity?
dense_2/IdentityN	IdentityNdense_2/mul:z:0dense_2/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1074579*:
_output_shapes(
&:?????????@:?????????@2
dense_2/IdentityNq
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
	Reshape_1Reshapedense_2/IdentityN:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :??????????????????@2
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????@: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?
?
.__inference_lstm_cell_18_layer_call_fn_1075008

inputs
states_0
states_1
unknown:
??
	unknown_0:	@?
	unknown_1:	?
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
I__inference_lstm_cell_18_layer_call_and_return_conditional_losses_10705062
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

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:??????????:?????????@:?????????@: : : 22
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
?c
?
C__inference_lstm_2_layer_call_and_return_conditional_losses_1074321

inputs?
+lstm_cell_18_matmul_readvariableop_resource:
??@
-lstm_cell_18_matmul_1_readvariableop_resource:	@?;
,lstm_cell_18_biasadd_readvariableop_resource:	?
identity??#lstm_cell_18/BiasAdd/ReadVariableOp?"lstm_cell_18/MatMul/ReadVariableOp?$lstm_cell_18/MatMul_1/ReadVariableOp?whileD
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
"lstm_cell_18/MatMul/ReadVariableOpReadVariableOp+lstm_cell_18_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02$
"lstm_cell_18/MatMul/ReadVariableOp?
lstm_cell_18/MatMulMatMulstrided_slice_2:output:0*lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_18/MatMul?
$lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_18_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02&
$lstm_cell_18/MatMul_1/ReadVariableOp?
lstm_cell_18/MatMul_1MatMulzeros:output:0,lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_18/MatMul_1?
lstm_cell_18/addAddV2lstm_cell_18/MatMul:product:0lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_18/add?
#lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_18_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_18/BiasAdd/ReadVariableOp?
lstm_cell_18/BiasAddBiasAddlstm_cell_18/add:z:0+lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_18/BiasAdd~
lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_18/split/split_dim?
lstm_cell_18/splitSplit%lstm_cell_18/split/split_dim:output:0lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
lstm_cell_18/split?
lstm_cell_18/SigmoidSigmoidlstm_cell_18/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Sigmoid?
lstm_cell_18/Sigmoid_1Sigmoidlstm_cell_18/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Sigmoid_1?
lstm_cell_18/mulMullstm_cell_18/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/mul?
lstm_cell_18/Sigmoid_2Sigmoidlstm_cell_18/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Sigmoid_2?
lstm_cell_18/mul_1Mullstm_cell_18/split:output:2lstm_cell_18/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/mul_1?
lstm_cell_18/IdentityIdentitylstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Identity?
lstm_cell_18/IdentityN	IdentityNlstm_cell_18/mul_1:z:0lstm_cell_18/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1074207*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_18/IdentityN?
lstm_cell_18/mul_2Mullstm_cell_18/Sigmoid:y:0lstm_cell_18/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/mul_2?
lstm_cell_18/add_1AddV2lstm_cell_18/mul:z:0lstm_cell_18/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/add_1?
lstm_cell_18/Sigmoid_3Sigmoidlstm_cell_18/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Sigmoid_3?
lstm_cell_18/Sigmoid_4Sigmoidlstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Sigmoid_4?
lstm_cell_18/mul_3Mullstm_cell_18/add_1:z:0lstm_cell_18/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/mul_3?
lstm_cell_18/Identity_1Identitylstm_cell_18/mul_3:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Identity_1?
lstm_cell_18/IdentityN_1	IdentityNlstm_cell_18/mul_3:z:0lstm_cell_18/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1074216*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_18/IdentityN_1?
lstm_cell_18/mul_4Mullstm_cell_18/Sigmoid_3:y:0!lstm_cell_18/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/mul_4?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_18_matmul_readvariableop_resource-lstm_cell_18_matmul_1_readvariableop_resource,lstm_cell_18_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1074227*
condR
while_cond_1074226*K
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
IdentityIdentitytranspose_1:y:0$^lstm_cell_18/BiasAdd/ReadVariableOp#^lstm_cell_18/MatMul/ReadVariableOp%^lstm_cell_18/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2J
#lstm_cell_18/BiasAdd/ReadVariableOp#lstm_cell_18/BiasAdd/ReadVariableOp2H
"lstm_cell_18/MatMul/ReadVariableOp"lstm_cell_18/MatMul/ReadVariableOp2L
$lstm_cell_18/MatMul_1/ReadVariableOp$lstm_cell_18/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?L
?
while_body_1074056
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_18_matmul_readvariableop_resource_0:
??H
5while_lstm_cell_18_matmul_1_readvariableop_resource_0:	@?C
4while_lstm_cell_18_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_18_matmul_readvariableop_resource:
??F
3while_lstm_cell_18_matmul_1_readvariableop_resource:	@?A
2while_lstm_cell_18_biasadd_readvariableop_resource:	???)while/lstm_cell_18/BiasAdd/ReadVariableOp?(while/lstm_cell_18/MatMul/ReadVariableOp?*while/lstm_cell_18/MatMul_1/ReadVariableOp?
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
(while/lstm_cell_18/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_18_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02*
(while/lstm_cell_18/MatMul/ReadVariableOp?
while/lstm_cell_18/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_18/MatMul?
*while/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_18_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02,
*while/lstm_cell_18/MatMul_1/ReadVariableOp?
while/lstm_cell_18/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_18/MatMul_1?
while/lstm_cell_18/addAddV2#while/lstm_cell_18/MatMul:product:0%while/lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_18/add?
)while/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_18_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_18/BiasAdd/ReadVariableOp?
while/lstm_cell_18/BiasAddBiasAddwhile/lstm_cell_18/add:z:01while/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_18/BiasAdd?
"while/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_18/split/split_dim?
while/lstm_cell_18/splitSplit+while/lstm_cell_18/split/split_dim:output:0#while/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
while/lstm_cell_18/split?
while/lstm_cell_18/SigmoidSigmoid!while/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Sigmoid?
while/lstm_cell_18/Sigmoid_1Sigmoid!while/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Sigmoid_1?
while/lstm_cell_18/mulMul while/lstm_cell_18/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/mul?
while/lstm_cell_18/Sigmoid_2Sigmoid!while/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Sigmoid_2?
while/lstm_cell_18/mul_1Mul!while/lstm_cell_18/split:output:2 while/lstm_cell_18/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/mul_1?
while/lstm_cell_18/IdentityIdentitywhile/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Identity?
while/lstm_cell_18/IdentityN	IdentityNwhile/lstm_cell_18/mul_1:z:0!while/lstm_cell_18/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1074098*:
_output_shapes(
&:?????????@:?????????@2
while/lstm_cell_18/IdentityN?
while/lstm_cell_18/mul_2Mulwhile/lstm_cell_18/Sigmoid:y:0%while/lstm_cell_18/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/mul_2?
while/lstm_cell_18/add_1AddV2while/lstm_cell_18/mul:z:0while/lstm_cell_18/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/add_1?
while/lstm_cell_18/Sigmoid_3Sigmoid!while/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Sigmoid_3?
while/lstm_cell_18/Sigmoid_4Sigmoidwhile/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Sigmoid_4?
while/lstm_cell_18/mul_3Mulwhile/lstm_cell_18/add_1:z:0 while/lstm_cell_18/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/mul_3?
while/lstm_cell_18/Identity_1Identitywhile/lstm_cell_18/mul_3:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Identity_1?
while/lstm_cell_18/IdentityN_1	IdentityNwhile/lstm_cell_18/mul_3:z:0while/lstm_cell_18/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1074107*:
_output_shapes(
&:?????????@:?????????@2 
while/lstm_cell_18/IdentityN_1?
while/lstm_cell_18/mul_4Mul while/lstm_cell_18/Sigmoid_3:y:0'while/lstm_cell_18/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/mul_4?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_18/mul_4:z:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_18/mul_4:z:0*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_18/add_1:z:0*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_18_biasadd_readvariableop_resource4while_lstm_cell_18_biasadd_readvariableop_resource_0"l
3while_lstm_cell_18_matmul_1_readvariableop_resource5while_lstm_cell_18_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_18_matmul_readvariableop_resource3while_lstm_cell_18_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2V
)while/lstm_cell_18/BiasAdd/ReadVariableOp)while/lstm_cell_18/BiasAdd/ReadVariableOp2T
(while/lstm_cell_18/MatMul/ReadVariableOp(while/lstm_cell_18/MatMul/ReadVariableOp2X
*while/lstm_cell_18/MatMul_1/ReadVariableOp*while/lstm_cell_18/MatMul_1/ReadVariableOp: 
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
?
(__inference_lstm_1_layer_call_fn_1073786
inputs_0
unknown:	?
	unknown_0:
??
	unknown_1:	?
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
GPU 2J 8? *L
fGRE
C__inference_lstm_1_layer_call_and_return_conditional_losses_10700032
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?L
?
while_body_1073157
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_17_matmul_readvariableop_resource_0:	?I
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:
??C
4while_lstm_cell_17_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_17_matmul_readvariableop_resource:	?G
3while_lstm_cell_17_matmul_1_readvariableop_resource:
??A
2while_lstm_cell_17_biasadd_readvariableop_resource:	???)while/lstm_cell_17/BiasAdd/ReadVariableOp?(while/lstm_cell_17/MatMul/ReadVariableOp?*while/lstm_cell_17/MatMul_1/ReadVariableOp?
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
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/lstm_cell_17/MatMul/ReadVariableOp?
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/MatMul?
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02,
*while/lstm_cell_17/MatMul_1/ReadVariableOp?
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/MatMul_1?
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/add?
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_17/BiasAdd/ReadVariableOp?
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/BiasAdd?
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_17/split/split_dim?
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_17/split?
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Sigmoid?
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Sigmoid_1?
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/mul?
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Sigmoid_2?
while/lstm_cell_17/mul_1Mul!while/lstm_cell_17/split:output:2 while/lstm_cell_17/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/mul_1?
while/lstm_cell_17/IdentityIdentitywhile/lstm_cell_17/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Identity?
while/lstm_cell_17/IdentityN	IdentityNwhile/lstm_cell_17/mul_1:z:0!while/lstm_cell_17/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1073199*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell_17/IdentityN?
while/lstm_cell_17/mul_2Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/mul_2?
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/add_1?
while/lstm_cell_17/Sigmoid_3Sigmoid!while/lstm_cell_17/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Sigmoid_3?
while/lstm_cell_17/Sigmoid_4Sigmoidwhile/lstm_cell_17/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Sigmoid_4?
while/lstm_cell_17/mul_3Mulwhile/lstm_cell_17/add_1:z:0 while/lstm_cell_17/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/mul_3?
while/lstm_cell_17/Identity_1Identitywhile/lstm_cell_17/mul_3:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Identity_1?
while/lstm_cell_17/IdentityN_1	IdentityNwhile/lstm_cell_17/mul_3:z:0while/lstm_cell_17/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1073208*<
_output_shapes*
(:??????????:??????????2 
while/lstm_cell_17/IdentityN_1?
while/lstm_cell_17/mul_4Mul while/lstm_cell_17/Sigmoid_3:y:0'while/lstm_cell_17/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/mul_4?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_17/mul_4:z:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_17/mul_4:z:0*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_17_biasadd_readvariableop_resource4while_lstm_cell_17_biasadd_readvariableop_resource_0"l
3while_lstm_cell_17_matmul_1_readvariableop_resource5while_lstm_cell_17_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_17_matmul_readvariableop_resource3while_lstm_cell_17_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2V
)while/lstm_cell_17/BiasAdd/ReadVariableOp)while/lstm_cell_17/BiasAdd/ReadVariableOp2T
(while/lstm_cell_17/MatMul/ReadVariableOp(while/lstm_cell_17/MatMul/ReadVariableOp2X
*while/lstm_cell_17/MatMul_1/ReadVariableOp*while/lstm_cell_17/MatMul_1/ReadVariableOp: 
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
?
?
)__inference_dense_2_layer_call_fn_1075033

inputs
unknown:@@
	unknown_0:@
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
GPU 2J 8? *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_10709452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?d
?
C__inference_lstm_1_layer_call_and_return_conditional_losses_1073422
inputs_0>
+lstm_cell_17_matmul_readvariableop_resource:	?A
-lstm_cell_17_matmul_1_readvariableop_resource:
??;
,lstm_cell_17_biasadd_readvariableop_resource:	?
identity??#lstm_cell_17/BiasAdd/ReadVariableOp?"lstm_cell_17/MatMul/ReadVariableOp?$lstm_cell_17/MatMul_1/ReadVariableOp?whileF
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
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"lstm_cell_17/MatMul/ReadVariableOp?
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/MatMul?
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$lstm_cell_17/MatMul_1/ReadVariableOp?
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/MatMul_1?
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/add?
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_17/BiasAdd/ReadVariableOp?
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/BiasAdd~
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_17/split/split_dim?
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_17/split?
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Sigmoid?
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Sigmoid_1?
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/mul?
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Sigmoid_2?
lstm_cell_17/mul_1Mullstm_cell_17/split:output:2lstm_cell_17/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/mul_1?
lstm_cell_17/IdentityIdentitylstm_cell_17/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Identity?
lstm_cell_17/IdentityN	IdentityNlstm_cell_17/mul_1:z:0lstm_cell_17/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1073308*<
_output_shapes*
(:??????????:??????????2
lstm_cell_17/IdentityN?
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/mul_2?
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/add_1?
lstm_cell_17/Sigmoid_3Sigmoidlstm_cell_17/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Sigmoid_3?
lstm_cell_17/Sigmoid_4Sigmoidlstm_cell_17/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Sigmoid_4?
lstm_cell_17/mul_3Mullstm_cell_17/add_1:z:0lstm_cell_17/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/mul_3?
lstm_cell_17/Identity_1Identitylstm_cell_17/mul_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Identity_1?
lstm_cell_17/IdentityN_1	IdentityNlstm_cell_17/mul_3:z:0lstm_cell_17/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1073317*<
_output_shapes*
(:??????????:??????????2
lstm_cell_17/IdentityN_1?
lstm_cell_17/mul_4Mullstm_cell_17/Sigmoid_3:y:0!lstm_cell_17/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/mul_4?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1073328*
condR
while_cond_1073327*M
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
IdentityIdentitytranspose_1:y:0$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?X
?

lstm_2_while_body_1072538*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3)
%lstm_2_while_lstm_2_strided_slice_1_0e
alstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0N
:lstm_2_while_lstm_cell_18_matmul_readvariableop_resource_0:
??O
<lstm_2_while_lstm_cell_18_matmul_1_readvariableop_resource_0:	@?J
;lstm_2_while_lstm_cell_18_biasadd_readvariableop_resource_0:	?
lstm_2_while_identity
lstm_2_while_identity_1
lstm_2_while_identity_2
lstm_2_while_identity_3
lstm_2_while_identity_4
lstm_2_while_identity_5'
#lstm_2_while_lstm_2_strided_slice_1c
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensorL
8lstm_2_while_lstm_cell_18_matmul_readvariableop_resource:
??M
:lstm_2_while_lstm_cell_18_matmul_1_readvariableop_resource:	@?H
9lstm_2_while_lstm_cell_18_biasadd_readvariableop_resource:	???0lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOp?/lstm_2/while/lstm_cell_18/MatMul/ReadVariableOp?1lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOp?
>lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2@
>lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0lstm_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0lstm_2_while_placeholderGlstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype022
0lstm_2/while/TensorArrayV2Read/TensorListGetItem?
/lstm_2/while/lstm_cell_18/MatMul/ReadVariableOpReadVariableOp:lstm_2_while_lstm_cell_18_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype021
/lstm_2/while/lstm_cell_18/MatMul/ReadVariableOp?
 lstm_2/while/lstm_cell_18/MatMulMatMul7lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_2/while/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 lstm_2/while/lstm_cell_18/MatMul?
1lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp<lstm_2_while_lstm_cell_18_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype023
1lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOp?
"lstm_2/while/lstm_cell_18/MatMul_1MatMullstm_2_while_placeholder_29lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2$
"lstm_2/while/lstm_cell_18/MatMul_1?
lstm_2/while/lstm_cell_18/addAddV2*lstm_2/while/lstm_cell_18/MatMul:product:0,lstm_2/while/lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_2/while/lstm_cell_18/add?
0lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp;lstm_2_while_lstm_cell_18_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype022
0lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOp?
!lstm_2/while/lstm_cell_18/BiasAddBiasAdd!lstm_2/while/lstm_cell_18/add:z:08lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!lstm_2/while/lstm_cell_18/BiasAdd?
)lstm_2/while/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2+
)lstm_2/while/lstm_cell_18/split/split_dim?
lstm_2/while/lstm_cell_18/splitSplit2lstm_2/while/lstm_cell_18/split/split_dim:output:0*lstm_2/while/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2!
lstm_2/while/lstm_cell_18/split?
!lstm_2/while/lstm_cell_18/SigmoidSigmoid(lstm_2/while/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:?????????@2#
!lstm_2/while/lstm_cell_18/Sigmoid?
#lstm_2/while/lstm_cell_18/Sigmoid_1Sigmoid(lstm_2/while/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:?????????@2%
#lstm_2/while/lstm_cell_18/Sigmoid_1?
lstm_2/while/lstm_cell_18/mulMul'lstm_2/while/lstm_cell_18/Sigmoid_1:y:0lstm_2_while_placeholder_3*
T0*'
_output_shapes
:?????????@2
lstm_2/while/lstm_cell_18/mul?
#lstm_2/while/lstm_cell_18/Sigmoid_2Sigmoid(lstm_2/while/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:?????????@2%
#lstm_2/while/lstm_cell_18/Sigmoid_2?
lstm_2/while/lstm_cell_18/mul_1Mul(lstm_2/while/lstm_cell_18/split:output:2'lstm_2/while/lstm_cell_18/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2!
lstm_2/while/lstm_cell_18/mul_1?
"lstm_2/while/lstm_cell_18/IdentityIdentity#lstm_2/while/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:?????????@2$
"lstm_2/while/lstm_cell_18/Identity?
#lstm_2/while/lstm_cell_18/IdentityN	IdentityN#lstm_2/while/lstm_cell_18/mul_1:z:0(lstm_2/while/lstm_cell_18/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1072580*:
_output_shapes(
&:?????????@:?????????@2%
#lstm_2/while/lstm_cell_18/IdentityN?
lstm_2/while/lstm_cell_18/mul_2Mul%lstm_2/while/lstm_cell_18/Sigmoid:y:0,lstm_2/while/lstm_cell_18/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2!
lstm_2/while/lstm_cell_18/mul_2?
lstm_2/while/lstm_cell_18/add_1AddV2!lstm_2/while/lstm_cell_18/mul:z:0#lstm_2/while/lstm_cell_18/mul_2:z:0*
T0*'
_output_shapes
:?????????@2!
lstm_2/while/lstm_cell_18/add_1?
#lstm_2/while/lstm_cell_18/Sigmoid_3Sigmoid(lstm_2/while/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:?????????@2%
#lstm_2/while/lstm_cell_18/Sigmoid_3?
#lstm_2/while/lstm_cell_18/Sigmoid_4Sigmoid#lstm_2/while/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:?????????@2%
#lstm_2/while/lstm_cell_18/Sigmoid_4?
lstm_2/while/lstm_cell_18/mul_3Mul#lstm_2/while/lstm_cell_18/add_1:z:0'lstm_2/while/lstm_cell_18/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2!
lstm_2/while/lstm_cell_18/mul_3?
$lstm_2/while/lstm_cell_18/Identity_1Identity#lstm_2/while/lstm_cell_18/mul_3:z:0*
T0*'
_output_shapes
:?????????@2&
$lstm_2/while/lstm_cell_18/Identity_1?
%lstm_2/while/lstm_cell_18/IdentityN_1	IdentityN#lstm_2/while/lstm_cell_18/mul_3:z:0#lstm_2/while/lstm_cell_18/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1072589*:
_output_shapes(
&:?????????@:?????????@2'
%lstm_2/while/lstm_cell_18/IdentityN_1?
lstm_2/while/lstm_cell_18/mul_4Mul'lstm_2/while/lstm_cell_18/Sigmoid_3:y:0.lstm_2/while/lstm_cell_18/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2!
lstm_2/while/lstm_cell_18/mul_4?
1lstm_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_2_while_placeholder_1lstm_2_while_placeholder#lstm_2/while/lstm_cell_18/mul_4:z:0*
_output_shapes
: *
element_dtype023
1lstm_2/while/TensorArrayV2Write/TensorListSetItemj
lstm_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/while/add/y?
lstm_2/while/addAddV2lstm_2_while_placeholderlstm_2/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_2/while/addn
lstm_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/while/add_1/y?
lstm_2/while/add_1AddV2&lstm_2_while_lstm_2_while_loop_counterlstm_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_2/while/add_1?
lstm_2/while/IdentityIdentitylstm_2/while/add_1:z:01^lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_18/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity?
lstm_2/while/Identity_1Identity,lstm_2_while_lstm_2_while_maximum_iterations1^lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_18/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_1?
lstm_2/while/Identity_2Identitylstm_2/while/add:z:01^lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_18/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_2?
lstm_2/while/Identity_3IdentityAlstm_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:01^lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_18/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_3?
lstm_2/while/Identity_4Identity#lstm_2/while/lstm_cell_18/mul_4:z:01^lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_18/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
lstm_2/while/Identity_4?
lstm_2/while/Identity_5Identity#lstm_2/while/lstm_cell_18/add_1:z:01^lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_18/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
lstm_2/while/Identity_5"7
lstm_2_while_identitylstm_2/while/Identity:output:0";
lstm_2_while_identity_1 lstm_2/while/Identity_1:output:0";
lstm_2_while_identity_2 lstm_2/while/Identity_2:output:0";
lstm_2_while_identity_3 lstm_2/while/Identity_3:output:0";
lstm_2_while_identity_4 lstm_2/while/Identity_4:output:0";
lstm_2_while_identity_5 lstm_2/while/Identity_5:output:0"L
#lstm_2_while_lstm_2_strided_slice_1%lstm_2_while_lstm_2_strided_slice_1_0"x
9lstm_2_while_lstm_cell_18_biasadd_readvariableop_resource;lstm_2_while_lstm_cell_18_biasadd_readvariableop_resource_0"z
:lstm_2_while_lstm_cell_18_matmul_1_readvariableop_resource<lstm_2_while_lstm_cell_18_matmul_1_readvariableop_resource_0"v
8lstm_2_while_lstm_cell_18_matmul_readvariableop_resource:lstm_2_while_lstm_cell_18_matmul_readvariableop_resource_0"?
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensoralstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2d
0lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOp0lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOp2b
/lstm_2/while/lstm_cell_18/MatMul/ReadVariableOp/lstm_2/while/lstm_cell_18/MatMul/ReadVariableOp2f
1lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOp1lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOp: 
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
?c
?
C__inference_lstm_2_layer_call_and_return_conditional_losses_1074150
inputs_0?
+lstm_cell_18_matmul_readvariableop_resource:
??@
-lstm_cell_18_matmul_1_readvariableop_resource:	@?;
,lstm_cell_18_biasadd_readvariableop_resource:	?
identity??#lstm_cell_18/BiasAdd/ReadVariableOp?"lstm_cell_18/MatMul/ReadVariableOp?$lstm_cell_18/MatMul_1/ReadVariableOp?whileF
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
"lstm_cell_18/MatMul/ReadVariableOpReadVariableOp+lstm_cell_18_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02$
"lstm_cell_18/MatMul/ReadVariableOp?
lstm_cell_18/MatMulMatMulstrided_slice_2:output:0*lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_18/MatMul?
$lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_18_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02&
$lstm_cell_18/MatMul_1/ReadVariableOp?
lstm_cell_18/MatMul_1MatMulzeros:output:0,lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_18/MatMul_1?
lstm_cell_18/addAddV2lstm_cell_18/MatMul:product:0lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_18/add?
#lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_18_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_18/BiasAdd/ReadVariableOp?
lstm_cell_18/BiasAddBiasAddlstm_cell_18/add:z:0+lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_18/BiasAdd~
lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_18/split/split_dim?
lstm_cell_18/splitSplit%lstm_cell_18/split/split_dim:output:0lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
lstm_cell_18/split?
lstm_cell_18/SigmoidSigmoidlstm_cell_18/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Sigmoid?
lstm_cell_18/Sigmoid_1Sigmoidlstm_cell_18/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Sigmoid_1?
lstm_cell_18/mulMullstm_cell_18/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/mul?
lstm_cell_18/Sigmoid_2Sigmoidlstm_cell_18/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Sigmoid_2?
lstm_cell_18/mul_1Mullstm_cell_18/split:output:2lstm_cell_18/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/mul_1?
lstm_cell_18/IdentityIdentitylstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Identity?
lstm_cell_18/IdentityN	IdentityNlstm_cell_18/mul_1:z:0lstm_cell_18/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1074036*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_18/IdentityN?
lstm_cell_18/mul_2Mullstm_cell_18/Sigmoid:y:0lstm_cell_18/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/mul_2?
lstm_cell_18/add_1AddV2lstm_cell_18/mul:z:0lstm_cell_18/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/add_1?
lstm_cell_18/Sigmoid_3Sigmoidlstm_cell_18/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Sigmoid_3?
lstm_cell_18/Sigmoid_4Sigmoidlstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Sigmoid_4?
lstm_cell_18/mul_3Mullstm_cell_18/add_1:z:0lstm_cell_18/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/mul_3?
lstm_cell_18/Identity_1Identitylstm_cell_18/mul_3:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Identity_1?
lstm_cell_18/IdentityN_1	IdentityNlstm_cell_18/mul_3:z:0lstm_cell_18/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1074045*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_18/IdentityN_1?
lstm_cell_18/mul_4Mullstm_cell_18/Sigmoid_3:y:0!lstm_cell_18/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/mul_4?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_18_matmul_readvariableop_resource-lstm_cell_18_matmul_1_readvariableop_resource,lstm_cell_18_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1074056*
condR
while_cond_1074055*K
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
IdentityIdentitytranspose_1:y:0$^lstm_cell_18/BiasAdd/ReadVariableOp#^lstm_cell_18/MatMul/ReadVariableOp%^lstm_cell_18/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :??????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2J
#lstm_cell_18/BiasAdd/ReadVariableOp#lstm_cell_18/BiasAdd/ReadVariableOp2H
"lstm_cell_18/MatMul/ReadVariableOp"lstm_cell_18/MatMul/ReadVariableOp2L
$lstm_cell_18/MatMul_1/ReadVariableOp$lstm_cell_18/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?L
?
while_body_1073328
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_17_matmul_readvariableop_resource_0:	?I
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:
??C
4while_lstm_cell_17_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_17_matmul_readvariableop_resource:	?G
3while_lstm_cell_17_matmul_1_readvariableop_resource:
??A
2while_lstm_cell_17_biasadd_readvariableop_resource:	???)while/lstm_cell_17/BiasAdd/ReadVariableOp?(while/lstm_cell_17/MatMul/ReadVariableOp?*while/lstm_cell_17/MatMul_1/ReadVariableOp?
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
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/lstm_cell_17/MatMul/ReadVariableOp?
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/MatMul?
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02,
*while/lstm_cell_17/MatMul_1/ReadVariableOp?
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/MatMul_1?
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/add?
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_17/BiasAdd/ReadVariableOp?
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/BiasAdd?
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_17/split/split_dim?
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_17/split?
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Sigmoid?
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Sigmoid_1?
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/mul?
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Sigmoid_2?
while/lstm_cell_17/mul_1Mul!while/lstm_cell_17/split:output:2 while/lstm_cell_17/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/mul_1?
while/lstm_cell_17/IdentityIdentitywhile/lstm_cell_17/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Identity?
while/lstm_cell_17/IdentityN	IdentityNwhile/lstm_cell_17/mul_1:z:0!while/lstm_cell_17/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1073370*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell_17/IdentityN?
while/lstm_cell_17/mul_2Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/mul_2?
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/add_1?
while/lstm_cell_17/Sigmoid_3Sigmoid!while/lstm_cell_17/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Sigmoid_3?
while/lstm_cell_17/Sigmoid_4Sigmoidwhile/lstm_cell_17/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Sigmoid_4?
while/lstm_cell_17/mul_3Mulwhile/lstm_cell_17/add_1:z:0 while/lstm_cell_17/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/mul_3?
while/lstm_cell_17/Identity_1Identitywhile/lstm_cell_17/mul_3:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Identity_1?
while/lstm_cell_17/IdentityN_1	IdentityNwhile/lstm_cell_17/mul_3:z:0while/lstm_cell_17/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1073379*<
_output_shapes*
(:??????????:??????????2 
while/lstm_cell_17/IdentityN_1?
while/lstm_cell_17/mul_4Mul while/lstm_cell_17/Sigmoid_3:y:0'while/lstm_cell_17/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/mul_4?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_17/mul_4:z:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_17/mul_4:z:0*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_17_biasadd_readvariableop_resource4while_lstm_cell_17_biasadd_readvariableop_resource_0"l
3while_lstm_cell_17_matmul_1_readvariableop_resource5while_lstm_cell_17_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_17_matmul_readvariableop_resource3while_lstm_cell_17_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2V
)while/lstm_cell_17/BiasAdd/ReadVariableOp)while/lstm_cell_17/BiasAdd/ReadVariableOp2T
(while/lstm_cell_17/MatMul/ReadVariableOp(while/lstm_cell_17/MatMul/ReadVariableOp2X
*while/lstm_cell_17/MatMul_1/ReadVariableOp*while/lstm_cell_17/MatMul_1/ReadVariableOp: 
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
.__inference_sequential_1_layer_call_fn_1073080

inputs
unknown:	?
	unknown_0:
??
	unknown_1:	?
	unknown_2:
??
	unknown_3:	@?
	unknown_4:	?
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:
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
GPU 2J 8? *R
fMRK
I__inference_sequential_1_layer_call_and_return_conditional_losses_10721492
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?&
?
while_body_1070584
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_18_1070608_0:
??/
while_lstm_cell_18_1070610_0:	@?+
while_lstm_cell_18_1070612_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_18_1070608:
??-
while_lstm_cell_18_1070610:	@?)
while_lstm_cell_18_1070612:	???*while/lstm_cell_18/StatefulPartitionedCall?
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
*while/lstm_cell_18/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_18_1070608_0while_lstm_cell_18_1070610_0while_lstm_cell_18_1070612_0*
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
I__inference_lstm_cell_18_layer_call_and_return_conditional_losses_10705062,
*while/lstm_cell_18/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_18/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_18/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_18/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_18/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_18/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity3while/lstm_cell_18/StatefulPartitionedCall:output:1+^while/lstm_cell_18/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_18/StatefulPartitionedCall:output:2+^while/lstm_cell_18/StatefulPartitionedCall*
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
while_lstm_cell_18_1070608while_lstm_cell_18_1070608_0":
while_lstm_cell_18_1070610while_lstm_cell_18_1070610_0":
while_lstm_cell_18_1070612while_lstm_cell_18_1070612_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2X
*while/lstm_cell_18/StatefulPartitionedCall*while/lstm_cell_18/StatefulPartitionedCall: 
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
4__inference_time_distributed_1_layer_call_fn_1074772

inputs
unknown:@
	unknown_0:
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
GPU 2J 8? *X
fSRQ
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_10716592
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
I__inference_sequential_1_layer_call_and_return_conditional_losses_1071611

inputs!
lstm_1_1071377:	?"
lstm_1_1071379:
??
lstm_1_1071381:	?"
lstm_2_1071555:
??!
lstm_2_1071557:	@?
lstm_2_1071559:	?*
time_distributed_1071582:@@&
time_distributed_1071584:@,
time_distributed_1_1071603:@(
time_distributed_1_1071605:
identity??lstm_1/StatefulPartitionedCall?lstm_2/StatefulPartitionedCall?(time_distributed/StatefulPartitionedCall?*time_distributed_1/StatefulPartitionedCall?
lstm_1/StatefulPartitionedCallStatefulPartitionedCallinputslstm_1_1071377lstm_1_1071379lstm_1_1071381*
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
GPU 2J 8? *L
fGRE
C__inference_lstm_1_layer_call_and_return_conditional_losses_10713762 
lstm_1/StatefulPartitionedCall?
lstm_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0lstm_2_1071555lstm_2_1071557lstm_2_1071559*
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
GPU 2J 8? *L
fGRE
C__inference_lstm_2_layer_call_and_return_conditional_losses_10715542 
lstm_2/StatefulPartitionedCall?
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0time_distributed_1071582time_distributed_1071584*
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
GPU 2J 8? *V
fQRO
M__inference_time_distributed_layer_call_and_return_conditional_losses_10715812*
(time_distributed/StatefulPartitionedCall?
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2 
time_distributed/Reshape/shape?
time_distributed/ReshapeReshape'lstm_2/StatefulPartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????@2
time_distributed/Reshape?
*time_distributed_1/StatefulPartitionedCallStatefulPartitionedCall1time_distributed/StatefulPartitionedCall:output:0time_distributed_1_1071603time_distributed_1_1071605*
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
GPU 2J 8? *X
fSRQ
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_10716022,
*time_distributed_1/StatefulPartitionedCall?
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2"
 time_distributed_1/Reshape/shape?
time_distributed_1/ReshapeReshape1time_distributed/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????@2
time_distributed_1/Reshape?
IdentityIdentity3time_distributed_1/StatefulPartitionedCall:output:0^lstm_1/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_1/StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : 2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_1/StatefulPartitionedCall*time_distributed_1/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
4__inference_time_distributed_1_layer_call_fn_1074754

inputs
unknown:@
	unknown_0:
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
GPU 2J 8? *X
fSRQ
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_10711432
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?
?
2__inference_time_distributed_layer_call_fn_1074666

inputs
unknown:@@
	unknown_0:@
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
GPU 2J 8? *V
fQRO
M__inference_time_distributed_layer_call_and_return_conditional_losses_10716972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?"
?
I__inference_lstm_cell_18_layer_call_and_return_conditional_losses_1074932

inputs
states_0
states_12
matmul_readvariableop_resource:
??3
 matmul_1_readvariableop_resource:	@?.
biasadd_readvariableop_resource:	?

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
BiasAddd
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
2*-
_gradient_op_typeCustomGradient-1074913*:
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
2*-
_gradient_op_typeCustomGradient-1074922*:
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

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:??????????:?????????@:?????????@: : : 20
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
?
?
(__inference_lstm_2_layer_call_fn_1074503
inputs_0
unknown:
??
	unknown_0:	@?
	unknown_1:	?
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
GPU 2J 8? *L
fGRE
C__inference_lstm_2_layer_call_and_return_conditional_losses_10704332
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
M__inference_time_distributed_layer_call_and_return_conditional_losses_1074563

inputs8
&dense_2_matmul_readvariableop_resource:@@5
'dense_2_biasadd_readvariableop_resource:@
identity??dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOpD
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
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_2/BiasAddy
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_2/Sigmoid?
dense_2/mulMuldense_2/BiasAdd:output:0dense_2/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
dense_2/muls
dense_2/IdentityIdentitydense_2/mul:z:0*
T0*'
_output_shapes
:?????????@2
dense_2/Identity?
dense_2/IdentityN	IdentityNdense_2/mul:z:0dense_2/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1074552*:
_output_shapes(
&:?????????@:?????????@2
dense_2/IdentityNq
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
	Reshape_1Reshapedense_2/IdentityN:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :??????????????????@2
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????@: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?
?
4__inference_time_distributed_1_layer_call_fn_1074763

inputs
unknown:@
	unknown_0:
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
GPU 2J 8? *X
fSRQ
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_10716022
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
D__inference_dense_3_layer_call_and_return_conditional_losses_1075043

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
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
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_1071095

inputs!
dense_3_1071085:@
dense_3_1071087:
identity??dense_3/StatefulPartitionedCallD
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
dense_3/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_3_1071085dense_3_1071087*
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
GPU 2J 8? *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_10710842!
dense_3/StatefulPartitionedCallq
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
	Reshape_1Reshape(dense_3/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :??????????????????2
	Reshape_1?
IdentityIdentityReshape_1:output:0 ^dense_3/StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????@: : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_1069615
lstm_1_inputR
?sequential_1_lstm_1_lstm_cell_17_matmul_readvariableop_resource:	?U
Asequential_1_lstm_1_lstm_cell_17_matmul_1_readvariableop_resource:
??O
@sequential_1_lstm_1_lstm_cell_17_biasadd_readvariableop_resource:	?S
?sequential_1_lstm_2_lstm_cell_18_matmul_readvariableop_resource:
??T
Asequential_1_lstm_2_lstm_cell_18_matmul_1_readvariableop_resource:	@?O
@sequential_1_lstm_2_lstm_cell_18_biasadd_readvariableop_resource:	?V
Dsequential_1_time_distributed_dense_2_matmul_readvariableop_resource:@@S
Esequential_1_time_distributed_dense_2_biasadd_readvariableop_resource:@X
Fsequential_1_time_distributed_1_dense_3_matmul_readvariableop_resource:@U
Gsequential_1_time_distributed_1_dense_3_biasadd_readvariableop_resource:
identity??7sequential_1/lstm_1/lstm_cell_17/BiasAdd/ReadVariableOp?6sequential_1/lstm_1/lstm_cell_17/MatMul/ReadVariableOp?8sequential_1/lstm_1/lstm_cell_17/MatMul_1/ReadVariableOp?sequential_1/lstm_1/while?7sequential_1/lstm_2/lstm_cell_18/BiasAdd/ReadVariableOp?6sequential_1/lstm_2/lstm_cell_18/MatMul/ReadVariableOp?8sequential_1/lstm_2/lstm_cell_18/MatMul_1/ReadVariableOp?sequential_1/lstm_2/while?<sequential_1/time_distributed/dense_2/BiasAdd/ReadVariableOp?;sequential_1/time_distributed/dense_2/MatMul/ReadVariableOp?>sequential_1/time_distributed_1/dense_3/BiasAdd/ReadVariableOp?=sequential_1/time_distributed_1/dense_3/MatMul/ReadVariableOpr
sequential_1/lstm_1/ShapeShapelstm_1_input*
T0*
_output_shapes
:2
sequential_1/lstm_1/Shape?
'sequential_1/lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_1/lstm_1/strided_slice/stack?
)sequential_1/lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_1/lstm_1/strided_slice/stack_1?
)sequential_1/lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_1/lstm_1/strided_slice/stack_2?
!sequential_1/lstm_1/strided_sliceStridedSlice"sequential_1/lstm_1/Shape:output:00sequential_1/lstm_1/strided_slice/stack:output:02sequential_1/lstm_1/strided_slice/stack_1:output:02sequential_1/lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_1/lstm_1/strided_slice?
sequential_1/lstm_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2!
sequential_1/lstm_1/zeros/mul/y?
sequential_1/lstm_1/zeros/mulMul*sequential_1/lstm_1/strided_slice:output:0(sequential_1/lstm_1/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_1/lstm_1/zeros/mul?
 sequential_1/lstm_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2"
 sequential_1/lstm_1/zeros/Less/y?
sequential_1/lstm_1/zeros/LessLess!sequential_1/lstm_1/zeros/mul:z:0)sequential_1/lstm_1/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
sequential_1/lstm_1/zeros/Less?
"sequential_1/lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2$
"sequential_1/lstm_1/zeros/packed/1?
 sequential_1/lstm_1/zeros/packedPack*sequential_1/lstm_1/strided_slice:output:0+sequential_1/lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_1/lstm_1/zeros/packed?
sequential_1/lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_1/lstm_1/zeros/Const?
sequential_1/lstm_1/zerosFill)sequential_1/lstm_1/zeros/packed:output:0(sequential_1/lstm_1/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
sequential_1/lstm_1/zeros?
!sequential_1/lstm_1/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2#
!sequential_1/lstm_1/zeros_1/mul/y?
sequential_1/lstm_1/zeros_1/mulMul*sequential_1/lstm_1/strided_slice:output:0*sequential_1/lstm_1/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_1/lstm_1/zeros_1/mul?
"sequential_1/lstm_1/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"sequential_1/lstm_1/zeros_1/Less/y?
 sequential_1/lstm_1/zeros_1/LessLess#sequential_1/lstm_1/zeros_1/mul:z:0+sequential_1/lstm_1/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_1/lstm_1/zeros_1/Less?
$sequential_1/lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2&
$sequential_1/lstm_1/zeros_1/packed/1?
"sequential_1/lstm_1/zeros_1/packedPack*sequential_1/lstm_1/strided_slice:output:0-sequential_1/lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_1/lstm_1/zeros_1/packed?
!sequential_1/lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_1/lstm_1/zeros_1/Const?
sequential_1/lstm_1/zeros_1Fill+sequential_1/lstm_1/zeros_1/packed:output:0*sequential_1/lstm_1/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
sequential_1/lstm_1/zeros_1?
"sequential_1/lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"sequential_1/lstm_1/transpose/perm?
sequential_1/lstm_1/transpose	Transposelstm_1_input+sequential_1/lstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
sequential_1/lstm_1/transpose?
sequential_1/lstm_1/Shape_1Shape!sequential_1/lstm_1/transpose:y:0*
T0*
_output_shapes
:2
sequential_1/lstm_1/Shape_1?
)sequential_1/lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_1/lstm_1/strided_slice_1/stack?
+sequential_1/lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_1/strided_slice_1/stack_1?
+sequential_1/lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_1/strided_slice_1/stack_2?
#sequential_1/lstm_1/strided_slice_1StridedSlice$sequential_1/lstm_1/Shape_1:output:02sequential_1/lstm_1/strided_slice_1/stack:output:04sequential_1/lstm_1/strided_slice_1/stack_1:output:04sequential_1/lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_1/lstm_1/strided_slice_1?
/sequential_1/lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????21
/sequential_1/lstm_1/TensorArrayV2/element_shape?
!sequential_1/lstm_1/TensorArrayV2TensorListReserve8sequential_1/lstm_1/TensorArrayV2/element_shape:output:0,sequential_1/lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!sequential_1/lstm_1/TensorArrayV2?
Isequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2K
Isequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape?
;sequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_1/lstm_1/transpose:y:0Rsequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;sequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor?
)sequential_1/lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_1/lstm_1/strided_slice_2/stack?
+sequential_1/lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_1/strided_slice_2/stack_1?
+sequential_1/lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_1/strided_slice_2/stack_2?
#sequential_1/lstm_1/strided_slice_2StridedSlice!sequential_1/lstm_1/transpose:y:02sequential_1/lstm_1/strided_slice_2/stack:output:04sequential_1/lstm_1/strided_slice_2/stack_1:output:04sequential_1/lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2%
#sequential_1/lstm_1/strided_slice_2?
6sequential_1/lstm_1/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp?sequential_1_lstm_1_lstm_cell_17_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype028
6sequential_1/lstm_1/lstm_cell_17/MatMul/ReadVariableOp?
'sequential_1/lstm_1/lstm_cell_17/MatMulMatMul,sequential_1/lstm_1/strided_slice_2:output:0>sequential_1/lstm_1/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2)
'sequential_1/lstm_1/lstm_cell_17/MatMul?
8sequential_1/lstm_1/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOpAsequential_1_lstm_1_lstm_cell_17_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02:
8sequential_1/lstm_1/lstm_cell_17/MatMul_1/ReadVariableOp?
)sequential_1/lstm_1/lstm_cell_17/MatMul_1MatMul"sequential_1/lstm_1/zeros:output:0@sequential_1/lstm_1/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2+
)sequential_1/lstm_1/lstm_cell_17/MatMul_1?
$sequential_1/lstm_1/lstm_cell_17/addAddV21sequential_1/lstm_1/lstm_cell_17/MatMul:product:03sequential_1/lstm_1/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2&
$sequential_1/lstm_1/lstm_cell_17/add?
7sequential_1/lstm_1/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp@sequential_1_lstm_1_lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype029
7sequential_1/lstm_1/lstm_cell_17/BiasAdd/ReadVariableOp?
(sequential_1/lstm_1/lstm_cell_17/BiasAddBiasAdd(sequential_1/lstm_1/lstm_cell_17/add:z:0?sequential_1/lstm_1/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2*
(sequential_1/lstm_1/lstm_cell_17/BiasAdd?
0sequential_1/lstm_1/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :22
0sequential_1/lstm_1/lstm_cell_17/split/split_dim?
&sequential_1/lstm_1/lstm_cell_17/splitSplit9sequential_1/lstm_1/lstm_cell_17/split/split_dim:output:01sequential_1/lstm_1/lstm_cell_17/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2(
&sequential_1/lstm_1/lstm_cell_17/split?
(sequential_1/lstm_1/lstm_cell_17/SigmoidSigmoid/sequential_1/lstm_1/lstm_cell_17/split:output:0*
T0*(
_output_shapes
:??????????2*
(sequential_1/lstm_1/lstm_cell_17/Sigmoid?
*sequential_1/lstm_1/lstm_cell_17/Sigmoid_1Sigmoid/sequential_1/lstm_1/lstm_cell_17/split:output:1*
T0*(
_output_shapes
:??????????2,
*sequential_1/lstm_1/lstm_cell_17/Sigmoid_1?
$sequential_1/lstm_1/lstm_cell_17/mulMul.sequential_1/lstm_1/lstm_cell_17/Sigmoid_1:y:0$sequential_1/lstm_1/zeros_1:output:0*
T0*(
_output_shapes
:??????????2&
$sequential_1/lstm_1/lstm_cell_17/mul?
*sequential_1/lstm_1/lstm_cell_17/Sigmoid_2Sigmoid/sequential_1/lstm_1/lstm_cell_17/split:output:2*
T0*(
_output_shapes
:??????????2,
*sequential_1/lstm_1/lstm_cell_17/Sigmoid_2?
&sequential_1/lstm_1/lstm_cell_17/mul_1Mul/sequential_1/lstm_1/lstm_cell_17/split:output:2.sequential_1/lstm_1/lstm_cell_17/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2(
&sequential_1/lstm_1/lstm_cell_17/mul_1?
)sequential_1/lstm_1/lstm_cell_17/IdentityIdentity*sequential_1/lstm_1/lstm_cell_17/mul_1:z:0*
T0*(
_output_shapes
:??????????2+
)sequential_1/lstm_1/lstm_cell_17/Identity?
*sequential_1/lstm_1/lstm_cell_17/IdentityN	IdentityN*sequential_1/lstm_1/lstm_cell_17/mul_1:z:0/sequential_1/lstm_1/lstm_cell_17/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1069304*<
_output_shapes*
(:??????????:??????????2,
*sequential_1/lstm_1/lstm_cell_17/IdentityN?
&sequential_1/lstm_1/lstm_cell_17/mul_2Mul,sequential_1/lstm_1/lstm_cell_17/Sigmoid:y:03sequential_1/lstm_1/lstm_cell_17/IdentityN:output:0*
T0*(
_output_shapes
:??????????2(
&sequential_1/lstm_1/lstm_cell_17/mul_2?
&sequential_1/lstm_1/lstm_cell_17/add_1AddV2(sequential_1/lstm_1/lstm_cell_17/mul:z:0*sequential_1/lstm_1/lstm_cell_17/mul_2:z:0*
T0*(
_output_shapes
:??????????2(
&sequential_1/lstm_1/lstm_cell_17/add_1?
*sequential_1/lstm_1/lstm_cell_17/Sigmoid_3Sigmoid/sequential_1/lstm_1/lstm_cell_17/split:output:3*
T0*(
_output_shapes
:??????????2,
*sequential_1/lstm_1/lstm_cell_17/Sigmoid_3?
*sequential_1/lstm_1/lstm_cell_17/Sigmoid_4Sigmoid*sequential_1/lstm_1/lstm_cell_17/add_1:z:0*
T0*(
_output_shapes
:??????????2,
*sequential_1/lstm_1/lstm_cell_17/Sigmoid_4?
&sequential_1/lstm_1/lstm_cell_17/mul_3Mul*sequential_1/lstm_1/lstm_cell_17/add_1:z:0.sequential_1/lstm_1/lstm_cell_17/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2(
&sequential_1/lstm_1/lstm_cell_17/mul_3?
+sequential_1/lstm_1/lstm_cell_17/Identity_1Identity*sequential_1/lstm_1/lstm_cell_17/mul_3:z:0*
T0*(
_output_shapes
:??????????2-
+sequential_1/lstm_1/lstm_cell_17/Identity_1?
,sequential_1/lstm_1/lstm_cell_17/IdentityN_1	IdentityN*sequential_1/lstm_1/lstm_cell_17/mul_3:z:0*sequential_1/lstm_1/lstm_cell_17/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1069313*<
_output_shapes*
(:??????????:??????????2.
,sequential_1/lstm_1/lstm_cell_17/IdentityN_1?
&sequential_1/lstm_1/lstm_cell_17/mul_4Mul.sequential_1/lstm_1/lstm_cell_17/Sigmoid_3:y:05sequential_1/lstm_1/lstm_cell_17/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2(
&sequential_1/lstm_1/lstm_cell_17/mul_4?
1sequential_1/lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   23
1sequential_1/lstm_1/TensorArrayV2_1/element_shape?
#sequential_1/lstm_1/TensorArrayV2_1TensorListReserve:sequential_1/lstm_1/TensorArrayV2_1/element_shape:output:0,sequential_1/lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_1/lstm_1/TensorArrayV2_1v
sequential_1/lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_1/lstm_1/time?
,sequential_1/lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2.
,sequential_1/lstm_1/while/maximum_iterations?
&sequential_1/lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_1/lstm_1/while/loop_counter?
sequential_1/lstm_1/whileWhile/sequential_1/lstm_1/while/loop_counter:output:05sequential_1/lstm_1/while/maximum_iterations:output:0!sequential_1/lstm_1/time:output:0,sequential_1/lstm_1/TensorArrayV2_1:handle:0"sequential_1/lstm_1/zeros:output:0$sequential_1/lstm_1/zeros_1:output:0,sequential_1/lstm_1/strided_slice_1:output:0Ksequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0?sequential_1_lstm_1_lstm_cell_17_matmul_readvariableop_resourceAsequential_1_lstm_1_lstm_cell_17_matmul_1_readvariableop_resource@sequential_1_lstm_1_lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*2
body*R(
&sequential_1_lstm_1_while_body_1069324*2
cond*R(
&sequential_1_lstm_1_while_cond_1069323*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
sequential_1/lstm_1/while?
Dsequential_1/lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2F
Dsequential_1/lstm_1/TensorArrayV2Stack/TensorListStack/element_shape?
6sequential_1/lstm_1/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_1/lstm_1/while:output:3Msequential_1/lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype028
6sequential_1/lstm_1/TensorArrayV2Stack/TensorListStack?
)sequential_1/lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2+
)sequential_1/lstm_1/strided_slice_3/stack?
+sequential_1/lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_1/lstm_1/strided_slice_3/stack_1?
+sequential_1/lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_1/strided_slice_3/stack_2?
#sequential_1/lstm_1/strided_slice_3StridedSlice?sequential_1/lstm_1/TensorArrayV2Stack/TensorListStack:tensor:02sequential_1/lstm_1/strided_slice_3/stack:output:04sequential_1/lstm_1/strided_slice_3/stack_1:output:04sequential_1/lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2%
#sequential_1/lstm_1/strided_slice_3?
$sequential_1/lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_1/lstm_1/transpose_1/perm?
sequential_1/lstm_1/transpose_1	Transpose?sequential_1/lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_1/lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2!
sequential_1/lstm_1/transpose_1?
sequential_1/lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_1/lstm_1/runtime?
sequential_1/lstm_2/ShapeShape#sequential_1/lstm_1/transpose_1:y:0*
T0*
_output_shapes
:2
sequential_1/lstm_2/Shape?
'sequential_1/lstm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_1/lstm_2/strided_slice/stack?
)sequential_1/lstm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_1/lstm_2/strided_slice/stack_1?
)sequential_1/lstm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_1/lstm_2/strided_slice/stack_2?
!sequential_1/lstm_2/strided_sliceStridedSlice"sequential_1/lstm_2/Shape:output:00sequential_1/lstm_2/strided_slice/stack:output:02sequential_1/lstm_2/strided_slice/stack_1:output:02sequential_1/lstm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_1/lstm_2/strided_slice?
sequential_1/lstm_2/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2!
sequential_1/lstm_2/zeros/mul/y?
sequential_1/lstm_2/zeros/mulMul*sequential_1/lstm_2/strided_slice:output:0(sequential_1/lstm_2/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_1/lstm_2/zeros/mul?
 sequential_1/lstm_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2"
 sequential_1/lstm_2/zeros/Less/y?
sequential_1/lstm_2/zeros/LessLess!sequential_1/lstm_2/zeros/mul:z:0)sequential_1/lstm_2/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
sequential_1/lstm_2/zeros/Less?
"sequential_1/lstm_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2$
"sequential_1/lstm_2/zeros/packed/1?
 sequential_1/lstm_2/zeros/packedPack*sequential_1/lstm_2/strided_slice:output:0+sequential_1/lstm_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_1/lstm_2/zeros/packed?
sequential_1/lstm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_1/lstm_2/zeros/Const?
sequential_1/lstm_2/zerosFill)sequential_1/lstm_2/zeros/packed:output:0(sequential_1/lstm_2/zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
sequential_1/lstm_2/zeros?
!sequential_1/lstm_2/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2#
!sequential_1/lstm_2/zeros_1/mul/y?
sequential_1/lstm_2/zeros_1/mulMul*sequential_1/lstm_2/strided_slice:output:0*sequential_1/lstm_2/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_1/lstm_2/zeros_1/mul?
"sequential_1/lstm_2/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"sequential_1/lstm_2/zeros_1/Less/y?
 sequential_1/lstm_2/zeros_1/LessLess#sequential_1/lstm_2/zeros_1/mul:z:0+sequential_1/lstm_2/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_1/lstm_2/zeros_1/Less?
$sequential_1/lstm_2/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2&
$sequential_1/lstm_2/zeros_1/packed/1?
"sequential_1/lstm_2/zeros_1/packedPack*sequential_1/lstm_2/strided_slice:output:0-sequential_1/lstm_2/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_1/lstm_2/zeros_1/packed?
!sequential_1/lstm_2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_1/lstm_2/zeros_1/Const?
sequential_1/lstm_2/zeros_1Fill+sequential_1/lstm_2/zeros_1/packed:output:0*sequential_1/lstm_2/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
sequential_1/lstm_2/zeros_1?
"sequential_1/lstm_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"sequential_1/lstm_2/transpose/perm?
sequential_1/lstm_2/transpose	Transpose#sequential_1/lstm_1/transpose_1:y:0+sequential_1/lstm_2/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
sequential_1/lstm_2/transpose?
sequential_1/lstm_2/Shape_1Shape!sequential_1/lstm_2/transpose:y:0*
T0*
_output_shapes
:2
sequential_1/lstm_2/Shape_1?
)sequential_1/lstm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_1/lstm_2/strided_slice_1/stack?
+sequential_1/lstm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_2/strided_slice_1/stack_1?
+sequential_1/lstm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_2/strided_slice_1/stack_2?
#sequential_1/lstm_2/strided_slice_1StridedSlice$sequential_1/lstm_2/Shape_1:output:02sequential_1/lstm_2/strided_slice_1/stack:output:04sequential_1/lstm_2/strided_slice_1/stack_1:output:04sequential_1/lstm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_1/lstm_2/strided_slice_1?
/sequential_1/lstm_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????21
/sequential_1/lstm_2/TensorArrayV2/element_shape?
!sequential_1/lstm_2/TensorArrayV2TensorListReserve8sequential_1/lstm_2/TensorArrayV2/element_shape:output:0,sequential_1/lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!sequential_1/lstm_2/TensorArrayV2?
Isequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2K
Isequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape?
;sequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_1/lstm_2/transpose:y:0Rsequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;sequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensor?
)sequential_1/lstm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_1/lstm_2/strided_slice_2/stack?
+sequential_1/lstm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_2/strided_slice_2/stack_1?
+sequential_1/lstm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_2/strided_slice_2/stack_2?
#sequential_1/lstm_2/strided_slice_2StridedSlice!sequential_1/lstm_2/transpose:y:02sequential_1/lstm_2/strided_slice_2/stack:output:04sequential_1/lstm_2/strided_slice_2/stack_1:output:04sequential_1/lstm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2%
#sequential_1/lstm_2/strided_slice_2?
6sequential_1/lstm_2/lstm_cell_18/MatMul/ReadVariableOpReadVariableOp?sequential_1_lstm_2_lstm_cell_18_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype028
6sequential_1/lstm_2/lstm_cell_18/MatMul/ReadVariableOp?
'sequential_1/lstm_2/lstm_cell_18/MatMulMatMul,sequential_1/lstm_2/strided_slice_2:output:0>sequential_1/lstm_2/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2)
'sequential_1/lstm_2/lstm_cell_18/MatMul?
8sequential_1/lstm_2/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOpAsequential_1_lstm_2_lstm_cell_18_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02:
8sequential_1/lstm_2/lstm_cell_18/MatMul_1/ReadVariableOp?
)sequential_1/lstm_2/lstm_cell_18/MatMul_1MatMul"sequential_1/lstm_2/zeros:output:0@sequential_1/lstm_2/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2+
)sequential_1/lstm_2/lstm_cell_18/MatMul_1?
$sequential_1/lstm_2/lstm_cell_18/addAddV21sequential_1/lstm_2/lstm_cell_18/MatMul:product:03sequential_1/lstm_2/lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2&
$sequential_1/lstm_2/lstm_cell_18/add?
7sequential_1/lstm_2/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp@sequential_1_lstm_2_lstm_cell_18_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype029
7sequential_1/lstm_2/lstm_cell_18/BiasAdd/ReadVariableOp?
(sequential_1/lstm_2/lstm_cell_18/BiasAddBiasAdd(sequential_1/lstm_2/lstm_cell_18/add:z:0?sequential_1/lstm_2/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2*
(sequential_1/lstm_2/lstm_cell_18/BiasAdd?
0sequential_1/lstm_2/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :22
0sequential_1/lstm_2/lstm_cell_18/split/split_dim?
&sequential_1/lstm_2/lstm_cell_18/splitSplit9sequential_1/lstm_2/lstm_cell_18/split/split_dim:output:01sequential_1/lstm_2/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2(
&sequential_1/lstm_2/lstm_cell_18/split?
(sequential_1/lstm_2/lstm_cell_18/SigmoidSigmoid/sequential_1/lstm_2/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:?????????@2*
(sequential_1/lstm_2/lstm_cell_18/Sigmoid?
*sequential_1/lstm_2/lstm_cell_18/Sigmoid_1Sigmoid/sequential_1/lstm_2/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:?????????@2,
*sequential_1/lstm_2/lstm_cell_18/Sigmoid_1?
$sequential_1/lstm_2/lstm_cell_18/mulMul.sequential_1/lstm_2/lstm_cell_18/Sigmoid_1:y:0$sequential_1/lstm_2/zeros_1:output:0*
T0*'
_output_shapes
:?????????@2&
$sequential_1/lstm_2/lstm_cell_18/mul?
*sequential_1/lstm_2/lstm_cell_18/Sigmoid_2Sigmoid/sequential_1/lstm_2/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:?????????@2,
*sequential_1/lstm_2/lstm_cell_18/Sigmoid_2?
&sequential_1/lstm_2/lstm_cell_18/mul_1Mul/sequential_1/lstm_2/lstm_cell_18/split:output:2.sequential_1/lstm_2/lstm_cell_18/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2(
&sequential_1/lstm_2/lstm_cell_18/mul_1?
)sequential_1/lstm_2/lstm_cell_18/IdentityIdentity*sequential_1/lstm_2/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:?????????@2+
)sequential_1/lstm_2/lstm_cell_18/Identity?
*sequential_1/lstm_2/lstm_cell_18/IdentityN	IdentityN*sequential_1/lstm_2/lstm_cell_18/mul_1:z:0/sequential_1/lstm_2/lstm_cell_18/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1069471*:
_output_shapes(
&:?????????@:?????????@2,
*sequential_1/lstm_2/lstm_cell_18/IdentityN?
&sequential_1/lstm_2/lstm_cell_18/mul_2Mul,sequential_1/lstm_2/lstm_cell_18/Sigmoid:y:03sequential_1/lstm_2/lstm_cell_18/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2(
&sequential_1/lstm_2/lstm_cell_18/mul_2?
&sequential_1/lstm_2/lstm_cell_18/add_1AddV2(sequential_1/lstm_2/lstm_cell_18/mul:z:0*sequential_1/lstm_2/lstm_cell_18/mul_2:z:0*
T0*'
_output_shapes
:?????????@2(
&sequential_1/lstm_2/lstm_cell_18/add_1?
*sequential_1/lstm_2/lstm_cell_18/Sigmoid_3Sigmoid/sequential_1/lstm_2/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:?????????@2,
*sequential_1/lstm_2/lstm_cell_18/Sigmoid_3?
*sequential_1/lstm_2/lstm_cell_18/Sigmoid_4Sigmoid*sequential_1/lstm_2/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:?????????@2,
*sequential_1/lstm_2/lstm_cell_18/Sigmoid_4?
&sequential_1/lstm_2/lstm_cell_18/mul_3Mul*sequential_1/lstm_2/lstm_cell_18/add_1:z:0.sequential_1/lstm_2/lstm_cell_18/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2(
&sequential_1/lstm_2/lstm_cell_18/mul_3?
+sequential_1/lstm_2/lstm_cell_18/Identity_1Identity*sequential_1/lstm_2/lstm_cell_18/mul_3:z:0*
T0*'
_output_shapes
:?????????@2-
+sequential_1/lstm_2/lstm_cell_18/Identity_1?
,sequential_1/lstm_2/lstm_cell_18/IdentityN_1	IdentityN*sequential_1/lstm_2/lstm_cell_18/mul_3:z:0*sequential_1/lstm_2/lstm_cell_18/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1069480*:
_output_shapes(
&:?????????@:?????????@2.
,sequential_1/lstm_2/lstm_cell_18/IdentityN_1?
&sequential_1/lstm_2/lstm_cell_18/mul_4Mul.sequential_1/lstm_2/lstm_cell_18/Sigmoid_3:y:05sequential_1/lstm_2/lstm_cell_18/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2(
&sequential_1/lstm_2/lstm_cell_18/mul_4?
1sequential_1/lstm_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   23
1sequential_1/lstm_2/TensorArrayV2_1/element_shape?
#sequential_1/lstm_2/TensorArrayV2_1TensorListReserve:sequential_1/lstm_2/TensorArrayV2_1/element_shape:output:0,sequential_1/lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_1/lstm_2/TensorArrayV2_1v
sequential_1/lstm_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_1/lstm_2/time?
,sequential_1/lstm_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2.
,sequential_1/lstm_2/while/maximum_iterations?
&sequential_1/lstm_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_1/lstm_2/while/loop_counter?
sequential_1/lstm_2/whileWhile/sequential_1/lstm_2/while/loop_counter:output:05sequential_1/lstm_2/while/maximum_iterations:output:0!sequential_1/lstm_2/time:output:0,sequential_1/lstm_2/TensorArrayV2_1:handle:0"sequential_1/lstm_2/zeros:output:0$sequential_1/lstm_2/zeros_1:output:0,sequential_1/lstm_2/strided_slice_1:output:0Ksequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0?sequential_1_lstm_2_lstm_cell_18_matmul_readvariableop_resourceAsequential_1_lstm_2_lstm_cell_18_matmul_1_readvariableop_resource@sequential_1_lstm_2_lstm_cell_18_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*2
body*R(
&sequential_1_lstm_2_while_body_1069491*2
cond*R(
&sequential_1_lstm_2_while_cond_1069490*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
sequential_1/lstm_2/while?
Dsequential_1/lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2F
Dsequential_1/lstm_2/TensorArrayV2Stack/TensorListStack/element_shape?
6sequential_1/lstm_2/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_1/lstm_2/while:output:3Msequential_1/lstm_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype028
6sequential_1/lstm_2/TensorArrayV2Stack/TensorListStack?
)sequential_1/lstm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2+
)sequential_1/lstm_2/strided_slice_3/stack?
+sequential_1/lstm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_1/lstm_2/strided_slice_3/stack_1?
+sequential_1/lstm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_2/strided_slice_3/stack_2?
#sequential_1/lstm_2/strided_slice_3StridedSlice?sequential_1/lstm_2/TensorArrayV2Stack/TensorListStack:tensor:02sequential_1/lstm_2/strided_slice_3/stack:output:04sequential_1/lstm_2/strided_slice_3/stack_1:output:04sequential_1/lstm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2%
#sequential_1/lstm_2/strided_slice_3?
$sequential_1/lstm_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_1/lstm_2/transpose_1/perm?
sequential_1/lstm_2/transpose_1	Transpose?sequential_1/lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_1/lstm_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@2!
sequential_1/lstm_2/transpose_1?
sequential_1/lstm_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_1/lstm_2/runtime?
+sequential_1/time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2-
+sequential_1/time_distributed/Reshape/shape?
%sequential_1/time_distributed/ReshapeReshape#sequential_1/lstm_2/transpose_1:y:04sequential_1/time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????@2'
%sequential_1/time_distributed/Reshape?
;sequential_1/time_distributed/dense_2/MatMul/ReadVariableOpReadVariableOpDsequential_1_time_distributed_dense_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02=
;sequential_1/time_distributed/dense_2/MatMul/ReadVariableOp?
,sequential_1/time_distributed/dense_2/MatMulMatMul.sequential_1/time_distributed/Reshape:output:0Csequential_1/time_distributed/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2.
,sequential_1/time_distributed/dense_2/MatMul?
<sequential_1/time_distributed/dense_2/BiasAdd/ReadVariableOpReadVariableOpEsequential_1_time_distributed_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02>
<sequential_1/time_distributed/dense_2/BiasAdd/ReadVariableOp?
-sequential_1/time_distributed/dense_2/BiasAddBiasAdd6sequential_1/time_distributed/dense_2/MatMul:product:0Dsequential_1/time_distributed/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2/
-sequential_1/time_distributed/dense_2/BiasAdd?
-sequential_1/time_distributed/dense_2/SigmoidSigmoid6sequential_1/time_distributed/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2/
-sequential_1/time_distributed/dense_2/Sigmoid?
)sequential_1/time_distributed/dense_2/mulMul6sequential_1/time_distributed/dense_2/BiasAdd:output:01sequential_1/time_distributed/dense_2/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2+
)sequential_1/time_distributed/dense_2/mul?
.sequential_1/time_distributed/dense_2/IdentityIdentity-sequential_1/time_distributed/dense_2/mul:z:0*
T0*'
_output_shapes
:?????????@20
.sequential_1/time_distributed/dense_2/Identity?
/sequential_1/time_distributed/dense_2/IdentityN	IdentityN-sequential_1/time_distributed/dense_2/mul:z:06sequential_1/time_distributed/dense_2/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1069592*:
_output_shapes(
&:?????????@:?????????@21
/sequential_1/time_distributed/dense_2/IdentityN?
-sequential_1/time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   @   2/
-sequential_1/time_distributed/Reshape_1/shape?
'sequential_1/time_distributed/Reshape_1Reshape8sequential_1/time_distributed/dense_2/IdentityN:output:06sequential_1/time_distributed/Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????@2)
'sequential_1/time_distributed/Reshape_1?
-sequential_1/time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2/
-sequential_1/time_distributed/Reshape_2/shape?
'sequential_1/time_distributed/Reshape_2Reshape#sequential_1/lstm_2/transpose_1:y:06sequential_1/time_distributed/Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????@2)
'sequential_1/time_distributed/Reshape_2?
-sequential_1/time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2/
-sequential_1/time_distributed_1/Reshape/shape?
'sequential_1/time_distributed_1/ReshapeReshape0sequential_1/time_distributed/Reshape_1:output:06sequential_1/time_distributed_1/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????@2)
'sequential_1/time_distributed_1/Reshape?
=sequential_1/time_distributed_1/dense_3/MatMul/ReadVariableOpReadVariableOpFsequential_1_time_distributed_1_dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02?
=sequential_1/time_distributed_1/dense_3/MatMul/ReadVariableOp?
.sequential_1/time_distributed_1/dense_3/MatMulMatMul0sequential_1/time_distributed_1/Reshape:output:0Esequential_1/time_distributed_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????20
.sequential_1/time_distributed_1/dense_3/MatMul?
>sequential_1/time_distributed_1/dense_3/BiasAdd/ReadVariableOpReadVariableOpGsequential_1_time_distributed_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02@
>sequential_1/time_distributed_1/dense_3/BiasAdd/ReadVariableOp?
/sequential_1/time_distributed_1/dense_3/BiasAddBiasAdd8sequential_1/time_distributed_1/dense_3/MatMul:product:0Fsequential_1/time_distributed_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????21
/sequential_1/time_distributed_1/dense_3/BiasAdd?
/sequential_1/time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      21
/sequential_1/time_distributed_1/Reshape_1/shape?
)sequential_1/time_distributed_1/Reshape_1Reshape8sequential_1/time_distributed_1/dense_3/BiasAdd:output:08sequential_1/time_distributed_1/Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????2+
)sequential_1/time_distributed_1/Reshape_1?
/sequential_1/time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   21
/sequential_1/time_distributed_1/Reshape_2/shape?
)sequential_1/time_distributed_1/Reshape_2Reshape0sequential_1/time_distributed/Reshape_1:output:08sequential_1/time_distributed_1/Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????@2+
)sequential_1/time_distributed_1/Reshape_2?
IdentityIdentity2sequential_1/time_distributed_1/Reshape_1:output:08^sequential_1/lstm_1/lstm_cell_17/BiasAdd/ReadVariableOp7^sequential_1/lstm_1/lstm_cell_17/MatMul/ReadVariableOp9^sequential_1/lstm_1/lstm_cell_17/MatMul_1/ReadVariableOp^sequential_1/lstm_1/while8^sequential_1/lstm_2/lstm_cell_18/BiasAdd/ReadVariableOp7^sequential_1/lstm_2/lstm_cell_18/MatMul/ReadVariableOp9^sequential_1/lstm_2/lstm_cell_18/MatMul_1/ReadVariableOp^sequential_1/lstm_2/while=^sequential_1/time_distributed/dense_2/BiasAdd/ReadVariableOp<^sequential_1/time_distributed/dense_2/MatMul/ReadVariableOp?^sequential_1/time_distributed_1/dense_3/BiasAdd/ReadVariableOp>^sequential_1/time_distributed_1/dense_3/MatMul/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : 2r
7sequential_1/lstm_1/lstm_cell_17/BiasAdd/ReadVariableOp7sequential_1/lstm_1/lstm_cell_17/BiasAdd/ReadVariableOp2p
6sequential_1/lstm_1/lstm_cell_17/MatMul/ReadVariableOp6sequential_1/lstm_1/lstm_cell_17/MatMul/ReadVariableOp2t
8sequential_1/lstm_1/lstm_cell_17/MatMul_1/ReadVariableOp8sequential_1/lstm_1/lstm_cell_17/MatMul_1/ReadVariableOp26
sequential_1/lstm_1/whilesequential_1/lstm_1/while2r
7sequential_1/lstm_2/lstm_cell_18/BiasAdd/ReadVariableOp7sequential_1/lstm_2/lstm_cell_18/BiasAdd/ReadVariableOp2p
6sequential_1/lstm_2/lstm_cell_18/MatMul/ReadVariableOp6sequential_1/lstm_2/lstm_cell_18/MatMul/ReadVariableOp2t
8sequential_1/lstm_2/lstm_cell_18/MatMul_1/ReadVariableOp8sequential_1/lstm_2/lstm_cell_18/MatMul_1/ReadVariableOp26
sequential_1/lstm_2/whilesequential_1/lstm_2/while2|
<sequential_1/time_distributed/dense_2/BiasAdd/ReadVariableOp<sequential_1/time_distributed/dense_2/BiasAdd/ReadVariableOp2z
;sequential_1/time_distributed/dense_2/MatMul/ReadVariableOp;sequential_1/time_distributed/dense_2/MatMul/ReadVariableOp2?
>sequential_1/time_distributed_1/dense_3/BiasAdd/ReadVariableOp>sequential_1/time_distributed_1/dense_3/BiasAdd/ReadVariableOp2~
=sequential_1/time_distributed_1/dense_3/MatMul/ReadVariableOp=sequential_1/time_distributed_1/dense_3/MatMul/ReadVariableOp:Y U
+
_output_shapes
:?????????
&
_user_specified_namelstm_1_input
?L
?
while_body_1071460
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_18_matmul_readvariableop_resource_0:
??H
5while_lstm_cell_18_matmul_1_readvariableop_resource_0:	@?C
4while_lstm_cell_18_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_18_matmul_readvariableop_resource:
??F
3while_lstm_cell_18_matmul_1_readvariableop_resource:	@?A
2while_lstm_cell_18_biasadd_readvariableop_resource:	???)while/lstm_cell_18/BiasAdd/ReadVariableOp?(while/lstm_cell_18/MatMul/ReadVariableOp?*while/lstm_cell_18/MatMul_1/ReadVariableOp?
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
(while/lstm_cell_18/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_18_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02*
(while/lstm_cell_18/MatMul/ReadVariableOp?
while/lstm_cell_18/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_18/MatMul?
*while/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_18_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02,
*while/lstm_cell_18/MatMul_1/ReadVariableOp?
while/lstm_cell_18/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_18/MatMul_1?
while/lstm_cell_18/addAddV2#while/lstm_cell_18/MatMul:product:0%while/lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_18/add?
)while/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_18_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_18/BiasAdd/ReadVariableOp?
while/lstm_cell_18/BiasAddBiasAddwhile/lstm_cell_18/add:z:01while/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_18/BiasAdd?
"while/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_18/split/split_dim?
while/lstm_cell_18/splitSplit+while/lstm_cell_18/split/split_dim:output:0#while/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
while/lstm_cell_18/split?
while/lstm_cell_18/SigmoidSigmoid!while/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Sigmoid?
while/lstm_cell_18/Sigmoid_1Sigmoid!while/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Sigmoid_1?
while/lstm_cell_18/mulMul while/lstm_cell_18/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/mul?
while/lstm_cell_18/Sigmoid_2Sigmoid!while/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Sigmoid_2?
while/lstm_cell_18/mul_1Mul!while/lstm_cell_18/split:output:2 while/lstm_cell_18/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/mul_1?
while/lstm_cell_18/IdentityIdentitywhile/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Identity?
while/lstm_cell_18/IdentityN	IdentityNwhile/lstm_cell_18/mul_1:z:0!while/lstm_cell_18/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1071502*:
_output_shapes(
&:?????????@:?????????@2
while/lstm_cell_18/IdentityN?
while/lstm_cell_18/mul_2Mulwhile/lstm_cell_18/Sigmoid:y:0%while/lstm_cell_18/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/mul_2?
while/lstm_cell_18/add_1AddV2while/lstm_cell_18/mul:z:0while/lstm_cell_18/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/add_1?
while/lstm_cell_18/Sigmoid_3Sigmoid!while/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Sigmoid_3?
while/lstm_cell_18/Sigmoid_4Sigmoidwhile/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Sigmoid_4?
while/lstm_cell_18/mul_3Mulwhile/lstm_cell_18/add_1:z:0 while/lstm_cell_18/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/mul_3?
while/lstm_cell_18/Identity_1Identitywhile/lstm_cell_18/mul_3:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Identity_1?
while/lstm_cell_18/IdentityN_1	IdentityNwhile/lstm_cell_18/mul_3:z:0while/lstm_cell_18/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1071511*:
_output_shapes(
&:?????????@:?????????@2 
while/lstm_cell_18/IdentityN_1?
while/lstm_cell_18/mul_4Mul while/lstm_cell_18/Sigmoid_3:y:0'while/lstm_cell_18/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/mul_4?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_18/mul_4:z:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_18/mul_4:z:0*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_18/add_1:z:0*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_18_biasadd_readvariableop_resource4while_lstm_cell_18_biasadd_readvariableop_resource_0"l
3while_lstm_cell_18_matmul_1_readvariableop_resource5while_lstm_cell_18_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_18_matmul_readvariableop_resource3while_lstm_cell_18_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2V
)while/lstm_cell_18/BiasAdd/ReadVariableOp)while/lstm_cell_18/BiasAdd/ReadVariableOp2T
(while/lstm_cell_18/MatMul/ReadVariableOp(while/lstm_cell_18/MatMul/ReadVariableOp2X
*while/lstm_cell_18/MatMul_1/ReadVariableOp*while/lstm_cell_18/MatMul_1/ReadVariableOp: 
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
?c
?
C__inference_lstm_2_layer_call_and_return_conditional_losses_1071554

inputs?
+lstm_cell_18_matmul_readvariableop_resource:
??@
-lstm_cell_18_matmul_1_readvariableop_resource:	@?;
,lstm_cell_18_biasadd_readvariableop_resource:	?
identity??#lstm_cell_18/BiasAdd/ReadVariableOp?"lstm_cell_18/MatMul/ReadVariableOp?$lstm_cell_18/MatMul_1/ReadVariableOp?whileD
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
"lstm_cell_18/MatMul/ReadVariableOpReadVariableOp+lstm_cell_18_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02$
"lstm_cell_18/MatMul/ReadVariableOp?
lstm_cell_18/MatMulMatMulstrided_slice_2:output:0*lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_18/MatMul?
$lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_18_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02&
$lstm_cell_18/MatMul_1/ReadVariableOp?
lstm_cell_18/MatMul_1MatMulzeros:output:0,lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_18/MatMul_1?
lstm_cell_18/addAddV2lstm_cell_18/MatMul:product:0lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_18/add?
#lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_18_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_18/BiasAdd/ReadVariableOp?
lstm_cell_18/BiasAddBiasAddlstm_cell_18/add:z:0+lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_18/BiasAdd~
lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_18/split/split_dim?
lstm_cell_18/splitSplit%lstm_cell_18/split/split_dim:output:0lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
lstm_cell_18/split?
lstm_cell_18/SigmoidSigmoidlstm_cell_18/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Sigmoid?
lstm_cell_18/Sigmoid_1Sigmoidlstm_cell_18/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Sigmoid_1?
lstm_cell_18/mulMullstm_cell_18/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/mul?
lstm_cell_18/Sigmoid_2Sigmoidlstm_cell_18/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Sigmoid_2?
lstm_cell_18/mul_1Mullstm_cell_18/split:output:2lstm_cell_18/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/mul_1?
lstm_cell_18/IdentityIdentitylstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Identity?
lstm_cell_18/IdentityN	IdentityNlstm_cell_18/mul_1:z:0lstm_cell_18/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1071440*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_18/IdentityN?
lstm_cell_18/mul_2Mullstm_cell_18/Sigmoid:y:0lstm_cell_18/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/mul_2?
lstm_cell_18/add_1AddV2lstm_cell_18/mul:z:0lstm_cell_18/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/add_1?
lstm_cell_18/Sigmoid_3Sigmoidlstm_cell_18/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Sigmoid_3?
lstm_cell_18/Sigmoid_4Sigmoidlstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Sigmoid_4?
lstm_cell_18/mul_3Mullstm_cell_18/add_1:z:0lstm_cell_18/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/mul_3?
lstm_cell_18/Identity_1Identitylstm_cell_18/mul_3:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Identity_1?
lstm_cell_18/IdentityN_1	IdentityNlstm_cell_18/mul_3:z:0lstm_cell_18/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1071449*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_18/IdentityN_1?
lstm_cell_18/mul_4Mullstm_cell_18/Sigmoid_3:y:0!lstm_cell_18/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/mul_4?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_18_matmul_readvariableop_resource-lstm_cell_18_matmul_1_readvariableop_resource,lstm_cell_18_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1071460*
condR
while_cond_1071459*K
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
IdentityIdentitytranspose_1:y:0$^lstm_cell_18/BiasAdd/ReadVariableOp#^lstm_cell_18/MatMul/ReadVariableOp%^lstm_cell_18/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2J
#lstm_cell_18/BiasAdd/ReadVariableOp#lstm_cell_18/BiasAdd/ReadVariableOp2H
"lstm_cell_18/MatMul/ReadVariableOp"lstm_cell_18/MatMul/ReadVariableOp2L
$lstm_cell_18/MatMul_1/ReadVariableOp$lstm_cell_18/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?

I__inference_sequential_1_layer_call_and_return_conditional_losses_1073030

inputsE
2lstm_1_lstm_cell_17_matmul_readvariableop_resource:	?H
4lstm_1_lstm_cell_17_matmul_1_readvariableop_resource:
??B
3lstm_1_lstm_cell_17_biasadd_readvariableop_resource:	?F
2lstm_2_lstm_cell_18_matmul_readvariableop_resource:
??G
4lstm_2_lstm_cell_18_matmul_1_readvariableop_resource:	@?B
3lstm_2_lstm_cell_18_biasadd_readvariableop_resource:	?I
7time_distributed_dense_2_matmul_readvariableop_resource:@@F
8time_distributed_dense_2_biasadd_readvariableop_resource:@K
9time_distributed_1_dense_3_matmul_readvariableop_resource:@H
:time_distributed_1_dense_3_biasadd_readvariableop_resource:
identity??*lstm_1/lstm_cell_17/BiasAdd/ReadVariableOp?)lstm_1/lstm_cell_17/MatMul/ReadVariableOp?+lstm_1/lstm_cell_17/MatMul_1/ReadVariableOp?lstm_1/while?*lstm_2/lstm_cell_18/BiasAdd/ReadVariableOp?)lstm_2/lstm_cell_18/MatMul/ReadVariableOp?+lstm_2/lstm_cell_18/MatMul_1/ReadVariableOp?lstm_2/while?/time_distributed/dense_2/BiasAdd/ReadVariableOp?.time_distributed/dense_2/MatMul/ReadVariableOp?1time_distributed_1/dense_3/BiasAdd/ReadVariableOp?0time_distributed_1/dense_3/MatMul/ReadVariableOpR
lstm_1/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_1/Shape?
lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice/stack?
lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_1/strided_slice/stack_1?
lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_1/strided_slice/stack_2?
lstm_1/strided_sliceStridedSlicelstm_1/Shape:output:0#lstm_1/strided_slice/stack:output:0%lstm_1/strided_slice/stack_1:output:0%lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_1/strided_slicek
lstm_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_1/zeros/mul/y?
lstm_1/zeros/mulMullstm_1/strided_slice:output:0lstm_1/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros/mulm
lstm_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_1/zeros/Less/y?
lstm_1/zeros/LessLesslstm_1/zeros/mul:z:0lstm_1/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros/Lessq
lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_1/zeros/packed/1?
lstm_1/zeros/packedPacklstm_1/strided_slice:output:0lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_1/zeros/packedm
lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_1/zeros/Const?
lstm_1/zerosFilllstm_1/zeros/packed:output:0lstm_1/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_1/zeroso
lstm_1/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_1/zeros_1/mul/y?
lstm_1/zeros_1/mulMullstm_1/strided_slice:output:0lstm_1/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros_1/mulq
lstm_1/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_1/zeros_1/Less/y?
lstm_1/zeros_1/LessLesslstm_1/zeros_1/mul:z:0lstm_1/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros_1/Lessu
lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_1/zeros_1/packed/1?
lstm_1/zeros_1/packedPacklstm_1/strided_slice:output:0 lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_1/zeros_1/packedq
lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_1/zeros_1/Const?
lstm_1/zeros_1Filllstm_1/zeros_1/packed:output:0lstm_1/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_1/zeros_1?
lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_1/transpose/perm?
lstm_1/transpose	Transposeinputslstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_1/transposed
lstm_1/Shape_1Shapelstm_1/transpose:y:0*
T0*
_output_shapes
:2
lstm_1/Shape_1?
lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice_1/stack?
lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_1/stack_1?
lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_1/stack_2?
lstm_1/strided_slice_1StridedSlicelstm_1/Shape_1:output:0%lstm_1/strided_slice_1/stack:output:0'lstm_1/strided_slice_1/stack_1:output:0'lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_1/strided_slice_1?
"lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"lstm_1/TensorArrayV2/element_shape?
lstm_1/TensorArrayV2TensorListReserve+lstm_1/TensorArrayV2/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_1/TensorArrayV2?
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2>
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape?
.lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_1/transpose:y:0Elstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_1/TensorArrayUnstack/TensorListFromTensor?
lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice_2/stack?
lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_2/stack_1?
lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_2/stack_2?
lstm_1/strided_slice_2StridedSlicelstm_1/transpose:y:0%lstm_1/strided_slice_2/stack:output:0'lstm_1/strided_slice_2/stack_1:output:0'lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_1/strided_slice_2?
)lstm_1/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp2lstm_1_lstm_cell_17_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02+
)lstm_1/lstm_cell_17/MatMul/ReadVariableOp?
lstm_1/lstm_cell_17/MatMulMatMullstm_1/strided_slice_2:output:01lstm_1/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_1/lstm_cell_17/MatMul?
+lstm_1/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp4lstm_1_lstm_cell_17_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02-
+lstm_1/lstm_cell_17/MatMul_1/ReadVariableOp?
lstm_1/lstm_cell_17/MatMul_1MatMullstm_1/zeros:output:03lstm_1/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_1/lstm_cell_17/MatMul_1?
lstm_1/lstm_cell_17/addAddV2$lstm_1/lstm_cell_17/MatMul:product:0&lstm_1/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_1/lstm_cell_17/add?
*lstm_1/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp3lstm_1_lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*lstm_1/lstm_cell_17/BiasAdd/ReadVariableOp?
lstm_1/lstm_cell_17/BiasAddBiasAddlstm_1/lstm_cell_17/add:z:02lstm_1/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_1/lstm_cell_17/BiasAdd?
#lstm_1/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#lstm_1/lstm_cell_17/split/split_dim?
lstm_1/lstm_cell_17/splitSplit,lstm_1/lstm_cell_17/split/split_dim:output:0$lstm_1/lstm_cell_17/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_1/lstm_cell_17/split?
lstm_1/lstm_cell_17/SigmoidSigmoid"lstm_1/lstm_cell_17/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_1/lstm_cell_17/Sigmoid?
lstm_1/lstm_cell_17/Sigmoid_1Sigmoid"lstm_1/lstm_cell_17/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_1/lstm_cell_17/Sigmoid_1?
lstm_1/lstm_cell_17/mulMul!lstm_1/lstm_cell_17/Sigmoid_1:y:0lstm_1/zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_1/lstm_cell_17/mul?
lstm_1/lstm_cell_17/Sigmoid_2Sigmoid"lstm_1/lstm_cell_17/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_1/lstm_cell_17/Sigmoid_2?
lstm_1/lstm_cell_17/mul_1Mul"lstm_1/lstm_cell_17/split:output:2!lstm_1/lstm_cell_17/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
lstm_1/lstm_cell_17/mul_1?
lstm_1/lstm_cell_17/IdentityIdentitylstm_1/lstm_cell_17/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_1/lstm_cell_17/Identity?
lstm_1/lstm_cell_17/IdentityN	IdentityNlstm_1/lstm_cell_17/mul_1:z:0"lstm_1/lstm_cell_17/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1072719*<
_output_shapes*
(:??????????:??????????2
lstm_1/lstm_cell_17/IdentityN?
lstm_1/lstm_cell_17/mul_2Mullstm_1/lstm_cell_17/Sigmoid:y:0&lstm_1/lstm_cell_17/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
lstm_1/lstm_cell_17/mul_2?
lstm_1/lstm_cell_17/add_1AddV2lstm_1/lstm_cell_17/mul:z:0lstm_1/lstm_cell_17/mul_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_1/lstm_cell_17/add_1?
lstm_1/lstm_cell_17/Sigmoid_3Sigmoid"lstm_1/lstm_cell_17/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_1/lstm_cell_17/Sigmoid_3?
lstm_1/lstm_cell_17/Sigmoid_4Sigmoidlstm_1/lstm_cell_17/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_1/lstm_cell_17/Sigmoid_4?
lstm_1/lstm_cell_17/mul_3Mullstm_1/lstm_cell_17/add_1:z:0!lstm_1/lstm_cell_17/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
lstm_1/lstm_cell_17/mul_3?
lstm_1/lstm_cell_17/Identity_1Identitylstm_1/lstm_cell_17/mul_3:z:0*
T0*(
_output_shapes
:??????????2 
lstm_1/lstm_cell_17/Identity_1?
lstm_1/lstm_cell_17/IdentityN_1	IdentityNlstm_1/lstm_cell_17/mul_3:z:0lstm_1/lstm_cell_17/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1072728*<
_output_shapes*
(:??????????:??????????2!
lstm_1/lstm_cell_17/IdentityN_1?
lstm_1/lstm_cell_17/mul_4Mul!lstm_1/lstm_cell_17/Sigmoid_3:y:0(lstm_1/lstm_cell_17/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_1/lstm_cell_17/mul_4?
$lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2&
$lstm_1/TensorArrayV2_1/element_shape?
lstm_1/TensorArrayV2_1TensorListReserve-lstm_1/TensorArrayV2_1/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_1/TensorArrayV2_1\
lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_1/time?
lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
lstm_1/while/maximum_iterationsx
lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_1/while/loop_counter?
lstm_1/whileWhile"lstm_1/while/loop_counter:output:0(lstm_1/while/maximum_iterations:output:0lstm_1/time:output:0lstm_1/TensorArrayV2_1:handle:0lstm_1/zeros:output:0lstm_1/zeros_1:output:0lstm_1/strided_slice_1:output:0>lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_1_lstm_cell_17_matmul_readvariableop_resource4lstm_1_lstm_cell_17_matmul_1_readvariableop_resource3lstm_1_lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*%
bodyR
lstm_1_while_body_1072739*%
condR
lstm_1_while_cond_1072738*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
lstm_1/while?
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shape?
)lstm_1/TensorArrayV2Stack/TensorListStackTensorListStacklstm_1/while:output:3@lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02+
)lstm_1/TensorArrayV2Stack/TensorListStack?
lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_1/strided_slice_3/stack?
lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_1/strided_slice_3/stack_1?
lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_3/stack_2?
lstm_1/strided_slice_3StridedSlice2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_1/strided_slice_3/stack:output:0'lstm_1/strided_slice_3/stack_1:output:0'lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm_1/strided_slice_3?
lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_1/transpose_1/perm?
lstm_1/transpose_1	Transpose2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm_1/transpose_1t
lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_1/runtimeb
lstm_2/ShapeShapelstm_1/transpose_1:y:0*
T0*
_output_shapes
:2
lstm_2/Shape?
lstm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice/stack?
lstm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_2/strided_slice/stack_1?
lstm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_2/strided_slice/stack_2?
lstm_2/strided_sliceStridedSlicelstm_2/Shape:output:0#lstm_2/strided_slice/stack:output:0%lstm_2/strided_slice/stack_1:output:0%lstm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_2/strided_slicej
lstm_2/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_2/zeros/mul/y?
lstm_2/zeros/mulMullstm_2/strided_slice:output:0lstm_2/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros/mulm
lstm_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_2/zeros/Less/y?
lstm_2/zeros/LessLesslstm_2/zeros/mul:z:0lstm_2/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros/Lessp
lstm_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_2/zeros/packed/1?
lstm_2/zeros/packedPacklstm_2/strided_slice:output:0lstm_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_2/zeros/packedm
lstm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_2/zeros/Const?
lstm_2/zerosFilllstm_2/zeros/packed:output:0lstm_2/zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_2/zerosn
lstm_2/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_2/zeros_1/mul/y?
lstm_2/zeros_1/mulMullstm_2/strided_slice:output:0lstm_2/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros_1/mulq
lstm_2/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_2/zeros_1/Less/y?
lstm_2/zeros_1/LessLesslstm_2/zeros_1/mul:z:0lstm_2/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros_1/Lesst
lstm_2/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_2/zeros_1/packed/1?
lstm_2/zeros_1/packedPacklstm_2/strided_slice:output:0 lstm_2/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_2/zeros_1/packedq
lstm_2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_2/zeros_1/Const?
lstm_2/zeros_1Filllstm_2/zeros_1/packed:output:0lstm_2/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_2/zeros_1?
lstm_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_2/transpose/perm?
lstm_2/transpose	Transposelstm_1/transpose_1:y:0lstm_2/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm_2/transposed
lstm_2/Shape_1Shapelstm_2/transpose:y:0*
T0*
_output_shapes
:2
lstm_2/Shape_1?
lstm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice_1/stack?
lstm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_1/stack_1?
lstm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_1/stack_2?
lstm_2/strided_slice_1StridedSlicelstm_2/Shape_1:output:0%lstm_2/strided_slice_1/stack:output:0'lstm_2/strided_slice_1/stack_1:output:0'lstm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_2/strided_slice_1?
"lstm_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"lstm_2/TensorArrayV2/element_shape?
lstm_2/TensorArrayV2TensorListReserve+lstm_2/TensorArrayV2/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_2/TensorArrayV2?
<lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2>
<lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape?
.lstm_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_2/transpose:y:0Elstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_2/TensorArrayUnstack/TensorListFromTensor?
lstm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice_2/stack?
lstm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_2/stack_1?
lstm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_2/stack_2?
lstm_2/strided_slice_2StridedSlicelstm_2/transpose:y:0%lstm_2/strided_slice_2/stack:output:0'lstm_2/strided_slice_2/stack_1:output:0'lstm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm_2/strided_slice_2?
)lstm_2/lstm_cell_18/MatMul/ReadVariableOpReadVariableOp2lstm_2_lstm_cell_18_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02+
)lstm_2/lstm_cell_18/MatMul/ReadVariableOp?
lstm_2/lstm_cell_18/MatMulMatMullstm_2/strided_slice_2:output:01lstm_2/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_2/lstm_cell_18/MatMul?
+lstm_2/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp4lstm_2_lstm_cell_18_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02-
+lstm_2/lstm_cell_18/MatMul_1/ReadVariableOp?
lstm_2/lstm_cell_18/MatMul_1MatMullstm_2/zeros:output:03lstm_2/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_2/lstm_cell_18/MatMul_1?
lstm_2/lstm_cell_18/addAddV2$lstm_2/lstm_cell_18/MatMul:product:0&lstm_2/lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_2/lstm_cell_18/add?
*lstm_2/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp3lstm_2_lstm_cell_18_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*lstm_2/lstm_cell_18/BiasAdd/ReadVariableOp?
lstm_2/lstm_cell_18/BiasAddBiasAddlstm_2/lstm_cell_18/add:z:02lstm_2/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_2/lstm_cell_18/BiasAdd?
#lstm_2/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#lstm_2/lstm_cell_18/split/split_dim?
lstm_2/lstm_cell_18/splitSplit,lstm_2/lstm_cell_18/split/split_dim:output:0$lstm_2/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
lstm_2/lstm_cell_18/split?
lstm_2/lstm_cell_18/SigmoidSigmoid"lstm_2/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_2/lstm_cell_18/Sigmoid?
lstm_2/lstm_cell_18/Sigmoid_1Sigmoid"lstm_2/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_2/lstm_cell_18/Sigmoid_1?
lstm_2/lstm_cell_18/mulMul!lstm_2/lstm_cell_18/Sigmoid_1:y:0lstm_2/zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_2/lstm_cell_18/mul?
lstm_2/lstm_cell_18/Sigmoid_2Sigmoid"lstm_2/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_2/lstm_cell_18/Sigmoid_2?
lstm_2/lstm_cell_18/mul_1Mul"lstm_2/lstm_cell_18/split:output:2!lstm_2/lstm_cell_18/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
lstm_2/lstm_cell_18/mul_1?
lstm_2/lstm_cell_18/IdentityIdentitylstm_2/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_2/lstm_cell_18/Identity?
lstm_2/lstm_cell_18/IdentityN	IdentityNlstm_2/lstm_cell_18/mul_1:z:0"lstm_2/lstm_cell_18/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1072886*:
_output_shapes(
&:?????????@:?????????@2
lstm_2/lstm_cell_18/IdentityN?
lstm_2/lstm_cell_18/mul_2Mullstm_2/lstm_cell_18/Sigmoid:y:0&lstm_2/lstm_cell_18/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
lstm_2/lstm_cell_18/mul_2?
lstm_2/lstm_cell_18/add_1AddV2lstm_2/lstm_cell_18/mul:z:0lstm_2/lstm_cell_18/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
lstm_2/lstm_cell_18/add_1?
lstm_2/lstm_cell_18/Sigmoid_3Sigmoid"lstm_2/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_2/lstm_cell_18/Sigmoid_3?
lstm_2/lstm_cell_18/Sigmoid_4Sigmoidlstm_2/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_2/lstm_cell_18/Sigmoid_4?
lstm_2/lstm_cell_18/mul_3Mullstm_2/lstm_cell_18/add_1:z:0!lstm_2/lstm_cell_18/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
lstm_2/lstm_cell_18/mul_3?
lstm_2/lstm_cell_18/Identity_1Identitylstm_2/lstm_cell_18/mul_3:z:0*
T0*'
_output_shapes
:?????????@2 
lstm_2/lstm_cell_18/Identity_1?
lstm_2/lstm_cell_18/IdentityN_1	IdentityNlstm_2/lstm_cell_18/mul_3:z:0lstm_2/lstm_cell_18/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1072895*:
_output_shapes(
&:?????????@:?????????@2!
lstm_2/lstm_cell_18/IdentityN_1?
lstm_2/lstm_cell_18/mul_4Mul!lstm_2/lstm_cell_18/Sigmoid_3:y:0(lstm_2/lstm_cell_18/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_2/lstm_cell_18/mul_4?
$lstm_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2&
$lstm_2/TensorArrayV2_1/element_shape?
lstm_2/TensorArrayV2_1TensorListReserve-lstm_2/TensorArrayV2_1/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_2/TensorArrayV2_1\
lstm_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_2/time?
lstm_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
lstm_2/while/maximum_iterationsx
lstm_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_2/while/loop_counter?
lstm_2/whileWhile"lstm_2/while/loop_counter:output:0(lstm_2/while/maximum_iterations:output:0lstm_2/time:output:0lstm_2/TensorArrayV2_1:handle:0lstm_2/zeros:output:0lstm_2/zeros_1:output:0lstm_2/strided_slice_1:output:0>lstm_2/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_2_lstm_cell_18_matmul_readvariableop_resource4lstm_2_lstm_cell_18_matmul_1_readvariableop_resource3lstm_2_lstm_cell_18_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*%
bodyR
lstm_2_while_body_1072906*%
condR
lstm_2_while_cond_1072905*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
lstm_2/while?
7lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   29
7lstm_2/TensorArrayV2Stack/TensorListStack/element_shape?
)lstm_2/TensorArrayV2Stack/TensorListStackTensorListStacklstm_2/while:output:3@lstm_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype02+
)lstm_2/TensorArrayV2Stack/TensorListStack?
lstm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_2/strided_slice_3/stack?
lstm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_2/strided_slice_3/stack_1?
lstm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_3/stack_2?
lstm_2/strided_slice_3StridedSlice2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_2/strided_slice_3/stack:output:0'lstm_2/strided_slice_3/stack_1:output:0'lstm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
lstm_2/strided_slice_3?
lstm_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_2/transpose_1/perm?
lstm_2/transpose_1	Transpose2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@2
lstm_2/transpose_1t
lstm_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_2/runtime?
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2 
time_distributed/Reshape/shape?
time_distributed/ReshapeReshapelstm_2/transpose_1:y:0'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????@2
time_distributed/Reshape?
.time_distributed/dense_2/MatMul/ReadVariableOpReadVariableOp7time_distributed_dense_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype020
.time_distributed/dense_2/MatMul/ReadVariableOp?
time_distributed/dense_2/MatMulMatMul!time_distributed/Reshape:output:06time_distributed/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2!
time_distributed/dense_2/MatMul?
/time_distributed/dense_2/BiasAdd/ReadVariableOpReadVariableOp8time_distributed_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype021
/time_distributed/dense_2/BiasAdd/ReadVariableOp?
 time_distributed/dense_2/BiasAddBiasAdd)time_distributed/dense_2/MatMul:product:07time_distributed/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2"
 time_distributed/dense_2/BiasAdd?
 time_distributed/dense_2/SigmoidSigmoid)time_distributed/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2"
 time_distributed/dense_2/Sigmoid?
time_distributed/dense_2/mulMul)time_distributed/dense_2/BiasAdd:output:0$time_distributed/dense_2/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
time_distributed/dense_2/mul?
!time_distributed/dense_2/IdentityIdentity time_distributed/dense_2/mul:z:0*
T0*'
_output_shapes
:?????????@2#
!time_distributed/dense_2/Identity?
"time_distributed/dense_2/IdentityN	IdentityN time_distributed/dense_2/mul:z:0)time_distributed/dense_2/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1073007*:
_output_shapes(
&:?????????@:?????????@2$
"time_distributed/dense_2/IdentityN?
 time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   @   2"
 time_distributed/Reshape_1/shape?
time_distributed/Reshape_1Reshape+time_distributed/dense_2/IdentityN:output:0)time_distributed/Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????@2
time_distributed/Reshape_1?
 time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2"
 time_distributed/Reshape_2/shape?
time_distributed/Reshape_2Reshapelstm_2/transpose_1:y:0)time_distributed/Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????@2
time_distributed/Reshape_2?
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2"
 time_distributed_1/Reshape/shape?
time_distributed_1/ReshapeReshape#time_distributed/Reshape_1:output:0)time_distributed_1/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????@2
time_distributed_1/Reshape?
0time_distributed_1/dense_3/MatMul/ReadVariableOpReadVariableOp9time_distributed_1_dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype022
0time_distributed_1/dense_3/MatMul/ReadVariableOp?
!time_distributed_1/dense_3/MatMulMatMul#time_distributed_1/Reshape:output:08time_distributed_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!time_distributed_1/dense_3/MatMul?
1time_distributed_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype023
1time_distributed_1/dense_3/BiasAdd/ReadVariableOp?
"time_distributed_1/dense_3/BiasAddBiasAdd+time_distributed_1/dense_3/MatMul:product:09time_distributed_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2$
"time_distributed_1/dense_3/BiasAdd?
"time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      2$
"time_distributed_1/Reshape_1/shape?
time_distributed_1/Reshape_1Reshape+time_distributed_1/dense_3/BiasAdd:output:0+time_distributed_1/Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????2
time_distributed_1/Reshape_1?
"time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2$
"time_distributed_1/Reshape_2/shape?
time_distributed_1/Reshape_2Reshape#time_distributed/Reshape_1:output:0+time_distributed_1/Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????@2
time_distributed_1/Reshape_2?
IdentityIdentity%time_distributed_1/Reshape_1:output:0+^lstm_1/lstm_cell_17/BiasAdd/ReadVariableOp*^lstm_1/lstm_cell_17/MatMul/ReadVariableOp,^lstm_1/lstm_cell_17/MatMul_1/ReadVariableOp^lstm_1/while+^lstm_2/lstm_cell_18/BiasAdd/ReadVariableOp*^lstm_2/lstm_cell_18/MatMul/ReadVariableOp,^lstm_2/lstm_cell_18/MatMul_1/ReadVariableOp^lstm_2/while0^time_distributed/dense_2/BiasAdd/ReadVariableOp/^time_distributed/dense_2/MatMul/ReadVariableOp2^time_distributed_1/dense_3/BiasAdd/ReadVariableOp1^time_distributed_1/dense_3/MatMul/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : 2X
*lstm_1/lstm_cell_17/BiasAdd/ReadVariableOp*lstm_1/lstm_cell_17/BiasAdd/ReadVariableOp2V
)lstm_1/lstm_cell_17/MatMul/ReadVariableOp)lstm_1/lstm_cell_17/MatMul/ReadVariableOp2Z
+lstm_1/lstm_cell_17/MatMul_1/ReadVariableOp+lstm_1/lstm_cell_17/MatMul_1/ReadVariableOp2
lstm_1/whilelstm_1/while2X
*lstm_2/lstm_cell_18/BiasAdd/ReadVariableOp*lstm_2/lstm_cell_18/BiasAdd/ReadVariableOp2V
)lstm_2/lstm_cell_18/MatMul/ReadVariableOp)lstm_2/lstm_cell_18/MatMul/ReadVariableOp2Z
+lstm_2/lstm_cell_18/MatMul_1/ReadVariableOp+lstm_2/lstm_cell_18/MatMul_1/ReadVariableOp2
lstm_2/whilelstm_2/while2b
/time_distributed/dense_2/BiasAdd/ReadVariableOp/time_distributed/dense_2/BiasAdd/ReadVariableOp2`
.time_distributed/dense_2/MatMul/ReadVariableOp.time_distributed/dense_2/MatMul/ReadVariableOp2f
1time_distributed_1/dense_3/BiasAdd/ReadVariableOp1time_distributed_1/dense_3/BiasAdd/ReadVariableOp2d
0time_distributed_1/dense_3/MatMul/ReadVariableOp0time_distributed_1/dense_3/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1070583
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1070583___redundant_placeholder05
1while_while_cond_1070583___redundant_placeholder15
1while_while_cond_1070583___redundant_placeholder25
1while_while_cond_1070583___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
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
?
?
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_1074722

inputs8
&dense_3_matmul_readvariableop_resource:@5
'dense_3_biasadd_readvariableop_resource:
identity??dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOpo
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
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/BiasAddw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      2
Reshape_1/shape?
	Reshape_1Reshapedense_3/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????2
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
while_cond_1073884
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1073884___redundant_placeholder05
1while_while_cond_1073884___redundant_placeholder15
1while_while_cond_1073884___redundant_placeholder25
1while_while_cond_1073884___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
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
?
(__inference_lstm_2_layer_call_fn_1074514
inputs_0
unknown:
??
	unknown_0:	@?
	unknown_1:	?
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
GPU 2J 8? *L
fGRE
C__inference_lstm_2_layer_call_and_return_conditional_losses_10706532
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
M__inference_time_distributed_layer_call_and_return_conditional_losses_1071581

inputs8
&dense_2_matmul_readvariableop_resource:@@5
'dense_2_biasadd_readvariableop_resource:@
identity??dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOpo
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
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_2/BiasAddy
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_2/Sigmoid?
dense_2/mulMuldense_2/BiasAdd:output:0dense_2/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
dense_2/muls
dense_2/IdentityIdentitydense_2/mul:z:0*
T0*'
_output_shapes
:?????????@2
dense_2/Identity?
dense_2/IdentityN	IdentityNdense_2/mul:z:0dense_2/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1071572*:
_output_shapes(
&:?????????@:?????????@2
dense_2/IdentityNw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   @   2
Reshape_1/shape?
	Reshape_1Reshapedense_2/IdentityN:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????@2
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*+
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?Y
?
 __inference__traced_save_1075198
file_prefix(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop8
4savev2_lstm_1_lstm_cell_1_kernel_read_readvariableopB
>savev2_lstm_1_lstm_cell_1_recurrent_kernel_read_readvariableop6
2savev2_lstm_1_lstm_cell_1_bias_read_readvariableop8
4savev2_lstm_2_lstm_cell_2_kernel_read_readvariableopB
>savev2_lstm_2_lstm_cell_2_recurrent_kernel_read_readvariableop6
2savev2_lstm_2_lstm_cell_2_bias_read_readvariableop6
2savev2_time_distributed_kernel_read_readvariableop4
0savev2_time_distributed_bias_read_readvariableop8
4savev2_time_distributed_1_kernel_read_readvariableop6
2savev2_time_distributed_1_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop?
;savev2_adam_lstm_1_lstm_cell_1_kernel_m_read_readvariableopI
Esavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_m_read_readvariableop=
9savev2_adam_lstm_1_lstm_cell_1_bias_m_read_readvariableop?
;savev2_adam_lstm_2_lstm_cell_2_kernel_m_read_readvariableopI
Esavev2_adam_lstm_2_lstm_cell_2_recurrent_kernel_m_read_readvariableop=
9savev2_adam_lstm_2_lstm_cell_2_bias_m_read_readvariableop=
9savev2_adam_time_distributed_kernel_m_read_readvariableop;
7savev2_adam_time_distributed_bias_m_read_readvariableop?
;savev2_adam_time_distributed_1_kernel_m_read_readvariableop=
9savev2_adam_time_distributed_1_bias_m_read_readvariableop?
;savev2_adam_lstm_1_lstm_cell_1_kernel_v_read_readvariableopI
Esavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_v_read_readvariableop=
9savev2_adam_lstm_1_lstm_cell_1_bias_v_read_readvariableop?
;savev2_adam_lstm_2_lstm_cell_2_kernel_v_read_readvariableopI
Esavev2_adam_lstm_2_lstm_cell_2_recurrent_kernel_v_read_readvariableop=
9savev2_adam_lstm_2_lstm_cell_2_bias_v_read_readvariableop=
9savev2_adam_time_distributed_kernel_v_read_readvariableop;
7savev2_adam_time_distributed_bias_v_read_readvariableop?
;savev2_adam_time_distributed_1_kernel_v_read_readvariableop=
9savev2_adam_time_distributed_1_bias_v_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:**
dtype0*?
value?B?*B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:**
dtype0*g
value^B\*B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop4savev2_lstm_1_lstm_cell_1_kernel_read_readvariableop>savev2_lstm_1_lstm_cell_1_recurrent_kernel_read_readvariableop2savev2_lstm_1_lstm_cell_1_bias_read_readvariableop4savev2_lstm_2_lstm_cell_2_kernel_read_readvariableop>savev2_lstm_2_lstm_cell_2_recurrent_kernel_read_readvariableop2savev2_lstm_2_lstm_cell_2_bias_read_readvariableop2savev2_time_distributed_kernel_read_readvariableop0savev2_time_distributed_bias_read_readvariableop4savev2_time_distributed_1_kernel_read_readvariableop2savev2_time_distributed_1_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop;savev2_adam_lstm_1_lstm_cell_1_kernel_m_read_readvariableopEsavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_1_lstm_cell_1_bias_m_read_readvariableop;savev2_adam_lstm_2_lstm_cell_2_kernel_m_read_readvariableopEsavev2_adam_lstm_2_lstm_cell_2_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_2_lstm_cell_2_bias_m_read_readvariableop9savev2_adam_time_distributed_kernel_m_read_readvariableop7savev2_adam_time_distributed_bias_m_read_readvariableop;savev2_adam_time_distributed_1_kernel_m_read_readvariableop9savev2_adam_time_distributed_1_bias_m_read_readvariableop;savev2_adam_lstm_1_lstm_cell_1_kernel_v_read_readvariableopEsavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_1_lstm_cell_1_bias_v_read_readvariableop;savev2_adam_lstm_2_lstm_cell_2_kernel_v_read_readvariableopEsavev2_adam_lstm_2_lstm_cell_2_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_2_lstm_cell_2_bias_v_read_readvariableop9savev2_adam_time_distributed_kernel_v_read_readvariableop7savev2_adam_time_distributed_bias_v_read_readvariableop;savev2_adam_time_distributed_1_kernel_v_read_readvariableop9savev2_adam_time_distributed_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
?
while_cond_1071459
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1071459___redundant_placeholder05
1while_while_cond_1071459___redundant_placeholder15
1while_while_cond_1071459___redundant_placeholder25
1while_while_cond_1071459___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
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
?c
?
C__inference_lstm_2_layer_call_and_return_conditional_losses_1073979
inputs_0?
+lstm_cell_18_matmul_readvariableop_resource:
??@
-lstm_cell_18_matmul_1_readvariableop_resource:	@?;
,lstm_cell_18_biasadd_readvariableop_resource:	?
identity??#lstm_cell_18/BiasAdd/ReadVariableOp?"lstm_cell_18/MatMul/ReadVariableOp?$lstm_cell_18/MatMul_1/ReadVariableOp?whileF
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
"lstm_cell_18/MatMul/ReadVariableOpReadVariableOp+lstm_cell_18_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02$
"lstm_cell_18/MatMul/ReadVariableOp?
lstm_cell_18/MatMulMatMulstrided_slice_2:output:0*lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_18/MatMul?
$lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_18_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02&
$lstm_cell_18/MatMul_1/ReadVariableOp?
lstm_cell_18/MatMul_1MatMulzeros:output:0,lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_18/MatMul_1?
lstm_cell_18/addAddV2lstm_cell_18/MatMul:product:0lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_18/add?
#lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_18_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_18/BiasAdd/ReadVariableOp?
lstm_cell_18/BiasAddBiasAddlstm_cell_18/add:z:0+lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_18/BiasAdd~
lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_18/split/split_dim?
lstm_cell_18/splitSplit%lstm_cell_18/split/split_dim:output:0lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
lstm_cell_18/split?
lstm_cell_18/SigmoidSigmoidlstm_cell_18/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Sigmoid?
lstm_cell_18/Sigmoid_1Sigmoidlstm_cell_18/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Sigmoid_1?
lstm_cell_18/mulMullstm_cell_18/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/mul?
lstm_cell_18/Sigmoid_2Sigmoidlstm_cell_18/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Sigmoid_2?
lstm_cell_18/mul_1Mullstm_cell_18/split:output:2lstm_cell_18/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/mul_1?
lstm_cell_18/IdentityIdentitylstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Identity?
lstm_cell_18/IdentityN	IdentityNlstm_cell_18/mul_1:z:0lstm_cell_18/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1073865*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_18/IdentityN?
lstm_cell_18/mul_2Mullstm_cell_18/Sigmoid:y:0lstm_cell_18/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/mul_2?
lstm_cell_18/add_1AddV2lstm_cell_18/mul:z:0lstm_cell_18/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/add_1?
lstm_cell_18/Sigmoid_3Sigmoidlstm_cell_18/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Sigmoid_3?
lstm_cell_18/Sigmoid_4Sigmoidlstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Sigmoid_4?
lstm_cell_18/mul_3Mullstm_cell_18/add_1:z:0lstm_cell_18/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/mul_3?
lstm_cell_18/Identity_1Identitylstm_cell_18/mul_3:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Identity_1?
lstm_cell_18/IdentityN_1	IdentityNlstm_cell_18/mul_3:z:0lstm_cell_18/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1073874*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_18/IdentityN_1?
lstm_cell_18/mul_4Mullstm_cell_18/Sigmoid_3:y:0!lstm_cell_18/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/mul_4?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_18_matmul_readvariableop_resource-lstm_cell_18_matmul_1_readvariableop_resource,lstm_cell_18_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1073885*
condR
while_cond_1073884*K
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
IdentityIdentitytranspose_1:y:0$^lstm_cell_18/BiasAdd/ReadVariableOp#^lstm_cell_18/MatMul/ReadVariableOp%^lstm_cell_18/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :??????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2J
#lstm_cell_18/BiasAdd/ReadVariableOp#lstm_cell_18/BiasAdd/ReadVariableOp2H
"lstm_cell_18/MatMul/ReadVariableOp"lstm_cell_18/MatMul/ReadVariableOp2L
$lstm_cell_18/MatMul_1/ReadVariableOp$lstm_cell_18/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?

?
lstm_1_while_cond_1072370*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3,
(lstm_1_while_less_lstm_1_strided_slice_1C
?lstm_1_while_lstm_1_while_cond_1072370___redundant_placeholder0C
?lstm_1_while_lstm_1_while_cond_1072370___redundant_placeholder1C
?lstm_1_while_lstm_1_while_cond_1072370___redundant_placeholder2C
?lstm_1_while_lstm_1_while_cond_1072370___redundant_placeholder3
lstm_1_while_identity
?
lstm_1/while/LessLesslstm_1_while_placeholder(lstm_1_while_less_lstm_1_strided_slice_1*
T0*
_output_shapes
: 2
lstm_1/while/Lessr
lstm_1/while/IdentityIdentitylstm_1/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_1/while/Identity"7
lstm_1_while_identitylstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
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
?E
?
C__inference_lstm_2_layer_call_and_return_conditional_losses_1070433

inputs(
lstm_cell_18_1070351:
??'
lstm_cell_18_1070353:	@?#
lstm_cell_18_1070355:	?
identity??$lstm_cell_18/StatefulPartitionedCall?whileD
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
$lstm_cell_18/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_18_1070351lstm_cell_18_1070353lstm_cell_18_1070355*
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
I__inference_lstm_cell_18_layer_call_and_return_conditional_losses_10703502&
$lstm_cell_18/StatefulPartitionedCall?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_18_1070351lstm_cell_18_1070353lstm_cell_18_1070355*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1070364*
condR
while_cond_1070363*K
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
IdentityIdentitytranspose_1:y:0%^lstm_cell_18/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :??????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2L
$lstm_cell_18/StatefulPartitionedCall$lstm_cell_18/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?"
?
I__inference_lstm_cell_17_layer_call_and_return_conditional_losses_1074814

inputs
states_0
states_11
matmul_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?

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
BiasAddd
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
2*-
_gradient_op_typeCustomGradient-1074795*<
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
2*-
_gradient_op_typeCustomGradient-1074804*<
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

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 20
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
?	
?
%__inference_signature_wrapper_1072294
lstm_1_input
unknown:	?
	unknown_0:
??
	unknown_1:	?
	unknown_2:
??
	unknown_3:	@?
	unknown_4:	?
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
GPU 2J 8? *+
f&R$
"__inference__wrapped_model_10696152
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:?????????
&
_user_specified_namelstm_1_input
?
?
&sequential_1_lstm_1_while_cond_1069323D
@sequential_1_lstm_1_while_sequential_1_lstm_1_while_loop_counterJ
Fsequential_1_lstm_1_while_sequential_1_lstm_1_while_maximum_iterations)
%sequential_1_lstm_1_while_placeholder+
'sequential_1_lstm_1_while_placeholder_1+
'sequential_1_lstm_1_while_placeholder_2+
'sequential_1_lstm_1_while_placeholder_3F
Bsequential_1_lstm_1_while_less_sequential_1_lstm_1_strided_slice_1]
Ysequential_1_lstm_1_while_sequential_1_lstm_1_while_cond_1069323___redundant_placeholder0]
Ysequential_1_lstm_1_while_sequential_1_lstm_1_while_cond_1069323___redundant_placeholder1]
Ysequential_1_lstm_1_while_sequential_1_lstm_1_while_cond_1069323___redundant_placeholder2]
Ysequential_1_lstm_1_while_sequential_1_lstm_1_while_cond_1069323___redundant_placeholder3&
"sequential_1_lstm_1_while_identity
?
sequential_1/lstm_1/while/LessLess%sequential_1_lstm_1_while_placeholderBsequential_1_lstm_1_while_less_sequential_1_lstm_1_strided_slice_1*
T0*
_output_shapes
: 2 
sequential_1/lstm_1/while/Less?
"sequential_1/lstm_1/while/IdentityIdentity"sequential_1/lstm_1/while/Less:z:0*
T0
*
_output_shapes
: 2$
"sequential_1/lstm_1/while/Identity"Q
"sequential_1_lstm_1_while_identity+sequential_1/lstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
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
?
?
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_1071659

inputs8
&dense_3_matmul_readvariableop_resource:@5
'dense_3_biasadd_readvariableop_resource:
identity??dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOpo
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
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/BiasAddw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      2
Reshape_1/shape?
	Reshape_1Reshapedense_3/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????2
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
M__inference_time_distributed_layer_call_and_return_conditional_losses_1074610

inputs8
&dense_2_matmul_readvariableop_resource:@@5
'dense_2_biasadd_readvariableop_resource:@
identity??dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOpo
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
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_2/BiasAddy
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_2/Sigmoid?
dense_2/mulMuldense_2/BiasAdd:output:0dense_2/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
dense_2/muls
dense_2/IdentityIdentitydense_2/mul:z:0*
T0*'
_output_shapes
:?????????@2
dense_2/Identity?
dense_2/IdentityN	IdentityNdense_2/mul:z:0dense_2/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1074601*:
_output_shapes(
&:?????????@:?????????@2
dense_2/IdentityNw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   @   2
Reshape_1/shape?
	Reshape_1Reshapedense_2/IdentityN:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????@2
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*+
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
.__inference_lstm_cell_17_layer_call_fn_1074890

inputs
states_0
states_1
unknown:	?
	unknown_0:
??
	unknown_1:	?
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
I__inference_lstm_cell_17_layer_call_and_return_conditional_losses_10698562
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

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 22
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
?
I__inference_lstm_cell_17_layer_call_and_return_conditional_losses_1069700

inputs

states
states_11
matmul_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?

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
BiasAddd
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
2*-
_gradient_op_typeCustomGradient-1069681*<
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
2*-
_gradient_op_typeCustomGradient-1069690*<
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

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 20
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
?E
?
C__inference_lstm_1_layer_call_and_return_conditional_losses_1070003

inputs'
lstm_cell_17_1069921:	?(
lstm_cell_17_1069923:
??#
lstm_cell_17_1069925:	?
identity??$lstm_cell_17/StatefulPartitionedCall?whileD
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
$lstm_cell_17/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_17_1069921lstm_cell_17_1069923lstm_cell_17_1069925*
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
I__inference_lstm_cell_17_layer_call_and_return_conditional_losses_10698562&
$lstm_cell_17/StatefulPartitionedCall?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_17_1069921lstm_cell_17_1069923lstm_cell_17_1069925*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1069934*
condR
while_cond_1069933*M
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
IdentityIdentitytranspose_1:y:0%^lstm_cell_17/StatefulPartitionedCall^while*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_17/StatefulPartitionedCall$lstm_cell_17/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?E
?
C__inference_lstm_2_layer_call_and_return_conditional_losses_1070653

inputs(
lstm_cell_18_1070571:
??'
lstm_cell_18_1070573:	@?#
lstm_cell_18_1070575:	?
identity??$lstm_cell_18/StatefulPartitionedCall?whileD
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
$lstm_cell_18/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_18_1070571lstm_cell_18_1070573lstm_cell_18_1070575*
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
I__inference_lstm_cell_18_layer_call_and_return_conditional_losses_10705062&
$lstm_cell_18/StatefulPartitionedCall?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_18_1070571lstm_cell_18_1070573lstm_cell_18_1070575*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1070584*
condR
while_cond_1070583*K
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
IdentityIdentitytranspose_1:y:0%^lstm_cell_18/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :??????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2L
$lstm_cell_18/StatefulPartitionedCall$lstm_cell_18/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?

?
.__inference_sequential_1_layer_call_fn_1073055

inputs
unknown:	?
	unknown_0:
??
	unknown_1:	?
	unknown_2:
??
	unknown_3:	@?
	unknown_4:	?
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:
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
GPU 2J 8? *R
fMRK
I__inference_sequential_1_layer_call_and_return_conditional_losses_10716112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1073327
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1073327___redundant_placeholder05
1while_while_cond_1073327___redundant_placeholder15
1while_while_cond_1073327___redundant_placeholder25
1while_while_cond_1073327___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
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
?X
?

lstm_2_while_body_1072906*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3)
%lstm_2_while_lstm_2_strided_slice_1_0e
alstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0N
:lstm_2_while_lstm_cell_18_matmul_readvariableop_resource_0:
??O
<lstm_2_while_lstm_cell_18_matmul_1_readvariableop_resource_0:	@?J
;lstm_2_while_lstm_cell_18_biasadd_readvariableop_resource_0:	?
lstm_2_while_identity
lstm_2_while_identity_1
lstm_2_while_identity_2
lstm_2_while_identity_3
lstm_2_while_identity_4
lstm_2_while_identity_5'
#lstm_2_while_lstm_2_strided_slice_1c
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensorL
8lstm_2_while_lstm_cell_18_matmul_readvariableop_resource:
??M
:lstm_2_while_lstm_cell_18_matmul_1_readvariableop_resource:	@?H
9lstm_2_while_lstm_cell_18_biasadd_readvariableop_resource:	???0lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOp?/lstm_2/while/lstm_cell_18/MatMul/ReadVariableOp?1lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOp?
>lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2@
>lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0lstm_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0lstm_2_while_placeholderGlstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype022
0lstm_2/while/TensorArrayV2Read/TensorListGetItem?
/lstm_2/while/lstm_cell_18/MatMul/ReadVariableOpReadVariableOp:lstm_2_while_lstm_cell_18_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype021
/lstm_2/while/lstm_cell_18/MatMul/ReadVariableOp?
 lstm_2/while/lstm_cell_18/MatMulMatMul7lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_2/while/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 lstm_2/while/lstm_cell_18/MatMul?
1lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp<lstm_2_while_lstm_cell_18_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype023
1lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOp?
"lstm_2/while/lstm_cell_18/MatMul_1MatMullstm_2_while_placeholder_29lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2$
"lstm_2/while/lstm_cell_18/MatMul_1?
lstm_2/while/lstm_cell_18/addAddV2*lstm_2/while/lstm_cell_18/MatMul:product:0,lstm_2/while/lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_2/while/lstm_cell_18/add?
0lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp;lstm_2_while_lstm_cell_18_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype022
0lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOp?
!lstm_2/while/lstm_cell_18/BiasAddBiasAdd!lstm_2/while/lstm_cell_18/add:z:08lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!lstm_2/while/lstm_cell_18/BiasAdd?
)lstm_2/while/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2+
)lstm_2/while/lstm_cell_18/split/split_dim?
lstm_2/while/lstm_cell_18/splitSplit2lstm_2/while/lstm_cell_18/split/split_dim:output:0*lstm_2/while/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2!
lstm_2/while/lstm_cell_18/split?
!lstm_2/while/lstm_cell_18/SigmoidSigmoid(lstm_2/while/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:?????????@2#
!lstm_2/while/lstm_cell_18/Sigmoid?
#lstm_2/while/lstm_cell_18/Sigmoid_1Sigmoid(lstm_2/while/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:?????????@2%
#lstm_2/while/lstm_cell_18/Sigmoid_1?
lstm_2/while/lstm_cell_18/mulMul'lstm_2/while/lstm_cell_18/Sigmoid_1:y:0lstm_2_while_placeholder_3*
T0*'
_output_shapes
:?????????@2
lstm_2/while/lstm_cell_18/mul?
#lstm_2/while/lstm_cell_18/Sigmoid_2Sigmoid(lstm_2/while/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:?????????@2%
#lstm_2/while/lstm_cell_18/Sigmoid_2?
lstm_2/while/lstm_cell_18/mul_1Mul(lstm_2/while/lstm_cell_18/split:output:2'lstm_2/while/lstm_cell_18/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2!
lstm_2/while/lstm_cell_18/mul_1?
"lstm_2/while/lstm_cell_18/IdentityIdentity#lstm_2/while/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:?????????@2$
"lstm_2/while/lstm_cell_18/Identity?
#lstm_2/while/lstm_cell_18/IdentityN	IdentityN#lstm_2/while/lstm_cell_18/mul_1:z:0(lstm_2/while/lstm_cell_18/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1072948*:
_output_shapes(
&:?????????@:?????????@2%
#lstm_2/while/lstm_cell_18/IdentityN?
lstm_2/while/lstm_cell_18/mul_2Mul%lstm_2/while/lstm_cell_18/Sigmoid:y:0,lstm_2/while/lstm_cell_18/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2!
lstm_2/while/lstm_cell_18/mul_2?
lstm_2/while/lstm_cell_18/add_1AddV2!lstm_2/while/lstm_cell_18/mul:z:0#lstm_2/while/lstm_cell_18/mul_2:z:0*
T0*'
_output_shapes
:?????????@2!
lstm_2/while/lstm_cell_18/add_1?
#lstm_2/while/lstm_cell_18/Sigmoid_3Sigmoid(lstm_2/while/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:?????????@2%
#lstm_2/while/lstm_cell_18/Sigmoid_3?
#lstm_2/while/lstm_cell_18/Sigmoid_4Sigmoid#lstm_2/while/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:?????????@2%
#lstm_2/while/lstm_cell_18/Sigmoid_4?
lstm_2/while/lstm_cell_18/mul_3Mul#lstm_2/while/lstm_cell_18/add_1:z:0'lstm_2/while/lstm_cell_18/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2!
lstm_2/while/lstm_cell_18/mul_3?
$lstm_2/while/lstm_cell_18/Identity_1Identity#lstm_2/while/lstm_cell_18/mul_3:z:0*
T0*'
_output_shapes
:?????????@2&
$lstm_2/while/lstm_cell_18/Identity_1?
%lstm_2/while/lstm_cell_18/IdentityN_1	IdentityN#lstm_2/while/lstm_cell_18/mul_3:z:0#lstm_2/while/lstm_cell_18/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1072957*:
_output_shapes(
&:?????????@:?????????@2'
%lstm_2/while/lstm_cell_18/IdentityN_1?
lstm_2/while/lstm_cell_18/mul_4Mul'lstm_2/while/lstm_cell_18/Sigmoid_3:y:0.lstm_2/while/lstm_cell_18/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2!
lstm_2/while/lstm_cell_18/mul_4?
1lstm_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_2_while_placeholder_1lstm_2_while_placeholder#lstm_2/while/lstm_cell_18/mul_4:z:0*
_output_shapes
: *
element_dtype023
1lstm_2/while/TensorArrayV2Write/TensorListSetItemj
lstm_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/while/add/y?
lstm_2/while/addAddV2lstm_2_while_placeholderlstm_2/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_2/while/addn
lstm_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/while/add_1/y?
lstm_2/while/add_1AddV2&lstm_2_while_lstm_2_while_loop_counterlstm_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_2/while/add_1?
lstm_2/while/IdentityIdentitylstm_2/while/add_1:z:01^lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_18/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity?
lstm_2/while/Identity_1Identity,lstm_2_while_lstm_2_while_maximum_iterations1^lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_18/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_1?
lstm_2/while/Identity_2Identitylstm_2/while/add:z:01^lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_18/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_2?
lstm_2/while/Identity_3IdentityAlstm_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:01^lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_18/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_3?
lstm_2/while/Identity_4Identity#lstm_2/while/lstm_cell_18/mul_4:z:01^lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_18/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
lstm_2/while/Identity_4?
lstm_2/while/Identity_5Identity#lstm_2/while/lstm_cell_18/add_1:z:01^lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_18/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
lstm_2/while/Identity_5"7
lstm_2_while_identitylstm_2/while/Identity:output:0";
lstm_2_while_identity_1 lstm_2/while/Identity_1:output:0";
lstm_2_while_identity_2 lstm_2/while/Identity_2:output:0";
lstm_2_while_identity_3 lstm_2/while/Identity_3:output:0";
lstm_2_while_identity_4 lstm_2/while/Identity_4:output:0";
lstm_2_while_identity_5 lstm_2/while/Identity_5:output:0"L
#lstm_2_while_lstm_2_strided_slice_1%lstm_2_while_lstm_2_strided_slice_1_0"x
9lstm_2_while_lstm_cell_18_biasadd_readvariableop_resource;lstm_2_while_lstm_cell_18_biasadd_readvariableop_resource_0"z
:lstm_2_while_lstm_cell_18_matmul_1_readvariableop_resource<lstm_2_while_lstm_cell_18_matmul_1_readvariableop_resource_0"v
8lstm_2_while_lstm_cell_18_matmul_readvariableop_resource:lstm_2_while_lstm_cell_18_matmul_readvariableop_resource_0"?
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensoralstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2d
0lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOp0lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOp2b
/lstm_2/while/lstm_cell_18/MatMul/ReadVariableOp/lstm_2/while/lstm_cell_18/MatMul/ReadVariableOp2f
1lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOp1lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOp: 
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
?m
?
&sequential_1_lstm_1_while_body_1069324D
@sequential_1_lstm_1_while_sequential_1_lstm_1_while_loop_counterJ
Fsequential_1_lstm_1_while_sequential_1_lstm_1_while_maximum_iterations)
%sequential_1_lstm_1_while_placeholder+
'sequential_1_lstm_1_while_placeholder_1+
'sequential_1_lstm_1_while_placeholder_2+
'sequential_1_lstm_1_while_placeholder_3C
?sequential_1_lstm_1_while_sequential_1_lstm_1_strided_slice_1_0
{sequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensor_0Z
Gsequential_1_lstm_1_while_lstm_cell_17_matmul_readvariableop_resource_0:	?]
Isequential_1_lstm_1_while_lstm_cell_17_matmul_1_readvariableop_resource_0:
??W
Hsequential_1_lstm_1_while_lstm_cell_17_biasadd_readvariableop_resource_0:	?&
"sequential_1_lstm_1_while_identity(
$sequential_1_lstm_1_while_identity_1(
$sequential_1_lstm_1_while_identity_2(
$sequential_1_lstm_1_while_identity_3(
$sequential_1_lstm_1_while_identity_4(
$sequential_1_lstm_1_while_identity_5A
=sequential_1_lstm_1_while_sequential_1_lstm_1_strided_slice_1}
ysequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensorX
Esequential_1_lstm_1_while_lstm_cell_17_matmul_readvariableop_resource:	?[
Gsequential_1_lstm_1_while_lstm_cell_17_matmul_1_readvariableop_resource:
??U
Fsequential_1_lstm_1_while_lstm_cell_17_biasadd_readvariableop_resource:	???=sequential_1/lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOp?<sequential_1/lstm_1/while/lstm_cell_17/MatMul/ReadVariableOp?>sequential_1/lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOp?
Ksequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2M
Ksequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape?
=sequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensor_0%sequential_1_lstm_1_while_placeholderTsequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02?
=sequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem?
<sequential_1/lstm_1/while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOpGsequential_1_lstm_1_while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02>
<sequential_1/lstm_1/while/lstm_cell_17/MatMul/ReadVariableOp?
-sequential_1/lstm_1/while/lstm_cell_17/MatMulMatMulDsequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0Dsequential_1/lstm_1/while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2/
-sequential_1/lstm_1/while/lstm_cell_17/MatMul?
>sequential_1/lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOpIsequential_1_lstm_1_while_lstm_cell_17_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02@
>sequential_1/lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOp?
/sequential_1/lstm_1/while/lstm_cell_17/MatMul_1MatMul'sequential_1_lstm_1_while_placeholder_2Fsequential_1/lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????21
/sequential_1/lstm_1/while/lstm_cell_17/MatMul_1?
*sequential_1/lstm_1/while/lstm_cell_17/addAddV27sequential_1/lstm_1/while/lstm_cell_17/MatMul:product:09sequential_1/lstm_1/while/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2,
*sequential_1/lstm_1/while/lstm_cell_17/add?
=sequential_1/lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOpHsequential_1_lstm_1_while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02?
=sequential_1/lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOp?
.sequential_1/lstm_1/while/lstm_cell_17/BiasAddBiasAdd.sequential_1/lstm_1/while/lstm_cell_17/add:z:0Esequential_1/lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????20
.sequential_1/lstm_1/while/lstm_cell_17/BiasAdd?
6sequential_1/lstm_1/while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :28
6sequential_1/lstm_1/while/lstm_cell_17/split/split_dim?
,sequential_1/lstm_1/while/lstm_cell_17/splitSplit?sequential_1/lstm_1/while/lstm_cell_17/split/split_dim:output:07sequential_1/lstm_1/while/lstm_cell_17/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2.
,sequential_1/lstm_1/while/lstm_cell_17/split?
.sequential_1/lstm_1/while/lstm_cell_17/SigmoidSigmoid5sequential_1/lstm_1/while/lstm_cell_17/split:output:0*
T0*(
_output_shapes
:??????????20
.sequential_1/lstm_1/while/lstm_cell_17/Sigmoid?
0sequential_1/lstm_1/while/lstm_cell_17/Sigmoid_1Sigmoid5sequential_1/lstm_1/while/lstm_cell_17/split:output:1*
T0*(
_output_shapes
:??????????22
0sequential_1/lstm_1/while/lstm_cell_17/Sigmoid_1?
*sequential_1/lstm_1/while/lstm_cell_17/mulMul4sequential_1/lstm_1/while/lstm_cell_17/Sigmoid_1:y:0'sequential_1_lstm_1_while_placeholder_3*
T0*(
_output_shapes
:??????????2,
*sequential_1/lstm_1/while/lstm_cell_17/mul?
0sequential_1/lstm_1/while/lstm_cell_17/Sigmoid_2Sigmoid5sequential_1/lstm_1/while/lstm_cell_17/split:output:2*
T0*(
_output_shapes
:??????????22
0sequential_1/lstm_1/while/lstm_cell_17/Sigmoid_2?
,sequential_1/lstm_1/while/lstm_cell_17/mul_1Mul5sequential_1/lstm_1/while/lstm_cell_17/split:output:24sequential_1/lstm_1/while/lstm_cell_17/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2.
,sequential_1/lstm_1/while/lstm_cell_17/mul_1?
/sequential_1/lstm_1/while/lstm_cell_17/IdentityIdentity0sequential_1/lstm_1/while/lstm_cell_17/mul_1:z:0*
T0*(
_output_shapes
:??????????21
/sequential_1/lstm_1/while/lstm_cell_17/Identity?
0sequential_1/lstm_1/while/lstm_cell_17/IdentityN	IdentityN0sequential_1/lstm_1/while/lstm_cell_17/mul_1:z:05sequential_1/lstm_1/while/lstm_cell_17/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1069366*<
_output_shapes*
(:??????????:??????????22
0sequential_1/lstm_1/while/lstm_cell_17/IdentityN?
,sequential_1/lstm_1/while/lstm_cell_17/mul_2Mul2sequential_1/lstm_1/while/lstm_cell_17/Sigmoid:y:09sequential_1/lstm_1/while/lstm_cell_17/IdentityN:output:0*
T0*(
_output_shapes
:??????????2.
,sequential_1/lstm_1/while/lstm_cell_17/mul_2?
,sequential_1/lstm_1/while/lstm_cell_17/add_1AddV2.sequential_1/lstm_1/while/lstm_cell_17/mul:z:00sequential_1/lstm_1/while/lstm_cell_17/mul_2:z:0*
T0*(
_output_shapes
:??????????2.
,sequential_1/lstm_1/while/lstm_cell_17/add_1?
0sequential_1/lstm_1/while/lstm_cell_17/Sigmoid_3Sigmoid5sequential_1/lstm_1/while/lstm_cell_17/split:output:3*
T0*(
_output_shapes
:??????????22
0sequential_1/lstm_1/while/lstm_cell_17/Sigmoid_3?
0sequential_1/lstm_1/while/lstm_cell_17/Sigmoid_4Sigmoid0sequential_1/lstm_1/while/lstm_cell_17/add_1:z:0*
T0*(
_output_shapes
:??????????22
0sequential_1/lstm_1/while/lstm_cell_17/Sigmoid_4?
,sequential_1/lstm_1/while/lstm_cell_17/mul_3Mul0sequential_1/lstm_1/while/lstm_cell_17/add_1:z:04sequential_1/lstm_1/while/lstm_cell_17/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2.
,sequential_1/lstm_1/while/lstm_cell_17/mul_3?
1sequential_1/lstm_1/while/lstm_cell_17/Identity_1Identity0sequential_1/lstm_1/while/lstm_cell_17/mul_3:z:0*
T0*(
_output_shapes
:??????????23
1sequential_1/lstm_1/while/lstm_cell_17/Identity_1?
2sequential_1/lstm_1/while/lstm_cell_17/IdentityN_1	IdentityN0sequential_1/lstm_1/while/lstm_cell_17/mul_3:z:00sequential_1/lstm_1/while/lstm_cell_17/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1069375*<
_output_shapes*
(:??????????:??????????24
2sequential_1/lstm_1/while/lstm_cell_17/IdentityN_1?
,sequential_1/lstm_1/while/lstm_cell_17/mul_4Mul4sequential_1/lstm_1/while/lstm_cell_17/Sigmoid_3:y:0;sequential_1/lstm_1/while/lstm_cell_17/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2.
,sequential_1/lstm_1/while/lstm_cell_17/mul_4?
>sequential_1/lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_1_lstm_1_while_placeholder_1%sequential_1_lstm_1_while_placeholder0sequential_1/lstm_1/while/lstm_cell_17/mul_4:z:0*
_output_shapes
: *
element_dtype02@
>sequential_1/lstm_1/while/TensorArrayV2Write/TensorListSetItem?
sequential_1/lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_1/lstm_1/while/add/y?
sequential_1/lstm_1/while/addAddV2%sequential_1_lstm_1_while_placeholder(sequential_1/lstm_1/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_1/lstm_1/while/add?
!sequential_1/lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_1/lstm_1/while/add_1/y?
sequential_1/lstm_1/while/add_1AddV2@sequential_1_lstm_1_while_sequential_1_lstm_1_while_loop_counter*sequential_1/lstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
sequential_1/lstm_1/while/add_1?
"sequential_1/lstm_1/while/IdentityIdentity#sequential_1/lstm_1/while/add_1:z:0>^sequential_1/lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_17/MatMul/ReadVariableOp?^sequential_1/lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2$
"sequential_1/lstm_1/while/Identity?
$sequential_1/lstm_1/while/Identity_1IdentityFsequential_1_lstm_1_while_sequential_1_lstm_1_while_maximum_iterations>^sequential_1/lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_17/MatMul/ReadVariableOp?^sequential_1/lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_1/while/Identity_1?
$sequential_1/lstm_1/while/Identity_2Identity!sequential_1/lstm_1/while/add:z:0>^sequential_1/lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_17/MatMul/ReadVariableOp?^sequential_1/lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_1/while/Identity_2?
$sequential_1/lstm_1/while/Identity_3IdentityNsequential_1/lstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^sequential_1/lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_17/MatMul/ReadVariableOp?^sequential_1/lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_1/while/Identity_3?
$sequential_1/lstm_1/while/Identity_4Identity0sequential_1/lstm_1/while/lstm_cell_17/mul_4:z:0>^sequential_1/lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_17/MatMul/ReadVariableOp?^sequential_1/lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2&
$sequential_1/lstm_1/while/Identity_4?
$sequential_1/lstm_1/while/Identity_5Identity0sequential_1/lstm_1/while/lstm_cell_17/add_1:z:0>^sequential_1/lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_17/MatMul/ReadVariableOp?^sequential_1/lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2&
$sequential_1/lstm_1/while/Identity_5"Q
"sequential_1_lstm_1_while_identity+sequential_1/lstm_1/while/Identity:output:0"U
$sequential_1_lstm_1_while_identity_1-sequential_1/lstm_1/while/Identity_1:output:0"U
$sequential_1_lstm_1_while_identity_2-sequential_1/lstm_1/while/Identity_2:output:0"U
$sequential_1_lstm_1_while_identity_3-sequential_1/lstm_1/while/Identity_3:output:0"U
$sequential_1_lstm_1_while_identity_4-sequential_1/lstm_1/while/Identity_4:output:0"U
$sequential_1_lstm_1_while_identity_5-sequential_1/lstm_1/while/Identity_5:output:0"?
Fsequential_1_lstm_1_while_lstm_cell_17_biasadd_readvariableop_resourceHsequential_1_lstm_1_while_lstm_cell_17_biasadd_readvariableop_resource_0"?
Gsequential_1_lstm_1_while_lstm_cell_17_matmul_1_readvariableop_resourceIsequential_1_lstm_1_while_lstm_cell_17_matmul_1_readvariableop_resource_0"?
Esequential_1_lstm_1_while_lstm_cell_17_matmul_readvariableop_resourceGsequential_1_lstm_1_while_lstm_cell_17_matmul_readvariableop_resource_0"?
=sequential_1_lstm_1_while_sequential_1_lstm_1_strided_slice_1?sequential_1_lstm_1_while_sequential_1_lstm_1_strided_slice_1_0"?
ysequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensor{sequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2~
=sequential_1/lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOp=sequential_1/lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOp2|
<sequential_1/lstm_1/while/lstm_cell_17/MatMul/ReadVariableOp<sequential_1/lstm_1/while/lstm_cell_17/MatMul/ReadVariableOp2?
>sequential_1/lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOp>sequential_1/lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOp: 
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
?c
?
C__inference_lstm_2_layer_call_and_return_conditional_losses_1071888

inputs?
+lstm_cell_18_matmul_readvariableop_resource:
??@
-lstm_cell_18_matmul_1_readvariableop_resource:	@?;
,lstm_cell_18_biasadd_readvariableop_resource:	?
identity??#lstm_cell_18/BiasAdd/ReadVariableOp?"lstm_cell_18/MatMul/ReadVariableOp?$lstm_cell_18/MatMul_1/ReadVariableOp?whileD
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
"lstm_cell_18/MatMul/ReadVariableOpReadVariableOp+lstm_cell_18_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02$
"lstm_cell_18/MatMul/ReadVariableOp?
lstm_cell_18/MatMulMatMulstrided_slice_2:output:0*lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_18/MatMul?
$lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_18_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02&
$lstm_cell_18/MatMul_1/ReadVariableOp?
lstm_cell_18/MatMul_1MatMulzeros:output:0,lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_18/MatMul_1?
lstm_cell_18/addAddV2lstm_cell_18/MatMul:product:0lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_18/add?
#lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_18_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_18/BiasAdd/ReadVariableOp?
lstm_cell_18/BiasAddBiasAddlstm_cell_18/add:z:0+lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_18/BiasAdd~
lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_18/split/split_dim?
lstm_cell_18/splitSplit%lstm_cell_18/split/split_dim:output:0lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
lstm_cell_18/split?
lstm_cell_18/SigmoidSigmoidlstm_cell_18/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Sigmoid?
lstm_cell_18/Sigmoid_1Sigmoidlstm_cell_18/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Sigmoid_1?
lstm_cell_18/mulMullstm_cell_18/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/mul?
lstm_cell_18/Sigmoid_2Sigmoidlstm_cell_18/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Sigmoid_2?
lstm_cell_18/mul_1Mullstm_cell_18/split:output:2lstm_cell_18/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/mul_1?
lstm_cell_18/IdentityIdentitylstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Identity?
lstm_cell_18/IdentityN	IdentityNlstm_cell_18/mul_1:z:0lstm_cell_18/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1071774*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_18/IdentityN?
lstm_cell_18/mul_2Mullstm_cell_18/Sigmoid:y:0lstm_cell_18/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/mul_2?
lstm_cell_18/add_1AddV2lstm_cell_18/mul:z:0lstm_cell_18/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/add_1?
lstm_cell_18/Sigmoid_3Sigmoidlstm_cell_18/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Sigmoid_3?
lstm_cell_18/Sigmoid_4Sigmoidlstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Sigmoid_4?
lstm_cell_18/mul_3Mullstm_cell_18/add_1:z:0lstm_cell_18/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/mul_3?
lstm_cell_18/Identity_1Identitylstm_cell_18/mul_3:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/Identity_1?
lstm_cell_18/IdentityN_1	IdentityNlstm_cell_18/mul_3:z:0lstm_cell_18/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1071783*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_18/IdentityN_1?
lstm_cell_18/mul_4Mullstm_cell_18/Sigmoid_3:y:0!lstm_cell_18/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_18/mul_4?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_18_matmul_readvariableop_resource-lstm_cell_18_matmul_1_readvariableop_resource,lstm_cell_18_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1071794*
condR
while_cond_1071793*K
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
IdentityIdentitytranspose_1:y:0$^lstm_cell_18/BiasAdd/ReadVariableOp#^lstm_cell_18/MatMul/ReadVariableOp%^lstm_cell_18/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2J
#lstm_cell_18/BiasAdd/ReadVariableOp#lstm_cell_18/BiasAdd/ReadVariableOp2H
"lstm_cell_18/MatMul/ReadVariableOp"lstm_cell_18/MatMul/ReadVariableOp2L
$lstm_cell_18/MatMul_1/ReadVariableOp$lstm_cell_18/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_lstm_1_layer_call_fn_1073808

inputs
unknown:	?
	unknown_0:
??
	unknown_1:	?
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
GPU 2J 8? *L
fGRE
C__inference_lstm_1_layer_call_and_return_conditional_losses_10720812
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?L
?
while_body_1074398
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_18_matmul_readvariableop_resource_0:
??H
5while_lstm_cell_18_matmul_1_readvariableop_resource_0:	@?C
4while_lstm_cell_18_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_18_matmul_readvariableop_resource:
??F
3while_lstm_cell_18_matmul_1_readvariableop_resource:	@?A
2while_lstm_cell_18_biasadd_readvariableop_resource:	???)while/lstm_cell_18/BiasAdd/ReadVariableOp?(while/lstm_cell_18/MatMul/ReadVariableOp?*while/lstm_cell_18/MatMul_1/ReadVariableOp?
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
(while/lstm_cell_18/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_18_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02*
(while/lstm_cell_18/MatMul/ReadVariableOp?
while/lstm_cell_18/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_18/MatMul?
*while/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_18_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02,
*while/lstm_cell_18/MatMul_1/ReadVariableOp?
while/lstm_cell_18/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_18/MatMul_1?
while/lstm_cell_18/addAddV2#while/lstm_cell_18/MatMul:product:0%while/lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_18/add?
)while/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_18_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_18/BiasAdd/ReadVariableOp?
while/lstm_cell_18/BiasAddBiasAddwhile/lstm_cell_18/add:z:01while/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_18/BiasAdd?
"while/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_18/split/split_dim?
while/lstm_cell_18/splitSplit+while/lstm_cell_18/split/split_dim:output:0#while/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
while/lstm_cell_18/split?
while/lstm_cell_18/SigmoidSigmoid!while/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Sigmoid?
while/lstm_cell_18/Sigmoid_1Sigmoid!while/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Sigmoid_1?
while/lstm_cell_18/mulMul while/lstm_cell_18/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/mul?
while/lstm_cell_18/Sigmoid_2Sigmoid!while/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Sigmoid_2?
while/lstm_cell_18/mul_1Mul!while/lstm_cell_18/split:output:2 while/lstm_cell_18/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/mul_1?
while/lstm_cell_18/IdentityIdentitywhile/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Identity?
while/lstm_cell_18/IdentityN	IdentityNwhile/lstm_cell_18/mul_1:z:0!while/lstm_cell_18/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1074440*:
_output_shapes(
&:?????????@:?????????@2
while/lstm_cell_18/IdentityN?
while/lstm_cell_18/mul_2Mulwhile/lstm_cell_18/Sigmoid:y:0%while/lstm_cell_18/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/mul_2?
while/lstm_cell_18/add_1AddV2while/lstm_cell_18/mul:z:0while/lstm_cell_18/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/add_1?
while/lstm_cell_18/Sigmoid_3Sigmoid!while/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Sigmoid_3?
while/lstm_cell_18/Sigmoid_4Sigmoidwhile/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Sigmoid_4?
while/lstm_cell_18/mul_3Mulwhile/lstm_cell_18/add_1:z:0 while/lstm_cell_18/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/mul_3?
while/lstm_cell_18/Identity_1Identitywhile/lstm_cell_18/mul_3:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Identity_1?
while/lstm_cell_18/IdentityN_1	IdentityNwhile/lstm_cell_18/mul_3:z:0while/lstm_cell_18/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1074449*:
_output_shapes(
&:?????????@:?????????@2 
while/lstm_cell_18/IdentityN_1?
while/lstm_cell_18/mul_4Mul while/lstm_cell_18/Sigmoid_3:y:0'while/lstm_cell_18/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/mul_4?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_18/mul_4:z:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_18/mul_4:z:0*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_18/add_1:z:0*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_18_biasadd_readvariableop_resource4while_lstm_cell_18_biasadd_readvariableop_resource_0"l
3while_lstm_cell_18_matmul_1_readvariableop_resource5while_lstm_cell_18_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_18_matmul_readvariableop_resource3while_lstm_cell_18_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2V
)while/lstm_cell_18/BiasAdd/ReadVariableOp)while/lstm_cell_18/BiasAdd/ReadVariableOp2T
(while/lstm_cell_18/MatMul/ReadVariableOp(while/lstm_cell_18/MatMul/ReadVariableOp2X
*while/lstm_cell_18/MatMul_1/ReadVariableOp*while/lstm_cell_18/MatMul_1/ReadVariableOp: 
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
.__inference_lstm_cell_17_layer_call_fn_1074873

inputs
states_0
states_1
unknown:	?
	unknown_0:
??
	unknown_1:	?
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
I__inference_lstm_cell_17_layer_call_and_return_conditional_losses_10697002
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

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 22
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
?
?
I__inference_sequential_1_layer_call_and_return_conditional_losses_1072149

inputs!
lstm_1_1072120:	?"
lstm_1_1072122:
??
lstm_1_1072124:	?"
lstm_2_1072127:
??!
lstm_2_1072129:	@?
lstm_2_1072131:	?*
time_distributed_1072134:@@&
time_distributed_1072136:@,
time_distributed_1_1072141:@(
time_distributed_1_1072143:
identity??lstm_1/StatefulPartitionedCall?lstm_2/StatefulPartitionedCall?(time_distributed/StatefulPartitionedCall?*time_distributed_1/StatefulPartitionedCall?
lstm_1/StatefulPartitionedCallStatefulPartitionedCallinputslstm_1_1072120lstm_1_1072122lstm_1_1072124*
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
GPU 2J 8? *L
fGRE
C__inference_lstm_1_layer_call_and_return_conditional_losses_10720812 
lstm_1/StatefulPartitionedCall?
lstm_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0lstm_2_1072127lstm_2_1072129lstm_2_1072131*
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
GPU 2J 8? *L
fGRE
C__inference_lstm_2_layer_call_and_return_conditional_losses_10718882 
lstm_2/StatefulPartitionedCall?
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0time_distributed_1072134time_distributed_1072136*
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
GPU 2J 8? *V
fQRO
M__inference_time_distributed_layer_call_and_return_conditional_losses_10716972*
(time_distributed/StatefulPartitionedCall?
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2 
time_distributed/Reshape/shape?
time_distributed/ReshapeReshape'lstm_2/StatefulPartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????@2
time_distributed/Reshape?
*time_distributed_1/StatefulPartitionedCallStatefulPartitionedCall1time_distributed/StatefulPartitionedCall:output:0time_distributed_1_1072141time_distributed_1_1072143*
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
GPU 2J 8? *X
fSRQ
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_10716592,
*time_distributed_1/StatefulPartitionedCall?
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2"
 time_distributed_1/Reshape/shape?
time_distributed_1/ReshapeReshape1time_distributed/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????@2
time_distributed_1/Reshape?
IdentityIdentity3time_distributed_1/StatefulPartitionedCall:output:0^lstm_1/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_1/StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : 2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_1/StatefulPartitionedCall*time_distributed_1/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?"
?
I__inference_lstm_cell_18_layer_call_and_return_conditional_losses_1070350

inputs

states
states_12
matmul_readvariableop_resource:
??3
 matmul_1_readvariableop_resource:	@?.
biasadd_readvariableop_resource:	?

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
BiasAddd
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
2*-
_gradient_op_typeCustomGradient-1070331*:
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
2*-
_gradient_op_typeCustomGradient-1070340*:
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

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:??????????:?????????@:?????????@: : : 20
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
lstm_2_while_cond_1072905*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3,
(lstm_2_while_less_lstm_2_strided_slice_1C
?lstm_2_while_lstm_2_while_cond_1072905___redundant_placeholder0C
?lstm_2_while_lstm_2_while_cond_1072905___redundant_placeholder1C
?lstm_2_while_lstm_2_while_cond_1072905___redundant_placeholder2C
?lstm_2_while_lstm_2_while_cond_1072905___redundant_placeholder3
lstm_2_while_identity
?
lstm_2/while/LessLesslstm_2_while_placeholder(lstm_2_while_less_lstm_2_strided_slice_1*
T0*
_output_shapes
: 2
lstm_2/while/Lessr
lstm_2/while/IdentityIdentitylstm_2/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_2/while/Identity"7
lstm_2_while_identitylstm_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
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
?
?
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_1071143

inputs!
dense_3_1071133:@
dense_3_1071135:
identity??dense_3/StatefulPartitionedCallD
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
dense_3/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_3_1071133dense_3_1071135*
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
GPU 2J 8? *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_10710842!
dense_3/StatefulPartitionedCallq
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
	Reshape_1Reshape(dense_3/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :??????????????????2
	Reshape_1?
IdentityIdentityReshape_1:output:0 ^dense_3/StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????@: : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?
?
while_cond_1069933
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1069933___redundant_placeholder05
1while_while_cond_1069933___redundant_placeholder15
1while_while_cond_1069933___redundant_placeholder25
1while_while_cond_1069933___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
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
(__inference_lstm_2_layer_call_fn_1074536

inputs
unknown:
??
	unknown_0:	@?
	unknown_1:	?
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
GPU 2J 8? *L
fGRE
C__inference_lstm_2_layer_call_and_return_conditional_losses_10718882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?X
?

lstm_1_while_body_1072371*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3)
%lstm_1_while_lstm_1_strided_slice_1_0e
alstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_1_while_lstm_cell_17_matmul_readvariableop_resource_0:	?P
<lstm_1_while_lstm_cell_17_matmul_1_readvariableop_resource_0:
??J
;lstm_1_while_lstm_cell_17_biasadd_readvariableop_resource_0:	?
lstm_1_while_identity
lstm_1_while_identity_1
lstm_1_while_identity_2
lstm_1_while_identity_3
lstm_1_while_identity_4
lstm_1_while_identity_5'
#lstm_1_while_lstm_1_strided_slice_1c
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensorK
8lstm_1_while_lstm_cell_17_matmul_readvariableop_resource:	?N
:lstm_1_while_lstm_cell_17_matmul_1_readvariableop_resource:
??H
9lstm_1_while_lstm_cell_17_biasadd_readvariableop_resource:	???0lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOp?/lstm_1/while/lstm_cell_17/MatMul/ReadVariableOp?1lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOp?
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2@
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0lstm_1_while_placeholderGlstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype022
0lstm_1/while/TensorArrayV2Read/TensorListGetItem?
/lstm_1/while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp:lstm_1_while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype021
/lstm_1/while/lstm_cell_17/MatMul/ReadVariableOp?
 lstm_1/while/lstm_cell_17/MatMulMatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_1/while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 lstm_1/while/lstm_cell_17/MatMul?
1lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp<lstm_1_while_lstm_cell_17_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype023
1lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOp?
"lstm_1/while/lstm_cell_17/MatMul_1MatMullstm_1_while_placeholder_29lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2$
"lstm_1/while/lstm_cell_17/MatMul_1?
lstm_1/while/lstm_cell_17/addAddV2*lstm_1/while/lstm_cell_17/MatMul:product:0,lstm_1/while/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_1/while/lstm_cell_17/add?
0lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp;lstm_1_while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype022
0lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOp?
!lstm_1/while/lstm_cell_17/BiasAddBiasAdd!lstm_1/while/lstm_cell_17/add:z:08lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!lstm_1/while/lstm_cell_17/BiasAdd?
)lstm_1/while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2+
)lstm_1/while/lstm_cell_17/split/split_dim?
lstm_1/while/lstm_cell_17/splitSplit2lstm_1/while/lstm_cell_17/split/split_dim:output:0*lstm_1/while/lstm_cell_17/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2!
lstm_1/while/lstm_cell_17/split?
!lstm_1/while/lstm_cell_17/SigmoidSigmoid(lstm_1/while/lstm_cell_17/split:output:0*
T0*(
_output_shapes
:??????????2#
!lstm_1/while/lstm_cell_17/Sigmoid?
#lstm_1/while/lstm_cell_17/Sigmoid_1Sigmoid(lstm_1/while/lstm_cell_17/split:output:1*
T0*(
_output_shapes
:??????????2%
#lstm_1/while/lstm_cell_17/Sigmoid_1?
lstm_1/while/lstm_cell_17/mulMul'lstm_1/while/lstm_cell_17/Sigmoid_1:y:0lstm_1_while_placeholder_3*
T0*(
_output_shapes
:??????????2
lstm_1/while/lstm_cell_17/mul?
#lstm_1/while/lstm_cell_17/Sigmoid_2Sigmoid(lstm_1/while/lstm_cell_17/split:output:2*
T0*(
_output_shapes
:??????????2%
#lstm_1/while/lstm_cell_17/Sigmoid_2?
lstm_1/while/lstm_cell_17/mul_1Mul(lstm_1/while/lstm_cell_17/split:output:2'lstm_1/while/lstm_cell_17/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2!
lstm_1/while/lstm_cell_17/mul_1?
"lstm_1/while/lstm_cell_17/IdentityIdentity#lstm_1/while/lstm_cell_17/mul_1:z:0*
T0*(
_output_shapes
:??????????2$
"lstm_1/while/lstm_cell_17/Identity?
#lstm_1/while/lstm_cell_17/IdentityN	IdentityN#lstm_1/while/lstm_cell_17/mul_1:z:0(lstm_1/while/lstm_cell_17/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1072413*<
_output_shapes*
(:??????????:??????????2%
#lstm_1/while/lstm_cell_17/IdentityN?
lstm_1/while/lstm_cell_17/mul_2Mul%lstm_1/while/lstm_cell_17/Sigmoid:y:0,lstm_1/while/lstm_cell_17/IdentityN:output:0*
T0*(
_output_shapes
:??????????2!
lstm_1/while/lstm_cell_17/mul_2?
lstm_1/while/lstm_cell_17/add_1AddV2!lstm_1/while/lstm_cell_17/mul:z:0#lstm_1/while/lstm_cell_17/mul_2:z:0*
T0*(
_output_shapes
:??????????2!
lstm_1/while/lstm_cell_17/add_1?
#lstm_1/while/lstm_cell_17/Sigmoid_3Sigmoid(lstm_1/while/lstm_cell_17/split:output:3*
T0*(
_output_shapes
:??????????2%
#lstm_1/while/lstm_cell_17/Sigmoid_3?
#lstm_1/while/lstm_cell_17/Sigmoid_4Sigmoid#lstm_1/while/lstm_cell_17/add_1:z:0*
T0*(
_output_shapes
:??????????2%
#lstm_1/while/lstm_cell_17/Sigmoid_4?
lstm_1/while/lstm_cell_17/mul_3Mul#lstm_1/while/lstm_cell_17/add_1:z:0'lstm_1/while/lstm_cell_17/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2!
lstm_1/while/lstm_cell_17/mul_3?
$lstm_1/while/lstm_cell_17/Identity_1Identity#lstm_1/while/lstm_cell_17/mul_3:z:0*
T0*(
_output_shapes
:??????????2&
$lstm_1/while/lstm_cell_17/Identity_1?
%lstm_1/while/lstm_cell_17/IdentityN_1	IdentityN#lstm_1/while/lstm_cell_17/mul_3:z:0#lstm_1/while/lstm_cell_17/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1072422*<
_output_shapes*
(:??????????:??????????2'
%lstm_1/while/lstm_cell_17/IdentityN_1?
lstm_1/while/lstm_cell_17/mul_4Mul'lstm_1/while/lstm_cell_17/Sigmoid_3:y:0.lstm_1/while/lstm_cell_17/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2!
lstm_1/while/lstm_cell_17/mul_4?
1lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_1_while_placeholder_1lstm_1_while_placeholder#lstm_1/while/lstm_cell_17/mul_4:z:0*
_output_shapes
: *
element_dtype023
1lstm_1/while/TensorArrayV2Write/TensorListSetItemj
lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/while/add/y?
lstm_1/while/addAddV2lstm_1_while_placeholderlstm_1/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_1/while/addn
lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/while/add_1/y?
lstm_1/while/add_1AddV2&lstm_1_while_lstm_1_while_loop_counterlstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_1/while/add_1?
lstm_1/while/IdentityIdentitylstm_1/while/add_1:z:01^lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_17/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity?
lstm_1/while/Identity_1Identity,lstm_1_while_lstm_1_while_maximum_iterations1^lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_17/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_1?
lstm_1/while/Identity_2Identitylstm_1/while/add:z:01^lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_17/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_2?
lstm_1/while/Identity_3IdentityAlstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:01^lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_17/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_3?
lstm_1/while/Identity_4Identity#lstm_1/while/lstm_cell_17/mul_4:z:01^lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_17/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_1/while/Identity_4?
lstm_1/while/Identity_5Identity#lstm_1/while/lstm_cell_17/add_1:z:01^lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_17/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_1/while/Identity_5"7
lstm_1_while_identitylstm_1/while/Identity:output:0";
lstm_1_while_identity_1 lstm_1/while/Identity_1:output:0";
lstm_1_while_identity_2 lstm_1/while/Identity_2:output:0";
lstm_1_while_identity_3 lstm_1/while/Identity_3:output:0";
lstm_1_while_identity_4 lstm_1/while/Identity_4:output:0";
lstm_1_while_identity_5 lstm_1/while/Identity_5:output:0"L
#lstm_1_while_lstm_1_strided_slice_1%lstm_1_while_lstm_1_strided_slice_1_0"x
9lstm_1_while_lstm_cell_17_biasadd_readvariableop_resource;lstm_1_while_lstm_cell_17_biasadd_readvariableop_resource_0"z
:lstm_1_while_lstm_cell_17_matmul_1_readvariableop_resource<lstm_1_while_lstm_cell_17_matmul_1_readvariableop_resource_0"v
8lstm_1_while_lstm_cell_17_matmul_readvariableop_resource:lstm_1_while_lstm_cell_17_matmul_readvariableop_resource_0"?
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensoralstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2d
0lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOp0lstm_1/while/lstm_cell_17/BiasAdd/ReadVariableOp2b
/lstm_1/while/lstm_cell_17/MatMul/ReadVariableOp/lstm_1/while/lstm_cell_17/MatMul/ReadVariableOp2f
1lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOp1lstm_1/while/lstm_cell_17/MatMul_1/ReadVariableOp: 
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
.__inference_sequential_1_layer_call_fn_1071634
lstm_1_input
unknown:	?
	unknown_0:
??
	unknown_1:	?
	unknown_2:
??
	unknown_3:	@?
	unknown_4:	?
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
GPU 2J 8? *R
fMRK
I__inference_sequential_1_layer_call_and_return_conditional_losses_10716112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:?????????
&
_user_specified_namelstm_1_input
?
?
(__inference_lstm_1_layer_call_fn_1073797

inputs
unknown:	?
	unknown_0:
??
	unknown_1:	?
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
GPU 2J 8? *L
fGRE
C__inference_lstm_1_layer_call_and_return_conditional_losses_10713762
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1073156
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1073156___redundant_placeholder05
1while_while_cond_1073156___redundant_placeholder15
1while_while_cond_1073156___redundant_placeholder25
1while_while_cond_1073156___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
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
?
?
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_1074736

inputs8
&dense_3_matmul_readvariableop_resource:@5
'dense_3_biasadd_readvariableop_resource:
identity??dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOpo
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
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/BiasAddw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      2
Reshape_1/shape?
	Reshape_1Reshapedense_3/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????2
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?"
?
I__inference_lstm_cell_18_layer_call_and_return_conditional_losses_1070506

inputs

states
states_12
matmul_readvariableop_resource:
??3
 matmul_1_readvariableop_resource:	@?.
biasadd_readvariableop_resource:	?

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
BiasAddd
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
2*-
_gradient_op_typeCustomGradient-1070487*:
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
2*-
_gradient_op_typeCustomGradient-1070496*:
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

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:??????????:?????????@:?????????@: : : 20
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
?
D__inference_dense_2_layer_call_and_return_conditional_losses_1075024

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@

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
2*-
_gradient_op_typeCustomGradient-1075017*:
_output_shapes(
&:?????????@:?????????@2
	IdentityN?

Identity_1IdentityIdentityN:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
I__inference_sequential_1_layer_call_and_return_conditional_losses_1072261
lstm_1_input!
lstm_1_1072232:	?"
lstm_1_1072234:
??
lstm_1_1072236:	?"
lstm_2_1072239:
??!
lstm_2_1072241:	@?
lstm_2_1072243:	?*
time_distributed_1072246:@@&
time_distributed_1072248:@,
time_distributed_1_1072253:@(
time_distributed_1_1072255:
identity??lstm_1/StatefulPartitionedCall?lstm_2/StatefulPartitionedCall?(time_distributed/StatefulPartitionedCall?*time_distributed_1/StatefulPartitionedCall?
lstm_1/StatefulPartitionedCallStatefulPartitionedCalllstm_1_inputlstm_1_1072232lstm_1_1072234lstm_1_1072236*
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
GPU 2J 8? *L
fGRE
C__inference_lstm_1_layer_call_and_return_conditional_losses_10720812 
lstm_1/StatefulPartitionedCall?
lstm_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0lstm_2_1072239lstm_2_1072241lstm_2_1072243*
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
GPU 2J 8? *L
fGRE
C__inference_lstm_2_layer_call_and_return_conditional_losses_10718882 
lstm_2/StatefulPartitionedCall?
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0time_distributed_1072246time_distributed_1072248*
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
GPU 2J 8? *V
fQRO
M__inference_time_distributed_layer_call_and_return_conditional_losses_10716972*
(time_distributed/StatefulPartitionedCall?
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2 
time_distributed/Reshape/shape?
time_distributed/ReshapeReshape'lstm_2/StatefulPartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????@2
time_distributed/Reshape?
*time_distributed_1/StatefulPartitionedCallStatefulPartitionedCall1time_distributed/StatefulPartitionedCall:output:0time_distributed_1_1072253time_distributed_1_1072255*
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
GPU 2J 8? *X
fSRQ
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_10716592,
*time_distributed_1/StatefulPartitionedCall?
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2"
 time_distributed_1/Reshape/shape?
time_distributed_1/ReshapeReshape1time_distributed/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????@2
time_distributed_1/Reshape?
IdentityIdentity3time_distributed_1/StatefulPartitionedCall:output:0^lstm_1/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_1/StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : 2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_1/StatefulPartitionedCall*time_distributed_1/StatefulPartitionedCall:Y U
+
_output_shapes
:?????????
&
_user_specified_namelstm_1_input
?
?
(__inference_lstm_2_layer_call_fn_1074525

inputs
unknown:
??
	unknown_0:	@?
	unknown_1:	?
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
GPU 2J 8? *L
fGRE
C__inference_lstm_2_layer_call_and_return_conditional_losses_10715542
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?&
?
while_body_1069714
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_17_1069738_0:	?0
while_lstm_cell_17_1069740_0:
??+
while_lstm_cell_17_1069742_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_17_1069738:	?.
while_lstm_cell_17_1069740:
??)
while_lstm_cell_17_1069742:	???*while/lstm_cell_17/StatefulPartitionedCall?
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
*while/lstm_cell_17/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_17_1069738_0while_lstm_cell_17_1069740_0while_lstm_cell_17_1069742_0*
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
I__inference_lstm_cell_17_layer_call_and_return_conditional_losses_10697002,
*while/lstm_cell_17/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_17/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_17/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_17/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_17/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_17/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity3while/lstm_cell_17/StatefulPartitionedCall:output:1+^while/lstm_cell_17/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_17/StatefulPartitionedCall:output:2+^while/lstm_cell_17/StatefulPartitionedCall*
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
while_lstm_cell_17_1069738while_lstm_cell_17_1069738_0":
while_lstm_cell_17_1069740while_lstm_cell_17_1069740_0":
while_lstm_cell_17_1069742while_lstm_cell_17_1069742_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2X
*while/lstm_cell_17/StatefulPartitionedCall*while/lstm_cell_17/StatefulPartitionedCall: 
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
?L
?
while_body_1073499
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_17_matmul_readvariableop_resource_0:	?I
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:
??C
4while_lstm_cell_17_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_17_matmul_readvariableop_resource:	?G
3while_lstm_cell_17_matmul_1_readvariableop_resource:
??A
2while_lstm_cell_17_biasadd_readvariableop_resource:	???)while/lstm_cell_17/BiasAdd/ReadVariableOp?(while/lstm_cell_17/MatMul/ReadVariableOp?*while/lstm_cell_17/MatMul_1/ReadVariableOp?
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
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/lstm_cell_17/MatMul/ReadVariableOp?
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/MatMul?
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02,
*while/lstm_cell_17/MatMul_1/ReadVariableOp?
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/MatMul_1?
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/add?
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_17/BiasAdd/ReadVariableOp?
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/BiasAdd?
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_17/split/split_dim?
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_17/split?
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Sigmoid?
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Sigmoid_1?
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/mul?
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Sigmoid_2?
while/lstm_cell_17/mul_1Mul!while/lstm_cell_17/split:output:2 while/lstm_cell_17/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/mul_1?
while/lstm_cell_17/IdentityIdentitywhile/lstm_cell_17/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Identity?
while/lstm_cell_17/IdentityN	IdentityNwhile/lstm_cell_17/mul_1:z:0!while/lstm_cell_17/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1073541*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell_17/IdentityN?
while/lstm_cell_17/mul_2Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/mul_2?
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/add_1?
while/lstm_cell_17/Sigmoid_3Sigmoid!while/lstm_cell_17/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Sigmoid_3?
while/lstm_cell_17/Sigmoid_4Sigmoidwhile/lstm_cell_17/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Sigmoid_4?
while/lstm_cell_17/mul_3Mulwhile/lstm_cell_17/add_1:z:0 while/lstm_cell_17/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/mul_3?
while/lstm_cell_17/Identity_1Identitywhile/lstm_cell_17/mul_3:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Identity_1?
while/lstm_cell_17/IdentityN_1	IdentityNwhile/lstm_cell_17/mul_3:z:0while/lstm_cell_17/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1073550*<
_output_shapes*
(:??????????:??????????2 
while/lstm_cell_17/IdentityN_1?
while/lstm_cell_17/mul_4Mul while/lstm_cell_17/Sigmoid_3:y:0'while/lstm_cell_17/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/mul_4?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_17/mul_4:z:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_17/mul_4:z:0*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_17_biasadd_readvariableop_resource4while_lstm_cell_17_biasadd_readvariableop_resource_0"l
3while_lstm_cell_17_matmul_1_readvariableop_resource5while_lstm_cell_17_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_17_matmul_readvariableop_resource3while_lstm_cell_17_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2V
)while/lstm_cell_17/BiasAdd/ReadVariableOp)while/lstm_cell_17/BiasAdd/ReadVariableOp2T
(while/lstm_cell_17/MatMul/ReadVariableOp(while/lstm_cell_17/MatMul/ReadVariableOp2X
*while/lstm_cell_17/MatMul_1/ReadVariableOp*while/lstm_cell_17/MatMul_1/ReadVariableOp: 
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
?c
?
C__inference_lstm_1_layer_call_and_return_conditional_losses_1073764

inputs>
+lstm_cell_17_matmul_readvariableop_resource:	?A
-lstm_cell_17_matmul_1_readvariableop_resource:
??;
,lstm_cell_17_biasadd_readvariableop_resource:	?
identity??#lstm_cell_17/BiasAdd/ReadVariableOp?"lstm_cell_17/MatMul/ReadVariableOp?$lstm_cell_17/MatMul_1/ReadVariableOp?whileD
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
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"lstm_cell_17/MatMul/ReadVariableOp?
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/MatMul?
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$lstm_cell_17/MatMul_1/ReadVariableOp?
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/MatMul_1?
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/add?
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_17/BiasAdd/ReadVariableOp?
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/BiasAdd~
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_17/split/split_dim?
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_17/split?
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Sigmoid?
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Sigmoid_1?
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/mul?
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Sigmoid_2?
lstm_cell_17/mul_1Mullstm_cell_17/split:output:2lstm_cell_17/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/mul_1?
lstm_cell_17/IdentityIdentitylstm_cell_17/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Identity?
lstm_cell_17/IdentityN	IdentityNlstm_cell_17/mul_1:z:0lstm_cell_17/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1073650*<
_output_shapes*
(:??????????:??????????2
lstm_cell_17/IdentityN?
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/mul_2?
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/add_1?
lstm_cell_17/Sigmoid_3Sigmoidlstm_cell_17/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Sigmoid_3?
lstm_cell_17/Sigmoid_4Sigmoidlstm_cell_17/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Sigmoid_4?
lstm_cell_17/mul_3Mullstm_cell_17/add_1:z:0lstm_cell_17/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/mul_3?
lstm_cell_17/Identity_1Identitylstm_cell_17/mul_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Identity_1?
lstm_cell_17/IdentityN_1	IdentityNlstm_cell_17/mul_3:z:0lstm_cell_17/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1073659*<
_output_shapes*
(:??????????:??????????2
lstm_cell_17/IdentityN_1?
lstm_cell_17/mul_4Mullstm_cell_17/Sigmoid_3:y:0!lstm_cell_17/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/mul_4?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1073670*
condR
while_cond_1073669*M
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
IdentityIdentitytranspose_1:y:0$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_1074687

inputs8
&dense_3_matmul_readvariableop_resource:@5
'dense_3_biasadd_readvariableop_resource:
identity??dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOpD
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
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/BiasAddq
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
	Reshape_1Reshapedense_3/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :??????????????????2
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????@: : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?
?
while_cond_1069713
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1069713___redundant_placeholder05
1while_while_cond_1069713___redundant_placeholder15
1while_while_cond_1069713___redundant_placeholder25
1while_while_cond_1069713___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
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
)__inference_dense_3_layer_call_fn_1075052

inputs
unknown:@
	unknown_0:
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
GPU 2J 8? *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_10710842
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
M__inference_time_distributed_layer_call_and_return_conditional_losses_1071697

inputs8
&dense_2_matmul_readvariableop_resource:@@5
'dense_2_biasadd_readvariableop_resource:@
identity??dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOpo
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
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_2/BiasAddy
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_2/Sigmoid?
dense_2/mulMuldense_2/BiasAdd:output:0dense_2/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
dense_2/muls
dense_2/IdentityIdentitydense_2/mul:z:0*
T0*'
_output_shapes
:?????????@2
dense_2/Identity?
dense_2/IdentityN	IdentityNdense_2/mul:z:0dense_2/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1071688*:
_output_shapes(
&:?????????@:?????????@2
dense_2/IdentityNw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   @   2
Reshape_1/shape?
	Reshape_1Reshapedense_2/IdentityN:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????@2
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*+
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?&
?
while_body_1069934
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_17_1069958_0:	?0
while_lstm_cell_17_1069960_0:
??+
while_lstm_cell_17_1069962_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_17_1069958:	?.
while_lstm_cell_17_1069960:
??)
while_lstm_cell_17_1069962:	???*while/lstm_cell_17/StatefulPartitionedCall?
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
*while/lstm_cell_17/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_17_1069958_0while_lstm_cell_17_1069960_0while_lstm_cell_17_1069962_0*
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
I__inference_lstm_cell_17_layer_call_and_return_conditional_losses_10698562,
*while/lstm_cell_17/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_17/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_17/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_17/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_17/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_17/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity3while/lstm_cell_17/StatefulPartitionedCall:output:1+^while/lstm_cell_17/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_17/StatefulPartitionedCall:output:2+^while/lstm_cell_17/StatefulPartitionedCall*
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
while_lstm_cell_17_1069958while_lstm_cell_17_1069958_0":
while_lstm_cell_17_1069960while_lstm_cell_17_1069960_0":
while_lstm_cell_17_1069962while_lstm_cell_17_1069962_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2X
*while/lstm_cell_17/StatefulPartitionedCall*while/lstm_cell_17/StatefulPartitionedCall: 
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
?
?
2__inference_time_distributed_layer_call_fn_1074657

inputs
unknown:@@
	unknown_0:@
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
GPU 2J 8? *V
fQRO
M__inference_time_distributed_layer_call_and_return_conditional_losses_10715812
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_1071602

inputs8
&dense_3_matmul_readvariableop_resource:@5
'dense_3_biasadd_readvariableop_resource:
identity??dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOpo
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
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/BiasAddw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      2
Reshape_1/shape?
	Reshape_1Reshapedense_3/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????2
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
while_cond_1073498
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1073498___redundant_placeholder05
1while_while_cond_1073498___redundant_placeholder15
1while_while_cond_1073498___redundant_placeholder25
1while_while_cond_1073498___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
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
?
C__inference_lstm_1_layer_call_and_return_conditional_losses_1073251
inputs_0>
+lstm_cell_17_matmul_readvariableop_resource:	?A
-lstm_cell_17_matmul_1_readvariableop_resource:
??;
,lstm_cell_17_biasadd_readvariableop_resource:	?
identity??#lstm_cell_17/BiasAdd/ReadVariableOp?"lstm_cell_17/MatMul/ReadVariableOp?$lstm_cell_17/MatMul_1/ReadVariableOp?whileF
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
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"lstm_cell_17/MatMul/ReadVariableOp?
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/MatMul?
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$lstm_cell_17/MatMul_1/ReadVariableOp?
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/MatMul_1?
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/add?
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_17/BiasAdd/ReadVariableOp?
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/BiasAdd~
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_17/split/split_dim?
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_17/split?
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Sigmoid?
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Sigmoid_1?
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/mul?
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Sigmoid_2?
lstm_cell_17/mul_1Mullstm_cell_17/split:output:2lstm_cell_17/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/mul_1?
lstm_cell_17/IdentityIdentitylstm_cell_17/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Identity?
lstm_cell_17/IdentityN	IdentityNlstm_cell_17/mul_1:z:0lstm_cell_17/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1073137*<
_output_shapes*
(:??????????:??????????2
lstm_cell_17/IdentityN?
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/mul_2?
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/add_1?
lstm_cell_17/Sigmoid_3Sigmoidlstm_cell_17/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Sigmoid_3?
lstm_cell_17/Sigmoid_4Sigmoidlstm_cell_17/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Sigmoid_4?
lstm_cell_17/mul_3Mullstm_cell_17/add_1:z:0lstm_cell_17/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/mul_3?
lstm_cell_17/Identity_1Identitylstm_cell_17/mul_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Identity_1?
lstm_cell_17/IdentityN_1	IdentityNlstm_cell_17/mul_3:z:0lstm_cell_17/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1073146*<
_output_shapes*
(:??????????:??????????2
lstm_cell_17/IdentityN_1?
lstm_cell_17/mul_4Mullstm_cell_17/Sigmoid_3:y:0!lstm_cell_17/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/mul_4?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1073157*
condR
while_cond_1073156*M
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
IdentityIdentitytranspose_1:y:0$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
2__inference_time_distributed_layer_call_fn_1074648

inputs
unknown:@@
	unknown_0:@
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
GPU 2J 8? *V
fQRO
M__inference_time_distributed_layer_call_and_return_conditional_losses_10710042
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?
?
I__inference_sequential_1_layer_call_and_return_conditional_losses_1072229
lstm_1_input!
lstm_1_1072200:	?"
lstm_1_1072202:
??
lstm_1_1072204:	?"
lstm_2_1072207:
??!
lstm_2_1072209:	@?
lstm_2_1072211:	?*
time_distributed_1072214:@@&
time_distributed_1072216:@,
time_distributed_1_1072221:@(
time_distributed_1_1072223:
identity??lstm_1/StatefulPartitionedCall?lstm_2/StatefulPartitionedCall?(time_distributed/StatefulPartitionedCall?*time_distributed_1/StatefulPartitionedCall?
lstm_1/StatefulPartitionedCallStatefulPartitionedCalllstm_1_inputlstm_1_1072200lstm_1_1072202lstm_1_1072204*
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
GPU 2J 8? *L
fGRE
C__inference_lstm_1_layer_call_and_return_conditional_losses_10713762 
lstm_1/StatefulPartitionedCall?
lstm_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0lstm_2_1072207lstm_2_1072209lstm_2_1072211*
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
GPU 2J 8? *L
fGRE
C__inference_lstm_2_layer_call_and_return_conditional_losses_10715542 
lstm_2/StatefulPartitionedCall?
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0time_distributed_1072214time_distributed_1072216*
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
GPU 2J 8? *V
fQRO
M__inference_time_distributed_layer_call_and_return_conditional_losses_10715812*
(time_distributed/StatefulPartitionedCall?
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2 
time_distributed/Reshape/shape?
time_distributed/ReshapeReshape'lstm_2/StatefulPartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????@2
time_distributed/Reshape?
*time_distributed_1/StatefulPartitionedCallStatefulPartitionedCall1time_distributed/StatefulPartitionedCall:output:0time_distributed_1_1072221time_distributed_1_1072223*
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
GPU 2J 8? *X
fSRQ
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_10716022,
*time_distributed_1/StatefulPartitionedCall?
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2"
 time_distributed_1/Reshape/shape?
time_distributed_1/ReshapeReshape1time_distributed/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????@2
time_distributed_1/Reshape?
IdentityIdentity3time_distributed_1/StatefulPartitionedCall:output:0^lstm_1/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_1/StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : 2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_1/StatefulPartitionedCall*time_distributed_1/StatefulPartitionedCall:Y U
+
_output_shapes
:?????????
&
_user_specified_namelstm_1_input
?
?
M__inference_time_distributed_layer_call_and_return_conditional_losses_1074630

inputs8
&dense_2_matmul_readvariableop_resource:@@5
'dense_2_biasadd_readvariableop_resource:@
identity??dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOpo
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
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_2/BiasAddy
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_2/Sigmoid?
dense_2/mulMuldense_2/BiasAdd:output:0dense_2/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
dense_2/muls
dense_2/IdentityIdentitydense_2/mul:z:0*
T0*'
_output_shapes
:?????????@2
dense_2/Identity?
dense_2/IdentityN	IdentityNdense_2/mul:z:0dense_2/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1074621*:
_output_shapes(
&:?????????@:?????????@2
dense_2/IdentityNw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   @   2
Reshape_1/shape?
	Reshape_1Reshapedense_2/IdentityN:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????@2
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*+
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?&
?
while_body_1070364
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_18_1070388_0:
??/
while_lstm_cell_18_1070390_0:	@?+
while_lstm_cell_18_1070392_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_18_1070388:
??-
while_lstm_cell_18_1070390:	@?)
while_lstm_cell_18_1070392:	???*while/lstm_cell_18/StatefulPartitionedCall?
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
*while/lstm_cell_18/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_18_1070388_0while_lstm_cell_18_1070390_0while_lstm_cell_18_1070392_0*
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
I__inference_lstm_cell_18_layer_call_and_return_conditional_losses_10703502,
*while/lstm_cell_18/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_18/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_18/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_18/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_18/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_18/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity3while/lstm_cell_18/StatefulPartitionedCall:output:1+^while/lstm_cell_18/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_18/StatefulPartitionedCall:output:2+^while/lstm_cell_18/StatefulPartitionedCall*
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
while_lstm_cell_18_1070388while_lstm_cell_18_1070388_0":
while_lstm_cell_18_1070390while_lstm_cell_18_1070390_0":
while_lstm_cell_18_1070392while_lstm_cell_18_1070392_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2X
*while/lstm_cell_18/StatefulPartitionedCall*while/lstm_cell_18/StatefulPartitionedCall: 
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
4__inference_time_distributed_1_layer_call_fn_1074745

inputs
unknown:@
	unknown_0:
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
GPU 2J 8? *X
fSRQ
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_10710952
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?

?
.__inference_sequential_1_layer_call_fn_1072197
lstm_1_input
unknown:	?
	unknown_0:
??
	unknown_1:	?
	unknown_2:
??
	unknown_3:	@?
	unknown_4:	?
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
GPU 2J 8? *R
fMRK
I__inference_sequential_1_layer_call_and_return_conditional_losses_10721492
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:?????????
&
_user_specified_namelstm_1_input
?
?
while_cond_1074397
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1074397___redundant_placeholder05
1while_while_cond_1074397___redundant_placeholder15
1while_while_cond_1074397___redundant_placeholder25
1while_while_cond_1074397___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
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
?m
?
&sequential_1_lstm_2_while_body_1069491D
@sequential_1_lstm_2_while_sequential_1_lstm_2_while_loop_counterJ
Fsequential_1_lstm_2_while_sequential_1_lstm_2_while_maximum_iterations)
%sequential_1_lstm_2_while_placeholder+
'sequential_1_lstm_2_while_placeholder_1+
'sequential_1_lstm_2_while_placeholder_2+
'sequential_1_lstm_2_while_placeholder_3C
?sequential_1_lstm_2_while_sequential_1_lstm_2_strided_slice_1_0
{sequential_1_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_2_tensorarrayunstack_tensorlistfromtensor_0[
Gsequential_1_lstm_2_while_lstm_cell_18_matmul_readvariableop_resource_0:
??\
Isequential_1_lstm_2_while_lstm_cell_18_matmul_1_readvariableop_resource_0:	@?W
Hsequential_1_lstm_2_while_lstm_cell_18_biasadd_readvariableop_resource_0:	?&
"sequential_1_lstm_2_while_identity(
$sequential_1_lstm_2_while_identity_1(
$sequential_1_lstm_2_while_identity_2(
$sequential_1_lstm_2_while_identity_3(
$sequential_1_lstm_2_while_identity_4(
$sequential_1_lstm_2_while_identity_5A
=sequential_1_lstm_2_while_sequential_1_lstm_2_strided_slice_1}
ysequential_1_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_2_tensorarrayunstack_tensorlistfromtensorY
Esequential_1_lstm_2_while_lstm_cell_18_matmul_readvariableop_resource:
??Z
Gsequential_1_lstm_2_while_lstm_cell_18_matmul_1_readvariableop_resource:	@?U
Fsequential_1_lstm_2_while_lstm_cell_18_biasadd_readvariableop_resource:	???=sequential_1/lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOp?<sequential_1/lstm_2/while/lstm_cell_18/MatMul/ReadVariableOp?>sequential_1/lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOp?
Ksequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2M
Ksequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape?
=sequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_1_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_2_tensorarrayunstack_tensorlistfromtensor_0%sequential_1_lstm_2_while_placeholderTsequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02?
=sequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem?
<sequential_1/lstm_2/while/lstm_cell_18/MatMul/ReadVariableOpReadVariableOpGsequential_1_lstm_2_while_lstm_cell_18_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02>
<sequential_1/lstm_2/while/lstm_cell_18/MatMul/ReadVariableOp?
-sequential_1/lstm_2/while/lstm_cell_18/MatMulMatMulDsequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:0Dsequential_1/lstm_2/while/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2/
-sequential_1/lstm_2/while/lstm_cell_18/MatMul?
>sequential_1/lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOpIsequential_1_lstm_2_while_lstm_cell_18_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02@
>sequential_1/lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOp?
/sequential_1/lstm_2/while/lstm_cell_18/MatMul_1MatMul'sequential_1_lstm_2_while_placeholder_2Fsequential_1/lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????21
/sequential_1/lstm_2/while/lstm_cell_18/MatMul_1?
*sequential_1/lstm_2/while/lstm_cell_18/addAddV27sequential_1/lstm_2/while/lstm_cell_18/MatMul:product:09sequential_1/lstm_2/while/lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2,
*sequential_1/lstm_2/while/lstm_cell_18/add?
=sequential_1/lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOpHsequential_1_lstm_2_while_lstm_cell_18_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02?
=sequential_1/lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOp?
.sequential_1/lstm_2/while/lstm_cell_18/BiasAddBiasAdd.sequential_1/lstm_2/while/lstm_cell_18/add:z:0Esequential_1/lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????20
.sequential_1/lstm_2/while/lstm_cell_18/BiasAdd?
6sequential_1/lstm_2/while/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :28
6sequential_1/lstm_2/while/lstm_cell_18/split/split_dim?
,sequential_1/lstm_2/while/lstm_cell_18/splitSplit?sequential_1/lstm_2/while/lstm_cell_18/split/split_dim:output:07sequential_1/lstm_2/while/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2.
,sequential_1/lstm_2/while/lstm_cell_18/split?
.sequential_1/lstm_2/while/lstm_cell_18/SigmoidSigmoid5sequential_1/lstm_2/while/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:?????????@20
.sequential_1/lstm_2/while/lstm_cell_18/Sigmoid?
0sequential_1/lstm_2/while/lstm_cell_18/Sigmoid_1Sigmoid5sequential_1/lstm_2/while/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:?????????@22
0sequential_1/lstm_2/while/lstm_cell_18/Sigmoid_1?
*sequential_1/lstm_2/while/lstm_cell_18/mulMul4sequential_1/lstm_2/while/lstm_cell_18/Sigmoid_1:y:0'sequential_1_lstm_2_while_placeholder_3*
T0*'
_output_shapes
:?????????@2,
*sequential_1/lstm_2/while/lstm_cell_18/mul?
0sequential_1/lstm_2/while/lstm_cell_18/Sigmoid_2Sigmoid5sequential_1/lstm_2/while/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:?????????@22
0sequential_1/lstm_2/while/lstm_cell_18/Sigmoid_2?
,sequential_1/lstm_2/while/lstm_cell_18/mul_1Mul5sequential_1/lstm_2/while/lstm_cell_18/split:output:24sequential_1/lstm_2/while/lstm_cell_18/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2.
,sequential_1/lstm_2/while/lstm_cell_18/mul_1?
/sequential_1/lstm_2/while/lstm_cell_18/IdentityIdentity0sequential_1/lstm_2/while/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:?????????@21
/sequential_1/lstm_2/while/lstm_cell_18/Identity?
0sequential_1/lstm_2/while/lstm_cell_18/IdentityN	IdentityN0sequential_1/lstm_2/while/lstm_cell_18/mul_1:z:05sequential_1/lstm_2/while/lstm_cell_18/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1069533*:
_output_shapes(
&:?????????@:?????????@22
0sequential_1/lstm_2/while/lstm_cell_18/IdentityN?
,sequential_1/lstm_2/while/lstm_cell_18/mul_2Mul2sequential_1/lstm_2/while/lstm_cell_18/Sigmoid:y:09sequential_1/lstm_2/while/lstm_cell_18/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2.
,sequential_1/lstm_2/while/lstm_cell_18/mul_2?
,sequential_1/lstm_2/while/lstm_cell_18/add_1AddV2.sequential_1/lstm_2/while/lstm_cell_18/mul:z:00sequential_1/lstm_2/while/lstm_cell_18/mul_2:z:0*
T0*'
_output_shapes
:?????????@2.
,sequential_1/lstm_2/while/lstm_cell_18/add_1?
0sequential_1/lstm_2/while/lstm_cell_18/Sigmoid_3Sigmoid5sequential_1/lstm_2/while/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:?????????@22
0sequential_1/lstm_2/while/lstm_cell_18/Sigmoid_3?
0sequential_1/lstm_2/while/lstm_cell_18/Sigmoid_4Sigmoid0sequential_1/lstm_2/while/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:?????????@22
0sequential_1/lstm_2/while/lstm_cell_18/Sigmoid_4?
,sequential_1/lstm_2/while/lstm_cell_18/mul_3Mul0sequential_1/lstm_2/while/lstm_cell_18/add_1:z:04sequential_1/lstm_2/while/lstm_cell_18/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2.
,sequential_1/lstm_2/while/lstm_cell_18/mul_3?
1sequential_1/lstm_2/while/lstm_cell_18/Identity_1Identity0sequential_1/lstm_2/while/lstm_cell_18/mul_3:z:0*
T0*'
_output_shapes
:?????????@23
1sequential_1/lstm_2/while/lstm_cell_18/Identity_1?
2sequential_1/lstm_2/while/lstm_cell_18/IdentityN_1	IdentityN0sequential_1/lstm_2/while/lstm_cell_18/mul_3:z:00sequential_1/lstm_2/while/lstm_cell_18/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1069542*:
_output_shapes(
&:?????????@:?????????@24
2sequential_1/lstm_2/while/lstm_cell_18/IdentityN_1?
,sequential_1/lstm_2/while/lstm_cell_18/mul_4Mul4sequential_1/lstm_2/while/lstm_cell_18/Sigmoid_3:y:0;sequential_1/lstm_2/while/lstm_cell_18/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2.
,sequential_1/lstm_2/while/lstm_cell_18/mul_4?
>sequential_1/lstm_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_1_lstm_2_while_placeholder_1%sequential_1_lstm_2_while_placeholder0sequential_1/lstm_2/while/lstm_cell_18/mul_4:z:0*
_output_shapes
: *
element_dtype02@
>sequential_1/lstm_2/while/TensorArrayV2Write/TensorListSetItem?
sequential_1/lstm_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_1/lstm_2/while/add/y?
sequential_1/lstm_2/while/addAddV2%sequential_1_lstm_2_while_placeholder(sequential_1/lstm_2/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_1/lstm_2/while/add?
!sequential_1/lstm_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_1/lstm_2/while/add_1/y?
sequential_1/lstm_2/while/add_1AddV2@sequential_1_lstm_2_while_sequential_1_lstm_2_while_loop_counter*sequential_1/lstm_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
sequential_1/lstm_2/while/add_1?
"sequential_1/lstm_2/while/IdentityIdentity#sequential_1/lstm_2/while/add_1:z:0>^sequential_1/lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOp=^sequential_1/lstm_2/while/lstm_cell_18/MatMul/ReadVariableOp?^sequential_1/lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2$
"sequential_1/lstm_2/while/Identity?
$sequential_1/lstm_2/while/Identity_1IdentityFsequential_1_lstm_2_while_sequential_1_lstm_2_while_maximum_iterations>^sequential_1/lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOp=^sequential_1/lstm_2/while/lstm_cell_18/MatMul/ReadVariableOp?^sequential_1/lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_2/while/Identity_1?
$sequential_1/lstm_2/while/Identity_2Identity!sequential_1/lstm_2/while/add:z:0>^sequential_1/lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOp=^sequential_1/lstm_2/while/lstm_cell_18/MatMul/ReadVariableOp?^sequential_1/lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_2/while/Identity_2?
$sequential_1/lstm_2/while/Identity_3IdentityNsequential_1/lstm_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^sequential_1/lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOp=^sequential_1/lstm_2/while/lstm_cell_18/MatMul/ReadVariableOp?^sequential_1/lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_2/while/Identity_3?
$sequential_1/lstm_2/while/Identity_4Identity0sequential_1/lstm_2/while/lstm_cell_18/mul_4:z:0>^sequential_1/lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOp=^sequential_1/lstm_2/while/lstm_cell_18/MatMul/ReadVariableOp?^sequential_1/lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2&
$sequential_1/lstm_2/while/Identity_4?
$sequential_1/lstm_2/while/Identity_5Identity0sequential_1/lstm_2/while/lstm_cell_18/add_1:z:0>^sequential_1/lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOp=^sequential_1/lstm_2/while/lstm_cell_18/MatMul/ReadVariableOp?^sequential_1/lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2&
$sequential_1/lstm_2/while/Identity_5"Q
"sequential_1_lstm_2_while_identity+sequential_1/lstm_2/while/Identity:output:0"U
$sequential_1_lstm_2_while_identity_1-sequential_1/lstm_2/while/Identity_1:output:0"U
$sequential_1_lstm_2_while_identity_2-sequential_1/lstm_2/while/Identity_2:output:0"U
$sequential_1_lstm_2_while_identity_3-sequential_1/lstm_2/while/Identity_3:output:0"U
$sequential_1_lstm_2_while_identity_4-sequential_1/lstm_2/while/Identity_4:output:0"U
$sequential_1_lstm_2_while_identity_5-sequential_1/lstm_2/while/Identity_5:output:0"?
Fsequential_1_lstm_2_while_lstm_cell_18_biasadd_readvariableop_resourceHsequential_1_lstm_2_while_lstm_cell_18_biasadd_readvariableop_resource_0"?
Gsequential_1_lstm_2_while_lstm_cell_18_matmul_1_readvariableop_resourceIsequential_1_lstm_2_while_lstm_cell_18_matmul_1_readvariableop_resource_0"?
Esequential_1_lstm_2_while_lstm_cell_18_matmul_readvariableop_resourceGsequential_1_lstm_2_while_lstm_cell_18_matmul_readvariableop_resource_0"?
=sequential_1_lstm_2_while_sequential_1_lstm_2_strided_slice_1?sequential_1_lstm_2_while_sequential_1_lstm_2_strided_slice_1_0"?
ysequential_1_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_2_tensorarrayunstack_tensorlistfromtensor{sequential_1_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2~
=sequential_1/lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOp=sequential_1/lstm_2/while/lstm_cell_18/BiasAdd/ReadVariableOp2|
<sequential_1/lstm_2/while/lstm_cell_18/MatMul/ReadVariableOp<sequential_1/lstm_2/while/lstm_cell_18/MatMul/ReadVariableOp2?
>sequential_1/lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOp>sequential_1/lstm_2/while/lstm_cell_18/MatMul_1/ReadVariableOp: 
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
M__inference_time_distributed_layer_call_and_return_conditional_losses_1070956

inputs!
dense_2_1070946:@@
dense_2_1070948:@
identity??dense_2/StatefulPartitionedCallD
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
dense_2/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_2_1070946dense_2_1070948*
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
GPU 2J 8? *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_10709452!
dense_2/StatefulPartitionedCallq
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
	Reshape_1Reshape(dense_2/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :??????????????????@2
	Reshape_1?
IdentityIdentityReshape_1:output:0 ^dense_2/StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????@: : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?L
?
while_body_1071987
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_17_matmul_readvariableop_resource_0:	?I
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:
??C
4while_lstm_cell_17_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_17_matmul_readvariableop_resource:	?G
3while_lstm_cell_17_matmul_1_readvariableop_resource:
??A
2while_lstm_cell_17_biasadd_readvariableop_resource:	???)while/lstm_cell_17/BiasAdd/ReadVariableOp?(while/lstm_cell_17/MatMul/ReadVariableOp?*while/lstm_cell_17/MatMul_1/ReadVariableOp?
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
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/lstm_cell_17/MatMul/ReadVariableOp?
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/MatMul?
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02,
*while/lstm_cell_17/MatMul_1/ReadVariableOp?
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/MatMul_1?
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/add?
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_17/BiasAdd/ReadVariableOp?
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/BiasAdd?
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_17/split/split_dim?
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_17/split?
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Sigmoid?
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Sigmoid_1?
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/mul?
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Sigmoid_2?
while/lstm_cell_17/mul_1Mul!while/lstm_cell_17/split:output:2 while/lstm_cell_17/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/mul_1?
while/lstm_cell_17/IdentityIdentitywhile/lstm_cell_17/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Identity?
while/lstm_cell_17/IdentityN	IdentityNwhile/lstm_cell_17/mul_1:z:0!while/lstm_cell_17/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1072029*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell_17/IdentityN?
while/lstm_cell_17/mul_2Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/mul_2?
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/add_1?
while/lstm_cell_17/Sigmoid_3Sigmoid!while/lstm_cell_17/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Sigmoid_3?
while/lstm_cell_17/Sigmoid_4Sigmoidwhile/lstm_cell_17/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Sigmoid_4?
while/lstm_cell_17/mul_3Mulwhile/lstm_cell_17/add_1:z:0 while/lstm_cell_17/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/mul_3?
while/lstm_cell_17/Identity_1Identitywhile/lstm_cell_17/mul_3:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/Identity_1?
while/lstm_cell_17/IdentityN_1	IdentityNwhile/lstm_cell_17/mul_3:z:0while/lstm_cell_17/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1072038*<
_output_shapes*
(:??????????:??????????2 
while/lstm_cell_17/IdentityN_1?
while/lstm_cell_17/mul_4Mul while/lstm_cell_17/Sigmoid_3:y:0'while/lstm_cell_17/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_17/mul_4?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_17/mul_4:z:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_17/mul_4:z:0*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_17_biasadd_readvariableop_resource4while_lstm_cell_17_biasadd_readvariableop_resource_0"l
3while_lstm_cell_17_matmul_1_readvariableop_resource5while_lstm_cell_17_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_17_matmul_readvariableop_resource3while_lstm_cell_17_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2V
)while/lstm_cell_17/BiasAdd/ReadVariableOp)while/lstm_cell_17/BiasAdd/ReadVariableOp2T
(while/lstm_cell_17/MatMul/ReadVariableOp(while/lstm_cell_17/MatMul/ReadVariableOp2X
*while/lstm_cell_17/MatMul_1/ReadVariableOp*while/lstm_cell_17/MatMul_1/ReadVariableOp: 
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
?
?
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_1074708

inputs8
&dense_3_matmul_readvariableop_resource:@5
'dense_3_biasadd_readvariableop_resource:
identity??dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOpD
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
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/BiasAddq
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
	Reshape_1Reshapedense_3/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :??????????????????2
	Reshape_1?
IdentityIdentityReshape_1:output:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????@: : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
??
?

I__inference_sequential_1_layer_call_and_return_conditional_losses_1072662

inputsE
2lstm_1_lstm_cell_17_matmul_readvariableop_resource:	?H
4lstm_1_lstm_cell_17_matmul_1_readvariableop_resource:
??B
3lstm_1_lstm_cell_17_biasadd_readvariableop_resource:	?F
2lstm_2_lstm_cell_18_matmul_readvariableop_resource:
??G
4lstm_2_lstm_cell_18_matmul_1_readvariableop_resource:	@?B
3lstm_2_lstm_cell_18_biasadd_readvariableop_resource:	?I
7time_distributed_dense_2_matmul_readvariableop_resource:@@F
8time_distributed_dense_2_biasadd_readvariableop_resource:@K
9time_distributed_1_dense_3_matmul_readvariableop_resource:@H
:time_distributed_1_dense_3_biasadd_readvariableop_resource:
identity??*lstm_1/lstm_cell_17/BiasAdd/ReadVariableOp?)lstm_1/lstm_cell_17/MatMul/ReadVariableOp?+lstm_1/lstm_cell_17/MatMul_1/ReadVariableOp?lstm_1/while?*lstm_2/lstm_cell_18/BiasAdd/ReadVariableOp?)lstm_2/lstm_cell_18/MatMul/ReadVariableOp?+lstm_2/lstm_cell_18/MatMul_1/ReadVariableOp?lstm_2/while?/time_distributed/dense_2/BiasAdd/ReadVariableOp?.time_distributed/dense_2/MatMul/ReadVariableOp?1time_distributed_1/dense_3/BiasAdd/ReadVariableOp?0time_distributed_1/dense_3/MatMul/ReadVariableOpR
lstm_1/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_1/Shape?
lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice/stack?
lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_1/strided_slice/stack_1?
lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_1/strided_slice/stack_2?
lstm_1/strided_sliceStridedSlicelstm_1/Shape:output:0#lstm_1/strided_slice/stack:output:0%lstm_1/strided_slice/stack_1:output:0%lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_1/strided_slicek
lstm_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_1/zeros/mul/y?
lstm_1/zeros/mulMullstm_1/strided_slice:output:0lstm_1/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros/mulm
lstm_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_1/zeros/Less/y?
lstm_1/zeros/LessLesslstm_1/zeros/mul:z:0lstm_1/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros/Lessq
lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_1/zeros/packed/1?
lstm_1/zeros/packedPacklstm_1/strided_slice:output:0lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_1/zeros/packedm
lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_1/zeros/Const?
lstm_1/zerosFilllstm_1/zeros/packed:output:0lstm_1/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_1/zeroso
lstm_1/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_1/zeros_1/mul/y?
lstm_1/zeros_1/mulMullstm_1/strided_slice:output:0lstm_1/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros_1/mulq
lstm_1/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_1/zeros_1/Less/y?
lstm_1/zeros_1/LessLesslstm_1/zeros_1/mul:z:0lstm_1/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros_1/Lessu
lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_1/zeros_1/packed/1?
lstm_1/zeros_1/packedPacklstm_1/strided_slice:output:0 lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_1/zeros_1/packedq
lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_1/zeros_1/Const?
lstm_1/zeros_1Filllstm_1/zeros_1/packed:output:0lstm_1/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_1/zeros_1?
lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_1/transpose/perm?
lstm_1/transpose	Transposeinputslstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_1/transposed
lstm_1/Shape_1Shapelstm_1/transpose:y:0*
T0*
_output_shapes
:2
lstm_1/Shape_1?
lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice_1/stack?
lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_1/stack_1?
lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_1/stack_2?
lstm_1/strided_slice_1StridedSlicelstm_1/Shape_1:output:0%lstm_1/strided_slice_1/stack:output:0'lstm_1/strided_slice_1/stack_1:output:0'lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_1/strided_slice_1?
"lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"lstm_1/TensorArrayV2/element_shape?
lstm_1/TensorArrayV2TensorListReserve+lstm_1/TensorArrayV2/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_1/TensorArrayV2?
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2>
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape?
.lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_1/transpose:y:0Elstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_1/TensorArrayUnstack/TensorListFromTensor?
lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice_2/stack?
lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_2/stack_1?
lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_2/stack_2?
lstm_1/strided_slice_2StridedSlicelstm_1/transpose:y:0%lstm_1/strided_slice_2/stack:output:0'lstm_1/strided_slice_2/stack_1:output:0'lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_1/strided_slice_2?
)lstm_1/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp2lstm_1_lstm_cell_17_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02+
)lstm_1/lstm_cell_17/MatMul/ReadVariableOp?
lstm_1/lstm_cell_17/MatMulMatMullstm_1/strided_slice_2:output:01lstm_1/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_1/lstm_cell_17/MatMul?
+lstm_1/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp4lstm_1_lstm_cell_17_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02-
+lstm_1/lstm_cell_17/MatMul_1/ReadVariableOp?
lstm_1/lstm_cell_17/MatMul_1MatMullstm_1/zeros:output:03lstm_1/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_1/lstm_cell_17/MatMul_1?
lstm_1/lstm_cell_17/addAddV2$lstm_1/lstm_cell_17/MatMul:product:0&lstm_1/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_1/lstm_cell_17/add?
*lstm_1/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp3lstm_1_lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*lstm_1/lstm_cell_17/BiasAdd/ReadVariableOp?
lstm_1/lstm_cell_17/BiasAddBiasAddlstm_1/lstm_cell_17/add:z:02lstm_1/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_1/lstm_cell_17/BiasAdd?
#lstm_1/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#lstm_1/lstm_cell_17/split/split_dim?
lstm_1/lstm_cell_17/splitSplit,lstm_1/lstm_cell_17/split/split_dim:output:0$lstm_1/lstm_cell_17/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_1/lstm_cell_17/split?
lstm_1/lstm_cell_17/SigmoidSigmoid"lstm_1/lstm_cell_17/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_1/lstm_cell_17/Sigmoid?
lstm_1/lstm_cell_17/Sigmoid_1Sigmoid"lstm_1/lstm_cell_17/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_1/lstm_cell_17/Sigmoid_1?
lstm_1/lstm_cell_17/mulMul!lstm_1/lstm_cell_17/Sigmoid_1:y:0lstm_1/zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_1/lstm_cell_17/mul?
lstm_1/lstm_cell_17/Sigmoid_2Sigmoid"lstm_1/lstm_cell_17/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_1/lstm_cell_17/Sigmoid_2?
lstm_1/lstm_cell_17/mul_1Mul"lstm_1/lstm_cell_17/split:output:2!lstm_1/lstm_cell_17/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
lstm_1/lstm_cell_17/mul_1?
lstm_1/lstm_cell_17/IdentityIdentitylstm_1/lstm_cell_17/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_1/lstm_cell_17/Identity?
lstm_1/lstm_cell_17/IdentityN	IdentityNlstm_1/lstm_cell_17/mul_1:z:0"lstm_1/lstm_cell_17/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1072351*<
_output_shapes*
(:??????????:??????????2
lstm_1/lstm_cell_17/IdentityN?
lstm_1/lstm_cell_17/mul_2Mullstm_1/lstm_cell_17/Sigmoid:y:0&lstm_1/lstm_cell_17/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
lstm_1/lstm_cell_17/mul_2?
lstm_1/lstm_cell_17/add_1AddV2lstm_1/lstm_cell_17/mul:z:0lstm_1/lstm_cell_17/mul_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_1/lstm_cell_17/add_1?
lstm_1/lstm_cell_17/Sigmoid_3Sigmoid"lstm_1/lstm_cell_17/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_1/lstm_cell_17/Sigmoid_3?
lstm_1/lstm_cell_17/Sigmoid_4Sigmoidlstm_1/lstm_cell_17/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_1/lstm_cell_17/Sigmoid_4?
lstm_1/lstm_cell_17/mul_3Mullstm_1/lstm_cell_17/add_1:z:0!lstm_1/lstm_cell_17/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
lstm_1/lstm_cell_17/mul_3?
lstm_1/lstm_cell_17/Identity_1Identitylstm_1/lstm_cell_17/mul_3:z:0*
T0*(
_output_shapes
:??????????2 
lstm_1/lstm_cell_17/Identity_1?
lstm_1/lstm_cell_17/IdentityN_1	IdentityNlstm_1/lstm_cell_17/mul_3:z:0lstm_1/lstm_cell_17/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1072360*<
_output_shapes*
(:??????????:??????????2!
lstm_1/lstm_cell_17/IdentityN_1?
lstm_1/lstm_cell_17/mul_4Mul!lstm_1/lstm_cell_17/Sigmoid_3:y:0(lstm_1/lstm_cell_17/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_1/lstm_cell_17/mul_4?
$lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2&
$lstm_1/TensorArrayV2_1/element_shape?
lstm_1/TensorArrayV2_1TensorListReserve-lstm_1/TensorArrayV2_1/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_1/TensorArrayV2_1\
lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_1/time?
lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
lstm_1/while/maximum_iterationsx
lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_1/while/loop_counter?
lstm_1/whileWhile"lstm_1/while/loop_counter:output:0(lstm_1/while/maximum_iterations:output:0lstm_1/time:output:0lstm_1/TensorArrayV2_1:handle:0lstm_1/zeros:output:0lstm_1/zeros_1:output:0lstm_1/strided_slice_1:output:0>lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_1_lstm_cell_17_matmul_readvariableop_resource4lstm_1_lstm_cell_17_matmul_1_readvariableop_resource3lstm_1_lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*%
bodyR
lstm_1_while_body_1072371*%
condR
lstm_1_while_cond_1072370*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
lstm_1/while?
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shape?
)lstm_1/TensorArrayV2Stack/TensorListStackTensorListStacklstm_1/while:output:3@lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02+
)lstm_1/TensorArrayV2Stack/TensorListStack?
lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_1/strided_slice_3/stack?
lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_1/strided_slice_3/stack_1?
lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_3/stack_2?
lstm_1/strided_slice_3StridedSlice2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_1/strided_slice_3/stack:output:0'lstm_1/strided_slice_3/stack_1:output:0'lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm_1/strided_slice_3?
lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_1/transpose_1/perm?
lstm_1/transpose_1	Transpose2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm_1/transpose_1t
lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_1/runtimeb
lstm_2/ShapeShapelstm_1/transpose_1:y:0*
T0*
_output_shapes
:2
lstm_2/Shape?
lstm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice/stack?
lstm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_2/strided_slice/stack_1?
lstm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_2/strided_slice/stack_2?
lstm_2/strided_sliceStridedSlicelstm_2/Shape:output:0#lstm_2/strided_slice/stack:output:0%lstm_2/strided_slice/stack_1:output:0%lstm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_2/strided_slicej
lstm_2/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_2/zeros/mul/y?
lstm_2/zeros/mulMullstm_2/strided_slice:output:0lstm_2/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros/mulm
lstm_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_2/zeros/Less/y?
lstm_2/zeros/LessLesslstm_2/zeros/mul:z:0lstm_2/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros/Lessp
lstm_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_2/zeros/packed/1?
lstm_2/zeros/packedPacklstm_2/strided_slice:output:0lstm_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_2/zeros/packedm
lstm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_2/zeros/Const?
lstm_2/zerosFilllstm_2/zeros/packed:output:0lstm_2/zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_2/zerosn
lstm_2/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_2/zeros_1/mul/y?
lstm_2/zeros_1/mulMullstm_2/strided_slice:output:0lstm_2/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros_1/mulq
lstm_2/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_2/zeros_1/Less/y?
lstm_2/zeros_1/LessLesslstm_2/zeros_1/mul:z:0lstm_2/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros_1/Lesst
lstm_2/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_2/zeros_1/packed/1?
lstm_2/zeros_1/packedPacklstm_2/strided_slice:output:0 lstm_2/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_2/zeros_1/packedq
lstm_2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_2/zeros_1/Const?
lstm_2/zeros_1Filllstm_2/zeros_1/packed:output:0lstm_2/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_2/zeros_1?
lstm_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_2/transpose/perm?
lstm_2/transpose	Transposelstm_1/transpose_1:y:0lstm_2/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm_2/transposed
lstm_2/Shape_1Shapelstm_2/transpose:y:0*
T0*
_output_shapes
:2
lstm_2/Shape_1?
lstm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice_1/stack?
lstm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_1/stack_1?
lstm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_1/stack_2?
lstm_2/strided_slice_1StridedSlicelstm_2/Shape_1:output:0%lstm_2/strided_slice_1/stack:output:0'lstm_2/strided_slice_1/stack_1:output:0'lstm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_2/strided_slice_1?
"lstm_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"lstm_2/TensorArrayV2/element_shape?
lstm_2/TensorArrayV2TensorListReserve+lstm_2/TensorArrayV2/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_2/TensorArrayV2?
<lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2>
<lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape?
.lstm_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_2/transpose:y:0Elstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_2/TensorArrayUnstack/TensorListFromTensor?
lstm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice_2/stack?
lstm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_2/stack_1?
lstm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_2/stack_2?
lstm_2/strided_slice_2StridedSlicelstm_2/transpose:y:0%lstm_2/strided_slice_2/stack:output:0'lstm_2/strided_slice_2/stack_1:output:0'lstm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm_2/strided_slice_2?
)lstm_2/lstm_cell_18/MatMul/ReadVariableOpReadVariableOp2lstm_2_lstm_cell_18_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02+
)lstm_2/lstm_cell_18/MatMul/ReadVariableOp?
lstm_2/lstm_cell_18/MatMulMatMullstm_2/strided_slice_2:output:01lstm_2/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_2/lstm_cell_18/MatMul?
+lstm_2/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp4lstm_2_lstm_cell_18_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02-
+lstm_2/lstm_cell_18/MatMul_1/ReadVariableOp?
lstm_2/lstm_cell_18/MatMul_1MatMullstm_2/zeros:output:03lstm_2/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_2/lstm_cell_18/MatMul_1?
lstm_2/lstm_cell_18/addAddV2$lstm_2/lstm_cell_18/MatMul:product:0&lstm_2/lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_2/lstm_cell_18/add?
*lstm_2/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp3lstm_2_lstm_cell_18_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*lstm_2/lstm_cell_18/BiasAdd/ReadVariableOp?
lstm_2/lstm_cell_18/BiasAddBiasAddlstm_2/lstm_cell_18/add:z:02lstm_2/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_2/lstm_cell_18/BiasAdd?
#lstm_2/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#lstm_2/lstm_cell_18/split/split_dim?
lstm_2/lstm_cell_18/splitSplit,lstm_2/lstm_cell_18/split/split_dim:output:0$lstm_2/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
lstm_2/lstm_cell_18/split?
lstm_2/lstm_cell_18/SigmoidSigmoid"lstm_2/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_2/lstm_cell_18/Sigmoid?
lstm_2/lstm_cell_18/Sigmoid_1Sigmoid"lstm_2/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_2/lstm_cell_18/Sigmoid_1?
lstm_2/lstm_cell_18/mulMul!lstm_2/lstm_cell_18/Sigmoid_1:y:0lstm_2/zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_2/lstm_cell_18/mul?
lstm_2/lstm_cell_18/Sigmoid_2Sigmoid"lstm_2/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_2/lstm_cell_18/Sigmoid_2?
lstm_2/lstm_cell_18/mul_1Mul"lstm_2/lstm_cell_18/split:output:2!lstm_2/lstm_cell_18/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
lstm_2/lstm_cell_18/mul_1?
lstm_2/lstm_cell_18/IdentityIdentitylstm_2/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_2/lstm_cell_18/Identity?
lstm_2/lstm_cell_18/IdentityN	IdentityNlstm_2/lstm_cell_18/mul_1:z:0"lstm_2/lstm_cell_18/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1072518*:
_output_shapes(
&:?????????@:?????????@2
lstm_2/lstm_cell_18/IdentityN?
lstm_2/lstm_cell_18/mul_2Mullstm_2/lstm_cell_18/Sigmoid:y:0&lstm_2/lstm_cell_18/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
lstm_2/lstm_cell_18/mul_2?
lstm_2/lstm_cell_18/add_1AddV2lstm_2/lstm_cell_18/mul:z:0lstm_2/lstm_cell_18/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
lstm_2/lstm_cell_18/add_1?
lstm_2/lstm_cell_18/Sigmoid_3Sigmoid"lstm_2/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_2/lstm_cell_18/Sigmoid_3?
lstm_2/lstm_cell_18/Sigmoid_4Sigmoidlstm_2/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_2/lstm_cell_18/Sigmoid_4?
lstm_2/lstm_cell_18/mul_3Mullstm_2/lstm_cell_18/add_1:z:0!lstm_2/lstm_cell_18/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
lstm_2/lstm_cell_18/mul_3?
lstm_2/lstm_cell_18/Identity_1Identitylstm_2/lstm_cell_18/mul_3:z:0*
T0*'
_output_shapes
:?????????@2 
lstm_2/lstm_cell_18/Identity_1?
lstm_2/lstm_cell_18/IdentityN_1	IdentityNlstm_2/lstm_cell_18/mul_3:z:0lstm_2/lstm_cell_18/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1072527*:
_output_shapes(
&:?????????@:?????????@2!
lstm_2/lstm_cell_18/IdentityN_1?
lstm_2/lstm_cell_18/mul_4Mul!lstm_2/lstm_cell_18/Sigmoid_3:y:0(lstm_2/lstm_cell_18/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_2/lstm_cell_18/mul_4?
$lstm_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2&
$lstm_2/TensorArrayV2_1/element_shape?
lstm_2/TensorArrayV2_1TensorListReserve-lstm_2/TensorArrayV2_1/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_2/TensorArrayV2_1\
lstm_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_2/time?
lstm_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
lstm_2/while/maximum_iterationsx
lstm_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_2/while/loop_counter?
lstm_2/whileWhile"lstm_2/while/loop_counter:output:0(lstm_2/while/maximum_iterations:output:0lstm_2/time:output:0lstm_2/TensorArrayV2_1:handle:0lstm_2/zeros:output:0lstm_2/zeros_1:output:0lstm_2/strided_slice_1:output:0>lstm_2/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_2_lstm_cell_18_matmul_readvariableop_resource4lstm_2_lstm_cell_18_matmul_1_readvariableop_resource3lstm_2_lstm_cell_18_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*%
bodyR
lstm_2_while_body_1072538*%
condR
lstm_2_while_cond_1072537*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
lstm_2/while?
7lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   29
7lstm_2/TensorArrayV2Stack/TensorListStack/element_shape?
)lstm_2/TensorArrayV2Stack/TensorListStackTensorListStacklstm_2/while:output:3@lstm_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????@*
element_dtype02+
)lstm_2/TensorArrayV2Stack/TensorListStack?
lstm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_2/strided_slice_3/stack?
lstm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_2/strided_slice_3/stack_1?
lstm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_3/stack_2?
lstm_2/strided_slice_3StridedSlice2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_2/strided_slice_3/stack:output:0'lstm_2/strided_slice_3/stack_1:output:0'lstm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
lstm_2/strided_slice_3?
lstm_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_2/transpose_1/perm?
lstm_2/transpose_1	Transpose2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????@2
lstm_2/transpose_1t
lstm_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_2/runtime?
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2 
time_distributed/Reshape/shape?
time_distributed/ReshapeReshapelstm_2/transpose_1:y:0'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????@2
time_distributed/Reshape?
.time_distributed/dense_2/MatMul/ReadVariableOpReadVariableOp7time_distributed_dense_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype020
.time_distributed/dense_2/MatMul/ReadVariableOp?
time_distributed/dense_2/MatMulMatMul!time_distributed/Reshape:output:06time_distributed/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2!
time_distributed/dense_2/MatMul?
/time_distributed/dense_2/BiasAdd/ReadVariableOpReadVariableOp8time_distributed_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype021
/time_distributed/dense_2/BiasAdd/ReadVariableOp?
 time_distributed/dense_2/BiasAddBiasAdd)time_distributed/dense_2/MatMul:product:07time_distributed/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2"
 time_distributed/dense_2/BiasAdd?
 time_distributed/dense_2/SigmoidSigmoid)time_distributed/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2"
 time_distributed/dense_2/Sigmoid?
time_distributed/dense_2/mulMul)time_distributed/dense_2/BiasAdd:output:0$time_distributed/dense_2/Sigmoid:y:0*
T0*'
_output_shapes
:?????????@2
time_distributed/dense_2/mul?
!time_distributed/dense_2/IdentityIdentity time_distributed/dense_2/mul:z:0*
T0*'
_output_shapes
:?????????@2#
!time_distributed/dense_2/Identity?
"time_distributed/dense_2/IdentityN	IdentityN time_distributed/dense_2/mul:z:0)time_distributed/dense_2/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1072639*:
_output_shapes(
&:?????????@:?????????@2$
"time_distributed/dense_2/IdentityN?
 time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   @   2"
 time_distributed/Reshape_1/shape?
time_distributed/Reshape_1Reshape+time_distributed/dense_2/IdentityN:output:0)time_distributed/Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????@2
time_distributed/Reshape_1?
 time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2"
 time_distributed/Reshape_2/shape?
time_distributed/Reshape_2Reshapelstm_2/transpose_1:y:0)time_distributed/Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????@2
time_distributed/Reshape_2?
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2"
 time_distributed_1/Reshape/shape?
time_distributed_1/ReshapeReshape#time_distributed/Reshape_1:output:0)time_distributed_1/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????@2
time_distributed_1/Reshape?
0time_distributed_1/dense_3/MatMul/ReadVariableOpReadVariableOp9time_distributed_1_dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype022
0time_distributed_1/dense_3/MatMul/ReadVariableOp?
!time_distributed_1/dense_3/MatMulMatMul#time_distributed_1/Reshape:output:08time_distributed_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!time_distributed_1/dense_3/MatMul?
1time_distributed_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype023
1time_distributed_1/dense_3/BiasAdd/ReadVariableOp?
"time_distributed_1/dense_3/BiasAddBiasAdd+time_distributed_1/dense_3/MatMul:product:09time_distributed_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2$
"time_distributed_1/dense_3/BiasAdd?
"time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????      2$
"time_distributed_1/Reshape_1/shape?
time_distributed_1/Reshape_1Reshape+time_distributed_1/dense_3/BiasAdd:output:0+time_distributed_1/Reshape_1/shape:output:0*
T0*+
_output_shapes
:?????????2
time_distributed_1/Reshape_1?
"time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2$
"time_distributed_1/Reshape_2/shape?
time_distributed_1/Reshape_2Reshape#time_distributed/Reshape_1:output:0+time_distributed_1/Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????@2
time_distributed_1/Reshape_2?
IdentityIdentity%time_distributed_1/Reshape_1:output:0+^lstm_1/lstm_cell_17/BiasAdd/ReadVariableOp*^lstm_1/lstm_cell_17/MatMul/ReadVariableOp,^lstm_1/lstm_cell_17/MatMul_1/ReadVariableOp^lstm_1/while+^lstm_2/lstm_cell_18/BiasAdd/ReadVariableOp*^lstm_2/lstm_cell_18/MatMul/ReadVariableOp,^lstm_2/lstm_cell_18/MatMul_1/ReadVariableOp^lstm_2/while0^time_distributed/dense_2/BiasAdd/ReadVariableOp/^time_distributed/dense_2/MatMul/ReadVariableOp2^time_distributed_1/dense_3/BiasAdd/ReadVariableOp1^time_distributed_1/dense_3/MatMul/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : 2X
*lstm_1/lstm_cell_17/BiasAdd/ReadVariableOp*lstm_1/lstm_cell_17/BiasAdd/ReadVariableOp2V
)lstm_1/lstm_cell_17/MatMul/ReadVariableOp)lstm_1/lstm_cell_17/MatMul/ReadVariableOp2Z
+lstm_1/lstm_cell_17/MatMul_1/ReadVariableOp+lstm_1/lstm_cell_17/MatMul_1/ReadVariableOp2
lstm_1/whilelstm_1/while2X
*lstm_2/lstm_cell_18/BiasAdd/ReadVariableOp*lstm_2/lstm_cell_18/BiasAdd/ReadVariableOp2V
)lstm_2/lstm_cell_18/MatMul/ReadVariableOp)lstm_2/lstm_cell_18/MatMul/ReadVariableOp2Z
+lstm_2/lstm_cell_18/MatMul_1/ReadVariableOp+lstm_2/lstm_cell_18/MatMul_1/ReadVariableOp2
lstm_2/whilelstm_2/while2b
/time_distributed/dense_2/BiasAdd/ReadVariableOp/time_distributed/dense_2/BiasAdd/ReadVariableOp2`
.time_distributed/dense_2/MatMul/ReadVariableOp.time_distributed/dense_2/MatMul/ReadVariableOp2f
1time_distributed_1/dense_3/BiasAdd/ReadVariableOp1time_distributed_1/dense_3/BiasAdd/ReadVariableOp2d
0time_distributed_1/dense_3/MatMul/ReadVariableOp0time_distributed_1/dense_3/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?c
?
C__inference_lstm_1_layer_call_and_return_conditional_losses_1073593

inputs>
+lstm_cell_17_matmul_readvariableop_resource:	?A
-lstm_cell_17_matmul_1_readvariableop_resource:
??;
,lstm_cell_17_biasadd_readvariableop_resource:	?
identity??#lstm_cell_17/BiasAdd/ReadVariableOp?"lstm_cell_17/MatMul/ReadVariableOp?$lstm_cell_17/MatMul_1/ReadVariableOp?whileD
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
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"lstm_cell_17/MatMul/ReadVariableOp?
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/MatMul?
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$lstm_cell_17/MatMul_1/ReadVariableOp?
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/MatMul_1?
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/add?
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_17/BiasAdd/ReadVariableOp?
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/BiasAdd~
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_17/split/split_dim?
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_17/split?
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Sigmoid?
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Sigmoid_1?
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/mul?
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Sigmoid_2?
lstm_cell_17/mul_1Mullstm_cell_17/split:output:2lstm_cell_17/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/mul_1?
lstm_cell_17/IdentityIdentitylstm_cell_17/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Identity?
lstm_cell_17/IdentityN	IdentityNlstm_cell_17/mul_1:z:0lstm_cell_17/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1073479*<
_output_shapes*
(:??????????:??????????2
lstm_cell_17/IdentityN?
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/mul_2?
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/add_1?
lstm_cell_17/Sigmoid_3Sigmoidlstm_cell_17/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Sigmoid_3?
lstm_cell_17/Sigmoid_4Sigmoidlstm_cell_17/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Sigmoid_4?
lstm_cell_17/mul_3Mullstm_cell_17/add_1:z:0lstm_cell_17/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/mul_3?
lstm_cell_17/Identity_1Identitylstm_cell_17/mul_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/Identity_1?
lstm_cell_17/IdentityN_1	IdentityNlstm_cell_17/mul_3:z:0lstm_cell_17/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1073488*<
_output_shapes*
(:??????????:??????????2
lstm_cell_17/IdentityN_1?
lstm_cell_17/mul_4Mullstm_cell_17/Sigmoid_3:y:0!lstm_cell_17/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_17/mul_4?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1073499*
condR
while_cond_1073498*M
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
IdentityIdentitytranspose_1:y:0$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1071281
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1071281___redundant_placeholder05
1while_while_cond_1071281___redundant_placeholder15
1while_while_cond_1071281___redundant_placeholder25
1while_while_cond_1071281___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
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
2__inference_time_distributed_layer_call_fn_1074639

inputs
unknown:@@
	unknown_0:@
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
GPU 2J 8? *V
fQRO
M__inference_time_distributed_layer_call_and_return_conditional_losses_10709562
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?L
?
while_body_1074227
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_18_matmul_readvariableop_resource_0:
??H
5while_lstm_cell_18_matmul_1_readvariableop_resource_0:	@?C
4while_lstm_cell_18_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_18_matmul_readvariableop_resource:
??F
3while_lstm_cell_18_matmul_1_readvariableop_resource:	@?A
2while_lstm_cell_18_biasadd_readvariableop_resource:	???)while/lstm_cell_18/BiasAdd/ReadVariableOp?(while/lstm_cell_18/MatMul/ReadVariableOp?*while/lstm_cell_18/MatMul_1/ReadVariableOp?
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
(while/lstm_cell_18/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_18_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02*
(while/lstm_cell_18/MatMul/ReadVariableOp?
while/lstm_cell_18/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_18/MatMul?
*while/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_18_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02,
*while/lstm_cell_18/MatMul_1/ReadVariableOp?
while/lstm_cell_18/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_18/MatMul_1?
while/lstm_cell_18/addAddV2#while/lstm_cell_18/MatMul:product:0%while/lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_18/add?
)while/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_18_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_18/BiasAdd/ReadVariableOp?
while/lstm_cell_18/BiasAddBiasAddwhile/lstm_cell_18/add:z:01while/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_18/BiasAdd?
"while/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_18/split/split_dim?
while/lstm_cell_18/splitSplit+while/lstm_cell_18/split/split_dim:output:0#while/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
while/lstm_cell_18/split?
while/lstm_cell_18/SigmoidSigmoid!while/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Sigmoid?
while/lstm_cell_18/Sigmoid_1Sigmoid!while/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Sigmoid_1?
while/lstm_cell_18/mulMul while/lstm_cell_18/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/mul?
while/lstm_cell_18/Sigmoid_2Sigmoid!while/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Sigmoid_2?
while/lstm_cell_18/mul_1Mul!while/lstm_cell_18/split:output:2 while/lstm_cell_18/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/mul_1?
while/lstm_cell_18/IdentityIdentitywhile/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Identity?
while/lstm_cell_18/IdentityN	IdentityNwhile/lstm_cell_18/mul_1:z:0!while/lstm_cell_18/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1074269*:
_output_shapes(
&:?????????@:?????????@2
while/lstm_cell_18/IdentityN?
while/lstm_cell_18/mul_2Mulwhile/lstm_cell_18/Sigmoid:y:0%while/lstm_cell_18/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/mul_2?
while/lstm_cell_18/add_1AddV2while/lstm_cell_18/mul:z:0while/lstm_cell_18/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/add_1?
while/lstm_cell_18/Sigmoid_3Sigmoid!while/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Sigmoid_3?
while/lstm_cell_18/Sigmoid_4Sigmoidwhile/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Sigmoid_4?
while/lstm_cell_18/mul_3Mulwhile/lstm_cell_18/add_1:z:0 while/lstm_cell_18/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/mul_3?
while/lstm_cell_18/Identity_1Identitywhile/lstm_cell_18/mul_3:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/Identity_1?
while/lstm_cell_18/IdentityN_1	IdentityNwhile/lstm_cell_18/mul_3:z:0while/lstm_cell_18/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1074278*:
_output_shapes(
&:?????????@:?????????@2 
while/lstm_cell_18/IdentityN_1?
while/lstm_cell_18/mul_4Mul while/lstm_cell_18/Sigmoid_3:y:0'while/lstm_cell_18/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_18/mul_4?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_18/mul_4:z:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_18/mul_4:z:0*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_18/add_1:z:0*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_18_biasadd_readvariableop_resource4while_lstm_cell_18_biasadd_readvariableop_resource_0"l
3while_lstm_cell_18_matmul_1_readvariableop_resource5while_lstm_cell_18_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_18_matmul_readvariableop_resource3while_lstm_cell_18_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2V
)while/lstm_cell_18/BiasAdd/ReadVariableOp)while/lstm_cell_18/BiasAdd/ReadVariableOp2T
(while/lstm_cell_18/MatMul/ReadVariableOp(while/lstm_cell_18/MatMul/ReadVariableOp2X
*while/lstm_cell_18/MatMul_1/ReadVariableOp*while/lstm_cell_18/MatMul_1/ReadVariableOp: 
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
: "?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
I
lstm_1_input9
serving_default_lstm_1_input:0?????????J
time_distributed_14
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?B
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
trainable_variables
		variables

regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?_default_save_signature
?__call__"??
_tf_keras_sequential?>{"name": "sequential_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 24, 19]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_1_input"}}, {"class_name": "LSTM", "config": {"name": "lstm_1", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "LSTM", "config": {"name": "lstm_2", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_1", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}}]}, "shared_object_id": 19, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 19]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 20}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 19]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 24, 19]}, "float32", "lstm_1_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 24, 19]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_1_input"}, "shared_object_id": 0}, {"class_name": "LSTM", "config": {"name": "lstm_1", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 5}, {"class_name": "LSTM", "config": {"name": "lstm_2", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 10}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13}}, "shared_object_id": 14}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_1", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17}}, "shared_object_id": 18}]}}, "training_config": {"loss": {"class_name": "MeanAbsoluteError", "config": {"reduction": "auto", "name": "mean_absolute_error"}, "shared_object_id": 21}, "metrics": [[{"class_name": "MeanSquaredLogarithmicError", "config": {"name": "mean_squared_logarithmic_error", "dtype": "float32"}, "shared_object_id": 22}, {"class_name": "MeanSquaredError", "config": {"name": "mean_squared_error", "dtype": "float32"}, "shared_object_id": 23}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
cell

state_spec
#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_rnn_layer?
{"name": "lstm_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTM", "config": {"name": "lstm_1", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 5, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 19]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 20}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 19]}}
?
cell

state_spec
#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_rnn_layer?
{"name": "lstm_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTM", "config": {"name": "lstm_2", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 10, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 128]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 24}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 128]}}
?

	layer
#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "time_distributed", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "TimeDistributed", "config": {"name": "time_distributed", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13}}, "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 64]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 25}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 64]}}
?

	 layer
#!_self_saveable_object_factories
"trainable_variables
#	variables
$regularization_losses
%	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "time_distributed_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "TimeDistributed", "config": {"name": "time_distributed_1", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17}}, "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 64]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 26}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 64]}}
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
?
trainable_variables
		variables
5metrics
6non_trainable_variables

7layers
8layer_regularization_losses

regularization_losses
9layer_metrics
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	
:
state_size

+kernel
,recurrent_kernel
-bias
#;_self_saveable_object_factories
<trainable_variables
=	variables
>regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "lstm_cell_17", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTMCell", "config": {"name": "lstm_cell_17", "trainable": true, "dtype": "float32", "units": 128, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 4}
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
?
trainable_variables
	variables
@metrics
Anon_trainable_variables

Blayers

Cstates
Dlayer_regularization_losses
regularization_losses
Elayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	
F
state_size

.kernel
/recurrent_kernel
0bias
#G_self_saveable_object_factories
Htrainable_variables
I	variables
Jregularization_losses
K	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "lstm_cell_18", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTMCell", "config": {"name": "lstm_cell_18", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 9}
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
?
trainable_variables
	variables
Lmetrics
Mnon_trainable_variables

Nlayers

Ostates
Player_regularization_losses
regularization_losses
Qlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

1kernel
2bias
#R_self_saveable_object_factories
Strainable_variables
T	variables
Uregularization_losses
V	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 27}}
 "
trackable_dict_wrapper
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
?
trainable_variables
	variables
Wmetrics
Xnon_trainable_variables

Ylayers
Zlayer_regularization_losses
regularization_losses
[layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

3kernel
4bias
#\_self_saveable_object_factories
]trainable_variables
^	variables
_regularization_losses
`	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 28}}
 "
trackable_dict_wrapper
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
?
"trainable_variables
#	variables
ametrics
bnon_trainable_variables

clayers
dlayer_regularization_losses
$regularization_losses
elayer_metrics
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
,:*	?2lstm_1/lstm_cell_1/kernel
7:5
??2#lstm_1/lstm_cell_1/recurrent_kernel
&:$?2lstm_1/lstm_cell_1/bias
-:+
??2lstm_2/lstm_cell_2/kernel
6:4	@?2#lstm_2/lstm_cell_2/recurrent_kernel
&:$?2lstm_2/lstm_cell_2/bias
):'@@2time_distributed/kernel
#:!@2time_distributed/bias
+:)@2time_distributed_1/kernel
%:#2time_distributed_1/bias
5
f0
g1
h2"
trackable_list_wrapper
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
?
<trainable_variables
=	variables
imetrics
jnon_trainable_variables

klayers
llayer_regularization_losses
>regularization_losses
mlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
trackable_dict_wrapper
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
 "
trackable_list_wrapper
?
Htrainable_variables
I	variables
nmetrics
onon_trainable_variables

players
qlayer_regularization_losses
Jregularization_losses
rlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Strainable_variables
T	variables
smetrics
tnon_trainable_variables

ulayers
vlayer_regularization_losses
Uregularization_losses
wlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
?
]trainable_variables
^	variables
xmetrics
ynon_trainable_variables

zlayers
{layer_regularization_losses
_regularization_losses
|layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
 0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?
	}total
	~count
	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 29}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanSquaredLogarithmicError", "name": "mean_squared_logarithmic_error", "dtype": "float32", "config": {"name": "mean_squared_logarithmic_error", "dtype": "float32"}, "shared_object_id": 22}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanSquaredError", "name": "mean_squared_error", "dtype": "float32", "config": {"name": "mean_squared_error", "dtype": "float32"}, "shared_object_id": 23}
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
 "
trackable_dict_wrapper
:  (2total
:  (2count
.
}0
~1"
trackable_list_wrapper
-
	variables"
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
1:/	?2 Adam/lstm_1/lstm_cell_1/kernel/m
<::
??2*Adam/lstm_1/lstm_cell_1/recurrent_kernel/m
+:)?2Adam/lstm_1/lstm_cell_1/bias/m
2:0
??2 Adam/lstm_2/lstm_cell_2/kernel/m
;:9	@?2*Adam/lstm_2/lstm_cell_2/recurrent_kernel/m
+:)?2Adam/lstm_2/lstm_cell_2/bias/m
.:,@@2Adam/time_distributed/kernel/m
(:&@2Adam/time_distributed/bias/m
0:.@2 Adam/time_distributed_1/kernel/m
*:(2Adam/time_distributed_1/bias/m
1:/	?2 Adam/lstm_1/lstm_cell_1/kernel/v
<::
??2*Adam/lstm_1/lstm_cell_1/recurrent_kernel/v
+:)?2Adam/lstm_1/lstm_cell_1/bias/v
2:0
??2 Adam/lstm_2/lstm_cell_2/kernel/v
;:9	@?2*Adam/lstm_2/lstm_cell_2/recurrent_kernel/v
+:)?2Adam/lstm_2/lstm_cell_2/bias/v
.:,@@2Adam/time_distributed/kernel/v
(:&@2Adam/time_distributed/bias/v
0:.@2 Adam/time_distributed_1/kernel/v
*:(2Adam/time_distributed_1/bias/v
?2?
I__inference_sequential_1_layer_call_and_return_conditional_losses_1072662
I__inference_sequential_1_layer_call_and_return_conditional_losses_1073030
I__inference_sequential_1_layer_call_and_return_conditional_losses_1072229
I__inference_sequential_1_layer_call_and_return_conditional_losses_1072261?
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
"__inference__wrapped_model_1069615?
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
lstm_1_input?????????
?2?
.__inference_sequential_1_layer_call_fn_1071634
.__inference_sequential_1_layer_call_fn_1073055
.__inference_sequential_1_layer_call_fn_1073080
.__inference_sequential_1_layer_call_fn_1072197?
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
C__inference_lstm_1_layer_call_and_return_conditional_losses_1073251
C__inference_lstm_1_layer_call_and_return_conditional_losses_1073422
C__inference_lstm_1_layer_call_and_return_conditional_losses_1073593
C__inference_lstm_1_layer_call_and_return_conditional_losses_1073764?
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
(__inference_lstm_1_layer_call_fn_1073775
(__inference_lstm_1_layer_call_fn_1073786
(__inference_lstm_1_layer_call_fn_1073797
(__inference_lstm_1_layer_call_fn_1073808?
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
C__inference_lstm_2_layer_call_and_return_conditional_losses_1073979
C__inference_lstm_2_layer_call_and_return_conditional_losses_1074150
C__inference_lstm_2_layer_call_and_return_conditional_losses_1074321
C__inference_lstm_2_layer_call_and_return_conditional_losses_1074492?
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
(__inference_lstm_2_layer_call_fn_1074503
(__inference_lstm_2_layer_call_fn_1074514
(__inference_lstm_2_layer_call_fn_1074525
(__inference_lstm_2_layer_call_fn_1074536?
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
?2?
M__inference_time_distributed_layer_call_and_return_conditional_losses_1074563
M__inference_time_distributed_layer_call_and_return_conditional_losses_1074590
M__inference_time_distributed_layer_call_and_return_conditional_losses_1074610
M__inference_time_distributed_layer_call_and_return_conditional_losses_1074630?
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
2__inference_time_distributed_layer_call_fn_1074639
2__inference_time_distributed_layer_call_fn_1074648
2__inference_time_distributed_layer_call_fn_1074657
2__inference_time_distributed_layer_call_fn_1074666?
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
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_1074687
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_1074708
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_1074722
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_1074736?
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
4__inference_time_distributed_1_layer_call_fn_1074745
4__inference_time_distributed_1_layer_call_fn_1074754
4__inference_time_distributed_1_layer_call_fn_1074763
4__inference_time_distributed_1_layer_call_fn_1074772?
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
%__inference_signature_wrapper_1072294lstm_1_input"?
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
I__inference_lstm_cell_17_layer_call_and_return_conditional_losses_1074814
I__inference_lstm_cell_17_layer_call_and_return_conditional_losses_1074856?
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
.__inference_lstm_cell_17_layer_call_fn_1074873
.__inference_lstm_cell_17_layer_call_fn_1074890?
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
I__inference_lstm_cell_18_layer_call_and_return_conditional_losses_1074932
I__inference_lstm_cell_18_layer_call_and_return_conditional_losses_1074974?
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
.__inference_lstm_cell_18_layer_call_fn_1074991
.__inference_lstm_cell_18_layer_call_fn_1075008?
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
D__inference_dense_2_layer_call_and_return_conditional_losses_1075024?
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
)__inference_dense_2_layer_call_fn_1075033?
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
D__inference_dense_3_layer_call_and_return_conditional_losses_1075043?
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
)__inference_dense_3_layer_call_fn_1075052?
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
"__inference__wrapped_model_1069615?
+,-./012349?6
/?,
*?'
lstm_1_input?????????
? "K?H
F
time_distributed_10?-
time_distributed_1??????????
D__inference_dense_2_layer_call_and_return_conditional_losses_1075024\12/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????@
? |
)__inference_dense_2_layer_call_fn_1075033O12/?,
%?"
 ?
inputs?????????@
? "??????????@?
D__inference_dense_3_layer_call_and_return_conditional_losses_1075043\34/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? |
)__inference_dense_3_layer_call_fn_1075052O34/?,
%?"
 ?
inputs?????????@
? "???????????
C__inference_lstm_1_layer_call_and_return_conditional_losses_1073251?+,-O?L
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
C__inference_lstm_1_layer_call_and_return_conditional_losses_1073422?+,-O?L
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
C__inference_lstm_1_layer_call_and_return_conditional_losses_1073593r+,-??<
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
C__inference_lstm_1_layer_call_and_return_conditional_losses_1073764r+,-??<
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
(__inference_lstm_1_layer_call_fn_1073775~+,-O?L
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
(__inference_lstm_1_layer_call_fn_1073786~+,-O?L
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
(__inference_lstm_1_layer_call_fn_1073797e+,-??<
5?2
$?!
inputs?????????

 
p 

 
? "????????????
(__inference_lstm_1_layer_call_fn_1073808e+,-??<
5?2
$?!
inputs?????????

 
p

 
? "????????????
C__inference_lstm_2_layer_call_and_return_conditional_losses_1073979?./0P?M
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
C__inference_lstm_2_layer_call_and_return_conditional_losses_1074150?./0P?M
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
C__inference_lstm_2_layer_call_and_return_conditional_losses_1074321r./0@?=
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
C__inference_lstm_2_layer_call_and_return_conditional_losses_1074492r./0@?=
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
(__inference_lstm_2_layer_call_fn_1074503~./0P?M
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
(__inference_lstm_2_layer_call_fn_1074514~./0P?M
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
(__inference_lstm_2_layer_call_fn_1074525e./0@?=
6?3
%?"
inputs??????????

 
p 

 
? "??????????@?
(__inference_lstm_2_layer_call_fn_1074536e./0@?=
6?3
%?"
inputs??????????

 
p

 
? "??????????@?
I__inference_lstm_cell_17_layer_call_and_return_conditional_losses_1074814?+,-??
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
I__inference_lstm_cell_17_layer_call_and_return_conditional_losses_1074856?+,-??
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
.__inference_lstm_cell_17_layer_call_fn_1074873?+,-??
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
.__inference_lstm_cell_17_layer_call_fn_1074890?+,-??
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
I__inference_lstm_cell_18_layer_call_and_return_conditional_losses_1074932?./0??~
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
I__inference_lstm_cell_18_layer_call_and_return_conditional_losses_1074974?./0??~
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
.__inference_lstm_cell_18_layer_call_fn_1074991?./0??~
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
1/1?????????@?
.__inference_lstm_cell_18_layer_call_fn_1075008?./0??~
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
1/1?????????@?
I__inference_sequential_1_layer_call_and_return_conditional_losses_1072229z
+,-./01234A?>
7?4
*?'
lstm_1_input?????????
p 

 
? ")?&
?
0?????????
? ?
I__inference_sequential_1_layer_call_and_return_conditional_losses_1072261z
+,-./01234A?>
7?4
*?'
lstm_1_input?????????
p

 
? ")?&
?
0?????????
? ?
I__inference_sequential_1_layer_call_and_return_conditional_losses_1072662t
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
I__inference_sequential_1_layer_call_and_return_conditional_losses_1073030t
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
.__inference_sequential_1_layer_call_fn_1071634m
+,-./01234A?>
7?4
*?'
lstm_1_input?????????
p 

 
? "???????????
.__inference_sequential_1_layer_call_fn_1072197m
+,-./01234A?>
7?4
*?'
lstm_1_input?????????
p

 
? "???????????
.__inference_sequential_1_layer_call_fn_1073055g
+,-./01234;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
.__inference_sequential_1_layer_call_fn_1073080g
+,-./01234;?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_1072294?
+,-./01234I?F
? 
??<
:
lstm_1_input*?'
lstm_1_input?????????"K?H
F
time_distributed_10?-
time_distributed_1??????????
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_1074687~34D?A
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
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_1074708~34D?A
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
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_1074722l34;?8
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
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_1074736l34;?8
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
4__inference_time_distributed_1_layer_call_fn_1074745q34D?A
:?7
-?*
inputs??????????????????@
p 

 
? "%?"???????????????????
4__inference_time_distributed_1_layer_call_fn_1074754q34D?A
:?7
-?*
inputs??????????????????@
p

 
? "%?"???????????????????
4__inference_time_distributed_1_layer_call_fn_1074763_34;?8
1?.
$?!
inputs?????????@
p 

 
? "???????????
4__inference_time_distributed_1_layer_call_fn_1074772_34;?8
1?.
$?!
inputs?????????@
p

 
? "???????????
M__inference_time_distributed_layer_call_and_return_conditional_losses_1074563~12D?A
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
M__inference_time_distributed_layer_call_and_return_conditional_losses_1074590~12D?A
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
M__inference_time_distributed_layer_call_and_return_conditional_losses_1074610l12;?8
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
M__inference_time_distributed_layer_call_and_return_conditional_losses_1074630l12;?8
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
2__inference_time_distributed_layer_call_fn_1074639q12D?A
:?7
-?*
inputs??????????????????@
p 

 
? "%?"??????????????????@?
2__inference_time_distributed_layer_call_fn_1074648q12D?A
:?7
-?*
inputs??????????????????@
p

 
? "%?"??????????????????@?
2__inference_time_distributed_layer_call_fn_1074657_12;?8
1?.
$?!
inputs?????????@
p 

 
? "??????????@?
2__inference_time_distributed_layer_call_fn_1074666_12;?8
1?.
$?!
inputs?????????@
p

 
? "??????????@