??.
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
?"serve*2.4.12v2.4.1-0-g85c8b2a817f8??+
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
dtype0*?B
value?BB?B B?B
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
regularization_losses
trainable_variables
	variables
		keras_api


signatures
l
cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
l
cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
]
	layer
regularization_losses
	variables
trainable_variables
	keras_api
]
	layer
regularization_losses
	variables
trainable_variables
 	keras_api
?
!iter

"beta_1

#beta_2
	$decay
%learning_rate&m?'m?(m?)m?*m?+m?,m?-m?.m?/m?&v?'v?(v?)v?*v?+v?,v?-v?.v?/v?
 
F
&0
'1
(2
)3
*4
+5
,6
-7
.8
/9
F
&0
'1
(2
)3
*4
+5
,6
-7
.8
/9
?

0layers
regularization_losses
trainable_variables
1layer_regularization_losses
2layer_metrics
3non_trainable_variables
4metrics
	variables
 
~

&kernel
'recurrent_kernel
(bias
5regularization_losses
6	variables
7trainable_variables
8	keras_api
 
 

&0
'1
(2

&0
'1
(2
?

9layers

:states
regularization_losses
trainable_variables
;layer_regularization_losses
<layer_metrics
=non_trainable_variables
>metrics
	variables
~

)kernel
*recurrent_kernel
+bias
?regularization_losses
@	variables
Atrainable_variables
B	keras_api
 
 

)0
*1
+2

)0
*1
+2
?

Clayers

Dstates
regularization_losses
trainable_variables
Elayer_regularization_losses
Flayer_metrics
Gnon_trainable_variables
Hmetrics
	variables
h

,kernel
-bias
Iregularization_losses
J	variables
Ktrainable_variables
L	keras_api
 

,0
-1

,0
-1
?

Mlayers
regularization_losses
Nlayer_metrics
Olayer_regularization_losses
Pnon_trainable_variables
Qmetrics
	variables
trainable_variables
h

.kernel
/bias
Rregularization_losses
S	variables
Ttrainable_variables
U	keras_api
 

.0
/1

.0
/1
?

Vlayers
regularization_losses
Wlayer_metrics
Xlayer_regularization_losses
Ynon_trainable_variables
Zmetrics
	variables
trainable_variables
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
VARIABLE_VALUElstm_5/lstm_cell_5/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE#lstm_5/lstm_cell_5/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUElstm_5/lstm_cell_5/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_6/lstm_cell_6/kernel0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE#lstm_6/lstm_cell_6/recurrent_kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUElstm_6/lstm_cell_6/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEtime_distributed_3/kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEtime_distributed_3/bias0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEtime_distributed_4/kernel0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEtime_distributed_4/bias0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
3
 
 
 

[0
\1
]2
 

