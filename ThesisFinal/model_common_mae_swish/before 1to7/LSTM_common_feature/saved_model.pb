´/
Ú
B
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
¾
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
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
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

TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

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
"serve*2.4.12v2.4.1-0-g85c8b2a817f8Ú¨,
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

lstm_21/lstm_cell_39/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*,
shared_namelstm_21/lstm_cell_39/kernel

/lstm_21/lstm_cell_39/kernel/Read/ReadVariableOpReadVariableOplstm_21/lstm_cell_39/kernel*
_output_shapes
:	*
dtype0
¨
%lstm_21/lstm_cell_39/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*6
shared_name'%lstm_21/lstm_cell_39/recurrent_kernel
¡
9lstm_21/lstm_cell_39/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_21/lstm_cell_39/recurrent_kernel* 
_output_shapes
:
*
dtype0

lstm_21/lstm_cell_39/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelstm_21/lstm_cell_39/bias

-lstm_21/lstm_cell_39/bias/Read/ReadVariableOpReadVariableOplstm_21/lstm_cell_39/bias*
_output_shapes	
:*
dtype0

lstm_22/lstm_cell_40/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*,
shared_namelstm_22/lstm_cell_40/kernel

/lstm_22/lstm_cell_40/kernel/Read/ReadVariableOpReadVariableOplstm_22/lstm_cell_40/kernel* 
_output_shapes
:
*
dtype0
§
%lstm_22/lstm_cell_40/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*6
shared_name'%lstm_22/lstm_cell_40/recurrent_kernel
 
9lstm_22/lstm_cell_40/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_22/lstm_cell_40/recurrent_kernel*
_output_shapes
:	@*
dtype0

lstm_22/lstm_cell_40/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelstm_22/lstm_cell_40/bias

-lstm_22/lstm_cell_40/bias/Read/ReadVariableOpReadVariableOplstm_22/lstm_cell_40/bias*
_output_shapes	
:*
dtype0

time_distributed_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*+
shared_nametime_distributed_16/kernel

.time_distributed_16/kernel/Read/ReadVariableOpReadVariableOptime_distributed_16/kernel*
_output_shapes

:@@*
dtype0

time_distributed_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nametime_distributed_16/bias

,time_distributed_16/bias/Read/ReadVariableOpReadVariableOptime_distributed_16/bias*
_output_shapes
:@*
dtype0

time_distributed_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*+
shared_nametime_distributed_17/kernel

.time_distributed_17/kernel/Read/ReadVariableOpReadVariableOptime_distributed_17/kernel*
_output_shapes

:@*
dtype0

time_distributed_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nametime_distributed_17/bias

,time_distributed_17/bias/Read/ReadVariableOpReadVariableOptime_distributed_17/bias*
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
¡
"Adam/lstm_21/lstm_cell_39/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/lstm_21/lstm_cell_39/kernel/m

6Adam/lstm_21/lstm_cell_39/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_21/lstm_cell_39/kernel/m*
_output_shapes
:	*
dtype0
¶
,Adam/lstm_21/lstm_cell_39/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*=
shared_name.,Adam/lstm_21/lstm_cell_39/recurrent_kernel/m
¯
@Adam/lstm_21/lstm_cell_39/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_21/lstm_cell_39/recurrent_kernel/m* 
_output_shapes
:
*
dtype0

 Adam/lstm_21/lstm_cell_39/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_21/lstm_cell_39/bias/m

4Adam/lstm_21/lstm_cell_39/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_21/lstm_cell_39/bias/m*
_output_shapes	
:*
dtype0
¢
"Adam/lstm_22/lstm_cell_40/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*3
shared_name$"Adam/lstm_22/lstm_cell_40/kernel/m

6Adam/lstm_22/lstm_cell_40/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_22/lstm_cell_40/kernel/m* 
_output_shapes
:
*
dtype0
µ
,Adam/lstm_22/lstm_cell_40/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*=
shared_name.,Adam/lstm_22/lstm_cell_40/recurrent_kernel/m
®
@Adam/lstm_22/lstm_cell_40/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_22/lstm_cell_40/recurrent_kernel/m*
_output_shapes
:	@*
dtype0

 Adam/lstm_22/lstm_cell_40/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_22/lstm_cell_40/bias/m

4Adam/lstm_22/lstm_cell_40/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_22/lstm_cell_40/bias/m*
_output_shapes	
:*
dtype0

!Adam/time_distributed_16/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*2
shared_name#!Adam/time_distributed_16/kernel/m

5Adam/time_distributed_16/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/time_distributed_16/kernel/m*
_output_shapes

:@@*
dtype0

Adam/time_distributed_16/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/time_distributed_16/bias/m

3Adam/time_distributed_16/bias/m/Read/ReadVariableOpReadVariableOpAdam/time_distributed_16/bias/m*
_output_shapes
:@*
dtype0

!Adam/time_distributed_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*2
shared_name#!Adam/time_distributed_17/kernel/m

5Adam/time_distributed_17/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/time_distributed_17/kernel/m*
_output_shapes

:@*
dtype0

Adam/time_distributed_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/time_distributed_17/bias/m

3Adam/time_distributed_17/bias/m/Read/ReadVariableOpReadVariableOpAdam/time_distributed_17/bias/m*
_output_shapes
:*
dtype0
¡
"Adam/lstm_21/lstm_cell_39/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/lstm_21/lstm_cell_39/kernel/v

6Adam/lstm_21/lstm_cell_39/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_21/lstm_cell_39/kernel/v*
_output_shapes
:	*
dtype0
¶
,Adam/lstm_21/lstm_cell_39/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*=
shared_name.,Adam/lstm_21/lstm_cell_39/recurrent_kernel/v
¯
@Adam/lstm_21/lstm_cell_39/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_21/lstm_cell_39/recurrent_kernel/v* 
_output_shapes
:
*
dtype0

 Adam/lstm_21/lstm_cell_39/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_21/lstm_cell_39/bias/v

4Adam/lstm_21/lstm_cell_39/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_21/lstm_cell_39/bias/v*
_output_shapes	
:*
dtype0
¢
"Adam/lstm_22/lstm_cell_40/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*3
shared_name$"Adam/lstm_22/lstm_cell_40/kernel/v

6Adam/lstm_22/lstm_cell_40/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_22/lstm_cell_40/kernel/v* 
_output_shapes
:
*
dtype0
µ
,Adam/lstm_22/lstm_cell_40/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*=
shared_name.,Adam/lstm_22/lstm_cell_40/recurrent_kernel/v
®
@Adam/lstm_22/lstm_cell_40/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_22/lstm_cell_40/recurrent_kernel/v*
_output_shapes
:	@*
dtype0

 Adam/lstm_22/lstm_cell_40/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_22/lstm_cell_40/bias/v

4Adam/lstm_22/lstm_cell_40/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_22/lstm_cell_40/bias/v*
_output_shapes	
:*
dtype0

!Adam/time_distributed_16/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*2
shared_name#!Adam/time_distributed_16/kernel/v

5Adam/time_distributed_16/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/time_distributed_16/kernel/v*
_output_shapes

:@@*
dtype0

Adam/time_distributed_16/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/time_distributed_16/bias/v

3Adam/time_distributed_16/bias/v/Read/ReadVariableOpReadVariableOpAdam/time_distributed_16/bias/v*
_output_shapes
:@*
dtype0

!Adam/time_distributed_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*2
shared_name#!Adam/time_distributed_17/kernel/v

5Adam/time_distributed_17/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/time_distributed_17/kernel/v*
_output_shapes

:@*
dtype0

Adam/time_distributed_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/time_distributed_17/bias/v

3Adam/time_distributed_17/bias/v/Read/ReadVariableOpReadVariableOpAdam/time_distributed_17/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
ìC
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*§C
valueCBC BC

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
trainable_variables
regularization_losses
	variables
		keras_api


signatures
l
cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api
l
cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api
]
	layer
trainable_variables
regularization_losses
	variables
	keras_api
]
	layer
trainable_variables
regularization_losses
	variables
 	keras_api

!iter

"beta_1

#beta_2
	$decay
%learning_rate&m'm(m)m*m+m,m-m.m/m&v'v(v)v*v+v,v-v.v/v
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
­
trainable_variables
0layer_metrics
1layer_regularization_losses
regularization_losses

2layers
	variables
3metrics
4non_trainable_variables
 
~

&kernel
'recurrent_kernel
(bias
5trainable_variables
6regularization_losses
7	variables
8	keras_api
 

&0
'1
(2
 

&0
'1
(2
¹
trainable_variables
9layer_metrics

:states
;layer_regularization_losses
regularization_losses

<layers
	variables
=metrics
>non_trainable_variables
~

)kernel
*recurrent_kernel
+bias
?trainable_variables
@regularization_losses
A	variables
B	keras_api
 

)0
*1
+2
 

)0
*1
+2
¹
trainable_variables
Clayer_metrics

Dstates
Elayer_regularization_losses
regularization_losses

Flayers
	variables
Gmetrics
Hnon_trainable_variables
h

,kernel
-bias
Itrainable_variables
Jregularization_losses
K	variables
L	keras_api

,0
-1
 

,0
-1
­
trainable_variables
Mlayer_metrics
Nnon_trainable_variables
Olayer_regularization_losses
regularization_losses
	variables
Pmetrics

Qlayers
h

.kernel
/bias
Rtrainable_variables
Sregularization_losses
T	variables
U	keras_api

.0
/1
 

.0
/1
­
trainable_variables
Vlayer_metrics
Wnon_trainable_variables
Xlayer_regularization_losses
regularization_losses
	variables
Ymetrics

Zlayers
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
a_
VARIABLE_VALUElstm_21/lstm_cell_39/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%lstm_21/lstm_cell_39/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_21/lstm_cell_39/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUElstm_22/lstm_cell_40/kernel0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%lstm_22/lstm_cell_40/recurrent_kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_22/lstm_cell_40/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEtime_distributed_16/kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUEtime_distributed_16/bias0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEtime_distributed_17/kernel0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUEtime_distributed_17/bias0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE
 
 

0
1
2
3

[0
\1
]2
 

&0
'1
(2
 

&0
'1
(2
­
5trainable_variables
^layer_metrics
_non_trainable_variables
`layer_regularization_losses
6regularization_losses
7	variables
ametrics

blayers
 
 
 

0
 
 

)0
*1
+2
 

)0
*1
+2
­
?trainable_variables
clayer_metrics
dnon_trainable_variables
elayer_regularization_losses
@regularization_losses
A	variables
fmetrics

glayers
 
 
 

0
 
 

,0
-1
 

,0
-1
­
Itrainable_variables
hlayer_metrics
inon_trainable_variables
jlayer_regularization_losses
Jregularization_losses
K	variables
kmetrics

llayers
 
 
 
 

0

.0
/1
 

.0
/1
­
Rtrainable_variables
mlayer_metrics
nnon_trainable_variables
olayer_regularization_losses
Sregularization_losses
T	variables
pmetrics

qlayers
 
 
 
 

0
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

VARIABLE_VALUE"Adam/lstm_21/lstm_cell_39/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_21/lstm_cell_39/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_21/lstm_cell_39/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_22/lstm_cell_40/kernel/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_22/lstm_cell_40/recurrent_kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_22/lstm_cell_40/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/time_distributed_16/kernel/mLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/time_distributed_16/bias/mLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/time_distributed_17/kernel/mLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/time_distributed_17/bias/mLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_21/lstm_cell_39/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_21/lstm_cell_39/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_21/lstm_cell_39/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_22/lstm_cell_40/kernel/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_22/lstm_cell_40/recurrent_kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_22/lstm_cell_40/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/time_distributed_16/kernel/vLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/time_distributed_16/bias/vLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/time_distributed_17/kernel/vLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/time_distributed_17/bias/vLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_lstm_21_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
ú
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_21_inputlstm_21/lstm_cell_39/kernel%lstm_21/lstm_cell_39/recurrent_kernellstm_21/lstm_cell_39/biaslstm_22/lstm_cell_40/kernel%lstm_22/lstm_cell_40/recurrent_kernellstm_22/lstm_cell_40/biastime_distributed_16/kerneltime_distributed_16/biastime_distributed_17/kerneltime_distributed_17/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_883371
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ù
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_21/lstm_cell_39/kernel/Read/ReadVariableOp9lstm_21/lstm_cell_39/recurrent_kernel/Read/ReadVariableOp-lstm_21/lstm_cell_39/bias/Read/ReadVariableOp/lstm_22/lstm_cell_40/kernel/Read/ReadVariableOp9lstm_22/lstm_cell_40/recurrent_kernel/Read/ReadVariableOp-lstm_22/lstm_cell_40/bias/Read/ReadVariableOp.time_distributed_16/kernel/Read/ReadVariableOp,time_distributed_16/bias/Read/ReadVariableOp.time_distributed_17/kernel/Read/ReadVariableOp,time_distributed_17/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp6Adam/lstm_21/lstm_cell_39/kernel/m/Read/ReadVariableOp@Adam/lstm_21/lstm_cell_39/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_21/lstm_cell_39/bias/m/Read/ReadVariableOp6Adam/lstm_22/lstm_cell_40/kernel/m/Read/ReadVariableOp@Adam/lstm_22/lstm_cell_40/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_22/lstm_cell_40/bias/m/Read/ReadVariableOp5Adam/time_distributed_16/kernel/m/Read/ReadVariableOp3Adam/time_distributed_16/bias/m/Read/ReadVariableOp5Adam/time_distributed_17/kernel/m/Read/ReadVariableOp3Adam/time_distributed_17/bias/m/Read/ReadVariableOp6Adam/lstm_21/lstm_cell_39/kernel/v/Read/ReadVariableOp@Adam/lstm_21/lstm_cell_39/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_21/lstm_cell_39/bias/v/Read/ReadVariableOp6Adam/lstm_22/lstm_cell_40/kernel/v/Read/ReadVariableOp@Adam/lstm_22/lstm_cell_40/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_22/lstm_cell_40/bias/v/Read/ReadVariableOp5Adam/time_distributed_16/kernel/v/Read/ReadVariableOp3Adam/time_distributed_16/bias/v/Read/ReadVariableOp5Adam/time_distributed_17/kernel/v/Read/ReadVariableOp3Adam/time_distributed_17/bias/v/Read/ReadVariableOpConst*6
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
GPU 2J 8 *(
f#R!
__inference__traced_save_886303
À
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_21/lstm_cell_39/kernel%lstm_21/lstm_cell_39/recurrent_kernellstm_21/lstm_cell_39/biaslstm_22/lstm_cell_40/kernel%lstm_22/lstm_cell_40/recurrent_kernellstm_22/lstm_cell_40/biastime_distributed_16/kerneltime_distributed_16/biastime_distributed_17/kerneltime_distributed_17/biastotalcounttotal_1count_1total_2count_2"Adam/lstm_21/lstm_cell_39/kernel/m,Adam/lstm_21/lstm_cell_39/recurrent_kernel/m Adam/lstm_21/lstm_cell_39/bias/m"Adam/lstm_22/lstm_cell_40/kernel/m,Adam/lstm_22/lstm_cell_40/recurrent_kernel/m Adam/lstm_22/lstm_cell_40/bias/m!Adam/time_distributed_16/kernel/mAdam/time_distributed_16/bias/m!Adam/time_distributed_17/kernel/mAdam/time_distributed_17/bias/m"Adam/lstm_21/lstm_cell_39/kernel/v,Adam/lstm_21/lstm_cell_39/recurrent_kernel/v Adam/lstm_21/lstm_cell_39/bias/v"Adam/lstm_22/lstm_cell_40/kernel/v,Adam/lstm_22/lstm_cell_40/recurrent_kernel/v Adam/lstm_22/lstm_cell_40/bias/v!Adam/time_distributed_16/kernel/vAdam/time_distributed_16/bias/v!Adam/time_distributed_17/kernel/vAdam/time_distributed_17/bias/v*5
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_886436¥æ*
Ü
~
)__inference_dense_27_layer_call_fn_886157

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_8822162
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Çc
ò
C__inference_lstm_22_layer_call_and_return_conditional_losses_882867

inputs/
+lstm_cell_40_matmul_readvariableop_resource1
-lstm_cell_40_matmul_1_readvariableop_resource0
,lstm_cell_40_biasadd_readvariableop_resource
identity¢#lstm_cell_40/BiasAdd/ReadVariableOp¢"lstm_cell_40/MatMul/ReadVariableOp¢$lstm_cell_40/MatMul_1/ReadVariableOp¢whileD
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
strided_slice/stack_2â
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
B :è2
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
zeros/packed/1
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
:ÿÿÿÿÿÿÿÿÿ@2
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
B :è2
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
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ@2	
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
:ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2¶
"lstm_cell_40/MatMul/ReadVariableOpReadVariableOp+lstm_cell_40_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02$
"lstm_cell_40/MatMul/ReadVariableOp­
lstm_cell_40/MatMulMatMulstrided_slice_2:output:0*lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/MatMul»
$lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype02&
$lstm_cell_40/MatMul_1/ReadVariableOp©
lstm_cell_40/MatMul_1MatMulzeros:output:0,lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/MatMul_1 
lstm_cell_40/addAddV2lstm_cell_40/MatMul:product:0lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/add´
#lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_40/BiasAdd/ReadVariableOp­
lstm_cell_40/BiasAddBiasAddlstm_cell_40/add:z:0+lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/BiasAddj
lstm_cell_40/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_40/Const~
lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_40/split/split_dimó
lstm_cell_40/splitSplit%lstm_cell_40/split/split_dim:output:0lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split2
lstm_cell_40/split
lstm_cell_40/SigmoidSigmoidlstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Sigmoid
lstm_cell_40/Sigmoid_1Sigmoidlstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Sigmoid_1
lstm_cell_40/mulMullstm_cell_40/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/mul
lstm_cell_40/Sigmoid_2Sigmoidlstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Sigmoid_2
lstm_cell_40/mul_1Mullstm_cell_40/split:output:2lstm_cell_40/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/mul_1
lstm_cell_40/IdentityIdentitylstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Identityé
lstm_cell_40/IdentityN	IdentityNlstm_cell_40/mul_1:z:0lstm_cell_40/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-882752*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/IdentityN
lstm_cell_40/mul_2Mullstm_cell_40/Sigmoid:y:0lstm_cell_40/IdentityN:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/mul_2
lstm_cell_40/add_1AddV2lstm_cell_40/mul:z:0lstm_cell_40/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/add_1
lstm_cell_40/Sigmoid_3Sigmoidlstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Sigmoid_3
lstm_cell_40/Sigmoid_4Sigmoidlstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Sigmoid_4
lstm_cell_40/mul_3Mullstm_cell_40/add_1:z:0lstm_cell_40/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/mul_3
lstm_cell_40/Identity_1Identitylstm_cell_40/mul_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Identity_1è
lstm_cell_40/IdentityN_1	IdentityNlstm_cell_40/mul_3:z:0lstm_cell_40/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-882761*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/IdentityN_1 
lstm_cell_40/mul_4Mullstm_cell_40/Sigmoid_3:y:0!lstm_cell_40/IdentityN_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/mul_4
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterî
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_40_matmul_readvariableop_resource-lstm_cell_40_matmul_1_readvariableop_resource,lstm_cell_40_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_882772*
condR
while_cond_882771*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¥
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeá
IdentityIdentitytranspose_1:y:0$^lstm_cell_40/BiasAdd/ReadVariableOp#^lstm_cell_40/MatMul/ReadVariableOp%^lstm_cell_40/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ:::2J
#lstm_cell_40/BiasAdd/ReadVariableOp#lstm_cell_40/BiasAdd/ReadVariableOp2H
"lstm_cell_40/MatMul/ReadVariableOp"lstm_cell_40/MatMul/ReadVariableOp2L
$lstm_cell_40/MatMul_1/ReadVariableOp$lstm_cell_40/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«
Ã
while_cond_882771
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_882771___redundant_placeholder04
0while_while_cond_882771___redundant_placeholder14
0while_while_cond_882771___redundant_placeholder24
0while_while_cond_882771___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
·

(__inference_lstm_21_layer_call_fn_884522
inputs_0
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_21_layer_call_and_return_conditional_losses_8812972
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
%

while_body_881990
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_40_882014_0
while_lstm_cell_40_882016_0
while_lstm_cell_40_882018_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_40_882014
while_lstm_cell_40_882016
while_lstm_cell_40_882018¢*while/lstm_cell_40/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemá
*while/lstm_cell_40/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_40_882014_0while_lstm_cell_40_882016_0while_lstm_cell_40_882018_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_8815642,
*while/lstm_cell_40/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_40/StatefulPartitionedCall:output:0*
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
while/add_1
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_40/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_40/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_40/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2º
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_40/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Ä
while/Identity_4Identity3while/lstm_cell_40/StatefulPartitionedCall:output:1+^while/lstm_cell_40/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4Ä
while/Identity_5Identity3while/lstm_cell_40/StatefulPartitionedCall:output:2+^while/lstm_cell_40/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_40_882014while_lstm_cell_40_882014_0"8
while_lstm_cell_40_882016while_lstm_cell_40_882016_0"8
while_lstm_cell_40_882018while_lstm_cell_40_882018_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :::2X
*while/lstm_cell_40/StatefulPartitionedCall*while/lstm_cell_40/StatefulPartitionedCall: 
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
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
·

(__inference_lstm_21_layer_call_fn_884533
inputs_0
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_21_layer_call_and_return_conditional_losses_8814292
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0


H__inference_sequential_9_layer_call_and_return_conditional_losses_883189
lstm_21_input
lstm_21_882688
lstm_21_882690
lstm_21_882692
lstm_22_883063
lstm_22_883065
lstm_22_883067
time_distributed_16_883128
time_distributed_16_883130
time_distributed_17_883181
time_distributed_17_883183
identity¢lstm_21/StatefulPartitionedCall¢lstm_22/StatefulPartitionedCall¢+time_distributed_16/StatefulPartitionedCall¢+time_distributed_17/StatefulPartitionedCall­
lstm_21/StatefulPartitionedCallStatefulPartitionedCalllstm_21_inputlstm_21_882688lstm_21_882690lstm_21_882692*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_21_layer_call_and_return_conditional_losses_8824922!
lstm_21/StatefulPartitionedCallÇ
lstm_22/StatefulPartitionedCallStatefulPartitionedCall(lstm_21/StatefulPartitionedCall:output:0lstm_22_883063lstm_22_883065lstm_22_883067*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_22_layer_call_and_return_conditional_losses_8828672!
lstm_22/StatefulPartitionedCallñ
+time_distributed_16/StatefulPartitionedCallStatefulPartitionedCall(lstm_22/StatefulPartitionedCall:output:0time_distributed_16_883128time_distributed_16_883130*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_time_distributed_16_layer_call_and_return_conditional_losses_8830892-
+time_distributed_16/StatefulPartitionedCall
!time_distributed_16/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2#
!time_distributed_16/Reshape/shapeÍ
time_distributed_16/ReshapeReshape(lstm_22/StatefulPartitionedCall:output:0*time_distributed_16/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
time_distributed_16/Reshapeý
+time_distributed_17/StatefulPartitionedCallStatefulPartitionedCall4time_distributed_16/StatefulPartitionedCall:output:0time_distributed_17_883181time_distributed_17_883183*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_time_distributed_17_layer_call_and_return_conditional_losses_8831482-
+time_distributed_17/StatefulPartitionedCall
!time_distributed_17/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2#
!time_distributed_17/Reshape/shapeÙ
time_distributed_17/ReshapeReshape4time_distributed_16/StatefulPartitionedCall:output:0*time_distributed_17/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
time_distributed_17/Reshape¬
IdentityIdentity4time_distributed_17/StatefulPartitionedCall:output:0 ^lstm_21/StatefulPartitionedCall ^lstm_22/StatefulPartitionedCall,^time_distributed_16/StatefulPartitionedCall,^time_distributed_17/StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ::::::::::2B
lstm_21/StatefulPartitionedCalllstm_21/StatefulPartitionedCall2B
lstm_22/StatefulPartitionedCalllstm_22/StatefulPartitionedCall2Z
+time_distributed_16/StatefulPartitionedCall+time_distributed_16/StatefulPartitionedCall2Z
+time_distributed_17/StatefulPartitionedCall+time_distributed_17/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_21_input
¯
Ã
while_cond_884415
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_884415___redundant_placeholder04
0while_while_cond_884415___redundant_placeholder14
0while_while_cond_884415___redundant_placeholder24
0while_while_cond_884415___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
	
Ý
D__inference_dense_27_layer_call_and_return_conditional_losses_882216

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
æc
ò
C__inference_lstm_21_layer_call_and_return_conditional_losses_884706

inputs/
+lstm_cell_39_matmul_readvariableop_resource1
-lstm_cell_39_matmul_1_readvariableop_resource0
,lstm_cell_39_biasadd_readvariableop_resource
identity¢#lstm_cell_39/BiasAdd/ReadVariableOp¢"lstm_cell_39/MatMul/ReadVariableOp¢$lstm_cell_39/MatMul_1/ReadVariableOp¢whileD
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
strided_slice/stack_2â
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
B :2
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
B :è2
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
B :2
zeros/packed/1
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
:ÿÿÿÿÿÿÿÿÿ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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
B :è2
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
B :2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2µ
"lstm_cell_39/MatMul/ReadVariableOpReadVariableOp+lstm_cell_39_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02$
"lstm_cell_39/MatMul/ReadVariableOp­
lstm_cell_39/MatMulMatMulstrided_slice_2:output:0*lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/MatMul¼
$lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_39_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02&
$lstm_cell_39/MatMul_1/ReadVariableOp©
lstm_cell_39/MatMul_1MatMulzeros:output:0,lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/MatMul_1 
lstm_cell_39/addAddV2lstm_cell_39/MatMul:product:0lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/add´
#lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_39_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_39/BiasAdd/ReadVariableOp­
lstm_cell_39/BiasAddBiasAddlstm_cell_39/add:z:0+lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/BiasAddj
lstm_cell_39/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_39/Const~
lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_39/split/split_dim÷
lstm_cell_39/splitSplit%lstm_cell_39/split/split_dim:output:0lstm_cell_39/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_39/split
lstm_cell_39/SigmoidSigmoidlstm_cell_39/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Sigmoid
lstm_cell_39/Sigmoid_1Sigmoidlstm_cell_39/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Sigmoid_1
lstm_cell_39/mulMullstm_cell_39/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/mul
lstm_cell_39/Sigmoid_2Sigmoidlstm_cell_39/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Sigmoid_2
lstm_cell_39/mul_1Mullstm_cell_39/split:output:2lstm_cell_39/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/mul_1
lstm_cell_39/IdentityIdentitylstm_cell_39/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Identityë
lstm_cell_39/IdentityN	IdentityNlstm_cell_39/mul_1:z:0lstm_cell_39/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-884591*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/IdentityN
lstm_cell_39/mul_2Mullstm_cell_39/Sigmoid:y:0lstm_cell_39/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/mul_2
lstm_cell_39/add_1AddV2lstm_cell_39/mul:z:0lstm_cell_39/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/add_1
lstm_cell_39/Sigmoid_3Sigmoidlstm_cell_39/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Sigmoid_3
lstm_cell_39/Sigmoid_4Sigmoidlstm_cell_39/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Sigmoid_4
lstm_cell_39/mul_3Mullstm_cell_39/add_1:z:0lstm_cell_39/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/mul_3
lstm_cell_39/Identity_1Identitylstm_cell_39/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Identity_1ê
lstm_cell_39/IdentityN_1	IdentityNlstm_cell_39/mul_3:z:0lstm_cell_39/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-884600*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/IdentityN_1¡
lstm_cell_39/mul_4Mullstm_cell_39/Sigmoid_3:y:0!lstm_cell_39/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/mul_4
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterò
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_39_matmul_readvariableop_resource-lstm_cell_39_matmul_1_readvariableop_resource,lstm_cell_39_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_884611*
condR
while_cond_884610*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeâ
IdentityIdentitytranspose_1:y:0$^lstm_cell_39/BiasAdd/ReadVariableOp#^lstm_cell_39/MatMul/ReadVariableOp%^lstm_cell_39/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ:::2J
#lstm_cell_39/BiasAdd/ReadVariableOp#lstm_cell_39/BiasAdd/ReadVariableOp2H
"lstm_cell_39/MatMul/ReadVariableOp"lstm_cell_39/MatMul/ReadVariableOp2L
$lstm_cell_39/MatMul_1/ReadVariableOp$lstm_cell_39/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½
Í
-__inference_lstm_cell_40_layer_call_fn_886113

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2¢StatefulPartitionedCallÃ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_8815642
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*Y
_input_shapesH
F:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/1


4__inference_time_distributed_16_layer_call_fn_885695

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_time_distributed_16_layer_call_and_return_conditional_losses_8831092
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Çc
ò
C__inference_lstm_22_layer_call_and_return_conditional_losses_885247

inputs/
+lstm_cell_40_matmul_readvariableop_resource1
-lstm_cell_40_matmul_1_readvariableop_resource0
,lstm_cell_40_biasadd_readvariableop_resource
identity¢#lstm_cell_40/BiasAdd/ReadVariableOp¢"lstm_cell_40/MatMul/ReadVariableOp¢$lstm_cell_40/MatMul_1/ReadVariableOp¢whileD
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
strided_slice/stack_2â
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
B :è2
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
zeros/packed/1
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
:ÿÿÿÿÿÿÿÿÿ@2
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
B :è2
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
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ@2	
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
:ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2¶
"lstm_cell_40/MatMul/ReadVariableOpReadVariableOp+lstm_cell_40_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02$
"lstm_cell_40/MatMul/ReadVariableOp­
lstm_cell_40/MatMulMatMulstrided_slice_2:output:0*lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/MatMul»
$lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype02&
$lstm_cell_40/MatMul_1/ReadVariableOp©
lstm_cell_40/MatMul_1MatMulzeros:output:0,lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/MatMul_1 
lstm_cell_40/addAddV2lstm_cell_40/MatMul:product:0lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/add´
#lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_40/BiasAdd/ReadVariableOp­
lstm_cell_40/BiasAddBiasAddlstm_cell_40/add:z:0+lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/BiasAddj
lstm_cell_40/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_40/Const~
lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_40/split/split_dimó
lstm_cell_40/splitSplit%lstm_cell_40/split/split_dim:output:0lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split2
lstm_cell_40/split
lstm_cell_40/SigmoidSigmoidlstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Sigmoid
lstm_cell_40/Sigmoid_1Sigmoidlstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Sigmoid_1
lstm_cell_40/mulMullstm_cell_40/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/mul
lstm_cell_40/Sigmoid_2Sigmoidlstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Sigmoid_2
lstm_cell_40/mul_1Mullstm_cell_40/split:output:2lstm_cell_40/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/mul_1
lstm_cell_40/IdentityIdentitylstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Identityé
lstm_cell_40/IdentityN	IdentityNlstm_cell_40/mul_1:z:0lstm_cell_40/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-885132*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/IdentityN
lstm_cell_40/mul_2Mullstm_cell_40/Sigmoid:y:0lstm_cell_40/IdentityN:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/mul_2
lstm_cell_40/add_1AddV2lstm_cell_40/mul:z:0lstm_cell_40/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/add_1
lstm_cell_40/Sigmoid_3Sigmoidlstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Sigmoid_3
lstm_cell_40/Sigmoid_4Sigmoidlstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Sigmoid_4
lstm_cell_40/mul_3Mullstm_cell_40/add_1:z:0lstm_cell_40/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/mul_3
lstm_cell_40/Identity_1Identitylstm_cell_40/mul_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Identity_1è
lstm_cell_40/IdentityN_1	IdentityNlstm_cell_40/mul_3:z:0lstm_cell_40/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-885141*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/IdentityN_1 
lstm_cell_40/mul_4Mullstm_cell_40/Sigmoid_3:y:0!lstm_cell_40/IdentityN_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/mul_4
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterî
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_40_matmul_readvariableop_resource-lstm_cell_40_matmul_1_readvariableop_resource,lstm_cell_40_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_885152*
condR
while_cond_885151*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¥
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeá
IdentityIdentitytranspose_1:y:0$^lstm_cell_40/BiasAdd/ReadVariableOp#^lstm_cell_40/MatMul/ReadVariableOp%^lstm_cell_40/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ:::2J
#lstm_cell_40/BiasAdd/ReadVariableOp#lstm_cell_40/BiasAdd/ReadVariableOp2H
"lstm_cell_40/MatMul/ReadVariableOp"lstm_cell_40/MatMul/ReadVariableOp2L
$lstm_cell_40/MatMul_1/ReadVariableOp$lstm_cell_40/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ëY
þ	
lstm_22_while_body_883990,
(lstm_22_while_lstm_22_while_loop_counter2
.lstm_22_while_lstm_22_while_maximum_iterations
lstm_22_while_placeholder
lstm_22_while_placeholder_1
lstm_22_while_placeholder_2
lstm_22_while_placeholder_3+
'lstm_22_while_lstm_22_strided_slice_1_0g
clstm_22_while_tensorarrayv2read_tensorlistgetitem_lstm_22_tensorarrayunstack_tensorlistfromtensor_0?
;lstm_22_while_lstm_cell_40_matmul_readvariableop_resource_0A
=lstm_22_while_lstm_cell_40_matmul_1_readvariableop_resource_0@
<lstm_22_while_lstm_cell_40_biasadd_readvariableop_resource_0
lstm_22_while_identity
lstm_22_while_identity_1
lstm_22_while_identity_2
lstm_22_while_identity_3
lstm_22_while_identity_4
lstm_22_while_identity_5)
%lstm_22_while_lstm_22_strided_slice_1e
alstm_22_while_tensorarrayv2read_tensorlistgetitem_lstm_22_tensorarrayunstack_tensorlistfromtensor=
9lstm_22_while_lstm_cell_40_matmul_readvariableop_resource?
;lstm_22_while_lstm_cell_40_matmul_1_readvariableop_resource>
:lstm_22_while_lstm_cell_40_biasadd_readvariableop_resource¢1lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOp¢0lstm_22/while/lstm_cell_40/MatMul/ReadVariableOp¢2lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOpÓ
?lstm_22/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_22/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_22/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_22_while_tensorarrayv2read_tensorlistgetitem_lstm_22_tensorarrayunstack_tensorlistfromtensor_0lstm_22_while_placeholderHlstm_22/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_22/while/TensorArrayV2Read/TensorListGetItemâ
0lstm_22/while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp;lstm_22_while_lstm_cell_40_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype022
0lstm_22/while/lstm_cell_40/MatMul/ReadVariableOp÷
!lstm_22/while/lstm_cell_40/MatMulMatMul8lstm_22/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_22/while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_22/while/lstm_cell_40/MatMulç
2lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp=lstm_22_while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes
:	@*
dtype024
2lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOpà
#lstm_22/while/lstm_cell_40/MatMul_1MatMullstm_22_while_placeholder_2:lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#lstm_22/while/lstm_cell_40/MatMul_1Ø
lstm_22/while/lstm_cell_40/addAddV2+lstm_22/while/lstm_cell_40/MatMul:product:0-lstm_22/while/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_22/while/lstm_cell_40/addà
1lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp<lstm_22_while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype023
1lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOpå
"lstm_22/while/lstm_cell_40/BiasAddBiasAdd"lstm_22/while/lstm_cell_40/add:z:09lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_22/while/lstm_cell_40/BiasAdd
 lstm_22/while/lstm_cell_40/ConstConst*
_output_shapes
: *
dtype0*
value	B :2"
 lstm_22/while/lstm_cell_40/Const
*lstm_22/while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_22/while/lstm_cell_40/split/split_dim«
 lstm_22/while/lstm_cell_40/splitSplit3lstm_22/while/lstm_cell_40/split/split_dim:output:0+lstm_22/while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split2"
 lstm_22/while/lstm_cell_40/split°
"lstm_22/while/lstm_cell_40/SigmoidSigmoid)lstm_22/while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"lstm_22/while/lstm_cell_40/Sigmoid´
$lstm_22/while/lstm_cell_40/Sigmoid_1Sigmoid)lstm_22/while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$lstm_22/while/lstm_cell_40/Sigmoid_1À
lstm_22/while/lstm_cell_40/mulMul(lstm_22/while/lstm_cell_40/Sigmoid_1:y:0lstm_22_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
lstm_22/while/lstm_cell_40/mul´
$lstm_22/while/lstm_cell_40/Sigmoid_2Sigmoid)lstm_22/while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$lstm_22/while/lstm_cell_40/Sigmoid_2Ò
 lstm_22/while/lstm_cell_40/mul_1Mul)lstm_22/while/lstm_cell_40/split:output:2(lstm_22/while/lstm_cell_40/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 lstm_22/while/lstm_cell_40/mul_1®
#lstm_22/while/lstm_cell_40/IdentityIdentity$lstm_22/while/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#lstm_22/while/lstm_cell_40/Identity¡
$lstm_22/while/lstm_cell_40/IdentityN	IdentityN$lstm_22/while/lstm_cell_40/mul_1:z:0)lstm_22/while/lstm_cell_40/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-884033*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2&
$lstm_22/while/lstm_cell_40/IdentityNÔ
 lstm_22/while/lstm_cell_40/mul_2Mul&lstm_22/while/lstm_cell_40/Sigmoid:y:0-lstm_22/while/lstm_cell_40/IdentityN:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 lstm_22/while/lstm_cell_40/mul_2É
 lstm_22/while/lstm_cell_40/add_1AddV2"lstm_22/while/lstm_cell_40/mul:z:0$lstm_22/while/lstm_cell_40/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 lstm_22/while/lstm_cell_40/add_1´
$lstm_22/while/lstm_cell_40/Sigmoid_3Sigmoid)lstm_22/while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$lstm_22/while/lstm_cell_40/Sigmoid_3¯
$lstm_22/while/lstm_cell_40/Sigmoid_4Sigmoid$lstm_22/while/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$lstm_22/while/lstm_cell_40/Sigmoid_4Í
 lstm_22/while/lstm_cell_40/mul_3Mul$lstm_22/while/lstm_cell_40/add_1:z:0(lstm_22/while/lstm_cell_40/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 lstm_22/while/lstm_cell_40/mul_3²
%lstm_22/while/lstm_cell_40/Identity_1Identity$lstm_22/while/lstm_cell_40/mul_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2'
%lstm_22/while/lstm_cell_40/Identity_1 
&lstm_22/while/lstm_cell_40/IdentityN_1	IdentityN$lstm_22/while/lstm_cell_40/mul_3:z:0$lstm_22/while/lstm_cell_40/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-884042*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2(
&lstm_22/while/lstm_cell_40/IdentityN_1Ø
 lstm_22/while/lstm_cell_40/mul_4Mul(lstm_22/while/lstm_cell_40/Sigmoid_3:y:0/lstm_22/while/lstm_cell_40/IdentityN_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 lstm_22/while/lstm_cell_40/mul_4
2lstm_22/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_22_while_placeholder_1lstm_22_while_placeholder$lstm_22/while/lstm_cell_40/mul_4:z:0*
_output_shapes
: *
element_dtype024
2lstm_22/while/TensorArrayV2Write/TensorListSetIteml
lstm_22/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_22/while/add/y
lstm_22/while/addAddV2lstm_22_while_placeholderlstm_22/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_22/while/addp
lstm_22/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_22/while/add_1/y
lstm_22/while/add_1AddV2(lstm_22_while_lstm_22_while_loop_counterlstm_22/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_22/while/add_1
lstm_22/while/IdentityIdentitylstm_22/while/add_1:z:02^lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOp1^lstm_22/while/lstm_cell_40/MatMul/ReadVariableOp3^lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_22/while/Identity­
lstm_22/while/Identity_1Identity.lstm_22_while_lstm_22_while_maximum_iterations2^lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOp1^lstm_22/while/lstm_cell_40/MatMul/ReadVariableOp3^lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_22/while/Identity_1
lstm_22/while/Identity_2Identitylstm_22/while/add:z:02^lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOp1^lstm_22/while/lstm_cell_40/MatMul/ReadVariableOp3^lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_22/while/Identity_2Á
lstm_22/while/Identity_3IdentityBlstm_22/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOp1^lstm_22/while/lstm_cell_40/MatMul/ReadVariableOp3^lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_22/while/Identity_3´
lstm_22/while/Identity_4Identity$lstm_22/while/lstm_cell_40/mul_4:z:02^lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOp1^lstm_22/while/lstm_cell_40/MatMul/ReadVariableOp3^lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_22/while/Identity_4´
lstm_22/while/Identity_5Identity$lstm_22/while/lstm_cell_40/add_1:z:02^lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOp1^lstm_22/while/lstm_cell_40/MatMul/ReadVariableOp3^lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_22/while/Identity_5"9
lstm_22_while_identitylstm_22/while/Identity:output:0"=
lstm_22_while_identity_1!lstm_22/while/Identity_1:output:0"=
lstm_22_while_identity_2!lstm_22/while/Identity_2:output:0"=
lstm_22_while_identity_3!lstm_22/while/Identity_3:output:0"=
lstm_22_while_identity_4!lstm_22/while/Identity_4:output:0"=
lstm_22_while_identity_5!lstm_22/while/Identity_5:output:0"P
%lstm_22_while_lstm_22_strided_slice_1'lstm_22_while_lstm_22_strided_slice_1_0"z
:lstm_22_while_lstm_cell_40_biasadd_readvariableop_resource<lstm_22_while_lstm_cell_40_biasadd_readvariableop_resource_0"|
;lstm_22_while_lstm_cell_40_matmul_1_readvariableop_resource=lstm_22_while_lstm_cell_40_matmul_1_readvariableop_resource_0"x
9lstm_22_while_lstm_cell_40_matmul_readvariableop_resource;lstm_22_while_lstm_cell_40_matmul_readvariableop_resource_0"È
alstm_22_while_tensorarrayv2read_tensorlistgetitem_lstm_22_tensorarrayunstack_tensorlistfromtensorclstm_22_while_tensorarrayv2read_tensorlistgetitem_lstm_22_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :::2f
1lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOp1lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOp2d
0lstm_22/while/lstm_cell_40/MatMul/ReadVariableOp0lstm_22/while/lstm_cell_40/MatMul/ReadVariableOp2h
2lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOp2lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
æc
ò
C__inference_lstm_21_layer_call_and_return_conditional_losses_882665

inputs/
+lstm_cell_39_matmul_readvariableop_resource1
-lstm_cell_39_matmul_1_readvariableop_resource0
,lstm_cell_39_biasadd_readvariableop_resource
identity¢#lstm_cell_39/BiasAdd/ReadVariableOp¢"lstm_cell_39/MatMul/ReadVariableOp¢$lstm_cell_39/MatMul_1/ReadVariableOp¢whileD
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
strided_slice/stack_2â
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
B :2
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
B :è2
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
B :2
zeros/packed/1
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
:ÿÿÿÿÿÿÿÿÿ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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
B :è2
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
B :2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2µ
"lstm_cell_39/MatMul/ReadVariableOpReadVariableOp+lstm_cell_39_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02$
"lstm_cell_39/MatMul/ReadVariableOp­
lstm_cell_39/MatMulMatMulstrided_slice_2:output:0*lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/MatMul¼
$lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_39_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02&
$lstm_cell_39/MatMul_1/ReadVariableOp©
lstm_cell_39/MatMul_1MatMulzeros:output:0,lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/MatMul_1 
lstm_cell_39/addAddV2lstm_cell_39/MatMul:product:0lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/add´
#lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_39_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_39/BiasAdd/ReadVariableOp­
lstm_cell_39/BiasAddBiasAddlstm_cell_39/add:z:0+lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/BiasAddj
lstm_cell_39/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_39/Const~
lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_39/split/split_dim÷
lstm_cell_39/splitSplit%lstm_cell_39/split/split_dim:output:0lstm_cell_39/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_39/split
lstm_cell_39/SigmoidSigmoidlstm_cell_39/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Sigmoid
lstm_cell_39/Sigmoid_1Sigmoidlstm_cell_39/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Sigmoid_1
lstm_cell_39/mulMullstm_cell_39/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/mul
lstm_cell_39/Sigmoid_2Sigmoidlstm_cell_39/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Sigmoid_2
lstm_cell_39/mul_1Mullstm_cell_39/split:output:2lstm_cell_39/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/mul_1
lstm_cell_39/IdentityIdentitylstm_cell_39/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Identityë
lstm_cell_39/IdentityN	IdentityNlstm_cell_39/mul_1:z:0lstm_cell_39/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-882550*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/IdentityN
lstm_cell_39/mul_2Mullstm_cell_39/Sigmoid:y:0lstm_cell_39/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/mul_2
lstm_cell_39/add_1AddV2lstm_cell_39/mul:z:0lstm_cell_39/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/add_1
lstm_cell_39/Sigmoid_3Sigmoidlstm_cell_39/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Sigmoid_3
lstm_cell_39/Sigmoid_4Sigmoidlstm_cell_39/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Sigmoid_4
lstm_cell_39/mul_3Mullstm_cell_39/add_1:z:0lstm_cell_39/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/mul_3
lstm_cell_39/Identity_1Identitylstm_cell_39/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Identity_1ê
lstm_cell_39/IdentityN_1	IdentityNlstm_cell_39/mul_3:z:0lstm_cell_39/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-882559*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/IdentityN_1¡
lstm_cell_39/mul_4Mullstm_cell_39/Sigmoid_3:y:0!lstm_cell_39/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/mul_4
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterò
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_39_matmul_readvariableop_resource-lstm_cell_39_matmul_1_readvariableop_resource,lstm_cell_39_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_882570*
condR
while_cond_882569*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeâ
IdentityIdentitytranspose_1:y:0$^lstm_cell_39/BiasAdd/ReadVariableOp#^lstm_cell_39/MatMul/ReadVariableOp%^lstm_cell_39/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ:::2J
#lstm_cell_39/BiasAdd/ReadVariableOp#lstm_cell_39/BiasAdd/ReadVariableOp2H
"lstm_cell_39/MatMul/ReadVariableOp"lstm_cell_39/MatMul/ReadVariableOp2L
$lstm_cell_39/MatMul_1/ReadVariableOp$lstm_cell_39/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ÿ
H__inference_sequential_9_layer_call_and_return_conditional_losses_883256

inputs
lstm_21_883227
lstm_21_883229
lstm_21_883231
lstm_22_883234
lstm_22_883236
lstm_22_883238
time_distributed_16_883241
time_distributed_16_883243
time_distributed_17_883248
time_distributed_17_883250
identity¢lstm_21/StatefulPartitionedCall¢lstm_22/StatefulPartitionedCall¢+time_distributed_16/StatefulPartitionedCall¢+time_distributed_17/StatefulPartitionedCall¦
lstm_21/StatefulPartitionedCallStatefulPartitionedCallinputslstm_21_883227lstm_21_883229lstm_21_883231*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_21_layer_call_and_return_conditional_losses_8824922!
lstm_21/StatefulPartitionedCallÇ
lstm_22/StatefulPartitionedCallStatefulPartitionedCall(lstm_21/StatefulPartitionedCall:output:0lstm_22_883234lstm_22_883236lstm_22_883238*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_22_layer_call_and_return_conditional_losses_8828672!
lstm_22/StatefulPartitionedCallñ
+time_distributed_16/StatefulPartitionedCallStatefulPartitionedCall(lstm_22/StatefulPartitionedCall:output:0time_distributed_16_883241time_distributed_16_883243*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_time_distributed_16_layer_call_and_return_conditional_losses_8830892-
+time_distributed_16/StatefulPartitionedCall
!time_distributed_16/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2#
!time_distributed_16/Reshape/shapeÍ
time_distributed_16/ReshapeReshape(lstm_22/StatefulPartitionedCall:output:0*time_distributed_16/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
time_distributed_16/Reshapeý
+time_distributed_17/StatefulPartitionedCallStatefulPartitionedCall4time_distributed_16/StatefulPartitionedCall:output:0time_distributed_17_883248time_distributed_17_883250*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_time_distributed_17_layer_call_and_return_conditional_losses_8831482-
+time_distributed_17/StatefulPartitionedCall
!time_distributed_17/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2#
!time_distributed_17/Reshape/shapeÙ
time_distributed_17/ReshapeReshape4time_distributed_16/StatefulPartitionedCall:output:0*time_distributed_17/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
time_distributed_17/Reshape¬
IdentityIdentity4time_distributed_17/StatefulPartitionedCall:output:0 ^lstm_21/StatefulPartitionedCall ^lstm_22/StatefulPartitionedCall,^time_distributed_16/StatefulPartitionedCall,^time_distributed_17/StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ::::::::::2B
lstm_21/StatefulPartitionedCalllstm_21/StatefulPartitionedCall2B
lstm_22/StatefulPartitionedCalllstm_22/StatefulPartitionedCall2Z
+time_distributed_16/StatefulPartitionedCall+time_distributed_16/StatefulPartitionedCall2Z
+time_distributed_17/StatefulPartitionedCall+time_distributed_17/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«
Ã
while_cond_882944
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_882944___redundant_placeholder04
0while_while_cond_882944___redundant_placeholder14
0while_while_cond_882944___redundant_placeholder24
0while_while_cond_882944___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
£
ç
&sequential_9_lstm_22_while_cond_880682F
Bsequential_9_lstm_22_while_sequential_9_lstm_22_while_loop_counterL
Hsequential_9_lstm_22_while_sequential_9_lstm_22_while_maximum_iterations*
&sequential_9_lstm_22_while_placeholder,
(sequential_9_lstm_22_while_placeholder_1,
(sequential_9_lstm_22_while_placeholder_2,
(sequential_9_lstm_22_while_placeholder_3H
Dsequential_9_lstm_22_while_less_sequential_9_lstm_22_strided_slice_1^
Zsequential_9_lstm_22_while_sequential_9_lstm_22_while_cond_880682___redundant_placeholder0^
Zsequential_9_lstm_22_while_sequential_9_lstm_22_while_cond_880682___redundant_placeholder1^
Zsequential_9_lstm_22_while_sequential_9_lstm_22_while_cond_880682___redundant_placeholder2^
Zsequential_9_lstm_22_while_sequential_9_lstm_22_while_cond_880682___redundant_placeholder3'
#sequential_9_lstm_22_while_identity
Ù
sequential_9/lstm_22/while/LessLess&sequential_9_lstm_22_while_placeholderDsequential_9_lstm_22_while_less_sequential_9_lstm_22_strided_slice_1*
T0*
_output_shapes
: 2!
sequential_9/lstm_22/while/Less
#sequential_9/lstm_22/while/IdentityIdentity#sequential_9/lstm_22/while/Less:z:0*
T0
*
_output_shapes
: 2%
#sequential_9/lstm_22/while/Identity"S
#sequential_9_lstm_22_while_identity,sequential_9/lstm_22/while/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
Ê"
Ý
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_881521

inputs

states
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource

identity_2

identity_3

identity_4¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
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
split/split_dim¿
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Sigmoid_2f
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_1]
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identityµ
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*,
_gradient_op_typeCustomGradient-881502*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
	IdentityNh
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_2]
add_1AddV2mul:z:0	mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Sigmoid_4a
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_3a

Identity_1Identity	mul_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1´
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-881511*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
IdentityN_1l
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_4¬

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_2¬

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_3¬

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*Y
_input_shapesH
F:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_namestates
«
Ã
while_cond_884978
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_884978___redundant_placeholder04
0while_while_cond_884978___redundant_placeholder14
0while_while_cond_884978___redundant_placeholder24
0while_while_cond_884978___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
Ò"
ß
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_886036

inputs
states_0
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource

identity_2

identity_3

identity_4¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
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
split/split_dim¿
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Sigmoid_2f
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_1]
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identityµ
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*,
_gradient_op_typeCustomGradient-886017*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
	IdentityNh
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_2]
add_1AddV2mul:z:0	mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Sigmoid_4a
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_3a

Identity_1Identity	mul_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1´
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-886026*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
IdentityN_1l
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_4¬

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_2¬

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_3¬

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*Y
_input_shapesH
F:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/1
§
ç
&sequential_9_lstm_21_while_cond_880513F
Bsequential_9_lstm_21_while_sequential_9_lstm_21_while_loop_counterL
Hsequential_9_lstm_21_while_sequential_9_lstm_21_while_maximum_iterations*
&sequential_9_lstm_21_while_placeholder,
(sequential_9_lstm_21_while_placeholder_1,
(sequential_9_lstm_21_while_placeholder_2,
(sequential_9_lstm_21_while_placeholder_3H
Dsequential_9_lstm_21_while_less_sequential_9_lstm_21_strided_slice_1^
Zsequential_9_lstm_21_while_sequential_9_lstm_21_while_cond_880513___redundant_placeholder0^
Zsequential_9_lstm_21_while_sequential_9_lstm_21_while_cond_880513___redundant_placeholder1^
Zsequential_9_lstm_21_while_sequential_9_lstm_21_while_cond_880513___redundant_placeholder2^
Zsequential_9_lstm_21_while_sequential_9_lstm_21_while_cond_880513___redundant_placeholder3'
#sequential_9_lstm_21_while_identity
Ù
sequential_9/lstm_21/while/LessLess&sequential_9_lstm_21_while_placeholderDsequential_9_lstm_21_while_less_sequential_9_lstm_21_strided_slice_1*
T0*
_output_shapes
: 2!
sequential_9/lstm_21/while/Less
#sequential_9/lstm_21/while/IdentityIdentity#sequential_9/lstm_21/while/Less:z:0*
T0
*
_output_shapes
: 2%
#sequential_9/lstm_21/while/Identity"S
#sequential_9_lstm_21_while_identity,sequential_9/lstm_21/while/Identity:output:0*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
¤%

while_body_881360
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_39_881384_0
while_lstm_cell_39_881386_0
while_lstm_cell_39_881388_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_39_881384
while_lstm_cell_39_881386
while_lstm_cell_39_881388¢*while/lstm_cell_39/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemä
*while/lstm_cell_39/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_39_881384_0while_lstm_cell_39_881386_0while_lstm_cell_39_881388_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_39_layer_call_and_return_conditional_losses_8809342,
*while/lstm_cell_39/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_39/StatefulPartitionedCall:output:0*
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
while/add_1
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_39/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_39/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_39/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2º
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_39/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Å
while/Identity_4Identity3while/lstm_cell_39/StatefulPartitionedCall:output:1+^while/lstm_cell_39/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4Å
while/Identity_5Identity3while/lstm_cell_39/StatefulPartitionedCall:output:2+^while/lstm_cell_39/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_39_881384while_lstm_cell_39_881384_0"8
while_lstm_cell_39_881386while_lstm_cell_39_881386_0"8
while_lstm_cell_39_881388while_lstm_cell_39_881388_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : :::2X
*while/lstm_cell_39/StatefulPartitionedCall*while/lstm_cell_39/StatefulPartitionedCall: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
¥d
ô
C__inference_lstm_21_layer_call_and_return_conditional_losses_884511
inputs_0/
+lstm_cell_39_matmul_readvariableop_resource1
-lstm_cell_39_matmul_1_readvariableop_resource0
,lstm_cell_39_biasadd_readvariableop_resource
identity¢#lstm_cell_39/BiasAdd/ReadVariableOp¢"lstm_cell_39/MatMul/ReadVariableOp¢$lstm_cell_39/MatMul_1/ReadVariableOp¢whileF
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
strided_slice/stack_2â
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
B :2
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
B :è2
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
B :2
zeros/packed/1
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
:ÿÿÿÿÿÿÿÿÿ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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
B :è2
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
B :2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2µ
"lstm_cell_39/MatMul/ReadVariableOpReadVariableOp+lstm_cell_39_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02$
"lstm_cell_39/MatMul/ReadVariableOp­
lstm_cell_39/MatMulMatMulstrided_slice_2:output:0*lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/MatMul¼
$lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_39_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02&
$lstm_cell_39/MatMul_1/ReadVariableOp©
lstm_cell_39/MatMul_1MatMulzeros:output:0,lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/MatMul_1 
lstm_cell_39/addAddV2lstm_cell_39/MatMul:product:0lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/add´
#lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_39_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_39/BiasAdd/ReadVariableOp­
lstm_cell_39/BiasAddBiasAddlstm_cell_39/add:z:0+lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/BiasAddj
lstm_cell_39/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_39/Const~
lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_39/split/split_dim÷
lstm_cell_39/splitSplit%lstm_cell_39/split/split_dim:output:0lstm_cell_39/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_39/split
lstm_cell_39/SigmoidSigmoidlstm_cell_39/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Sigmoid
lstm_cell_39/Sigmoid_1Sigmoidlstm_cell_39/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Sigmoid_1
lstm_cell_39/mulMullstm_cell_39/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/mul
lstm_cell_39/Sigmoid_2Sigmoidlstm_cell_39/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Sigmoid_2
lstm_cell_39/mul_1Mullstm_cell_39/split:output:2lstm_cell_39/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/mul_1
lstm_cell_39/IdentityIdentitylstm_cell_39/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Identityë
lstm_cell_39/IdentityN	IdentityNlstm_cell_39/mul_1:z:0lstm_cell_39/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-884396*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/IdentityN
lstm_cell_39/mul_2Mullstm_cell_39/Sigmoid:y:0lstm_cell_39/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/mul_2
lstm_cell_39/add_1AddV2lstm_cell_39/mul:z:0lstm_cell_39/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/add_1
lstm_cell_39/Sigmoid_3Sigmoidlstm_cell_39/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Sigmoid_3
lstm_cell_39/Sigmoid_4Sigmoidlstm_cell_39/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Sigmoid_4
lstm_cell_39/mul_3Mullstm_cell_39/add_1:z:0lstm_cell_39/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/mul_3
lstm_cell_39/Identity_1Identitylstm_cell_39/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Identity_1ê
lstm_cell_39/IdentityN_1	IdentityNlstm_cell_39/mul_3:z:0lstm_cell_39/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-884405*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/IdentityN_1¡
lstm_cell_39/mul_4Mullstm_cell_39/Sigmoid_3:y:0!lstm_cell_39/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/mul_4
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterò
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_39_matmul_readvariableop_resource-lstm_cell_39_matmul_1_readvariableop_resource,lstm_cell_39_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_884416*
condR
while_cond_884415*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeë
IdentityIdentitytranspose_1:y:0$^lstm_cell_39/BiasAdd/ReadVariableOp#^lstm_cell_39/MatMul/ReadVariableOp%^lstm_cell_39/MatMul_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::2J
#lstm_cell_39/BiasAdd/ReadVariableOp#lstm_cell_39/BiasAdd/ReadVariableOp2H
"lstm_cell_39/MatMul/ReadVariableOp"lstm_cell_39/MatMul/ReadVariableOp2L
$lstm_cell_39/MatMul_1/ReadVariableOp$lstm_cell_39/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
«
Ã
while_cond_881989
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_881989___redundant_placeholder04
0while_while_cond_881989___redundant_placeholder14
0while_while_cond_881989___redundant_placeholder24
0while_while_cond_881989___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:


4__inference_time_distributed_17_layer_call_fn_885804

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_time_distributed_17_layer_call_and_return_conditional_losses_8831482
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


4__inference_time_distributed_17_layer_call_fn_885813

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_time_distributed_17_layer_call_and_return_conditional_losses_8831622
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


(__inference_lstm_21_layer_call_fn_884890

inputs
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_21_layer_call_and_return_conditional_losses_8824922
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Ó	
H__inference_sequential_9_layer_call_and_return_conditional_losses_883743

inputs7
3lstm_21_lstm_cell_39_matmul_readvariableop_resource9
5lstm_21_lstm_cell_39_matmul_1_readvariableop_resource8
4lstm_21_lstm_cell_39_biasadd_readvariableop_resource7
3lstm_22_lstm_cell_40_matmul_readvariableop_resource9
5lstm_22_lstm_cell_40_matmul_1_readvariableop_resource8
4lstm_22_lstm_cell_40_biasadd_readvariableop_resource?
;time_distributed_16_dense_26_matmul_readvariableop_resource@
<time_distributed_16_dense_26_biasadd_readvariableop_resource?
;time_distributed_17_dense_27_matmul_readvariableop_resource@
<time_distributed_17_dense_27_biasadd_readvariableop_resource
identity¢+lstm_21/lstm_cell_39/BiasAdd/ReadVariableOp¢*lstm_21/lstm_cell_39/MatMul/ReadVariableOp¢,lstm_21/lstm_cell_39/MatMul_1/ReadVariableOp¢lstm_21/while¢+lstm_22/lstm_cell_40/BiasAdd/ReadVariableOp¢*lstm_22/lstm_cell_40/MatMul/ReadVariableOp¢,lstm_22/lstm_cell_40/MatMul_1/ReadVariableOp¢lstm_22/while¢3time_distributed_16/dense_26/BiasAdd/ReadVariableOp¢2time_distributed_16/dense_26/MatMul/ReadVariableOp¢3time_distributed_17/dense_27/BiasAdd/ReadVariableOp¢2time_distributed_17/dense_27/MatMul/ReadVariableOpT
lstm_21/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_21/Shape
lstm_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_21/strided_slice/stack
lstm_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_21/strided_slice/stack_1
lstm_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_21/strided_slice/stack_2
lstm_21/strided_sliceStridedSlicelstm_21/Shape:output:0$lstm_21/strided_slice/stack:output:0&lstm_21/strided_slice/stack_1:output:0&lstm_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_21/strided_slicem
lstm_21/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
lstm_21/zeros/mul/y
lstm_21/zeros/mulMullstm_21/strided_slice:output:0lstm_21/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_21/zeros/mulo
lstm_21/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_21/zeros/Less/y
lstm_21/zeros/LessLesslstm_21/zeros/mul:z:0lstm_21/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_21/zeros/Lesss
lstm_21/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
lstm_21/zeros/packed/1£
lstm_21/zeros/packedPacklstm_21/strided_slice:output:0lstm_21/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_21/zeros/packedo
lstm_21/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_21/zeros/Const
lstm_21/zerosFilllstm_21/zeros/packed:output:0lstm_21/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/zerosq
lstm_21/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
lstm_21/zeros_1/mul/y
lstm_21/zeros_1/mulMullstm_21/strided_slice:output:0lstm_21/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_21/zeros_1/muls
lstm_21/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_21/zeros_1/Less/y
lstm_21/zeros_1/LessLesslstm_21/zeros_1/mul:z:0lstm_21/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_21/zeros_1/Lessw
lstm_21/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
lstm_21/zeros_1/packed/1©
lstm_21/zeros_1/packedPacklstm_21/strided_slice:output:0!lstm_21/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_21/zeros_1/packeds
lstm_21/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_21/zeros_1/Const
lstm_21/zeros_1Filllstm_21/zeros_1/packed:output:0lstm_21/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/zeros_1
lstm_21/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_21/transpose/perm
lstm_21/transpose	Transposeinputslstm_21/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/transposeg
lstm_21/Shape_1Shapelstm_21/transpose:y:0*
T0*
_output_shapes
:2
lstm_21/Shape_1
lstm_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_21/strided_slice_1/stack
lstm_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_21/strided_slice_1/stack_1
lstm_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_21/strided_slice_1/stack_2
lstm_21/strided_slice_1StridedSlicelstm_21/Shape_1:output:0&lstm_21/strided_slice_1/stack:output:0(lstm_21/strided_slice_1/stack_1:output:0(lstm_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_21/strided_slice_1
#lstm_21/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_21/TensorArrayV2/element_shapeÒ
lstm_21/TensorArrayV2TensorListReserve,lstm_21/TensorArrayV2/element_shape:output:0 lstm_21/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_21/TensorArrayV2Ï
=lstm_21/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_21/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_21/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_21/transpose:y:0Flstm_21/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_21/TensorArrayUnstack/TensorListFromTensor
lstm_21/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_21/strided_slice_2/stack
lstm_21/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_21/strided_slice_2/stack_1
lstm_21/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_21/strided_slice_2/stack_2¬
lstm_21/strided_slice_2StridedSlicelstm_21/transpose:y:0&lstm_21/strided_slice_2/stack:output:0(lstm_21/strided_slice_2/stack_1:output:0(lstm_21/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_21/strided_slice_2Í
*lstm_21/lstm_cell_39/MatMul/ReadVariableOpReadVariableOp3lstm_21_lstm_cell_39_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02,
*lstm_21/lstm_cell_39/MatMul/ReadVariableOpÍ
lstm_21/lstm_cell_39/MatMulMatMul lstm_21/strided_slice_2:output:02lstm_21/lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/lstm_cell_39/MatMulÔ
,lstm_21/lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOp5lstm_21_lstm_cell_39_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02.
,lstm_21/lstm_cell_39/MatMul_1/ReadVariableOpÉ
lstm_21/lstm_cell_39/MatMul_1MatMullstm_21/zeros:output:04lstm_21/lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/lstm_cell_39/MatMul_1À
lstm_21/lstm_cell_39/addAddV2%lstm_21/lstm_cell_39/MatMul:product:0'lstm_21/lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/lstm_cell_39/addÌ
+lstm_21/lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOp4lstm_21_lstm_cell_39_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02-
+lstm_21/lstm_cell_39/BiasAdd/ReadVariableOpÍ
lstm_21/lstm_cell_39/BiasAddBiasAddlstm_21/lstm_cell_39/add:z:03lstm_21/lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/lstm_cell_39/BiasAddz
lstm_21/lstm_cell_39/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_21/lstm_cell_39/Const
$lstm_21/lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_21/lstm_cell_39/split/split_dim
lstm_21/lstm_cell_39/splitSplit-lstm_21/lstm_cell_39/split/split_dim:output:0%lstm_21/lstm_cell_39/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_21/lstm_cell_39/split
lstm_21/lstm_cell_39/SigmoidSigmoid#lstm_21/lstm_cell_39/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/lstm_cell_39/Sigmoid£
lstm_21/lstm_cell_39/Sigmoid_1Sigmoid#lstm_21/lstm_cell_39/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_21/lstm_cell_39/Sigmoid_1¬
lstm_21/lstm_cell_39/mulMul"lstm_21/lstm_cell_39/Sigmoid_1:y:0lstm_21/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/lstm_cell_39/mul£
lstm_21/lstm_cell_39/Sigmoid_2Sigmoid#lstm_21/lstm_cell_39/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_21/lstm_cell_39/Sigmoid_2»
lstm_21/lstm_cell_39/mul_1Mul#lstm_21/lstm_cell_39/split:output:2"lstm_21/lstm_cell_39/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/lstm_cell_39/mul_1
lstm_21/lstm_cell_39/IdentityIdentitylstm_21/lstm_cell_39/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/lstm_cell_39/Identity
lstm_21/lstm_cell_39/IdentityN	IdentityNlstm_21/lstm_cell_39/mul_1:z:0#lstm_21/lstm_cell_39/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-883429*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2 
lstm_21/lstm_cell_39/IdentityN½
lstm_21/lstm_cell_39/mul_2Mul lstm_21/lstm_cell_39/Sigmoid:y:0'lstm_21/lstm_cell_39/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/lstm_cell_39/mul_2²
lstm_21/lstm_cell_39/add_1AddV2lstm_21/lstm_cell_39/mul:z:0lstm_21/lstm_cell_39/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/lstm_cell_39/add_1£
lstm_21/lstm_cell_39/Sigmoid_3Sigmoid#lstm_21/lstm_cell_39/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_21/lstm_cell_39/Sigmoid_3
lstm_21/lstm_cell_39/Sigmoid_4Sigmoidlstm_21/lstm_cell_39/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_21/lstm_cell_39/Sigmoid_4¶
lstm_21/lstm_cell_39/mul_3Mullstm_21/lstm_cell_39/add_1:z:0"lstm_21/lstm_cell_39/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/lstm_cell_39/mul_3¡
lstm_21/lstm_cell_39/Identity_1Identitylstm_21/lstm_cell_39/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_21/lstm_cell_39/Identity_1
 lstm_21/lstm_cell_39/IdentityN_1	IdentityNlstm_21/lstm_cell_39/mul_3:z:0lstm_21/lstm_cell_39/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-883438*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2"
 lstm_21/lstm_cell_39/IdentityN_1Á
lstm_21/lstm_cell_39/mul_4Mul"lstm_21/lstm_cell_39/Sigmoid_3:y:0)lstm_21/lstm_cell_39/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/lstm_cell_39/mul_4
%lstm_21/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2'
%lstm_21/TensorArrayV2_1/element_shapeØ
lstm_21/TensorArrayV2_1TensorListReserve.lstm_21/TensorArrayV2_1/element_shape:output:0 lstm_21/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_21/TensorArrayV2_1^
lstm_21/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_21/time
 lstm_21/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_21/while/maximum_iterationsz
lstm_21/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_21/while/loop_counterê
lstm_21/whileWhile#lstm_21/while/loop_counter:output:0)lstm_21/while/maximum_iterations:output:0lstm_21/time:output:0 lstm_21/TensorArrayV2_1:handle:0lstm_21/zeros:output:0lstm_21/zeros_1:output:0 lstm_21/strided_slice_1:output:0?lstm_21/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_21_lstm_cell_39_matmul_readvariableop_resource5lstm_21_lstm_cell_39_matmul_1_readvariableop_resource4lstm_21_lstm_cell_39_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*%
bodyR
lstm_21_while_body_883449*%
condR
lstm_21_while_cond_883448*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
lstm_21/whileÅ
8lstm_21/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2:
8lstm_21/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_21/TensorArrayV2Stack/TensorListStackTensorListStacklstm_21/while:output:3Alstm_21/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02,
*lstm_21/TensorArrayV2Stack/TensorListStack
lstm_21/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_21/strided_slice_3/stack
lstm_21/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_21/strided_slice_3/stack_1
lstm_21/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_21/strided_slice_3/stack_2Ë
lstm_21/strided_slice_3StridedSlice3lstm_21/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_21/strided_slice_3/stack:output:0(lstm_21/strided_slice_3/stack_1:output:0(lstm_21/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_21/strided_slice_3
lstm_21/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_21/transpose_1/permÆ
lstm_21/transpose_1	Transpose3lstm_21/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_21/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/transpose_1v
lstm_21/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_21/runtimee
lstm_22/ShapeShapelstm_21/transpose_1:y:0*
T0*
_output_shapes
:2
lstm_22/Shape
lstm_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_22/strided_slice/stack
lstm_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_22/strided_slice/stack_1
lstm_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_22/strided_slice/stack_2
lstm_22/strided_sliceStridedSlicelstm_22/Shape:output:0$lstm_22/strided_slice/stack:output:0&lstm_22/strided_slice/stack_1:output:0&lstm_22/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_22/strided_slicel
lstm_22/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_22/zeros/mul/y
lstm_22/zeros/mulMullstm_22/strided_slice:output:0lstm_22/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_22/zeros/mulo
lstm_22/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_22/zeros/Less/y
lstm_22/zeros/LessLesslstm_22/zeros/mul:z:0lstm_22/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_22/zeros/Lessr
lstm_22/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_22/zeros/packed/1£
lstm_22/zeros/packedPacklstm_22/strided_slice:output:0lstm_22/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_22/zeros/packedo
lstm_22/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_22/zeros/Const
lstm_22/zerosFilllstm_22/zeros/packed:output:0lstm_22/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_22/zerosp
lstm_22/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_22/zeros_1/mul/y
lstm_22/zeros_1/mulMullstm_22/strided_slice:output:0lstm_22/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_22/zeros_1/muls
lstm_22/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_22/zeros_1/Less/y
lstm_22/zeros_1/LessLesslstm_22/zeros_1/mul:z:0lstm_22/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_22/zeros_1/Lessv
lstm_22/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_22/zeros_1/packed/1©
lstm_22/zeros_1/packedPacklstm_22/strided_slice:output:0!lstm_22/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_22/zeros_1/packeds
lstm_22/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_22/zeros_1/Const
lstm_22/zeros_1Filllstm_22/zeros_1/packed:output:0lstm_22/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_22/zeros_1
lstm_22/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_22/transpose/perm¤
lstm_22/transpose	Transposelstm_21/transpose_1:y:0lstm_22/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_22/transposeg
lstm_22/Shape_1Shapelstm_22/transpose:y:0*
T0*
_output_shapes
:2
lstm_22/Shape_1
lstm_22/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_22/strided_slice_1/stack
lstm_22/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_22/strided_slice_1/stack_1
lstm_22/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_22/strided_slice_1/stack_2
lstm_22/strided_slice_1StridedSlicelstm_22/Shape_1:output:0&lstm_22/strided_slice_1/stack:output:0(lstm_22/strided_slice_1/stack_1:output:0(lstm_22/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_22/strided_slice_1
#lstm_22/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_22/TensorArrayV2/element_shapeÒ
lstm_22/TensorArrayV2TensorListReserve,lstm_22/TensorArrayV2/element_shape:output:0 lstm_22/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_22/TensorArrayV2Ï
=lstm_22/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_22/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_22/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_22/transpose:y:0Flstm_22/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_22/TensorArrayUnstack/TensorListFromTensor
lstm_22/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_22/strided_slice_2/stack
lstm_22/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_22/strided_slice_2/stack_1
lstm_22/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_22/strided_slice_2/stack_2­
lstm_22/strided_slice_2StridedSlicelstm_22/transpose:y:0&lstm_22/strided_slice_2/stack:output:0(lstm_22/strided_slice_2/stack_1:output:0(lstm_22/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_22/strided_slice_2Î
*lstm_22/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp3lstm_22_lstm_cell_40_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02,
*lstm_22/lstm_cell_40/MatMul/ReadVariableOpÍ
lstm_22/lstm_cell_40/MatMulMatMul lstm_22/strided_slice_2:output:02lstm_22/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_22/lstm_cell_40/MatMulÓ
,lstm_22/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp5lstm_22_lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype02.
,lstm_22/lstm_cell_40/MatMul_1/ReadVariableOpÉ
lstm_22/lstm_cell_40/MatMul_1MatMullstm_22/zeros:output:04lstm_22/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_22/lstm_cell_40/MatMul_1À
lstm_22/lstm_cell_40/addAddV2%lstm_22/lstm_cell_40/MatMul:product:0'lstm_22/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_22/lstm_cell_40/addÌ
+lstm_22/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp4lstm_22_lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02-
+lstm_22/lstm_cell_40/BiasAdd/ReadVariableOpÍ
lstm_22/lstm_cell_40/BiasAddBiasAddlstm_22/lstm_cell_40/add:z:03lstm_22/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_22/lstm_cell_40/BiasAddz
lstm_22/lstm_cell_40/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_22/lstm_cell_40/Const
$lstm_22/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_22/lstm_cell_40/split/split_dim
lstm_22/lstm_cell_40/splitSplit-lstm_22/lstm_cell_40/split/split_dim:output:0%lstm_22/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split2
lstm_22/lstm_cell_40/split
lstm_22/lstm_cell_40/SigmoidSigmoid#lstm_22/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_22/lstm_cell_40/Sigmoid¢
lstm_22/lstm_cell_40/Sigmoid_1Sigmoid#lstm_22/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
lstm_22/lstm_cell_40/Sigmoid_1«
lstm_22/lstm_cell_40/mulMul"lstm_22/lstm_cell_40/Sigmoid_1:y:0lstm_22/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_22/lstm_cell_40/mul¢
lstm_22/lstm_cell_40/Sigmoid_2Sigmoid#lstm_22/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
lstm_22/lstm_cell_40/Sigmoid_2º
lstm_22/lstm_cell_40/mul_1Mul#lstm_22/lstm_cell_40/split:output:2"lstm_22/lstm_cell_40/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_22/lstm_cell_40/mul_1
lstm_22/lstm_cell_40/IdentityIdentitylstm_22/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_22/lstm_cell_40/Identity
lstm_22/lstm_cell_40/IdentityN	IdentityNlstm_22/lstm_cell_40/mul_1:z:0#lstm_22/lstm_cell_40/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-883598*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2 
lstm_22/lstm_cell_40/IdentityN¼
lstm_22/lstm_cell_40/mul_2Mul lstm_22/lstm_cell_40/Sigmoid:y:0'lstm_22/lstm_cell_40/IdentityN:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_22/lstm_cell_40/mul_2±
lstm_22/lstm_cell_40/add_1AddV2lstm_22/lstm_cell_40/mul:z:0lstm_22/lstm_cell_40/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_22/lstm_cell_40/add_1¢
lstm_22/lstm_cell_40/Sigmoid_3Sigmoid#lstm_22/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
lstm_22/lstm_cell_40/Sigmoid_3
lstm_22/lstm_cell_40/Sigmoid_4Sigmoidlstm_22/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
lstm_22/lstm_cell_40/Sigmoid_4µ
lstm_22/lstm_cell_40/mul_3Mullstm_22/lstm_cell_40/add_1:z:0"lstm_22/lstm_cell_40/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_22/lstm_cell_40/mul_3 
lstm_22/lstm_cell_40/Identity_1Identitylstm_22/lstm_cell_40/mul_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
lstm_22/lstm_cell_40/Identity_1
 lstm_22/lstm_cell_40/IdentityN_1	IdentityNlstm_22/lstm_cell_40/mul_3:z:0lstm_22/lstm_cell_40/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-883607*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2"
 lstm_22/lstm_cell_40/IdentityN_1À
lstm_22/lstm_cell_40/mul_4Mul"lstm_22/lstm_cell_40/Sigmoid_3:y:0)lstm_22/lstm_cell_40/IdentityN_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_22/lstm_cell_40/mul_4
%lstm_22/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2'
%lstm_22/TensorArrayV2_1/element_shapeØ
lstm_22/TensorArrayV2_1TensorListReserve.lstm_22/TensorArrayV2_1/element_shape:output:0 lstm_22/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_22/TensorArrayV2_1^
lstm_22/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_22/time
 lstm_22/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_22/while/maximum_iterationsz
lstm_22/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_22/while/loop_counteræ
lstm_22/whileWhile#lstm_22/while/loop_counter:output:0)lstm_22/while/maximum_iterations:output:0lstm_22/time:output:0 lstm_22/TensorArrayV2_1:handle:0lstm_22/zeros:output:0lstm_22/zeros_1:output:0 lstm_22/strided_slice_1:output:0?lstm_22/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_22_lstm_cell_40_matmul_readvariableop_resource5lstm_22_lstm_cell_40_matmul_1_readvariableop_resource4lstm_22_lstm_cell_40_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*%
bodyR
lstm_22_while_body_883618*%
condR
lstm_22_while_cond_883617*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
lstm_22/whileÅ
8lstm_22/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2:
8lstm_22/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_22/TensorArrayV2Stack/TensorListStackTensorListStacklstm_22/while:output:3Alstm_22/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02,
*lstm_22/TensorArrayV2Stack/TensorListStack
lstm_22/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_22/strided_slice_3/stack
lstm_22/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_22/strided_slice_3/stack_1
lstm_22/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_22/strided_slice_3/stack_2Ê
lstm_22/strided_slice_3StridedSlice3lstm_22/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_22/strided_slice_3/stack:output:0(lstm_22/strided_slice_3/stack_1:output:0(lstm_22/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
lstm_22/strided_slice_3
lstm_22/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_22/transpose_1/permÅ
lstm_22/transpose_1	Transpose3lstm_22/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_22/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_22/transpose_1v
lstm_22/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_22/runtime
!time_distributed_16/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2#
!time_distributed_16/Reshape/shape¼
time_distributed_16/ReshapeReshapelstm_22/transpose_1:y:0*time_distributed_16/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
time_distributed_16/Reshapeä
2time_distributed_16/dense_26/MatMul/ReadVariableOpReadVariableOp;time_distributed_16_dense_26_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype024
2time_distributed_16/dense_26/MatMul/ReadVariableOpè
#time_distributed_16/dense_26/MatMulMatMul$time_distributed_16/Reshape:output:0:time_distributed_16/dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#time_distributed_16/dense_26/MatMulã
3time_distributed_16/dense_26/BiasAdd/ReadVariableOpReadVariableOp<time_distributed_16_dense_26_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype025
3time_distributed_16/dense_26/BiasAdd/ReadVariableOpõ
$time_distributed_16/dense_26/BiasAddBiasAdd-time_distributed_16/dense_26/MatMul:product:0;time_distributed_16/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$time_distributed_16/dense_26/BiasAdd¸
$time_distributed_16/dense_26/SigmoidSigmoid-time_distributed_16/dense_26/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$time_distributed_16/dense_26/SigmoidÖ
 time_distributed_16/dense_26/mulMul-time_distributed_16/dense_26/BiasAdd:output:0(time_distributed_16/dense_26/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 time_distributed_16/dense_26/mul²
%time_distributed_16/dense_26/IdentityIdentity$time_distributed_16/dense_26/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2'
%time_distributed_16/dense_26/Identity©
&time_distributed_16/dense_26/IdentityN	IdentityN$time_distributed_16/dense_26/mul:z:0-time_distributed_16/dense_26/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-883720*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2(
&time_distributed_16/dense_26/IdentityN
#time_distributed_16/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ   @   2%
#time_distributed_16/Reshape_1/shapeÞ
time_distributed_16/Reshape_1Reshape/time_distributed_16/dense_26/IdentityN:output:0,time_distributed_16/Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
time_distributed_16/Reshape_1
#time_distributed_16/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2%
#time_distributed_16/Reshape_2/shapeÂ
time_distributed_16/Reshape_2Reshapelstm_22/transpose_1:y:0,time_distributed_16/Reshape_2/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
time_distributed_16/Reshape_2
!time_distributed_17/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2#
!time_distributed_17/Reshape/shapeË
time_distributed_17/ReshapeReshape&time_distributed_16/Reshape_1:output:0*time_distributed_17/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
time_distributed_17/Reshapeä
2time_distributed_17/dense_27/MatMul/ReadVariableOpReadVariableOp;time_distributed_17_dense_27_matmul_readvariableop_resource*
_output_shapes

:@*
dtype024
2time_distributed_17/dense_27/MatMul/ReadVariableOpè
#time_distributed_17/dense_27/MatMulMatMul$time_distributed_17/Reshape:output:0:time_distributed_17/dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#time_distributed_17/dense_27/MatMulã
3time_distributed_17/dense_27/BiasAdd/ReadVariableOpReadVariableOp<time_distributed_17_dense_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype025
3time_distributed_17/dense_27/BiasAdd/ReadVariableOpõ
$time_distributed_17/dense_27/BiasAddBiasAdd-time_distributed_17/dense_27/MatMul:product:0;time_distributed_17/dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$time_distributed_17/dense_27/BiasAdd
#time_distributed_17/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ      2%
#time_distributed_17/Reshape_1/shapeÜ
time_distributed_17/Reshape_1Reshape-time_distributed_17/dense_27/BiasAdd:output:0,time_distributed_17/Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
time_distributed_17/Reshape_1
#time_distributed_17/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2%
#time_distributed_17/Reshape_2/shapeÑ
time_distributed_17/Reshape_2Reshape&time_distributed_16/Reshape_1:output:0,time_distributed_17/Reshape_2/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
time_distributed_17/Reshape_2
IdentityIdentity&time_distributed_17/Reshape_1:output:0,^lstm_21/lstm_cell_39/BiasAdd/ReadVariableOp+^lstm_21/lstm_cell_39/MatMul/ReadVariableOp-^lstm_21/lstm_cell_39/MatMul_1/ReadVariableOp^lstm_21/while,^lstm_22/lstm_cell_40/BiasAdd/ReadVariableOp+^lstm_22/lstm_cell_40/MatMul/ReadVariableOp-^lstm_22/lstm_cell_40/MatMul_1/ReadVariableOp^lstm_22/while4^time_distributed_16/dense_26/BiasAdd/ReadVariableOp3^time_distributed_16/dense_26/MatMul/ReadVariableOp4^time_distributed_17/dense_27/BiasAdd/ReadVariableOp3^time_distributed_17/dense_27/MatMul/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ::::::::::2Z
+lstm_21/lstm_cell_39/BiasAdd/ReadVariableOp+lstm_21/lstm_cell_39/BiasAdd/ReadVariableOp2X
*lstm_21/lstm_cell_39/MatMul/ReadVariableOp*lstm_21/lstm_cell_39/MatMul/ReadVariableOp2\
,lstm_21/lstm_cell_39/MatMul_1/ReadVariableOp,lstm_21/lstm_cell_39/MatMul_1/ReadVariableOp2
lstm_21/whilelstm_21/while2Z
+lstm_22/lstm_cell_40/BiasAdd/ReadVariableOp+lstm_22/lstm_cell_40/BiasAdd/ReadVariableOp2X
*lstm_22/lstm_cell_40/MatMul/ReadVariableOp*lstm_22/lstm_cell_40/MatMul/ReadVariableOp2\
,lstm_22/lstm_cell_40/MatMul_1/ReadVariableOp,lstm_22/lstm_cell_40/MatMul_1/ReadVariableOp2
lstm_22/whilelstm_22/while2j
3time_distributed_16/dense_26/BiasAdd/ReadVariableOp3time_distributed_16/dense_26/BiasAdd/ReadVariableOp2h
2time_distributed_16/dense_26/MatMul/ReadVariableOp2time_distributed_16/dense_26/MatMul/ReadVariableOp2j
3time_distributed_17/dense_27/BiasAdd/ReadVariableOp3time_distributed_17/dense_27/BiasAdd/ReadVariableOp2h
2time_distributed_17/dense_27/MatMul/ReadVariableOp2time_distributed_17/dense_27/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
§

4__inference_time_distributed_17_layer_call_fn_885864

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_time_distributed_17_layer_call_and_return_conditional_losses_8822802
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
«
Ã
while_cond_885346
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_885346___redundant_placeholder04
0while_while_cond_885346___redundant_placeholder14
0while_while_cond_885346___redundant_placeholder24
0while_while_cond_885346___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:


O__inference_time_distributed_16_layer_call_and_return_conditional_losses_885749

inputs+
'dense_26_matmul_readvariableop_resource,
(dense_26_biasadd_readvariableop_resource
identity¢dense_26/BiasAdd/ReadVariableOp¢dense_26/MatMul/ReadVariableOpD
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
strided_slice/stack_2â
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
valueB"ÿÿÿÿ@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Reshape¨
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_26/MatMul/ReadVariableOp
dense_26/MatMulMatMulReshape:output:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_26/MatMul§
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_26/BiasAdd/ReadVariableOp¥
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_26/BiasAdd|
dense_26/SigmoidSigmoiddense_26/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_26/Sigmoid
dense_26/mulMuldense_26/BiasAdd:output:0dense_26/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_26/mulv
dense_26/IdentityIdentitydense_26/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_26/IdentityÙ
dense_26/IdentityN	IdentityNdense_26/mul:z:0dense_26/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-885738*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
dense_26/IdentityNq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2
Reshape_1/shape/2¨
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape
	Reshape_1Reshapedense_26/IdentityN:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
	Reshape_1¶
IdentityIdentityReshape_1:output:0 ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@::2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
%

while_body_881858
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_40_881882_0
while_lstm_cell_40_881884_0
while_lstm_cell_40_881886_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_40_881882
while_lstm_cell_40_881884
while_lstm_cell_40_881886¢*while/lstm_cell_40/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemá
*while/lstm_cell_40/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_40_881882_0while_lstm_cell_40_881884_0while_lstm_cell_40_881886_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_8815212,
*while/lstm_cell_40/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_40/StatefulPartitionedCall:output:0*
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
while/add_1
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_40/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_40/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_40/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2º
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_40/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Ä
while/Identity_4Identity3while/lstm_cell_40/StatefulPartitionedCall:output:1+^while/lstm_cell_40/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4Ä
while/Identity_5Identity3while/lstm_cell_40/StatefulPartitionedCall:output:2+^while/lstm_cell_40/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_40_881882while_lstm_cell_40_881882_0"8
while_lstm_cell_40_881884while_lstm_cell_40_881884_0"8
while_lstm_cell_40_881886while_lstm_cell_40_881886_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :::2X
*while/lstm_cell_40/StatefulPartitionedCall*while/lstm_cell_40/StatefulPartitionedCall: 
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
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
 

ã
lstm_21_while_cond_883448,
(lstm_21_while_lstm_21_while_loop_counter2
.lstm_21_while_lstm_21_while_maximum_iterations
lstm_21_while_placeholder
lstm_21_while_placeholder_1
lstm_21_while_placeholder_2
lstm_21_while_placeholder_3.
*lstm_21_while_less_lstm_21_strided_slice_1D
@lstm_21_while_lstm_21_while_cond_883448___redundant_placeholder0D
@lstm_21_while_lstm_21_while_cond_883448___redundant_placeholder1D
@lstm_21_while_lstm_21_while_cond_883448___redundant_placeholder2D
@lstm_21_while_lstm_21_while_cond_883448___redundant_placeholder3
lstm_21_while_identity

lstm_21/while/LessLesslstm_21_while_placeholder*lstm_21_while_less_lstm_21_strided_slice_1*
T0*
_output_shapes
: 2
lstm_21/while/Lessu
lstm_21/while/IdentityIdentitylstm_21/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_21/while/Identity"9
lstm_21_while_identitylstm_21/while/Identity:output:0*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
õ
ú
-__inference_sequential_9_layer_call_fn_884165

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
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_9_layer_call_and_return_conditional_losses_8833132
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¯
Ã
while_cond_881359
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_881359___redundant_placeholder04
0while_while_cond_881359___redundant_placeholder14
0while_while_cond_881359___redundant_placeholder24
0while_while_cond_881359___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ì"
ß
H__inference_lstm_cell_39_layer_call_and_return_conditional_losses_885916

inputs
states_0
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource

identity_2

identity_3

identity_4¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
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
split/split_dimÃ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
muld
	Sigmoid_2Sigmoidsplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2g
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1^
IdentityIdentity	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity·
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*,
_gradient_op_typeCustomGradient-885897*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
	IdentityNi
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2^
add_1AddV2mul:z:0	mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1d
	Sigmoid_3Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_3_
	Sigmoid_4Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_4b
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_3b

Identity_1Identity	mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1¶
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-885906*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
IdentityN_1m
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_4­

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2­

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_3­

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
d
ô
C__inference_lstm_22_layer_call_and_return_conditional_losses_885615
inputs_0/
+lstm_cell_40_matmul_readvariableop_resource1
-lstm_cell_40_matmul_1_readvariableop_resource0
,lstm_cell_40_biasadd_readvariableop_resource
identity¢#lstm_cell_40/BiasAdd/ReadVariableOp¢"lstm_cell_40/MatMul/ReadVariableOp¢$lstm_cell_40/MatMul_1/ReadVariableOp¢whileF
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
strided_slice/stack_2â
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
B :è2
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
zeros/packed/1
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
:ÿÿÿÿÿÿÿÿÿ@2
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
B :è2
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
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2¶
"lstm_cell_40/MatMul/ReadVariableOpReadVariableOp+lstm_cell_40_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02$
"lstm_cell_40/MatMul/ReadVariableOp­
lstm_cell_40/MatMulMatMulstrided_slice_2:output:0*lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/MatMul»
$lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype02&
$lstm_cell_40/MatMul_1/ReadVariableOp©
lstm_cell_40/MatMul_1MatMulzeros:output:0,lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/MatMul_1 
lstm_cell_40/addAddV2lstm_cell_40/MatMul:product:0lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/add´
#lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_40/BiasAdd/ReadVariableOp­
lstm_cell_40/BiasAddBiasAddlstm_cell_40/add:z:0+lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/BiasAddj
lstm_cell_40/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_40/Const~
lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_40/split/split_dimó
lstm_cell_40/splitSplit%lstm_cell_40/split/split_dim:output:0lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split2
lstm_cell_40/split
lstm_cell_40/SigmoidSigmoidlstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Sigmoid
lstm_cell_40/Sigmoid_1Sigmoidlstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Sigmoid_1
lstm_cell_40/mulMullstm_cell_40/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/mul
lstm_cell_40/Sigmoid_2Sigmoidlstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Sigmoid_2
lstm_cell_40/mul_1Mullstm_cell_40/split:output:2lstm_cell_40/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/mul_1
lstm_cell_40/IdentityIdentitylstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Identityé
lstm_cell_40/IdentityN	IdentityNlstm_cell_40/mul_1:z:0lstm_cell_40/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-885500*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/IdentityN
lstm_cell_40/mul_2Mullstm_cell_40/Sigmoid:y:0lstm_cell_40/IdentityN:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/mul_2
lstm_cell_40/add_1AddV2lstm_cell_40/mul:z:0lstm_cell_40/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/add_1
lstm_cell_40/Sigmoid_3Sigmoidlstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Sigmoid_3
lstm_cell_40/Sigmoid_4Sigmoidlstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Sigmoid_4
lstm_cell_40/mul_3Mullstm_cell_40/add_1:z:0lstm_cell_40/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/mul_3
lstm_cell_40/Identity_1Identitylstm_cell_40/mul_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Identity_1è
lstm_cell_40/IdentityN_1	IdentityNlstm_cell_40/mul_3:z:0lstm_cell_40/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-885509*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/IdentityN_1 
lstm_cell_40/mul_4Mullstm_cell_40/Sigmoid_3:y:0!lstm_cell_40/IdentityN_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/mul_4
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterî
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_40_matmul_readvariableop_resource-lstm_cell_40_matmul_1_readvariableop_resource,lstm_cell_40_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_885520*
condR
while_cond_885519*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeê
IdentityIdentitytranspose_1:y:0$^lstm_cell_40/BiasAdd/ReadVariableOp#^lstm_cell_40/MatMul/ReadVariableOp%^lstm_cell_40/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::2J
#lstm_cell_40/BiasAdd/ReadVariableOp#lstm_cell_40/BiasAdd/ReadVariableOp2H
"lstm_cell_40/MatMul/ReadVariableOp"lstm_cell_40/MatMul/ReadVariableOp2L
$lstm_cell_40/MatMul_1/ReadVariableOp$lstm_cell_40/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ÀL
þ
while_body_882945
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_40_matmul_readvariableop_resource_09
5while_lstm_cell_40_matmul_1_readvariableop_resource_08
4while_lstm_cell_40_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_40_matmul_readvariableop_resource7
3while_lstm_cell_40_matmul_1_readvariableop_resource6
2while_lstm_cell_40_biasadd_readvariableop_resource¢)while/lstm_cell_40/BiasAdd/ReadVariableOp¢(while/lstm_cell_40/MatMul/ReadVariableOp¢*while/lstm_cell_40/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÊ
(while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_40_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02*
(while/lstm_cell_40/MatMul/ReadVariableOp×
while/lstm_cell_40/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/MatMulÏ
*while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes
:	@*
dtype02,
*while/lstm_cell_40/MatMul_1/ReadVariableOpÀ
while/lstm_cell_40/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/MatMul_1¸
while/lstm_cell_40/addAddV2#while/lstm_cell_40/MatMul:product:0%while/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/addÈ
)while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_40/BiasAdd/ReadVariableOpÅ
while/lstm_cell_40/BiasAddBiasAddwhile/lstm_cell_40/add:z:01while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/BiasAddv
while/lstm_cell_40/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_40/Const
"while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_40/split/split_dim
while/lstm_cell_40/splitSplit+while/lstm_cell_40/split/split_dim:output:0#while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split2
while/lstm_cell_40/split
while/lstm_cell_40/SigmoidSigmoid!while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Sigmoid
while/lstm_cell_40/Sigmoid_1Sigmoid!while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Sigmoid_1 
while/lstm_cell_40/mulMul while/lstm_cell_40/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/mul
while/lstm_cell_40/Sigmoid_2Sigmoid!while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Sigmoid_2²
while/lstm_cell_40/mul_1Mul!while/lstm_cell_40/split:output:2 while/lstm_cell_40/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/mul_1
while/lstm_cell_40/IdentityIdentitywhile/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Identity
while/lstm_cell_40/IdentityN	IdentityNwhile/lstm_cell_40/mul_1:z:0!while/lstm_cell_40/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-882988*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/IdentityN´
while/lstm_cell_40/mul_2Mulwhile/lstm_cell_40/Sigmoid:y:0%while/lstm_cell_40/IdentityN:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/mul_2©
while/lstm_cell_40/add_1AddV2while/lstm_cell_40/mul:z:0while/lstm_cell_40/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/add_1
while/lstm_cell_40/Sigmoid_3Sigmoid!while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Sigmoid_3
while/lstm_cell_40/Sigmoid_4Sigmoidwhile/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Sigmoid_4­
while/lstm_cell_40/mul_3Mulwhile/lstm_cell_40/add_1:z:0 while/lstm_cell_40/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/mul_3
while/lstm_cell_40/Identity_1Identitywhile/lstm_cell_40/mul_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Identity_1
while/lstm_cell_40/IdentityN_1	IdentityNwhile/lstm_cell_40/mul_3:z:0while/lstm_cell_40/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-882997*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2 
while/lstm_cell_40/IdentityN_1¸
while/lstm_cell_40/mul_4Mul while/lstm_cell_40/Sigmoid_3:y:0'while/lstm_cell_40/IdentityN_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/mul_4à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_40/mul_4:z:0*
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
while/add_1â
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_40/mul_4:z:0*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_40/add_1:z:0*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_40_biasadd_readvariableop_resource4while_lstm_cell_40_biasadd_readvariableop_resource_0"l
3while_lstm_cell_40_matmul_1_readvariableop_resource5while_lstm_cell_40_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_40_matmul_readvariableop_resource3while_lstm_cell_40_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :::2V
)while/lstm_cell_40/BiasAdd/ReadVariableOp)while/lstm_cell_40/BiasAdd/ReadVariableOp2T
(while/lstm_cell_40/MatMul/ReadVariableOp(while/lstm_cell_40/MatMul/ReadVariableOp2X
*while/lstm_cell_40/MatMul_1/ReadVariableOp*while/lstm_cell_40/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 


4__inference_time_distributed_16_layer_call_fn_885686

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_time_distributed_16_layer_call_and_return_conditional_losses_8830892
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


ã
lstm_22_while_cond_883989,
(lstm_22_while_lstm_22_while_loop_counter2
.lstm_22_while_lstm_22_while_maximum_iterations
lstm_22_while_placeholder
lstm_22_while_placeholder_1
lstm_22_while_placeholder_2
lstm_22_while_placeholder_3.
*lstm_22_while_less_lstm_22_strided_slice_1D
@lstm_22_while_lstm_22_while_cond_883989___redundant_placeholder0D
@lstm_22_while_lstm_22_while_cond_883989___redundant_placeholder1D
@lstm_22_while_lstm_22_while_cond_883989___redundant_placeholder2D
@lstm_22_while_lstm_22_while_cond_883989___redundant_placeholder3
lstm_22_while_identity

lstm_22/while/LessLesslstm_22_while_placeholder*lstm_22_while_less_lstm_22_strided_slice_1*
T0*
_output_shapes
: 2
lstm_22/while/Lessu
lstm_22/while/IdentityIdentitylstm_22/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_22/while/Identity"9
lstm_22_while_identitylstm_22/while/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
	

-__inference_sequential_9_layer_call_fn_883279
lstm_21_input
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
identity¢StatefulPartitionedCallë
StatefulPartitionedCallStatefulPartitionedCalllstm_21_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_9_layer_call_and_return_conditional_losses_8832562
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_21_input
ëY
þ	
lstm_22_while_body_883618,
(lstm_22_while_lstm_22_while_loop_counter2
.lstm_22_while_lstm_22_while_maximum_iterations
lstm_22_while_placeholder
lstm_22_while_placeholder_1
lstm_22_while_placeholder_2
lstm_22_while_placeholder_3+
'lstm_22_while_lstm_22_strided_slice_1_0g
clstm_22_while_tensorarrayv2read_tensorlistgetitem_lstm_22_tensorarrayunstack_tensorlistfromtensor_0?
;lstm_22_while_lstm_cell_40_matmul_readvariableop_resource_0A
=lstm_22_while_lstm_cell_40_matmul_1_readvariableop_resource_0@
<lstm_22_while_lstm_cell_40_biasadd_readvariableop_resource_0
lstm_22_while_identity
lstm_22_while_identity_1
lstm_22_while_identity_2
lstm_22_while_identity_3
lstm_22_while_identity_4
lstm_22_while_identity_5)
%lstm_22_while_lstm_22_strided_slice_1e
alstm_22_while_tensorarrayv2read_tensorlistgetitem_lstm_22_tensorarrayunstack_tensorlistfromtensor=
9lstm_22_while_lstm_cell_40_matmul_readvariableop_resource?
;lstm_22_while_lstm_cell_40_matmul_1_readvariableop_resource>
:lstm_22_while_lstm_cell_40_biasadd_readvariableop_resource¢1lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOp¢0lstm_22/while/lstm_cell_40/MatMul/ReadVariableOp¢2lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOpÓ
?lstm_22/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_22/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_22/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_22_while_tensorarrayv2read_tensorlistgetitem_lstm_22_tensorarrayunstack_tensorlistfromtensor_0lstm_22_while_placeholderHlstm_22/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_22/while/TensorArrayV2Read/TensorListGetItemâ
0lstm_22/while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp;lstm_22_while_lstm_cell_40_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype022
0lstm_22/while/lstm_cell_40/MatMul/ReadVariableOp÷
!lstm_22/while/lstm_cell_40/MatMulMatMul8lstm_22/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_22/while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_22/while/lstm_cell_40/MatMulç
2lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp=lstm_22_while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes
:	@*
dtype024
2lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOpà
#lstm_22/while/lstm_cell_40/MatMul_1MatMullstm_22_while_placeholder_2:lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#lstm_22/while/lstm_cell_40/MatMul_1Ø
lstm_22/while/lstm_cell_40/addAddV2+lstm_22/while/lstm_cell_40/MatMul:product:0-lstm_22/while/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_22/while/lstm_cell_40/addà
1lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp<lstm_22_while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype023
1lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOpå
"lstm_22/while/lstm_cell_40/BiasAddBiasAdd"lstm_22/while/lstm_cell_40/add:z:09lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_22/while/lstm_cell_40/BiasAdd
 lstm_22/while/lstm_cell_40/ConstConst*
_output_shapes
: *
dtype0*
value	B :2"
 lstm_22/while/lstm_cell_40/Const
*lstm_22/while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_22/while/lstm_cell_40/split/split_dim«
 lstm_22/while/lstm_cell_40/splitSplit3lstm_22/while/lstm_cell_40/split/split_dim:output:0+lstm_22/while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split2"
 lstm_22/while/lstm_cell_40/split°
"lstm_22/while/lstm_cell_40/SigmoidSigmoid)lstm_22/while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"lstm_22/while/lstm_cell_40/Sigmoid´
$lstm_22/while/lstm_cell_40/Sigmoid_1Sigmoid)lstm_22/while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$lstm_22/while/lstm_cell_40/Sigmoid_1À
lstm_22/while/lstm_cell_40/mulMul(lstm_22/while/lstm_cell_40/Sigmoid_1:y:0lstm_22_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
lstm_22/while/lstm_cell_40/mul´
$lstm_22/while/lstm_cell_40/Sigmoid_2Sigmoid)lstm_22/while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$lstm_22/while/lstm_cell_40/Sigmoid_2Ò
 lstm_22/while/lstm_cell_40/mul_1Mul)lstm_22/while/lstm_cell_40/split:output:2(lstm_22/while/lstm_cell_40/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 lstm_22/while/lstm_cell_40/mul_1®
#lstm_22/while/lstm_cell_40/IdentityIdentity$lstm_22/while/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#lstm_22/while/lstm_cell_40/Identity¡
$lstm_22/while/lstm_cell_40/IdentityN	IdentityN$lstm_22/while/lstm_cell_40/mul_1:z:0)lstm_22/while/lstm_cell_40/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-883661*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2&
$lstm_22/while/lstm_cell_40/IdentityNÔ
 lstm_22/while/lstm_cell_40/mul_2Mul&lstm_22/while/lstm_cell_40/Sigmoid:y:0-lstm_22/while/lstm_cell_40/IdentityN:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 lstm_22/while/lstm_cell_40/mul_2É
 lstm_22/while/lstm_cell_40/add_1AddV2"lstm_22/while/lstm_cell_40/mul:z:0$lstm_22/while/lstm_cell_40/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 lstm_22/while/lstm_cell_40/add_1´
$lstm_22/while/lstm_cell_40/Sigmoid_3Sigmoid)lstm_22/while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$lstm_22/while/lstm_cell_40/Sigmoid_3¯
$lstm_22/while/lstm_cell_40/Sigmoid_4Sigmoid$lstm_22/while/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$lstm_22/while/lstm_cell_40/Sigmoid_4Í
 lstm_22/while/lstm_cell_40/mul_3Mul$lstm_22/while/lstm_cell_40/add_1:z:0(lstm_22/while/lstm_cell_40/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 lstm_22/while/lstm_cell_40/mul_3²
%lstm_22/while/lstm_cell_40/Identity_1Identity$lstm_22/while/lstm_cell_40/mul_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2'
%lstm_22/while/lstm_cell_40/Identity_1 
&lstm_22/while/lstm_cell_40/IdentityN_1	IdentityN$lstm_22/while/lstm_cell_40/mul_3:z:0$lstm_22/while/lstm_cell_40/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-883670*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2(
&lstm_22/while/lstm_cell_40/IdentityN_1Ø
 lstm_22/while/lstm_cell_40/mul_4Mul(lstm_22/while/lstm_cell_40/Sigmoid_3:y:0/lstm_22/while/lstm_cell_40/IdentityN_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 lstm_22/while/lstm_cell_40/mul_4
2lstm_22/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_22_while_placeholder_1lstm_22_while_placeholder$lstm_22/while/lstm_cell_40/mul_4:z:0*
_output_shapes
: *
element_dtype024
2lstm_22/while/TensorArrayV2Write/TensorListSetIteml
lstm_22/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_22/while/add/y
lstm_22/while/addAddV2lstm_22_while_placeholderlstm_22/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_22/while/addp
lstm_22/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_22/while/add_1/y
lstm_22/while/add_1AddV2(lstm_22_while_lstm_22_while_loop_counterlstm_22/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_22/while/add_1
lstm_22/while/IdentityIdentitylstm_22/while/add_1:z:02^lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOp1^lstm_22/while/lstm_cell_40/MatMul/ReadVariableOp3^lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_22/while/Identity­
lstm_22/while/Identity_1Identity.lstm_22_while_lstm_22_while_maximum_iterations2^lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOp1^lstm_22/while/lstm_cell_40/MatMul/ReadVariableOp3^lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_22/while/Identity_1
lstm_22/while/Identity_2Identitylstm_22/while/add:z:02^lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOp1^lstm_22/while/lstm_cell_40/MatMul/ReadVariableOp3^lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_22/while/Identity_2Á
lstm_22/while/Identity_3IdentityBlstm_22/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOp1^lstm_22/while/lstm_cell_40/MatMul/ReadVariableOp3^lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_22/while/Identity_3´
lstm_22/while/Identity_4Identity$lstm_22/while/lstm_cell_40/mul_4:z:02^lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOp1^lstm_22/while/lstm_cell_40/MatMul/ReadVariableOp3^lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_22/while/Identity_4´
lstm_22/while/Identity_5Identity$lstm_22/while/lstm_cell_40/add_1:z:02^lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOp1^lstm_22/while/lstm_cell_40/MatMul/ReadVariableOp3^lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_22/while/Identity_5"9
lstm_22_while_identitylstm_22/while/Identity:output:0"=
lstm_22_while_identity_1!lstm_22/while/Identity_1:output:0"=
lstm_22_while_identity_2!lstm_22/while/Identity_2:output:0"=
lstm_22_while_identity_3!lstm_22/while/Identity_3:output:0"=
lstm_22_while_identity_4!lstm_22/while/Identity_4:output:0"=
lstm_22_while_identity_5!lstm_22/while/Identity_5:output:0"P
%lstm_22_while_lstm_22_strided_slice_1'lstm_22_while_lstm_22_strided_slice_1_0"z
:lstm_22_while_lstm_cell_40_biasadd_readvariableop_resource<lstm_22_while_lstm_cell_40_biasadd_readvariableop_resource_0"|
;lstm_22_while_lstm_cell_40_matmul_1_readvariableop_resource=lstm_22_while_lstm_cell_40_matmul_1_readvariableop_resource_0"x
9lstm_22_while_lstm_cell_40_matmul_readvariableop_resource;lstm_22_while_lstm_cell_40_matmul_readvariableop_resource_0"È
alstm_22_while_tensorarrayv2read_tensorlistgetitem_lstm_22_tensorarrayunstack_tensorlistfromtensorclstm_22_while_tensorarrayv2read_tensorlistgetitem_lstm_22_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :::2f
1lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOp1lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOp2d
0lstm_22/while/lstm_cell_40/MatMul/ReadVariableOp0lstm_22/while/lstm_cell_40/MatMul/ReadVariableOp2h
2lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOp2lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
·

O__inference_time_distributed_17_layer_call_and_return_conditional_losses_885855

inputs+
'dense_27_matmul_readvariableop_resource,
(dense_27_biasadd_readvariableop_resource
identity¢dense_27/BiasAdd/ReadVariableOp¢dense_27/MatMul/ReadVariableOpD
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
strided_slice/stack_2â
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
valueB"ÿÿÿÿ@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Reshape¨
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_27/MatMul/ReadVariableOp
dense_27/MatMulMatMulReshape:output:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_27/MatMul§
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_27/BiasAdd/ReadVariableOp¥
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_27/BiasAddq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2¨
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape
	Reshape_1Reshapedense_27/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	Reshape_1¶
IdentityIdentityReshape_1:output:0 ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@::2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ÚL
þ
while_body_884784
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_39_matmul_readvariableop_resource_09
5while_lstm_cell_39_matmul_1_readvariableop_resource_08
4while_lstm_cell_39_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_39_matmul_readvariableop_resource7
3while_lstm_cell_39_matmul_1_readvariableop_resource6
2while_lstm_cell_39_biasadd_readvariableop_resource¢)while/lstm_cell_39/BiasAdd/ReadVariableOp¢(while/lstm_cell_39/MatMul/ReadVariableOp¢*while/lstm_cell_39/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/lstm_cell_39/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_39_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02*
(while/lstm_cell_39/MatMul/ReadVariableOp×
while/lstm_cell_39/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/MatMulÐ
*while/lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_39_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02,
*while/lstm_cell_39/MatMul_1/ReadVariableOpÀ
while/lstm_cell_39/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/MatMul_1¸
while/lstm_cell_39/addAddV2#while/lstm_cell_39/MatMul:product:0%while/lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/addÈ
)while/lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_39_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_39/BiasAdd/ReadVariableOpÅ
while/lstm_cell_39/BiasAddBiasAddwhile/lstm_cell_39/add:z:01while/lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/BiasAddv
while/lstm_cell_39/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_39/Const
"while/lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_39/split/split_dim
while/lstm_cell_39/splitSplit+while/lstm_cell_39/split/split_dim:output:0#while/lstm_cell_39/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_39/split
while/lstm_cell_39/SigmoidSigmoid!while/lstm_cell_39/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Sigmoid
while/lstm_cell_39/Sigmoid_1Sigmoid!while/lstm_cell_39/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Sigmoid_1¡
while/lstm_cell_39/mulMul while/lstm_cell_39/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/mul
while/lstm_cell_39/Sigmoid_2Sigmoid!while/lstm_cell_39/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Sigmoid_2³
while/lstm_cell_39/mul_1Mul!while/lstm_cell_39/split:output:2 while/lstm_cell_39/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/mul_1
while/lstm_cell_39/IdentityIdentitywhile/lstm_cell_39/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Identity
while/lstm_cell_39/IdentityN	IdentityNwhile/lstm_cell_39/mul_1:z:0!while/lstm_cell_39/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-884827*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/IdentityNµ
while/lstm_cell_39/mul_2Mulwhile/lstm_cell_39/Sigmoid:y:0%while/lstm_cell_39/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/mul_2ª
while/lstm_cell_39/add_1AddV2while/lstm_cell_39/mul:z:0while/lstm_cell_39/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/add_1
while/lstm_cell_39/Sigmoid_3Sigmoid!while/lstm_cell_39/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Sigmoid_3
while/lstm_cell_39/Sigmoid_4Sigmoidwhile/lstm_cell_39/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Sigmoid_4®
while/lstm_cell_39/mul_3Mulwhile/lstm_cell_39/add_1:z:0 while/lstm_cell_39/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/mul_3
while/lstm_cell_39/Identity_1Identitywhile/lstm_cell_39/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Identity_1
while/lstm_cell_39/IdentityN_1	IdentityNwhile/lstm_cell_39/mul_3:z:0while/lstm_cell_39/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-884836*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2 
while/lstm_cell_39/IdentityN_1¹
while/lstm_cell_39/mul_4Mul while/lstm_cell_39/Sigmoid_3:y:0'while/lstm_cell_39/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/mul_4à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_39/mul_4:z:0*
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
while/add_1â
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_39/mul_4:z:0*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_39/add_1:z:0*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_39_biasadd_readvariableop_resource4while_lstm_cell_39_biasadd_readvariableop_resource_0"l
3while_lstm_cell_39_matmul_1_readvariableop_resource5while_lstm_cell_39_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_39_matmul_readvariableop_resource3while_lstm_cell_39_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : :::2V
)while/lstm_cell_39/BiasAdd/ReadVariableOp)while/lstm_cell_39/BiasAdd/ReadVariableOp2T
(while/lstm_cell_39/MatMul/ReadVariableOp(while/lstm_cell_39/MatMul/ReadVariableOp2X
*while/lstm_cell_39/MatMul_1/ReadVariableOp*while/lstm_cell_39/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
§

4__inference_time_distributed_17_layer_call_fn_885873

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_time_distributed_17_layer_call_and_return_conditional_losses_8823092
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ú
ø
$__inference_signature_wrapper_883371
lstm_21_input
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
identity¢StatefulPartitionedCallÄ
StatefulPartitionedCallStatefulPartitionedCalllstm_21_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_8808082
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_21_input
¯
Ã
while_cond_884242
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_884242___redundant_placeholder04
0while_while_cond_884242___redundant_placeholder14
0while_while_cond_884242___redundant_placeholder24
0while_while_cond_884242___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Çc
ò
C__inference_lstm_22_layer_call_and_return_conditional_losses_883040

inputs/
+lstm_cell_40_matmul_readvariableop_resource1
-lstm_cell_40_matmul_1_readvariableop_resource0
,lstm_cell_40_biasadd_readvariableop_resource
identity¢#lstm_cell_40/BiasAdd/ReadVariableOp¢"lstm_cell_40/MatMul/ReadVariableOp¢$lstm_cell_40/MatMul_1/ReadVariableOp¢whileD
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
strided_slice/stack_2â
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
B :è2
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
zeros/packed/1
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
:ÿÿÿÿÿÿÿÿÿ@2
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
B :è2
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
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ@2	
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
:ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2¶
"lstm_cell_40/MatMul/ReadVariableOpReadVariableOp+lstm_cell_40_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02$
"lstm_cell_40/MatMul/ReadVariableOp­
lstm_cell_40/MatMulMatMulstrided_slice_2:output:0*lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/MatMul»
$lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype02&
$lstm_cell_40/MatMul_1/ReadVariableOp©
lstm_cell_40/MatMul_1MatMulzeros:output:0,lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/MatMul_1 
lstm_cell_40/addAddV2lstm_cell_40/MatMul:product:0lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/add´
#lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_40/BiasAdd/ReadVariableOp­
lstm_cell_40/BiasAddBiasAddlstm_cell_40/add:z:0+lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/BiasAddj
lstm_cell_40/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_40/Const~
lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_40/split/split_dimó
lstm_cell_40/splitSplit%lstm_cell_40/split/split_dim:output:0lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split2
lstm_cell_40/split
lstm_cell_40/SigmoidSigmoidlstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Sigmoid
lstm_cell_40/Sigmoid_1Sigmoidlstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Sigmoid_1
lstm_cell_40/mulMullstm_cell_40/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/mul
lstm_cell_40/Sigmoid_2Sigmoidlstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Sigmoid_2
lstm_cell_40/mul_1Mullstm_cell_40/split:output:2lstm_cell_40/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/mul_1
lstm_cell_40/IdentityIdentitylstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Identityé
lstm_cell_40/IdentityN	IdentityNlstm_cell_40/mul_1:z:0lstm_cell_40/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-882925*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/IdentityN
lstm_cell_40/mul_2Mullstm_cell_40/Sigmoid:y:0lstm_cell_40/IdentityN:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/mul_2
lstm_cell_40/add_1AddV2lstm_cell_40/mul:z:0lstm_cell_40/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/add_1
lstm_cell_40/Sigmoid_3Sigmoidlstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Sigmoid_3
lstm_cell_40/Sigmoid_4Sigmoidlstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Sigmoid_4
lstm_cell_40/mul_3Mullstm_cell_40/add_1:z:0lstm_cell_40/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/mul_3
lstm_cell_40/Identity_1Identitylstm_cell_40/mul_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Identity_1è
lstm_cell_40/IdentityN_1	IdentityNlstm_cell_40/mul_3:z:0lstm_cell_40/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-882934*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/IdentityN_1 
lstm_cell_40/mul_4Mullstm_cell_40/Sigmoid_3:y:0!lstm_cell_40/IdentityN_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/mul_4
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterî
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_40_matmul_readvariableop_resource-lstm_cell_40_matmul_1_readvariableop_resource,lstm_cell_40_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_882945*
condR
while_cond_882944*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¥
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeá
IdentityIdentitytranspose_1:y:0$^lstm_cell_40/BiasAdd/ReadVariableOp#^lstm_cell_40/MatMul/ReadVariableOp%^lstm_cell_40/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ:::2J
#lstm_cell_40/BiasAdd/ReadVariableOp#lstm_cell_40/BiasAdd/ReadVariableOp2H
"lstm_cell_40/MatMul/ReadVariableOp"lstm_cell_40/MatMul/ReadVariableOp2L
$lstm_cell_40/MatMul_1/ReadVariableOp$lstm_cell_40/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


(__inference_lstm_22_layer_call_fn_885258

inputs
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_22_layer_call_and_return_conditional_losses_8828672
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ:::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ê"
Ý
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_881564

inputs

states
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource

identity_2

identity_3

identity_4¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
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
split/split_dim¿
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Sigmoid_2f
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_1]
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identityµ
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*,
_gradient_op_typeCustomGradient-881545*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
	IdentityNh
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_2]
add_1AddV2mul:z:0	mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Sigmoid_4a
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_3a

Identity_1Identity	mul_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1´
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-881554*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
IdentityN_1l
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_4¬

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_2¬

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_3¬

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*Y
_input_shapesH
F:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_namestates
æc
ò
C__inference_lstm_21_layer_call_and_return_conditional_losses_882492

inputs/
+lstm_cell_39_matmul_readvariableop_resource1
-lstm_cell_39_matmul_1_readvariableop_resource0
,lstm_cell_39_biasadd_readvariableop_resource
identity¢#lstm_cell_39/BiasAdd/ReadVariableOp¢"lstm_cell_39/MatMul/ReadVariableOp¢$lstm_cell_39/MatMul_1/ReadVariableOp¢whileD
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
strided_slice/stack_2â
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
B :2
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
B :è2
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
B :2
zeros/packed/1
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
:ÿÿÿÿÿÿÿÿÿ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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
B :è2
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
B :2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2µ
"lstm_cell_39/MatMul/ReadVariableOpReadVariableOp+lstm_cell_39_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02$
"lstm_cell_39/MatMul/ReadVariableOp­
lstm_cell_39/MatMulMatMulstrided_slice_2:output:0*lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/MatMul¼
$lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_39_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02&
$lstm_cell_39/MatMul_1/ReadVariableOp©
lstm_cell_39/MatMul_1MatMulzeros:output:0,lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/MatMul_1 
lstm_cell_39/addAddV2lstm_cell_39/MatMul:product:0lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/add´
#lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_39_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_39/BiasAdd/ReadVariableOp­
lstm_cell_39/BiasAddBiasAddlstm_cell_39/add:z:0+lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/BiasAddj
lstm_cell_39/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_39/Const~
lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_39/split/split_dim÷
lstm_cell_39/splitSplit%lstm_cell_39/split/split_dim:output:0lstm_cell_39/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_39/split
lstm_cell_39/SigmoidSigmoidlstm_cell_39/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Sigmoid
lstm_cell_39/Sigmoid_1Sigmoidlstm_cell_39/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Sigmoid_1
lstm_cell_39/mulMullstm_cell_39/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/mul
lstm_cell_39/Sigmoid_2Sigmoidlstm_cell_39/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Sigmoid_2
lstm_cell_39/mul_1Mullstm_cell_39/split:output:2lstm_cell_39/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/mul_1
lstm_cell_39/IdentityIdentitylstm_cell_39/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Identityë
lstm_cell_39/IdentityN	IdentityNlstm_cell_39/mul_1:z:0lstm_cell_39/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-882377*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/IdentityN
lstm_cell_39/mul_2Mullstm_cell_39/Sigmoid:y:0lstm_cell_39/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/mul_2
lstm_cell_39/add_1AddV2lstm_cell_39/mul:z:0lstm_cell_39/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/add_1
lstm_cell_39/Sigmoid_3Sigmoidlstm_cell_39/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Sigmoid_3
lstm_cell_39/Sigmoid_4Sigmoidlstm_cell_39/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Sigmoid_4
lstm_cell_39/mul_3Mullstm_cell_39/add_1:z:0lstm_cell_39/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/mul_3
lstm_cell_39/Identity_1Identitylstm_cell_39/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Identity_1ê
lstm_cell_39/IdentityN_1	IdentityNlstm_cell_39/mul_3:z:0lstm_cell_39/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-882386*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/IdentityN_1¡
lstm_cell_39/mul_4Mullstm_cell_39/Sigmoid_3:y:0!lstm_cell_39/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/mul_4
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterò
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_39_matmul_readvariableop_resource-lstm_cell_39_matmul_1_readvariableop_resource,lstm_cell_39_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_882397*
condR
while_cond_882396*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeâ
IdentityIdentitytranspose_1:y:0$^lstm_cell_39/BiasAdd/ReadVariableOp#^lstm_cell_39/MatMul/ReadVariableOp%^lstm_cell_39/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ:::2J
#lstm_cell_39/BiasAdd/ReadVariableOp#lstm_cell_39/BiasAdd/ReadVariableOp2H
"lstm_cell_39/MatMul/ReadVariableOp"lstm_cell_39/MatMul/ReadVariableOp2L
$lstm_cell_39/MatMul_1/ReadVariableOp$lstm_cell_39/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
·

(__inference_lstm_22_layer_call_fn_885626
inputs_0
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_22_layer_call_and_return_conditional_losses_8819272
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
¯
Ã
while_cond_882396
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_882396___redundant_placeholder04
0while_while_cond_882396___redundant_placeholder14
0while_while_cond_882396___redundant_placeholder24
0while_while_cond_882396___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:

ÿ
H__inference_sequential_9_layer_call_and_return_conditional_losses_883313

inputs
lstm_21_883284
lstm_21_883286
lstm_21_883288
lstm_22_883291
lstm_22_883293
lstm_22_883295
time_distributed_16_883298
time_distributed_16_883300
time_distributed_17_883305
time_distributed_17_883307
identity¢lstm_21/StatefulPartitionedCall¢lstm_22/StatefulPartitionedCall¢+time_distributed_16/StatefulPartitionedCall¢+time_distributed_17/StatefulPartitionedCall¦
lstm_21/StatefulPartitionedCallStatefulPartitionedCallinputslstm_21_883284lstm_21_883286lstm_21_883288*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_21_layer_call_and_return_conditional_losses_8826652!
lstm_21/StatefulPartitionedCallÇ
lstm_22/StatefulPartitionedCallStatefulPartitionedCall(lstm_21/StatefulPartitionedCall:output:0lstm_22_883291lstm_22_883293lstm_22_883295*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_22_layer_call_and_return_conditional_losses_8830402!
lstm_22/StatefulPartitionedCallñ
+time_distributed_16/StatefulPartitionedCallStatefulPartitionedCall(lstm_22/StatefulPartitionedCall:output:0time_distributed_16_883298time_distributed_16_883300*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_time_distributed_16_layer_call_and_return_conditional_losses_8831092-
+time_distributed_16/StatefulPartitionedCall
!time_distributed_16/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2#
!time_distributed_16/Reshape/shapeÍ
time_distributed_16/ReshapeReshape(lstm_22/StatefulPartitionedCall:output:0*time_distributed_16/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
time_distributed_16/Reshapeý
+time_distributed_17/StatefulPartitionedCallStatefulPartitionedCall4time_distributed_16/StatefulPartitionedCall:output:0time_distributed_17_883305time_distributed_17_883307*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_time_distributed_17_layer_call_and_return_conditional_losses_8831622-
+time_distributed_17/StatefulPartitionedCall
!time_distributed_17/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2#
!time_distributed_17/Reshape/shapeÙ
time_distributed_17/ReshapeReshape4time_distributed_16/StatefulPartitionedCall:output:0*time_distributed_17/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
time_distributed_17/Reshape¬
IdentityIdentity4time_distributed_17/StatefulPartitionedCall:output:0 ^lstm_21/StatefulPartitionedCall ^lstm_22/StatefulPartitionedCall,^time_distributed_16/StatefulPartitionedCall,^time_distributed_17/StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ::::::::::2B
lstm_21/StatefulPartitionedCalllstm_21/StatefulPartitionedCall2B
lstm_22/StatefulPartitionedCalllstm_22/StatefulPartitionedCall2Z
+time_distributed_16/StatefulPartitionedCall+time_distributed_16/StatefulPartitionedCall2Z
+time_distributed_17/StatefulPartitionedCall+time_distributed_17/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ä"
Ý
H__inference_lstm_cell_39_layer_call_and_return_conditional_losses_880934

inputs

states
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource

identity_2

identity_3

identity_4¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
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
split/split_dimÃ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
muld
	Sigmoid_2Sigmoidsplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2g
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1^
IdentityIdentity	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity·
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*,
_gradient_op_typeCustomGradient-880915*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
	IdentityNi
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2^
add_1AddV2mul:z:0	mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1d
	Sigmoid_3Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_3_
	Sigmoid_4Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_4b
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_3b

Identity_1Identity	mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1¶
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-880924*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
IdentityN_1m
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_4­

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2­

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_3­

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates

»
O__inference_time_distributed_17_layer_call_and_return_conditional_losses_882280

inputs
dense_27_882270
dense_27_882272
identity¢ dense_27/StatefulPartitionedCallD
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
strided_slice/stack_2â
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
valueB"ÿÿÿÿ@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Reshape
 dense_27/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_27_882270dense_27_882272*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_8822162"
 dense_27/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2¨
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape¥
	Reshape_1Reshape)dense_27/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	Reshape_1
IdentityIdentityReshape_1:output:0!^dense_27/StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@::2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ï

O__inference_time_distributed_17_layer_call_and_return_conditional_losses_885781

inputs+
'dense_27_matmul_readvariableop_resource,
(dense_27_biasadd_readvariableop_resource
identity¢dense_27/BiasAdd/ReadVariableOp¢dense_27/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Reshape¨
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_27/MatMul/ReadVariableOp
dense_27/MatMulMatMulReshape:output:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_27/MatMul§
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_27/BiasAdd/ReadVariableOp¥
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_27/BiasAddw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ      2
Reshape_1/shape
	Reshape_1Reshapedense_27/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Reshape_1­
IdentityIdentityReshape_1:output:0 ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@::2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Å
Í
-__inference_lstm_cell_39_layer_call_fn_885993

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2¢StatefulPartitionedCallÆ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_39_layer_call_and_return_conditional_losses_8809342
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
ÀL
þ
while_body_885520
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_40_matmul_readvariableop_resource_09
5while_lstm_cell_40_matmul_1_readvariableop_resource_08
4while_lstm_cell_40_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_40_matmul_readvariableop_resource7
3while_lstm_cell_40_matmul_1_readvariableop_resource6
2while_lstm_cell_40_biasadd_readvariableop_resource¢)while/lstm_cell_40/BiasAdd/ReadVariableOp¢(while/lstm_cell_40/MatMul/ReadVariableOp¢*while/lstm_cell_40/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÊ
(while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_40_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02*
(while/lstm_cell_40/MatMul/ReadVariableOp×
while/lstm_cell_40/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/MatMulÏ
*while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes
:	@*
dtype02,
*while/lstm_cell_40/MatMul_1/ReadVariableOpÀ
while/lstm_cell_40/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/MatMul_1¸
while/lstm_cell_40/addAddV2#while/lstm_cell_40/MatMul:product:0%while/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/addÈ
)while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_40/BiasAdd/ReadVariableOpÅ
while/lstm_cell_40/BiasAddBiasAddwhile/lstm_cell_40/add:z:01while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/BiasAddv
while/lstm_cell_40/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_40/Const
"while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_40/split/split_dim
while/lstm_cell_40/splitSplit+while/lstm_cell_40/split/split_dim:output:0#while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split2
while/lstm_cell_40/split
while/lstm_cell_40/SigmoidSigmoid!while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Sigmoid
while/lstm_cell_40/Sigmoid_1Sigmoid!while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Sigmoid_1 
while/lstm_cell_40/mulMul while/lstm_cell_40/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/mul
while/lstm_cell_40/Sigmoid_2Sigmoid!while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Sigmoid_2²
while/lstm_cell_40/mul_1Mul!while/lstm_cell_40/split:output:2 while/lstm_cell_40/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/mul_1
while/lstm_cell_40/IdentityIdentitywhile/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Identity
while/lstm_cell_40/IdentityN	IdentityNwhile/lstm_cell_40/mul_1:z:0!while/lstm_cell_40/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-885563*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/IdentityN´
while/lstm_cell_40/mul_2Mulwhile/lstm_cell_40/Sigmoid:y:0%while/lstm_cell_40/IdentityN:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/mul_2©
while/lstm_cell_40/add_1AddV2while/lstm_cell_40/mul:z:0while/lstm_cell_40/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/add_1
while/lstm_cell_40/Sigmoid_3Sigmoid!while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Sigmoid_3
while/lstm_cell_40/Sigmoid_4Sigmoidwhile/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Sigmoid_4­
while/lstm_cell_40/mul_3Mulwhile/lstm_cell_40/add_1:z:0 while/lstm_cell_40/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/mul_3
while/lstm_cell_40/Identity_1Identitywhile/lstm_cell_40/mul_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Identity_1
while/lstm_cell_40/IdentityN_1	IdentityNwhile/lstm_cell_40/mul_3:z:0while/lstm_cell_40/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-885572*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2 
while/lstm_cell_40/IdentityN_1¸
while/lstm_cell_40/mul_4Mul while/lstm_cell_40/Sigmoid_3:y:0'while/lstm_cell_40/IdentityN_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/mul_4à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_40/mul_4:z:0*
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
while/add_1â
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_40/mul_4:z:0*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_40/add_1:z:0*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_40_biasadd_readvariableop_resource4while_lstm_cell_40_biasadd_readvariableop_resource_0"l
3while_lstm_cell_40_matmul_1_readvariableop_resource5while_lstm_cell_40_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_40_matmul_readvariableop_resource3while_lstm_cell_40_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :::2V
)while/lstm_cell_40/BiasAdd/ReadVariableOp)while/lstm_cell_40/BiasAdd/ReadVariableOp2T
(while/lstm_cell_40/MatMul/ReadVariableOp(while/lstm_cell_40/MatMul/ReadVariableOp2X
*while/lstm_cell_40/MatMul_1/ReadVariableOp*while/lstm_cell_40/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
¯
Ã
while_cond_884610
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_884610___redundant_placeholder04
0while_while_cond_884610___redundant_placeholder14
0while_while_cond_884610___redundant_placeholder24
0while_while_cond_884610___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ÚL
þ
while_body_882397
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_39_matmul_readvariableop_resource_09
5while_lstm_cell_39_matmul_1_readvariableop_resource_08
4while_lstm_cell_39_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_39_matmul_readvariableop_resource7
3while_lstm_cell_39_matmul_1_readvariableop_resource6
2while_lstm_cell_39_biasadd_readvariableop_resource¢)while/lstm_cell_39/BiasAdd/ReadVariableOp¢(while/lstm_cell_39/MatMul/ReadVariableOp¢*while/lstm_cell_39/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/lstm_cell_39/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_39_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02*
(while/lstm_cell_39/MatMul/ReadVariableOp×
while/lstm_cell_39/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/MatMulÐ
*while/lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_39_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02,
*while/lstm_cell_39/MatMul_1/ReadVariableOpÀ
while/lstm_cell_39/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/MatMul_1¸
while/lstm_cell_39/addAddV2#while/lstm_cell_39/MatMul:product:0%while/lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/addÈ
)while/lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_39_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_39/BiasAdd/ReadVariableOpÅ
while/lstm_cell_39/BiasAddBiasAddwhile/lstm_cell_39/add:z:01while/lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/BiasAddv
while/lstm_cell_39/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_39/Const
"while/lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_39/split/split_dim
while/lstm_cell_39/splitSplit+while/lstm_cell_39/split/split_dim:output:0#while/lstm_cell_39/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_39/split
while/lstm_cell_39/SigmoidSigmoid!while/lstm_cell_39/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Sigmoid
while/lstm_cell_39/Sigmoid_1Sigmoid!while/lstm_cell_39/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Sigmoid_1¡
while/lstm_cell_39/mulMul while/lstm_cell_39/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/mul
while/lstm_cell_39/Sigmoid_2Sigmoid!while/lstm_cell_39/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Sigmoid_2³
while/lstm_cell_39/mul_1Mul!while/lstm_cell_39/split:output:2 while/lstm_cell_39/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/mul_1
while/lstm_cell_39/IdentityIdentitywhile/lstm_cell_39/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Identity
while/lstm_cell_39/IdentityN	IdentityNwhile/lstm_cell_39/mul_1:z:0!while/lstm_cell_39/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-882440*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/IdentityNµ
while/lstm_cell_39/mul_2Mulwhile/lstm_cell_39/Sigmoid:y:0%while/lstm_cell_39/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/mul_2ª
while/lstm_cell_39/add_1AddV2while/lstm_cell_39/mul:z:0while/lstm_cell_39/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/add_1
while/lstm_cell_39/Sigmoid_3Sigmoid!while/lstm_cell_39/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Sigmoid_3
while/lstm_cell_39/Sigmoid_4Sigmoidwhile/lstm_cell_39/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Sigmoid_4®
while/lstm_cell_39/mul_3Mulwhile/lstm_cell_39/add_1:z:0 while/lstm_cell_39/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/mul_3
while/lstm_cell_39/Identity_1Identitywhile/lstm_cell_39/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Identity_1
while/lstm_cell_39/IdentityN_1	IdentityNwhile/lstm_cell_39/mul_3:z:0while/lstm_cell_39/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-882449*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2 
while/lstm_cell_39/IdentityN_1¹
while/lstm_cell_39/mul_4Mul while/lstm_cell_39/Sigmoid_3:y:0'while/lstm_cell_39/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/mul_4à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_39/mul_4:z:0*
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
while/add_1â
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_39/mul_4:z:0*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_39/add_1:z:0*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_39_biasadd_readvariableop_resource4while_lstm_cell_39_biasadd_readvariableop_resource_0"l
3while_lstm_cell_39_matmul_1_readvariableop_resource5while_lstm_cell_39_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_39_matmul_readvariableop_resource3while_lstm_cell_39_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : :::2V
)while/lstm_cell_39/BiasAdd/ReadVariableOp)while/lstm_cell_39/BiasAdd/ReadVariableOp2T
(while/lstm_cell_39/MatMul/ReadVariableOp(while/lstm_cell_39/MatMul/ReadVariableOp2X
*while/lstm_cell_39/MatMul_1/ReadVariableOp*while/lstm_cell_39/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ÚL
þ
while_body_884416
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_39_matmul_readvariableop_resource_09
5while_lstm_cell_39_matmul_1_readvariableop_resource_08
4while_lstm_cell_39_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_39_matmul_readvariableop_resource7
3while_lstm_cell_39_matmul_1_readvariableop_resource6
2while_lstm_cell_39_biasadd_readvariableop_resource¢)while/lstm_cell_39/BiasAdd/ReadVariableOp¢(while/lstm_cell_39/MatMul/ReadVariableOp¢*while/lstm_cell_39/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/lstm_cell_39/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_39_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02*
(while/lstm_cell_39/MatMul/ReadVariableOp×
while/lstm_cell_39/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/MatMulÐ
*while/lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_39_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02,
*while/lstm_cell_39/MatMul_1/ReadVariableOpÀ
while/lstm_cell_39/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/MatMul_1¸
while/lstm_cell_39/addAddV2#while/lstm_cell_39/MatMul:product:0%while/lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/addÈ
)while/lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_39_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_39/BiasAdd/ReadVariableOpÅ
while/lstm_cell_39/BiasAddBiasAddwhile/lstm_cell_39/add:z:01while/lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/BiasAddv
while/lstm_cell_39/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_39/Const
"while/lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_39/split/split_dim
while/lstm_cell_39/splitSplit+while/lstm_cell_39/split/split_dim:output:0#while/lstm_cell_39/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_39/split
while/lstm_cell_39/SigmoidSigmoid!while/lstm_cell_39/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Sigmoid
while/lstm_cell_39/Sigmoid_1Sigmoid!while/lstm_cell_39/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Sigmoid_1¡
while/lstm_cell_39/mulMul while/lstm_cell_39/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/mul
while/lstm_cell_39/Sigmoid_2Sigmoid!while/lstm_cell_39/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Sigmoid_2³
while/lstm_cell_39/mul_1Mul!while/lstm_cell_39/split:output:2 while/lstm_cell_39/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/mul_1
while/lstm_cell_39/IdentityIdentitywhile/lstm_cell_39/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Identity
while/lstm_cell_39/IdentityN	IdentityNwhile/lstm_cell_39/mul_1:z:0!while/lstm_cell_39/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-884459*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/IdentityNµ
while/lstm_cell_39/mul_2Mulwhile/lstm_cell_39/Sigmoid:y:0%while/lstm_cell_39/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/mul_2ª
while/lstm_cell_39/add_1AddV2while/lstm_cell_39/mul:z:0while/lstm_cell_39/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/add_1
while/lstm_cell_39/Sigmoid_3Sigmoid!while/lstm_cell_39/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Sigmoid_3
while/lstm_cell_39/Sigmoid_4Sigmoidwhile/lstm_cell_39/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Sigmoid_4®
while/lstm_cell_39/mul_3Mulwhile/lstm_cell_39/add_1:z:0 while/lstm_cell_39/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/mul_3
while/lstm_cell_39/Identity_1Identitywhile/lstm_cell_39/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Identity_1
while/lstm_cell_39/IdentityN_1	IdentityNwhile/lstm_cell_39/mul_3:z:0while/lstm_cell_39/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-884468*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2 
while/lstm_cell_39/IdentityN_1¹
while/lstm_cell_39/mul_4Mul while/lstm_cell_39/Sigmoid_3:y:0'while/lstm_cell_39/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/mul_4à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_39/mul_4:z:0*
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
while/add_1â
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_39/mul_4:z:0*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_39/add_1:z:0*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_39_biasadd_readvariableop_resource4while_lstm_cell_39_biasadd_readvariableop_resource_0"l
3while_lstm_cell_39_matmul_1_readvariableop_resource5while_lstm_cell_39_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_39_matmul_readvariableop_resource3while_lstm_cell_39_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : :::2V
)while/lstm_cell_39/BiasAdd/ReadVariableOp)while/lstm_cell_39/BiasAdd/ReadVariableOp2T
(while/lstm_cell_39/MatMul/ReadVariableOp(while/lstm_cell_39/MatMul/ReadVariableOp2X
*while/lstm_cell_39/MatMul_1/ReadVariableOp*while/lstm_cell_39/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ü
~
)__inference_dense_26_layer_call_fn_886138

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_8820952
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ãD
Ü
C__inference_lstm_22_layer_call_and_return_conditional_losses_882059

inputs
lstm_cell_40_881977
lstm_cell_40_881979
lstm_cell_40_881981
identity¢$lstm_cell_40/StatefulPartitionedCall¢whileD
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
strided_slice/stack_2â
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
B :è2
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
zeros/packed/1
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
:ÿÿÿÿÿÿÿÿÿ@2
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
B :è2
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
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2
$lstm_cell_40/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_40_881977lstm_cell_40_881979lstm_cell_40_881981*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_8815642&
$lstm_cell_40/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter£
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_40_881977lstm_cell_40_881979lstm_cell_40_881981*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_881990*
condR
while_cond_881989*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitytranspose_1:y:0%^lstm_cell_40/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::2L
$lstm_cell_40/StatefulPartitionedCall$lstm_cell_40/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
æc
ò
C__inference_lstm_21_layer_call_and_return_conditional_losses_884879

inputs/
+lstm_cell_39_matmul_readvariableop_resource1
-lstm_cell_39_matmul_1_readvariableop_resource0
,lstm_cell_39_biasadd_readvariableop_resource
identity¢#lstm_cell_39/BiasAdd/ReadVariableOp¢"lstm_cell_39/MatMul/ReadVariableOp¢$lstm_cell_39/MatMul_1/ReadVariableOp¢whileD
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
strided_slice/stack_2â
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
B :2
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
B :è2
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
B :2
zeros/packed/1
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
:ÿÿÿÿÿÿÿÿÿ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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
B :è2
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
B :2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2µ
"lstm_cell_39/MatMul/ReadVariableOpReadVariableOp+lstm_cell_39_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02$
"lstm_cell_39/MatMul/ReadVariableOp­
lstm_cell_39/MatMulMatMulstrided_slice_2:output:0*lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/MatMul¼
$lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_39_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02&
$lstm_cell_39/MatMul_1/ReadVariableOp©
lstm_cell_39/MatMul_1MatMulzeros:output:0,lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/MatMul_1 
lstm_cell_39/addAddV2lstm_cell_39/MatMul:product:0lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/add´
#lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_39_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_39/BiasAdd/ReadVariableOp­
lstm_cell_39/BiasAddBiasAddlstm_cell_39/add:z:0+lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/BiasAddj
lstm_cell_39/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_39/Const~
lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_39/split/split_dim÷
lstm_cell_39/splitSplit%lstm_cell_39/split/split_dim:output:0lstm_cell_39/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_39/split
lstm_cell_39/SigmoidSigmoidlstm_cell_39/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Sigmoid
lstm_cell_39/Sigmoid_1Sigmoidlstm_cell_39/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Sigmoid_1
lstm_cell_39/mulMullstm_cell_39/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/mul
lstm_cell_39/Sigmoid_2Sigmoidlstm_cell_39/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Sigmoid_2
lstm_cell_39/mul_1Mullstm_cell_39/split:output:2lstm_cell_39/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/mul_1
lstm_cell_39/IdentityIdentitylstm_cell_39/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Identityë
lstm_cell_39/IdentityN	IdentityNlstm_cell_39/mul_1:z:0lstm_cell_39/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-884764*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/IdentityN
lstm_cell_39/mul_2Mullstm_cell_39/Sigmoid:y:0lstm_cell_39/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/mul_2
lstm_cell_39/add_1AddV2lstm_cell_39/mul:z:0lstm_cell_39/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/add_1
lstm_cell_39/Sigmoid_3Sigmoidlstm_cell_39/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Sigmoid_3
lstm_cell_39/Sigmoid_4Sigmoidlstm_cell_39/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Sigmoid_4
lstm_cell_39/mul_3Mullstm_cell_39/add_1:z:0lstm_cell_39/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/mul_3
lstm_cell_39/Identity_1Identitylstm_cell_39/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Identity_1ê
lstm_cell_39/IdentityN_1	IdentityNlstm_cell_39/mul_3:z:0lstm_cell_39/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-884773*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/IdentityN_1¡
lstm_cell_39/mul_4Mullstm_cell_39/Sigmoid_3:y:0!lstm_cell_39/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/mul_4
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterò
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_39_matmul_readvariableop_resource-lstm_cell_39_matmul_1_readvariableop_resource,lstm_cell_39_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_884784*
condR
while_cond_884783*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeâ
IdentityIdentitytranspose_1:y:0$^lstm_cell_39/BiasAdd/ReadVariableOp#^lstm_cell_39/MatMul/ReadVariableOp%^lstm_cell_39/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ:::2J
#lstm_cell_39/BiasAdd/ReadVariableOp#lstm_cell_39/BiasAdd/ReadVariableOp2H
"lstm_cell_39/MatMul/ReadVariableOp"lstm_cell_39/MatMul/ReadVariableOp2L
$lstm_cell_39/MatMul_1/ReadVariableOp$lstm_cell_39/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ä"
Ý
H__inference_lstm_cell_39_layer_call_and_return_conditional_losses_880891

inputs

states
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource

identity_2

identity_3

identity_4¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
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
split/split_dimÃ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
muld
	Sigmoid_2Sigmoidsplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2g
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1^
IdentityIdentity	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity·
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*,
_gradient_op_typeCustomGradient-880872*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
	IdentityNi
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2^
add_1AddV2mul:z:0	mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1d
	Sigmoid_3Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_3_
	Sigmoid_4Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_4b
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_3b

Identity_1Identity	mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1¶
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-880881*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
IdentityN_1m
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_4­

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2­

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_3­

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
§

4__inference_time_distributed_16_layer_call_fn_885758

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_time_distributed_16_layer_call_and_return_conditional_losses_8821592
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

Ó	
H__inference_sequential_9_layer_call_and_return_conditional_losses_884115

inputs7
3lstm_21_lstm_cell_39_matmul_readvariableop_resource9
5lstm_21_lstm_cell_39_matmul_1_readvariableop_resource8
4lstm_21_lstm_cell_39_biasadd_readvariableop_resource7
3lstm_22_lstm_cell_40_matmul_readvariableop_resource9
5lstm_22_lstm_cell_40_matmul_1_readvariableop_resource8
4lstm_22_lstm_cell_40_biasadd_readvariableop_resource?
;time_distributed_16_dense_26_matmul_readvariableop_resource@
<time_distributed_16_dense_26_biasadd_readvariableop_resource?
;time_distributed_17_dense_27_matmul_readvariableop_resource@
<time_distributed_17_dense_27_biasadd_readvariableop_resource
identity¢+lstm_21/lstm_cell_39/BiasAdd/ReadVariableOp¢*lstm_21/lstm_cell_39/MatMul/ReadVariableOp¢,lstm_21/lstm_cell_39/MatMul_1/ReadVariableOp¢lstm_21/while¢+lstm_22/lstm_cell_40/BiasAdd/ReadVariableOp¢*lstm_22/lstm_cell_40/MatMul/ReadVariableOp¢,lstm_22/lstm_cell_40/MatMul_1/ReadVariableOp¢lstm_22/while¢3time_distributed_16/dense_26/BiasAdd/ReadVariableOp¢2time_distributed_16/dense_26/MatMul/ReadVariableOp¢3time_distributed_17/dense_27/BiasAdd/ReadVariableOp¢2time_distributed_17/dense_27/MatMul/ReadVariableOpT
lstm_21/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_21/Shape
lstm_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_21/strided_slice/stack
lstm_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_21/strided_slice/stack_1
lstm_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_21/strided_slice/stack_2
lstm_21/strided_sliceStridedSlicelstm_21/Shape:output:0$lstm_21/strided_slice/stack:output:0&lstm_21/strided_slice/stack_1:output:0&lstm_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_21/strided_slicem
lstm_21/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
lstm_21/zeros/mul/y
lstm_21/zeros/mulMullstm_21/strided_slice:output:0lstm_21/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_21/zeros/mulo
lstm_21/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_21/zeros/Less/y
lstm_21/zeros/LessLesslstm_21/zeros/mul:z:0lstm_21/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_21/zeros/Lesss
lstm_21/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
lstm_21/zeros/packed/1£
lstm_21/zeros/packedPacklstm_21/strided_slice:output:0lstm_21/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_21/zeros/packedo
lstm_21/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_21/zeros/Const
lstm_21/zerosFilllstm_21/zeros/packed:output:0lstm_21/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/zerosq
lstm_21/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
lstm_21/zeros_1/mul/y
lstm_21/zeros_1/mulMullstm_21/strided_slice:output:0lstm_21/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_21/zeros_1/muls
lstm_21/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_21/zeros_1/Less/y
lstm_21/zeros_1/LessLesslstm_21/zeros_1/mul:z:0lstm_21/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_21/zeros_1/Lessw
lstm_21/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
lstm_21/zeros_1/packed/1©
lstm_21/zeros_1/packedPacklstm_21/strided_slice:output:0!lstm_21/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_21/zeros_1/packeds
lstm_21/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_21/zeros_1/Const
lstm_21/zeros_1Filllstm_21/zeros_1/packed:output:0lstm_21/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/zeros_1
lstm_21/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_21/transpose/perm
lstm_21/transpose	Transposeinputslstm_21/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/transposeg
lstm_21/Shape_1Shapelstm_21/transpose:y:0*
T0*
_output_shapes
:2
lstm_21/Shape_1
lstm_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_21/strided_slice_1/stack
lstm_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_21/strided_slice_1/stack_1
lstm_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_21/strided_slice_1/stack_2
lstm_21/strided_slice_1StridedSlicelstm_21/Shape_1:output:0&lstm_21/strided_slice_1/stack:output:0(lstm_21/strided_slice_1/stack_1:output:0(lstm_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_21/strided_slice_1
#lstm_21/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_21/TensorArrayV2/element_shapeÒ
lstm_21/TensorArrayV2TensorListReserve,lstm_21/TensorArrayV2/element_shape:output:0 lstm_21/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_21/TensorArrayV2Ï
=lstm_21/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_21/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_21/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_21/transpose:y:0Flstm_21/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_21/TensorArrayUnstack/TensorListFromTensor
lstm_21/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_21/strided_slice_2/stack
lstm_21/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_21/strided_slice_2/stack_1
lstm_21/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_21/strided_slice_2/stack_2¬
lstm_21/strided_slice_2StridedSlicelstm_21/transpose:y:0&lstm_21/strided_slice_2/stack:output:0(lstm_21/strided_slice_2/stack_1:output:0(lstm_21/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_21/strided_slice_2Í
*lstm_21/lstm_cell_39/MatMul/ReadVariableOpReadVariableOp3lstm_21_lstm_cell_39_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02,
*lstm_21/lstm_cell_39/MatMul/ReadVariableOpÍ
lstm_21/lstm_cell_39/MatMulMatMul lstm_21/strided_slice_2:output:02lstm_21/lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/lstm_cell_39/MatMulÔ
,lstm_21/lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOp5lstm_21_lstm_cell_39_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02.
,lstm_21/lstm_cell_39/MatMul_1/ReadVariableOpÉ
lstm_21/lstm_cell_39/MatMul_1MatMullstm_21/zeros:output:04lstm_21/lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/lstm_cell_39/MatMul_1À
lstm_21/lstm_cell_39/addAddV2%lstm_21/lstm_cell_39/MatMul:product:0'lstm_21/lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/lstm_cell_39/addÌ
+lstm_21/lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOp4lstm_21_lstm_cell_39_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02-
+lstm_21/lstm_cell_39/BiasAdd/ReadVariableOpÍ
lstm_21/lstm_cell_39/BiasAddBiasAddlstm_21/lstm_cell_39/add:z:03lstm_21/lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/lstm_cell_39/BiasAddz
lstm_21/lstm_cell_39/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_21/lstm_cell_39/Const
$lstm_21/lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_21/lstm_cell_39/split/split_dim
lstm_21/lstm_cell_39/splitSplit-lstm_21/lstm_cell_39/split/split_dim:output:0%lstm_21/lstm_cell_39/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_21/lstm_cell_39/split
lstm_21/lstm_cell_39/SigmoidSigmoid#lstm_21/lstm_cell_39/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/lstm_cell_39/Sigmoid£
lstm_21/lstm_cell_39/Sigmoid_1Sigmoid#lstm_21/lstm_cell_39/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_21/lstm_cell_39/Sigmoid_1¬
lstm_21/lstm_cell_39/mulMul"lstm_21/lstm_cell_39/Sigmoid_1:y:0lstm_21/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/lstm_cell_39/mul£
lstm_21/lstm_cell_39/Sigmoid_2Sigmoid#lstm_21/lstm_cell_39/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_21/lstm_cell_39/Sigmoid_2»
lstm_21/lstm_cell_39/mul_1Mul#lstm_21/lstm_cell_39/split:output:2"lstm_21/lstm_cell_39/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/lstm_cell_39/mul_1
lstm_21/lstm_cell_39/IdentityIdentitylstm_21/lstm_cell_39/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/lstm_cell_39/Identity
lstm_21/lstm_cell_39/IdentityN	IdentityNlstm_21/lstm_cell_39/mul_1:z:0#lstm_21/lstm_cell_39/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-883801*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2 
lstm_21/lstm_cell_39/IdentityN½
lstm_21/lstm_cell_39/mul_2Mul lstm_21/lstm_cell_39/Sigmoid:y:0'lstm_21/lstm_cell_39/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/lstm_cell_39/mul_2²
lstm_21/lstm_cell_39/add_1AddV2lstm_21/lstm_cell_39/mul:z:0lstm_21/lstm_cell_39/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/lstm_cell_39/add_1£
lstm_21/lstm_cell_39/Sigmoid_3Sigmoid#lstm_21/lstm_cell_39/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_21/lstm_cell_39/Sigmoid_3
lstm_21/lstm_cell_39/Sigmoid_4Sigmoidlstm_21/lstm_cell_39/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_21/lstm_cell_39/Sigmoid_4¶
lstm_21/lstm_cell_39/mul_3Mullstm_21/lstm_cell_39/add_1:z:0"lstm_21/lstm_cell_39/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/lstm_cell_39/mul_3¡
lstm_21/lstm_cell_39/Identity_1Identitylstm_21/lstm_cell_39/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_21/lstm_cell_39/Identity_1
 lstm_21/lstm_cell_39/IdentityN_1	IdentityNlstm_21/lstm_cell_39/mul_3:z:0lstm_21/lstm_cell_39/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-883810*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2"
 lstm_21/lstm_cell_39/IdentityN_1Á
lstm_21/lstm_cell_39/mul_4Mul"lstm_21/lstm_cell_39/Sigmoid_3:y:0)lstm_21/lstm_cell_39/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/lstm_cell_39/mul_4
%lstm_21/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2'
%lstm_21/TensorArrayV2_1/element_shapeØ
lstm_21/TensorArrayV2_1TensorListReserve.lstm_21/TensorArrayV2_1/element_shape:output:0 lstm_21/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_21/TensorArrayV2_1^
lstm_21/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_21/time
 lstm_21/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_21/while/maximum_iterationsz
lstm_21/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_21/while/loop_counterê
lstm_21/whileWhile#lstm_21/while/loop_counter:output:0)lstm_21/while/maximum_iterations:output:0lstm_21/time:output:0 lstm_21/TensorArrayV2_1:handle:0lstm_21/zeros:output:0lstm_21/zeros_1:output:0 lstm_21/strided_slice_1:output:0?lstm_21/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_21_lstm_cell_39_matmul_readvariableop_resource5lstm_21_lstm_cell_39_matmul_1_readvariableop_resource4lstm_21_lstm_cell_39_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*%
bodyR
lstm_21_while_body_883821*%
condR
lstm_21_while_cond_883820*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
lstm_21/whileÅ
8lstm_21/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2:
8lstm_21/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_21/TensorArrayV2Stack/TensorListStackTensorListStacklstm_21/while:output:3Alstm_21/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02,
*lstm_21/TensorArrayV2Stack/TensorListStack
lstm_21/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_21/strided_slice_3/stack
lstm_21/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_21/strided_slice_3/stack_1
lstm_21/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_21/strided_slice_3/stack_2Ë
lstm_21/strided_slice_3StridedSlice3lstm_21/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_21/strided_slice_3/stack:output:0(lstm_21/strided_slice_3/stack_1:output:0(lstm_21/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_21/strided_slice_3
lstm_21/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_21/transpose_1/permÆ
lstm_21/transpose_1	Transpose3lstm_21/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_21/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/transpose_1v
lstm_21/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_21/runtimee
lstm_22/ShapeShapelstm_21/transpose_1:y:0*
T0*
_output_shapes
:2
lstm_22/Shape
lstm_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_22/strided_slice/stack
lstm_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_22/strided_slice/stack_1
lstm_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_22/strided_slice/stack_2
lstm_22/strided_sliceStridedSlicelstm_22/Shape:output:0$lstm_22/strided_slice/stack:output:0&lstm_22/strided_slice/stack_1:output:0&lstm_22/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_22/strided_slicel
lstm_22/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_22/zeros/mul/y
lstm_22/zeros/mulMullstm_22/strided_slice:output:0lstm_22/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_22/zeros/mulo
lstm_22/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_22/zeros/Less/y
lstm_22/zeros/LessLesslstm_22/zeros/mul:z:0lstm_22/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_22/zeros/Lessr
lstm_22/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_22/zeros/packed/1£
lstm_22/zeros/packedPacklstm_22/strided_slice:output:0lstm_22/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_22/zeros/packedo
lstm_22/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_22/zeros/Const
lstm_22/zerosFilllstm_22/zeros/packed:output:0lstm_22/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_22/zerosp
lstm_22/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_22/zeros_1/mul/y
lstm_22/zeros_1/mulMullstm_22/strided_slice:output:0lstm_22/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_22/zeros_1/muls
lstm_22/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_22/zeros_1/Less/y
lstm_22/zeros_1/LessLesslstm_22/zeros_1/mul:z:0lstm_22/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_22/zeros_1/Lessv
lstm_22/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_22/zeros_1/packed/1©
lstm_22/zeros_1/packedPacklstm_22/strided_slice:output:0!lstm_22/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_22/zeros_1/packeds
lstm_22/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_22/zeros_1/Const
lstm_22/zeros_1Filllstm_22/zeros_1/packed:output:0lstm_22/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_22/zeros_1
lstm_22/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_22/transpose/perm¤
lstm_22/transpose	Transposelstm_21/transpose_1:y:0lstm_22/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_22/transposeg
lstm_22/Shape_1Shapelstm_22/transpose:y:0*
T0*
_output_shapes
:2
lstm_22/Shape_1
lstm_22/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_22/strided_slice_1/stack
lstm_22/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_22/strided_slice_1/stack_1
lstm_22/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_22/strided_slice_1/stack_2
lstm_22/strided_slice_1StridedSlicelstm_22/Shape_1:output:0&lstm_22/strided_slice_1/stack:output:0(lstm_22/strided_slice_1/stack_1:output:0(lstm_22/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_22/strided_slice_1
#lstm_22/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_22/TensorArrayV2/element_shapeÒ
lstm_22/TensorArrayV2TensorListReserve,lstm_22/TensorArrayV2/element_shape:output:0 lstm_22/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_22/TensorArrayV2Ï
=lstm_22/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_22/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_22/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_22/transpose:y:0Flstm_22/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_22/TensorArrayUnstack/TensorListFromTensor
lstm_22/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_22/strided_slice_2/stack
lstm_22/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_22/strided_slice_2/stack_1
lstm_22/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_22/strided_slice_2/stack_2­
lstm_22/strided_slice_2StridedSlicelstm_22/transpose:y:0&lstm_22/strided_slice_2/stack:output:0(lstm_22/strided_slice_2/stack_1:output:0(lstm_22/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_22/strided_slice_2Î
*lstm_22/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp3lstm_22_lstm_cell_40_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02,
*lstm_22/lstm_cell_40/MatMul/ReadVariableOpÍ
lstm_22/lstm_cell_40/MatMulMatMul lstm_22/strided_slice_2:output:02lstm_22/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_22/lstm_cell_40/MatMulÓ
,lstm_22/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp5lstm_22_lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype02.
,lstm_22/lstm_cell_40/MatMul_1/ReadVariableOpÉ
lstm_22/lstm_cell_40/MatMul_1MatMullstm_22/zeros:output:04lstm_22/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_22/lstm_cell_40/MatMul_1À
lstm_22/lstm_cell_40/addAddV2%lstm_22/lstm_cell_40/MatMul:product:0'lstm_22/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_22/lstm_cell_40/addÌ
+lstm_22/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp4lstm_22_lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02-
+lstm_22/lstm_cell_40/BiasAdd/ReadVariableOpÍ
lstm_22/lstm_cell_40/BiasAddBiasAddlstm_22/lstm_cell_40/add:z:03lstm_22/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_22/lstm_cell_40/BiasAddz
lstm_22/lstm_cell_40/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_22/lstm_cell_40/Const
$lstm_22/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_22/lstm_cell_40/split/split_dim
lstm_22/lstm_cell_40/splitSplit-lstm_22/lstm_cell_40/split/split_dim:output:0%lstm_22/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split2
lstm_22/lstm_cell_40/split
lstm_22/lstm_cell_40/SigmoidSigmoid#lstm_22/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_22/lstm_cell_40/Sigmoid¢
lstm_22/lstm_cell_40/Sigmoid_1Sigmoid#lstm_22/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
lstm_22/lstm_cell_40/Sigmoid_1«
lstm_22/lstm_cell_40/mulMul"lstm_22/lstm_cell_40/Sigmoid_1:y:0lstm_22/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_22/lstm_cell_40/mul¢
lstm_22/lstm_cell_40/Sigmoid_2Sigmoid#lstm_22/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
lstm_22/lstm_cell_40/Sigmoid_2º
lstm_22/lstm_cell_40/mul_1Mul#lstm_22/lstm_cell_40/split:output:2"lstm_22/lstm_cell_40/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_22/lstm_cell_40/mul_1
lstm_22/lstm_cell_40/IdentityIdentitylstm_22/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_22/lstm_cell_40/Identity
lstm_22/lstm_cell_40/IdentityN	IdentityNlstm_22/lstm_cell_40/mul_1:z:0#lstm_22/lstm_cell_40/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-883970*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2 
lstm_22/lstm_cell_40/IdentityN¼
lstm_22/lstm_cell_40/mul_2Mul lstm_22/lstm_cell_40/Sigmoid:y:0'lstm_22/lstm_cell_40/IdentityN:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_22/lstm_cell_40/mul_2±
lstm_22/lstm_cell_40/add_1AddV2lstm_22/lstm_cell_40/mul:z:0lstm_22/lstm_cell_40/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_22/lstm_cell_40/add_1¢
lstm_22/lstm_cell_40/Sigmoid_3Sigmoid#lstm_22/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
lstm_22/lstm_cell_40/Sigmoid_3
lstm_22/lstm_cell_40/Sigmoid_4Sigmoidlstm_22/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
lstm_22/lstm_cell_40/Sigmoid_4µ
lstm_22/lstm_cell_40/mul_3Mullstm_22/lstm_cell_40/add_1:z:0"lstm_22/lstm_cell_40/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_22/lstm_cell_40/mul_3 
lstm_22/lstm_cell_40/Identity_1Identitylstm_22/lstm_cell_40/mul_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
lstm_22/lstm_cell_40/Identity_1
 lstm_22/lstm_cell_40/IdentityN_1	IdentityNlstm_22/lstm_cell_40/mul_3:z:0lstm_22/lstm_cell_40/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-883979*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2"
 lstm_22/lstm_cell_40/IdentityN_1À
lstm_22/lstm_cell_40/mul_4Mul"lstm_22/lstm_cell_40/Sigmoid_3:y:0)lstm_22/lstm_cell_40/IdentityN_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_22/lstm_cell_40/mul_4
%lstm_22/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2'
%lstm_22/TensorArrayV2_1/element_shapeØ
lstm_22/TensorArrayV2_1TensorListReserve.lstm_22/TensorArrayV2_1/element_shape:output:0 lstm_22/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_22/TensorArrayV2_1^
lstm_22/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_22/time
 lstm_22/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_22/while/maximum_iterationsz
lstm_22/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_22/while/loop_counteræ
lstm_22/whileWhile#lstm_22/while/loop_counter:output:0)lstm_22/while/maximum_iterations:output:0lstm_22/time:output:0 lstm_22/TensorArrayV2_1:handle:0lstm_22/zeros:output:0lstm_22/zeros_1:output:0 lstm_22/strided_slice_1:output:0?lstm_22/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_22_lstm_cell_40_matmul_readvariableop_resource5lstm_22_lstm_cell_40_matmul_1_readvariableop_resource4lstm_22_lstm_cell_40_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*%
bodyR
lstm_22_while_body_883990*%
condR
lstm_22_while_cond_883989*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
lstm_22/whileÅ
8lstm_22/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2:
8lstm_22/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_22/TensorArrayV2Stack/TensorListStackTensorListStacklstm_22/while:output:3Alstm_22/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02,
*lstm_22/TensorArrayV2Stack/TensorListStack
lstm_22/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_22/strided_slice_3/stack
lstm_22/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_22/strided_slice_3/stack_1
lstm_22/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_22/strided_slice_3/stack_2Ê
lstm_22/strided_slice_3StridedSlice3lstm_22/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_22/strided_slice_3/stack:output:0(lstm_22/strided_slice_3/stack_1:output:0(lstm_22/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
lstm_22/strided_slice_3
lstm_22/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_22/transpose_1/permÅ
lstm_22/transpose_1	Transpose3lstm_22/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_22/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_22/transpose_1v
lstm_22/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_22/runtime
!time_distributed_16/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2#
!time_distributed_16/Reshape/shape¼
time_distributed_16/ReshapeReshapelstm_22/transpose_1:y:0*time_distributed_16/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
time_distributed_16/Reshapeä
2time_distributed_16/dense_26/MatMul/ReadVariableOpReadVariableOp;time_distributed_16_dense_26_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype024
2time_distributed_16/dense_26/MatMul/ReadVariableOpè
#time_distributed_16/dense_26/MatMulMatMul$time_distributed_16/Reshape:output:0:time_distributed_16/dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#time_distributed_16/dense_26/MatMulã
3time_distributed_16/dense_26/BiasAdd/ReadVariableOpReadVariableOp<time_distributed_16_dense_26_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype025
3time_distributed_16/dense_26/BiasAdd/ReadVariableOpõ
$time_distributed_16/dense_26/BiasAddBiasAdd-time_distributed_16/dense_26/MatMul:product:0;time_distributed_16/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$time_distributed_16/dense_26/BiasAdd¸
$time_distributed_16/dense_26/SigmoidSigmoid-time_distributed_16/dense_26/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$time_distributed_16/dense_26/SigmoidÖ
 time_distributed_16/dense_26/mulMul-time_distributed_16/dense_26/BiasAdd:output:0(time_distributed_16/dense_26/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 time_distributed_16/dense_26/mul²
%time_distributed_16/dense_26/IdentityIdentity$time_distributed_16/dense_26/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2'
%time_distributed_16/dense_26/Identity©
&time_distributed_16/dense_26/IdentityN	IdentityN$time_distributed_16/dense_26/mul:z:0-time_distributed_16/dense_26/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-884092*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2(
&time_distributed_16/dense_26/IdentityN
#time_distributed_16/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ   @   2%
#time_distributed_16/Reshape_1/shapeÞ
time_distributed_16/Reshape_1Reshape/time_distributed_16/dense_26/IdentityN:output:0,time_distributed_16/Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
time_distributed_16/Reshape_1
#time_distributed_16/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2%
#time_distributed_16/Reshape_2/shapeÂ
time_distributed_16/Reshape_2Reshapelstm_22/transpose_1:y:0,time_distributed_16/Reshape_2/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
time_distributed_16/Reshape_2
!time_distributed_17/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2#
!time_distributed_17/Reshape/shapeË
time_distributed_17/ReshapeReshape&time_distributed_16/Reshape_1:output:0*time_distributed_17/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
time_distributed_17/Reshapeä
2time_distributed_17/dense_27/MatMul/ReadVariableOpReadVariableOp;time_distributed_17_dense_27_matmul_readvariableop_resource*
_output_shapes

:@*
dtype024
2time_distributed_17/dense_27/MatMul/ReadVariableOpè
#time_distributed_17/dense_27/MatMulMatMul$time_distributed_17/Reshape:output:0:time_distributed_17/dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#time_distributed_17/dense_27/MatMulã
3time_distributed_17/dense_27/BiasAdd/ReadVariableOpReadVariableOp<time_distributed_17_dense_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype025
3time_distributed_17/dense_27/BiasAdd/ReadVariableOpõ
$time_distributed_17/dense_27/BiasAddBiasAdd-time_distributed_17/dense_27/MatMul:product:0;time_distributed_17/dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$time_distributed_17/dense_27/BiasAdd
#time_distributed_17/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ      2%
#time_distributed_17/Reshape_1/shapeÜ
time_distributed_17/Reshape_1Reshape-time_distributed_17/dense_27/BiasAdd:output:0,time_distributed_17/Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
time_distributed_17/Reshape_1
#time_distributed_17/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2%
#time_distributed_17/Reshape_2/shapeÑ
time_distributed_17/Reshape_2Reshape&time_distributed_16/Reshape_1:output:0,time_distributed_17/Reshape_2/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
time_distributed_17/Reshape_2
IdentityIdentity&time_distributed_17/Reshape_1:output:0,^lstm_21/lstm_cell_39/BiasAdd/ReadVariableOp+^lstm_21/lstm_cell_39/MatMul/ReadVariableOp-^lstm_21/lstm_cell_39/MatMul_1/ReadVariableOp^lstm_21/while,^lstm_22/lstm_cell_40/BiasAdd/ReadVariableOp+^lstm_22/lstm_cell_40/MatMul/ReadVariableOp-^lstm_22/lstm_cell_40/MatMul_1/ReadVariableOp^lstm_22/while4^time_distributed_16/dense_26/BiasAdd/ReadVariableOp3^time_distributed_16/dense_26/MatMul/ReadVariableOp4^time_distributed_17/dense_27/BiasAdd/ReadVariableOp3^time_distributed_17/dense_27/MatMul/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ::::::::::2Z
+lstm_21/lstm_cell_39/BiasAdd/ReadVariableOp+lstm_21/lstm_cell_39/BiasAdd/ReadVariableOp2X
*lstm_21/lstm_cell_39/MatMul/ReadVariableOp*lstm_21/lstm_cell_39/MatMul/ReadVariableOp2\
,lstm_21/lstm_cell_39/MatMul_1/ReadVariableOp,lstm_21/lstm_cell_39/MatMul_1/ReadVariableOp2
lstm_21/whilelstm_21/while2Z
+lstm_22/lstm_cell_40/BiasAdd/ReadVariableOp+lstm_22/lstm_cell_40/BiasAdd/ReadVariableOp2X
*lstm_22/lstm_cell_40/MatMul/ReadVariableOp*lstm_22/lstm_cell_40/MatMul/ReadVariableOp2\
,lstm_22/lstm_cell_40/MatMul_1/ReadVariableOp,lstm_22/lstm_cell_40/MatMul_1/ReadVariableOp2
lstm_22/whilelstm_22/while2j
3time_distributed_16/dense_26/BiasAdd/ReadVariableOp3time_distributed_16/dense_26/BiasAdd/ReadVariableOp2h
2time_distributed_16/dense_26/MatMul/ReadVariableOp2time_distributed_16/dense_26/MatMul/ReadVariableOp2j
3time_distributed_17/dense_27/BiasAdd/ReadVariableOp3time_distributed_17/dense_27/BiasAdd/ReadVariableOp2h
2time_distributed_17/dense_27/MatMul/ReadVariableOp2time_distributed_17/dense_27/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


H__inference_sequential_9_layer_call_and_return_conditional_losses_883221
lstm_21_input
lstm_21_883192
lstm_21_883194
lstm_21_883196
lstm_22_883199
lstm_22_883201
lstm_22_883203
time_distributed_16_883206
time_distributed_16_883208
time_distributed_17_883213
time_distributed_17_883215
identity¢lstm_21/StatefulPartitionedCall¢lstm_22/StatefulPartitionedCall¢+time_distributed_16/StatefulPartitionedCall¢+time_distributed_17/StatefulPartitionedCall­
lstm_21/StatefulPartitionedCallStatefulPartitionedCalllstm_21_inputlstm_21_883192lstm_21_883194lstm_21_883196*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_21_layer_call_and_return_conditional_losses_8826652!
lstm_21/StatefulPartitionedCallÇ
lstm_22/StatefulPartitionedCallStatefulPartitionedCall(lstm_21/StatefulPartitionedCall:output:0lstm_22_883199lstm_22_883201lstm_22_883203*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_22_layer_call_and_return_conditional_losses_8830402!
lstm_22/StatefulPartitionedCallñ
+time_distributed_16/StatefulPartitionedCallStatefulPartitionedCall(lstm_22/StatefulPartitionedCall:output:0time_distributed_16_883206time_distributed_16_883208*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_time_distributed_16_layer_call_and_return_conditional_losses_8831092-
+time_distributed_16/StatefulPartitionedCall
!time_distributed_16/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2#
!time_distributed_16/Reshape/shapeÍ
time_distributed_16/ReshapeReshape(lstm_22/StatefulPartitionedCall:output:0*time_distributed_16/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
time_distributed_16/Reshapeý
+time_distributed_17/StatefulPartitionedCallStatefulPartitionedCall4time_distributed_16/StatefulPartitionedCall:output:0time_distributed_17_883213time_distributed_17_883215*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_time_distributed_17_layer_call_and_return_conditional_losses_8831622-
+time_distributed_17/StatefulPartitionedCall
!time_distributed_17/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2#
!time_distributed_17/Reshape/shapeÙ
time_distributed_17/ReshapeReshape4time_distributed_16/StatefulPartitionedCall:output:0*time_distributed_17/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
time_distributed_17/Reshape¬
IdentityIdentity4time_distributed_17/StatefulPartitionedCall:output:0 ^lstm_21/StatefulPartitionedCall ^lstm_22/StatefulPartitionedCall,^time_distributed_16/StatefulPartitionedCall,^time_distributed_17/StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ::::::::::2B
lstm_21/StatefulPartitionedCalllstm_21/StatefulPartitionedCall2B
lstm_22/StatefulPartitionedCalllstm_22/StatefulPartitionedCall2Z
+time_distributed_16/StatefulPartitionedCall+time_distributed_16/StatefulPartitionedCall2Z
+time_distributed_17/StatefulPartitionedCall+time_distributed_17/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_21_input
d
ô
C__inference_lstm_22_layer_call_and_return_conditional_losses_885442
inputs_0/
+lstm_cell_40_matmul_readvariableop_resource1
-lstm_cell_40_matmul_1_readvariableop_resource0
,lstm_cell_40_biasadd_readvariableop_resource
identity¢#lstm_cell_40/BiasAdd/ReadVariableOp¢"lstm_cell_40/MatMul/ReadVariableOp¢$lstm_cell_40/MatMul_1/ReadVariableOp¢whileF
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
strided_slice/stack_2â
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
B :è2
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
zeros/packed/1
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
:ÿÿÿÿÿÿÿÿÿ@2
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
B :è2
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
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2¶
"lstm_cell_40/MatMul/ReadVariableOpReadVariableOp+lstm_cell_40_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02$
"lstm_cell_40/MatMul/ReadVariableOp­
lstm_cell_40/MatMulMatMulstrided_slice_2:output:0*lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/MatMul»
$lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype02&
$lstm_cell_40/MatMul_1/ReadVariableOp©
lstm_cell_40/MatMul_1MatMulzeros:output:0,lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/MatMul_1 
lstm_cell_40/addAddV2lstm_cell_40/MatMul:product:0lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/add´
#lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_40/BiasAdd/ReadVariableOp­
lstm_cell_40/BiasAddBiasAddlstm_cell_40/add:z:0+lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/BiasAddj
lstm_cell_40/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_40/Const~
lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_40/split/split_dimó
lstm_cell_40/splitSplit%lstm_cell_40/split/split_dim:output:0lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split2
lstm_cell_40/split
lstm_cell_40/SigmoidSigmoidlstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Sigmoid
lstm_cell_40/Sigmoid_1Sigmoidlstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Sigmoid_1
lstm_cell_40/mulMullstm_cell_40/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/mul
lstm_cell_40/Sigmoid_2Sigmoidlstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Sigmoid_2
lstm_cell_40/mul_1Mullstm_cell_40/split:output:2lstm_cell_40/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/mul_1
lstm_cell_40/IdentityIdentitylstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Identityé
lstm_cell_40/IdentityN	IdentityNlstm_cell_40/mul_1:z:0lstm_cell_40/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-885327*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/IdentityN
lstm_cell_40/mul_2Mullstm_cell_40/Sigmoid:y:0lstm_cell_40/IdentityN:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/mul_2
lstm_cell_40/add_1AddV2lstm_cell_40/mul:z:0lstm_cell_40/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/add_1
lstm_cell_40/Sigmoid_3Sigmoidlstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Sigmoid_3
lstm_cell_40/Sigmoid_4Sigmoidlstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Sigmoid_4
lstm_cell_40/mul_3Mullstm_cell_40/add_1:z:0lstm_cell_40/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/mul_3
lstm_cell_40/Identity_1Identitylstm_cell_40/mul_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Identity_1è
lstm_cell_40/IdentityN_1	IdentityNlstm_cell_40/mul_3:z:0lstm_cell_40/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-885336*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/IdentityN_1 
lstm_cell_40/mul_4Mullstm_cell_40/Sigmoid_3:y:0!lstm_cell_40/IdentityN_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/mul_4
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterî
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_40_matmul_readvariableop_resource-lstm_cell_40_matmul_1_readvariableop_resource,lstm_cell_40_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_885347*
condR
while_cond_885346*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeê
IdentityIdentitytranspose_1:y:0$^lstm_cell_40/BiasAdd/ReadVariableOp#^lstm_cell_40/MatMul/ReadVariableOp%^lstm_cell_40/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::2J
#lstm_cell_40/BiasAdd/ReadVariableOp#lstm_cell_40/BiasAdd/ReadVariableOp2H
"lstm_cell_40/MatMul/ReadVariableOp"lstm_cell_40/MatMul/ReadVariableOp2L
$lstm_cell_40/MatMul_1/ReadVariableOp$lstm_cell_40/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
«
Ã
while_cond_885519
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_885519___redundant_placeholder04
0while_while_cond_885519___redundant_placeholder14
0while_while_cond_885519___redundant_placeholder24
0while_while_cond_885519___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:


(__inference_lstm_21_layer_call_fn_884901

inputs
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_21_layer_call_and_return_conditional_losses_8826652
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½
Í
-__inference_lstm_cell_40_layer_call_fn_886096

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2¢StatefulPartitionedCallÃ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_8815212
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*Y
_input_shapesH
F:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/1
¯
Ã
while_cond_882569
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_882569___redundant_placeholder04
0while_while_cond_882569___redundant_placeholder14
0while_while_cond_882569___redundant_placeholder24
0while_while_cond_882569___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Ì

O__inference_time_distributed_16_layer_call_and_return_conditional_losses_883109

inputs+
'dense_26_matmul_readvariableop_resource,
(dense_26_biasadd_readvariableop_resource
identity¢dense_26/BiasAdd/ReadVariableOp¢dense_26/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Reshape¨
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_26/MatMul/ReadVariableOp
dense_26/MatMulMatMulReshape:output:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_26/MatMul§
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_26/BiasAdd/ReadVariableOp¥
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_26/BiasAdd|
dense_26/SigmoidSigmoiddense_26/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_26/Sigmoid
dense_26/mulMuldense_26/BiasAdd:output:0dense_26/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_26/mulv
dense_26/IdentityIdentitydense_26/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_26/IdentityÙ
dense_26/IdentityN	IdentityNdense_26/mul:z:0dense_26/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-883100*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
dense_26/IdentityNw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ   @   2
Reshape_1/shape
	Reshape_1Reshapedense_26/IdentityN:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Reshape_1­
IdentityIdentityReshape_1:output:0 ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@::2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ì

O__inference_time_distributed_16_layer_call_and_return_conditional_losses_885677

inputs+
'dense_26_matmul_readvariableop_resource,
(dense_26_biasadd_readvariableop_resource
identity¢dense_26/BiasAdd/ReadVariableOp¢dense_26/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Reshape¨
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_26/MatMul/ReadVariableOp
dense_26/MatMulMatMulReshape:output:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_26/MatMul§
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_26/BiasAdd/ReadVariableOp¥
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_26/BiasAdd|
dense_26/SigmoidSigmoiddense_26/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_26/Sigmoid
dense_26/mulMuldense_26/BiasAdd:output:0dense_26/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_26/mulv
dense_26/IdentityIdentitydense_26/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_26/IdentityÙ
dense_26/IdentityN	IdentityNdense_26/mul:z:0dense_26/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-885668*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
dense_26/IdentityNw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ   @   2
Reshape_1/shape
	Reshape_1Reshapedense_26/IdentityN:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Reshape_1­
IdentityIdentityReshape_1:output:0 ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@::2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

»
O__inference_time_distributed_16_layer_call_and_return_conditional_losses_882188

inputs
dense_26_882178
dense_26_882180
identity¢ dense_26/StatefulPartitionedCallD
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
strided_slice/stack_2â
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
valueB"ÿÿÿÿ@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Reshape
 dense_26/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_26_882178dense_26_882180*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_8820952"
 dense_26/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2
Reshape_1/shape/2¨
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape¥
	Reshape_1Reshape)dense_26/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
	Reshape_1
IdentityIdentityReshape_1:output:0!^dense_26/StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@::2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ì"
ß
H__inference_lstm_cell_39_layer_call_and_return_conditional_losses_885959

inputs
states_0
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource

identity_2

identity_3

identity_4¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
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
split/split_dimÃ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
muld
	Sigmoid_2Sigmoidsplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2g
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1^
IdentityIdentity	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity·
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*,
_gradient_op_typeCustomGradient-885940*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
	IdentityNi
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2^
add_1AddV2mul:z:0	mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1d
	Sigmoid_3Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_3_
	Sigmoid_4Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_4b
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_3b

Identity_1Identity	mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1¶
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-885949*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
IdentityN_1m
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_4­

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2­

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_3­

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
¯
Ã
while_cond_884783
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_884783___redundant_placeholder04
0while_while_cond_884783___redundant_placeholder14
0while_while_cond_884783___redundant_placeholder24
0while_while_cond_884783___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ÚL
þ
while_body_884243
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_39_matmul_readvariableop_resource_09
5while_lstm_cell_39_matmul_1_readvariableop_resource_08
4while_lstm_cell_39_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_39_matmul_readvariableop_resource7
3while_lstm_cell_39_matmul_1_readvariableop_resource6
2while_lstm_cell_39_biasadd_readvariableop_resource¢)while/lstm_cell_39/BiasAdd/ReadVariableOp¢(while/lstm_cell_39/MatMul/ReadVariableOp¢*while/lstm_cell_39/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/lstm_cell_39/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_39_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02*
(while/lstm_cell_39/MatMul/ReadVariableOp×
while/lstm_cell_39/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/MatMulÐ
*while/lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_39_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02,
*while/lstm_cell_39/MatMul_1/ReadVariableOpÀ
while/lstm_cell_39/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/MatMul_1¸
while/lstm_cell_39/addAddV2#while/lstm_cell_39/MatMul:product:0%while/lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/addÈ
)while/lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_39_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_39/BiasAdd/ReadVariableOpÅ
while/lstm_cell_39/BiasAddBiasAddwhile/lstm_cell_39/add:z:01while/lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/BiasAddv
while/lstm_cell_39/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_39/Const
"while/lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_39/split/split_dim
while/lstm_cell_39/splitSplit+while/lstm_cell_39/split/split_dim:output:0#while/lstm_cell_39/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_39/split
while/lstm_cell_39/SigmoidSigmoid!while/lstm_cell_39/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Sigmoid
while/lstm_cell_39/Sigmoid_1Sigmoid!while/lstm_cell_39/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Sigmoid_1¡
while/lstm_cell_39/mulMul while/lstm_cell_39/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/mul
while/lstm_cell_39/Sigmoid_2Sigmoid!while/lstm_cell_39/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Sigmoid_2³
while/lstm_cell_39/mul_1Mul!while/lstm_cell_39/split:output:2 while/lstm_cell_39/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/mul_1
while/lstm_cell_39/IdentityIdentitywhile/lstm_cell_39/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Identity
while/lstm_cell_39/IdentityN	IdentityNwhile/lstm_cell_39/mul_1:z:0!while/lstm_cell_39/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-884286*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/IdentityNµ
while/lstm_cell_39/mul_2Mulwhile/lstm_cell_39/Sigmoid:y:0%while/lstm_cell_39/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/mul_2ª
while/lstm_cell_39/add_1AddV2while/lstm_cell_39/mul:z:0while/lstm_cell_39/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/add_1
while/lstm_cell_39/Sigmoid_3Sigmoid!while/lstm_cell_39/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Sigmoid_3
while/lstm_cell_39/Sigmoid_4Sigmoidwhile/lstm_cell_39/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Sigmoid_4®
while/lstm_cell_39/mul_3Mulwhile/lstm_cell_39/add_1:z:0 while/lstm_cell_39/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/mul_3
while/lstm_cell_39/Identity_1Identitywhile/lstm_cell_39/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Identity_1
while/lstm_cell_39/IdentityN_1	IdentityNwhile/lstm_cell_39/mul_3:z:0while/lstm_cell_39/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-884295*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2 
while/lstm_cell_39/IdentityN_1¹
while/lstm_cell_39/mul_4Mul while/lstm_cell_39/Sigmoid_3:y:0'while/lstm_cell_39/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/mul_4à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_39/mul_4:z:0*
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
while/add_1â
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_39/mul_4:z:0*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_39/add_1:z:0*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_39_biasadd_readvariableop_resource4while_lstm_cell_39_biasadd_readvariableop_resource_0"l
3while_lstm_cell_39_matmul_1_readvariableop_resource5while_lstm_cell_39_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_39_matmul_readvariableop_resource3while_lstm_cell_39_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : :::2V
)while/lstm_cell_39/BiasAdd/ReadVariableOp)while/lstm_cell_39/BiasAdd/ReadVariableOp2T
(while/lstm_cell_39/MatMul/ReadVariableOp(while/lstm_cell_39/MatMul/ReadVariableOp2X
*while/lstm_cell_39/MatMul_1/ReadVariableOp*while/lstm_cell_39/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
¶±

"__inference__traced_restore_886436
file_prefix
assignvariableop_adam_iter"
assignvariableop_1_adam_beta_1"
assignvariableop_2_adam_beta_2!
assignvariableop_3_adam_decay)
%assignvariableop_4_adam_learning_rate2
.assignvariableop_5_lstm_21_lstm_cell_39_kernel<
8assignvariableop_6_lstm_21_lstm_cell_39_recurrent_kernel0
,assignvariableop_7_lstm_21_lstm_cell_39_bias2
.assignvariableop_8_lstm_22_lstm_cell_40_kernel<
8assignvariableop_9_lstm_22_lstm_cell_40_recurrent_kernel1
-assignvariableop_10_lstm_22_lstm_cell_40_bias2
.assignvariableop_11_time_distributed_16_kernel0
,assignvariableop_12_time_distributed_16_bias2
.assignvariableop_13_time_distributed_17_kernel0
,assignvariableop_14_time_distributed_17_bias
assignvariableop_15_total
assignvariableop_16_count
assignvariableop_17_total_1
assignvariableop_18_count_1
assignvariableop_19_total_2
assignvariableop_20_count_2:
6assignvariableop_21_adam_lstm_21_lstm_cell_39_kernel_mD
@assignvariableop_22_adam_lstm_21_lstm_cell_39_recurrent_kernel_m8
4assignvariableop_23_adam_lstm_21_lstm_cell_39_bias_m:
6assignvariableop_24_adam_lstm_22_lstm_cell_40_kernel_mD
@assignvariableop_25_adam_lstm_22_lstm_cell_40_recurrent_kernel_m8
4assignvariableop_26_adam_lstm_22_lstm_cell_40_bias_m9
5assignvariableop_27_adam_time_distributed_16_kernel_m7
3assignvariableop_28_adam_time_distributed_16_bias_m9
5assignvariableop_29_adam_time_distributed_17_kernel_m7
3assignvariableop_30_adam_time_distributed_17_bias_m:
6assignvariableop_31_adam_lstm_21_lstm_cell_39_kernel_vD
@assignvariableop_32_adam_lstm_21_lstm_cell_39_recurrent_kernel_v8
4assignvariableop_33_adam_lstm_21_lstm_cell_39_bias_v:
6assignvariableop_34_adam_lstm_22_lstm_cell_40_kernel_vD
@assignvariableop_35_adam_lstm_22_lstm_cell_40_recurrent_kernel_v8
4assignvariableop_36_adam_lstm_22_lstm_cell_40_bias_v9
5assignvariableop_37_adam_time_distributed_16_kernel_v7
3assignvariableop_38_adam_time_distributed_16_bias_v9
5assignvariableop_39_adam_time_distributed_17_kernel_v7
3assignvariableop_40_adam_time_distributed_17_bias_v
identity_42¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9Ü
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:**
dtype0*è
valueÞBÛ*B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesâ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:**
dtype0*g
value^B\*B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*¾
_output_shapes«
¨::::::::::::::::::::::::::::::::::::::::::*8
dtypes.
,2*	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_adam_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1£
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_beta_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2£
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_2Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¢
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4ª
AssignVariableOp_4AssignVariableOp%assignvariableop_4_adam_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5³
AssignVariableOp_5AssignVariableOp.assignvariableop_5_lstm_21_lstm_cell_39_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6½
AssignVariableOp_6AssignVariableOp8assignvariableop_6_lstm_21_lstm_cell_39_recurrent_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7±
AssignVariableOp_7AssignVariableOp,assignvariableop_7_lstm_21_lstm_cell_39_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8³
AssignVariableOp_8AssignVariableOp.assignvariableop_8_lstm_22_lstm_cell_40_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9½
AssignVariableOp_9AssignVariableOp8assignvariableop_9_lstm_22_lstm_cell_40_recurrent_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10µ
AssignVariableOp_10AssignVariableOp-assignvariableop_10_lstm_22_lstm_cell_40_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11¶
AssignVariableOp_11AssignVariableOp.assignvariableop_11_time_distributed_16_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12´
AssignVariableOp_12AssignVariableOp,assignvariableop_12_time_distributed_16_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13¶
AssignVariableOp_13AssignVariableOp.assignvariableop_13_time_distributed_17_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14´
AssignVariableOp_14AssignVariableOp,assignvariableop_14_time_distributed_17_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15¡
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16¡
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17£
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18£
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19£
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_2Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20£
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_2Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21¾
AssignVariableOp_21AssignVariableOp6assignvariableop_21_adam_lstm_21_lstm_cell_39_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22È
AssignVariableOp_22AssignVariableOp@assignvariableop_22_adam_lstm_21_lstm_cell_39_recurrent_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23¼
AssignVariableOp_23AssignVariableOp4assignvariableop_23_adam_lstm_21_lstm_cell_39_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24¾
AssignVariableOp_24AssignVariableOp6assignvariableop_24_adam_lstm_22_lstm_cell_40_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25È
AssignVariableOp_25AssignVariableOp@assignvariableop_25_adam_lstm_22_lstm_cell_40_recurrent_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26¼
AssignVariableOp_26AssignVariableOp4assignvariableop_26_adam_lstm_22_lstm_cell_40_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27½
AssignVariableOp_27AssignVariableOp5assignvariableop_27_adam_time_distributed_16_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28»
AssignVariableOp_28AssignVariableOp3assignvariableop_28_adam_time_distributed_16_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29½
AssignVariableOp_29AssignVariableOp5assignvariableop_29_adam_time_distributed_17_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30»
AssignVariableOp_30AssignVariableOp3assignvariableop_30_adam_time_distributed_17_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31¾
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_lstm_21_lstm_cell_39_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32È
AssignVariableOp_32AssignVariableOp@assignvariableop_32_adam_lstm_21_lstm_cell_39_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33¼
AssignVariableOp_33AssignVariableOp4assignvariableop_33_adam_lstm_21_lstm_cell_39_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34¾
AssignVariableOp_34AssignVariableOp6assignvariableop_34_adam_lstm_22_lstm_cell_40_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35È
AssignVariableOp_35AssignVariableOp@assignvariableop_35_adam_lstm_22_lstm_cell_40_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36¼
AssignVariableOp_36AssignVariableOp4assignvariableop_36_adam_lstm_22_lstm_cell_40_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37½
AssignVariableOp_37AssignVariableOp5assignvariableop_37_adam_time_distributed_16_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38»
AssignVariableOp_38AssignVariableOp3assignvariableop_38_adam_time_distributed_16_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39½
AssignVariableOp_39AssignVariableOp5assignvariableop_39_adam_time_distributed_17_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40»
AssignVariableOp_40AssignVariableOp3assignvariableop_40_adam_time_distributed_17_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_409
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpä
Identity_41Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_41×
Identity_42IdentityIdentity_41:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_42"#
identity_42Identity_42:output:0*»
_input_shapes©
¦: :::::::::::::::::::::::::::::::::::::::::2$
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
 

ã
lstm_21_while_cond_883820,
(lstm_21_while_lstm_21_while_loop_counter2
.lstm_21_while_lstm_21_while_maximum_iterations
lstm_21_while_placeholder
lstm_21_while_placeholder_1
lstm_21_while_placeholder_2
lstm_21_while_placeholder_3.
*lstm_21_while_less_lstm_21_strided_slice_1D
@lstm_21_while_lstm_21_while_cond_883820___redundant_placeholder0D
@lstm_21_while_lstm_21_while_cond_883820___redundant_placeholder1D
@lstm_21_while_lstm_21_while_cond_883820___redundant_placeholder2D
@lstm_21_while_lstm_21_while_cond_883820___redundant_placeholder3
lstm_21_while_identity

lstm_21/while/LessLesslstm_21_while_placeholder*lstm_21_while_less_lstm_21_strided_slice_1*
T0*
_output_shapes
: 2
lstm_21/while/Lessu
lstm_21/while/IdentityIdentitylstm_21/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_21/while/Identity"9
lstm_21_while_identitylstm_21/while/Identity:output:0*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Çc
ò
C__inference_lstm_22_layer_call_and_return_conditional_losses_885074

inputs/
+lstm_cell_40_matmul_readvariableop_resource1
-lstm_cell_40_matmul_1_readvariableop_resource0
,lstm_cell_40_biasadd_readvariableop_resource
identity¢#lstm_cell_40/BiasAdd/ReadVariableOp¢"lstm_cell_40/MatMul/ReadVariableOp¢$lstm_cell_40/MatMul_1/ReadVariableOp¢whileD
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
strided_slice/stack_2â
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
B :è2
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
zeros/packed/1
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
:ÿÿÿÿÿÿÿÿÿ@2
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
B :è2
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
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ@2	
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
:ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2¶
"lstm_cell_40/MatMul/ReadVariableOpReadVariableOp+lstm_cell_40_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02$
"lstm_cell_40/MatMul/ReadVariableOp­
lstm_cell_40/MatMulMatMulstrided_slice_2:output:0*lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/MatMul»
$lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype02&
$lstm_cell_40/MatMul_1/ReadVariableOp©
lstm_cell_40/MatMul_1MatMulzeros:output:0,lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/MatMul_1 
lstm_cell_40/addAddV2lstm_cell_40/MatMul:product:0lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/add´
#lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_40/BiasAdd/ReadVariableOp­
lstm_cell_40/BiasAddBiasAddlstm_cell_40/add:z:0+lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/BiasAddj
lstm_cell_40/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_40/Const~
lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_40/split/split_dimó
lstm_cell_40/splitSplit%lstm_cell_40/split/split_dim:output:0lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split2
lstm_cell_40/split
lstm_cell_40/SigmoidSigmoidlstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Sigmoid
lstm_cell_40/Sigmoid_1Sigmoidlstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Sigmoid_1
lstm_cell_40/mulMullstm_cell_40/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/mul
lstm_cell_40/Sigmoid_2Sigmoidlstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Sigmoid_2
lstm_cell_40/mul_1Mullstm_cell_40/split:output:2lstm_cell_40/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/mul_1
lstm_cell_40/IdentityIdentitylstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Identityé
lstm_cell_40/IdentityN	IdentityNlstm_cell_40/mul_1:z:0lstm_cell_40/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-884959*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/IdentityN
lstm_cell_40/mul_2Mullstm_cell_40/Sigmoid:y:0lstm_cell_40/IdentityN:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/mul_2
lstm_cell_40/add_1AddV2lstm_cell_40/mul:z:0lstm_cell_40/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/add_1
lstm_cell_40/Sigmoid_3Sigmoidlstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Sigmoid_3
lstm_cell_40/Sigmoid_4Sigmoidlstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Sigmoid_4
lstm_cell_40/mul_3Mullstm_cell_40/add_1:z:0lstm_cell_40/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/mul_3
lstm_cell_40/Identity_1Identitylstm_cell_40/mul_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/Identity_1è
lstm_cell_40/IdentityN_1	IdentityNlstm_cell_40/mul_3:z:0lstm_cell_40/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-884968*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/IdentityN_1 
lstm_cell_40/mul_4Mullstm_cell_40/Sigmoid_3:y:0!lstm_cell_40/IdentityN_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_40/mul_4
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterî
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_40_matmul_readvariableop_resource-lstm_cell_40_matmul_1_readvariableop_resource,lstm_cell_40_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_884979*
condR
while_cond_884978*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¥
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeá
IdentityIdentitytranspose_1:y:0$^lstm_cell_40/BiasAdd/ReadVariableOp#^lstm_cell_40/MatMul/ReadVariableOp%^lstm_cell_40/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ:::2J
#lstm_cell_40/BiasAdd/ReadVariableOp#lstm_cell_40/BiasAdd/ReadVariableOp2H
"lstm_cell_40/MatMul/ReadVariableOp"lstm_cell_40/MatMul/ReadVariableOp2L
$lstm_cell_40/MatMul_1/ReadVariableOp$lstm_cell_40/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ì

O__inference_time_distributed_16_layer_call_and_return_conditional_losses_883089

inputs+
'dense_26_matmul_readvariableop_resource,
(dense_26_biasadd_readvariableop_resource
identity¢dense_26/BiasAdd/ReadVariableOp¢dense_26/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Reshape¨
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_26/MatMul/ReadVariableOp
dense_26/MatMulMatMulReshape:output:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_26/MatMul§
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_26/BiasAdd/ReadVariableOp¥
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_26/BiasAdd|
dense_26/SigmoidSigmoiddense_26/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_26/Sigmoid
dense_26/mulMuldense_26/BiasAdd:output:0dense_26/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_26/mulv
dense_26/IdentityIdentitydense_26/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_26/IdentityÙ
dense_26/IdentityN	IdentityNdense_26/mul:z:0dense_26/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-883080*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
dense_26/IdentityNw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ   @   2
Reshape_1/shape
	Reshape_1Reshapedense_26/IdentityN:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Reshape_1­
IdentityIdentityReshape_1:output:0 ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@::2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ÚL
þ
while_body_882570
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_39_matmul_readvariableop_resource_09
5while_lstm_cell_39_matmul_1_readvariableop_resource_08
4while_lstm_cell_39_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_39_matmul_readvariableop_resource7
3while_lstm_cell_39_matmul_1_readvariableop_resource6
2while_lstm_cell_39_biasadd_readvariableop_resource¢)while/lstm_cell_39/BiasAdd/ReadVariableOp¢(while/lstm_cell_39/MatMul/ReadVariableOp¢*while/lstm_cell_39/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/lstm_cell_39/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_39_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02*
(while/lstm_cell_39/MatMul/ReadVariableOp×
while/lstm_cell_39/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/MatMulÐ
*while/lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_39_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02,
*while/lstm_cell_39/MatMul_1/ReadVariableOpÀ
while/lstm_cell_39/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/MatMul_1¸
while/lstm_cell_39/addAddV2#while/lstm_cell_39/MatMul:product:0%while/lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/addÈ
)while/lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_39_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_39/BiasAdd/ReadVariableOpÅ
while/lstm_cell_39/BiasAddBiasAddwhile/lstm_cell_39/add:z:01while/lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/BiasAddv
while/lstm_cell_39/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_39/Const
"while/lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_39/split/split_dim
while/lstm_cell_39/splitSplit+while/lstm_cell_39/split/split_dim:output:0#while/lstm_cell_39/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_39/split
while/lstm_cell_39/SigmoidSigmoid!while/lstm_cell_39/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Sigmoid
while/lstm_cell_39/Sigmoid_1Sigmoid!while/lstm_cell_39/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Sigmoid_1¡
while/lstm_cell_39/mulMul while/lstm_cell_39/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/mul
while/lstm_cell_39/Sigmoid_2Sigmoid!while/lstm_cell_39/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Sigmoid_2³
while/lstm_cell_39/mul_1Mul!while/lstm_cell_39/split:output:2 while/lstm_cell_39/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/mul_1
while/lstm_cell_39/IdentityIdentitywhile/lstm_cell_39/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Identity
while/lstm_cell_39/IdentityN	IdentityNwhile/lstm_cell_39/mul_1:z:0!while/lstm_cell_39/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-882613*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/IdentityNµ
while/lstm_cell_39/mul_2Mulwhile/lstm_cell_39/Sigmoid:y:0%while/lstm_cell_39/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/mul_2ª
while/lstm_cell_39/add_1AddV2while/lstm_cell_39/mul:z:0while/lstm_cell_39/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/add_1
while/lstm_cell_39/Sigmoid_3Sigmoid!while/lstm_cell_39/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Sigmoid_3
while/lstm_cell_39/Sigmoid_4Sigmoidwhile/lstm_cell_39/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Sigmoid_4®
while/lstm_cell_39/mul_3Mulwhile/lstm_cell_39/add_1:z:0 while/lstm_cell_39/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/mul_3
while/lstm_cell_39/Identity_1Identitywhile/lstm_cell_39/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Identity_1
while/lstm_cell_39/IdentityN_1	IdentityNwhile/lstm_cell_39/mul_3:z:0while/lstm_cell_39/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-882622*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2 
while/lstm_cell_39/IdentityN_1¹
while/lstm_cell_39/mul_4Mul while/lstm_cell_39/Sigmoid_3:y:0'while/lstm_cell_39/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/mul_4à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_39/mul_4:z:0*
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
while/add_1â
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_39/mul_4:z:0*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_39/add_1:z:0*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_39_biasadd_readvariableop_resource4while_lstm_cell_39_biasadd_readvariableop_resource_0"l
3while_lstm_cell_39_matmul_1_readvariableop_resource5while_lstm_cell_39_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_39_matmul_readvariableop_resource3while_lstm_cell_39_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : :::2V
)while/lstm_cell_39/BiasAdd/ReadVariableOp)while/lstm_cell_39/BiasAdd/ReadVariableOp2T
(while/lstm_cell_39/MatMul/ReadVariableOp(while/lstm_cell_39/MatMul/ReadVariableOp2X
*while/lstm_cell_39/MatMul_1/ReadVariableOp*while/lstm_cell_39/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Åo

&sequential_9_lstm_22_while_body_880683F
Bsequential_9_lstm_22_while_sequential_9_lstm_22_while_loop_counterL
Hsequential_9_lstm_22_while_sequential_9_lstm_22_while_maximum_iterations*
&sequential_9_lstm_22_while_placeholder,
(sequential_9_lstm_22_while_placeholder_1,
(sequential_9_lstm_22_while_placeholder_2,
(sequential_9_lstm_22_while_placeholder_3E
Asequential_9_lstm_22_while_sequential_9_lstm_22_strided_slice_1_0
}sequential_9_lstm_22_while_tensorarrayv2read_tensorlistgetitem_sequential_9_lstm_22_tensorarrayunstack_tensorlistfromtensor_0L
Hsequential_9_lstm_22_while_lstm_cell_40_matmul_readvariableop_resource_0N
Jsequential_9_lstm_22_while_lstm_cell_40_matmul_1_readvariableop_resource_0M
Isequential_9_lstm_22_while_lstm_cell_40_biasadd_readvariableop_resource_0'
#sequential_9_lstm_22_while_identity)
%sequential_9_lstm_22_while_identity_1)
%sequential_9_lstm_22_while_identity_2)
%sequential_9_lstm_22_while_identity_3)
%sequential_9_lstm_22_while_identity_4)
%sequential_9_lstm_22_while_identity_5C
?sequential_9_lstm_22_while_sequential_9_lstm_22_strided_slice_1
{sequential_9_lstm_22_while_tensorarrayv2read_tensorlistgetitem_sequential_9_lstm_22_tensorarrayunstack_tensorlistfromtensorJ
Fsequential_9_lstm_22_while_lstm_cell_40_matmul_readvariableop_resourceL
Hsequential_9_lstm_22_while_lstm_cell_40_matmul_1_readvariableop_resourceK
Gsequential_9_lstm_22_while_lstm_cell_40_biasadd_readvariableop_resource¢>sequential_9/lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOp¢=sequential_9/lstm_22/while/lstm_cell_40/MatMul/ReadVariableOp¢?sequential_9/lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOpí
Lsequential_9/lstm_22/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2N
Lsequential_9/lstm_22/while/TensorArrayV2Read/TensorListGetItem/element_shapeÒ
>sequential_9/lstm_22/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_9_lstm_22_while_tensorarrayv2read_tensorlistgetitem_sequential_9_lstm_22_tensorarrayunstack_tensorlistfromtensor_0&sequential_9_lstm_22_while_placeholderUsequential_9/lstm_22/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02@
>sequential_9/lstm_22/while/TensorArrayV2Read/TensorListGetItem
=sequential_9/lstm_22/while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOpHsequential_9_lstm_22_while_lstm_cell_40_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02?
=sequential_9/lstm_22/while/lstm_cell_40/MatMul/ReadVariableOp«
.sequential_9/lstm_22/while/lstm_cell_40/MatMulMatMulEsequential_9/lstm_22/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_9/lstm_22/while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.sequential_9/lstm_22/while/lstm_cell_40/MatMul
?sequential_9/lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOpJsequential_9_lstm_22_while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes
:	@*
dtype02A
?sequential_9/lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOp
0sequential_9/lstm_22/while/lstm_cell_40/MatMul_1MatMul(sequential_9_lstm_22_while_placeholder_2Gsequential_9/lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0sequential_9/lstm_22/while/lstm_cell_40/MatMul_1
+sequential_9/lstm_22/while/lstm_cell_40/addAddV28sequential_9/lstm_22/while/lstm_cell_40/MatMul:product:0:sequential_9/lstm_22/while/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+sequential_9/lstm_22/while/lstm_cell_40/add
>sequential_9/lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOpIsequential_9_lstm_22_while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02@
>sequential_9/lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOp
/sequential_9/lstm_22/while/lstm_cell_40/BiasAddBiasAdd/sequential_9/lstm_22/while/lstm_cell_40/add:z:0Fsequential_9/lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/sequential_9/lstm_22/while/lstm_cell_40/BiasAdd 
-sequential_9/lstm_22/while/lstm_cell_40/ConstConst*
_output_shapes
: *
dtype0*
value	B :2/
-sequential_9/lstm_22/while/lstm_cell_40/Const´
7sequential_9/lstm_22/while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :29
7sequential_9/lstm_22/while/lstm_cell_40/split/split_dimß
-sequential_9/lstm_22/while/lstm_cell_40/splitSplit@sequential_9/lstm_22/while/lstm_cell_40/split/split_dim:output:08sequential_9/lstm_22/while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split2/
-sequential_9/lstm_22/while/lstm_cell_40/split×
/sequential_9/lstm_22/while/lstm_cell_40/SigmoidSigmoid6sequential_9/lstm_22/while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@21
/sequential_9/lstm_22/while/lstm_cell_40/SigmoidÛ
1sequential_9/lstm_22/while/lstm_cell_40/Sigmoid_1Sigmoid6sequential_9/lstm_22/while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@23
1sequential_9/lstm_22/while/lstm_cell_40/Sigmoid_1ô
+sequential_9/lstm_22/while/lstm_cell_40/mulMul5sequential_9/lstm_22/while/lstm_cell_40/Sigmoid_1:y:0(sequential_9_lstm_22_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2-
+sequential_9/lstm_22/while/lstm_cell_40/mulÛ
1sequential_9/lstm_22/while/lstm_cell_40/Sigmoid_2Sigmoid6sequential_9/lstm_22/while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@23
1sequential_9/lstm_22/while/lstm_cell_40/Sigmoid_2
-sequential_9/lstm_22/while/lstm_cell_40/mul_1Mul6sequential_9/lstm_22/while/lstm_cell_40/split:output:25sequential_9/lstm_22/while/lstm_cell_40/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2/
-sequential_9/lstm_22/while/lstm_cell_40/mul_1Õ
0sequential_9/lstm_22/while/lstm_cell_40/IdentityIdentity1sequential_9/lstm_22/while/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@22
0sequential_9/lstm_22/while/lstm_cell_40/IdentityÕ
1sequential_9/lstm_22/while/lstm_cell_40/IdentityN	IdentityN1sequential_9/lstm_22/while/lstm_cell_40/mul_1:z:06sequential_9/lstm_22/while/lstm_cell_40/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-880726*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@23
1sequential_9/lstm_22/while/lstm_cell_40/IdentityN
-sequential_9/lstm_22/while/lstm_cell_40/mul_2Mul3sequential_9/lstm_22/while/lstm_cell_40/Sigmoid:y:0:sequential_9/lstm_22/while/lstm_cell_40/IdentityN:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2/
-sequential_9/lstm_22/while/lstm_cell_40/mul_2ý
-sequential_9/lstm_22/while/lstm_cell_40/add_1AddV2/sequential_9/lstm_22/while/lstm_cell_40/mul:z:01sequential_9/lstm_22/while/lstm_cell_40/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2/
-sequential_9/lstm_22/while/lstm_cell_40/add_1Û
1sequential_9/lstm_22/while/lstm_cell_40/Sigmoid_3Sigmoid6sequential_9/lstm_22/while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@23
1sequential_9/lstm_22/while/lstm_cell_40/Sigmoid_3Ö
1sequential_9/lstm_22/while/lstm_cell_40/Sigmoid_4Sigmoid1sequential_9/lstm_22/while/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@23
1sequential_9/lstm_22/while/lstm_cell_40/Sigmoid_4
-sequential_9/lstm_22/while/lstm_cell_40/mul_3Mul1sequential_9/lstm_22/while/lstm_cell_40/add_1:z:05sequential_9/lstm_22/while/lstm_cell_40/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2/
-sequential_9/lstm_22/while/lstm_cell_40/mul_3Ù
2sequential_9/lstm_22/while/lstm_cell_40/Identity_1Identity1sequential_9/lstm_22/while/lstm_cell_40/mul_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@24
2sequential_9/lstm_22/while/lstm_cell_40/Identity_1Ô
3sequential_9/lstm_22/while/lstm_cell_40/IdentityN_1	IdentityN1sequential_9/lstm_22/while/lstm_cell_40/mul_3:z:01sequential_9/lstm_22/while/lstm_cell_40/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-880735*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@25
3sequential_9/lstm_22/while/lstm_cell_40/IdentityN_1
-sequential_9/lstm_22/while/lstm_cell_40/mul_4Mul5sequential_9/lstm_22/while/lstm_cell_40/Sigmoid_3:y:0<sequential_9/lstm_22/while/lstm_cell_40/IdentityN_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2/
-sequential_9/lstm_22/while/lstm_cell_40/mul_4É
?sequential_9/lstm_22/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_9_lstm_22_while_placeholder_1&sequential_9_lstm_22_while_placeholder1sequential_9/lstm_22/while/lstm_cell_40/mul_4:z:0*
_output_shapes
: *
element_dtype02A
?sequential_9/lstm_22/while/TensorArrayV2Write/TensorListSetItem
 sequential_9/lstm_22/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 sequential_9/lstm_22/while/add/y½
sequential_9/lstm_22/while/addAddV2&sequential_9_lstm_22_while_placeholder)sequential_9/lstm_22/while/add/y:output:0*
T0*
_output_shapes
: 2 
sequential_9/lstm_22/while/add
"sequential_9/lstm_22/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_9/lstm_22/while/add_1/yß
 sequential_9/lstm_22/while/add_1AddV2Bsequential_9_lstm_22_while_sequential_9_lstm_22_while_loop_counter+sequential_9/lstm_22/while/add_1/y:output:0*
T0*
_output_shapes
: 2"
 sequential_9/lstm_22/while/add_1à
#sequential_9/lstm_22/while/IdentityIdentity$sequential_9/lstm_22/while/add_1:z:0?^sequential_9/lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOp>^sequential_9/lstm_22/while/lstm_cell_40/MatMul/ReadVariableOp@^sequential_9/lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2%
#sequential_9/lstm_22/while/Identity
%sequential_9/lstm_22/while/Identity_1IdentityHsequential_9_lstm_22_while_sequential_9_lstm_22_while_maximum_iterations?^sequential_9/lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOp>^sequential_9/lstm_22/while/lstm_cell_40/MatMul/ReadVariableOp@^sequential_9/lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2'
%sequential_9/lstm_22/while/Identity_1â
%sequential_9/lstm_22/while/Identity_2Identity"sequential_9/lstm_22/while/add:z:0?^sequential_9/lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOp>^sequential_9/lstm_22/while/lstm_cell_40/MatMul/ReadVariableOp@^sequential_9/lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2'
%sequential_9/lstm_22/while/Identity_2
%sequential_9/lstm_22/while/Identity_3IdentityOsequential_9/lstm_22/while/TensorArrayV2Write/TensorListSetItem:output_handle:0?^sequential_9/lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOp>^sequential_9/lstm_22/while/lstm_cell_40/MatMul/ReadVariableOp@^sequential_9/lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2'
%sequential_9/lstm_22/while/Identity_3
%sequential_9/lstm_22/while/Identity_4Identity1sequential_9/lstm_22/while/lstm_cell_40/mul_4:z:0?^sequential_9/lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOp>^sequential_9/lstm_22/while/lstm_cell_40/MatMul/ReadVariableOp@^sequential_9/lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2'
%sequential_9/lstm_22/while/Identity_4
%sequential_9/lstm_22/while/Identity_5Identity1sequential_9/lstm_22/while/lstm_cell_40/add_1:z:0?^sequential_9/lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOp>^sequential_9/lstm_22/while/lstm_cell_40/MatMul/ReadVariableOp@^sequential_9/lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2'
%sequential_9/lstm_22/while/Identity_5"S
#sequential_9_lstm_22_while_identity,sequential_9/lstm_22/while/Identity:output:0"W
%sequential_9_lstm_22_while_identity_1.sequential_9/lstm_22/while/Identity_1:output:0"W
%sequential_9_lstm_22_while_identity_2.sequential_9/lstm_22/while/Identity_2:output:0"W
%sequential_9_lstm_22_while_identity_3.sequential_9/lstm_22/while/Identity_3:output:0"W
%sequential_9_lstm_22_while_identity_4.sequential_9/lstm_22/while/Identity_4:output:0"W
%sequential_9_lstm_22_while_identity_5.sequential_9/lstm_22/while/Identity_5:output:0"
Gsequential_9_lstm_22_while_lstm_cell_40_biasadd_readvariableop_resourceIsequential_9_lstm_22_while_lstm_cell_40_biasadd_readvariableop_resource_0"
Hsequential_9_lstm_22_while_lstm_cell_40_matmul_1_readvariableop_resourceJsequential_9_lstm_22_while_lstm_cell_40_matmul_1_readvariableop_resource_0"
Fsequential_9_lstm_22_while_lstm_cell_40_matmul_readvariableop_resourceHsequential_9_lstm_22_while_lstm_cell_40_matmul_readvariableop_resource_0"
?sequential_9_lstm_22_while_sequential_9_lstm_22_strided_slice_1Asequential_9_lstm_22_while_sequential_9_lstm_22_strided_slice_1_0"ü
{sequential_9_lstm_22_while_tensorarrayv2read_tensorlistgetitem_sequential_9_lstm_22_tensorarrayunstack_tensorlistfromtensor}sequential_9_lstm_22_while_tensorarrayv2read_tensorlistgetitem_sequential_9_lstm_22_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :::2
>sequential_9/lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOp>sequential_9/lstm_22/while/lstm_cell_40/BiasAdd/ReadVariableOp2~
=sequential_9/lstm_22/while/lstm_cell_40/MatMul/ReadVariableOp=sequential_9/lstm_22/while/lstm_cell_40/MatMul/ReadVariableOp2
?sequential_9/lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOp?sequential_9/lstm_22/while/lstm_cell_40/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
¤%

while_body_881228
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_39_881252_0
while_lstm_cell_39_881254_0
while_lstm_cell_39_881256_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_39_881252
while_lstm_cell_39_881254
while_lstm_cell_39_881256¢*while/lstm_cell_39/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemä
*while/lstm_cell_39/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_39_881252_0while_lstm_cell_39_881254_0while_lstm_cell_39_881256_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_39_layer_call_and_return_conditional_losses_8808912,
*while/lstm_cell_39/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_39/StatefulPartitionedCall:output:0*
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
while/add_1
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_39/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_39/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_39/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2º
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_39/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Å
while/Identity_4Identity3while/lstm_cell_39/StatefulPartitionedCall:output:1+^while/lstm_cell_39/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4Å
while/Identity_5Identity3while/lstm_cell_39/StatefulPartitionedCall:output:2+^while/lstm_cell_39/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_39_881252while_lstm_cell_39_881252_0"8
while_lstm_cell_39_881254while_lstm_cell_39_881254_0"8
while_lstm_cell_39_881256while_lstm_cell_39_881256_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : :::2X
*while/lstm_cell_39/StatefulPartitionedCall*while/lstm_cell_39/StatefulPartitionedCall: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Z
þ	
lstm_21_while_body_883821,
(lstm_21_while_lstm_21_while_loop_counter2
.lstm_21_while_lstm_21_while_maximum_iterations
lstm_21_while_placeholder
lstm_21_while_placeholder_1
lstm_21_while_placeholder_2
lstm_21_while_placeholder_3+
'lstm_21_while_lstm_21_strided_slice_1_0g
clstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensor_0?
;lstm_21_while_lstm_cell_39_matmul_readvariableop_resource_0A
=lstm_21_while_lstm_cell_39_matmul_1_readvariableop_resource_0@
<lstm_21_while_lstm_cell_39_biasadd_readvariableop_resource_0
lstm_21_while_identity
lstm_21_while_identity_1
lstm_21_while_identity_2
lstm_21_while_identity_3
lstm_21_while_identity_4
lstm_21_while_identity_5)
%lstm_21_while_lstm_21_strided_slice_1e
alstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensor=
9lstm_21_while_lstm_cell_39_matmul_readvariableop_resource?
;lstm_21_while_lstm_cell_39_matmul_1_readvariableop_resource>
:lstm_21_while_lstm_cell_39_biasadd_readvariableop_resource¢1lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOp¢0lstm_21/while/lstm_cell_39/MatMul/ReadVariableOp¢2lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOpÓ
?lstm_21/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_21/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_21/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensor_0lstm_21_while_placeholderHlstm_21/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_21/while/TensorArrayV2Read/TensorListGetItemá
0lstm_21/while/lstm_cell_39/MatMul/ReadVariableOpReadVariableOp;lstm_21_while_lstm_cell_39_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype022
0lstm_21/while/lstm_cell_39/MatMul/ReadVariableOp÷
!lstm_21/while/lstm_cell_39/MatMulMatMul8lstm_21/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_21/while/lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_21/while/lstm_cell_39/MatMulè
2lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOp=lstm_21_while_lstm_cell_39_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype024
2lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOpà
#lstm_21/while/lstm_cell_39/MatMul_1MatMullstm_21_while_placeholder_2:lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#lstm_21/while/lstm_cell_39/MatMul_1Ø
lstm_21/while/lstm_cell_39/addAddV2+lstm_21/while/lstm_cell_39/MatMul:product:0-lstm_21/while/lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_21/while/lstm_cell_39/addà
1lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOp<lstm_21_while_lstm_cell_39_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype023
1lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOpå
"lstm_21/while/lstm_cell_39/BiasAddBiasAdd"lstm_21/while/lstm_cell_39/add:z:09lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_21/while/lstm_cell_39/BiasAdd
 lstm_21/while/lstm_cell_39/ConstConst*
_output_shapes
: *
dtype0*
value	B :2"
 lstm_21/while/lstm_cell_39/Const
*lstm_21/while/lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_21/while/lstm_cell_39/split/split_dim¯
 lstm_21/while/lstm_cell_39/splitSplit3lstm_21/while/lstm_cell_39/split/split_dim:output:0+lstm_21/while/lstm_cell_39/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2"
 lstm_21/while/lstm_cell_39/split±
"lstm_21/while/lstm_cell_39/SigmoidSigmoid)lstm_21/while/lstm_cell_39/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_21/while/lstm_cell_39/Sigmoidµ
$lstm_21/while/lstm_cell_39/Sigmoid_1Sigmoid)lstm_21/while/lstm_cell_39/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_21/while/lstm_cell_39/Sigmoid_1Á
lstm_21/while/lstm_cell_39/mulMul(lstm_21/while/lstm_cell_39/Sigmoid_1:y:0lstm_21_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_21/while/lstm_cell_39/mulµ
$lstm_21/while/lstm_cell_39/Sigmoid_2Sigmoid)lstm_21/while/lstm_cell_39/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_21/while/lstm_cell_39/Sigmoid_2Ó
 lstm_21/while/lstm_cell_39/mul_1Mul)lstm_21/while/lstm_cell_39/split:output:2(lstm_21/while/lstm_cell_39/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_21/while/lstm_cell_39/mul_1¯
#lstm_21/while/lstm_cell_39/IdentityIdentity$lstm_21/while/lstm_cell_39/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#lstm_21/while/lstm_cell_39/Identity£
$lstm_21/while/lstm_cell_39/IdentityN	IdentityN$lstm_21/while/lstm_cell_39/mul_1:z:0)lstm_21/while/lstm_cell_39/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-883864*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2&
$lstm_21/while/lstm_cell_39/IdentityNÕ
 lstm_21/while/lstm_cell_39/mul_2Mul&lstm_21/while/lstm_cell_39/Sigmoid:y:0-lstm_21/while/lstm_cell_39/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_21/while/lstm_cell_39/mul_2Ê
 lstm_21/while/lstm_cell_39/add_1AddV2"lstm_21/while/lstm_cell_39/mul:z:0$lstm_21/while/lstm_cell_39/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_21/while/lstm_cell_39/add_1µ
$lstm_21/while/lstm_cell_39/Sigmoid_3Sigmoid)lstm_21/while/lstm_cell_39/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_21/while/lstm_cell_39/Sigmoid_3°
$lstm_21/while/lstm_cell_39/Sigmoid_4Sigmoid$lstm_21/while/lstm_cell_39/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_21/while/lstm_cell_39/Sigmoid_4Î
 lstm_21/while/lstm_cell_39/mul_3Mul$lstm_21/while/lstm_cell_39/add_1:z:0(lstm_21/while/lstm_cell_39/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_21/while/lstm_cell_39/mul_3³
%lstm_21/while/lstm_cell_39/Identity_1Identity$lstm_21/while/lstm_cell_39/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%lstm_21/while/lstm_cell_39/Identity_1¢
&lstm_21/while/lstm_cell_39/IdentityN_1	IdentityN$lstm_21/while/lstm_cell_39/mul_3:z:0$lstm_21/while/lstm_cell_39/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-883873*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2(
&lstm_21/while/lstm_cell_39/IdentityN_1Ù
 lstm_21/while/lstm_cell_39/mul_4Mul(lstm_21/while/lstm_cell_39/Sigmoid_3:y:0/lstm_21/while/lstm_cell_39/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_21/while/lstm_cell_39/mul_4
2lstm_21/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_21_while_placeholder_1lstm_21_while_placeholder$lstm_21/while/lstm_cell_39/mul_4:z:0*
_output_shapes
: *
element_dtype024
2lstm_21/while/TensorArrayV2Write/TensorListSetIteml
lstm_21/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_21/while/add/y
lstm_21/while/addAddV2lstm_21_while_placeholderlstm_21/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_21/while/addp
lstm_21/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_21/while/add_1/y
lstm_21/while/add_1AddV2(lstm_21_while_lstm_21_while_loop_counterlstm_21/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_21/while/add_1
lstm_21/while/IdentityIdentitylstm_21/while/add_1:z:02^lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOp1^lstm_21/while/lstm_cell_39/MatMul/ReadVariableOp3^lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_21/while/Identity­
lstm_21/while/Identity_1Identity.lstm_21_while_lstm_21_while_maximum_iterations2^lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOp1^lstm_21/while/lstm_cell_39/MatMul/ReadVariableOp3^lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_21/while/Identity_1
lstm_21/while/Identity_2Identitylstm_21/while/add:z:02^lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOp1^lstm_21/while/lstm_cell_39/MatMul/ReadVariableOp3^lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_21/while/Identity_2Á
lstm_21/while/Identity_3IdentityBlstm_21/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOp1^lstm_21/while/lstm_cell_39/MatMul/ReadVariableOp3^lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_21/while/Identity_3µ
lstm_21/while/Identity_4Identity$lstm_21/while/lstm_cell_39/mul_4:z:02^lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOp1^lstm_21/while/lstm_cell_39/MatMul/ReadVariableOp3^lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/while/Identity_4µ
lstm_21/while/Identity_5Identity$lstm_21/while/lstm_cell_39/add_1:z:02^lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOp1^lstm_21/while/lstm_cell_39/MatMul/ReadVariableOp3^lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/while/Identity_5"9
lstm_21_while_identitylstm_21/while/Identity:output:0"=
lstm_21_while_identity_1!lstm_21/while/Identity_1:output:0"=
lstm_21_while_identity_2!lstm_21/while/Identity_2:output:0"=
lstm_21_while_identity_3!lstm_21/while/Identity_3:output:0"=
lstm_21_while_identity_4!lstm_21/while/Identity_4:output:0"=
lstm_21_while_identity_5!lstm_21/while/Identity_5:output:0"P
%lstm_21_while_lstm_21_strided_slice_1'lstm_21_while_lstm_21_strided_slice_1_0"z
:lstm_21_while_lstm_cell_39_biasadd_readvariableop_resource<lstm_21_while_lstm_cell_39_biasadd_readvariableop_resource_0"|
;lstm_21_while_lstm_cell_39_matmul_1_readvariableop_resource=lstm_21_while_lstm_cell_39_matmul_1_readvariableop_resource_0"x
9lstm_21_while_lstm_cell_39_matmul_readvariableop_resource;lstm_21_while_lstm_cell_39_matmul_readvariableop_resource_0"È
alstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensorclstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : :::2f
1lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOp1lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOp2d
0lstm_21/while/lstm_cell_39/MatMul/ReadVariableOp0lstm_21/while/lstm_cell_39/MatMul/ReadVariableOp2h
2lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOp2lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ÀL
þ
while_body_885152
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_40_matmul_readvariableop_resource_09
5while_lstm_cell_40_matmul_1_readvariableop_resource_08
4while_lstm_cell_40_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_40_matmul_readvariableop_resource7
3while_lstm_cell_40_matmul_1_readvariableop_resource6
2while_lstm_cell_40_biasadd_readvariableop_resource¢)while/lstm_cell_40/BiasAdd/ReadVariableOp¢(while/lstm_cell_40/MatMul/ReadVariableOp¢*while/lstm_cell_40/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÊ
(while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_40_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02*
(while/lstm_cell_40/MatMul/ReadVariableOp×
while/lstm_cell_40/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/MatMulÏ
*while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes
:	@*
dtype02,
*while/lstm_cell_40/MatMul_1/ReadVariableOpÀ
while/lstm_cell_40/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/MatMul_1¸
while/lstm_cell_40/addAddV2#while/lstm_cell_40/MatMul:product:0%while/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/addÈ
)while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_40/BiasAdd/ReadVariableOpÅ
while/lstm_cell_40/BiasAddBiasAddwhile/lstm_cell_40/add:z:01while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/BiasAddv
while/lstm_cell_40/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_40/Const
"while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_40/split/split_dim
while/lstm_cell_40/splitSplit+while/lstm_cell_40/split/split_dim:output:0#while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split2
while/lstm_cell_40/split
while/lstm_cell_40/SigmoidSigmoid!while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Sigmoid
while/lstm_cell_40/Sigmoid_1Sigmoid!while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Sigmoid_1 
while/lstm_cell_40/mulMul while/lstm_cell_40/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/mul
while/lstm_cell_40/Sigmoid_2Sigmoid!while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Sigmoid_2²
while/lstm_cell_40/mul_1Mul!while/lstm_cell_40/split:output:2 while/lstm_cell_40/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/mul_1
while/lstm_cell_40/IdentityIdentitywhile/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Identity
while/lstm_cell_40/IdentityN	IdentityNwhile/lstm_cell_40/mul_1:z:0!while/lstm_cell_40/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-885195*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/IdentityN´
while/lstm_cell_40/mul_2Mulwhile/lstm_cell_40/Sigmoid:y:0%while/lstm_cell_40/IdentityN:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/mul_2©
while/lstm_cell_40/add_1AddV2while/lstm_cell_40/mul:z:0while/lstm_cell_40/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/add_1
while/lstm_cell_40/Sigmoid_3Sigmoid!while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Sigmoid_3
while/lstm_cell_40/Sigmoid_4Sigmoidwhile/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Sigmoid_4­
while/lstm_cell_40/mul_3Mulwhile/lstm_cell_40/add_1:z:0 while/lstm_cell_40/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/mul_3
while/lstm_cell_40/Identity_1Identitywhile/lstm_cell_40/mul_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Identity_1
while/lstm_cell_40/IdentityN_1	IdentityNwhile/lstm_cell_40/mul_3:z:0while/lstm_cell_40/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-885204*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2 
while/lstm_cell_40/IdentityN_1¸
while/lstm_cell_40/mul_4Mul while/lstm_cell_40/Sigmoid_3:y:0'while/lstm_cell_40/IdentityN_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/mul_4à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_40/mul_4:z:0*
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
while/add_1â
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_40/mul_4:z:0*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_40/add_1:z:0*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_40_biasadd_readvariableop_resource4while_lstm_cell_40_biasadd_readvariableop_resource_0"l
3while_lstm_cell_40_matmul_1_readvariableop_resource5while_lstm_cell_40_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_40_matmul_readvariableop_resource3while_lstm_cell_40_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :::2V
)while/lstm_cell_40/BiasAdd/ReadVariableOp)while/lstm_cell_40/BiasAdd/ReadVariableOp2T
(while/lstm_cell_40/MatMul/ReadVariableOp(while/lstm_cell_40/MatMul/ReadVariableOp2X
*while/lstm_cell_40/MatMul_1/ReadVariableOp*while/lstm_cell_40/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
ãD
Ü
C__inference_lstm_22_layer_call_and_return_conditional_losses_881927

inputs
lstm_cell_40_881845
lstm_cell_40_881847
lstm_cell_40_881849
identity¢$lstm_cell_40/StatefulPartitionedCall¢whileD
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
strided_slice/stack_2â
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
B :è2
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
zeros/packed/1
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
:ÿÿÿÿÿÿÿÿÿ@2
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
B :è2
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
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2
$lstm_cell_40/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_40_881845lstm_cell_40_881847lstm_cell_40_881849*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_8815212&
$lstm_cell_40/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter£
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_40_881845lstm_cell_40_881847lstm_cell_40_881849*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_881858*
condR
while_cond_881857*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitytranspose_1:y:0%^lstm_cell_40/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::2L
$lstm_cell_40/StatefulPartitionedCall$lstm_cell_40/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï

O__inference_time_distributed_17_layer_call_and_return_conditional_losses_883162

inputs+
'dense_27_matmul_readvariableop_resource,
(dense_27_biasadd_readvariableop_resource
identity¢dense_27/BiasAdd/ReadVariableOp¢dense_27/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Reshape¨
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_27/MatMul/ReadVariableOp
dense_27/MatMulMatMulReshape:output:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_27/MatMul§
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_27/BiasAdd/ReadVariableOp¥
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_27/BiasAddw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ      2
Reshape_1/shape
	Reshape_1Reshapedense_27/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Reshape_1­
IdentityIdentityReshape_1:output:0 ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@::2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

»
O__inference_time_distributed_17_layer_call_and_return_conditional_losses_882309

inputs
dense_27_882299
dense_27_882301
identity¢ dense_27/StatefulPartitionedCallD
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
strided_slice/stack_2â
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
valueB"ÿÿÿÿ@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Reshape
 dense_27/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_27_882299dense_27_882301*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_8822162"
 dense_27/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2¨
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape¥
	Reshape_1Reshape)dense_27/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	Reshape_1
IdentityIdentityReshape_1:output:0!^dense_27/StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@::2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
·

O__inference_time_distributed_17_layer_call_and_return_conditional_losses_885834

inputs+
'dense_27_matmul_readvariableop_resource,
(dense_27_biasadd_readvariableop_resource
identity¢dense_27/BiasAdd/ReadVariableOp¢dense_27/MatMul/ReadVariableOpD
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
strided_slice/stack_2â
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
valueB"ÿÿÿÿ@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Reshape¨
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_27/MatMul/ReadVariableOp
dense_27/MatMulMatMulReshape:output:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_27/MatMul§
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_27/BiasAdd/ReadVariableOp¥
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_27/BiasAddq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2¨
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape
	Reshape_1Reshapedense_27/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	Reshape_1¶
IdentityIdentityReshape_1:output:0 ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@::2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¥d
ô
C__inference_lstm_21_layer_call_and_return_conditional_losses_884338
inputs_0/
+lstm_cell_39_matmul_readvariableop_resource1
-lstm_cell_39_matmul_1_readvariableop_resource0
,lstm_cell_39_biasadd_readvariableop_resource
identity¢#lstm_cell_39/BiasAdd/ReadVariableOp¢"lstm_cell_39/MatMul/ReadVariableOp¢$lstm_cell_39/MatMul_1/ReadVariableOp¢whileF
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
strided_slice/stack_2â
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
B :2
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
B :è2
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
B :2
zeros/packed/1
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
:ÿÿÿÿÿÿÿÿÿ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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
B :è2
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
B :2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2µ
"lstm_cell_39/MatMul/ReadVariableOpReadVariableOp+lstm_cell_39_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02$
"lstm_cell_39/MatMul/ReadVariableOp­
lstm_cell_39/MatMulMatMulstrided_slice_2:output:0*lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/MatMul¼
$lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_39_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02&
$lstm_cell_39/MatMul_1/ReadVariableOp©
lstm_cell_39/MatMul_1MatMulzeros:output:0,lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/MatMul_1 
lstm_cell_39/addAddV2lstm_cell_39/MatMul:product:0lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/add´
#lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_39_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_39/BiasAdd/ReadVariableOp­
lstm_cell_39/BiasAddBiasAddlstm_cell_39/add:z:0+lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/BiasAddj
lstm_cell_39/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_39/Const~
lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_39/split/split_dim÷
lstm_cell_39/splitSplit%lstm_cell_39/split/split_dim:output:0lstm_cell_39/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_39/split
lstm_cell_39/SigmoidSigmoidlstm_cell_39/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Sigmoid
lstm_cell_39/Sigmoid_1Sigmoidlstm_cell_39/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Sigmoid_1
lstm_cell_39/mulMullstm_cell_39/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/mul
lstm_cell_39/Sigmoid_2Sigmoidlstm_cell_39/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Sigmoid_2
lstm_cell_39/mul_1Mullstm_cell_39/split:output:2lstm_cell_39/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/mul_1
lstm_cell_39/IdentityIdentitylstm_cell_39/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Identityë
lstm_cell_39/IdentityN	IdentityNlstm_cell_39/mul_1:z:0lstm_cell_39/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-884223*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/IdentityN
lstm_cell_39/mul_2Mullstm_cell_39/Sigmoid:y:0lstm_cell_39/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/mul_2
lstm_cell_39/add_1AddV2lstm_cell_39/mul:z:0lstm_cell_39/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/add_1
lstm_cell_39/Sigmoid_3Sigmoidlstm_cell_39/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Sigmoid_3
lstm_cell_39/Sigmoid_4Sigmoidlstm_cell_39/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Sigmoid_4
lstm_cell_39/mul_3Mullstm_cell_39/add_1:z:0lstm_cell_39/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/mul_3
lstm_cell_39/Identity_1Identitylstm_cell_39/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/Identity_1ê
lstm_cell_39/IdentityN_1	IdentityNlstm_cell_39/mul_3:z:0lstm_cell_39/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-884232*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/IdentityN_1¡
lstm_cell_39/mul_4Mullstm_cell_39/Sigmoid_3:y:0!lstm_cell_39/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_39/mul_4
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterò
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_39_matmul_readvariableop_resource-lstm_cell_39_matmul_1_readvariableop_resource,lstm_cell_39_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_884243*
condR
while_cond_884242*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeë
IdentityIdentitytranspose_1:y:0$^lstm_cell_39/BiasAdd/ReadVariableOp#^lstm_cell_39/MatMul/ReadVariableOp%^lstm_cell_39/MatMul_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::2J
#lstm_cell_39/BiasAdd/ReadVariableOp#lstm_cell_39/BiasAdd/ReadVariableOp2H
"lstm_cell_39/MatMul/ReadVariableOp"lstm_cell_39/MatMul/ReadVariableOp2L
$lstm_cell_39/MatMul_1/ReadVariableOp$lstm_cell_39/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ðD
Ü
C__inference_lstm_21_layer_call_and_return_conditional_losses_881429

inputs
lstm_cell_39_881347
lstm_cell_39_881349
lstm_cell_39_881351
identity¢$lstm_cell_39/StatefulPartitionedCall¢whileD
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
strided_slice/stack_2â
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
B :2
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
B :è2
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
B :2
zeros/packed/1
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
:ÿÿÿÿÿÿÿÿÿ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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
B :è2
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
B :2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2 
$lstm_cell_39/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_39_881347lstm_cell_39_881349lstm_cell_39_881351*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_39_layer_call_and_return_conditional_losses_8809342&
$lstm_cell_39/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter§
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_39_881347lstm_cell_39_881349lstm_cell_39_881351*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_881360*
condR
while_cond_881359*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime 
IdentityIdentitytranspose_1:y:0%^lstm_cell_39/StatefulPartitionedCall^while*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::2L
$lstm_cell_39/StatefulPartitionedCall$lstm_cell_39/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÀL
þ
while_body_882772
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_40_matmul_readvariableop_resource_09
5while_lstm_cell_40_matmul_1_readvariableop_resource_08
4while_lstm_cell_40_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_40_matmul_readvariableop_resource7
3while_lstm_cell_40_matmul_1_readvariableop_resource6
2while_lstm_cell_40_biasadd_readvariableop_resource¢)while/lstm_cell_40/BiasAdd/ReadVariableOp¢(while/lstm_cell_40/MatMul/ReadVariableOp¢*while/lstm_cell_40/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÊ
(while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_40_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02*
(while/lstm_cell_40/MatMul/ReadVariableOp×
while/lstm_cell_40/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/MatMulÏ
*while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes
:	@*
dtype02,
*while/lstm_cell_40/MatMul_1/ReadVariableOpÀ
while/lstm_cell_40/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/MatMul_1¸
while/lstm_cell_40/addAddV2#while/lstm_cell_40/MatMul:product:0%while/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/addÈ
)while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_40/BiasAdd/ReadVariableOpÅ
while/lstm_cell_40/BiasAddBiasAddwhile/lstm_cell_40/add:z:01while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/BiasAddv
while/lstm_cell_40/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_40/Const
"while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_40/split/split_dim
while/lstm_cell_40/splitSplit+while/lstm_cell_40/split/split_dim:output:0#while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split2
while/lstm_cell_40/split
while/lstm_cell_40/SigmoidSigmoid!while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Sigmoid
while/lstm_cell_40/Sigmoid_1Sigmoid!while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Sigmoid_1 
while/lstm_cell_40/mulMul while/lstm_cell_40/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/mul
while/lstm_cell_40/Sigmoid_2Sigmoid!while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Sigmoid_2²
while/lstm_cell_40/mul_1Mul!while/lstm_cell_40/split:output:2 while/lstm_cell_40/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/mul_1
while/lstm_cell_40/IdentityIdentitywhile/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Identity
while/lstm_cell_40/IdentityN	IdentityNwhile/lstm_cell_40/mul_1:z:0!while/lstm_cell_40/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-882815*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/IdentityN´
while/lstm_cell_40/mul_2Mulwhile/lstm_cell_40/Sigmoid:y:0%while/lstm_cell_40/IdentityN:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/mul_2©
while/lstm_cell_40/add_1AddV2while/lstm_cell_40/mul:z:0while/lstm_cell_40/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/add_1
while/lstm_cell_40/Sigmoid_3Sigmoid!while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Sigmoid_3
while/lstm_cell_40/Sigmoid_4Sigmoidwhile/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Sigmoid_4­
while/lstm_cell_40/mul_3Mulwhile/lstm_cell_40/add_1:z:0 while/lstm_cell_40/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/mul_3
while/lstm_cell_40/Identity_1Identitywhile/lstm_cell_40/mul_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Identity_1
while/lstm_cell_40/IdentityN_1	IdentityNwhile/lstm_cell_40/mul_3:z:0while/lstm_cell_40/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-882824*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2 
while/lstm_cell_40/IdentityN_1¸
while/lstm_cell_40/mul_4Mul while/lstm_cell_40/Sigmoid_3:y:0'while/lstm_cell_40/IdentityN_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/mul_4à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_40/mul_4:z:0*
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
while/add_1â
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_40/mul_4:z:0*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_40/add_1:z:0*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_40_biasadd_readvariableop_resource4while_lstm_cell_40_biasadd_readvariableop_resource_0"l
3while_lstm_cell_40_matmul_1_readvariableop_resource5while_lstm_cell_40_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_40_matmul_readvariableop_resource3while_lstm_cell_40_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :::2V
)while/lstm_cell_40/BiasAdd/ReadVariableOp)while/lstm_cell_40/BiasAdd/ReadVariableOp2T
(while/lstm_cell_40/MatMul/ReadVariableOp(while/lstm_cell_40/MatMul/ReadVariableOp2X
*while/lstm_cell_40/MatMul_1/ReadVariableOp*while/lstm_cell_40/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
¨Z
ä
__inference__traced_save_886303
file_prefix(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_21_lstm_cell_39_kernel_read_readvariableopD
@savev2_lstm_21_lstm_cell_39_recurrent_kernel_read_readvariableop8
4savev2_lstm_21_lstm_cell_39_bias_read_readvariableop:
6savev2_lstm_22_lstm_cell_40_kernel_read_readvariableopD
@savev2_lstm_22_lstm_cell_40_recurrent_kernel_read_readvariableop8
4savev2_lstm_22_lstm_cell_40_bias_read_readvariableop9
5savev2_time_distributed_16_kernel_read_readvariableop7
3savev2_time_distributed_16_bias_read_readvariableop9
5savev2_time_distributed_17_kernel_read_readvariableop7
3savev2_time_distributed_17_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableopA
=savev2_adam_lstm_21_lstm_cell_39_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_21_lstm_cell_39_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_21_lstm_cell_39_bias_m_read_readvariableopA
=savev2_adam_lstm_22_lstm_cell_40_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_22_lstm_cell_40_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_22_lstm_cell_40_bias_m_read_readvariableop@
<savev2_adam_time_distributed_16_kernel_m_read_readvariableop>
:savev2_adam_time_distributed_16_bias_m_read_readvariableop@
<savev2_adam_time_distributed_17_kernel_m_read_readvariableop>
:savev2_adam_time_distributed_17_bias_m_read_readvariableopA
=savev2_adam_lstm_21_lstm_cell_39_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_21_lstm_cell_39_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_21_lstm_cell_39_bias_v_read_readvariableopA
=savev2_adam_lstm_22_lstm_cell_40_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_22_lstm_cell_40_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_22_lstm_cell_40_bias_v_read_readvariableop@
<savev2_adam_time_distributed_16_kernel_v_read_readvariableop>
:savev2_adam_time_distributed_16_bias_v_read_readvariableop@
<savev2_adam_time_distributed_17_kernel_v_read_readvariableop>
:savev2_adam_time_distributed_17_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
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
Const_1
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
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameÖ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:**
dtype0*è
valueÞBÛ*B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesÜ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:**
dtype0*g
value^B\*B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices·
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_21_lstm_cell_39_kernel_read_readvariableop@savev2_lstm_21_lstm_cell_39_recurrent_kernel_read_readvariableop4savev2_lstm_21_lstm_cell_39_bias_read_readvariableop6savev2_lstm_22_lstm_cell_40_kernel_read_readvariableop@savev2_lstm_22_lstm_cell_40_recurrent_kernel_read_readvariableop4savev2_lstm_22_lstm_cell_40_bias_read_readvariableop5savev2_time_distributed_16_kernel_read_readvariableop3savev2_time_distributed_16_bias_read_readvariableop5savev2_time_distributed_17_kernel_read_readvariableop3savev2_time_distributed_17_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop=savev2_adam_lstm_21_lstm_cell_39_kernel_m_read_readvariableopGsavev2_adam_lstm_21_lstm_cell_39_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_21_lstm_cell_39_bias_m_read_readvariableop=savev2_adam_lstm_22_lstm_cell_40_kernel_m_read_readvariableopGsavev2_adam_lstm_22_lstm_cell_40_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_22_lstm_cell_40_bias_m_read_readvariableop<savev2_adam_time_distributed_16_kernel_m_read_readvariableop:savev2_adam_time_distributed_16_bias_m_read_readvariableop<savev2_adam_time_distributed_17_kernel_m_read_readvariableop:savev2_adam_time_distributed_17_bias_m_read_readvariableop=savev2_adam_lstm_21_lstm_cell_39_kernel_v_read_readvariableopGsavev2_adam_lstm_21_lstm_cell_39_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_21_lstm_cell_39_bias_v_read_readvariableop=savev2_adam_lstm_22_lstm_cell_40_kernel_v_read_readvariableopGsavev2_adam_lstm_22_lstm_cell_40_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_22_lstm_cell_40_bias_v_read_readvariableop<savev2_adam_time_distributed_16_kernel_v_read_readvariableop:savev2_adam_time_distributed_16_bias_v_read_readvariableop<savev2_adam_time_distributed_17_kernel_v_read_readvariableop:savev2_adam_time_distributed_17_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *8
dtypes.
,2*	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
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

identity_1Identity_1:output:0*Ã
_input_shapes±
®: : : : : : :	:
::
:	@::@@:@:@:: : : : : : :	:
::
:	@::@@:@:@::	:
::
:	@::@@:@:@:: 2(
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
:	:&"
 
_output_shapes
:
:!

_output_shapes	
::&	"
 
_output_shapes
:
:%
!

_output_shapes
:	@:!

_output_shapes	
::$ 

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
:	:&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:%!

_output_shapes
:	@:!

_output_shapes	
::$ 

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
:	:&!"
 
_output_shapes
:
:!"

_output_shapes	
::&#"
 
_output_shapes
:
:%$!

_output_shapes
:	@:!%

_output_shapes	
::$& 

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
ï

O__inference_time_distributed_17_layer_call_and_return_conditional_losses_885795

inputs+
'dense_27_matmul_readvariableop_resource,
(dense_27_biasadd_readvariableop_resource
identity¢dense_27/BiasAdd/ReadVariableOp¢dense_27/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Reshape¨
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_27/MatMul/ReadVariableOp
dense_27/MatMulMatMulReshape:output:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_27/MatMul§
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_27/BiasAdd/ReadVariableOp¥
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_27/BiasAddw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ      2
Reshape_1/shape
	Reshape_1Reshapedense_27/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Reshape_1­
IdentityIdentityReshape_1:output:0 ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@::2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ú
ß
D__inference_dense_26_layer_call_and_return_conditional_losses_886129

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Sigmoidb
mulMulBiasAdd:output:0Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul[
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identityµ
	IdentityN	IdentityNmul:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-886122*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
	IdentityN

Identity_1IdentityIdentityN:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
«
Ã
while_cond_885151
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_885151___redundant_placeholder04
0while_while_cond_885151___redundant_placeholder14
0while_while_cond_885151___redundant_placeholder24
0while_while_cond_885151___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
Ö
Ñ
!__inference__wrapped_model_880808
lstm_21_inputD
@sequential_9_lstm_21_lstm_cell_39_matmul_readvariableop_resourceF
Bsequential_9_lstm_21_lstm_cell_39_matmul_1_readvariableop_resourceE
Asequential_9_lstm_21_lstm_cell_39_biasadd_readvariableop_resourceD
@sequential_9_lstm_22_lstm_cell_40_matmul_readvariableop_resourceF
Bsequential_9_lstm_22_lstm_cell_40_matmul_1_readvariableop_resourceE
Asequential_9_lstm_22_lstm_cell_40_biasadd_readvariableop_resourceL
Hsequential_9_time_distributed_16_dense_26_matmul_readvariableop_resourceM
Isequential_9_time_distributed_16_dense_26_biasadd_readvariableop_resourceL
Hsequential_9_time_distributed_17_dense_27_matmul_readvariableop_resourceM
Isequential_9_time_distributed_17_dense_27_biasadd_readvariableop_resource
identity¢8sequential_9/lstm_21/lstm_cell_39/BiasAdd/ReadVariableOp¢7sequential_9/lstm_21/lstm_cell_39/MatMul/ReadVariableOp¢9sequential_9/lstm_21/lstm_cell_39/MatMul_1/ReadVariableOp¢sequential_9/lstm_21/while¢8sequential_9/lstm_22/lstm_cell_40/BiasAdd/ReadVariableOp¢7sequential_9/lstm_22/lstm_cell_40/MatMul/ReadVariableOp¢9sequential_9/lstm_22/lstm_cell_40/MatMul_1/ReadVariableOp¢sequential_9/lstm_22/while¢@sequential_9/time_distributed_16/dense_26/BiasAdd/ReadVariableOp¢?sequential_9/time_distributed_16/dense_26/MatMul/ReadVariableOp¢@sequential_9/time_distributed_17/dense_27/BiasAdd/ReadVariableOp¢?sequential_9/time_distributed_17/dense_27/MatMul/ReadVariableOpu
sequential_9/lstm_21/ShapeShapelstm_21_input*
T0*
_output_shapes
:2
sequential_9/lstm_21/Shape
(sequential_9/lstm_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_9/lstm_21/strided_slice/stack¢
*sequential_9/lstm_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_9/lstm_21/strided_slice/stack_1¢
*sequential_9/lstm_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_9/lstm_21/strided_slice/stack_2à
"sequential_9/lstm_21/strided_sliceStridedSlice#sequential_9/lstm_21/Shape:output:01sequential_9/lstm_21/strided_slice/stack:output:03sequential_9/lstm_21/strided_slice/stack_1:output:03sequential_9/lstm_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_9/lstm_21/strided_slice
 sequential_9/lstm_21/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2"
 sequential_9/lstm_21/zeros/mul/yÀ
sequential_9/lstm_21/zeros/mulMul+sequential_9/lstm_21/strided_slice:output:0)sequential_9/lstm_21/zeros/mul/y:output:0*
T0*
_output_shapes
: 2 
sequential_9/lstm_21/zeros/mul
!sequential_9/lstm_21/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2#
!sequential_9/lstm_21/zeros/Less/y»
sequential_9/lstm_21/zeros/LessLess"sequential_9/lstm_21/zeros/mul:z:0*sequential_9/lstm_21/zeros/Less/y:output:0*
T0*
_output_shapes
: 2!
sequential_9/lstm_21/zeros/Less
#sequential_9/lstm_21/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2%
#sequential_9/lstm_21/zeros/packed/1×
!sequential_9/lstm_21/zeros/packedPack+sequential_9/lstm_21/strided_slice:output:0,sequential_9/lstm_21/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2#
!sequential_9/lstm_21/zeros/packed
 sequential_9/lstm_21/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 sequential_9/lstm_21/zeros/ConstÊ
sequential_9/lstm_21/zerosFill*sequential_9/lstm_21/zeros/packed:output:0)sequential_9/lstm_21/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_9/lstm_21/zeros
"sequential_9/lstm_21/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2$
"sequential_9/lstm_21/zeros_1/mul/yÆ
 sequential_9/lstm_21/zeros_1/mulMul+sequential_9/lstm_21/strided_slice:output:0+sequential_9/lstm_21/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2"
 sequential_9/lstm_21/zeros_1/mul
#sequential_9/lstm_21/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2%
#sequential_9/lstm_21/zeros_1/Less/yÃ
!sequential_9/lstm_21/zeros_1/LessLess$sequential_9/lstm_21/zeros_1/mul:z:0,sequential_9/lstm_21/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2#
!sequential_9/lstm_21/zeros_1/Less
%sequential_9/lstm_21/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2'
%sequential_9/lstm_21/zeros_1/packed/1Ý
#sequential_9/lstm_21/zeros_1/packedPack+sequential_9/lstm_21/strided_slice:output:0.sequential_9/lstm_21/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2%
#sequential_9/lstm_21/zeros_1/packed
"sequential_9/lstm_21/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_9/lstm_21/zeros_1/ConstÒ
sequential_9/lstm_21/zeros_1Fill,sequential_9/lstm_21/zeros_1/packed:output:0+sequential_9/lstm_21/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_9/lstm_21/zeros_1
#sequential_9/lstm_21/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#sequential_9/lstm_21/transpose/permÀ
sequential_9/lstm_21/transpose	Transposelstm_21_input,sequential_9/lstm_21/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_9/lstm_21/transpose
sequential_9/lstm_21/Shape_1Shape"sequential_9/lstm_21/transpose:y:0*
T0*
_output_shapes
:2
sequential_9/lstm_21/Shape_1¢
*sequential_9/lstm_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_9/lstm_21/strided_slice_1/stack¦
,sequential_9/lstm_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_9/lstm_21/strided_slice_1/stack_1¦
,sequential_9/lstm_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_9/lstm_21/strided_slice_1/stack_2ì
$sequential_9/lstm_21/strided_slice_1StridedSlice%sequential_9/lstm_21/Shape_1:output:03sequential_9/lstm_21/strided_slice_1/stack:output:05sequential_9/lstm_21/strided_slice_1/stack_1:output:05sequential_9/lstm_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_9/lstm_21/strided_slice_1¯
0sequential_9/lstm_21/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ22
0sequential_9/lstm_21/TensorArrayV2/element_shape
"sequential_9/lstm_21/TensorArrayV2TensorListReserve9sequential_9/lstm_21/TensorArrayV2/element_shape:output:0-sequential_9/lstm_21/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02$
"sequential_9/lstm_21/TensorArrayV2é
Jsequential_9/lstm_21/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2L
Jsequential_9/lstm_21/TensorArrayUnstack/TensorListFromTensor/element_shapeÌ
<sequential_9/lstm_21/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_9/lstm_21/transpose:y:0Ssequential_9/lstm_21/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02>
<sequential_9/lstm_21/TensorArrayUnstack/TensorListFromTensor¢
*sequential_9/lstm_21/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_9/lstm_21/strided_slice_2/stack¦
,sequential_9/lstm_21/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_9/lstm_21/strided_slice_2/stack_1¦
,sequential_9/lstm_21/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_9/lstm_21/strided_slice_2/stack_2ú
$sequential_9/lstm_21/strided_slice_2StridedSlice"sequential_9/lstm_21/transpose:y:03sequential_9/lstm_21/strided_slice_2/stack:output:05sequential_9/lstm_21/strided_slice_2/stack_1:output:05sequential_9/lstm_21/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2&
$sequential_9/lstm_21/strided_slice_2ô
7sequential_9/lstm_21/lstm_cell_39/MatMul/ReadVariableOpReadVariableOp@sequential_9_lstm_21_lstm_cell_39_matmul_readvariableop_resource*
_output_shapes
:	*
dtype029
7sequential_9/lstm_21/lstm_cell_39/MatMul/ReadVariableOp
(sequential_9/lstm_21/lstm_cell_39/MatMulMatMul-sequential_9/lstm_21/strided_slice_2:output:0?sequential_9/lstm_21/lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(sequential_9/lstm_21/lstm_cell_39/MatMulû
9sequential_9/lstm_21/lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOpBsequential_9_lstm_21_lstm_cell_39_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02;
9sequential_9/lstm_21/lstm_cell_39/MatMul_1/ReadVariableOpý
*sequential_9/lstm_21/lstm_cell_39/MatMul_1MatMul#sequential_9/lstm_21/zeros:output:0Asequential_9/lstm_21/lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*sequential_9/lstm_21/lstm_cell_39/MatMul_1ô
%sequential_9/lstm_21/lstm_cell_39/addAddV22sequential_9/lstm_21/lstm_cell_39/MatMul:product:04sequential_9/lstm_21/lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%sequential_9/lstm_21/lstm_cell_39/addó
8sequential_9/lstm_21/lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOpAsequential_9_lstm_21_lstm_cell_39_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02:
8sequential_9/lstm_21/lstm_cell_39/BiasAdd/ReadVariableOp
)sequential_9/lstm_21/lstm_cell_39/BiasAddBiasAdd)sequential_9/lstm_21/lstm_cell_39/add:z:0@sequential_9/lstm_21/lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_9/lstm_21/lstm_cell_39/BiasAdd
'sequential_9/lstm_21/lstm_cell_39/ConstConst*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_9/lstm_21/lstm_cell_39/Const¨
1sequential_9/lstm_21/lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :23
1sequential_9/lstm_21/lstm_cell_39/split/split_dimË
'sequential_9/lstm_21/lstm_cell_39/splitSplit:sequential_9/lstm_21/lstm_cell_39/split/split_dim:output:02sequential_9/lstm_21/lstm_cell_39/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2)
'sequential_9/lstm_21/lstm_cell_39/splitÆ
)sequential_9/lstm_21/lstm_cell_39/SigmoidSigmoid0sequential_9/lstm_21/lstm_cell_39/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_9/lstm_21/lstm_cell_39/SigmoidÊ
+sequential_9/lstm_21/lstm_cell_39/Sigmoid_1Sigmoid0sequential_9/lstm_21/lstm_cell_39/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+sequential_9/lstm_21/lstm_cell_39/Sigmoid_1à
%sequential_9/lstm_21/lstm_cell_39/mulMul/sequential_9/lstm_21/lstm_cell_39/Sigmoid_1:y:0%sequential_9/lstm_21/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%sequential_9/lstm_21/lstm_cell_39/mulÊ
+sequential_9/lstm_21/lstm_cell_39/Sigmoid_2Sigmoid0sequential_9/lstm_21/lstm_cell_39/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+sequential_9/lstm_21/lstm_cell_39/Sigmoid_2ï
'sequential_9/lstm_21/lstm_cell_39/mul_1Mul0sequential_9/lstm_21/lstm_cell_39/split:output:2/sequential_9/lstm_21/lstm_cell_39/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_9/lstm_21/lstm_cell_39/mul_1Ä
*sequential_9/lstm_21/lstm_cell_39/IdentityIdentity+sequential_9/lstm_21/lstm_cell_39/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*sequential_9/lstm_21/lstm_cell_39/Identity¿
+sequential_9/lstm_21/lstm_cell_39/IdentityN	IdentityN+sequential_9/lstm_21/lstm_cell_39/mul_1:z:00sequential_9/lstm_21/lstm_cell_39/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-880494*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2-
+sequential_9/lstm_21/lstm_cell_39/IdentityNñ
'sequential_9/lstm_21/lstm_cell_39/mul_2Mul-sequential_9/lstm_21/lstm_cell_39/Sigmoid:y:04sequential_9/lstm_21/lstm_cell_39/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_9/lstm_21/lstm_cell_39/mul_2æ
'sequential_9/lstm_21/lstm_cell_39/add_1AddV2)sequential_9/lstm_21/lstm_cell_39/mul:z:0+sequential_9/lstm_21/lstm_cell_39/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_9/lstm_21/lstm_cell_39/add_1Ê
+sequential_9/lstm_21/lstm_cell_39/Sigmoid_3Sigmoid0sequential_9/lstm_21/lstm_cell_39/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+sequential_9/lstm_21/lstm_cell_39/Sigmoid_3Å
+sequential_9/lstm_21/lstm_cell_39/Sigmoid_4Sigmoid+sequential_9/lstm_21/lstm_cell_39/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+sequential_9/lstm_21/lstm_cell_39/Sigmoid_4ê
'sequential_9/lstm_21/lstm_cell_39/mul_3Mul+sequential_9/lstm_21/lstm_cell_39/add_1:z:0/sequential_9/lstm_21/lstm_cell_39/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_9/lstm_21/lstm_cell_39/mul_3È
,sequential_9/lstm_21/lstm_cell_39/Identity_1Identity+sequential_9/lstm_21/lstm_cell_39/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_9/lstm_21/lstm_cell_39/Identity_1¾
-sequential_9/lstm_21/lstm_cell_39/IdentityN_1	IdentityN+sequential_9/lstm_21/lstm_cell_39/mul_3:z:0+sequential_9/lstm_21/lstm_cell_39/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-880503*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2/
-sequential_9/lstm_21/lstm_cell_39/IdentityN_1õ
'sequential_9/lstm_21/lstm_cell_39/mul_4Mul/sequential_9/lstm_21/lstm_cell_39/Sigmoid_3:y:06sequential_9/lstm_21/lstm_cell_39/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_9/lstm_21/lstm_cell_39/mul_4¹
2sequential_9/lstm_21/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   24
2sequential_9/lstm_21/TensorArrayV2_1/element_shape
$sequential_9/lstm_21/TensorArrayV2_1TensorListReserve;sequential_9/lstm_21/TensorArrayV2_1/element_shape:output:0-sequential_9/lstm_21/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_9/lstm_21/TensorArrayV2_1x
sequential_9/lstm_21/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_9/lstm_21/time©
-sequential_9/lstm_21/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2/
-sequential_9/lstm_21/while/maximum_iterations
'sequential_9/lstm_21/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_9/lstm_21/while/loop_counter­
sequential_9/lstm_21/whileWhile0sequential_9/lstm_21/while/loop_counter:output:06sequential_9/lstm_21/while/maximum_iterations:output:0"sequential_9/lstm_21/time:output:0-sequential_9/lstm_21/TensorArrayV2_1:handle:0#sequential_9/lstm_21/zeros:output:0%sequential_9/lstm_21/zeros_1:output:0-sequential_9/lstm_21/strided_slice_1:output:0Lsequential_9/lstm_21/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_9_lstm_21_lstm_cell_39_matmul_readvariableop_resourceBsequential_9_lstm_21_lstm_cell_39_matmul_1_readvariableop_resourceAsequential_9_lstm_21_lstm_cell_39_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*2
body*R(
&sequential_9_lstm_21_while_body_880514*2
cond*R(
&sequential_9_lstm_21_while_cond_880513*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
sequential_9/lstm_21/whileß
Esequential_9/lstm_21/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2G
Esequential_9/lstm_21/TensorArrayV2Stack/TensorListStack/element_shape½
7sequential_9/lstm_21/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_9/lstm_21/while:output:3Nsequential_9/lstm_21/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype029
7sequential_9/lstm_21/TensorArrayV2Stack/TensorListStack«
*sequential_9/lstm_21/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2,
*sequential_9/lstm_21/strided_slice_3/stack¦
,sequential_9/lstm_21/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_9/lstm_21/strided_slice_3/stack_1¦
,sequential_9/lstm_21/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_9/lstm_21/strided_slice_3/stack_2
$sequential_9/lstm_21/strided_slice_3StridedSlice@sequential_9/lstm_21/TensorArrayV2Stack/TensorListStack:tensor:03sequential_9/lstm_21/strided_slice_3/stack:output:05sequential_9/lstm_21/strided_slice_3/stack_1:output:05sequential_9/lstm_21/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2&
$sequential_9/lstm_21/strided_slice_3£
%sequential_9/lstm_21/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_9/lstm_21/transpose_1/permú
 sequential_9/lstm_21/transpose_1	Transpose@sequential_9/lstm_21/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_9/lstm_21/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_9/lstm_21/transpose_1
sequential_9/lstm_21/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_9/lstm_21/runtime
sequential_9/lstm_22/ShapeShape$sequential_9/lstm_21/transpose_1:y:0*
T0*
_output_shapes
:2
sequential_9/lstm_22/Shape
(sequential_9/lstm_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_9/lstm_22/strided_slice/stack¢
*sequential_9/lstm_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_9/lstm_22/strided_slice/stack_1¢
*sequential_9/lstm_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_9/lstm_22/strided_slice/stack_2à
"sequential_9/lstm_22/strided_sliceStridedSlice#sequential_9/lstm_22/Shape:output:01sequential_9/lstm_22/strided_slice/stack:output:03sequential_9/lstm_22/strided_slice/stack_1:output:03sequential_9/lstm_22/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_9/lstm_22/strided_slice
 sequential_9/lstm_22/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2"
 sequential_9/lstm_22/zeros/mul/yÀ
sequential_9/lstm_22/zeros/mulMul+sequential_9/lstm_22/strided_slice:output:0)sequential_9/lstm_22/zeros/mul/y:output:0*
T0*
_output_shapes
: 2 
sequential_9/lstm_22/zeros/mul
!sequential_9/lstm_22/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2#
!sequential_9/lstm_22/zeros/Less/y»
sequential_9/lstm_22/zeros/LessLess"sequential_9/lstm_22/zeros/mul:z:0*sequential_9/lstm_22/zeros/Less/y:output:0*
T0*
_output_shapes
: 2!
sequential_9/lstm_22/zeros/Less
#sequential_9/lstm_22/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2%
#sequential_9/lstm_22/zeros/packed/1×
!sequential_9/lstm_22/zeros/packedPack+sequential_9/lstm_22/strided_slice:output:0,sequential_9/lstm_22/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2#
!sequential_9/lstm_22/zeros/packed
 sequential_9/lstm_22/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 sequential_9/lstm_22/zeros/ConstÉ
sequential_9/lstm_22/zerosFill*sequential_9/lstm_22/zeros/packed:output:0)sequential_9/lstm_22/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
sequential_9/lstm_22/zeros
"sequential_9/lstm_22/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2$
"sequential_9/lstm_22/zeros_1/mul/yÆ
 sequential_9/lstm_22/zeros_1/mulMul+sequential_9/lstm_22/strided_slice:output:0+sequential_9/lstm_22/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2"
 sequential_9/lstm_22/zeros_1/mul
#sequential_9/lstm_22/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2%
#sequential_9/lstm_22/zeros_1/Less/yÃ
!sequential_9/lstm_22/zeros_1/LessLess$sequential_9/lstm_22/zeros_1/mul:z:0,sequential_9/lstm_22/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2#
!sequential_9/lstm_22/zeros_1/Less
%sequential_9/lstm_22/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2'
%sequential_9/lstm_22/zeros_1/packed/1Ý
#sequential_9/lstm_22/zeros_1/packedPack+sequential_9/lstm_22/strided_slice:output:0.sequential_9/lstm_22/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2%
#sequential_9/lstm_22/zeros_1/packed
"sequential_9/lstm_22/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_9/lstm_22/zeros_1/ConstÑ
sequential_9/lstm_22/zeros_1Fill,sequential_9/lstm_22/zeros_1/packed:output:0+sequential_9/lstm_22/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
sequential_9/lstm_22/zeros_1
#sequential_9/lstm_22/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#sequential_9/lstm_22/transpose/permØ
sequential_9/lstm_22/transpose	Transpose$sequential_9/lstm_21/transpose_1:y:0,sequential_9/lstm_22/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_9/lstm_22/transpose
sequential_9/lstm_22/Shape_1Shape"sequential_9/lstm_22/transpose:y:0*
T0*
_output_shapes
:2
sequential_9/lstm_22/Shape_1¢
*sequential_9/lstm_22/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_9/lstm_22/strided_slice_1/stack¦
,sequential_9/lstm_22/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_9/lstm_22/strided_slice_1/stack_1¦
,sequential_9/lstm_22/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_9/lstm_22/strided_slice_1/stack_2ì
$sequential_9/lstm_22/strided_slice_1StridedSlice%sequential_9/lstm_22/Shape_1:output:03sequential_9/lstm_22/strided_slice_1/stack:output:05sequential_9/lstm_22/strided_slice_1/stack_1:output:05sequential_9/lstm_22/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_9/lstm_22/strided_slice_1¯
0sequential_9/lstm_22/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ22
0sequential_9/lstm_22/TensorArrayV2/element_shape
"sequential_9/lstm_22/TensorArrayV2TensorListReserve9sequential_9/lstm_22/TensorArrayV2/element_shape:output:0-sequential_9/lstm_22/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02$
"sequential_9/lstm_22/TensorArrayV2é
Jsequential_9/lstm_22/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2L
Jsequential_9/lstm_22/TensorArrayUnstack/TensorListFromTensor/element_shapeÌ
<sequential_9/lstm_22/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_9/lstm_22/transpose:y:0Ssequential_9/lstm_22/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02>
<sequential_9/lstm_22/TensorArrayUnstack/TensorListFromTensor¢
*sequential_9/lstm_22/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_9/lstm_22/strided_slice_2/stack¦
,sequential_9/lstm_22/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_9/lstm_22/strided_slice_2/stack_1¦
,sequential_9/lstm_22/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_9/lstm_22/strided_slice_2/stack_2û
$sequential_9/lstm_22/strided_slice_2StridedSlice"sequential_9/lstm_22/transpose:y:03sequential_9/lstm_22/strided_slice_2/stack:output:05sequential_9/lstm_22/strided_slice_2/stack_1:output:05sequential_9/lstm_22/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2&
$sequential_9/lstm_22/strided_slice_2õ
7sequential_9/lstm_22/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp@sequential_9_lstm_22_lstm_cell_40_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype029
7sequential_9/lstm_22/lstm_cell_40/MatMul/ReadVariableOp
(sequential_9/lstm_22/lstm_cell_40/MatMulMatMul-sequential_9/lstm_22/strided_slice_2:output:0?sequential_9/lstm_22/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(sequential_9/lstm_22/lstm_cell_40/MatMulú
9sequential_9/lstm_22/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOpBsequential_9_lstm_22_lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype02;
9sequential_9/lstm_22/lstm_cell_40/MatMul_1/ReadVariableOpý
*sequential_9/lstm_22/lstm_cell_40/MatMul_1MatMul#sequential_9/lstm_22/zeros:output:0Asequential_9/lstm_22/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*sequential_9/lstm_22/lstm_cell_40/MatMul_1ô
%sequential_9/lstm_22/lstm_cell_40/addAddV22sequential_9/lstm_22/lstm_cell_40/MatMul:product:04sequential_9/lstm_22/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%sequential_9/lstm_22/lstm_cell_40/addó
8sequential_9/lstm_22/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOpAsequential_9_lstm_22_lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02:
8sequential_9/lstm_22/lstm_cell_40/BiasAdd/ReadVariableOp
)sequential_9/lstm_22/lstm_cell_40/BiasAddBiasAdd)sequential_9/lstm_22/lstm_cell_40/add:z:0@sequential_9/lstm_22/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_9/lstm_22/lstm_cell_40/BiasAdd
'sequential_9/lstm_22/lstm_cell_40/ConstConst*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_9/lstm_22/lstm_cell_40/Const¨
1sequential_9/lstm_22/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :23
1sequential_9/lstm_22/lstm_cell_40/split/split_dimÇ
'sequential_9/lstm_22/lstm_cell_40/splitSplit:sequential_9/lstm_22/lstm_cell_40/split/split_dim:output:02sequential_9/lstm_22/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split2)
'sequential_9/lstm_22/lstm_cell_40/splitÅ
)sequential_9/lstm_22/lstm_cell_40/SigmoidSigmoid0sequential_9/lstm_22/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)sequential_9/lstm_22/lstm_cell_40/SigmoidÉ
+sequential_9/lstm_22/lstm_cell_40/Sigmoid_1Sigmoid0sequential_9/lstm_22/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2-
+sequential_9/lstm_22/lstm_cell_40/Sigmoid_1ß
%sequential_9/lstm_22/lstm_cell_40/mulMul/sequential_9/lstm_22/lstm_cell_40/Sigmoid_1:y:0%sequential_9/lstm_22/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2'
%sequential_9/lstm_22/lstm_cell_40/mulÉ
+sequential_9/lstm_22/lstm_cell_40/Sigmoid_2Sigmoid0sequential_9/lstm_22/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2-
+sequential_9/lstm_22/lstm_cell_40/Sigmoid_2î
'sequential_9/lstm_22/lstm_cell_40/mul_1Mul0sequential_9/lstm_22/lstm_cell_40/split:output:2/sequential_9/lstm_22/lstm_cell_40/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'sequential_9/lstm_22/lstm_cell_40/mul_1Ã
*sequential_9/lstm_22/lstm_cell_40/IdentityIdentity+sequential_9/lstm_22/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2,
*sequential_9/lstm_22/lstm_cell_40/Identity½
+sequential_9/lstm_22/lstm_cell_40/IdentityN	IdentityN+sequential_9/lstm_22/lstm_cell_40/mul_1:z:00sequential_9/lstm_22/lstm_cell_40/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-880663*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2-
+sequential_9/lstm_22/lstm_cell_40/IdentityNð
'sequential_9/lstm_22/lstm_cell_40/mul_2Mul-sequential_9/lstm_22/lstm_cell_40/Sigmoid:y:04sequential_9/lstm_22/lstm_cell_40/IdentityN:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'sequential_9/lstm_22/lstm_cell_40/mul_2å
'sequential_9/lstm_22/lstm_cell_40/add_1AddV2)sequential_9/lstm_22/lstm_cell_40/mul:z:0+sequential_9/lstm_22/lstm_cell_40/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'sequential_9/lstm_22/lstm_cell_40/add_1É
+sequential_9/lstm_22/lstm_cell_40/Sigmoid_3Sigmoid0sequential_9/lstm_22/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2-
+sequential_9/lstm_22/lstm_cell_40/Sigmoid_3Ä
+sequential_9/lstm_22/lstm_cell_40/Sigmoid_4Sigmoid+sequential_9/lstm_22/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2-
+sequential_9/lstm_22/lstm_cell_40/Sigmoid_4é
'sequential_9/lstm_22/lstm_cell_40/mul_3Mul+sequential_9/lstm_22/lstm_cell_40/add_1:z:0/sequential_9/lstm_22/lstm_cell_40/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'sequential_9/lstm_22/lstm_cell_40/mul_3Ç
,sequential_9/lstm_22/lstm_cell_40/Identity_1Identity+sequential_9/lstm_22/lstm_cell_40/mul_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2.
,sequential_9/lstm_22/lstm_cell_40/Identity_1¼
-sequential_9/lstm_22/lstm_cell_40/IdentityN_1	IdentityN+sequential_9/lstm_22/lstm_cell_40/mul_3:z:0+sequential_9/lstm_22/lstm_cell_40/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-880672*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2/
-sequential_9/lstm_22/lstm_cell_40/IdentityN_1ô
'sequential_9/lstm_22/lstm_cell_40/mul_4Mul/sequential_9/lstm_22/lstm_cell_40/Sigmoid_3:y:06sequential_9/lstm_22/lstm_cell_40/IdentityN_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'sequential_9/lstm_22/lstm_cell_40/mul_4¹
2sequential_9/lstm_22/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   24
2sequential_9/lstm_22/TensorArrayV2_1/element_shape
$sequential_9/lstm_22/TensorArrayV2_1TensorListReserve;sequential_9/lstm_22/TensorArrayV2_1/element_shape:output:0-sequential_9/lstm_22/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_9/lstm_22/TensorArrayV2_1x
sequential_9/lstm_22/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_9/lstm_22/time©
-sequential_9/lstm_22/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2/
-sequential_9/lstm_22/while/maximum_iterations
'sequential_9/lstm_22/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_9/lstm_22/while/loop_counter©
sequential_9/lstm_22/whileWhile0sequential_9/lstm_22/while/loop_counter:output:06sequential_9/lstm_22/while/maximum_iterations:output:0"sequential_9/lstm_22/time:output:0-sequential_9/lstm_22/TensorArrayV2_1:handle:0#sequential_9/lstm_22/zeros:output:0%sequential_9/lstm_22/zeros_1:output:0-sequential_9/lstm_22/strided_slice_1:output:0Lsequential_9/lstm_22/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_9_lstm_22_lstm_cell_40_matmul_readvariableop_resourceBsequential_9_lstm_22_lstm_cell_40_matmul_1_readvariableop_resourceAsequential_9_lstm_22_lstm_cell_40_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*2
body*R(
&sequential_9_lstm_22_while_body_880683*2
cond*R(
&sequential_9_lstm_22_while_cond_880682*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
sequential_9/lstm_22/whileß
Esequential_9/lstm_22/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2G
Esequential_9/lstm_22/TensorArrayV2Stack/TensorListStack/element_shape¼
7sequential_9/lstm_22/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_9/lstm_22/while:output:3Nsequential_9/lstm_22/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype029
7sequential_9/lstm_22/TensorArrayV2Stack/TensorListStack«
*sequential_9/lstm_22/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2,
*sequential_9/lstm_22/strided_slice_3/stack¦
,sequential_9/lstm_22/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_9/lstm_22/strided_slice_3/stack_1¦
,sequential_9/lstm_22/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_9/lstm_22/strided_slice_3/stack_2
$sequential_9/lstm_22/strided_slice_3StridedSlice@sequential_9/lstm_22/TensorArrayV2Stack/TensorListStack:tensor:03sequential_9/lstm_22/strided_slice_3/stack:output:05sequential_9/lstm_22/strided_slice_3/stack_1:output:05sequential_9/lstm_22/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2&
$sequential_9/lstm_22/strided_slice_3£
%sequential_9/lstm_22/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_9/lstm_22/transpose_1/permù
 sequential_9/lstm_22/transpose_1	Transpose@sequential_9/lstm_22/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_9/lstm_22/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 sequential_9/lstm_22/transpose_1
sequential_9/lstm_22/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_9/lstm_22/runtime±
.sequential_9/time_distributed_16/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   20
.sequential_9/time_distributed_16/Reshape/shapeð
(sequential_9/time_distributed_16/ReshapeReshape$sequential_9/lstm_22/transpose_1:y:07sequential_9/time_distributed_16/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2*
(sequential_9/time_distributed_16/Reshape
?sequential_9/time_distributed_16/dense_26/MatMul/ReadVariableOpReadVariableOpHsequential_9_time_distributed_16_dense_26_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02A
?sequential_9/time_distributed_16/dense_26/MatMul/ReadVariableOp
0sequential_9/time_distributed_16/dense_26/MatMulMatMul1sequential_9/time_distributed_16/Reshape:output:0Gsequential_9/time_distributed_16/dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@22
0sequential_9/time_distributed_16/dense_26/MatMul
@sequential_9/time_distributed_16/dense_26/BiasAdd/ReadVariableOpReadVariableOpIsequential_9_time_distributed_16_dense_26_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02B
@sequential_9/time_distributed_16/dense_26/BiasAdd/ReadVariableOp©
1sequential_9/time_distributed_16/dense_26/BiasAddBiasAdd:sequential_9/time_distributed_16/dense_26/MatMul:product:0Hsequential_9/time_distributed_16/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@23
1sequential_9/time_distributed_16/dense_26/BiasAddß
1sequential_9/time_distributed_16/dense_26/SigmoidSigmoid:sequential_9/time_distributed_16/dense_26/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@23
1sequential_9/time_distributed_16/dense_26/Sigmoid
-sequential_9/time_distributed_16/dense_26/mulMul:sequential_9/time_distributed_16/dense_26/BiasAdd:output:05sequential_9/time_distributed_16/dense_26/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2/
-sequential_9/time_distributed_16/dense_26/mulÙ
2sequential_9/time_distributed_16/dense_26/IdentityIdentity1sequential_9/time_distributed_16/dense_26/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@24
2sequential_9/time_distributed_16/dense_26/IdentityÝ
3sequential_9/time_distributed_16/dense_26/IdentityN	IdentityN1sequential_9/time_distributed_16/dense_26/mul:z:0:sequential_9/time_distributed_16/dense_26/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-880785*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@25
3sequential_9/time_distributed_16/dense_26/IdentityN¹
0sequential_9/time_distributed_16/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ   @   22
0sequential_9/time_distributed_16/Reshape_1/shape
*sequential_9/time_distributed_16/Reshape_1Reshape<sequential_9/time_distributed_16/dense_26/IdentityN:output:09sequential_9/time_distributed_16/Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2,
*sequential_9/time_distributed_16/Reshape_1µ
0sequential_9/time_distributed_16/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0sequential_9/time_distributed_16/Reshape_2/shapeö
*sequential_9/time_distributed_16/Reshape_2Reshape$sequential_9/lstm_22/transpose_1:y:09sequential_9/time_distributed_16/Reshape_2/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2,
*sequential_9/time_distributed_16/Reshape_2±
.sequential_9/time_distributed_17/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   20
.sequential_9/time_distributed_17/Reshape/shapeÿ
(sequential_9/time_distributed_17/ReshapeReshape3sequential_9/time_distributed_16/Reshape_1:output:07sequential_9/time_distributed_17/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2*
(sequential_9/time_distributed_17/Reshape
?sequential_9/time_distributed_17/dense_27/MatMul/ReadVariableOpReadVariableOpHsequential_9_time_distributed_17_dense_27_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02A
?sequential_9/time_distributed_17/dense_27/MatMul/ReadVariableOp
0sequential_9/time_distributed_17/dense_27/MatMulMatMul1sequential_9/time_distributed_17/Reshape:output:0Gsequential_9/time_distributed_17/dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0sequential_9/time_distributed_17/dense_27/MatMul
@sequential_9/time_distributed_17/dense_27/BiasAdd/ReadVariableOpReadVariableOpIsequential_9_time_distributed_17_dense_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02B
@sequential_9/time_distributed_17/dense_27/BiasAdd/ReadVariableOp©
1sequential_9/time_distributed_17/dense_27/BiasAddBiasAdd:sequential_9/time_distributed_17/dense_27/MatMul:product:0Hsequential_9/time_distributed_17/dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1sequential_9/time_distributed_17/dense_27/BiasAdd¹
0sequential_9/time_distributed_17/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ      22
0sequential_9/time_distributed_17/Reshape_1/shape
*sequential_9/time_distributed_17/Reshape_1Reshape:sequential_9/time_distributed_17/dense_27/BiasAdd:output:09sequential_9/time_distributed_17/Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*sequential_9/time_distributed_17/Reshape_1µ
0sequential_9/time_distributed_17/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0sequential_9/time_distributed_17/Reshape_2/shape
*sequential_9/time_distributed_17/Reshape_2Reshape3sequential_9/time_distributed_16/Reshape_1:output:09sequential_9/time_distributed_17/Reshape_2/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2,
*sequential_9/time_distributed_17/Reshape_2±
IdentityIdentity3sequential_9/time_distributed_17/Reshape_1:output:09^sequential_9/lstm_21/lstm_cell_39/BiasAdd/ReadVariableOp8^sequential_9/lstm_21/lstm_cell_39/MatMul/ReadVariableOp:^sequential_9/lstm_21/lstm_cell_39/MatMul_1/ReadVariableOp^sequential_9/lstm_21/while9^sequential_9/lstm_22/lstm_cell_40/BiasAdd/ReadVariableOp8^sequential_9/lstm_22/lstm_cell_40/MatMul/ReadVariableOp:^sequential_9/lstm_22/lstm_cell_40/MatMul_1/ReadVariableOp^sequential_9/lstm_22/whileA^sequential_9/time_distributed_16/dense_26/BiasAdd/ReadVariableOp@^sequential_9/time_distributed_16/dense_26/MatMul/ReadVariableOpA^sequential_9/time_distributed_17/dense_27/BiasAdd/ReadVariableOp@^sequential_9/time_distributed_17/dense_27/MatMul/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ::::::::::2t
8sequential_9/lstm_21/lstm_cell_39/BiasAdd/ReadVariableOp8sequential_9/lstm_21/lstm_cell_39/BiasAdd/ReadVariableOp2r
7sequential_9/lstm_21/lstm_cell_39/MatMul/ReadVariableOp7sequential_9/lstm_21/lstm_cell_39/MatMul/ReadVariableOp2v
9sequential_9/lstm_21/lstm_cell_39/MatMul_1/ReadVariableOp9sequential_9/lstm_21/lstm_cell_39/MatMul_1/ReadVariableOp28
sequential_9/lstm_21/whilesequential_9/lstm_21/while2t
8sequential_9/lstm_22/lstm_cell_40/BiasAdd/ReadVariableOp8sequential_9/lstm_22/lstm_cell_40/BiasAdd/ReadVariableOp2r
7sequential_9/lstm_22/lstm_cell_40/MatMul/ReadVariableOp7sequential_9/lstm_22/lstm_cell_40/MatMul/ReadVariableOp2v
9sequential_9/lstm_22/lstm_cell_40/MatMul_1/ReadVariableOp9sequential_9/lstm_22/lstm_cell_40/MatMul_1/ReadVariableOp28
sequential_9/lstm_22/whilesequential_9/lstm_22/while2
@sequential_9/time_distributed_16/dense_26/BiasAdd/ReadVariableOp@sequential_9/time_distributed_16/dense_26/BiasAdd/ReadVariableOp2
?sequential_9/time_distributed_16/dense_26/MatMul/ReadVariableOp?sequential_9/time_distributed_16/dense_26/MatMul/ReadVariableOp2
@sequential_9/time_distributed_17/dense_27/BiasAdd/ReadVariableOp@sequential_9/time_distributed_17/dense_27/BiasAdd/ReadVariableOp2
?sequential_9/time_distributed_17/dense_27/MatMul/ReadVariableOp?sequential_9/time_distributed_17/dense_27/MatMul/ReadVariableOp:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_21_input
·

(__inference_lstm_22_layer_call_fn_885637
inputs_0
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_22_layer_call_and_return_conditional_losses_8820592
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ÀL
þ
while_body_885347
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_40_matmul_readvariableop_resource_09
5while_lstm_cell_40_matmul_1_readvariableop_resource_08
4while_lstm_cell_40_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_40_matmul_readvariableop_resource7
3while_lstm_cell_40_matmul_1_readvariableop_resource6
2while_lstm_cell_40_biasadd_readvariableop_resource¢)while/lstm_cell_40/BiasAdd/ReadVariableOp¢(while/lstm_cell_40/MatMul/ReadVariableOp¢*while/lstm_cell_40/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÊ
(while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_40_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02*
(while/lstm_cell_40/MatMul/ReadVariableOp×
while/lstm_cell_40/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/MatMulÏ
*while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes
:	@*
dtype02,
*while/lstm_cell_40/MatMul_1/ReadVariableOpÀ
while/lstm_cell_40/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/MatMul_1¸
while/lstm_cell_40/addAddV2#while/lstm_cell_40/MatMul:product:0%while/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/addÈ
)while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_40/BiasAdd/ReadVariableOpÅ
while/lstm_cell_40/BiasAddBiasAddwhile/lstm_cell_40/add:z:01while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/BiasAddv
while/lstm_cell_40/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_40/Const
"while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_40/split/split_dim
while/lstm_cell_40/splitSplit+while/lstm_cell_40/split/split_dim:output:0#while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split2
while/lstm_cell_40/split
while/lstm_cell_40/SigmoidSigmoid!while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Sigmoid
while/lstm_cell_40/Sigmoid_1Sigmoid!while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Sigmoid_1 
while/lstm_cell_40/mulMul while/lstm_cell_40/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/mul
while/lstm_cell_40/Sigmoid_2Sigmoid!while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Sigmoid_2²
while/lstm_cell_40/mul_1Mul!while/lstm_cell_40/split:output:2 while/lstm_cell_40/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/mul_1
while/lstm_cell_40/IdentityIdentitywhile/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Identity
while/lstm_cell_40/IdentityN	IdentityNwhile/lstm_cell_40/mul_1:z:0!while/lstm_cell_40/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-885390*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/IdentityN´
while/lstm_cell_40/mul_2Mulwhile/lstm_cell_40/Sigmoid:y:0%while/lstm_cell_40/IdentityN:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/mul_2©
while/lstm_cell_40/add_1AddV2while/lstm_cell_40/mul:z:0while/lstm_cell_40/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/add_1
while/lstm_cell_40/Sigmoid_3Sigmoid!while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Sigmoid_3
while/lstm_cell_40/Sigmoid_4Sigmoidwhile/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Sigmoid_4­
while/lstm_cell_40/mul_3Mulwhile/lstm_cell_40/add_1:z:0 while/lstm_cell_40/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/mul_3
while/lstm_cell_40/Identity_1Identitywhile/lstm_cell_40/mul_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Identity_1
while/lstm_cell_40/IdentityN_1	IdentityNwhile/lstm_cell_40/mul_3:z:0while/lstm_cell_40/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-885399*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2 
while/lstm_cell_40/IdentityN_1¸
while/lstm_cell_40/mul_4Mul while/lstm_cell_40/Sigmoid_3:y:0'while/lstm_cell_40/IdentityN_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/mul_4à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_40/mul_4:z:0*
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
while/add_1â
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_40/mul_4:z:0*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_40/add_1:z:0*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_40_biasadd_readvariableop_resource4while_lstm_cell_40_biasadd_readvariableop_resource_0"l
3while_lstm_cell_40_matmul_1_readvariableop_resource5while_lstm_cell_40_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_40_matmul_readvariableop_resource3while_lstm_cell_40_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :::2V
)while/lstm_cell_40/BiasAdd/ReadVariableOp)while/lstm_cell_40/BiasAdd/ReadVariableOp2T
(while/lstm_cell_40/MatMul/ReadVariableOp(while/lstm_cell_40/MatMul/ReadVariableOp2X
*while/lstm_cell_40/MatMul_1/ReadVariableOp*while/lstm_cell_40/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
õ
ú
-__inference_sequential_9_layer_call_fn_884140

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
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_9_layer_call_and_return_conditional_losses_8832562
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¯
Ã
while_cond_881227
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_881227___redundant_placeholder04
0while_while_cond_881227___redundant_placeholder14
0while_while_cond_881227___redundant_placeholder24
0while_while_cond_881227___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ðD
Ü
C__inference_lstm_21_layer_call_and_return_conditional_losses_881297

inputs
lstm_cell_39_881215
lstm_cell_39_881217
lstm_cell_39_881219
identity¢$lstm_cell_39/StatefulPartitionedCall¢whileD
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
strided_slice/stack_2â
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
B :2
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
B :è2
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
B :2
zeros/packed/1
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
:ÿÿÿÿÿÿÿÿÿ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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
B :è2
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
B :2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2 
$lstm_cell_39/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_39_881215lstm_cell_39_881217lstm_cell_39_881219*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_39_layer_call_and_return_conditional_losses_8808912&
$lstm_cell_39/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter§
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_39_881215lstm_cell_39_881217lstm_cell_39_881219*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_881228*
condR
while_cond_881227*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime 
IdentityIdentitytranspose_1:y:0%^lstm_cell_39/StatefulPartitionedCall^while*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::2L
$lstm_cell_39/StatefulPartitionedCall$lstm_cell_39/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ßo

&sequential_9_lstm_21_while_body_880514F
Bsequential_9_lstm_21_while_sequential_9_lstm_21_while_loop_counterL
Hsequential_9_lstm_21_while_sequential_9_lstm_21_while_maximum_iterations*
&sequential_9_lstm_21_while_placeholder,
(sequential_9_lstm_21_while_placeholder_1,
(sequential_9_lstm_21_while_placeholder_2,
(sequential_9_lstm_21_while_placeholder_3E
Asequential_9_lstm_21_while_sequential_9_lstm_21_strided_slice_1_0
}sequential_9_lstm_21_while_tensorarrayv2read_tensorlistgetitem_sequential_9_lstm_21_tensorarrayunstack_tensorlistfromtensor_0L
Hsequential_9_lstm_21_while_lstm_cell_39_matmul_readvariableop_resource_0N
Jsequential_9_lstm_21_while_lstm_cell_39_matmul_1_readvariableop_resource_0M
Isequential_9_lstm_21_while_lstm_cell_39_biasadd_readvariableop_resource_0'
#sequential_9_lstm_21_while_identity)
%sequential_9_lstm_21_while_identity_1)
%sequential_9_lstm_21_while_identity_2)
%sequential_9_lstm_21_while_identity_3)
%sequential_9_lstm_21_while_identity_4)
%sequential_9_lstm_21_while_identity_5C
?sequential_9_lstm_21_while_sequential_9_lstm_21_strided_slice_1
{sequential_9_lstm_21_while_tensorarrayv2read_tensorlistgetitem_sequential_9_lstm_21_tensorarrayunstack_tensorlistfromtensorJ
Fsequential_9_lstm_21_while_lstm_cell_39_matmul_readvariableop_resourceL
Hsequential_9_lstm_21_while_lstm_cell_39_matmul_1_readvariableop_resourceK
Gsequential_9_lstm_21_while_lstm_cell_39_biasadd_readvariableop_resource¢>sequential_9/lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOp¢=sequential_9/lstm_21/while/lstm_cell_39/MatMul/ReadVariableOp¢?sequential_9/lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOpí
Lsequential_9/lstm_21/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2N
Lsequential_9/lstm_21/while/TensorArrayV2Read/TensorListGetItem/element_shapeÑ
>sequential_9/lstm_21/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_9_lstm_21_while_tensorarrayv2read_tensorlistgetitem_sequential_9_lstm_21_tensorarrayunstack_tensorlistfromtensor_0&sequential_9_lstm_21_while_placeholderUsequential_9/lstm_21/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02@
>sequential_9/lstm_21/while/TensorArrayV2Read/TensorListGetItem
=sequential_9/lstm_21/while/lstm_cell_39/MatMul/ReadVariableOpReadVariableOpHsequential_9_lstm_21_while_lstm_cell_39_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02?
=sequential_9/lstm_21/while/lstm_cell_39/MatMul/ReadVariableOp«
.sequential_9/lstm_21/while/lstm_cell_39/MatMulMatMulEsequential_9/lstm_21/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_9/lstm_21/while/lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.sequential_9/lstm_21/while/lstm_cell_39/MatMul
?sequential_9/lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOpJsequential_9_lstm_21_while_lstm_cell_39_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02A
?sequential_9/lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOp
0sequential_9/lstm_21/while/lstm_cell_39/MatMul_1MatMul(sequential_9_lstm_21_while_placeholder_2Gsequential_9/lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0sequential_9/lstm_21/while/lstm_cell_39/MatMul_1
+sequential_9/lstm_21/while/lstm_cell_39/addAddV28sequential_9/lstm_21/while/lstm_cell_39/MatMul:product:0:sequential_9/lstm_21/while/lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+sequential_9/lstm_21/while/lstm_cell_39/add
>sequential_9/lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOpIsequential_9_lstm_21_while_lstm_cell_39_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02@
>sequential_9/lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOp
/sequential_9/lstm_21/while/lstm_cell_39/BiasAddBiasAdd/sequential_9/lstm_21/while/lstm_cell_39/add:z:0Fsequential_9/lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/sequential_9/lstm_21/while/lstm_cell_39/BiasAdd 
-sequential_9/lstm_21/while/lstm_cell_39/ConstConst*
_output_shapes
: *
dtype0*
value	B :2/
-sequential_9/lstm_21/while/lstm_cell_39/Const´
7sequential_9/lstm_21/while/lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :29
7sequential_9/lstm_21/while/lstm_cell_39/split/split_dimã
-sequential_9/lstm_21/while/lstm_cell_39/splitSplit@sequential_9/lstm_21/while/lstm_cell_39/split/split_dim:output:08sequential_9/lstm_21/while/lstm_cell_39/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2/
-sequential_9/lstm_21/while/lstm_cell_39/splitØ
/sequential_9/lstm_21/while/lstm_cell_39/SigmoidSigmoid6sequential_9/lstm_21/while/lstm_cell_39/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/sequential_9/lstm_21/while/lstm_cell_39/SigmoidÜ
1sequential_9/lstm_21/while/lstm_cell_39/Sigmoid_1Sigmoid6sequential_9/lstm_21/while/lstm_cell_39/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1sequential_9/lstm_21/while/lstm_cell_39/Sigmoid_1õ
+sequential_9/lstm_21/while/lstm_cell_39/mulMul5sequential_9/lstm_21/while/lstm_cell_39/Sigmoid_1:y:0(sequential_9_lstm_21_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+sequential_9/lstm_21/while/lstm_cell_39/mulÜ
1sequential_9/lstm_21/while/lstm_cell_39/Sigmoid_2Sigmoid6sequential_9/lstm_21/while/lstm_cell_39/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1sequential_9/lstm_21/while/lstm_cell_39/Sigmoid_2
-sequential_9/lstm_21/while/lstm_cell_39/mul_1Mul6sequential_9/lstm_21/while/lstm_cell_39/split:output:25sequential_9/lstm_21/while/lstm_cell_39/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-sequential_9/lstm_21/while/lstm_cell_39/mul_1Ö
0sequential_9/lstm_21/while/lstm_cell_39/IdentityIdentity1sequential_9/lstm_21/while/lstm_cell_39/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0sequential_9/lstm_21/while/lstm_cell_39/Identity×
1sequential_9/lstm_21/while/lstm_cell_39/IdentityN	IdentityN1sequential_9/lstm_21/while/lstm_cell_39/mul_1:z:06sequential_9/lstm_21/while/lstm_cell_39/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-880557*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ23
1sequential_9/lstm_21/while/lstm_cell_39/IdentityN
-sequential_9/lstm_21/while/lstm_cell_39/mul_2Mul3sequential_9/lstm_21/while/lstm_cell_39/Sigmoid:y:0:sequential_9/lstm_21/while/lstm_cell_39/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-sequential_9/lstm_21/while/lstm_cell_39/mul_2þ
-sequential_9/lstm_21/while/lstm_cell_39/add_1AddV2/sequential_9/lstm_21/while/lstm_cell_39/mul:z:01sequential_9/lstm_21/while/lstm_cell_39/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-sequential_9/lstm_21/while/lstm_cell_39/add_1Ü
1sequential_9/lstm_21/while/lstm_cell_39/Sigmoid_3Sigmoid6sequential_9/lstm_21/while/lstm_cell_39/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1sequential_9/lstm_21/while/lstm_cell_39/Sigmoid_3×
1sequential_9/lstm_21/while/lstm_cell_39/Sigmoid_4Sigmoid1sequential_9/lstm_21/while/lstm_cell_39/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1sequential_9/lstm_21/while/lstm_cell_39/Sigmoid_4
-sequential_9/lstm_21/while/lstm_cell_39/mul_3Mul1sequential_9/lstm_21/while/lstm_cell_39/add_1:z:05sequential_9/lstm_21/while/lstm_cell_39/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-sequential_9/lstm_21/while/lstm_cell_39/mul_3Ú
2sequential_9/lstm_21/while/lstm_cell_39/Identity_1Identity1sequential_9/lstm_21/while/lstm_cell_39/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2sequential_9/lstm_21/while/lstm_cell_39/Identity_1Ö
3sequential_9/lstm_21/while/lstm_cell_39/IdentityN_1	IdentityN1sequential_9/lstm_21/while/lstm_cell_39/mul_3:z:01sequential_9/lstm_21/while/lstm_cell_39/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-880566*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ25
3sequential_9/lstm_21/while/lstm_cell_39/IdentityN_1
-sequential_9/lstm_21/while/lstm_cell_39/mul_4Mul5sequential_9/lstm_21/while/lstm_cell_39/Sigmoid_3:y:0<sequential_9/lstm_21/while/lstm_cell_39/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-sequential_9/lstm_21/while/lstm_cell_39/mul_4É
?sequential_9/lstm_21/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_9_lstm_21_while_placeholder_1&sequential_9_lstm_21_while_placeholder1sequential_9/lstm_21/while/lstm_cell_39/mul_4:z:0*
_output_shapes
: *
element_dtype02A
?sequential_9/lstm_21/while/TensorArrayV2Write/TensorListSetItem
 sequential_9/lstm_21/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 sequential_9/lstm_21/while/add/y½
sequential_9/lstm_21/while/addAddV2&sequential_9_lstm_21_while_placeholder)sequential_9/lstm_21/while/add/y:output:0*
T0*
_output_shapes
: 2 
sequential_9/lstm_21/while/add
"sequential_9/lstm_21/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_9/lstm_21/while/add_1/yß
 sequential_9/lstm_21/while/add_1AddV2Bsequential_9_lstm_21_while_sequential_9_lstm_21_while_loop_counter+sequential_9/lstm_21/while/add_1/y:output:0*
T0*
_output_shapes
: 2"
 sequential_9/lstm_21/while/add_1à
#sequential_9/lstm_21/while/IdentityIdentity$sequential_9/lstm_21/while/add_1:z:0?^sequential_9/lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOp>^sequential_9/lstm_21/while/lstm_cell_39/MatMul/ReadVariableOp@^sequential_9/lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2%
#sequential_9/lstm_21/while/Identity
%sequential_9/lstm_21/while/Identity_1IdentityHsequential_9_lstm_21_while_sequential_9_lstm_21_while_maximum_iterations?^sequential_9/lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOp>^sequential_9/lstm_21/while/lstm_cell_39/MatMul/ReadVariableOp@^sequential_9/lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2'
%sequential_9/lstm_21/while/Identity_1â
%sequential_9/lstm_21/while/Identity_2Identity"sequential_9/lstm_21/while/add:z:0?^sequential_9/lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOp>^sequential_9/lstm_21/while/lstm_cell_39/MatMul/ReadVariableOp@^sequential_9/lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2'
%sequential_9/lstm_21/while/Identity_2
%sequential_9/lstm_21/while/Identity_3IdentityOsequential_9/lstm_21/while/TensorArrayV2Write/TensorListSetItem:output_handle:0?^sequential_9/lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOp>^sequential_9/lstm_21/while/lstm_cell_39/MatMul/ReadVariableOp@^sequential_9/lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2'
%sequential_9/lstm_21/while/Identity_3
%sequential_9/lstm_21/while/Identity_4Identity1sequential_9/lstm_21/while/lstm_cell_39/mul_4:z:0?^sequential_9/lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOp>^sequential_9/lstm_21/while/lstm_cell_39/MatMul/ReadVariableOp@^sequential_9/lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%sequential_9/lstm_21/while/Identity_4
%sequential_9/lstm_21/while/Identity_5Identity1sequential_9/lstm_21/while/lstm_cell_39/add_1:z:0?^sequential_9/lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOp>^sequential_9/lstm_21/while/lstm_cell_39/MatMul/ReadVariableOp@^sequential_9/lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%sequential_9/lstm_21/while/Identity_5"S
#sequential_9_lstm_21_while_identity,sequential_9/lstm_21/while/Identity:output:0"W
%sequential_9_lstm_21_while_identity_1.sequential_9/lstm_21/while/Identity_1:output:0"W
%sequential_9_lstm_21_while_identity_2.sequential_9/lstm_21/while/Identity_2:output:0"W
%sequential_9_lstm_21_while_identity_3.sequential_9/lstm_21/while/Identity_3:output:0"W
%sequential_9_lstm_21_while_identity_4.sequential_9/lstm_21/while/Identity_4:output:0"W
%sequential_9_lstm_21_while_identity_5.sequential_9/lstm_21/while/Identity_5:output:0"
Gsequential_9_lstm_21_while_lstm_cell_39_biasadd_readvariableop_resourceIsequential_9_lstm_21_while_lstm_cell_39_biasadd_readvariableop_resource_0"
Hsequential_9_lstm_21_while_lstm_cell_39_matmul_1_readvariableop_resourceJsequential_9_lstm_21_while_lstm_cell_39_matmul_1_readvariableop_resource_0"
Fsequential_9_lstm_21_while_lstm_cell_39_matmul_readvariableop_resourceHsequential_9_lstm_21_while_lstm_cell_39_matmul_readvariableop_resource_0"
?sequential_9_lstm_21_while_sequential_9_lstm_21_strided_slice_1Asequential_9_lstm_21_while_sequential_9_lstm_21_strided_slice_1_0"ü
{sequential_9_lstm_21_while_tensorarrayv2read_tensorlistgetitem_sequential_9_lstm_21_tensorarrayunstack_tensorlistfromtensor}sequential_9_lstm_21_while_tensorarrayv2read_tensorlistgetitem_sequential_9_lstm_21_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : :::2
>sequential_9/lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOp>sequential_9/lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOp2~
=sequential_9/lstm_21/while/lstm_cell_39/MatMul/ReadVariableOp=sequential_9/lstm_21/while/lstm_cell_39/MatMul/ReadVariableOp2
?sequential_9/lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOp?sequential_9/lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ÚL
þ
while_body_884611
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_39_matmul_readvariableop_resource_09
5while_lstm_cell_39_matmul_1_readvariableop_resource_08
4while_lstm_cell_39_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_39_matmul_readvariableop_resource7
3while_lstm_cell_39_matmul_1_readvariableop_resource6
2while_lstm_cell_39_biasadd_readvariableop_resource¢)while/lstm_cell_39/BiasAdd/ReadVariableOp¢(while/lstm_cell_39/MatMul/ReadVariableOp¢*while/lstm_cell_39/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/lstm_cell_39/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_39_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02*
(while/lstm_cell_39/MatMul/ReadVariableOp×
while/lstm_cell_39/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/MatMulÐ
*while/lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_39_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02,
*while/lstm_cell_39/MatMul_1/ReadVariableOpÀ
while/lstm_cell_39/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/MatMul_1¸
while/lstm_cell_39/addAddV2#while/lstm_cell_39/MatMul:product:0%while/lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/addÈ
)while/lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_39_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_39/BiasAdd/ReadVariableOpÅ
while/lstm_cell_39/BiasAddBiasAddwhile/lstm_cell_39/add:z:01while/lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/BiasAddv
while/lstm_cell_39/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_39/Const
"while/lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_39/split/split_dim
while/lstm_cell_39/splitSplit+while/lstm_cell_39/split/split_dim:output:0#while/lstm_cell_39/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_39/split
while/lstm_cell_39/SigmoidSigmoid!while/lstm_cell_39/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Sigmoid
while/lstm_cell_39/Sigmoid_1Sigmoid!while/lstm_cell_39/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Sigmoid_1¡
while/lstm_cell_39/mulMul while/lstm_cell_39/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/mul
while/lstm_cell_39/Sigmoid_2Sigmoid!while/lstm_cell_39/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Sigmoid_2³
while/lstm_cell_39/mul_1Mul!while/lstm_cell_39/split:output:2 while/lstm_cell_39/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/mul_1
while/lstm_cell_39/IdentityIdentitywhile/lstm_cell_39/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Identity
while/lstm_cell_39/IdentityN	IdentityNwhile/lstm_cell_39/mul_1:z:0!while/lstm_cell_39/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-884654*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/IdentityNµ
while/lstm_cell_39/mul_2Mulwhile/lstm_cell_39/Sigmoid:y:0%while/lstm_cell_39/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/mul_2ª
while/lstm_cell_39/add_1AddV2while/lstm_cell_39/mul:z:0while/lstm_cell_39/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/add_1
while/lstm_cell_39/Sigmoid_3Sigmoid!while/lstm_cell_39/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Sigmoid_3
while/lstm_cell_39/Sigmoid_4Sigmoidwhile/lstm_cell_39/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Sigmoid_4®
while/lstm_cell_39/mul_3Mulwhile/lstm_cell_39/add_1:z:0 while/lstm_cell_39/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/mul_3
while/lstm_cell_39/Identity_1Identitywhile/lstm_cell_39/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/Identity_1
while/lstm_cell_39/IdentityN_1	IdentityNwhile/lstm_cell_39/mul_3:z:0while/lstm_cell_39/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-884663*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2 
while/lstm_cell_39/IdentityN_1¹
while/lstm_cell_39/mul_4Mul while/lstm_cell_39/Sigmoid_3:y:0'while/lstm_cell_39/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_39/mul_4à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_39/mul_4:z:0*
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
while/add_1â
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_39/mul_4:z:0*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_39/add_1:z:0*^while/lstm_cell_39/BiasAdd/ReadVariableOp)^while/lstm_cell_39/MatMul/ReadVariableOp+^while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_39_biasadd_readvariableop_resource4while_lstm_cell_39_biasadd_readvariableop_resource_0"l
3while_lstm_cell_39_matmul_1_readvariableop_resource5while_lstm_cell_39_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_39_matmul_readvariableop_resource3while_lstm_cell_39_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : :::2V
)while/lstm_cell_39/BiasAdd/ReadVariableOp)while/lstm_cell_39/BiasAdd/ReadVariableOp2T
(while/lstm_cell_39/MatMul/ReadVariableOp(while/lstm_cell_39/MatMul/ReadVariableOp2X
*while/lstm_cell_39/MatMul_1/ReadVariableOp*while/lstm_cell_39/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
	
Ý
D__inference_dense_27_layer_call_and_return_conditional_losses_886148

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


O__inference_time_distributed_16_layer_call_and_return_conditional_losses_885722

inputs+
'dense_26_matmul_readvariableop_resource,
(dense_26_biasadd_readvariableop_resource
identity¢dense_26/BiasAdd/ReadVariableOp¢dense_26/MatMul/ReadVariableOpD
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
strided_slice/stack_2â
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
valueB"ÿÿÿÿ@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Reshape¨
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_26/MatMul/ReadVariableOp
dense_26/MatMulMatMulReshape:output:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_26/MatMul§
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_26/BiasAdd/ReadVariableOp¥
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_26/BiasAdd|
dense_26/SigmoidSigmoiddense_26/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_26/Sigmoid
dense_26/mulMuldense_26/BiasAdd:output:0dense_26/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_26/mulv
dense_26/IdentityIdentitydense_26/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_26/IdentityÙ
dense_26/IdentityN	IdentityNdense_26/mul:z:0dense_26/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-885711*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
dense_26/IdentityNq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2
Reshape_1/shape/2¨
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape
	Reshape_1Reshapedense_26/IdentityN:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
	Reshape_1¶
IdentityIdentityReshape_1:output:0 ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@::2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
§

4__inference_time_distributed_16_layer_call_fn_885767

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_time_distributed_16_layer_call_and_return_conditional_losses_8821882
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


ã
lstm_22_while_cond_883617,
(lstm_22_while_lstm_22_while_loop_counter2
.lstm_22_while_lstm_22_while_maximum_iterations
lstm_22_while_placeholder
lstm_22_while_placeholder_1
lstm_22_while_placeholder_2
lstm_22_while_placeholder_3.
*lstm_22_while_less_lstm_22_strided_slice_1D
@lstm_22_while_lstm_22_while_cond_883617___redundant_placeholder0D
@lstm_22_while_lstm_22_while_cond_883617___redundant_placeholder1D
@lstm_22_while_lstm_22_while_cond_883617___redundant_placeholder2D
@lstm_22_while_lstm_22_while_cond_883617___redundant_placeholder3
lstm_22_while_identity

lstm_22/while/LessLesslstm_22_while_placeholder*lstm_22_while_less_lstm_22_strided_slice_1*
T0*
_output_shapes
: 2
lstm_22/while/Lessu
lstm_22/while/IdentityIdentitylstm_22/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_22/while/Identity"9
lstm_22_while_identitylstm_22/while/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:


(__inference_lstm_22_layer_call_fn_885269

inputs
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_22_layer_call_and_return_conditional_losses_8830402
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ:::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ò"
ß
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_886079

inputs
states_0
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource

identity_2

identity_3

identity_4¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
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
split/split_dim¿
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Sigmoid_2f
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_1]
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identityµ
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*,
_gradient_op_typeCustomGradient-886060*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
	IdentityNh
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_2]
add_1AddV2mul:z:0	mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Sigmoid_4a
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_3a

Identity_1Identity	mul_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1´
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-886069*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
IdentityN_1l
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_4¬

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_2¬

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_3¬

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*Y
_input_shapesH
F:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/1
ÀL
þ
while_body_884979
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_40_matmul_readvariableop_resource_09
5while_lstm_cell_40_matmul_1_readvariableop_resource_08
4while_lstm_cell_40_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_40_matmul_readvariableop_resource7
3while_lstm_cell_40_matmul_1_readvariableop_resource6
2while_lstm_cell_40_biasadd_readvariableop_resource¢)while/lstm_cell_40/BiasAdd/ReadVariableOp¢(while/lstm_cell_40/MatMul/ReadVariableOp¢*while/lstm_cell_40/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÊ
(while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_40_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02*
(while/lstm_cell_40/MatMul/ReadVariableOp×
while/lstm_cell_40/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/MatMulÏ
*while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes
:	@*
dtype02,
*while/lstm_cell_40/MatMul_1/ReadVariableOpÀ
while/lstm_cell_40/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/MatMul_1¸
while/lstm_cell_40/addAddV2#while/lstm_cell_40/MatMul:product:0%while/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/addÈ
)while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_40/BiasAdd/ReadVariableOpÅ
while/lstm_cell_40/BiasAddBiasAddwhile/lstm_cell_40/add:z:01while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/BiasAddv
while/lstm_cell_40/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_40/Const
"while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_40/split/split_dim
while/lstm_cell_40/splitSplit+while/lstm_cell_40/split/split_dim:output:0#while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split2
while/lstm_cell_40/split
while/lstm_cell_40/SigmoidSigmoid!while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Sigmoid
while/lstm_cell_40/Sigmoid_1Sigmoid!while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Sigmoid_1 
while/lstm_cell_40/mulMul while/lstm_cell_40/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/mul
while/lstm_cell_40/Sigmoid_2Sigmoid!while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Sigmoid_2²
while/lstm_cell_40/mul_1Mul!while/lstm_cell_40/split:output:2 while/lstm_cell_40/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/mul_1
while/lstm_cell_40/IdentityIdentitywhile/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Identity
while/lstm_cell_40/IdentityN	IdentityNwhile/lstm_cell_40/mul_1:z:0!while/lstm_cell_40/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-885022*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/IdentityN´
while/lstm_cell_40/mul_2Mulwhile/lstm_cell_40/Sigmoid:y:0%while/lstm_cell_40/IdentityN:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/mul_2©
while/lstm_cell_40/add_1AddV2while/lstm_cell_40/mul:z:0while/lstm_cell_40/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/add_1
while/lstm_cell_40/Sigmoid_3Sigmoid!while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Sigmoid_3
while/lstm_cell_40/Sigmoid_4Sigmoidwhile/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Sigmoid_4­
while/lstm_cell_40/mul_3Mulwhile/lstm_cell_40/add_1:z:0 while/lstm_cell_40/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/mul_3
while/lstm_cell_40/Identity_1Identitywhile/lstm_cell_40/mul_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/Identity_1
while/lstm_cell_40/IdentityN_1	IdentityNwhile/lstm_cell_40/mul_3:z:0while/lstm_cell_40/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-885031*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2 
while/lstm_cell_40/IdentityN_1¸
while/lstm_cell_40/mul_4Mul while/lstm_cell_40/Sigmoid_3:y:0'while/lstm_cell_40/IdentityN_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_40/mul_4à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_40/mul_4:z:0*
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
while/add_1â
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_40/mul_4:z:0*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_40/add_1:z:0*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_40_biasadd_readvariableop_resource4while_lstm_cell_40_biasadd_readvariableop_resource_0"l
3while_lstm_cell_40_matmul_1_readvariableop_resource5while_lstm_cell_40_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_40_matmul_readvariableop_resource3while_lstm_cell_40_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :::2V
)while/lstm_cell_40/BiasAdd/ReadVariableOp)while/lstm_cell_40/BiasAdd/ReadVariableOp2T
(while/lstm_cell_40/MatMul/ReadVariableOp(while/lstm_cell_40/MatMul/ReadVariableOp2X
*while/lstm_cell_40/MatMul_1/ReadVariableOp*while/lstm_cell_40/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
Z
þ	
lstm_21_while_body_883449,
(lstm_21_while_lstm_21_while_loop_counter2
.lstm_21_while_lstm_21_while_maximum_iterations
lstm_21_while_placeholder
lstm_21_while_placeholder_1
lstm_21_while_placeholder_2
lstm_21_while_placeholder_3+
'lstm_21_while_lstm_21_strided_slice_1_0g
clstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensor_0?
;lstm_21_while_lstm_cell_39_matmul_readvariableop_resource_0A
=lstm_21_while_lstm_cell_39_matmul_1_readvariableop_resource_0@
<lstm_21_while_lstm_cell_39_biasadd_readvariableop_resource_0
lstm_21_while_identity
lstm_21_while_identity_1
lstm_21_while_identity_2
lstm_21_while_identity_3
lstm_21_while_identity_4
lstm_21_while_identity_5)
%lstm_21_while_lstm_21_strided_slice_1e
alstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensor=
9lstm_21_while_lstm_cell_39_matmul_readvariableop_resource?
;lstm_21_while_lstm_cell_39_matmul_1_readvariableop_resource>
:lstm_21_while_lstm_cell_39_biasadd_readvariableop_resource¢1lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOp¢0lstm_21/while/lstm_cell_39/MatMul/ReadVariableOp¢2lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOpÓ
?lstm_21/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_21/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_21/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensor_0lstm_21_while_placeholderHlstm_21/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_21/while/TensorArrayV2Read/TensorListGetItemá
0lstm_21/while/lstm_cell_39/MatMul/ReadVariableOpReadVariableOp;lstm_21_while_lstm_cell_39_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype022
0lstm_21/while/lstm_cell_39/MatMul/ReadVariableOp÷
!lstm_21/while/lstm_cell_39/MatMulMatMul8lstm_21/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_21/while/lstm_cell_39/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_21/while/lstm_cell_39/MatMulè
2lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOpReadVariableOp=lstm_21_while_lstm_cell_39_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype024
2lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOpà
#lstm_21/while/lstm_cell_39/MatMul_1MatMullstm_21_while_placeholder_2:lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#lstm_21/while/lstm_cell_39/MatMul_1Ø
lstm_21/while/lstm_cell_39/addAddV2+lstm_21/while/lstm_cell_39/MatMul:product:0-lstm_21/while/lstm_cell_39/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_21/while/lstm_cell_39/addà
1lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOpReadVariableOp<lstm_21_while_lstm_cell_39_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype023
1lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOpå
"lstm_21/while/lstm_cell_39/BiasAddBiasAdd"lstm_21/while/lstm_cell_39/add:z:09lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_21/while/lstm_cell_39/BiasAdd
 lstm_21/while/lstm_cell_39/ConstConst*
_output_shapes
: *
dtype0*
value	B :2"
 lstm_21/while/lstm_cell_39/Const
*lstm_21/while/lstm_cell_39/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_21/while/lstm_cell_39/split/split_dim¯
 lstm_21/while/lstm_cell_39/splitSplit3lstm_21/while/lstm_cell_39/split/split_dim:output:0+lstm_21/while/lstm_cell_39/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2"
 lstm_21/while/lstm_cell_39/split±
"lstm_21/while/lstm_cell_39/SigmoidSigmoid)lstm_21/while/lstm_cell_39/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_21/while/lstm_cell_39/Sigmoidµ
$lstm_21/while/lstm_cell_39/Sigmoid_1Sigmoid)lstm_21/while/lstm_cell_39/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_21/while/lstm_cell_39/Sigmoid_1Á
lstm_21/while/lstm_cell_39/mulMul(lstm_21/while/lstm_cell_39/Sigmoid_1:y:0lstm_21_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_21/while/lstm_cell_39/mulµ
$lstm_21/while/lstm_cell_39/Sigmoid_2Sigmoid)lstm_21/while/lstm_cell_39/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_21/while/lstm_cell_39/Sigmoid_2Ó
 lstm_21/while/lstm_cell_39/mul_1Mul)lstm_21/while/lstm_cell_39/split:output:2(lstm_21/while/lstm_cell_39/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_21/while/lstm_cell_39/mul_1¯
#lstm_21/while/lstm_cell_39/IdentityIdentity$lstm_21/while/lstm_cell_39/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#lstm_21/while/lstm_cell_39/Identity£
$lstm_21/while/lstm_cell_39/IdentityN	IdentityN$lstm_21/while/lstm_cell_39/mul_1:z:0)lstm_21/while/lstm_cell_39/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-883492*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2&
$lstm_21/while/lstm_cell_39/IdentityNÕ
 lstm_21/while/lstm_cell_39/mul_2Mul&lstm_21/while/lstm_cell_39/Sigmoid:y:0-lstm_21/while/lstm_cell_39/IdentityN:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_21/while/lstm_cell_39/mul_2Ê
 lstm_21/while/lstm_cell_39/add_1AddV2"lstm_21/while/lstm_cell_39/mul:z:0$lstm_21/while/lstm_cell_39/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_21/while/lstm_cell_39/add_1µ
$lstm_21/while/lstm_cell_39/Sigmoid_3Sigmoid)lstm_21/while/lstm_cell_39/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_21/while/lstm_cell_39/Sigmoid_3°
$lstm_21/while/lstm_cell_39/Sigmoid_4Sigmoid$lstm_21/while/lstm_cell_39/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_21/while/lstm_cell_39/Sigmoid_4Î
 lstm_21/while/lstm_cell_39/mul_3Mul$lstm_21/while/lstm_cell_39/add_1:z:0(lstm_21/while/lstm_cell_39/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_21/while/lstm_cell_39/mul_3³
%lstm_21/while/lstm_cell_39/Identity_1Identity$lstm_21/while/lstm_cell_39/mul_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%lstm_21/while/lstm_cell_39/Identity_1¢
&lstm_21/while/lstm_cell_39/IdentityN_1	IdentityN$lstm_21/while/lstm_cell_39/mul_3:z:0$lstm_21/while/lstm_cell_39/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-883501*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ2(
&lstm_21/while/lstm_cell_39/IdentityN_1Ù
 lstm_21/while/lstm_cell_39/mul_4Mul(lstm_21/while/lstm_cell_39/Sigmoid_3:y:0/lstm_21/while/lstm_cell_39/IdentityN_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_21/while/lstm_cell_39/mul_4
2lstm_21/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_21_while_placeholder_1lstm_21_while_placeholder$lstm_21/while/lstm_cell_39/mul_4:z:0*
_output_shapes
: *
element_dtype024
2lstm_21/while/TensorArrayV2Write/TensorListSetIteml
lstm_21/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_21/while/add/y
lstm_21/while/addAddV2lstm_21_while_placeholderlstm_21/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_21/while/addp
lstm_21/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_21/while/add_1/y
lstm_21/while/add_1AddV2(lstm_21_while_lstm_21_while_loop_counterlstm_21/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_21/while/add_1
lstm_21/while/IdentityIdentitylstm_21/while/add_1:z:02^lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOp1^lstm_21/while/lstm_cell_39/MatMul/ReadVariableOp3^lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_21/while/Identity­
lstm_21/while/Identity_1Identity.lstm_21_while_lstm_21_while_maximum_iterations2^lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOp1^lstm_21/while/lstm_cell_39/MatMul/ReadVariableOp3^lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_21/while/Identity_1
lstm_21/while/Identity_2Identitylstm_21/while/add:z:02^lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOp1^lstm_21/while/lstm_cell_39/MatMul/ReadVariableOp3^lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_21/while/Identity_2Á
lstm_21/while/Identity_3IdentityBlstm_21/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOp1^lstm_21/while/lstm_cell_39/MatMul/ReadVariableOp3^lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_21/while/Identity_3µ
lstm_21/while/Identity_4Identity$lstm_21/while/lstm_cell_39/mul_4:z:02^lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOp1^lstm_21/while/lstm_cell_39/MatMul/ReadVariableOp3^lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/while/Identity_4µ
lstm_21/while/Identity_5Identity$lstm_21/while/lstm_cell_39/add_1:z:02^lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOp1^lstm_21/while/lstm_cell_39/MatMul/ReadVariableOp3^lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_21/while/Identity_5"9
lstm_21_while_identitylstm_21/while/Identity:output:0"=
lstm_21_while_identity_1!lstm_21/while/Identity_1:output:0"=
lstm_21_while_identity_2!lstm_21/while/Identity_2:output:0"=
lstm_21_while_identity_3!lstm_21/while/Identity_3:output:0"=
lstm_21_while_identity_4!lstm_21/while/Identity_4:output:0"=
lstm_21_while_identity_5!lstm_21/while/Identity_5:output:0"P
%lstm_21_while_lstm_21_strided_slice_1'lstm_21_while_lstm_21_strided_slice_1_0"z
:lstm_21_while_lstm_cell_39_biasadd_readvariableop_resource<lstm_21_while_lstm_cell_39_biasadd_readvariableop_resource_0"|
;lstm_21_while_lstm_cell_39_matmul_1_readvariableop_resource=lstm_21_while_lstm_cell_39_matmul_1_readvariableop_resource_0"x
9lstm_21_while_lstm_cell_39_matmul_readvariableop_resource;lstm_21_while_lstm_cell_39_matmul_readvariableop_resource_0"È
alstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensorclstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : :::2f
1lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOp1lstm_21/while/lstm_cell_39/BiasAdd/ReadVariableOp2d
0lstm_21/while/lstm_cell_39/MatMul/ReadVariableOp0lstm_21/while/lstm_cell_39/MatMul/ReadVariableOp2h
2lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOp2lstm_21/while/lstm_cell_39/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ú
ß
D__inference_dense_26_layer_call_and_return_conditional_losses_882095

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Sigmoidb
mulMulBiasAdd:output:0Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul[
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identityµ
	IdentityN	IdentityNmul:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-882088*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
	IdentityN

Identity_1IdentityIdentityN:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

»
O__inference_time_distributed_16_layer_call_and_return_conditional_losses_882159

inputs
dense_26_882149
dense_26_882151
identity¢ dense_26/StatefulPartitionedCallD
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
strided_slice/stack_2â
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
valueB"ÿÿÿÿ@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Reshape
 dense_26/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_26_882149dense_26_882151*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_8820952"
 dense_26/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2
Reshape_1/shape/2¨
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape¥
	Reshape_1Reshape)dense_26/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
	Reshape_1
IdentityIdentityReshape_1:output:0!^dense_26/StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@::2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
	

-__inference_sequential_9_layer_call_fn_883336
lstm_21_input
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
identity¢StatefulPartitionedCallë
StatefulPartitionedCallStatefulPartitionedCalllstm_21_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_9_layer_call_and_return_conditional_losses_8833132
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_21_input
Ì

O__inference_time_distributed_16_layer_call_and_return_conditional_losses_885657

inputs+
'dense_26_matmul_readvariableop_resource,
(dense_26_biasadd_readvariableop_resource
identity¢dense_26/BiasAdd/ReadVariableOp¢dense_26/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Reshape¨
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_26/MatMul/ReadVariableOp
dense_26/MatMulMatMulReshape:output:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_26/MatMul§
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_26/BiasAdd/ReadVariableOp¥
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_26/BiasAdd|
dense_26/SigmoidSigmoiddense_26/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_26/Sigmoid
dense_26/mulMuldense_26/BiasAdd:output:0dense_26/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_26/mulv
dense_26/IdentityIdentitydense_26/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_26/IdentityÙ
dense_26/IdentityN	IdentityNdense_26/mul:z:0dense_26/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-885648*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@2
dense_26/IdentityNw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ   @   2
Reshape_1/shape
	Reshape_1Reshapedense_26/IdentityN:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Reshape_1­
IdentityIdentityReshape_1:output:0 ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@::2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Å
Í
-__inference_lstm_cell_39_layer_call_fn_885976

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2¢StatefulPartitionedCallÆ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_39_layer_call_and_return_conditional_losses_8808912
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
ï

O__inference_time_distributed_17_layer_call_and_return_conditional_losses_883148

inputs+
'dense_27_matmul_readvariableop_resource,
(dense_27_biasadd_readvariableop_resource
identity¢dense_27/BiasAdd/ReadVariableOp¢dense_27/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Reshape¨
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_27/MatMul/ReadVariableOp
dense_27/MatMulMatMulReshape:output:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_27/MatMul§
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_27/BiasAdd/ReadVariableOp¥
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_27/BiasAddw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ      2
Reshape_1/shape
	Reshape_1Reshapedense_27/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Reshape_1­
IdentityIdentityReshape_1:output:0 ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@::2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
«
Ã
while_cond_881857
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_881857___redundant_placeholder04
0while_while_cond_881857___redundant_placeholder14
0while_while_cond_881857___redundant_placeholder24
0while_while_cond_881857___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ê
serving_default¶
K
lstm_21_input:
serving_default_lstm_21_input:0ÿÿÿÿÿÿÿÿÿK
time_distributed_174
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:Ï×
Ò;
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
trainable_variables
regularization_losses
	variables
		keras_api


signatures
__call__
+&call_and_return_all_conditional_losses
_default_save_signature"è8
_tf_keras_sequentialÉ8{"class_name": "Sequential", "name": "sequential_9", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_9", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 24, 17]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_21_input"}}, {"class_name": "LSTM", "config": {"name": "lstm_21", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "LSTM", "config": {"name": "lstm_22", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_16", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_17", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_27", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}}]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 17]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 17]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_9", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 24, 17]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_21_input"}}, {"class_name": "LSTM", "config": {"name": "lstm_21", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "LSTM", "config": {"name": "lstm_22", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_16", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_17", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_27", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}}]}}, "training_config": {"loss": {"class_name": "MeanAbsoluteError", "config": {"reduction": "auto", "name": "mean_absolute_error"}}, "metrics": [[{"class_name": "MeanSquaredLogarithmicError", "config": {"name": "mean_squared_logarithmic_error", "dtype": "float32"}}, {"class_name": "MeanSquaredError", "config": {"name": "mean_squared_error", "dtype": "float32"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
Â
cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api
__call__
+&call_and_return_all_conditional_losses"

_tf_keras_rnn_layerù	{"class_name": "LSTM", "name": "lstm_21", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_21", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 17]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 17]}}
Ã
cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api
__call__
+&call_and_return_all_conditional_losses"

_tf_keras_rnn_layerú	{"class_name": "LSTM", "name": "lstm_22", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_22", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 128]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 128]}}
 	
	layer
trainable_variables
regularization_losses
	variables
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layerê{"class_name": "TimeDistributed", "name": "time_distributed_16", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "time_distributed_16", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 64]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 64]}}
¡	
	layer
trainable_variables
regularization_losses
	variables
 	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layerë{"class_name": "TimeDistributed", "name": "time_distributed_17", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "time_distributed_17", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_27", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 64]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 64]}}

!iter

"beta_1

#beta_2
	$decay
%learning_rate&m'm(m)m*m+m,m-m.m/m&v'v(v)v*v+v,v-v.v/v"
	optimizer
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
Î
trainable_variables
0layer_metrics
1layer_regularization_losses
regularization_losses

2layers
	variables
3metrics
4non_trainable_variables
__call__
_default_save_signature
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
-
serving_default"
signature_map
®

&kernel
'recurrent_kernel
(bias
5trainable_variables
6regularization_losses
7	variables
8	keras_api
 __call__
+¡&call_and_return_all_conditional_losses"ñ
_tf_keras_layer×{"class_name": "LSTMCell", "name": "lstm_cell_39", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell_39", "trainable": true, "dtype": "float32", "units": 128, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}
 "
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
¼
trainable_variables
9layer_metrics

:states
;layer_regularization_losses
regularization_losses

<layers
	variables
=metrics
>non_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
­

)kernel
*recurrent_kernel
+bias
?trainable_variables
@regularization_losses
A	variables
B	keras_api
¢__call__
+£&call_and_return_all_conditional_losses"ð
_tf_keras_layerÖ{"class_name": "LSTMCell", "name": "lstm_cell_40", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell_40", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}
 "
trackable_list_wrapper
5
)0
*1
+2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
)0
*1
+2"
trackable_list_wrapper
¼
trainable_variables
Clayer_metrics

Dstates
Elayer_regularization_losses
regularization_losses

Flayers
	variables
Gmetrics
Hnon_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¬

,kernel
-bias
Itrainable_variables
Jregularization_losses
K	variables
L	keras_api
¤__call__
+¥&call_and_return_all_conditional_losses"
_tf_keras_layerë{"class_name": "Dense", "name": "dense_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}}
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
°
trainable_variables
Mlayer_metrics
Nnon_trainable_variables
Olayer_regularization_losses
regularization_losses
	variables
Pmetrics

Qlayers
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
­

.kernel
/bias
Rtrainable_variables
Sregularization_losses
T	variables
U	keras_api
¦__call__
+§&call_and_return_all_conditional_losses"
_tf_keras_layerì{"class_name": "Dense", "name": "dense_27", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_27", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}}
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
°
trainable_variables
Vlayer_metrics
Wnon_trainable_variables
Xlayer_regularization_losses
regularization_losses
	variables
Ymetrics

Zlayers
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.:,	2lstm_21/lstm_cell_39/kernel
9:7
2%lstm_21/lstm_cell_39/recurrent_kernel
(:&2lstm_21/lstm_cell_39/bias
/:-
2lstm_22/lstm_cell_40/kernel
8:6	@2%lstm_22/lstm_cell_40/recurrent_kernel
(:&2lstm_22/lstm_cell_40/bias
,:*@@2time_distributed_16/kernel
&:$@2time_distributed_16/bias
,:*@2time_distributed_17/kernel
&:$2time_distributed_17/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
<
0
1
2
3"
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
 "
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
°
5trainable_variables
^layer_metrics
_non_trainable_variables
`layer_regularization_losses
6regularization_losses
7	variables
ametrics

blayers
 __call__
+¡&call_and_return_all_conditional_losses
'¡"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
 "
trackable_list_wrapper
5
)0
*1
+2"
trackable_list_wrapper
°
?trainable_variables
clayer_metrics
dnon_trainable_variables
elayer_regularization_losses
@regularization_losses
A	variables
fmetrics

glayers
¢__call__
+£&call_and_return_all_conditional_losses
'£"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
°
Itrainable_variables
hlayer_metrics
inon_trainable_variables
jlayer_regularization_losses
Jregularization_losses
K	variables
kmetrics

llayers
¤__call__
+¥&call_and_return_all_conditional_losses
'¥"call_and_return_conditional_losses"
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
0"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
°
Rtrainable_variables
mlayer_metrics
nnon_trainable_variables
olayer_regularization_losses
Sregularization_losses
T	variables
pmetrics

qlayers
¦__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses"
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
0"
trackable_list_wrapper
»
	rtotal
	scount
t	variables
u	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}

	vtotal
	wcount
x
_fn_kwargs
y	variables
z	keras_api"Ð
_tf_keras_metricµ{"class_name": "MeanSquaredLogarithmicError", "name": "mean_squared_logarithmic_error", "dtype": "float32", "config": {"name": "mean_squared_logarithmic_error", "dtype": "float32"}}
ô
	{total
	|count
}
_fn_kwargs
~	variables
	keras_api"­
_tf_keras_metric{"class_name": "MeanSquaredError", "name": "mean_squared_error", "dtype": "float32", "config": {"name": "mean_squared_error", "dtype": "float32"}}
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
3:1	2"Adam/lstm_21/lstm_cell_39/kernel/m
>:<
2,Adam/lstm_21/lstm_cell_39/recurrent_kernel/m
-:+2 Adam/lstm_21/lstm_cell_39/bias/m
4:2
2"Adam/lstm_22/lstm_cell_40/kernel/m
=:;	@2,Adam/lstm_22/lstm_cell_40/recurrent_kernel/m
-:+2 Adam/lstm_22/lstm_cell_40/bias/m
1:/@@2!Adam/time_distributed_16/kernel/m
+:)@2Adam/time_distributed_16/bias/m
1:/@2!Adam/time_distributed_17/kernel/m
+:)2Adam/time_distributed_17/bias/m
3:1	2"Adam/lstm_21/lstm_cell_39/kernel/v
>:<
2,Adam/lstm_21/lstm_cell_39/recurrent_kernel/v
-:+2 Adam/lstm_21/lstm_cell_39/bias/v
4:2
2"Adam/lstm_22/lstm_cell_40/kernel/v
=:;	@2,Adam/lstm_22/lstm_cell_40/recurrent_kernel/v
-:+2 Adam/lstm_22/lstm_cell_40/bias/v
1:/@@2!Adam/time_distributed_16/kernel/v
+:)@2Adam/time_distributed_16/bias/v
1:/@2!Adam/time_distributed_17/kernel/v
+:)2Adam/time_distributed_17/bias/v
2ÿ
-__inference_sequential_9_layer_call_fn_883279
-__inference_sequential_9_layer_call_fn_884140
-__inference_sequential_9_layer_call_fn_883336
-__inference_sequential_9_layer_call_fn_884165À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
î2ë
H__inference_sequential_9_layer_call_and_return_conditional_losses_883743
H__inference_sequential_9_layer_call_and_return_conditional_losses_884115
H__inference_sequential_9_layer_call_and_return_conditional_losses_883221
H__inference_sequential_9_layer_call_and_return_conditional_losses_883189À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
é2æ
!__inference__wrapped_model_880808À
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *0¢-
+(
lstm_21_inputÿÿÿÿÿÿÿÿÿ
2
(__inference_lstm_21_layer_call_fn_884522
(__inference_lstm_21_layer_call_fn_884533
(__inference_lstm_21_layer_call_fn_884890
(__inference_lstm_21_layer_call_fn_884901Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ï2ì
C__inference_lstm_21_layer_call_and_return_conditional_losses_884338
C__inference_lstm_21_layer_call_and_return_conditional_losses_884706
C__inference_lstm_21_layer_call_and_return_conditional_losses_884879
C__inference_lstm_21_layer_call_and_return_conditional_losses_884511Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
(__inference_lstm_22_layer_call_fn_885258
(__inference_lstm_22_layer_call_fn_885269
(__inference_lstm_22_layer_call_fn_885637
(__inference_lstm_22_layer_call_fn_885626Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ï2ì
C__inference_lstm_22_layer_call_and_return_conditional_losses_885615
C__inference_lstm_22_layer_call_and_return_conditional_losses_885247
C__inference_lstm_22_layer_call_and_return_conditional_losses_885074
C__inference_lstm_22_layer_call_and_return_conditional_losses_885442Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
4__inference_time_distributed_16_layer_call_fn_885695
4__inference_time_distributed_16_layer_call_fn_885758
4__inference_time_distributed_16_layer_call_fn_885686
4__inference_time_distributed_16_layer_call_fn_885767À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
O__inference_time_distributed_16_layer_call_and_return_conditional_losses_885749
O__inference_time_distributed_16_layer_call_and_return_conditional_losses_885722
O__inference_time_distributed_16_layer_call_and_return_conditional_losses_885677
O__inference_time_distributed_16_layer_call_and_return_conditional_losses_885657À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
4__inference_time_distributed_17_layer_call_fn_885864
4__inference_time_distributed_17_layer_call_fn_885804
4__inference_time_distributed_17_layer_call_fn_885813
4__inference_time_distributed_17_layer_call_fn_885873À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
O__inference_time_distributed_17_layer_call_and_return_conditional_losses_885855
O__inference_time_distributed_17_layer_call_and_return_conditional_losses_885781
O__inference_time_distributed_17_layer_call_and_return_conditional_losses_885834
O__inference_time_distributed_17_layer_call_and_return_conditional_losses_885795À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÑBÎ
$__inference_signature_wrapper_883371lstm_21_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¢2
-__inference_lstm_cell_39_layer_call_fn_885976
-__inference_lstm_cell_39_layer_call_fn_885993¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ø2Õ
H__inference_lstm_cell_39_layer_call_and_return_conditional_losses_885959
H__inference_lstm_cell_39_layer_call_and_return_conditional_losses_885916¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¢2
-__inference_lstm_cell_40_layer_call_fn_886096
-__inference_lstm_cell_40_layer_call_fn_886113¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ø2Õ
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_886079
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_886036¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ó2Ð
)__inference_dense_26_layer_call_fn_886138¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_26_layer_call_and_return_conditional_losses_886129¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_dense_27_layer_call_fn_886157¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_27_layer_call_and_return_conditional_losses_886148¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ½
!__inference__wrapped_model_880808
&'()*+,-./:¢7
0¢-
+(
lstm_21_inputÿÿÿÿÿÿÿÿÿ
ª "MªJ
H
time_distributed_171.
time_distributed_17ÿÿÿÿÿÿÿÿÿ¤
D__inference_dense_26_layer_call_and_return_conditional_losses_886129\,-/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 |
)__inference_dense_26_layer_call_fn_886138O,-/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ@¤
D__inference_dense_27_layer_call_and_return_conditional_losses_886148\.//¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
)__inference_dense_27_layer_call_fn_886157O.//¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿÓ
C__inference_lstm_21_layer_call_and_return_conditional_losses_884338&'(O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "3¢0
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ó
C__inference_lstm_21_layer_call_and_return_conditional_losses_884511&'(O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "3¢0
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¹
C__inference_lstm_21_layer_call_and_return_conditional_losses_884706r&'(?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 ¹
C__inference_lstm_21_layer_call_and_return_conditional_losses_884879r&'(?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 ª
(__inference_lstm_21_layer_call_fn_884522~&'(O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "&#ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿª
(__inference_lstm_21_layer_call_fn_884533~&'(O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "&#ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
(__inference_lstm_21_layer_call_fn_884890e&'(?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_lstm_21_layer_call_fn_884901e&'(?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ¹
C__inference_lstm_22_layer_call_and_return_conditional_losses_885074r)*+@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ@
 ¹
C__inference_lstm_22_layer_call_and_return_conditional_losses_885247r)*+@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ@
 Ó
C__inference_lstm_22_layer_call_and_return_conditional_losses_885442)*+P¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 Ó
C__inference_lstm_22_layer_call_and_return_conditional_losses_885615)*+P¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
(__inference_lstm_22_layer_call_fn_885258e)*+@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ@
(__inference_lstm_22_layer_call_fn_885269e)*+@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ@ª
(__inference_lstm_22_layer_call_fn_885626~)*+P¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@ª
(__inference_lstm_22_layer_call_fn_885637~)*+P¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Ï
H__inference_lstm_cell_39_layer_call_and_return_conditional_losses_885916&'(¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "v¢s
l¢i

0/0ÿÿÿÿÿÿÿÿÿ
GD
 
0/1/0ÿÿÿÿÿÿÿÿÿ
 
0/1/1ÿÿÿÿÿÿÿÿÿ
 Ï
H__inference_lstm_cell_39_layer_call_and_return_conditional_losses_885959&'(¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "v¢s
l¢i

0/0ÿÿÿÿÿÿÿÿÿ
GD
 
0/1/0ÿÿÿÿÿÿÿÿÿ
 
0/1/1ÿÿÿÿÿÿÿÿÿ
 ¤
-__inference_lstm_cell_39_layer_call_fn_885976ò&'(¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "f¢c

0ÿÿÿÿÿÿÿÿÿ
C@

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿ¤
-__inference_lstm_cell_39_layer_call_fn_885993ò&'(¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "f¢c

0ÿÿÿÿÿÿÿÿÿ
C@

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿË
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_886036þ)*+¢~
w¢t
!
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ@
"
states/1ÿÿÿÿÿÿÿÿÿ@
p
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ@
EB

0/1/0ÿÿÿÿÿÿÿÿÿ@

0/1/1ÿÿÿÿÿÿÿÿÿ@
 Ë
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_886079þ)*+¢~
w¢t
!
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ@
"
states/1ÿÿÿÿÿÿÿÿÿ@
p 
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ@
EB

0/1/0ÿÿÿÿÿÿÿÿÿ@

0/1/1ÿÿÿÿÿÿÿÿÿ@
  
-__inference_lstm_cell_40_layer_call_fn_886096î)*+¢~
w¢t
!
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ@
"
states/1ÿÿÿÿÿÿÿÿÿ@
p
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ@
A>

1/0ÿÿÿÿÿÿÿÿÿ@

1/1ÿÿÿÿÿÿÿÿÿ@ 
-__inference_lstm_cell_40_layer_call_fn_886113î)*+¢~
w¢t
!
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ@
"
states/1ÿÿÿÿÿÿÿÿÿ@
p 
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ@
A>

1/0ÿÿÿÿÿÿÿÿÿ@

1/1ÿÿÿÿÿÿÿÿÿ@Ç
H__inference_sequential_9_layer_call_and_return_conditional_losses_883189{
&'()*+,-./B¢?
8¢5
+(
lstm_21_inputÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Ç
H__inference_sequential_9_layer_call_and_return_conditional_losses_883221{
&'()*+,-./B¢?
8¢5
+(
lstm_21_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 À
H__inference_sequential_9_layer_call_and_return_conditional_losses_883743t
&'()*+,-./;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 À
H__inference_sequential_9_layer_call_and_return_conditional_losses_884115t
&'()*+,-./;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_sequential_9_layer_call_fn_883279n
&'()*+,-./B¢?
8¢5
+(
lstm_21_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_9_layer_call_fn_883336n
&'()*+,-./B¢?
8¢5
+(
lstm_21_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_9_layer_call_fn_884140g
&'()*+,-./;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_9_layer_call_fn_884165g
&'()*+,-./;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿÑ
$__inference_signature_wrapper_883371¨
&'()*+,-./K¢H
¢ 
Aª>
<
lstm_21_input+(
lstm_21_inputÿÿÿÿÿÿÿÿÿ"MªJ
H
time_distributed_171.
time_distributed_17ÿÿÿÿÿÿÿÿÿ¿
O__inference_time_distributed_16_layer_call_and_return_conditional_losses_885657l,-;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ@
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ@
 ¿
O__inference_time_distributed_16_layer_call_and_return_conditional_losses_885677l,-;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ@
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ@
 Ñ
O__inference_time_distributed_16_layer_call_and_return_conditional_losses_885722~,-D¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 Ñ
O__inference_time_distributed_16_layer_call_and_return_conditional_losses_885749~,-D¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
4__inference_time_distributed_16_layer_call_fn_885686_,-;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ@
p

 
ª "ÿÿÿÿÿÿÿÿÿ@
4__inference_time_distributed_16_layer_call_fn_885695_,-;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ@
p 

 
ª "ÿÿÿÿÿÿÿÿÿ@©
4__inference_time_distributed_16_layer_call_fn_885758q,-D¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@©
4__inference_time_distributed_16_layer_call_fn_885767q,-D¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@¿
O__inference_time_distributed_17_layer_call_and_return_conditional_losses_885781l./;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ@
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ¿
O__inference_time_distributed_17_layer_call_and_return_conditional_losses_885795l./;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ@
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Ñ
O__inference_time_distributed_17_layer_call_and_return_conditional_losses_885834~./D¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ñ
O__inference_time_distributed_17_layer_call_and_return_conditional_losses_885855~./D¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
4__inference_time_distributed_17_layer_call_fn_885804_./;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ@
p

 
ª "ÿÿÿÿÿÿÿÿÿ
4__inference_time_distributed_17_layer_call_fn_885813_./;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ@
p 

 
ª "ÿÿÿÿÿÿÿÿÿ©
4__inference_time_distributed_17_layer_call_fn_885864q./D¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ©
4__inference_time_distributed_17_layer_call_fn_885873q./D¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