&0
'1
(2

&0
'1
(2
?

^layers
5regularization_losses
_layer_metrics
`layer_regularization_losses
anon_trainable_variables
bmetrics
6	variables
7trainable_variables

0
 
 
 
 
 
 

)0
*1
+2

)0
*1
+2
?

clayers
?regularization_losses
dlayer_metrics
elayer_regularization_losses
fnon_trainable_variables
gmetrics
@	variables
Atrainable_variables

0
 
 
 
 
 
 

,0
-1

,0
-1
?

hlayers
Iregularization_losses
ilayer_metrics
jlayer_regularization_losses
knon_trainable_variables
lmetrics
J	variables
Ktrainable_variables

0
 
 
 
 
 

.0
/1

.0
/1
?

mlayers
Rregularization_losses
nlayer_metrics
olayer_regularization_losses
pnon_trainable_variables
qmetrics
S	variables
Ttrainable_variables

0
 
 
 
 
4
	rtotal
	scount
t	variables
u	keras_api
D
	vtotal
	wcount
x
_fn_kwargs
y	variables
z	keras_api
D
	{total
	|count
}
_fn_kwargs
~	variables
	keras_api
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
r0
s1

t	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

v0
w1

y	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE
 

{0
|1

~	variables
??
VARIABLE_VALUE Adam/lstm_5/lstm_cell_5/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/lstm_5/lstm_cell_5/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/lstm_5/lstm_cell_5/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/lstm_6/lstm_cell_6/kernel/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/lstm_6/lstm_cell_6/recurrent_kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/lstm_6/lstm_cell_6/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/time_distributed_3/kernel/mLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/time_distributed_3/bias/mLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/time_distributed_4/kernel/mLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/time_distributed_4/bias/mLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/lstm_5/lstm_cell_5/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/lstm_5/lstm_cell_5/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/lstm_5/lstm_cell_5/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/lstm_6/lstm_cell_6/kernel/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/lstm_6/lstm_cell_6/recurrent_kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/lstm_6/lstm_cell_6/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/time_distributed_3/kernel/vLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/time_distributed_3/bias/vLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/time_distributed_4/kernel/vLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/time_distributed_4/bias/vLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
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
$__inference_signature_wrapper_561328
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
__inference__traced_save_564260
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
"__inference__traced_restore_564393??*
?
?
3__inference_time_distributed_3_layer_call_fn_563724

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
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_5610662
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
?K
?
while_body_560902
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_6_matmul_readvariableop_resource_08
4while_lstm_cell_6_matmul_1_readvariableop_resource_07
3while_lstm_cell_6_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_6_matmul_readvariableop_resource6
2while_lstm_cell_6_matmul_1_readvariableop_resource5
1while_lstm_cell_6_biasadd_readvariableop_resource??(while/lstm_cell_6/BiasAdd/ReadVariableOp?'while/lstm_cell_6/MatMul/ReadVariableOp?)while/lstm_cell_6/MatMul_1/ReadVariableOp?
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
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'while/lstm_cell_6/MatMul/ReadVariableOp?
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/MatMul?
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02+
)while/lstm_cell_6/MatMul_1/ReadVariableOp?
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/MatMul_1?
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/add?
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_6/BiasAdd/ReadVariableOp?
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/BiasAddt
while/lstm_cell_6/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_6/Const?
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_6/split/split_dim?
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
while/lstm_cell_6/split?
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Sigmoid?
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Sigmoid_1?
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/mul?
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Sigmoid_2?
while/lstm_cell_6/mul_1Mul while/lstm_cell_6/split:output:2while/lstm_cell_6/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/mul_1?
while/lstm_cell_6/IdentityIdentitywhile/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Identity?
while/lstm_cell_6/IdentityN	IdentityNwhile/lstm_cell_6/mul_1:z:0 while/lstm_cell_6/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-560945*:
_output_shapes(
&:?????????@:?????????@2
while/lstm_cell_6/IdentityN?
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid:y:0$while/lstm_cell_6/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/mul_2?
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/add_1?
while/lstm_cell_6/Sigmoid_3Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Sigmoid_3?
while/lstm_cell_6/Sigmoid_4Sigmoidwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Sigmoid_4?
while/lstm_cell_6/mul_3Mulwhile/lstm_cell_6/add_1:z:0while/lstm_cell_6/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/mul_3?
while/lstm_cell_6/Identity_1Identitywhile/lstm_cell_6/mul_3:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Identity_1?
while/lstm_cell_6/IdentityN_1	IdentityNwhile/lstm_cell_6/mul_3:z:0while/lstm_cell_6/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-560954*:
_output_shapes(
&:?????????@:?????????@2
while/lstm_cell_6/IdentityN_1?
while/lstm_cell_6/mul_4Mulwhile/lstm_cell_6/Sigmoid_3:y:0&while/lstm_cell_6/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/mul_4?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_6/mul_4:z:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_6/mul_4:z:0)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????@:?????????@: : :::2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
$__inference_signature_wrapper_561328
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
!__inference__wrapped_model_5587652
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
?c
?
B__inference_lstm_6_layer_call_and_return_conditional_losses_563399
inputs_0.
*lstm_cell_6_matmul_readvariableop_resource0
,lstm_cell_6_matmul_1_readvariableop_resource/
+lstm_cell_6_biasadd_readvariableop_resource
identity??"lstm_cell_6/BiasAdd/ReadVariableOp?!lstm_cell_6/MatMul/ReadVariableOp?#lstm_cell_6/MatMul_1/ReadVariableOp?whileF
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
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!lstm_cell_6/MatMul/ReadVariableOp?
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/MatMul?
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02%
#lstm_cell_6/MatMul_1/ReadVariableOp?
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/MatMul_1?
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/add?
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_6/BiasAdd/ReadVariableOp?
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/BiasAddh
lstm_cell_6/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_6/Const|
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_6/split/split_dim?
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
lstm_cell_6/split?
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Sigmoid?
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Sigmoid_1?
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/mul?
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Sigmoid_2?
lstm_cell_6/mul_1Mullstm_cell_6/split:output:2lstm_cell_6/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/mul_1?
lstm_cell_6/IdentityIdentitylstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Identity?
lstm_cell_6/IdentityN	IdentityNlstm_cell_6/mul_1:z:0lstm_cell_6/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-563284*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_6/IdentityN?
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/mul_2?
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/add_1?
lstm_cell_6/Sigmoid_3Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Sigmoid_3?
lstm_cell_6/Sigmoid_4Sigmoidlstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Sigmoid_4?
lstm_cell_6/mul_3Mullstm_cell_6/add_1:z:0lstm_cell_6/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/mul_3?
lstm_cell_6/Identity_1Identitylstm_cell_6/mul_3:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Identity_1?
lstm_cell_6/IdentityN_1	IdentityNlstm_cell_6/mul_3:z:0lstm_cell_6/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-563293*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_6/IdentityN_1?
lstm_cell_6/mul_4Mullstm_cell_6/Sigmoid_3:y:0 lstm_cell_6/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/mul_4?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
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
while_body_563304*
condR
while_cond_563303*K
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
IdentityIdentitytranspose_1:y:0#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :??????????????????@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:???????????????????:::2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?c
?
B__inference_lstm_5_layer_call_and_return_conditional_losses_560622

inputs.
*lstm_cell_5_matmul_readvariableop_resource0
,lstm_cell_5_matmul_1_readvariableop_resource/
+lstm_cell_5_biasadd_readvariableop_resource
identity??"lstm_cell_5/BiasAdd/ReadVariableOp?!lstm_cell_5/MatMul/ReadVariableOp?#lstm_cell_5/MatMul_1/ReadVariableOp?whileD
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
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_5/MatMul/ReadVariableOp?
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/MatMul?
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_5/MatMul_1/ReadVariableOp?
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/MatMul_1?
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/add?
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_5/BiasAdd/ReadVariableOp?
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/BiasAddh
lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/Const|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dim?
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_5/split?
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid?
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_1?
lstm_cell_5/mulMullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul?
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_2?
lstm_cell_5/mul_1Mullstm_cell_5/split:output:2lstm_cell_5/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_1?
lstm_cell_5/IdentityIdentitylstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Identity?
lstm_cell_5/IdentityN	IdentityNlstm_cell_5/mul_1:z:0lstm_cell_5/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-560507*<
_output_shapes*
(:??????????:??????????2
lstm_cell_5/IdentityN?
lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_2?
lstm_cell_5/add_1AddV2lstm_cell_5/mul:z:0lstm_cell_5/mul_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/add_1?
lstm_cell_5/Sigmoid_3Sigmoidlstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_3?
lstm_cell_5/Sigmoid_4Sigmoidlstm_cell_5/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_4?
lstm_cell_5/mul_3Mullstm_cell_5/add_1:z:0lstm_cell_5/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_3?
lstm_cell_5/Identity_1Identitylstm_cell_5/mul_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Identity_1?
lstm_cell_5/IdentityN_1	IdentityNlstm_cell_5/mul_3:z:0lstm_cell_5/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-560516*<
_output_shapes*
(:??????????:??????????2
lstm_cell_5/IdentityN_1?
lstm_cell_5/mul_4Mullstm_cell_5/Sigmoid_3:y:0 lstm_cell_5/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_4?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
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
while_body_560527*
condR
while_cond_560526*M
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
IdentityIdentitytranspose_1:y:0#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????:::2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_560116

inputs
dense_8_560106
dense_8_560108
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
dense_8/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_8_560106dense_8_560108*
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
C__inference_dense_8_layer_call_and_return_conditional_losses_5600522!
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
?$
?
while_body_559947
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_6_559971_0
while_lstm_cell_6_559973_0
while_lstm_cell_6_559975_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_6_559971
while_lstm_cell_6_559973
while_lstm_cell_6_559975??)while/lstm_cell_6/StatefulPartitionedCall?
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
)while/lstm_cell_6/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_6_559971_0while_lstm_cell_6_559973_0while_lstm_cell_6_559975_0*
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
GPU 2J 8? *P
fKRI
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_5595212+
)while/lstm_cell_6/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_6/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_6/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_6/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_6/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_6/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity2while/lstm_cell_6/StatefulPartitionedCall:output:1*^while/lstm_cell_6/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identity2while/lstm_cell_6/StatefulPartitionedCall:output:2*^while/lstm_cell_6/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_6_559971while_lstm_cell_6_559971_0"6
while_lstm_cell_6_559973while_lstm_cell_6_559973_0"6
while_lstm_cell_6_559975while_lstm_cell_6_559975_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????@:?????????@: : :::2V
)while/lstm_cell_6/StatefulPartitionedCall)while/lstm_cell_6/StatefulPartitionedCall: 
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
,__inference_lstm_cell_6_layer_call_fn_564053

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
GPU 2J 8? *P
fKRI
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_5594782
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
?K
?
while_body_562373
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_5_matmul_readvariableop_resource_08
4while_lstm_cell_5_matmul_1_readvariableop_resource_07
3while_lstm_cell_5_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_5_matmul_readvariableop_resource6
2while_lstm_cell_5_matmul_1_readvariableop_resource5
1while_lstm_cell_5_biasadd_readvariableop_resource??(while/lstm_cell_5/BiasAdd/ReadVariableOp?'while/lstm_cell_5/MatMul/ReadVariableOp?)while/lstm_cell_5/MatMul_1/ReadVariableOp?
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
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_5/MatMul/ReadVariableOp?
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/MatMul?
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_5/MatMul_1/ReadVariableOp?
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/MatMul_1?
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/add?
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_5/BiasAdd/ReadVariableOp?
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/BiasAddt
while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_5/Const?
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dim?
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_5/split?
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid?
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_1?
while/lstm_cell_5/mulMulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul?
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_2?
while/lstm_cell_5/mul_1Mul while/lstm_cell_5/split:output:2while/lstm_cell_5/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_1?
while/lstm_cell_5/IdentityIdentitywhile/lstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Identity?
while/lstm_cell_5/IdentityN	IdentityNwhile/lstm_cell_5/mul_1:z:0 while/lstm_cell_5/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-562416*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell_5/IdentityN?
while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid:y:0$while/lstm_cell_5/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_2?
while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul:z:0while/lstm_cell_5/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/add_1?
while/lstm_cell_5/Sigmoid_3Sigmoid while/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_3?
while/lstm_cell_5/Sigmoid_4Sigmoidwhile/lstm_cell_5/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_4?
while/lstm_cell_5/mul_3Mulwhile/lstm_cell_5/add_1:z:0while/lstm_cell_5/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_3?
while/lstm_cell_5/Identity_1Identitywhile/lstm_cell_5/mul_3:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Identity_1?
while/lstm_cell_5/IdentityN_1	IdentityNwhile/lstm_cell_5/mul_3:z:0while/lstm_cell_5/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-562425*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell_5/IdentityN_1?
while/lstm_cell_5/mul_4Mulwhile/lstm_cell_5/Sigmoid_3:y:0&while/lstm_cell_5/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_4?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_4:z:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_5/mul_4:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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
?
B__inference_lstm_5_layer_call_and_return_conditional_losses_562663

inputs.
*lstm_cell_5_matmul_readvariableop_resource0
,lstm_cell_5_matmul_1_readvariableop_resource/
+lstm_cell_5_biasadd_readvariableop_resource
identity??"lstm_cell_5/BiasAdd/ReadVariableOp?!lstm_cell_5/MatMul/ReadVariableOp?#lstm_cell_5/MatMul_1/ReadVariableOp?whileD
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
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_5/MatMul/ReadVariableOp?
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/MatMul?
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_5/MatMul_1/ReadVariableOp?
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/MatMul_1?
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/add?
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_5/BiasAdd/ReadVariableOp?
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/BiasAddh
lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/Const|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dim?
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_5/split?
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid?
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_1?
lstm_cell_5/mulMullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul?
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_2?
lstm_cell_5/mul_1Mullstm_cell_5/split:output:2lstm_cell_5/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_1?
lstm_cell_5/IdentityIdentitylstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Identity?
lstm_cell_5/IdentityN	IdentityNlstm_cell_5/mul_1:z:0lstm_cell_5/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-562548*<
_output_shapes*
(:??????????:??????????2
lstm_cell_5/IdentityN?
lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_2?
lstm_cell_5/add_1AddV2lstm_cell_5/mul:z:0lstm_cell_5/mul_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/add_1?
lstm_cell_5/Sigmoid_3Sigmoidlstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_3?
lstm_cell_5/Sigmoid_4Sigmoidlstm_cell_5/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_4?
lstm_cell_5/mul_3Mullstm_cell_5/add_1:z:0lstm_cell_5/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_3?
lstm_cell_5/Identity_1Identitylstm_cell_5/mul_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Identity_1?
lstm_cell_5/IdentityN_1	IdentityNlstm_cell_5/mul_3:z:0lstm_cell_5/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-562557*<
_output_shapes*
(:??????????:??????????2
lstm_cell_5/IdentityN_1?
lstm_cell_5/mul_4Mullstm_cell_5/Sigmoid_3:y:0 lstm_cell_5/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_4?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
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
while_body_562568*
condR
while_cond_562567*M
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
IdentityIdentitytranspose_1:y:0#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????:::2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?b
?
B__inference_lstm_6_layer_call_and_return_conditional_losses_560824

inputs.
*lstm_cell_6_matmul_readvariableop_resource0
,lstm_cell_6_matmul_1_readvariableop_resource/
+lstm_cell_6_biasadd_readvariableop_resource
identity??"lstm_cell_6/BiasAdd/ReadVariableOp?!lstm_cell_6/MatMul/ReadVariableOp?#lstm_cell_6/MatMul_1/ReadVariableOp?whileD
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
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!lstm_cell_6/MatMul/ReadVariableOp?
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/MatMul?
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02%
#lstm_cell_6/MatMul_1/ReadVariableOp?
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/MatMul_1?
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/add?
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_6/BiasAdd/ReadVariableOp?
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/BiasAddh
lstm_cell_6/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_6/Const|
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_6/split/split_dim?
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
lstm_cell_6/split?
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Sigmoid?
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Sigmoid_1?
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/mul?
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Sigmoid_2?
lstm_cell_6/mul_1Mullstm_cell_6/split:output:2lstm_cell_6/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/mul_1?
lstm_cell_6/IdentityIdentitylstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Identity?
lstm_cell_6/IdentityN	IdentityNlstm_cell_6/mul_1:z:0lstm_cell_6/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-560709*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_6/IdentityN?
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/mul_2?
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/add_1?
lstm_cell_6/Sigmoid_3Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Sigmoid_3?
lstm_cell_6/Sigmoid_4Sigmoidlstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Sigmoid_4?
lstm_cell_6/mul_3Mullstm_cell_6/add_1:z:0lstm_cell_6/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/mul_3?
lstm_cell_6/Identity_1Identitylstm_cell_6/mul_3:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Identity_1?
lstm_cell_6/IdentityN_1	IdentityNlstm_cell_6/mul_3:z:0lstm_cell_6/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-560718*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_6/IdentityN_1?
lstm_cell_6/mul_4Mullstm_cell_6/Sigmoid_3:y:0 lstm_cell_6/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/mul_4?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
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
while_body_560729*
condR
while_cond_560728*K
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
IdentityIdentitytranspose_1:y:0#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????:::2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
H__inference_sequential_3_layer_call_and_return_conditional_losses_561213

inputs
lstm_5_561184
lstm_5_561186
lstm_5_561188
lstm_6_561191
lstm_6_561193
lstm_6_561195
time_distributed_3_561198
time_distributed_3_561200
time_distributed_4_561205
time_distributed_4_561207
identity??lstm_5/StatefulPartitionedCall?lstm_6/StatefulPartitionedCall?*time_distributed_3/StatefulPartitionedCall?*time_distributed_4/StatefulPartitionedCall?
lstm_5/StatefulPartitionedCallStatefulPartitionedCallinputslstm_5_561184lstm_5_561186lstm_5_561188*
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
B__inference_lstm_5_layer_call_and_return_conditional_losses_5604492 
lstm_5/StatefulPartitionedCall?
lstm_6/StatefulPartitionedCallStatefulPartitionedCall'lstm_5/StatefulPartitionedCall:output:0lstm_6_561191lstm_6_561193lstm_6_561195*
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
B__inference_lstm_6_layer_call_and_return_conditional_losses_5608242 
lstm_6/StatefulPartitionedCall?
*time_distributed_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_6/StatefulPartitionedCall:output:0time_distributed_3_561198time_distributed_3_561200*
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
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_5610462,
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
*time_distributed_4/StatefulPartitionedCallStatefulPartitionedCall3time_distributed_3/StatefulPartitionedCall:output:0time_distributed_4_561205time_distributed_4_561207*
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
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_5611052,
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
?b
?
B__inference_lstm_6_layer_call_and_return_conditional_losses_560997

inputs.
*lstm_cell_6_matmul_readvariableop_resource0
,lstm_cell_6_matmul_1_readvariableop_resource/
+lstm_cell_6_biasadd_readvariableop_resource
identity??"lstm_cell_6/BiasAdd/ReadVariableOp?!lstm_cell_6/MatMul/ReadVariableOp?#lstm_cell_6/MatMul_1/ReadVariableOp?whileD
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
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!lstm_cell_6/MatMul/ReadVariableOp?
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/MatMul?
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02%
#lstm_cell_6/MatMul_1/ReadVariableOp?
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/MatMul_1?
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/add?
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_6/BiasAdd/ReadVariableOp?
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/BiasAddh
lstm_cell_6/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_6/Const|
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_6/split/split_dim?
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
lstm_cell_6/split?
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Sigmoid?
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Sigmoid_1?
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/mul?
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Sigmoid_2?
lstm_cell_6/mul_1Mullstm_cell_6/split:output:2lstm_cell_6/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/mul_1?
lstm_cell_6/IdentityIdentitylstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Identity?
lstm_cell_6/IdentityN	IdentityNlstm_cell_6/mul_1:z:0lstm_cell_6/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-560882*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_6/IdentityN?
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/mul_2?
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/add_1?
lstm_cell_6/Sigmoid_3Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Sigmoid_3?
lstm_cell_6/Sigmoid_4Sigmoidlstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Sigmoid_4?
lstm_cell_6/mul_3Mullstm_cell_6/add_1:z:0lstm_cell_6/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/mul_3?
lstm_cell_6/Identity_1Identitylstm_cell_6/mul_3:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Identity_1?
lstm_cell_6/IdentityN_1	IdentityNlstm_cell_6/mul_3:z:0lstm_cell_6/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-560891*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_6/IdentityN_1?
lstm_cell_6/mul_4Mullstm_cell_6/Sigmoid_3:y:0 lstm_cell_6/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/mul_4?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
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
while_body_560902*
condR
while_cond_560901*K
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
IdentityIdentitytranspose_1:y:0#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????:::2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_560266

inputs
dense_9_560256
dense_9_560258
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
dense_9/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_9_560256dense_9_560258*
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
C__inference_dense_9_layer_call_and_return_conditional_losses_5601732!
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
?
?
while_cond_559946
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_559946___redundant_placeholder04
0while_while_cond_559946___redundant_placeholder14
0while_while_cond_559946___redundant_placeholder24
0while_while_cond_559946___redundant_placeholder3
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
?D
?
B__inference_lstm_6_layer_call_and_return_conditional_losses_559884

inputs
lstm_cell_6_559802
lstm_cell_6_559804
lstm_cell_6_559806
identity??#lstm_cell_6/StatefulPartitionedCall?whileD
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
#lstm_cell_6/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_6_559802lstm_cell_6_559804lstm_cell_6_559806*
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
GPU 2J 8? *P
fKRI
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_5594782%
#lstm_cell_6/StatefulPartitionedCall?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_6_559802lstm_cell_6_559804lstm_cell_6_559806*
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
while_body_559815*
condR
while_cond_559814*K
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
IdentityIdentitytranspose_1:y:0$^lstm_cell_6/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :??????????????????@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:???????????????????:::2J
#lstm_cell_6/StatefulPartitionedCall#lstm_cell_6/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
while_cond_560526
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_560526___redundant_placeholder04
0while_while_cond_560526___redundant_placeholder14
0while_while_cond_560526___redundant_placeholder24
0while_while_cond_560526___redundant_placeholder3
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
?
}
(__inference_dense_8_layer_call_fn_564095

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
C__inference_dense_8_layer_call_and_return_conditional_losses_5600522
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
ְ
?
"__inference__traced_restore_564393
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
?"
?
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_563916

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
_gradient_op_typeCustomGradient-563897*<
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
_gradient_op_typeCustomGradient-563906*<
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
?K
?
while_body_563477
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_6_matmul_readvariableop_resource_08
4while_lstm_cell_6_matmul_1_readvariableop_resource_07
3while_lstm_cell_6_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_6_matmul_readvariableop_resource6
2while_lstm_cell_6_matmul_1_readvariableop_resource5
1while_lstm_cell_6_biasadd_readvariableop_resource??(while/lstm_cell_6/BiasAdd/ReadVariableOp?'while/lstm_cell_6/MatMul/ReadVariableOp?)while/lstm_cell_6/MatMul_1/ReadVariableOp?
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
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'while/lstm_cell_6/MatMul/ReadVariableOp?
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/MatMul?
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02+
)while/lstm_cell_6/MatMul_1/ReadVariableOp?
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/MatMul_1?
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/add?
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_6/BiasAdd/ReadVariableOp?
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/BiasAddt
while/lstm_cell_6/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_6/Const?
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_6/split/split_dim?
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
while/lstm_cell_6/split?
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Sigmoid?
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Sigmoid_1?
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/mul?
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Sigmoid_2?
while/lstm_cell_6/mul_1Mul while/lstm_cell_6/split:output:2while/lstm_cell_6/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/mul_1?
while/lstm_cell_6/IdentityIdentitywhile/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Identity?
while/lstm_cell_6/IdentityN	IdentityNwhile/lstm_cell_6/mul_1:z:0 while/lstm_cell_6/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-563520*:
_output_shapes(
&:?????????@:?????????@2
while/lstm_cell_6/IdentityN?
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid:y:0$while/lstm_cell_6/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/mul_2?
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/add_1?
while/lstm_cell_6/Sigmoid_3Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Sigmoid_3?
while/lstm_cell_6/Sigmoid_4Sigmoidwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Sigmoid_4?
while/lstm_cell_6/mul_3Mulwhile/lstm_cell_6/add_1:z:0while/lstm_cell_6/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/mul_3?
while/lstm_cell_6/Identity_1Identitywhile/lstm_cell_6/mul_3:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Identity_1?
while/lstm_cell_6/IdentityN_1	IdentityNwhile/lstm_cell_6/mul_3:z:0while/lstm_cell_6/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-563529*:
_output_shapes(
&:?????????@:?????????@2
while/lstm_cell_6/IdentityN_1?
while/lstm_cell_6/mul_4Mulwhile/lstm_cell_6/Sigmoid_3:y:0&while/lstm_cell_6/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/mul_4?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_6/mul_4:z:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_6/mul_4:z:0)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????@:?????????@: : :::2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
while_cond_559316
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_559316___redundant_placeholder04
0while_while_cond_559316___redundant_placeholder14
0while_while_cond_559316___redundant_placeholder24
0while_while_cond_559316___redundant_placeholder3
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
?	
?
C__inference_dense_9_layer_call_and_return_conditional_losses_560173

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
?D
?
B__inference_lstm_5_layer_call_and_return_conditional_losses_559386

inputs
lstm_cell_5_559304
lstm_cell_5_559306
lstm_cell_5_559308
identity??#lstm_cell_5/StatefulPartitionedCall?whileD
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
#lstm_cell_5/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_5_559304lstm_cell_5_559306lstm_cell_5_559308*
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
GPU 2J 8? *P
fKRI
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_5588912%
#lstm_cell_5/StatefulPartitionedCall?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_5_559304lstm_cell_5_559306lstm_cell_5_559308*
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
while_body_559317*
condR
while_cond_559316*M
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
IdentityIdentitytranspose_1:y:0$^lstm_cell_5/StatefulPartitionedCall^while*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????????????:::2J
#lstm_cell_5/StatefulPartitionedCall#lstm_cell_5/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_560728
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_560728___redundant_placeholder04
0while_while_cond_560728___redundant_placeholder14
0while_while_cond_560728___redundant_placeholder24
0while_while_cond_560728___redundant_placeholder3
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
while_cond_562935
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_562935___redundant_placeholder04
0while_while_cond_562935___redundant_placeholder14
0while_while_cond_562935___redundant_placeholder24
0while_while_cond_562935___redundant_placeholder3
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
?c
?
B__inference_lstm_6_layer_call_and_return_conditional_losses_563572
inputs_0.
*lstm_cell_6_matmul_readvariableop_resource0
,lstm_cell_6_matmul_1_readvariableop_resource/
+lstm_cell_6_biasadd_readvariableop_resource
identity??"lstm_cell_6/BiasAdd/ReadVariableOp?!lstm_cell_6/MatMul/ReadVariableOp?#lstm_cell_6/MatMul_1/ReadVariableOp?whileF
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
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!lstm_cell_6/MatMul/ReadVariableOp?
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/MatMul?
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02%
#lstm_cell_6/MatMul_1/ReadVariableOp?
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/MatMul_1?
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/add?
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_6/BiasAdd/ReadVariableOp?
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/BiasAddh
lstm_cell_6/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_6/Const|
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_6/split/split_dim?
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
lstm_cell_6/split?
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Sigmoid?
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Sigmoid_1?
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/mul?
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Sigmoid_2?
lstm_cell_6/mul_1Mullstm_cell_6/split:output:2lstm_cell_6/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/mul_1?
lstm_cell_6/IdentityIdentitylstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Identity?
lstm_cell_6/IdentityN	IdentityNlstm_cell_6/mul_1:z:0lstm_cell_6/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-563457*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_6/IdentityN?
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/mul_2?
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/add_1?
lstm_cell_6/Sigmoid_3Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Sigmoid_3?
lstm_cell_6/Sigmoid_4Sigmoidlstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Sigmoid_4?
lstm_cell_6/mul_3Mullstm_cell_6/add_1:z:0lstm_cell_6/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/mul_3?
lstm_cell_6/Identity_1Identitylstm_cell_6/mul_3:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Identity_1?
lstm_cell_6/IdentityN_1	IdentityNlstm_cell_6/mul_3:z:0lstm_cell_6/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-563466*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_6/IdentityN_1?
lstm_cell_6/mul_4Mullstm_cell_6/Sigmoid_3:y:0 lstm_cell_6/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/mul_4?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
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
while_body_563477*
condR
while_cond_563476*K
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
IdentityIdentitytranspose_1:y:0#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :??????????????????@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:???????????????????:::2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?c
?
B__inference_lstm_5_layer_call_and_return_conditional_losses_562468
inputs_0.
*lstm_cell_5_matmul_readvariableop_resource0
,lstm_cell_5_matmul_1_readvariableop_resource/
+lstm_cell_5_biasadd_readvariableop_resource
identity??"lstm_cell_5/BiasAdd/ReadVariableOp?!lstm_cell_5/MatMul/ReadVariableOp?#lstm_cell_5/MatMul_1/ReadVariableOp?whileF
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
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_5/MatMul/ReadVariableOp?
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/MatMul?
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_5/MatMul_1/ReadVariableOp?
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/MatMul_1?
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/add?
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_5/BiasAdd/ReadVariableOp?
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/BiasAddh
lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/Const|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dim?
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_5/split?
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid?
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_1?
lstm_cell_5/mulMullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul?
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_2?
lstm_cell_5/mul_1Mullstm_cell_5/split:output:2lstm_cell_5/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_1?
lstm_cell_5/IdentityIdentitylstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Identity?
lstm_cell_5/IdentityN	IdentityNlstm_cell_5/mul_1:z:0lstm_cell_5/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-562353*<
_output_shapes*
(:??????????:??????????2
lstm_cell_5/IdentityN?
lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_2?
lstm_cell_5/add_1AddV2lstm_cell_5/mul:z:0lstm_cell_5/mul_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/add_1?
lstm_cell_5/Sigmoid_3Sigmoidlstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_3?
lstm_cell_5/Sigmoid_4Sigmoidlstm_cell_5/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_4?
lstm_cell_5/mul_3Mullstm_cell_5/add_1:z:0lstm_cell_5/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_3?
lstm_cell_5/Identity_1Identitylstm_cell_5/mul_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Identity_1?
lstm_cell_5/IdentityN_1	IdentityNlstm_cell_5/mul_3:z:0lstm_cell_5/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-562362*<
_output_shapes*
(:??????????:??????????2
lstm_cell_5/IdentityN_1?
lstm_cell_5/mul_4Mullstm_cell_5/Sigmoid_3:y:0 lstm_cell_5/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_4?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
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
while_body_562373*
condR
while_cond_562372*M
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
IdentityIdentitytranspose_1:y:0#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????????????:::2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?$
?
while_body_559815
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_6_559839_0
while_lstm_cell_6_559841_0
while_lstm_cell_6_559843_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_6_559839
while_lstm_cell_6_559841
while_lstm_cell_6_559843??)while/lstm_cell_6/StatefulPartitionedCall?
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
)while/lstm_cell_6/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_6_559839_0while_lstm_cell_6_559841_0while_lstm_cell_6_559843_0*
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
GPU 2J 8? *P
fKRI
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_5594782+
)while/lstm_cell_6/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_6/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_6/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_6/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_6/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_6/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity2while/lstm_cell_6/StatefulPartitionedCall:output:1*^while/lstm_cell_6/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identity2while/lstm_cell_6/StatefulPartitionedCall:output:2*^while/lstm_cell_6/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_6_559839while_lstm_cell_6_559839_0"6
while_lstm_cell_6_559841while_lstm_cell_6_559841_0"6
while_lstm_cell_6_559843while_lstm_cell_6_559843_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????@:?????????@: : :::2V
)while/lstm_cell_6/StatefulPartitionedCall)while/lstm_cell_6/StatefulPartitionedCall: 
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
3__inference_time_distributed_3_layer_call_fn_563657

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
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_5601162
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
?

?
lstm_5_while_cond_561405*
&lstm_5_while_lstm_5_while_loop_counter0
,lstm_5_while_lstm_5_while_maximum_iterations
lstm_5_while_placeholder
lstm_5_while_placeholder_1
lstm_5_while_placeholder_2
lstm_5_while_placeholder_3,
(lstm_5_while_less_lstm_5_strided_slice_1B
>lstm_5_while_lstm_5_while_cond_561405___redundant_placeholder0B
>lstm_5_while_lstm_5_while_cond_561405___redundant_placeholder1B
>lstm_5_while_lstm_5_while_cond_561405___redundant_placeholder2B
>lstm_5_while_lstm_5_while_cond_561405___redundant_placeholder3
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
?b
?
B__inference_lstm_6_layer_call_and_return_conditional_losses_563204

inputs.
*lstm_cell_6_matmul_readvariableop_resource0
,lstm_cell_6_matmul_1_readvariableop_resource/
+lstm_cell_6_biasadd_readvariableop_resource
identity??"lstm_cell_6/BiasAdd/ReadVariableOp?!lstm_cell_6/MatMul/ReadVariableOp?#lstm_cell_6/MatMul_1/ReadVariableOp?whileD
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
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!lstm_cell_6/MatMul/ReadVariableOp?
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/MatMul?
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02%
#lstm_cell_6/MatMul_1/ReadVariableOp?
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/MatMul_1?
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/add?
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_6/BiasAdd/ReadVariableOp?
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/BiasAddh
lstm_cell_6/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_6/Const|
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_6/split/split_dim?
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
lstm_cell_6/split?
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Sigmoid?
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Sigmoid_1?
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/mul?
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Sigmoid_2?
lstm_cell_6/mul_1Mullstm_cell_6/split:output:2lstm_cell_6/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/mul_1?
lstm_cell_6/IdentityIdentitylstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Identity?
lstm_cell_6/IdentityN	IdentityNlstm_cell_6/mul_1:z:0lstm_cell_6/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-563089*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_6/IdentityN?
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/mul_2?
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/add_1?
lstm_cell_6/Sigmoid_3Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Sigmoid_3?
lstm_cell_6/Sigmoid_4Sigmoidlstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Sigmoid_4?
lstm_cell_6/mul_3Mullstm_cell_6/add_1:z:0lstm_cell_6/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/mul_3?
lstm_cell_6/Identity_1Identitylstm_cell_6/mul_3:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Identity_1?
lstm_cell_6/IdentityN_1	IdentityNlstm_cell_6/mul_3:z:0lstm_cell_6/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-563098*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_6/IdentityN_1?
lstm_cell_6/mul_4Mullstm_cell_6/Sigmoid_3:y:0 lstm_cell_6/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/mul_4?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
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
while_body_563109*
condR
while_cond_563108*K
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
IdentityIdentitytranspose_1:y:0#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????:::2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_3_layer_call_fn_562122

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
H__inference_sequential_3_layer_call_and_return_conditional_losses_5612702
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
?W
?	
lstm_6_while_body_561575*
&lstm_6_while_lstm_6_while_loop_counter0
,lstm_6_while_lstm_6_while_maximum_iterations
lstm_6_while_placeholder
lstm_6_while_placeholder_1
lstm_6_while_placeholder_2
lstm_6_while_placeholder_3)
%lstm_6_while_lstm_6_strided_slice_1_0e
alstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0=
9lstm_6_while_lstm_cell_6_matmul_readvariableop_resource_0?
;lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0>
:lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource_0
lstm_6_while_identity
lstm_6_while_identity_1
lstm_6_while_identity_2
lstm_6_while_identity_3
lstm_6_while_identity_4
lstm_6_while_identity_5'
#lstm_6_while_lstm_6_strided_slice_1c
_lstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor;
7lstm_6_while_lstm_cell_6_matmul_readvariableop_resource=
9lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource<
8lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource??/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp?.lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp?0lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp?
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
.lstm_6/while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp9lstm_6_while_lstm_cell_6_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype020
.lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp?
lstm_6/while/lstm_cell_6/MatMulMatMul7lstm_6/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
lstm_6/while/lstm_cell_6/MatMul?
0lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp;lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype022
0lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp?
!lstm_6/while/lstm_cell_6/MatMul_1MatMullstm_6_while_placeholder_28lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!lstm_6/while/lstm_cell_6/MatMul_1?
lstm_6/while/lstm_cell_6/addAddV2)lstm_6/while/lstm_cell_6/MatMul:product:0+lstm_6/while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_6/while/lstm_cell_6/add?
/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp:lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype021
/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp?
 lstm_6/while/lstm_cell_6/BiasAddBiasAdd lstm_6/while/lstm_cell_6/add:z:07lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 lstm_6/while/lstm_cell_6/BiasAdd?
lstm_6/while/lstm_cell_6/ConstConst*
_output_shapes
: *
dtype0*
value	B :2 
lstm_6/while/lstm_cell_6/Const?
(lstm_6/while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_6/while/lstm_cell_6/split/split_dim?
lstm_6/while/lstm_cell_6/splitSplit1lstm_6/while/lstm_cell_6/split/split_dim:output:0)lstm_6/while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2 
lstm_6/while/lstm_cell_6/split?
 lstm_6/while/lstm_cell_6/SigmoidSigmoid'lstm_6/while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????@2"
 lstm_6/while/lstm_cell_6/Sigmoid?
"lstm_6/while/lstm_cell_6/Sigmoid_1Sigmoid'lstm_6/while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????@2$
"lstm_6/while/lstm_cell_6/Sigmoid_1?
lstm_6/while/lstm_cell_6/mulMul&lstm_6/while/lstm_cell_6/Sigmoid_1:y:0lstm_6_while_placeholder_3*
T0*'
_output_shapes
:?????????@2
lstm_6/while/lstm_cell_6/mul?
"lstm_6/while/lstm_cell_6/Sigmoid_2Sigmoid'lstm_6/while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????@2$
"lstm_6/while/lstm_cell_6/Sigmoid_2?
lstm_6/while/lstm_cell_6/mul_1Mul'lstm_6/while/lstm_cell_6/split:output:2&lstm_6/while/lstm_cell_6/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2 
lstm_6/while/lstm_cell_6/mul_1?
!lstm_6/while/lstm_cell_6/IdentityIdentity"lstm_6/while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????@2#
!lstm_6/while/lstm_cell_6/Identity?
"lstm_6/while/lstm_cell_6/IdentityN	IdentityN"lstm_6/while/lstm_cell_6/mul_1:z:0'lstm_6/while/lstm_cell_6/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-561618*:
_output_shapes(
&:?????????@:?????????@2$
"lstm_6/while/lstm_cell_6/IdentityN?
lstm_6/while/lstm_cell_6/mul_2Mul$lstm_6/while/lstm_cell_6/Sigmoid:y:0+lstm_6/while/lstm_cell_6/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2 
lstm_6/while/lstm_cell_6/mul_2?
lstm_6/while/lstm_cell_6/add_1AddV2 lstm_6/while/lstm_cell_6/mul:z:0"lstm_6/while/lstm_cell_6/mul_2:z:0*
T0*'
_output_shapes
:?????????@2 
lstm_6/while/lstm_cell_6/add_1?
"lstm_6/while/lstm_cell_6/Sigmoid_3Sigmoid'lstm_6/while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????@2$
"lstm_6/while/lstm_cell_6/Sigmoid_3?
"lstm_6/while/lstm_cell_6/Sigmoid_4Sigmoid"lstm_6/while/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????@2$
"lstm_6/while/lstm_cell_6/Sigmoid_4?
lstm_6/while/lstm_cell_6/mul_3Mul"lstm_6/while/lstm_cell_6/add_1:z:0&lstm_6/while/lstm_cell_6/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2 
lstm_6/while/lstm_cell_6/mul_3?
#lstm_6/while/lstm_cell_6/Identity_1Identity"lstm_6/while/lstm_cell_6/mul_3:z:0*
T0*'
_output_shapes
:?????????@2%
#lstm_6/while/lstm_cell_6/Identity_1?
$lstm_6/while/lstm_cell_6/IdentityN_1	IdentityN"lstm_6/while/lstm_cell_6/mul_3:z:0"lstm_6/while/lstm_cell_6/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-561627*:
_output_shapes(
&:?????????@:?????????@2&
$lstm_6/while/lstm_cell_6/IdentityN_1?
lstm_6/while/lstm_cell_6/mul_4Mul&lstm_6/while/lstm_cell_6/Sigmoid_3:y:0-lstm_6/while/lstm_cell_6/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2 
lstm_6/while/lstm_cell_6/mul_4?
1lstm_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_6_while_placeholder_1lstm_6_while_placeholder"lstm_6/while/lstm_cell_6/mul_4:z:0*
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
lstm_6/while/IdentityIdentitylstm_6/while/add_1:z:00^lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp/^lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp1^lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity?
lstm_6/while/Identity_1Identity,lstm_6_while_lstm_6_while_maximum_iterations0^lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp/^lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp1^lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_1?
lstm_6/while/Identity_2Identitylstm_6/while/add:z:00^lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp/^lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp1^lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_2?
lstm_6/while/Identity_3IdentityAlstm_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp/^lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp1^lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_3?
lstm_6/while/Identity_4Identity"lstm_6/while/lstm_cell_6/mul_4:z:00^lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp/^lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp1^lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
lstm_6/while/Identity_4?
lstm_6/while/Identity_5Identity"lstm_6/while/lstm_cell_6/add_1:z:00^lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp/^lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp1^lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp*
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
#lstm_6_while_lstm_6_strided_slice_1%lstm_6_while_lstm_6_strided_slice_1_0"v
8lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource:lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource_0"x
9lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource;lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0"t
7lstm_6_while_lstm_cell_6_matmul_readvariableop_resource9lstm_6_while_lstm_cell_6_matmul_readvariableop_resource_0"?
_lstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensoralstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????@:?????????@: : :::2b
/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp2`
.lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp.lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp2d
0lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp0lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
?
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_561046

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
_gradient_op_typeCustomGradient-561037*:
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
?
C__inference_dense_8_layer_call_and_return_conditional_losses_560052

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
_gradient_op_typeCustomGradient-560045*:
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
?
-__inference_sequential_3_layer_call_fn_562097

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
H__inference_sequential_3_layer_call_and_return_conditional_losses_5612132
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
?
?
while_cond_562372
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_562372___redundant_placeholder04
0while_while_cond_562372___redundant_placeholder14
0while_while_cond_562372___redundant_placeholder24
0while_while_cond_562372___redundant_placeholder3
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
?K
?
while_body_563304
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_6_matmul_readvariableop_resource_08
4while_lstm_cell_6_matmul_1_readvariableop_resource_07
3while_lstm_cell_6_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_6_matmul_readvariableop_resource6
2while_lstm_cell_6_matmul_1_readvariableop_resource5
1while_lstm_cell_6_biasadd_readvariableop_resource??(while/lstm_cell_6/BiasAdd/ReadVariableOp?'while/lstm_cell_6/MatMul/ReadVariableOp?)while/lstm_cell_6/MatMul_1/ReadVariableOp?
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
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'while/lstm_cell_6/MatMul/ReadVariableOp?
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/MatMul?
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02+
)while/lstm_cell_6/MatMul_1/ReadVariableOp?
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/MatMul_1?
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/add?
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_6/BiasAdd/ReadVariableOp?
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/BiasAddt
while/lstm_cell_6/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_6/Const?
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_6/split/split_dim?
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
while/lstm_cell_6/split?
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Sigmoid?
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Sigmoid_1?
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/mul?
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Sigmoid_2?
while/lstm_cell_6/mul_1Mul while/lstm_cell_6/split:output:2while/lstm_cell_6/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/mul_1?
while/lstm_cell_6/IdentityIdentitywhile/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Identity?
while/lstm_cell_6/IdentityN	IdentityNwhile/lstm_cell_6/mul_1:z:0 while/lstm_cell_6/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-563347*:
_output_shapes(
&:?????????@:?????????@2
while/lstm_cell_6/IdentityN?
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid:y:0$while/lstm_cell_6/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/mul_2?
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/add_1?
while/lstm_cell_6/Sigmoid_3Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Sigmoid_3?
while/lstm_cell_6/Sigmoid_4Sigmoidwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Sigmoid_4?
while/lstm_cell_6/mul_3Mulwhile/lstm_cell_6/add_1:z:0while/lstm_cell_6/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/mul_3?
while/lstm_cell_6/Identity_1Identitywhile/lstm_cell_6/mul_3:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Identity_1?
while/lstm_cell_6/IdentityN_1	IdentityNwhile/lstm_cell_6/mul_3:z:0while/lstm_cell_6/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-563356*:
_output_shapes(
&:?????????@:?????????@2
while/lstm_cell_6/IdentityN_1?
while/lstm_cell_6/mul_4Mulwhile/lstm_cell_6/Sigmoid_3:y:0&while/lstm_cell_6/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/mul_4?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_6/mul_4:z:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_6/mul_4:z:0)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????@:?????????@: : :::2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
?
H__inference_sequential_3_layer_call_and_return_conditional_losses_561146
lstm_5_input
lstm_5_560645
lstm_5_560647
lstm_5_560649
lstm_6_561020
lstm_6_561022
lstm_6_561024
time_distributed_3_561085
time_distributed_3_561087
time_distributed_4_561138
time_distributed_4_561140
identity??lstm_5/StatefulPartitionedCall?lstm_6/StatefulPartitionedCall?*time_distributed_3/StatefulPartitionedCall?*time_distributed_4/StatefulPartitionedCall?
lstm_5/StatefulPartitionedCallStatefulPartitionedCalllstm_5_inputlstm_5_560645lstm_5_560647lstm_5_560649*
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
B__inference_lstm_5_layer_call_and_return_conditional_losses_5604492 
lstm_5/StatefulPartitionedCall?
lstm_6/StatefulPartitionedCallStatefulPartitionedCall'lstm_5/StatefulPartitionedCall:output:0lstm_6_561020lstm_6_561022lstm_6_561024*
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
B__inference_lstm_6_layer_call_and_return_conditional_losses_5608242 
lstm_6/StatefulPartitionedCall?
*time_distributed_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_6/StatefulPartitionedCall:output:0time_distributed_3_561085time_distributed_3_561087*
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
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_5610462,
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
*time_distributed_4/StatefulPartitionedCallStatefulPartitionedCall3time_distributed_3/StatefulPartitionedCall:output:0time_distributed_4_561138time_distributed_4_561140*
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
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_5611052,
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
?"
?
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_563873

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
_gradient_op_typeCustomGradient-563854*<
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
_gradient_op_typeCustomGradient-563863*<
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
?"
?
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_563993

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
_gradient_op_typeCustomGradient-563974*:
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
_gradient_op_typeCustomGradient-563983*:
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
?
?
3__inference_time_distributed_3_layer_call_fn_563715

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
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_5610462
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
?
?
while_cond_563303
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_563303___redundant_placeholder04
0while_while_cond_563303___redundant_placeholder14
0while_while_cond_563303___redundant_placeholder24
0while_while_cond_563303___redundant_placeholder3
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
while_cond_560901
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_560901___redundant_placeholder04
0while_while_cond_560901___redundant_placeholder14
0while_while_cond_560901___redundant_placeholder24
0while_while_cond_560901___redundant_placeholder3
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
?
%sequential_3_lstm_5_while_cond_558470D
@sequential_3_lstm_5_while_sequential_3_lstm_5_while_loop_counterJ
Fsequential_3_lstm_5_while_sequential_3_lstm_5_while_maximum_iterations)
%sequential_3_lstm_5_while_placeholder+
'sequential_3_lstm_5_while_placeholder_1+
'sequential_3_lstm_5_while_placeholder_2+
'sequential_3_lstm_5_while_placeholder_3F
Bsequential_3_lstm_5_while_less_sequential_3_lstm_5_strided_slice_1\
Xsequential_3_lstm_5_while_sequential_3_lstm_5_while_cond_558470___redundant_placeholder0\
Xsequential_3_lstm_5_while_sequential_3_lstm_5_while_cond_558470___redundant_placeholder1\
Xsequential_3_lstm_5_while_sequential_3_lstm_5_while_cond_558470___redundant_placeholder2\
Xsequential_3_lstm_5_while_sequential_3_lstm_5_while_cond_558470___redundant_placeholder3&
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
?
?
H__inference_sequential_3_layer_call_and_return_conditional_losses_561270

inputs
lstm_5_561241
lstm_5_561243
lstm_5_561245
lstm_6_561248
lstm_6_561250
lstm_6_561252
time_distributed_3_561255
time_distributed_3_561257
time_distributed_4_561262
time_distributed_4_561264
identity??lstm_5/StatefulPartitionedCall?lstm_6/StatefulPartitionedCall?*time_distributed_3/StatefulPartitionedCall?*time_distributed_4/StatefulPartitionedCall?
lstm_5/StatefulPartitionedCallStatefulPartitionedCallinputslstm_5_561241lstm_5_561243lstm_5_561245*
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
B__inference_lstm_5_layer_call_and_return_conditional_losses_5606222 
lstm_5/StatefulPartitionedCall?
lstm_6/StatefulPartitionedCallStatefulPartitionedCall'lstm_5/StatefulPartitionedCall:output:0lstm_6_561248lstm_6_561250lstm_6_561252*
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
B__inference_lstm_6_layer_call_and_return_conditional_losses_5609972 
lstm_6/StatefulPartitionedCall?
*time_distributed_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_6/StatefulPartitionedCall:output:0time_distributed_3_561255time_distributed_3_561257*
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
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_5610662,
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
*time_distributed_4/StatefulPartitionedCallStatefulPartitionedCall3time_distributed_3/StatefulPartitionedCall:output:0time_distributed_4_561262time_distributed_4_561264*
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
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_5611192,
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
H__inference_sequential_3_layer_call_and_return_conditional_losses_562072

inputs5
1lstm_5_lstm_cell_5_matmul_readvariableop_resource7
3lstm_5_lstm_cell_5_matmul_1_readvariableop_resource6
2lstm_5_lstm_cell_5_biasadd_readvariableop_resource5
1lstm_6_lstm_cell_6_matmul_readvariableop_resource7
3lstm_6_lstm_cell_6_matmul_1_readvariableop_resource6
2lstm_6_lstm_cell_6_biasadd_readvariableop_resource=
9time_distributed_3_dense_8_matmul_readvariableop_resource>
:time_distributed_3_dense_8_biasadd_readvariableop_resource=
9time_distributed_4_dense_9_matmul_readvariableop_resource>
:time_distributed_4_dense_9_biasadd_readvariableop_resource
identity??)lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp?(lstm_5/lstm_cell_5/MatMul/ReadVariableOp?*lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp?lstm_5/while?)lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp?(lstm_6/lstm_cell_6/MatMul/ReadVariableOp?*lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp?lstm_6/while?1time_distributed_3/dense_8/BiasAdd/ReadVariableOp?0time_distributed_3/dense_8/MatMul/ReadVariableOp?1time_distributed_4/dense_9/BiasAdd/ReadVariableOp?0time_distributed_4/dense_9/MatMul/ReadVariableOpR
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
(lstm_5/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp1lstm_5_lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02*
(lstm_5/lstm_cell_5/MatMul/ReadVariableOp?
lstm_5/lstm_cell_5/MatMulMatMullstm_5/strided_slice_2:output:00lstm_5/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/MatMul?
*lstm_5/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp3lstm_5_lstm_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02,
*lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp?
lstm_5/lstm_cell_5/MatMul_1MatMullstm_5/zeros:output:02lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/MatMul_1?
lstm_5/lstm_cell_5/addAddV2#lstm_5/lstm_cell_5/MatMul:product:0%lstm_5/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/add?
)lstm_5/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp2lstm_5_lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp?
lstm_5/lstm_cell_5/BiasAddBiasAddlstm_5/lstm_cell_5/add:z:01lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/BiasAddv
lstm_5/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_5/lstm_cell_5/Const?
"lstm_5/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_5/lstm_cell_5/split/split_dim?
lstm_5/lstm_cell_5/splitSplit+lstm_5/lstm_cell_5/split/split_dim:output:0#lstm_5/lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_5/lstm_cell_5/split?
lstm_5/lstm_cell_5/SigmoidSigmoid!lstm_5/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/Sigmoid?
lstm_5/lstm_cell_5/Sigmoid_1Sigmoid!lstm_5/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/Sigmoid_1?
lstm_5/lstm_cell_5/mulMul lstm_5/lstm_cell_5/Sigmoid_1:y:0lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/mul?
lstm_5/lstm_cell_5/Sigmoid_2Sigmoid!lstm_5/lstm_cell_5/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/Sigmoid_2?
lstm_5/lstm_cell_5/mul_1Mul!lstm_5/lstm_cell_5/split:output:2 lstm_5/lstm_cell_5/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/mul_1?
lstm_5/lstm_cell_5/IdentityIdentitylstm_5/lstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/Identity?
lstm_5/lstm_cell_5/IdentityN	IdentityNlstm_5/lstm_cell_5/mul_1:z:0!lstm_5/lstm_cell_5/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-561758*<
_output_shapes*
(:??????????:??????????2
lstm_5/lstm_cell_5/IdentityN?
lstm_5/lstm_cell_5/mul_2Mullstm_5/lstm_cell_5/Sigmoid:y:0%lstm_5/lstm_cell_5/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/mul_2?
lstm_5/lstm_cell_5/add_1AddV2lstm_5/lstm_cell_5/mul:z:0lstm_5/lstm_cell_5/mul_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/add_1?
lstm_5/lstm_cell_5/Sigmoid_3Sigmoid!lstm_5/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/Sigmoid_3?
lstm_5/lstm_cell_5/Sigmoid_4Sigmoidlstm_5/lstm_cell_5/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/Sigmoid_4?
lstm_5/lstm_cell_5/mul_3Mullstm_5/lstm_cell_5/add_1:z:0 lstm_5/lstm_cell_5/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/mul_3?
lstm_5/lstm_cell_5/Identity_1Identitylstm_5/lstm_cell_5/mul_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/Identity_1?
lstm_5/lstm_cell_5/IdentityN_1	IdentityNlstm_5/lstm_cell_5/mul_3:z:0lstm_5/lstm_cell_5/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-561767*<
_output_shapes*
(:??????????:??????????2 
lstm_5/lstm_cell_5/IdentityN_1?
lstm_5/lstm_cell_5/mul_4Mul lstm_5/lstm_cell_5/Sigmoid_3:y:0'lstm_5/lstm_cell_5/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/mul_4?
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
lstm_5/whileWhile"lstm_5/while/loop_counter:output:0(lstm_5/while/maximum_iterations:output:0lstm_5/time:output:0lstm_5/TensorArrayV2_1:handle:0lstm_5/zeros:output:0lstm_5/zeros_1:output:0lstm_5/strided_slice_1:output:0>lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_5_lstm_cell_5_matmul_readvariableop_resource3lstm_5_lstm_cell_5_matmul_1_readvariableop_resource2lstm_5_lstm_cell_5_biasadd_readvariableop_resource*
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
lstm_5_while_body_561778*$
condR
lstm_5_while_cond_561777*M
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
(lstm_6/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp1lstm_6_lstm_cell_6_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02*
(lstm_6/lstm_cell_6/MatMul/ReadVariableOp?
lstm_6/lstm_cell_6/MatMulMatMullstm_6/strided_slice_2:output:00lstm_6/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_6/lstm_cell_6/MatMul?
*lstm_6/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp3lstm_6_lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02,
*lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp?
lstm_6/lstm_cell_6/MatMul_1MatMullstm_6/zeros:output:02lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_6/lstm_cell_6/MatMul_1?
lstm_6/lstm_cell_6/addAddV2#lstm_6/lstm_cell_6/MatMul:product:0%lstm_6/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_6/lstm_cell_6/add?
)lstm_6/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp2lstm_6_lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp?
lstm_6/lstm_cell_6/BiasAddBiasAddlstm_6/lstm_cell_6/add:z:01lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_6/lstm_cell_6/BiasAddv
lstm_6/lstm_cell_6/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_6/lstm_cell_6/Const?
"lstm_6/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_6/lstm_cell_6/split/split_dim?
lstm_6/lstm_cell_6/splitSplit+lstm_6/lstm_cell_6/split/split_dim:output:0#lstm_6/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
lstm_6/lstm_cell_6/split?
lstm_6/lstm_cell_6/SigmoidSigmoid!lstm_6/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_6/Sigmoid?
lstm_6/lstm_cell_6/Sigmoid_1Sigmoid!lstm_6/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_6/Sigmoid_1?
lstm_6/lstm_cell_6/mulMul lstm_6/lstm_cell_6/Sigmoid_1:y:0lstm_6/zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_6/mul?
lstm_6/lstm_cell_6/Sigmoid_2Sigmoid!lstm_6/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_6/Sigmoid_2?
lstm_6/lstm_cell_6/mul_1Mul!lstm_6/lstm_cell_6/split:output:2 lstm_6/lstm_cell_6/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_6/mul_1?
lstm_6/lstm_cell_6/IdentityIdentitylstm_6/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_6/Identity?
lstm_6/lstm_cell_6/IdentityN	IdentityNlstm_6/lstm_cell_6/mul_1:z:0!lstm_6/lstm_cell_6/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-561927*:
_output_shapes(
&:?????????@:?????????@2
lstm_6/lstm_cell_6/IdentityN?
lstm_6/lstm_cell_6/mul_2Mullstm_6/lstm_cell_6/Sigmoid:y:0%lstm_6/lstm_cell_6/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_6/mul_2?
lstm_6/lstm_cell_6/add_1AddV2lstm_6/lstm_cell_6/mul:z:0lstm_6/lstm_cell_6/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_6/add_1?
lstm_6/lstm_cell_6/Sigmoid_3Sigmoid!lstm_6/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_6/Sigmoid_3?
lstm_6/lstm_cell_6/Sigmoid_4Sigmoidlstm_6/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_6/Sigmoid_4?
lstm_6/lstm_cell_6/mul_3Mullstm_6/lstm_cell_6/add_1:z:0 lstm_6/lstm_cell_6/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_6/mul_3?
lstm_6/lstm_cell_6/Identity_1Identitylstm_6/lstm_cell_6/mul_3:z:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_6/Identity_1?
lstm_6/lstm_cell_6/IdentityN_1	IdentityNlstm_6/lstm_cell_6/mul_3:z:0lstm_6/lstm_cell_6/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-561936*:
_output_shapes(
&:?????????@:?????????@2 
lstm_6/lstm_cell_6/IdentityN_1?
lstm_6/lstm_cell_6/mul_4Mul lstm_6/lstm_cell_6/Sigmoid_3:y:0'lstm_6/lstm_cell_6/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_6/mul_4?
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
lstm_6/whileWhile"lstm_6/while/loop_counter:output:0(lstm_6/while/maximum_iterations:output:0lstm_6/time:output:0lstm_6/TensorArrayV2_1:handle:0lstm_6/zeros:output:0lstm_6/zeros_1:output:0lstm_6/strided_slice_1:output:0>lstm_6/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_6_lstm_cell_6_matmul_readvariableop_resource3lstm_6_lstm_cell_6_matmul_1_readvariableop_resource2lstm_6_lstm_cell_6_biasadd_readvariableop_resource*
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
lstm_6_while_body_561947*$
condR
lstm_6_while_cond_561946*K
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
_gradient_op_typeCustomGradient-562049*:
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
IdentityIdentity%time_distributed_4/Reshape_1:output:0*^lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp)^lstm_5/lstm_cell_5/MatMul/ReadVariableOp+^lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp^lstm_5/while*^lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp)^lstm_6/lstm_cell_6/MatMul/ReadVariableOp+^lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp^lstm_6/while2^time_distributed_3/dense_8/BiasAdd/ReadVariableOp1^time_distributed_3/dense_8/MatMul/ReadVariableOp2^time_distributed_4/dense_9/BiasAdd/ReadVariableOp1^time_distributed_4/dense_9/MatMul/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:?????????::::::::::2V
)lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp)lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp2T
(lstm_5/lstm_cell_5/MatMul/ReadVariableOp(lstm_5/lstm_cell_5/MatMul/ReadVariableOp2X
*lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp*lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp2
lstm_5/whilelstm_5/while2V
)lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp)lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp2T
(lstm_6/lstm_cell_6/MatMul/ReadVariableOp(lstm_6/lstm_cell_6/MatMul/ReadVariableOp2X
*lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp*lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp2
lstm_6/whilelstm_6/while2f
1time_distributed_3/dense_8/BiasAdd/ReadVariableOp1time_distributed_3/dense_8/BiasAdd/ReadVariableOp2d
0time_distributed_3/dense_8/MatMul/ReadVariableOp0time_distributed_3/dense_8/MatMul/ReadVariableOp2f
1time_distributed_4/dense_9/BiasAdd/ReadVariableOp1time_distributed_4/dense_9/BiasAdd/ReadVariableOp2d
0time_distributed_4/dense_9/MatMul/ReadVariableOp0time_distributed_4/dense_9/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_563766

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
?
,__inference_lstm_cell_5_layer_call_fn_563950

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
GPU 2J 8? *P
fKRI
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_5588912
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
?
?
'__inference_lstm_5_layer_call_fn_562490
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
B__inference_lstm_5_layer_call_and_return_conditional_losses_5593862
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
?
?
3__inference_time_distributed_4_layer_call_fn_563784

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
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_5602662
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
3__inference_time_distributed_4_layer_call_fn_563775

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
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_5602372
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
?
,__inference_lstm_cell_5_layer_call_fn_563933

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
GPU 2J 8? *P
fKRI
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_5588482
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
?
}
(__inference_dense_9_layer_call_fn_564114

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
C__inference_dense_9_layer_call_and_return_conditional_losses_5601732
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
?
?
3__inference_time_distributed_3_layer_call_fn_563666

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
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_5601452
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
?
?
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_560145

inputs
dense_8_560135
dense_8_560137
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
dense_8/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_8_560135dense_8_560137*
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
C__inference_dense_8_layer_call_and_return_conditional_losses_5600522!
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
?
?
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_561105

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
??
?	
H__inference_sequential_3_layer_call_and_return_conditional_losses_561700

inputs5
1lstm_5_lstm_cell_5_matmul_readvariableop_resource7
3lstm_5_lstm_cell_5_matmul_1_readvariableop_resource6
2lstm_5_lstm_cell_5_biasadd_readvariableop_resource5
1lstm_6_lstm_cell_6_matmul_readvariableop_resource7
3lstm_6_lstm_cell_6_matmul_1_readvariableop_resource6
2lstm_6_lstm_cell_6_biasadd_readvariableop_resource=
9time_distributed_3_dense_8_matmul_readvariableop_resource>
:time_distributed_3_dense_8_biasadd_readvariableop_resource=
9time_distributed_4_dense_9_matmul_readvariableop_resource>
:time_distributed_4_dense_9_biasadd_readvariableop_resource
identity??)lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp?(lstm_5/lstm_cell_5/MatMul/ReadVariableOp?*lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp?lstm_5/while?)lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp?(lstm_6/lstm_cell_6/MatMul/ReadVariableOp?*lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp?lstm_6/while?1time_distributed_3/dense_8/BiasAdd/ReadVariableOp?0time_distributed_3/dense_8/MatMul/ReadVariableOp?1time_distributed_4/dense_9/BiasAdd/ReadVariableOp?0time_distributed_4/dense_9/MatMul/ReadVariableOpR
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
(lstm_5/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp1lstm_5_lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02*
(lstm_5/lstm_cell_5/MatMul/ReadVariableOp?
lstm_5/lstm_cell_5/MatMulMatMullstm_5/strided_slice_2:output:00lstm_5/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/MatMul?
*lstm_5/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp3lstm_5_lstm_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02,
*lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp?
lstm_5/lstm_cell_5/MatMul_1MatMullstm_5/zeros:output:02lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/MatMul_1?
lstm_5/lstm_cell_5/addAddV2#lstm_5/lstm_cell_5/MatMul:product:0%lstm_5/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/add?
)lstm_5/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp2lstm_5_lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp?
lstm_5/lstm_cell_5/BiasAddBiasAddlstm_5/lstm_cell_5/add:z:01lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/BiasAddv
lstm_5/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_5/lstm_cell_5/Const?
"lstm_5/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_5/lstm_cell_5/split/split_dim?
lstm_5/lstm_cell_5/splitSplit+lstm_5/lstm_cell_5/split/split_dim:output:0#lstm_5/lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_5/lstm_cell_5/split?
lstm_5/lstm_cell_5/SigmoidSigmoid!lstm_5/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/Sigmoid?
lstm_5/lstm_cell_5/Sigmoid_1Sigmoid!lstm_5/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/Sigmoid_1?
lstm_5/lstm_cell_5/mulMul lstm_5/lstm_cell_5/Sigmoid_1:y:0lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/mul?
lstm_5/lstm_cell_5/Sigmoid_2Sigmoid!lstm_5/lstm_cell_5/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/Sigmoid_2?
lstm_5/lstm_cell_5/mul_1Mul!lstm_5/lstm_cell_5/split:output:2 lstm_5/lstm_cell_5/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/mul_1?
lstm_5/lstm_cell_5/IdentityIdentitylstm_5/lstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/Identity?
lstm_5/lstm_cell_5/IdentityN	IdentityNlstm_5/lstm_cell_5/mul_1:z:0!lstm_5/lstm_cell_5/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-561386*<
_output_shapes*
(:??????????:??????????2
lstm_5/lstm_cell_5/IdentityN?
lstm_5/lstm_cell_5/mul_2Mullstm_5/lstm_cell_5/Sigmoid:y:0%lstm_5/lstm_cell_5/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/mul_2?
lstm_5/lstm_cell_5/add_1AddV2lstm_5/lstm_cell_5/mul:z:0lstm_5/lstm_cell_5/mul_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/add_1?
lstm_5/lstm_cell_5/Sigmoid_3Sigmoid!lstm_5/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/Sigmoid_3?
lstm_5/lstm_cell_5/Sigmoid_4Sigmoidlstm_5/lstm_cell_5/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/Sigmoid_4?
lstm_5/lstm_cell_5/mul_3Mullstm_5/lstm_cell_5/add_1:z:0 lstm_5/lstm_cell_5/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/mul_3?
lstm_5/lstm_cell_5/Identity_1Identitylstm_5/lstm_cell_5/mul_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/Identity_1?
lstm_5/lstm_cell_5/IdentityN_1	IdentityNlstm_5/lstm_cell_5/mul_3:z:0lstm_5/lstm_cell_5/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-561395*<
_output_shapes*
(:??????????:??????????2 
lstm_5/lstm_cell_5/IdentityN_1?
lstm_5/lstm_cell_5/mul_4Mul lstm_5/lstm_cell_5/Sigmoid_3:y:0'lstm_5/lstm_cell_5/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_5/lstm_cell_5/mul_4?
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
lstm_5/whileWhile"lstm_5/while/loop_counter:output:0(lstm_5/while/maximum_iterations:output:0lstm_5/time:output:0lstm_5/TensorArrayV2_1:handle:0lstm_5/zeros:output:0lstm_5/zeros_1:output:0lstm_5/strided_slice_1:output:0>lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_5_lstm_cell_5_matmul_readvariableop_resource3lstm_5_lstm_cell_5_matmul_1_readvariableop_resource2lstm_5_lstm_cell_5_biasadd_readvariableop_resource*
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
lstm_5_while_body_561406*$
condR
lstm_5_while_cond_561405*M
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
(lstm_6/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp1lstm_6_lstm_cell_6_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02*
(lstm_6/lstm_cell_6/MatMul/ReadVariableOp?
lstm_6/lstm_cell_6/MatMulMatMullstm_6/strided_slice_2:output:00lstm_6/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_6/lstm_cell_6/MatMul?
*lstm_6/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp3lstm_6_lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02,
*lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp?
lstm_6/lstm_cell_6/MatMul_1MatMullstm_6/zeros:output:02lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_6/lstm_cell_6/MatMul_1?
lstm_6/lstm_cell_6/addAddV2#lstm_6/lstm_cell_6/MatMul:product:0%lstm_6/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_6/lstm_cell_6/add?
)lstm_6/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp2lstm_6_lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp?
lstm_6/lstm_cell_6/BiasAddBiasAddlstm_6/lstm_cell_6/add:z:01lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_6/lstm_cell_6/BiasAddv
lstm_6/lstm_cell_6/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_6/lstm_cell_6/Const?
"lstm_6/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_6/lstm_cell_6/split/split_dim?
lstm_6/lstm_cell_6/splitSplit+lstm_6/lstm_cell_6/split/split_dim:output:0#lstm_6/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
lstm_6/lstm_cell_6/split?
lstm_6/lstm_cell_6/SigmoidSigmoid!lstm_6/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_6/Sigmoid?
lstm_6/lstm_cell_6/Sigmoid_1Sigmoid!lstm_6/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_6/Sigmoid_1?
lstm_6/lstm_cell_6/mulMul lstm_6/lstm_cell_6/Sigmoid_1:y:0lstm_6/zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_6/mul?
lstm_6/lstm_cell_6/Sigmoid_2Sigmoid!lstm_6/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_6/Sigmoid_2?
lstm_6/lstm_cell_6/mul_1Mul!lstm_6/lstm_cell_6/split:output:2 lstm_6/lstm_cell_6/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_6/mul_1?
lstm_6/lstm_cell_6/IdentityIdentitylstm_6/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_6/Identity?
lstm_6/lstm_cell_6/IdentityN	IdentityNlstm_6/lstm_cell_6/mul_1:z:0!lstm_6/lstm_cell_6/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-561555*:
_output_shapes(
&:?????????@:?????????@2
lstm_6/lstm_cell_6/IdentityN?
lstm_6/lstm_cell_6/mul_2Mullstm_6/lstm_cell_6/Sigmoid:y:0%lstm_6/lstm_cell_6/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_6/mul_2?
lstm_6/lstm_cell_6/add_1AddV2lstm_6/lstm_cell_6/mul:z:0lstm_6/lstm_cell_6/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_6/add_1?
lstm_6/lstm_cell_6/Sigmoid_3Sigmoid!lstm_6/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_6/Sigmoid_3?
lstm_6/lstm_cell_6/Sigmoid_4Sigmoidlstm_6/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_6/Sigmoid_4?
lstm_6/lstm_cell_6/mul_3Mullstm_6/lstm_cell_6/add_1:z:0 lstm_6/lstm_cell_6/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_6/mul_3?
lstm_6/lstm_cell_6/Identity_1Identitylstm_6/lstm_cell_6/mul_3:z:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_6/Identity_1?
lstm_6/lstm_cell_6/IdentityN_1	IdentityNlstm_6/lstm_cell_6/mul_3:z:0lstm_6/lstm_cell_6/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-561564*:
_output_shapes(
&:?????????@:?????????@2 
lstm_6/lstm_cell_6/IdentityN_1?
lstm_6/lstm_cell_6/mul_4Mul lstm_6/lstm_cell_6/Sigmoid_3:y:0'lstm_6/lstm_cell_6/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_6/lstm_cell_6/mul_4?
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
lstm_6/whileWhile"lstm_6/while/loop_counter:output:0(lstm_6/while/maximum_iterations:output:0lstm_6/time:output:0lstm_6/TensorArrayV2_1:handle:0lstm_6/zeros:output:0lstm_6/zeros_1:output:0lstm_6/strided_slice_1:output:0>lstm_6/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_6_lstm_cell_6_matmul_readvariableop_resource3lstm_6_lstm_cell_6_matmul_1_readvariableop_resource2lstm_6_lstm_cell_6_biasadd_readvariableop_resource*
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
lstm_6_while_body_561575*$
condR
lstm_6_while_cond_561574*K
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
_gradient_op_typeCustomGradient-561677*:
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
IdentityIdentity%time_distributed_4/Reshape_1:output:0*^lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp)^lstm_5/lstm_cell_5/MatMul/ReadVariableOp+^lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp^lstm_5/while*^lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp)^lstm_6/lstm_cell_6/MatMul/ReadVariableOp+^lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp^lstm_6/while2^time_distributed_3/dense_8/BiasAdd/ReadVariableOp1^time_distributed_3/dense_8/MatMul/ReadVariableOp2^time_distributed_4/dense_9/BiasAdd/ReadVariableOp1^time_distributed_4/dense_9/MatMul/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:?????????::::::::::2V
)lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp)lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp2T
(lstm_5/lstm_cell_5/MatMul/ReadVariableOp(lstm_5/lstm_cell_5/MatMul/ReadVariableOp2X
*lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp*lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp2
lstm_5/whilelstm_5/while2V
)lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp)lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp2T
(lstm_6/lstm_cell_6/MatMul/ReadVariableOp(lstm_6/lstm_cell_6/MatMul/ReadVariableOp2X
*lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp*lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp2
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
?
lstm_6_while_cond_561574*
&lstm_6_while_lstm_6_while_loop_counter0
,lstm_6_while_lstm_6_while_maximum_iterations
lstm_6_while_placeholder
lstm_6_while_placeholder_1
lstm_6_while_placeholder_2
lstm_6_while_placeholder_3,
(lstm_6_while_less_lstm_6_strided_slice_1B
>lstm_6_while_lstm_6_while_cond_561574___redundant_placeholder0B
>lstm_6_while_lstm_6_while_cond_561574___redundant_placeholder1B
>lstm_6_while_lstm_6_while_cond_561574___redundant_placeholder2B
>lstm_6_while_lstm_6_while_cond_561574___redundant_placeholder3
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
?K
?
while_body_560354
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_5_matmul_readvariableop_resource_08
4while_lstm_cell_5_matmul_1_readvariableop_resource_07
3while_lstm_cell_5_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_5_matmul_readvariableop_resource6
2while_lstm_cell_5_matmul_1_readvariableop_resource5
1while_lstm_cell_5_biasadd_readvariableop_resource??(while/lstm_cell_5/BiasAdd/ReadVariableOp?'while/lstm_cell_5/MatMul/ReadVariableOp?)while/lstm_cell_5/MatMul_1/ReadVariableOp?
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
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_5/MatMul/ReadVariableOp?
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/MatMul?
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_5/MatMul_1/ReadVariableOp?
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/MatMul_1?
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/add?
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_5/BiasAdd/ReadVariableOp?
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/BiasAddt
while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_5/Const?
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dim?
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_5/split?
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid?
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_1?
while/lstm_cell_5/mulMulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul?
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_2?
while/lstm_cell_5/mul_1Mul while/lstm_cell_5/split:output:2while/lstm_cell_5/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_1?
while/lstm_cell_5/IdentityIdentitywhile/lstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Identity?
while/lstm_cell_5/IdentityN	IdentityNwhile/lstm_cell_5/mul_1:z:0 while/lstm_cell_5/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-560397*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell_5/IdentityN?
while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid:y:0$while/lstm_cell_5/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_2?
while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul:z:0while/lstm_cell_5/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/add_1?
while/lstm_cell_5/Sigmoid_3Sigmoid while/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_3?
while/lstm_cell_5/Sigmoid_4Sigmoidwhile/lstm_cell_5/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_4?
while/lstm_cell_5/mul_3Mulwhile/lstm_cell_5/add_1:z:0while/lstm_cell_5/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_3?
while/lstm_cell_5/Identity_1Identitywhile/lstm_cell_5/mul_3:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Identity_1?
while/lstm_cell_5/IdentityN_1	IdentityNwhile/lstm_cell_5/mul_3:z:0while/lstm_cell_5/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-560406*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell_5/IdentityN_1?
while/lstm_cell_5/mul_4Mulwhile/lstm_cell_5/Sigmoid_3:y:0&while/lstm_cell_5/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_4?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_4:z:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_5/mul_4:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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
while_cond_562740
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_562740___redundant_placeholder04
0while_while_cond_562740___redundant_placeholder14
0while_while_cond_562740___redundant_placeholder24
0while_while_cond_562740___redundant_placeholder3
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
?
?
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_563745

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
?
?
3__inference_time_distributed_4_layer_call_fn_563821

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
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_5611052
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
?
?
while_cond_563476
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_563476___redundant_placeholder04
0while_while_cond_563476___redundant_placeholder14
0while_while_cond_563476___redundant_placeholder24
0while_while_cond_563476___redundant_placeholder3
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
?
?
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_563706

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
_gradient_op_typeCustomGradient-563697*:
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
?
lstm_6_while_cond_561946*
&lstm_6_while_lstm_6_while_loop_counter0
,lstm_6_while_lstm_6_while_maximum_iterations
lstm_6_while_placeholder
lstm_6_while_placeholder_1
lstm_6_while_placeholder_2
lstm_6_while_placeholder_3,
(lstm_6_while_less_lstm_6_strided_slice_1B
>lstm_6_while_lstm_6_while_cond_561946___redundant_placeholder0B
>lstm_6_while_lstm_6_while_cond_561946___redundant_placeholder1B
>lstm_6_while_lstm_6_while_cond_561946___redundant_placeholder2B
>lstm_6_while_lstm_6_while_cond_561946___redundant_placeholder3
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
?%
?
while_body_559317
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_5_559341_0
while_lstm_cell_5_559343_0
while_lstm_cell_5_559345_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_5_559341
while_lstm_cell_5_559343
while_lstm_cell_5_559345??)while/lstm_cell_5/StatefulPartitionedCall?
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
)while/lstm_cell_5/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_5_559341_0while_lstm_cell_5_559343_0while_lstm_cell_5_559345_0*
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
GPU 2J 8? *P
fKRI
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_5588912+
)while/lstm_cell_5/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_5/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity2while/lstm_cell_5/StatefulPartitionedCall:output:1*^while/lstm_cell_5/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identity2while/lstm_cell_5/StatefulPartitionedCall:output:2*^while/lstm_cell_5/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_5_559341while_lstm_cell_5_559341_0"6
while_lstm_cell_5_559343while_lstm_cell_5_559343_0"6
while_lstm_cell_5_559345while_lstm_cell_5_559345_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2V
)while/lstm_cell_5/StatefulPartitionedCall)while/lstm_cell_5/StatefulPartitionedCall: 
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
?K
?
while_body_562568
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_5_matmul_readvariableop_resource_08
4while_lstm_cell_5_matmul_1_readvariableop_resource_07
3while_lstm_cell_5_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_5_matmul_readvariableop_resource6
2while_lstm_cell_5_matmul_1_readvariableop_resource5
1while_lstm_cell_5_biasadd_readvariableop_resource??(while/lstm_cell_5/BiasAdd/ReadVariableOp?'while/lstm_cell_5/MatMul/ReadVariableOp?)while/lstm_cell_5/MatMul_1/ReadVariableOp?
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
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_5/MatMul/ReadVariableOp?
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/MatMul?
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_5/MatMul_1/ReadVariableOp?
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/MatMul_1?
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/add?
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_5/BiasAdd/ReadVariableOp?
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/BiasAddt
while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_5/Const?
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dim?
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_5/split?
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid?
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_1?
while/lstm_cell_5/mulMulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul?
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_2?
while/lstm_cell_5/mul_1Mul while/lstm_cell_5/split:output:2while/lstm_cell_5/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_1?
while/lstm_cell_5/IdentityIdentitywhile/lstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Identity?
while/lstm_cell_5/IdentityN	IdentityNwhile/lstm_cell_5/mul_1:z:0 while/lstm_cell_5/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-562611*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell_5/IdentityN?
while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid:y:0$while/lstm_cell_5/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_2?
while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul:z:0while/lstm_cell_5/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/add_1?
while/lstm_cell_5/Sigmoid_3Sigmoid while/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_3?
while/lstm_cell_5/Sigmoid_4Sigmoidwhile/lstm_cell_5/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_4?
while/lstm_cell_5/mul_3Mulwhile/lstm_cell_5/add_1:z:0while/lstm_cell_5/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_3?
while/lstm_cell_5/Identity_1Identitywhile/lstm_cell_5/mul_3:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Identity_1?
while/lstm_cell_5/IdentityN_1	IdentityNwhile/lstm_cell_5/mul_3:z:0while/lstm_cell_5/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-562620*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell_5/IdentityN_1?
while/lstm_cell_5/mul_4Mulwhile/lstm_cell_5/Sigmoid_3:y:0&while/lstm_cell_5/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_4?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_4:z:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_5/mul_4:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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
'__inference_lstm_6_layer_call_fn_563215

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
B__inference_lstm_6_layer_call_and_return_conditional_losses_5608242
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
?D
?
B__inference_lstm_6_layer_call_and_return_conditional_losses_560016

inputs
lstm_cell_6_559934
lstm_cell_6_559936
lstm_cell_6_559938
identity??#lstm_cell_6/StatefulPartitionedCall?whileD
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
#lstm_cell_6/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_6_559934lstm_cell_6_559936lstm_cell_6_559938*
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
GPU 2J 8? *P
fKRI
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_5595212%
#lstm_cell_6/StatefulPartitionedCall?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_6_559934lstm_cell_6_559936lstm_cell_6_559938*
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
while_body_559947*
condR
while_cond_559946*K
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
IdentityIdentitytranspose_1:y:0$^lstm_cell_6/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :??????????????????@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:???????????????????:::2J
#lstm_cell_6/StatefulPartitionedCall#lstm_cell_6/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?c
?
B__inference_lstm_5_layer_call_and_return_conditional_losses_562295
inputs_0.
*lstm_cell_5_matmul_readvariableop_resource0
,lstm_cell_5_matmul_1_readvariableop_resource/
+lstm_cell_5_biasadd_readvariableop_resource
identity??"lstm_cell_5/BiasAdd/ReadVariableOp?!lstm_cell_5/MatMul/ReadVariableOp?#lstm_cell_5/MatMul_1/ReadVariableOp?whileF
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
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_5/MatMul/ReadVariableOp?
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/MatMul?
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_5/MatMul_1/ReadVariableOp?
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/MatMul_1?
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/add?
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_5/BiasAdd/ReadVariableOp?
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/BiasAddh
lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/Const|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dim?
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_5/split?
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid?
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_1?
lstm_cell_5/mulMullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul?
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_2?
lstm_cell_5/mul_1Mullstm_cell_5/split:output:2lstm_cell_5/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_1?
lstm_cell_5/IdentityIdentitylstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Identity?
lstm_cell_5/IdentityN	IdentityNlstm_cell_5/mul_1:z:0lstm_cell_5/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-562180*<
_output_shapes*
(:??????????:??????????2
lstm_cell_5/IdentityN?
lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_2?
lstm_cell_5/add_1AddV2lstm_cell_5/mul:z:0lstm_cell_5/mul_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/add_1?
lstm_cell_5/Sigmoid_3Sigmoidlstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_3?
lstm_cell_5/Sigmoid_4Sigmoidlstm_cell_5/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_4?
lstm_cell_5/mul_3Mullstm_cell_5/add_1:z:0lstm_cell_5/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_3?
lstm_cell_5/Identity_1Identitylstm_cell_5/mul_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Identity_1?
lstm_cell_5/IdentityN_1	IdentityNlstm_cell_5/mul_3:z:0lstm_cell_5/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-562189*<
_output_shapes*
(:??????????:??????????2
lstm_cell_5/IdentityN_1?
lstm_cell_5/mul_4Mullstm_cell_5/Sigmoid_3:y:0 lstm_cell_5/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_4?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
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
while_body_562200*
condR
while_cond_562199*M
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
IdentityIdentitytranspose_1:y:0#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????????????:::2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?"
?
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_558891

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
_gradient_op_typeCustomGradient-558872*<
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
_gradient_op_typeCustomGradient-558881*<
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
?c
?
B__inference_lstm_5_layer_call_and_return_conditional_losses_562836

inputs.
*lstm_cell_5_matmul_readvariableop_resource0
,lstm_cell_5_matmul_1_readvariableop_resource/
+lstm_cell_5_biasadd_readvariableop_resource
identity??"lstm_cell_5/BiasAdd/ReadVariableOp?!lstm_cell_5/MatMul/ReadVariableOp?#lstm_cell_5/MatMul_1/ReadVariableOp?whileD
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
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_5/MatMul/ReadVariableOp?
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/MatMul?
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_5/MatMul_1/ReadVariableOp?
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/MatMul_1?
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/add?
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_5/BiasAdd/ReadVariableOp?
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/BiasAddh
lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/Const|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dim?
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_5/split?
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid?
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_1?
lstm_cell_5/mulMullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul?
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_2?
lstm_cell_5/mul_1Mullstm_cell_5/split:output:2lstm_cell_5/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_1?
lstm_cell_5/IdentityIdentitylstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Identity?
lstm_cell_5/IdentityN	IdentityNlstm_cell_5/mul_1:z:0lstm_cell_5/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-562721*<
_output_shapes*
(:??????????:??????????2
lstm_cell_5/IdentityN?
lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_2?
lstm_cell_5/add_1AddV2lstm_cell_5/mul:z:0lstm_cell_5/mul_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/add_1?
lstm_cell_5/Sigmoid_3Sigmoidlstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_3?
lstm_cell_5/Sigmoid_4Sigmoidlstm_cell_5/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_4?
lstm_cell_5/mul_3Mullstm_cell_5/add_1:z:0lstm_cell_5/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_3?
lstm_cell_5/Identity_1Identitylstm_cell_5/mul_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Identity_1?
lstm_cell_5/IdentityN_1	IdentityNlstm_cell_5/mul_3:z:0lstm_cell_5/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-562730*<
_output_shapes*
(:??????????:??????????2
lstm_cell_5/IdentityN_1?
lstm_cell_5/mul_4Mullstm_cell_5/Sigmoid_3:y:0 lstm_cell_5/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_4?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
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
while_body_562741*
condR
while_cond_562740*M
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
IdentityIdentitytranspose_1:y:0#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????:::2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
'__inference_lstm_5_layer_call_fn_562847

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
B__inference_lstm_5_layer_call_and_return_conditional_losses_5604492
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
'__inference_lstm_6_layer_call_fn_563594
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
B__inference_lstm_6_layer_call_and_return_conditional_losses_5600162
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
C__inference_dense_9_layer_call_and_return_conditional_losses_564105

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
?m
?
%sequential_3_lstm_5_while_body_558471D
@sequential_3_lstm_5_while_sequential_3_lstm_5_while_loop_counterJ
Fsequential_3_lstm_5_while_sequential_3_lstm_5_while_maximum_iterations)
%sequential_3_lstm_5_while_placeholder+
'sequential_3_lstm_5_while_placeholder_1+
'sequential_3_lstm_5_while_placeholder_2+
'sequential_3_lstm_5_while_placeholder_3C
?sequential_3_lstm_5_while_sequential_3_lstm_5_strided_slice_1_0
{sequential_3_lstm_5_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_5_tensorarrayunstack_tensorlistfromtensor_0J
Fsequential_3_lstm_5_while_lstm_cell_5_matmul_readvariableop_resource_0L
Hsequential_3_lstm_5_while_lstm_cell_5_matmul_1_readvariableop_resource_0K
Gsequential_3_lstm_5_while_lstm_cell_5_biasadd_readvariableop_resource_0&
"sequential_3_lstm_5_while_identity(
$sequential_3_lstm_5_while_identity_1(
$sequential_3_lstm_5_while_identity_2(
$sequential_3_lstm_5_while_identity_3(
$sequential_3_lstm_5_while_identity_4(
$sequential_3_lstm_5_while_identity_5A
=sequential_3_lstm_5_while_sequential_3_lstm_5_strided_slice_1}
ysequential_3_lstm_5_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_5_tensorarrayunstack_tensorlistfromtensorH
Dsequential_3_lstm_5_while_lstm_cell_5_matmul_readvariableop_resourceJ
Fsequential_3_lstm_5_while_lstm_cell_5_matmul_1_readvariableop_resourceI
Esequential_3_lstm_5_while_lstm_cell_5_biasadd_readvariableop_resource??<sequential_3/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp?;sequential_3/lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp?=sequential_3/lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp?
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
;sequential_3/lstm_5/while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOpFsequential_3_lstm_5_while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02=
;sequential_3/lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp?
,sequential_3/lstm_5/while/lstm_cell_5/MatMulMatMulDsequential_3/lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0Csequential_3/lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2.
,sequential_3/lstm_5/while/lstm_cell_5/MatMul?
=sequential_3/lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOpHsequential_3_lstm_5_while_lstm_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02?
=sequential_3/lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp?
.sequential_3/lstm_5/while/lstm_cell_5/MatMul_1MatMul'sequential_3_lstm_5_while_placeholder_2Esequential_3/lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????20
.sequential_3/lstm_5/while/lstm_cell_5/MatMul_1?
)sequential_3/lstm_5/while/lstm_cell_5/addAddV26sequential_3/lstm_5/while/lstm_cell_5/MatMul:product:08sequential_3/lstm_5/while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2+
)sequential_3/lstm_5/while/lstm_cell_5/add?
<sequential_3/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOpGsequential_3_lstm_5_while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02>
<sequential_3/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp?
-sequential_3/lstm_5/while/lstm_cell_5/BiasAddBiasAdd-sequential_3/lstm_5/while/lstm_cell_5/add:z:0Dsequential_3/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2/
-sequential_3/lstm_5/while/lstm_cell_5/BiasAdd?
+sequential_3/lstm_5/while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2-
+sequential_3/lstm_5/while/lstm_cell_5/Const?
5sequential_3/lstm_5/while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential_3/lstm_5/while/lstm_cell_5/split/split_dim?
+sequential_3/lstm_5/while/lstm_cell_5/splitSplit>sequential_3/lstm_5/while/lstm_cell_5/split/split_dim:output:06sequential_3/lstm_5/while/lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2-
+sequential_3/lstm_5/while/lstm_cell_5/split?
-sequential_3/lstm_5/while/lstm_cell_5/SigmoidSigmoid4sequential_3/lstm_5/while/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2/
-sequential_3/lstm_5/while/lstm_cell_5/Sigmoid?
/sequential_3/lstm_5/while/lstm_cell_5/Sigmoid_1Sigmoid4sequential_3/lstm_5/while/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????21
/sequential_3/lstm_5/while/lstm_cell_5/Sigmoid_1?
)sequential_3/lstm_5/while/lstm_cell_5/mulMul3sequential_3/lstm_5/while/lstm_cell_5/Sigmoid_1:y:0'sequential_3_lstm_5_while_placeholder_3*
T0*(
_output_shapes
:??????????2+
)sequential_3/lstm_5/while/lstm_cell_5/mul?
/sequential_3/lstm_5/while/lstm_cell_5/Sigmoid_2Sigmoid4sequential_3/lstm_5/while/lstm_cell_5/split:output:2*
T0*(
_output_shapes
:??????????21
/sequential_3/lstm_5/while/lstm_cell_5/Sigmoid_2?
+sequential_3/lstm_5/while/lstm_cell_5/mul_1Mul4sequential_3/lstm_5/while/lstm_cell_5/split:output:23sequential_3/lstm_5/while/lstm_cell_5/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2-
+sequential_3/lstm_5/while/lstm_cell_5/mul_1?
.sequential_3/lstm_5/while/lstm_cell_5/IdentityIdentity/sequential_3/lstm_5/while/lstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????20
.sequential_3/lstm_5/while/lstm_cell_5/Identity?
/sequential_3/lstm_5/while/lstm_cell_5/IdentityN	IdentityN/sequential_3/lstm_5/while/lstm_cell_5/mul_1:z:04sequential_3/lstm_5/while/lstm_cell_5/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-558514*<
_output_shapes*
(:??????????:??????????21
/sequential_3/lstm_5/while/lstm_cell_5/IdentityN?
+sequential_3/lstm_5/while/lstm_cell_5/mul_2Mul1sequential_3/lstm_5/while/lstm_cell_5/Sigmoid:y:08sequential_3/lstm_5/while/lstm_cell_5/IdentityN:output:0*
T0*(
_output_shapes
:??????????2-
+sequential_3/lstm_5/while/lstm_cell_5/mul_2?
+sequential_3/lstm_5/while/lstm_cell_5/add_1AddV2-sequential_3/lstm_5/while/lstm_cell_5/mul:z:0/sequential_3/lstm_5/while/lstm_cell_5/mul_2:z:0*
T0*(
_output_shapes
:??????????2-
+sequential_3/lstm_5/while/lstm_cell_5/add_1?
/sequential_3/lstm_5/while/lstm_cell_5/Sigmoid_3Sigmoid4sequential_3/lstm_5/while/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????21
/sequential_3/lstm_5/while/lstm_cell_5/Sigmoid_3?
/sequential_3/lstm_5/while/lstm_cell_5/Sigmoid_4Sigmoid/sequential_3/lstm_5/while/lstm_cell_5/add_1:z:0*
T0*(
_output_shapes
:??????????21
/sequential_3/lstm_5/while/lstm_cell_5/Sigmoid_4?
+sequential_3/lstm_5/while/lstm_cell_5/mul_3Mul/sequential_3/lstm_5/while/lstm_cell_5/add_1:z:03sequential_3/lstm_5/while/lstm_cell_5/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2-
+sequential_3/lstm_5/while/lstm_cell_5/mul_3?
0sequential_3/lstm_5/while/lstm_cell_5/Identity_1Identity/sequential_3/lstm_5/while/lstm_cell_5/mul_3:z:0*
T0*(
_output_shapes
:??????????22
0sequential_3/lstm_5/while/lstm_cell_5/Identity_1?
1sequential_3/lstm_5/while/lstm_cell_5/IdentityN_1	IdentityN/sequential_3/lstm_5/while/lstm_cell_5/mul_3:z:0/sequential_3/lstm_5/while/lstm_cell_5/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-558523*<
_output_shapes*
(:??????????:??????????23
1sequential_3/lstm_5/while/lstm_cell_5/IdentityN_1?
+sequential_3/lstm_5/while/lstm_cell_5/mul_4Mul3sequential_3/lstm_5/while/lstm_cell_5/Sigmoid_3:y:0:sequential_3/lstm_5/while/lstm_cell_5/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2-
+sequential_3/lstm_5/while/lstm_cell_5/mul_4?
>sequential_3/lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_3_lstm_5_while_placeholder_1%sequential_3_lstm_5_while_placeholder/sequential_3/lstm_5/while/lstm_cell_5/mul_4:z:0*
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
"sequential_3/lstm_5/while/IdentityIdentity#sequential_3/lstm_5/while/add_1:z:0=^sequential_3/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp<^sequential_3/lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp>^sequential_3/lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2$
"sequential_3/lstm_5/while/Identity?
$sequential_3/lstm_5/while/Identity_1IdentityFsequential_3_lstm_5_while_sequential_3_lstm_5_while_maximum_iterations=^sequential_3/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp<^sequential_3/lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp>^sequential_3/lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_3/lstm_5/while/Identity_1?
$sequential_3/lstm_5/while/Identity_2Identity!sequential_3/lstm_5/while/add:z:0=^sequential_3/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp<^sequential_3/lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp>^sequential_3/lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_3/lstm_5/while/Identity_2?
$sequential_3/lstm_5/while/Identity_3IdentityNsequential_3/lstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0=^sequential_3/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp<^sequential_3/lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp>^sequential_3/lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_3/lstm_5/while/Identity_3?
$sequential_3/lstm_5/while/Identity_4Identity/sequential_3/lstm_5/while/lstm_cell_5/mul_4:z:0=^sequential_3/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp<^sequential_3/lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp>^sequential_3/lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2&
$sequential_3/lstm_5/while/Identity_4?
$sequential_3/lstm_5/while/Identity_5Identity/sequential_3/lstm_5/while/lstm_cell_5/add_1:z:0=^sequential_3/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp<^sequential_3/lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp>^sequential_3/lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
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
Esequential_3_lstm_5_while_lstm_cell_5_biasadd_readvariableop_resourceGsequential_3_lstm_5_while_lstm_cell_5_biasadd_readvariableop_resource_0"?
Fsequential_3_lstm_5_while_lstm_cell_5_matmul_1_readvariableop_resourceHsequential_3_lstm_5_while_lstm_cell_5_matmul_1_readvariableop_resource_0"?
Dsequential_3_lstm_5_while_lstm_cell_5_matmul_readvariableop_resourceFsequential_3_lstm_5_while_lstm_cell_5_matmul_readvariableop_resource_0"?
=sequential_3_lstm_5_while_sequential_3_lstm_5_strided_slice_1?sequential_3_lstm_5_while_sequential_3_lstm_5_strided_slice_1_0"?
ysequential_3_lstm_5_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_5_tensorarrayunstack_tensorlistfromtensor{sequential_3_lstm_5_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2|
<sequential_3/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp<sequential_3/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp2z
;sequential_3/lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp;sequential_3/lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp2~
=sequential_3/lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp=sequential_3/lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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
?b
?
B__inference_lstm_6_layer_call_and_return_conditional_losses_563031

inputs.
*lstm_cell_6_matmul_readvariableop_resource0
,lstm_cell_6_matmul_1_readvariableop_resource/
+lstm_cell_6_biasadd_readvariableop_resource
identity??"lstm_cell_6/BiasAdd/ReadVariableOp?!lstm_cell_6/MatMul/ReadVariableOp?#lstm_cell_6/MatMul_1/ReadVariableOp?whileD
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
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!lstm_cell_6/MatMul/ReadVariableOp?
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/MatMul?
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype02%
#lstm_cell_6/MatMul_1/ReadVariableOp?
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/MatMul_1?
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/add?
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_6/BiasAdd/ReadVariableOp?
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/BiasAddh
lstm_cell_6/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_6/Const|
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_6/split/split_dim?
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
lstm_cell_6/split?
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Sigmoid?
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Sigmoid_1?
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/mul?
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Sigmoid_2?
lstm_cell_6/mul_1Mullstm_cell_6/split:output:2lstm_cell_6/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/mul_1?
lstm_cell_6/IdentityIdentitylstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Identity?
lstm_cell_6/IdentityN	IdentityNlstm_cell_6/mul_1:z:0lstm_cell_6/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-562916*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_6/IdentityN?
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/mul_2?
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/add_1?
lstm_cell_6/Sigmoid_3Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Sigmoid_3?
lstm_cell_6/Sigmoid_4Sigmoidlstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Sigmoid_4?
lstm_cell_6/mul_3Mullstm_cell_6/add_1:z:0lstm_cell_6/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/mul_3?
lstm_cell_6/Identity_1Identitylstm_cell_6/mul_3:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/Identity_1?
lstm_cell_6/IdentityN_1	IdentityNlstm_cell_6/mul_3:z:0lstm_cell_6/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-562925*:
_output_shapes(
&:?????????@:?????????@2
lstm_cell_6/IdentityN_1?
lstm_cell_6/mul_4Mullstm_cell_6/Sigmoid_3:y:0 lstm_cell_6/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell_6/mul_4?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
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
while_body_562936*
condR
while_cond_562935*K
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
IdentityIdentitytranspose_1:y:0#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????:::2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
!__inference__wrapped_model_558765
lstm_5_inputB
>sequential_3_lstm_5_lstm_cell_5_matmul_readvariableop_resourceD
@sequential_3_lstm_5_lstm_cell_5_matmul_1_readvariableop_resourceC
?sequential_3_lstm_5_lstm_cell_5_biasadd_readvariableop_resourceB
>sequential_3_lstm_6_lstm_cell_6_matmul_readvariableop_resourceD
@sequential_3_lstm_6_lstm_cell_6_matmul_1_readvariableop_resourceC
?sequential_3_lstm_6_lstm_cell_6_biasadd_readvariableop_resourceJ
Fsequential_3_time_distributed_3_dense_8_matmul_readvariableop_resourceK
Gsequential_3_time_distributed_3_dense_8_biasadd_readvariableop_resourceJ
Fsequential_3_time_distributed_4_dense_9_matmul_readvariableop_resourceK
Gsequential_3_time_distributed_4_dense_9_biasadd_readvariableop_resource
identity??6sequential_3/lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp?5sequential_3/lstm_5/lstm_cell_5/MatMul/ReadVariableOp?7sequential_3/lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp?sequential_3/lstm_5/while?6sequential_3/lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp?5sequential_3/lstm_6/lstm_cell_6/MatMul/ReadVariableOp?7sequential_3/lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp?sequential_3/lstm_6/while?>sequential_3/time_distributed_3/dense_8/BiasAdd/ReadVariableOp?=sequential_3/time_distributed_3/dense_8/MatMul/ReadVariableOp?>sequential_3/time_distributed_4/dense_9/BiasAdd/ReadVariableOp?=sequential_3/time_distributed_4/dense_9/MatMul/ReadVariableOpr
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
5sequential_3/lstm_5/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp>sequential_3_lstm_5_lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype027
5sequential_3/lstm_5/lstm_cell_5/MatMul/ReadVariableOp?
&sequential_3/lstm_5/lstm_cell_5/MatMulMatMul,sequential_3/lstm_5/strided_slice_2:output:0=sequential_3/lstm_5/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2(
&sequential_3/lstm_5/lstm_cell_5/MatMul?
7sequential_3/lstm_5/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp@sequential_3_lstm_5_lstm_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype029
7sequential_3/lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp?
(sequential_3/lstm_5/lstm_cell_5/MatMul_1MatMul"sequential_3/lstm_5/zeros:output:0?sequential_3/lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2*
(sequential_3/lstm_5/lstm_cell_5/MatMul_1?
#sequential_3/lstm_5/lstm_cell_5/addAddV20sequential_3/lstm_5/lstm_cell_5/MatMul:product:02sequential_3/lstm_5/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2%
#sequential_3/lstm_5/lstm_cell_5/add?
6sequential_3/lstm_5/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp?sequential_3_lstm_5_lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype028
6sequential_3/lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp?
'sequential_3/lstm_5/lstm_cell_5/BiasAddBiasAdd'sequential_3/lstm_5/lstm_cell_5/add:z:0>sequential_3/lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2)
'sequential_3/lstm_5/lstm_cell_5/BiasAdd?
%sequential_3/lstm_5/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_3/lstm_5/lstm_cell_5/Const?
/sequential_3/lstm_5/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :21
/sequential_3/lstm_5/lstm_cell_5/split/split_dim?
%sequential_3/lstm_5/lstm_cell_5/splitSplit8sequential_3/lstm_5/lstm_cell_5/split/split_dim:output:00sequential_3/lstm_5/lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2'
%sequential_3/lstm_5/lstm_cell_5/split?
'sequential_3/lstm_5/lstm_cell_5/SigmoidSigmoid.sequential_3/lstm_5/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2)
'sequential_3/lstm_5/lstm_cell_5/Sigmoid?
)sequential_3/lstm_5/lstm_cell_5/Sigmoid_1Sigmoid.sequential_3/lstm_5/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????2+
)sequential_3/lstm_5/lstm_cell_5/Sigmoid_1?
#sequential_3/lstm_5/lstm_cell_5/mulMul-sequential_3/lstm_5/lstm_cell_5/Sigmoid_1:y:0$sequential_3/lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:??????????2%
#sequential_3/lstm_5/lstm_cell_5/mul?
)sequential_3/lstm_5/lstm_cell_5/Sigmoid_2Sigmoid.sequential_3/lstm_5/lstm_cell_5/split:output:2*
T0*(
_output_shapes
:??????????2+
)sequential_3/lstm_5/lstm_cell_5/Sigmoid_2?
%sequential_3/lstm_5/lstm_cell_5/mul_1Mul.sequential_3/lstm_5/lstm_cell_5/split:output:2-sequential_3/lstm_5/lstm_cell_5/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2'
%sequential_3/lstm_5/lstm_cell_5/mul_1?
(sequential_3/lstm_5/lstm_cell_5/IdentityIdentity)sequential_3/lstm_5/lstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????2*
(sequential_3/lstm_5/lstm_cell_5/Identity?
)sequential_3/lstm_5/lstm_cell_5/IdentityN	IdentityN)sequential_3/lstm_5/lstm_cell_5/mul_1:z:0.sequential_3/lstm_5/lstm_cell_5/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-558451*<
_output_shapes*
(:??????????:??????????2+
)sequential_3/lstm_5/lstm_cell_5/IdentityN?
%sequential_3/lstm_5/lstm_cell_5/mul_2Mul+sequential_3/lstm_5/lstm_cell_5/Sigmoid:y:02sequential_3/lstm_5/lstm_cell_5/IdentityN:output:0*
T0*(
_output_shapes
:??????????2'
%sequential_3/lstm_5/lstm_cell_5/mul_2?
%sequential_3/lstm_5/lstm_cell_5/add_1AddV2'sequential_3/lstm_5/lstm_cell_5/mul:z:0)sequential_3/lstm_5/lstm_cell_5/mul_2:z:0*
T0*(
_output_shapes
:??????????2'
%sequential_3/lstm_5/lstm_cell_5/add_1?
)sequential_3/lstm_5/lstm_cell_5/Sigmoid_3Sigmoid.sequential_3/lstm_5/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????2+
)sequential_3/lstm_5/lstm_cell_5/Sigmoid_3?
)sequential_3/lstm_5/lstm_cell_5/Sigmoid_4Sigmoid)sequential_3/lstm_5/lstm_cell_5/add_1:z:0*
T0*(
_output_shapes
:??????????2+
)sequential_3/lstm_5/lstm_cell_5/Sigmoid_4?
%sequential_3/lstm_5/lstm_cell_5/mul_3Mul)sequential_3/lstm_5/lstm_cell_5/add_1:z:0-sequential_3/lstm_5/lstm_cell_5/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2'
%sequential_3/lstm_5/lstm_cell_5/mul_3?
*sequential_3/lstm_5/lstm_cell_5/Identity_1Identity)sequential_3/lstm_5/lstm_cell_5/mul_3:z:0*
T0*(
_output_shapes
:??????????2,
*sequential_3/lstm_5/lstm_cell_5/Identity_1?
+sequential_3/lstm_5/lstm_cell_5/IdentityN_1	IdentityN)sequential_3/lstm_5/lstm_cell_5/mul_3:z:0)sequential_3/lstm_5/lstm_cell_5/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-558460*<
_output_shapes*
(:??????????:??????????2-
+sequential_3/lstm_5/lstm_cell_5/IdentityN_1?
%sequential_3/lstm_5/lstm_cell_5/mul_4Mul-sequential_3/lstm_5/lstm_cell_5/Sigmoid_3:y:04sequential_3/lstm_5/lstm_cell_5/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2'
%sequential_3/lstm_5/lstm_cell_5/mul_4?
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
sequential_3/lstm_5/whileWhile/sequential_3/lstm_5/while/loop_counter:output:05sequential_3/lstm_5/while/maximum_iterations:output:0!sequential_3/lstm_5/time:output:0,sequential_3/lstm_5/TensorArrayV2_1:handle:0"sequential_3/lstm_5/zeros:output:0$sequential_3/lstm_5/zeros_1:output:0,sequential_3/lstm_5/strided_slice_1:output:0Ksequential_3/lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:0>sequential_3_lstm_5_lstm_cell_5_matmul_readvariableop_resource@sequential_3_lstm_5_lstm_cell_5_matmul_1_readvariableop_resource?sequential_3_lstm_5_lstm_cell_5_biasadd_readvariableop_resource*
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
%sequential_3_lstm_5_while_body_558471*1
cond)R'
%sequential_3_lstm_5_while_cond_558470*M
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
5sequential_3/lstm_6/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp>sequential_3_lstm_6_lstm_cell_6_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype027
5sequential_3/lstm_6/lstm_cell_6/MatMul/ReadVariableOp?
&sequential_3/lstm_6/lstm_cell_6/MatMulMatMul,sequential_3/lstm_6/strided_slice_2:output:0=sequential_3/lstm_6/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2(
&sequential_3/lstm_6/lstm_cell_6/MatMul?
7sequential_3/lstm_6/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp@sequential_3_lstm_6_lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	@?*
dtype029
7sequential_3/lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp?
(sequential_3/lstm_6/lstm_cell_6/MatMul_1MatMul"sequential_3/lstm_6/zeros:output:0?sequential_3/lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2*
(sequential_3/lstm_6/lstm_cell_6/MatMul_1?
#sequential_3/lstm_6/lstm_cell_6/addAddV20sequential_3/lstm_6/lstm_cell_6/MatMul:product:02sequential_3/lstm_6/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2%
#sequential_3/lstm_6/lstm_cell_6/add?
6sequential_3/lstm_6/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp?sequential_3_lstm_6_lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype028
6sequential_3/lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp?
'sequential_3/lstm_6/lstm_cell_6/BiasAddBiasAdd'sequential_3/lstm_6/lstm_cell_6/add:z:0>sequential_3/lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2)
'sequential_3/lstm_6/lstm_cell_6/BiasAdd?
%sequential_3/lstm_6/lstm_cell_6/ConstConst*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_3/lstm_6/lstm_cell_6/Const?
/sequential_3/lstm_6/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :21
/sequential_3/lstm_6/lstm_cell_6/split/split_dim?
%sequential_3/lstm_6/lstm_cell_6/splitSplit8sequential_3/lstm_6/lstm_cell_6/split/split_dim:output:00sequential_3/lstm_6/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2'
%sequential_3/lstm_6/lstm_cell_6/split?
'sequential_3/lstm_6/lstm_cell_6/SigmoidSigmoid.sequential_3/lstm_6/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????@2)
'sequential_3/lstm_6/lstm_cell_6/Sigmoid?
)sequential_3/lstm_6/lstm_cell_6/Sigmoid_1Sigmoid.sequential_3/lstm_6/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????@2+
)sequential_3/lstm_6/lstm_cell_6/Sigmoid_1?
#sequential_3/lstm_6/lstm_cell_6/mulMul-sequential_3/lstm_6/lstm_cell_6/Sigmoid_1:y:0$sequential_3/lstm_6/zeros_1:output:0*
T0*'
_output_shapes
:?????????@2%
#sequential_3/lstm_6/lstm_cell_6/mul?
)sequential_3/lstm_6/lstm_cell_6/Sigmoid_2Sigmoid.sequential_3/lstm_6/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????@2+
)sequential_3/lstm_6/lstm_cell_6/Sigmoid_2?
%sequential_3/lstm_6/lstm_cell_6/mul_1Mul.sequential_3/lstm_6/lstm_cell_6/split:output:2-sequential_3/lstm_6/lstm_cell_6/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2'
%sequential_3/lstm_6/lstm_cell_6/mul_1?
(sequential_3/lstm_6/lstm_cell_6/IdentityIdentity)sequential_3/lstm_6/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????@2*
(sequential_3/lstm_6/lstm_cell_6/Identity?
)sequential_3/lstm_6/lstm_cell_6/IdentityN	IdentityN)sequential_3/lstm_6/lstm_cell_6/mul_1:z:0.sequential_3/lstm_6/lstm_cell_6/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-558620*:
_output_shapes(
&:?????????@:?????????@2+
)sequential_3/lstm_6/lstm_cell_6/IdentityN?
%sequential_3/lstm_6/lstm_cell_6/mul_2Mul+sequential_3/lstm_6/lstm_cell_6/Sigmoid:y:02sequential_3/lstm_6/lstm_cell_6/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2'
%sequential_3/lstm_6/lstm_cell_6/mul_2?
%sequential_3/lstm_6/lstm_cell_6/add_1AddV2'sequential_3/lstm_6/lstm_cell_6/mul:z:0)sequential_3/lstm_6/lstm_cell_6/mul_2:z:0*
T0*'
_output_shapes
:?????????@2'
%sequential_3/lstm_6/lstm_cell_6/add_1?
)sequential_3/lstm_6/lstm_cell_6/Sigmoid_3Sigmoid.sequential_3/lstm_6/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????@2+
)sequential_3/lstm_6/lstm_cell_6/Sigmoid_3?
)sequential_3/lstm_6/lstm_cell_6/Sigmoid_4Sigmoid)sequential_3/lstm_6/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????@2+
)sequential_3/lstm_6/lstm_cell_6/Sigmoid_4?
%sequential_3/lstm_6/lstm_cell_6/mul_3Mul)sequential_3/lstm_6/lstm_cell_6/add_1:z:0-sequential_3/lstm_6/lstm_cell_6/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2'
%sequential_3/lstm_6/lstm_cell_6/mul_3?
*sequential_3/lstm_6/lstm_cell_6/Identity_1Identity)sequential_3/lstm_6/lstm_cell_6/mul_3:z:0*
T0*'
_output_shapes
:?????????@2,
*sequential_3/lstm_6/lstm_cell_6/Identity_1?
+sequential_3/lstm_6/lstm_cell_6/IdentityN_1	IdentityN)sequential_3/lstm_6/lstm_cell_6/mul_3:z:0)sequential_3/lstm_6/lstm_cell_6/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-558629*:
_output_shapes(
&:?????????@:?????????@2-
+sequential_3/lstm_6/lstm_cell_6/IdentityN_1?
%sequential_3/lstm_6/lstm_cell_6/mul_4Mul-sequential_3/lstm_6/lstm_cell_6/Sigmoid_3:y:04sequential_3/lstm_6/lstm_cell_6/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2'
%sequential_3/lstm_6/lstm_cell_6/mul_4?
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
sequential_3/lstm_6/whileWhile/sequential_3/lstm_6/while/loop_counter:output:05sequential_3/lstm_6/while/maximum_iterations:output:0!sequential_3/lstm_6/time:output:0,sequential_3/lstm_6/TensorArrayV2_1:handle:0"sequential_3/lstm_6/zeros:output:0$sequential_3/lstm_6/zeros_1:output:0,sequential_3/lstm_6/strided_slice_1:output:0Ksequential_3/lstm_6/TensorArrayUnstack/TensorListFromTensor:output_handle:0>sequential_3_lstm_6_lstm_cell_6_matmul_readvariableop_resource@sequential_3_lstm_6_lstm_cell_6_matmul_1_readvariableop_resource?sequential_3_lstm_6_lstm_cell_6_biasadd_readvariableop_resource*
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
%sequential_3_lstm_6_while_body_558640*1
cond)R'
%sequential_3_lstm_6_while_cond_558639*K
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
_gradient_op_typeCustomGradient-558742*:
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
IdentityIdentity2sequential_3/time_distributed_4/Reshape_1:output:07^sequential_3/lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp6^sequential_3/lstm_5/lstm_cell_5/MatMul/ReadVariableOp8^sequential_3/lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp^sequential_3/lstm_5/while7^sequential_3/lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp6^sequential_3/lstm_6/lstm_cell_6/MatMul/ReadVariableOp8^sequential_3/lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp^sequential_3/lstm_6/while?^sequential_3/time_distributed_3/dense_8/BiasAdd/ReadVariableOp>^sequential_3/time_distributed_3/dense_8/MatMul/ReadVariableOp?^sequential_3/time_distributed_4/dense_9/BiasAdd/ReadVariableOp>^sequential_3/time_distributed_4/dense_9/MatMul/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:?????????::::::::::2p
6sequential_3/lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp6sequential_3/lstm_5/lstm_cell_5/BiasAdd/ReadVariableOp2n
5sequential_3/lstm_5/lstm_cell_5/MatMul/ReadVariableOp5sequential_3/lstm_5/lstm_cell_5/MatMul/ReadVariableOp2r
7sequential_3/lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp7sequential_3/lstm_5/lstm_cell_5/MatMul_1/ReadVariableOp26
sequential_3/lstm_5/whilesequential_3/lstm_5/while2p
6sequential_3/lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp6sequential_3/lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp2n
5sequential_3/lstm_6/lstm_cell_6/MatMul/ReadVariableOp5sequential_3/lstm_6/lstm_cell_6/MatMul/ReadVariableOp2r
7sequential_3/lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp7sequential_3/lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp26
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
?
?
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_560237

inputs
dense_9_560227
dense_9_560229
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
dense_9/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_9_560227dense_9_560229*
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
C__inference_dense_9_layer_call_and_return_conditional_losses_5601732!
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
?
?
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_563812

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
?%
?
while_body_559185
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_5_559209_0
while_lstm_cell_5_559211_0
while_lstm_cell_5_559213_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_5_559209
while_lstm_cell_5_559211
while_lstm_cell_5_559213??)while/lstm_cell_5/StatefulPartitionedCall?
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
)while/lstm_cell_5/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_5_559209_0while_lstm_cell_5_559211_0while_lstm_cell_5_559213_0*
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
GPU 2J 8? *P
fKRI
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_5588482+
)while/lstm_cell_5/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_5/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_5/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity2while/lstm_cell_5/StatefulPartitionedCall:output:1*^while/lstm_cell_5/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identity2while/lstm_cell_5/StatefulPartitionedCall:output:2*^while/lstm_cell_5/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_5_559209while_lstm_cell_5_559209_0"6
while_lstm_cell_5_559211while_lstm_cell_5_559211_0"6
while_lstm_cell_5_559213while_lstm_cell_5_559213_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2V
)while/lstm_cell_5/StatefulPartitionedCall)while/lstm_cell_5/StatefulPartitionedCall: 
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
?K
?
while_body_560527
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_5_matmul_readvariableop_resource_08
4while_lstm_cell_5_matmul_1_readvariableop_resource_07
3while_lstm_cell_5_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_5_matmul_readvariableop_resource6
2while_lstm_cell_5_matmul_1_readvariableop_resource5
1while_lstm_cell_5_biasadd_readvariableop_resource??(while/lstm_cell_5/BiasAdd/ReadVariableOp?'while/lstm_cell_5/MatMul/ReadVariableOp?)while/lstm_cell_5/MatMul_1/ReadVariableOp?
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
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_5/MatMul/ReadVariableOp?
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/MatMul?
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_5/MatMul_1/ReadVariableOp?
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/MatMul_1?
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/add?
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_5/BiasAdd/ReadVariableOp?
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/BiasAddt
while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_5/Const?
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dim?
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_5/split?
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid?
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_1?
while/lstm_cell_5/mulMulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul?
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_2?
while/lstm_cell_5/mul_1Mul while/lstm_cell_5/split:output:2while/lstm_cell_5/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_1?
while/lstm_cell_5/IdentityIdentitywhile/lstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Identity?
while/lstm_cell_5/IdentityN	IdentityNwhile/lstm_cell_5/mul_1:z:0 while/lstm_cell_5/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-560570*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell_5/IdentityN?
while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid:y:0$while/lstm_cell_5/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_2?
while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul:z:0while/lstm_cell_5/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/add_1?
while/lstm_cell_5/Sigmoid_3Sigmoid while/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_3?
while/lstm_cell_5/Sigmoid_4Sigmoidwhile/lstm_cell_5/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_4?
while/lstm_cell_5/mul_3Mulwhile/lstm_cell_5/add_1:z:0while/lstm_cell_5/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_3?
while/lstm_cell_5/Identity_1Identitywhile/lstm_cell_5/mul_3:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Identity_1?
while/lstm_cell_5/IdentityN_1	IdentityNwhile/lstm_cell_5/mul_3:z:0while/lstm_cell_5/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-560579*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell_5/IdentityN_1?
while/lstm_cell_5/mul_4Mulwhile/lstm_cell_5/Sigmoid_3:y:0&while/lstm_cell_5/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_4?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_4:z:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_5/mul_4:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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
?Y
?
__inference__traced_save_564260
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
?
?
while_cond_562199
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_562199___redundant_placeholder04
0while_while_cond_562199___redundant_placeholder14
0while_while_cond_562199___redundant_placeholder24
0while_while_cond_562199___redundant_placeholder3
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
while_cond_559814
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_559814___redundant_placeholder04
0while_while_cond_559814___redundant_placeholder14
0while_while_cond_559814___redundant_placeholder24
0while_while_cond_559814___redundant_placeholder3
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
?K
?
while_body_562741
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_5_matmul_readvariableop_resource_08
4while_lstm_cell_5_matmul_1_readvariableop_resource_07
3while_lstm_cell_5_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_5_matmul_readvariableop_resource6
2while_lstm_cell_5_matmul_1_readvariableop_resource5
1while_lstm_cell_5_biasadd_readvariableop_resource??(while/lstm_cell_5/BiasAdd/ReadVariableOp?'while/lstm_cell_5/MatMul/ReadVariableOp?)while/lstm_cell_5/MatMul_1/ReadVariableOp?
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
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_5/MatMul/ReadVariableOp?
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/MatMul?
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_5/MatMul_1/ReadVariableOp?
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/MatMul_1?
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/add?
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_5/BiasAdd/ReadVariableOp?
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/BiasAddt
while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_5/Const?
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dim?
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_5/split?
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid?
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_1?
while/lstm_cell_5/mulMulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul?
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_2?
while/lstm_cell_5/mul_1Mul while/lstm_cell_5/split:output:2while/lstm_cell_5/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_1?
while/lstm_cell_5/IdentityIdentitywhile/lstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Identity?
while/lstm_cell_5/IdentityN	IdentityNwhile/lstm_cell_5/mul_1:z:0 while/lstm_cell_5/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-562784*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell_5/IdentityN?
while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid:y:0$while/lstm_cell_5/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_2?
while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul:z:0while/lstm_cell_5/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/add_1?
while/lstm_cell_5/Sigmoid_3Sigmoid while/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_3?
while/lstm_cell_5/Sigmoid_4Sigmoidwhile/lstm_cell_5/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_4?
while/lstm_cell_5/mul_3Mulwhile/lstm_cell_5/add_1:z:0while/lstm_cell_5/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_3?
while/lstm_cell_5/Identity_1Identitywhile/lstm_cell_5/mul_3:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Identity_1?
while/lstm_cell_5/IdentityN_1	IdentityNwhile/lstm_cell_5/mul_3:z:0while/lstm_cell_5/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-562793*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell_5/IdentityN_1?
while/lstm_cell_5/mul_4Mulwhile/lstm_cell_5/Sigmoid_3:y:0&while/lstm_cell_5/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_4?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_4:z:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_5/mul_4:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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
?
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_559478

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
_gradient_op_typeCustomGradient-559459*:
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
_gradient_op_typeCustomGradient-559468*:
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
?
?
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_561119

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
?D
?
B__inference_lstm_5_layer_call_and_return_conditional_losses_559254

inputs
lstm_cell_5_559172
lstm_cell_5_559174
lstm_cell_5_559176
identity??#lstm_cell_5/StatefulPartitionedCall?whileD
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
#lstm_cell_5/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_5_559172lstm_cell_5_559174lstm_cell_5_559176*
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
GPU 2J 8? *P
fKRI
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_5588482%
#lstm_cell_5/StatefulPartitionedCall?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_5_559172lstm_cell_5_559174lstm_cell_5_559176*
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
while_body_559185*
condR
while_cond_559184*M
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
IdentityIdentitytranspose_1:y:0$^lstm_cell_5/StatefulPartitionedCall^while*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????????????:::2J
#lstm_cell_5/StatefulPartitionedCall#lstm_cell_5/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?W
?	
lstm_5_while_body_561778*
&lstm_5_while_lstm_5_while_loop_counter0
,lstm_5_while_lstm_5_while_maximum_iterations
lstm_5_while_placeholder
lstm_5_while_placeholder_1
lstm_5_while_placeholder_2
lstm_5_while_placeholder_3)
%lstm_5_while_lstm_5_strided_slice_1_0e
alstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0=
9lstm_5_while_lstm_cell_5_matmul_readvariableop_resource_0?
;lstm_5_while_lstm_cell_5_matmul_1_readvariableop_resource_0>
:lstm_5_while_lstm_cell_5_biasadd_readvariableop_resource_0
lstm_5_while_identity
lstm_5_while_identity_1
lstm_5_while_identity_2
lstm_5_while_identity_3
lstm_5_while_identity_4
lstm_5_while_identity_5'
#lstm_5_while_lstm_5_strided_slice_1c
_lstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor;
7lstm_5_while_lstm_cell_5_matmul_readvariableop_resource=
9lstm_5_while_lstm_cell_5_matmul_1_readvariableop_resource<
8lstm_5_while_lstm_cell_5_biasadd_readvariableop_resource??/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp?.lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp?0lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp?
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
.lstm_5/while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp9lstm_5_while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype020
.lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp?
lstm_5/while/lstm_cell_5/MatMulMatMul7lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
lstm_5/while/lstm_cell_5/MatMul?
0lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp;lstm_5_while_lstm_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype022
0lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp?
!lstm_5/while/lstm_cell_5/MatMul_1MatMullstm_5_while_placeholder_28lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!lstm_5/while/lstm_cell_5/MatMul_1?
lstm_5/while/lstm_cell_5/addAddV2)lstm_5/while/lstm_cell_5/MatMul:product:0+lstm_5/while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_5/while/lstm_cell_5/add?
/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp:lstm_5_while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype021
/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp?
 lstm_5/while/lstm_cell_5/BiasAddBiasAdd lstm_5/while/lstm_cell_5/add:z:07lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 lstm_5/while/lstm_cell_5/BiasAdd?
lstm_5/while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2 
lstm_5/while/lstm_cell_5/Const?
(lstm_5/while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_5/while/lstm_cell_5/split/split_dim?
lstm_5/while/lstm_cell_5/splitSplit1lstm_5/while/lstm_cell_5/split/split_dim:output:0)lstm_5/while/lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2 
lstm_5/while/lstm_cell_5/split?
 lstm_5/while/lstm_cell_5/SigmoidSigmoid'lstm_5/while/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_5/while/lstm_cell_5/Sigmoid?
"lstm_5/while/lstm_cell_5/Sigmoid_1Sigmoid'lstm_5/while/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????2$
"lstm_5/while/lstm_cell_5/Sigmoid_1?
lstm_5/while/lstm_cell_5/mulMul&lstm_5/while/lstm_cell_5/Sigmoid_1:y:0lstm_5_while_placeholder_3*
T0*(
_output_shapes
:??????????2
lstm_5/while/lstm_cell_5/mul?
"lstm_5/while/lstm_cell_5/Sigmoid_2Sigmoid'lstm_5/while/lstm_cell_5/split:output:2*
T0*(
_output_shapes
:??????????2$
"lstm_5/while/lstm_cell_5/Sigmoid_2?
lstm_5/while/lstm_cell_5/mul_1Mul'lstm_5/while/lstm_cell_5/split:output:2&lstm_5/while/lstm_cell_5/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2 
lstm_5/while/lstm_cell_5/mul_1?
!lstm_5/while/lstm_cell_5/IdentityIdentity"lstm_5/while/lstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????2#
!lstm_5/while/lstm_cell_5/Identity?
"lstm_5/while/lstm_cell_5/IdentityN	IdentityN"lstm_5/while/lstm_cell_5/mul_1:z:0'lstm_5/while/lstm_cell_5/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-561821*<
_output_shapes*
(:??????????:??????????2$
"lstm_5/while/lstm_cell_5/IdentityN?
lstm_5/while/lstm_cell_5/mul_2Mul$lstm_5/while/lstm_cell_5/Sigmoid:y:0+lstm_5/while/lstm_cell_5/IdentityN:output:0*
T0*(
_output_shapes
:??????????2 
lstm_5/while/lstm_cell_5/mul_2?
lstm_5/while/lstm_cell_5/add_1AddV2 lstm_5/while/lstm_cell_5/mul:z:0"lstm_5/while/lstm_cell_5/mul_2:z:0*
T0*(
_output_shapes
:??????????2 
lstm_5/while/lstm_cell_5/add_1?
"lstm_5/while/lstm_cell_5/Sigmoid_3Sigmoid'lstm_5/while/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????2$
"lstm_5/while/lstm_cell_5/Sigmoid_3?
"lstm_5/while/lstm_cell_5/Sigmoid_4Sigmoid"lstm_5/while/lstm_cell_5/add_1:z:0*
T0*(
_output_shapes
:??????????2$
"lstm_5/while/lstm_cell_5/Sigmoid_4?
lstm_5/while/lstm_cell_5/mul_3Mul"lstm_5/while/lstm_cell_5/add_1:z:0&lstm_5/while/lstm_cell_5/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2 
lstm_5/while/lstm_cell_5/mul_3?
#lstm_5/while/lstm_cell_5/Identity_1Identity"lstm_5/while/lstm_cell_5/mul_3:z:0*
T0*(
_output_shapes
:??????????2%
#lstm_5/while/lstm_cell_5/Identity_1?
$lstm_5/while/lstm_cell_5/IdentityN_1	IdentityN"lstm_5/while/lstm_cell_5/mul_3:z:0"lstm_5/while/lstm_cell_5/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-561830*<
_output_shapes*
(:??????????:??????????2&
$lstm_5/while/lstm_cell_5/IdentityN_1?
lstm_5/while/lstm_cell_5/mul_4Mul&lstm_5/while/lstm_cell_5/Sigmoid_3:y:0-lstm_5/while/lstm_cell_5/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2 
lstm_5/while/lstm_cell_5/mul_4?
1lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_5_while_placeholder_1lstm_5_while_placeholder"lstm_5/while/lstm_cell_5/mul_4:z:0*
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
lstm_5/while/IdentityIdentitylstm_5/while/add_1:z:00^lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity?
lstm_5/while/Identity_1Identity,lstm_5_while_lstm_5_while_maximum_iterations0^lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_1?
lstm_5/while/Identity_2Identitylstm_5/while/add:z:00^lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_2?
lstm_5/while/Identity_3IdentityAlstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_3?
lstm_5/while/Identity_4Identity"lstm_5/while/lstm_cell_5/mul_4:z:00^lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_5/while/Identity_4?
lstm_5/while/Identity_5Identity"lstm_5/while/lstm_cell_5/add_1:z:00^lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
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
#lstm_5_while_lstm_5_strided_slice_1%lstm_5_while_lstm_5_strided_slice_1_0"v
8lstm_5_while_lstm_cell_5_biasadd_readvariableop_resource:lstm_5_while_lstm_cell_5_biasadd_readvariableop_resource_0"x
9lstm_5_while_lstm_cell_5_matmul_1_readvariableop_resource;lstm_5_while_lstm_cell_5_matmul_1_readvariableop_resource_0"t
7lstm_5_while_lstm_cell_5_matmul_readvariableop_resource9lstm_5_while_lstm_cell_5_matmul_readvariableop_resource_0"?
_lstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensoralstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2b
/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp2`
.lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp.lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp2d
0lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp0lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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
while_cond_563108
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_563108___redundant_placeholder04
0while_while_cond_563108___redundant_placeholder14
0while_while_cond_563108___redundant_placeholder24
0while_while_cond_563108___redundant_placeholder3
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
'__inference_lstm_6_layer_call_fn_563226

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
B__inference_lstm_6_layer_call_and_return_conditional_losses_5609972
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
?
?
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_563686

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
_gradient_op_typeCustomGradient-563677*:
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
?
,__inference_lstm_cell_6_layer_call_fn_564070

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
GPU 2J 8? *P
fKRI
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_5595212
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
?

?
lstm_5_while_cond_561777*
&lstm_5_while_lstm_5_while_loop_counter0
,lstm_5_while_lstm_5_while_maximum_iterations
lstm_5_while_placeholder
lstm_5_while_placeholder_1
lstm_5_while_placeholder_2
lstm_5_while_placeholder_3,
(lstm_5_while_less_lstm_5_strided_slice_1B
>lstm_5_while_lstm_5_while_cond_561777___redundant_placeholder0B
>lstm_5_while_lstm_5_while_cond_561777___redundant_placeholder1B
>lstm_5_while_lstm_5_while_cond_561777___redundant_placeholder2B
>lstm_5_while_lstm_5_while_cond_561777___redundant_placeholder3
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
?
-__inference_sequential_3_layer_call_fn_561236
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
H__inference_sequential_3_layer_call_and_return_conditional_losses_5612132
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
?"
?
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_559521

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
_gradient_op_typeCustomGradient-559502*:
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
_gradient_op_typeCustomGradient-559511*:
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
?
?
3__inference_time_distributed_4_layer_call_fn_563830

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
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_5611192
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
?"
?
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_558848

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
_gradient_op_typeCustomGradient-558829*<
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
_gradient_op_typeCustomGradient-558838*<
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
?
?
while_cond_562567
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_562567___redundant_placeholder04
0while_while_cond_562567___redundant_placeholder14
0while_while_cond_562567___redundant_placeholder24
0while_while_cond_562567___redundant_placeholder3
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
?
?
%sequential_3_lstm_6_while_cond_558639D
@sequential_3_lstm_6_while_sequential_3_lstm_6_while_loop_counterJ
Fsequential_3_lstm_6_while_sequential_3_lstm_6_while_maximum_iterations)
%sequential_3_lstm_6_while_placeholder+
'sequential_3_lstm_6_while_placeholder_1+
'sequential_3_lstm_6_while_placeholder_2+
'sequential_3_lstm_6_while_placeholder_3F
Bsequential_3_lstm_6_while_less_sequential_3_lstm_6_strided_slice_1\
Xsequential_3_lstm_6_while_sequential_3_lstm_6_while_cond_558639___redundant_placeholder0\
Xsequential_3_lstm_6_while_sequential_3_lstm_6_while_cond_558639___redundant_placeholder1\
Xsequential_3_lstm_6_while_sequential_3_lstm_6_while_cond_558639___redundant_placeholder2\
Xsequential_3_lstm_6_while_sequential_3_lstm_6_while_cond_558639___redundant_placeholder3&
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
?
?
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_563621

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
_gradient_op_typeCustomGradient-563610*:
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
?c
?
B__inference_lstm_5_layer_call_and_return_conditional_losses_560449

inputs.
*lstm_cell_5_matmul_readvariableop_resource0
,lstm_cell_5_matmul_1_readvariableop_resource/
+lstm_cell_5_biasadd_readvariableop_resource
identity??"lstm_cell_5/BiasAdd/ReadVariableOp?!lstm_cell_5/MatMul/ReadVariableOp?#lstm_cell_5/MatMul_1/ReadVariableOp?whileD
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
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_5/MatMul/ReadVariableOp?
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/MatMul?
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_5/MatMul_1/ReadVariableOp?
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/MatMul_1?
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/add?
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_5/BiasAdd/ReadVariableOp?
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/BiasAddh
lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/Const|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dim?
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_5/split?
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid?
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_1?
lstm_cell_5/mulMullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul?
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_2?
lstm_cell_5/mul_1Mullstm_cell_5/split:output:2lstm_cell_5/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_1?
lstm_cell_5/IdentityIdentitylstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Identity?
lstm_cell_5/IdentityN	IdentityNlstm_cell_5/mul_1:z:0lstm_cell_5/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-560334*<
_output_shapes*
(:??????????:??????????2
lstm_cell_5/IdentityN?
lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_2?
lstm_cell_5/add_1AddV2lstm_cell_5/mul:z:0lstm_cell_5/mul_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/add_1?
lstm_cell_5/Sigmoid_3Sigmoidlstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_3?
lstm_cell_5/Sigmoid_4Sigmoidlstm_cell_5/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Sigmoid_4?
lstm_cell_5/mul_3Mullstm_cell_5/add_1:z:0lstm_cell_5/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_3?
lstm_cell_5/Identity_1Identitylstm_cell_5/mul_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/Identity_1?
lstm_cell_5/IdentityN_1	IdentityNlstm_cell_5/mul_3:z:0lstm_cell_5/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-560343*<
_output_shapes*
(:??????????:??????????2
lstm_cell_5/IdentityN_1?
lstm_cell_5/mul_4Mullstm_cell_5/Sigmoid_3:y:0 lstm_cell_5/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_5/mul_4?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
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
while_body_560354*
condR
while_cond_560353*M
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
IdentityIdentitytranspose_1:y:0#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????:::2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_sequential_3_layer_call_and_return_conditional_losses_561178
lstm_5_input
lstm_5_561149
lstm_5_561151
lstm_5_561153
lstm_6_561156
lstm_6_561158
lstm_6_561160
time_distributed_3_561163
time_distributed_3_561165
time_distributed_4_561170
time_distributed_4_561172
identity??lstm_5/StatefulPartitionedCall?lstm_6/StatefulPartitionedCall?*time_distributed_3/StatefulPartitionedCall?*time_distributed_4/StatefulPartitionedCall?
lstm_5/StatefulPartitionedCallStatefulPartitionedCalllstm_5_inputlstm_5_561149lstm_5_561151lstm_5_561153*
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
B__inference_lstm_5_layer_call_and_return_conditional_losses_5606222 
lstm_5/StatefulPartitionedCall?
lstm_6/StatefulPartitionedCallStatefulPartitionedCall'lstm_5/StatefulPartitionedCall:output:0lstm_6_561156lstm_6_561158lstm_6_561160*
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
B__inference_lstm_6_layer_call_and_return_conditional_losses_5609972 
lstm_6/StatefulPartitionedCall?
*time_distributed_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_6/StatefulPartitionedCall:output:0time_distributed_3_561163time_distributed_3_561165*
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
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_5610662,
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
*time_distributed_4/StatefulPartitionedCallStatefulPartitionedCall3time_distributed_3/StatefulPartitionedCall:output:0time_distributed_4_561170time_distributed_4_561172*
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
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_5611192,
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
?"
?
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_564036

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
_gradient_op_typeCustomGradient-564017*:
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
_gradient_op_typeCustomGradient-564026*:
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
?	
?
-__inference_sequential_3_layer_call_fn_561293
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
H__inference_sequential_3_layer_call_and_return_conditional_losses_5612702
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
?K
?
while_body_562936
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_6_matmul_readvariableop_resource_08
4while_lstm_cell_6_matmul_1_readvariableop_resource_07
3while_lstm_cell_6_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_6_matmul_readvariableop_resource6
2while_lstm_cell_6_matmul_1_readvariableop_resource5
1while_lstm_cell_6_biasadd_readvariableop_resource??(while/lstm_cell_6/BiasAdd/ReadVariableOp?'while/lstm_cell_6/MatMul/ReadVariableOp?)while/lstm_cell_6/MatMul_1/ReadVariableOp?
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
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'while/lstm_cell_6/MatMul/ReadVariableOp?
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/MatMul?
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02+
)while/lstm_cell_6/MatMul_1/ReadVariableOp?
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/MatMul_1?
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/add?
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_6/BiasAdd/ReadVariableOp?
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/BiasAddt
while/lstm_cell_6/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_6/Const?
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_6/split/split_dim?
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
while/lstm_cell_6/split?
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Sigmoid?
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Sigmoid_1?
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/mul?
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Sigmoid_2?
while/lstm_cell_6/mul_1Mul while/lstm_cell_6/split:output:2while/lstm_cell_6/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/mul_1?
while/lstm_cell_6/IdentityIdentitywhile/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Identity?
while/lstm_cell_6/IdentityN	IdentityNwhile/lstm_cell_6/mul_1:z:0 while/lstm_cell_6/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-562979*:
_output_shapes(
&:?????????@:?????????@2
while/lstm_cell_6/IdentityN?
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid:y:0$while/lstm_cell_6/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/mul_2?
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/add_1?
while/lstm_cell_6/Sigmoid_3Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Sigmoid_3?
while/lstm_cell_6/Sigmoid_4Sigmoidwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Sigmoid_4?
while/lstm_cell_6/mul_3Mulwhile/lstm_cell_6/add_1:z:0while/lstm_cell_6/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/mul_3?
while/lstm_cell_6/Identity_1Identitywhile/lstm_cell_6/mul_3:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Identity_1?
while/lstm_cell_6/IdentityN_1	IdentityNwhile/lstm_cell_6/mul_3:z:0while/lstm_cell_6/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-562988*:
_output_shapes(
&:?????????@:?????????@2
while/lstm_cell_6/IdentityN_1?
while/lstm_cell_6/mul_4Mulwhile/lstm_cell_6/Sigmoid_3:y:0&while/lstm_cell_6/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/mul_4?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_6/mul_4:z:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_6/mul_4:z:0)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????@:?????????@: : :::2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
'__inference_lstm_6_layer_call_fn_563583
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
B__inference_lstm_6_layer_call_and_return_conditional_losses_5598842
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
?l
?
%sequential_3_lstm_6_while_body_558640D
@sequential_3_lstm_6_while_sequential_3_lstm_6_while_loop_counterJ
Fsequential_3_lstm_6_while_sequential_3_lstm_6_while_maximum_iterations)
%sequential_3_lstm_6_while_placeholder+
'sequential_3_lstm_6_while_placeholder_1+
'sequential_3_lstm_6_while_placeholder_2+
'sequential_3_lstm_6_while_placeholder_3C
?sequential_3_lstm_6_while_sequential_3_lstm_6_strided_slice_1_0
{sequential_3_lstm_6_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_6_tensorarrayunstack_tensorlistfromtensor_0J
Fsequential_3_lstm_6_while_lstm_cell_6_matmul_readvariableop_resource_0L
Hsequential_3_lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0K
Gsequential_3_lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource_0&
"sequential_3_lstm_6_while_identity(
$sequential_3_lstm_6_while_identity_1(
$sequential_3_lstm_6_while_identity_2(
$sequential_3_lstm_6_while_identity_3(
$sequential_3_lstm_6_while_identity_4(
$sequential_3_lstm_6_while_identity_5A
=sequential_3_lstm_6_while_sequential_3_lstm_6_strided_slice_1}
ysequential_3_lstm_6_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_6_tensorarrayunstack_tensorlistfromtensorH
Dsequential_3_lstm_6_while_lstm_cell_6_matmul_readvariableop_resourceJ
Fsequential_3_lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resourceI
Esequential_3_lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource??<sequential_3/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp?;sequential_3/lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp?=sequential_3/lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp?
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
;sequential_3/lstm_6/while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOpFsequential_3_lstm_6_while_lstm_cell_6_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02=
;sequential_3/lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp?
,sequential_3/lstm_6/while/lstm_cell_6/MatMulMatMulDsequential_3/lstm_6/while/TensorArrayV2Read/TensorListGetItem:item:0Csequential_3/lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2.
,sequential_3/lstm_6/while/lstm_cell_6/MatMul?
=sequential_3/lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOpHsequential_3_lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02?
=sequential_3/lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp?
.sequential_3/lstm_6/while/lstm_cell_6/MatMul_1MatMul'sequential_3_lstm_6_while_placeholder_2Esequential_3/lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????20
.sequential_3/lstm_6/while/lstm_cell_6/MatMul_1?
)sequential_3/lstm_6/while/lstm_cell_6/addAddV26sequential_3/lstm_6/while/lstm_cell_6/MatMul:product:08sequential_3/lstm_6/while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2+
)sequential_3/lstm_6/while/lstm_cell_6/add?
<sequential_3/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOpGsequential_3_lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02>
<sequential_3/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp?
-sequential_3/lstm_6/while/lstm_cell_6/BiasAddBiasAdd-sequential_3/lstm_6/while/lstm_cell_6/add:z:0Dsequential_3/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2/
-sequential_3/lstm_6/while/lstm_cell_6/BiasAdd?
+sequential_3/lstm_6/while/lstm_cell_6/ConstConst*
_output_shapes
: *
dtype0*
value	B :2-
+sequential_3/lstm_6/while/lstm_cell_6/Const?
5sequential_3/lstm_6/while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential_3/lstm_6/while/lstm_cell_6/split/split_dim?
+sequential_3/lstm_6/while/lstm_cell_6/splitSplit>sequential_3/lstm_6/while/lstm_cell_6/split/split_dim:output:06sequential_3/lstm_6/while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2-
+sequential_3/lstm_6/while/lstm_cell_6/split?
-sequential_3/lstm_6/while/lstm_cell_6/SigmoidSigmoid4sequential_3/lstm_6/while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????@2/
-sequential_3/lstm_6/while/lstm_cell_6/Sigmoid?
/sequential_3/lstm_6/while/lstm_cell_6/Sigmoid_1Sigmoid4sequential_3/lstm_6/while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????@21
/sequential_3/lstm_6/while/lstm_cell_6/Sigmoid_1?
)sequential_3/lstm_6/while/lstm_cell_6/mulMul3sequential_3/lstm_6/while/lstm_cell_6/Sigmoid_1:y:0'sequential_3_lstm_6_while_placeholder_3*
T0*'
_output_shapes
:?????????@2+
)sequential_3/lstm_6/while/lstm_cell_6/mul?
/sequential_3/lstm_6/while/lstm_cell_6/Sigmoid_2Sigmoid4sequential_3/lstm_6/while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????@21
/sequential_3/lstm_6/while/lstm_cell_6/Sigmoid_2?
+sequential_3/lstm_6/while/lstm_cell_6/mul_1Mul4sequential_3/lstm_6/while/lstm_cell_6/split:output:23sequential_3/lstm_6/while/lstm_cell_6/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2-
+sequential_3/lstm_6/while/lstm_cell_6/mul_1?
.sequential_3/lstm_6/while/lstm_cell_6/IdentityIdentity/sequential_3/lstm_6/while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????@20
.sequential_3/lstm_6/while/lstm_cell_6/Identity?
/sequential_3/lstm_6/while/lstm_cell_6/IdentityN	IdentityN/sequential_3/lstm_6/while/lstm_cell_6/mul_1:z:04sequential_3/lstm_6/while/lstm_cell_6/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-558683*:
_output_shapes(
&:?????????@:?????????@21
/sequential_3/lstm_6/while/lstm_cell_6/IdentityN?
+sequential_3/lstm_6/while/lstm_cell_6/mul_2Mul1sequential_3/lstm_6/while/lstm_cell_6/Sigmoid:y:08sequential_3/lstm_6/while/lstm_cell_6/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2-
+sequential_3/lstm_6/while/lstm_cell_6/mul_2?
+sequential_3/lstm_6/while/lstm_cell_6/add_1AddV2-sequential_3/lstm_6/while/lstm_cell_6/mul:z:0/sequential_3/lstm_6/while/lstm_cell_6/mul_2:z:0*
T0*'
_output_shapes
:?????????@2-
+sequential_3/lstm_6/while/lstm_cell_6/add_1?
/sequential_3/lstm_6/while/lstm_cell_6/Sigmoid_3Sigmoid4sequential_3/lstm_6/while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????@21
/sequential_3/lstm_6/while/lstm_cell_6/Sigmoid_3?
/sequential_3/lstm_6/while/lstm_cell_6/Sigmoid_4Sigmoid/sequential_3/lstm_6/while/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????@21
/sequential_3/lstm_6/while/lstm_cell_6/Sigmoid_4?
+sequential_3/lstm_6/while/lstm_cell_6/mul_3Mul/sequential_3/lstm_6/while/lstm_cell_6/add_1:z:03sequential_3/lstm_6/while/lstm_cell_6/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2-
+sequential_3/lstm_6/while/lstm_cell_6/mul_3?
0sequential_3/lstm_6/while/lstm_cell_6/Identity_1Identity/sequential_3/lstm_6/while/lstm_cell_6/mul_3:z:0*
T0*'
_output_shapes
:?????????@22
0sequential_3/lstm_6/while/lstm_cell_6/Identity_1?
1sequential_3/lstm_6/while/lstm_cell_6/IdentityN_1	IdentityN/sequential_3/lstm_6/while/lstm_cell_6/mul_3:z:0/sequential_3/lstm_6/while/lstm_cell_6/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-558692*:
_output_shapes(
&:?????????@:?????????@23
1sequential_3/lstm_6/while/lstm_cell_6/IdentityN_1?
+sequential_3/lstm_6/while/lstm_cell_6/mul_4Mul3sequential_3/lstm_6/while/lstm_cell_6/Sigmoid_3:y:0:sequential_3/lstm_6/while/lstm_cell_6/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2-
+sequential_3/lstm_6/while/lstm_cell_6/mul_4?
>sequential_3/lstm_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_3_lstm_6_while_placeholder_1%sequential_3_lstm_6_while_placeholder/sequential_3/lstm_6/while/lstm_cell_6/mul_4:z:0*
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
"sequential_3/lstm_6/while/IdentityIdentity#sequential_3/lstm_6/while/add_1:z:0=^sequential_3/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp<^sequential_3/lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp>^sequential_3/lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2$
"sequential_3/lstm_6/while/Identity?
$sequential_3/lstm_6/while/Identity_1IdentityFsequential_3_lstm_6_while_sequential_3_lstm_6_while_maximum_iterations=^sequential_3/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp<^sequential_3/lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp>^sequential_3/lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_3/lstm_6/while/Identity_1?
$sequential_3/lstm_6/while/Identity_2Identity!sequential_3/lstm_6/while/add:z:0=^sequential_3/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp<^sequential_3/lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp>^sequential_3/lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_3/lstm_6/while/Identity_2?
$sequential_3/lstm_6/while/Identity_3IdentityNsequential_3/lstm_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0=^sequential_3/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp<^sequential_3/lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp>^sequential_3/lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_3/lstm_6/while/Identity_3?
$sequential_3/lstm_6/while/Identity_4Identity/sequential_3/lstm_6/while/lstm_cell_6/mul_4:z:0=^sequential_3/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp<^sequential_3/lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp>^sequential_3/lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2&
$sequential_3/lstm_6/while/Identity_4?
$sequential_3/lstm_6/while/Identity_5Identity/sequential_3/lstm_6/while/lstm_cell_6/add_1:z:0=^sequential_3/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp<^sequential_3/lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp>^sequential_3/lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp*
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
Esequential_3_lstm_6_while_lstm_cell_6_biasadd_readvariableop_resourceGsequential_3_lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource_0"?
Fsequential_3_lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resourceHsequential_3_lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0"?
Dsequential_3_lstm_6_while_lstm_cell_6_matmul_readvariableop_resourceFsequential_3_lstm_6_while_lstm_cell_6_matmul_readvariableop_resource_0"?
=sequential_3_lstm_6_while_sequential_3_lstm_6_strided_slice_1?sequential_3_lstm_6_while_sequential_3_lstm_6_strided_slice_1_0"?
ysequential_3_lstm_6_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_6_tensorarrayunstack_tensorlistfromtensor{sequential_3_lstm_6_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_6_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????@:?????????@: : :::2|
<sequential_3/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp<sequential_3/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp2z
;sequential_3/lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp;sequential_3/lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp2~
=sequential_3/lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp=sequential_3/lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
while_cond_560353
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_560353___redundant_placeholder04
0while_while_cond_560353___redundant_placeholder14
0while_while_cond_560353___redundant_placeholder24
0while_while_cond_560353___redundant_placeholder3
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
while_cond_559184
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_559184___redundant_placeholder04
0while_while_cond_559184___redundant_placeholder14
0while_while_cond_559184___redundant_placeholder24
0while_while_cond_559184___redundant_placeholder3
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
?
?
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_563648

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
_gradient_op_typeCustomGradient-563637*:
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
?K
?
while_body_563109
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_6_matmul_readvariableop_resource_08
4while_lstm_cell_6_matmul_1_readvariableop_resource_07
3while_lstm_cell_6_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_6_matmul_readvariableop_resource6
2while_lstm_cell_6_matmul_1_readvariableop_resource5
1while_lstm_cell_6_biasadd_readvariableop_resource??(while/lstm_cell_6/BiasAdd/ReadVariableOp?'while/lstm_cell_6/MatMul/ReadVariableOp?)while/lstm_cell_6/MatMul_1/ReadVariableOp?
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
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'while/lstm_cell_6/MatMul/ReadVariableOp?
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/MatMul?
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02+
)while/lstm_cell_6/MatMul_1/ReadVariableOp?
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/MatMul_1?
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/add?
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_6/BiasAdd/ReadVariableOp?
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/BiasAddt
while/lstm_cell_6/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_6/Const?
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_6/split/split_dim?
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
while/lstm_cell_6/split?
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Sigmoid?
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Sigmoid_1?
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/mul?
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Sigmoid_2?
while/lstm_cell_6/mul_1Mul while/lstm_cell_6/split:output:2while/lstm_cell_6/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/mul_1?
while/lstm_cell_6/IdentityIdentitywhile/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Identity?
while/lstm_cell_6/IdentityN	IdentityNwhile/lstm_cell_6/mul_1:z:0 while/lstm_cell_6/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-563152*:
_output_shapes(
&:?????????@:?????????@2
while/lstm_cell_6/IdentityN?
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid:y:0$while/lstm_cell_6/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/mul_2?
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/add_1?
while/lstm_cell_6/Sigmoid_3Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Sigmoid_3?
while/lstm_cell_6/Sigmoid_4Sigmoidwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Sigmoid_4?
while/lstm_cell_6/mul_3Mulwhile/lstm_cell_6/add_1:z:0while/lstm_cell_6/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/mul_3?
while/lstm_cell_6/Identity_1Identitywhile/lstm_cell_6/mul_3:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Identity_1?
while/lstm_cell_6/IdentityN_1	IdentityNwhile/lstm_cell_6/mul_3:z:0while/lstm_cell_6/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-563161*:
_output_shapes(
&:?????????@:?????????@2
while/lstm_cell_6/IdentityN_1?
while/lstm_cell_6/mul_4Mulwhile/lstm_cell_6/Sigmoid_3:y:0&while/lstm_cell_6/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/mul_4?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_6/mul_4:z:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_6/mul_4:z:0)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????@:?????????@: : :::2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
?W
?	
lstm_6_while_body_561947*
&lstm_6_while_lstm_6_while_loop_counter0
,lstm_6_while_lstm_6_while_maximum_iterations
lstm_6_while_placeholder
lstm_6_while_placeholder_1
lstm_6_while_placeholder_2
lstm_6_while_placeholder_3)
%lstm_6_while_lstm_6_strided_slice_1_0e
alstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0=
9lstm_6_while_lstm_cell_6_matmul_readvariableop_resource_0?
;lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0>
:lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource_0
lstm_6_while_identity
lstm_6_while_identity_1
lstm_6_while_identity_2
lstm_6_while_identity_3
lstm_6_while_identity_4
lstm_6_while_identity_5'
#lstm_6_while_lstm_6_strided_slice_1c
_lstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor;
7lstm_6_while_lstm_cell_6_matmul_readvariableop_resource=
9lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource<
8lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource??/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp?.lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp?0lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp?
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
.lstm_6/while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp9lstm_6_while_lstm_cell_6_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype020
.lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp?
lstm_6/while/lstm_cell_6/MatMulMatMul7lstm_6/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
lstm_6/while/lstm_cell_6/MatMul?
0lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp;lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype022
0lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp?
!lstm_6/while/lstm_cell_6/MatMul_1MatMullstm_6_while_placeholder_28lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!lstm_6/while/lstm_cell_6/MatMul_1?
lstm_6/while/lstm_cell_6/addAddV2)lstm_6/while/lstm_cell_6/MatMul:product:0+lstm_6/while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_6/while/lstm_cell_6/add?
/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp:lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype021
/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp?
 lstm_6/while/lstm_cell_6/BiasAddBiasAdd lstm_6/while/lstm_cell_6/add:z:07lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 lstm_6/while/lstm_cell_6/BiasAdd?
lstm_6/while/lstm_cell_6/ConstConst*
_output_shapes
: *
dtype0*
value	B :2 
lstm_6/while/lstm_cell_6/Const?
(lstm_6/while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_6/while/lstm_cell_6/split/split_dim?
lstm_6/while/lstm_cell_6/splitSplit1lstm_6/while/lstm_cell_6/split/split_dim:output:0)lstm_6/while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2 
lstm_6/while/lstm_cell_6/split?
 lstm_6/while/lstm_cell_6/SigmoidSigmoid'lstm_6/while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????@2"
 lstm_6/while/lstm_cell_6/Sigmoid?
"lstm_6/while/lstm_cell_6/Sigmoid_1Sigmoid'lstm_6/while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????@2$
"lstm_6/while/lstm_cell_6/Sigmoid_1?
lstm_6/while/lstm_cell_6/mulMul&lstm_6/while/lstm_cell_6/Sigmoid_1:y:0lstm_6_while_placeholder_3*
T0*'
_output_shapes
:?????????@2
lstm_6/while/lstm_cell_6/mul?
"lstm_6/while/lstm_cell_6/Sigmoid_2Sigmoid'lstm_6/while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????@2$
"lstm_6/while/lstm_cell_6/Sigmoid_2?
lstm_6/while/lstm_cell_6/mul_1Mul'lstm_6/while/lstm_cell_6/split:output:2&lstm_6/while/lstm_cell_6/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2 
lstm_6/while/lstm_cell_6/mul_1?
!lstm_6/while/lstm_cell_6/IdentityIdentity"lstm_6/while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????@2#
!lstm_6/while/lstm_cell_6/Identity?
"lstm_6/while/lstm_cell_6/IdentityN	IdentityN"lstm_6/while/lstm_cell_6/mul_1:z:0'lstm_6/while/lstm_cell_6/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-561990*:
_output_shapes(
&:?????????@:?????????@2$
"lstm_6/while/lstm_cell_6/IdentityN?
lstm_6/while/lstm_cell_6/mul_2Mul$lstm_6/while/lstm_cell_6/Sigmoid:y:0+lstm_6/while/lstm_cell_6/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2 
lstm_6/while/lstm_cell_6/mul_2?
lstm_6/while/lstm_cell_6/add_1AddV2 lstm_6/while/lstm_cell_6/mul:z:0"lstm_6/while/lstm_cell_6/mul_2:z:0*
T0*'
_output_shapes
:?????????@2 
lstm_6/while/lstm_cell_6/add_1?
"lstm_6/while/lstm_cell_6/Sigmoid_3Sigmoid'lstm_6/while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????@2$
"lstm_6/while/lstm_cell_6/Sigmoid_3?
"lstm_6/while/lstm_cell_6/Sigmoid_4Sigmoid"lstm_6/while/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????@2$
"lstm_6/while/lstm_cell_6/Sigmoid_4?
lstm_6/while/lstm_cell_6/mul_3Mul"lstm_6/while/lstm_cell_6/add_1:z:0&lstm_6/while/lstm_cell_6/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2 
lstm_6/while/lstm_cell_6/mul_3?
#lstm_6/while/lstm_cell_6/Identity_1Identity"lstm_6/while/lstm_cell_6/mul_3:z:0*
T0*'
_output_shapes
:?????????@2%
#lstm_6/while/lstm_cell_6/Identity_1?
$lstm_6/while/lstm_cell_6/IdentityN_1	IdentityN"lstm_6/while/lstm_cell_6/mul_3:z:0"lstm_6/while/lstm_cell_6/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-561999*:
_output_shapes(
&:?????????@:?????????@2&
$lstm_6/while/lstm_cell_6/IdentityN_1?
lstm_6/while/lstm_cell_6/mul_4Mul&lstm_6/while/lstm_cell_6/Sigmoid_3:y:0-lstm_6/while/lstm_cell_6/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2 
lstm_6/while/lstm_cell_6/mul_4?
1lstm_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_6_while_placeholder_1lstm_6_while_placeholder"lstm_6/while/lstm_cell_6/mul_4:z:0*
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
lstm_6/while/IdentityIdentitylstm_6/while/add_1:z:00^lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp/^lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp1^lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity?
lstm_6/while/Identity_1Identity,lstm_6_while_lstm_6_while_maximum_iterations0^lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp/^lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp1^lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_1?
lstm_6/while/Identity_2Identitylstm_6/while/add:z:00^lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp/^lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp1^lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_2?
lstm_6/while/Identity_3IdentityAlstm_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp/^lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp1^lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_3?
lstm_6/while/Identity_4Identity"lstm_6/while/lstm_cell_6/mul_4:z:00^lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp/^lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp1^lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
lstm_6/while/Identity_4?
lstm_6/while/Identity_5Identity"lstm_6/while/lstm_cell_6/add_1:z:00^lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp/^lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp1^lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp*
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
#lstm_6_while_lstm_6_strided_slice_1%lstm_6_while_lstm_6_strided_slice_1_0"v
8lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource:lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource_0"x
9lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource;lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0"t
7lstm_6_while_lstm_cell_6_matmul_readvariableop_resource9lstm_6_while_lstm_cell_6_matmul_readvariableop_resource_0"?
_lstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensoralstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????@:?????????@: : :::2b
/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp2`
.lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp.lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp2d
0lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp0lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
C__inference_dense_8_layer_call_and_return_conditional_losses_564086

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
_gradient_op_typeCustomGradient-564079*:
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
?
?
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_561066

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
_gradient_op_typeCustomGradient-561057*:
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
?W
?	
lstm_5_while_body_561406*
&lstm_5_while_lstm_5_while_loop_counter0
,lstm_5_while_lstm_5_while_maximum_iterations
lstm_5_while_placeholder
lstm_5_while_placeholder_1
lstm_5_while_placeholder_2
lstm_5_while_placeholder_3)
%lstm_5_while_lstm_5_strided_slice_1_0e
alstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0=
9lstm_5_while_lstm_cell_5_matmul_readvariableop_resource_0?
;lstm_5_while_lstm_cell_5_matmul_1_readvariableop_resource_0>
:lstm_5_while_lstm_cell_5_biasadd_readvariableop_resource_0
lstm_5_while_identity
lstm_5_while_identity_1
lstm_5_while_identity_2
lstm_5_while_identity_3
lstm_5_while_identity_4
lstm_5_while_identity_5'
#lstm_5_while_lstm_5_strided_slice_1c
_lstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor;
7lstm_5_while_lstm_cell_5_matmul_readvariableop_resource=
9lstm_5_while_lstm_cell_5_matmul_1_readvariableop_resource<
8lstm_5_while_lstm_cell_5_biasadd_readvariableop_resource??/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp?.lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp?0lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp?
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
.lstm_5/while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp9lstm_5_while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype020
.lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp?
lstm_5/while/lstm_cell_5/MatMulMatMul7lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
lstm_5/while/lstm_cell_5/MatMul?
0lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp;lstm_5_while_lstm_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype022
0lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp?
!lstm_5/while/lstm_cell_5/MatMul_1MatMullstm_5_while_placeholder_28lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!lstm_5/while/lstm_cell_5/MatMul_1?
lstm_5/while/lstm_cell_5/addAddV2)lstm_5/while/lstm_cell_5/MatMul:product:0+lstm_5/while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_5/while/lstm_cell_5/add?
/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp:lstm_5_while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype021
/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp?
 lstm_5/while/lstm_cell_5/BiasAddBiasAdd lstm_5/while/lstm_cell_5/add:z:07lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 lstm_5/while/lstm_cell_5/BiasAdd?
lstm_5/while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2 
lstm_5/while/lstm_cell_5/Const?
(lstm_5/while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_5/while/lstm_cell_5/split/split_dim?
lstm_5/while/lstm_cell_5/splitSplit1lstm_5/while/lstm_cell_5/split/split_dim:output:0)lstm_5/while/lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2 
lstm_5/while/lstm_cell_5/split?
 lstm_5/while/lstm_cell_5/SigmoidSigmoid'lstm_5/while/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_5/while/lstm_cell_5/Sigmoid?
"lstm_5/while/lstm_cell_5/Sigmoid_1Sigmoid'lstm_5/while/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????2$
"lstm_5/while/lstm_cell_5/Sigmoid_1?
lstm_5/while/lstm_cell_5/mulMul&lstm_5/while/lstm_cell_5/Sigmoid_1:y:0lstm_5_while_placeholder_3*
T0*(
_output_shapes
:??????????2
lstm_5/while/lstm_cell_5/mul?
"lstm_5/while/lstm_cell_5/Sigmoid_2Sigmoid'lstm_5/while/lstm_cell_5/split:output:2*
T0*(
_output_shapes
:??????????2$
"lstm_5/while/lstm_cell_5/Sigmoid_2?
lstm_5/while/lstm_cell_5/mul_1Mul'lstm_5/while/lstm_cell_5/split:output:2&lstm_5/while/lstm_cell_5/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2 
lstm_5/while/lstm_cell_5/mul_1?
!lstm_5/while/lstm_cell_5/IdentityIdentity"lstm_5/while/lstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????2#
!lstm_5/while/lstm_cell_5/Identity?
"lstm_5/while/lstm_cell_5/IdentityN	IdentityN"lstm_5/while/lstm_cell_5/mul_1:z:0'lstm_5/while/lstm_cell_5/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-561449*<
_output_shapes*
(:??????????:??????????2$
"lstm_5/while/lstm_cell_5/IdentityN?
lstm_5/while/lstm_cell_5/mul_2Mul$lstm_5/while/lstm_cell_5/Sigmoid:y:0+lstm_5/while/lstm_cell_5/IdentityN:output:0*
T0*(
_output_shapes
:??????????2 
lstm_5/while/lstm_cell_5/mul_2?
lstm_5/while/lstm_cell_5/add_1AddV2 lstm_5/while/lstm_cell_5/mul:z:0"lstm_5/while/lstm_cell_5/mul_2:z:0*
T0*(
_output_shapes
:??????????2 
lstm_5/while/lstm_cell_5/add_1?
"lstm_5/while/lstm_cell_5/Sigmoid_3Sigmoid'lstm_5/while/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????2$
"lstm_5/while/lstm_cell_5/Sigmoid_3?
"lstm_5/while/lstm_cell_5/Sigmoid_4Sigmoid"lstm_5/while/lstm_cell_5/add_1:z:0*
T0*(
_output_shapes
:??????????2$
"lstm_5/while/lstm_cell_5/Sigmoid_4?
lstm_5/while/lstm_cell_5/mul_3Mul"lstm_5/while/lstm_cell_5/add_1:z:0&lstm_5/while/lstm_cell_5/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2 
lstm_5/while/lstm_cell_5/mul_3?
#lstm_5/while/lstm_cell_5/Identity_1Identity"lstm_5/while/lstm_cell_5/mul_3:z:0*
T0*(
_output_shapes
:??????????2%
#lstm_5/while/lstm_cell_5/Identity_1?
$lstm_5/while/lstm_cell_5/IdentityN_1	IdentityN"lstm_5/while/lstm_cell_5/mul_3:z:0"lstm_5/while/lstm_cell_5/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-561458*<
_output_shapes*
(:??????????:??????????2&
$lstm_5/while/lstm_cell_5/IdentityN_1?
lstm_5/while/lstm_cell_5/mul_4Mul&lstm_5/while/lstm_cell_5/Sigmoid_3:y:0-lstm_5/while/lstm_cell_5/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2 
lstm_5/while/lstm_cell_5/mul_4?
1lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_5_while_placeholder_1lstm_5_while_placeholder"lstm_5/while/lstm_cell_5/mul_4:z:0*
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
lstm_5/while/IdentityIdentitylstm_5/while/add_1:z:00^lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity?
lstm_5/while/Identity_1Identity,lstm_5_while_lstm_5_while_maximum_iterations0^lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_1?
lstm_5/while/Identity_2Identitylstm_5/while/add:z:00^lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_2?
lstm_5/while/Identity_3IdentityAlstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_3?
lstm_5/while/Identity_4Identity"lstm_5/while/lstm_cell_5/mul_4:z:00^lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_5/while/Identity_4?
lstm_5/while/Identity_5Identity"lstm_5/while/lstm_cell_5/add_1:z:00^lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp/^lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp1^lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*
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
#lstm_5_while_lstm_5_strided_slice_1%lstm_5_while_lstm_5_strided_slice_1_0"v
8lstm_5_while_lstm_cell_5_biasadd_readvariableop_resource:lstm_5_while_lstm_cell_5_biasadd_readvariableop_resource_0"x
9lstm_5_while_lstm_cell_5_matmul_1_readvariableop_resource;lstm_5_while_lstm_cell_5_matmul_1_readvariableop_resource_0"t
7lstm_5_while_lstm_cell_5_matmul_readvariableop_resource9lstm_5_while_lstm_cell_5_matmul_readvariableop_resource_0"?
_lstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensoralstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2b
/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp/lstm_5/while/lstm_cell_5/BiasAdd/ReadVariableOp2`
.lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp.lstm_5/while/lstm_cell_5/MatMul/ReadVariableOp2d
0lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp0lstm_5/while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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
'__inference_lstm_5_layer_call_fn_562858

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
B__inference_lstm_5_layer_call_and_return_conditional_losses_5606222
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
?K
?
while_body_560729
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_6_matmul_readvariableop_resource_08
4while_lstm_cell_6_matmul_1_readvariableop_resource_07
3while_lstm_cell_6_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_6_matmul_readvariableop_resource6
2while_lstm_cell_6_matmul_1_readvariableop_resource5
1while_lstm_cell_6_biasadd_readvariableop_resource??(while/lstm_cell_6/BiasAdd/ReadVariableOp?'while/lstm_cell_6/MatMul/ReadVariableOp?)while/lstm_cell_6/MatMul_1/ReadVariableOp?
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
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'while/lstm_cell_6/MatMul/ReadVariableOp?
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/MatMul?
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02+
)while/lstm_cell_6/MatMul_1/ReadVariableOp?
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/MatMul_1?
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/add?
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_6/BiasAdd/ReadVariableOp?
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/BiasAddt
while/lstm_cell_6/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_6/Const?
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_6/split/split_dim?
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????@:?????????@:?????????@:?????????@*
	num_split2
while/lstm_cell_6/split?
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Sigmoid?
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Sigmoid_1?
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/mul?
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Sigmoid_2?
while/lstm_cell_6/mul_1Mul while/lstm_cell_6/split:output:2while/lstm_cell_6/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/mul_1?
while/lstm_cell_6/IdentityIdentitywhile/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Identity?
while/lstm_cell_6/IdentityN	IdentityNwhile/lstm_cell_6/mul_1:z:0 while/lstm_cell_6/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-560772*:
_output_shapes(
&:?????????@:?????????@2
while/lstm_cell_6/IdentityN?
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid:y:0$while/lstm_cell_6/IdentityN:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/mul_2?
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_2:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/add_1?
while/lstm_cell_6/Sigmoid_3Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Sigmoid_3?
while/lstm_cell_6/Sigmoid_4Sigmoidwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Sigmoid_4?
while/lstm_cell_6/mul_3Mulwhile/lstm_cell_6/add_1:z:0while/lstm_cell_6/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/mul_3?
while/lstm_cell_6/Identity_1Identitywhile/lstm_cell_6/mul_3:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/Identity_1?
while/lstm_cell_6/IdentityN_1	IdentityNwhile/lstm_cell_6/mul_3:z:0while/lstm_cell_6/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-560781*:
_output_shapes(
&:?????????@:?????????@2
while/lstm_cell_6/IdentityN_1?
while/lstm_cell_6/mul_4Mulwhile/lstm_cell_6/Sigmoid_3:y:0&while/lstm_cell_6/IdentityN_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell_6/mul_4?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_6/mul_4:z:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_6/mul_4:z:0)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????@:?????????@: : :::2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
'__inference_lstm_5_layer_call_fn_562479
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
B__inference_lstm_5_layer_call_and_return_conditional_losses_5592542
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
?
?
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_563798

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
?K
?
while_body_562200
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_lstm_cell_5_matmul_readvariableop_resource_08
4while_lstm_cell_5_matmul_1_readvariableop_resource_07
3while_lstm_cell_5_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_lstm_cell_5_matmul_readvariableop_resource6
2while_lstm_cell_5_matmul_1_readvariableop_resource5
1while_lstm_cell_5_biasadd_readvariableop_resource??(while/lstm_cell_5/BiasAdd/ReadVariableOp?'while/lstm_cell_5/MatMul/ReadVariableOp?)while/lstm_cell_5/MatMul_1/ReadVariableOp?
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
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_5/MatMul/ReadVariableOp?
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/MatMul?
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_5/MatMul_1/ReadVariableOp?
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/MatMul_1?
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/add?
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_5/BiasAdd/ReadVariableOp?
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/BiasAddt
while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_5/Const?
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dim?
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_5/split?
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid?
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_1?
while/lstm_cell_5/mulMulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul?
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_2?
while/lstm_cell_5/mul_1Mul while/lstm_cell_5/split:output:2while/lstm_cell_5/Sigmoid_2:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_1?
while/lstm_cell_5/IdentityIdentitywhile/lstm_cell_5/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Identity?
while/lstm_cell_5/IdentityN	IdentityNwhile/lstm_cell_5/mul_1:z:0 while/lstm_cell_5/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-562243*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell_5/IdentityN?
while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid:y:0$while/lstm_cell_5/IdentityN:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_2?
while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul:z:0while/lstm_cell_5/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/add_1?
while/lstm_cell_5/Sigmoid_3Sigmoid while/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_3?
while/lstm_cell_5/Sigmoid_4Sigmoidwhile/lstm_cell_5/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Sigmoid_4?
while/lstm_cell_5/mul_3Mulwhile/lstm_cell_5/add_1:z:0while/lstm_cell_5/Sigmoid_4:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_3?
while/lstm_cell_5/Identity_1Identitywhile/lstm_cell_5/mul_3:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/Identity_1?
while/lstm_cell_5/IdentityN_1	IdentityNwhile/lstm_cell_5/mul_3:z:0while/lstm_cell_5/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-562252*<
_output_shapes*
(:??????????:??????????2
while/lstm_cell_5/IdentityN_1?
while/lstm_cell_5/mul_4Mulwhile/lstm_cell_5/Sigmoid_3:y:0&while/lstm_cell_5/IdentityN_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_5/mul_4?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_4:z:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_5/mul_4:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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
: "?L
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
regularization_losses
trainable_variables
	variables
		keras_api


signatures
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses"?8
_tf_keras_sequential?8{"class_name": "Sequential", "name": "sequential_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 24, 19]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_5_input"}}, {"class_name": "LSTM", "config": {"name": "lstm_5", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "LSTM", "config": {"name": "lstm_6", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_3", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_4", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}}]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 19]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 19]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 24, 19]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_5_input"}}, {"class_name": "LSTM", "config": {"name": "lstm_5", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "LSTM", "config": {"name": "lstm_6", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_3", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_4", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}}]}}, "training_config": {"loss": {"class_name": "MeanAbsoluteError", "config": {"reduction": "auto", "name": "mean_absolute_error"}}, "metrics": [[{"class_name": "MeanSquaredLogarithmicError", "config": {"name": "mean_squared_logarithmic_error", "dtype": "float32"}}, {"class_name": "MeanSquaredError", "config": {"name": "mean_squared_error", "dtype": "float32"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?

_tf_keras_rnn_layer?	{"class_name": "LSTM", "name": "lstm_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_5", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 19]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 19]}}
?
cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?

_tf_keras_rnn_layer?	{"class_name": "LSTM", "name": "lstm_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_6", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 128]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 128]}}
?	
	layer
regularization_losses
	variables
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "TimeDistributed", "name": "time_distributed_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "time_distributed_3", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 64]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 64]}}
?	
	layer
regularization_losses
	variables
trainable_variables
 	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "TimeDistributed", "name": "time_distributed_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "time_distributed_4", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 64]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 64]}}
?
!iter

"beta_1

#beta_2
	$decay
%learning_rate&m?'m?(m?)m?*m?+m?,m?-m?.m?/m?&v?'v?(v?)v?*v?+v?,v?-v?.v?/v?"
	optimizer
 "
trackable_list_wrapper
f
&0
'1
(2
)3
*4
+5
,6
-7
.8
/9"
trackable_list_wrapper
f
&0
'1
(2
)3
*4
+5
,6
-7
.8
/9"
trackable_list_wrapper
?

0layers
regularization_losses
trainable_variables
1layer_regularization_losses
2layer_metrics
3non_trainable_variables
4metrics
	variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?

&kernel
'recurrent_kernel
(bias
5regularization_losses
6	variables
7trainable_variables
8	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LSTMCell", "name": "lstm_cell_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell_5", "trainable": true, "dtype": "float32", "units": 128, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
?

9layers

:states
regularization_losses
trainable_variables
;layer_regularization_losses
<layer_metrics
=non_trainable_variables
>metrics
	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

)kernel
*recurrent_kernel
+bias
?regularization_losses
@	variables
Atrainable_variables
B	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LSTMCell", "name": "lstm_cell_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell_6", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
)0
*1
+2"
trackable_list_wrapper
5
)0
*1
+2"
trackable_list_wrapper
?

Clayers

Dstates
regularization_losses
trainable_variables
Elayer_regularization_losses
Flayer_metrics
Gnon_trainable_variables
Hmetrics
	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

,kernel
-bias
Iregularization_losses
J	variables
Ktrainable_variables
L	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}}
 "
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
?

Mlayers
regularization_losses
Nlayer_metrics
Olayer_regularization_losses
Pnon_trainable_variables
Qmetrics
	variables
trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

.kernel
/bias
Rregularization_losses
S	variables
Ttrainable_variables
U	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}}
 "
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
?

Vlayers
regularization_losses
Wlayer_metrics
Xlayer_regularization_losses
Ynon_trainable_variables
Zmetrics
	variables
trainable_variables
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
5
[0
\1
]2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
?

^layers
5regularization_losses
_layer_metrics
`layer_regularization_losses
anon_trainable_variables
bmetrics
6	variables
7trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
'
0"
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
5
)0
*1
+2"
trackable_list_wrapper
5
)0
*1
+2"
trackable_list_wrapper
?

clayers
?regularization_losses
dlayer_metrics
elayer_regularization_losses
fnon_trainable_variables
gmetrics
@	variables
Atrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
'
0"
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
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
?

hlayers
Iregularization_losses
ilayer_metrics
jlayer_regularization_losses
knon_trainable_variables
lmetrics
J	variables
Ktrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
'
0"
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
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
?

mlayers
Rregularization_losses
nlayer_metrics
olayer_regularization_losses
pnon_trainable_variables
qmetrics
S	variables
Ttrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
	rtotal
	scount
t	variables
u	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?
	vtotal
	wcount
x
_fn_kwargs
y	variables
z	keras_api"?
_tf_keras_metric?{"class_name": "MeanSquaredLogarithmicError", "name": "mean_squared_logarithmic_error", "dtype": "float32", "config": {"name": "mean_squared_logarithmic_error", "dtype": "float32"}}
?
	{total
	|count
}
_fn_kwargs
~	variables
	keras_api"?
_tf_keras_metric?{"class_name": "MeanSquaredError", "name": "mean_squared_error", "dtype": "float32", "config": {"name": "mean_squared_error", "dtype": "float32"}}
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
.
r0
s1"
trackable_list_wrapper
-
t	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
v0
w1"
trackable_list_wrapper
-
y	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
{0
|1"
trackable_list_wrapper
-
~	variables"
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
-__inference_sequential_3_layer_call_fn_561293
-__inference_sequential_3_layer_call_fn_562097
-__inference_sequential_3_layer_call_fn_561236
-__inference_sequential_3_layer_call_fn_562122?
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
!__inference__wrapped_model_558765?
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
?2?
H__inference_sequential_3_layer_call_and_return_conditional_losses_561178
H__inference_sequential_3_layer_call_and_return_conditional_losses_562072
H__inference_sequential_3_layer_call_and_return_conditional_losses_561700
H__inference_sequential_3_layer_call_and_return_conditional_losses_561146?
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
?2?
'__inference_lstm_5_layer_call_fn_562847
'__inference_lstm_5_layer_call_fn_562479
'__inference_lstm_5_layer_call_fn_562858
'__inference_lstm_5_layer_call_fn_562490?
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
B__inference_lstm_5_layer_call_and_return_conditional_losses_562295
B__inference_lstm_5_layer_call_and_return_conditional_losses_562836
B__inference_lstm_5_layer_call_and_return_conditional_losses_562663
B__inference_lstm_5_layer_call_and_return_conditional_losses_562468?
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
'__inference_lstm_6_layer_call_fn_563215
'__inference_lstm_6_layer_call_fn_563594
'__inference_lstm_6_layer_call_fn_563226
'__inference_lstm_6_layer_call_fn_563583?
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
B__inference_lstm_6_layer_call_and_return_conditional_losses_563031
B__inference_lstm_6_layer_call_and_return_conditional_losses_563399
B__inference_lstm_6_layer_call_and_return_conditional_losses_563572
B__inference_lstm_6_layer_call_and_return_conditional_losses_563204?
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
3__inference_time_distributed_3_layer_call_fn_563724
3__inference_time_distributed_3_layer_call_fn_563666
3__inference_time_distributed_3_layer_call_fn_563657
3__inference_time_distributed_3_layer_call_fn_563715?
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
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_563686
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_563706
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_563621
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_563648?
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
3__inference_time_distributed_4_layer_call_fn_563830
3__inference_time_distributed_4_layer_call_fn_563784
3__inference_time_distributed_4_layer_call_fn_563775
3__inference_time_distributed_4_layer_call_fn_563821?
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
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_563798
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_563812
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_563766
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_563745?
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
$__inference_signature_wrapper_561328lstm_5_input"?
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
,__inference_lstm_cell_5_layer_call_fn_563950
,__inference_lstm_cell_5_layer_call_fn_563933?
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
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_563916
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_563873?
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
,__inference_lstm_cell_6_layer_call_fn_564053
,__inference_lstm_cell_6_layer_call_fn_564070?
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
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_564036
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_563993?
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
(__inference_dense_8_layer_call_fn_564095?
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
C__inference_dense_8_layer_call_and_return_conditional_losses_564086?
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
(__inference_dense_9_layer_call_fn_564114?
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
C__inference_dense_9_layer_call_and_return_conditional_losses_564105?
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
!__inference__wrapped_model_558765?
&'()*+,-./9?6
/?,
*?'
lstm_5_input?????????
? "K?H
F
time_distributed_40?-
time_distributed_4??????????
C__inference_dense_8_layer_call_and_return_conditional_losses_564086\,-/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????@
? {
(__inference_dense_8_layer_call_fn_564095O,-/?,
%?"
 ?
inputs?????????@
? "??????????@?
C__inference_dense_9_layer_call_and_return_conditional_losses_564105\.//?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? {
(__inference_dense_9_layer_call_fn_564114O.//?,
%?"
 ?
inputs?????????@
? "???????????
B__inference_lstm_5_layer_call_and_return_conditional_losses_562295?&'(O?L
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
B__inference_lstm_5_layer_call_and_return_conditional_losses_562468?&'(O?L
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
B__inference_lstm_5_layer_call_and_return_conditional_losses_562663r&'(??<
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
B__inference_lstm_5_layer_call_and_return_conditional_losses_562836r&'(??<
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
'__inference_lstm_5_layer_call_fn_562479~&'(O?L
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
'__inference_lstm_5_layer_call_fn_562490~&'(O?L
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
'__inference_lstm_5_layer_call_fn_562847e&'(??<
5?2
$?!
inputs?????????

 
p

 
? "????????????
'__inference_lstm_5_layer_call_fn_562858e&'(??<
5?2
$?!
inputs?????????

 
p 

 
? "????????????
B__inference_lstm_6_layer_call_and_return_conditional_losses_563031r)*+@?=
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
B__inference_lstm_6_layer_call_and_return_conditional_losses_563204r)*+@?=
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
B__inference_lstm_6_layer_call_and_return_conditional_losses_563399?)*+P?M
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
B__inference_lstm_6_layer_call_and_return_conditional_losses_563572?)*+P?M
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
'__inference_lstm_6_layer_call_fn_563215e)*+@?=
6?3
%?"
inputs??????????

 
p

 
? "??????????@?
'__inference_lstm_6_layer_call_fn_563226e)*+@?=
6?3
%?"
inputs??????????

 
p 

 
? "??????????@?
'__inference_lstm_6_layer_call_fn_563583~)*+P?M
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
'__inference_lstm_6_layer_call_fn_563594~)*+P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "%?"??????????????????@?
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_563873?&'(??
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
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_563916?&'(??
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
,__inference_lstm_cell_5_layer_call_fn_563933?&'(??
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
,__inference_lstm_cell_5_layer_call_fn_563950?&'(??
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
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_563993?)*+??~
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
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_564036?)*+??~
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
,__inference_lstm_cell_6_layer_call_fn_564053?)*+??~
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
,__inference_lstm_cell_6_layer_call_fn_564070?)*+??~
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
H__inference_sequential_3_layer_call_and_return_conditional_losses_561146z
&'()*+,-./A?>
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
H__inference_sequential_3_layer_call_and_return_conditional_losses_561178z
&'()*+,-./A?>
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
H__inference_sequential_3_layer_call_and_return_conditional_losses_561700t
&'()*+,-./;?8
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
H__inference_sequential_3_layer_call_and_return_conditional_losses_562072t
&'()*+,-./;?8
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
-__inference_sequential_3_layer_call_fn_561236m
&'()*+,-./A?>
7?4
*?'
lstm_5_input?????????
p

 
? "???????????
-__inference_sequential_3_layer_call_fn_561293m
&'()*+,-./A?>
7?4
*?'
lstm_5_input?????????
p 

 
? "???????????
-__inference_sequential_3_layer_call_fn_562097g
&'()*+,-./;?8
1?.
$?!
inputs?????????
p

 
? "???????????
-__inference_sequential_3_layer_call_fn_562122g
&'()*+,-./;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
$__inference_signature_wrapper_561328?
&'()*+,-./I?F
? 
??<
:
lstm_5_input*?'
lstm_5_input?????????"K?H
F
time_distributed_40?-
time_distributed_4??????????
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_563621~,-D?A
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
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_563648~,-D?A
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
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_563686l,-;?8
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
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_563706l,-;?8
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
3__inference_time_distributed_3_layer_call_fn_563657q,-D?A
:?7
-?*
inputs??????????????????@
p

 
? "%?"??????????????????@?
3__inference_time_distributed_3_layer_call_fn_563666q,-D?A
:?7
-?*
inputs??????????????????@
p 

 
? "%?"??????????????????@?
3__inference_time_distributed_3_layer_call_fn_563715_,-;?8
1?.
$?!
inputs?????????@
p

 
? "??????????@?
3__inference_time_distributed_3_layer_call_fn_563724_,-;?8
1?.
$?!
inputs?????????@
p 

 
? "??????????@?
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_563745~./D?A
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
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_563766~./D?A
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
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_563798l./;?8
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
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_563812l./;?8
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
3__inference_time_distributed_4_layer_call_fn_563775q./D?A
:?7
-?*
inputs??????????????????@
p

 
? "%?"???????????????????
3__inference_time_distributed_4_layer_call_fn_563784q./D?A
:?7
-?*
inputs??????????????????@
p 

 
? "%?"???????????????????
3__inference_time_distributed_4_layer_call_fn_563821_./;?8
1?.
$?!
inputs?????????@
p

 
? "???????????
3__inference_time_distributed_4_layer_call_fn_563830_./;?8
1?.
$?!
inputs?????????@
p 

 
? "??????????