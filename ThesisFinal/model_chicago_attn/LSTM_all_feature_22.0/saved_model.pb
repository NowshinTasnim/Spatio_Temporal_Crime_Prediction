�/
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
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
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
�
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
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
�
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
�
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
�
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
�
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint���������
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
�
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
�"serve*2.5.02v2.5.0-0-ga4dfb8d1a718��,
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
�
lstm_1/lstm_cell_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�**
shared_namelstm_1/lstm_cell_1/kernel
�
-lstm_1/lstm_cell_1/kernel/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_1/kernel*
_output_shapes
:	�*
dtype0
�
#lstm_1/lstm_cell_1/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*4
shared_name%#lstm_1/lstm_cell_1/recurrent_kernel
�
7lstm_1/lstm_cell_1/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_1/lstm_cell_1/recurrent_kernel* 
_output_shapes
:
��*
dtype0
�
lstm_1/lstm_cell_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*(
shared_namelstm_1/lstm_cell_1/bias
�
+lstm_1/lstm_cell_1/bias/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_1/bias*
_output_shapes	
:�*
dtype0
�
lstm_2/lstm_cell_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��**
shared_namelstm_2/lstm_cell_2/kernel
�
-lstm_2/lstm_cell_2/kernel/Read/ReadVariableOpReadVariableOplstm_2/lstm_cell_2/kernel* 
_output_shapes
:
��*
dtype0
�
#lstm_2/lstm_cell_2/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*4
shared_name%#lstm_2/lstm_cell_2/recurrent_kernel
�
7lstm_2/lstm_cell_2/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_2/lstm_cell_2/recurrent_kernel*
_output_shapes
:	@�*
dtype0
�
lstm_2/lstm_cell_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*(
shared_namelstm_2/lstm_cell_2/bias
�
+lstm_2/lstm_cell_2/bias/Read/ReadVariableOpReadVariableOplstm_2/lstm_cell_2/bias*
_output_shapes	
:�*
dtype0
�
time_distributed/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*(
shared_nametime_distributed/kernel
�
+time_distributed/kernel/Read/ReadVariableOpReadVariableOptime_distributed/kernel*
_output_shapes

:@@*
dtype0
�
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
�
time_distributed_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@**
shared_nametime_distributed_1/kernel
�
-time_distributed_1/kernel/Read/ReadVariableOpReadVariableOptime_distributed_1/kernel*
_output_shapes

:@*
dtype0
�
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
�
 Adam/lstm_1/lstm_cell_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*1
shared_name" Adam/lstm_1/lstm_cell_1/kernel/m
�
4Adam/lstm_1/lstm_cell_1/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_1/lstm_cell_1/kernel/m*
_output_shapes
:	�*
dtype0
�
*Adam/lstm_1/lstm_cell_1/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*;
shared_name,*Adam/lstm_1/lstm_cell_1/recurrent_kernel/m
�
>Adam/lstm_1/lstm_cell_1/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_1/lstm_cell_1/recurrent_kernel/m* 
_output_shapes
:
��*
dtype0
�
Adam/lstm_1/lstm_cell_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*/
shared_name Adam/lstm_1/lstm_cell_1/bias/m
�
2Adam/lstm_1/lstm_cell_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_1/lstm_cell_1/bias/m*
_output_shapes	
:�*
dtype0
�
 Adam/lstm_2/lstm_cell_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*1
shared_name" Adam/lstm_2/lstm_cell_2/kernel/m
�
4Adam/lstm_2/lstm_cell_2/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_2/lstm_cell_2/kernel/m* 
_output_shapes
:
��*
dtype0
�
*Adam/lstm_2/lstm_cell_2/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*;
shared_name,*Adam/lstm_2/lstm_cell_2/recurrent_kernel/m
�
>Adam/lstm_2/lstm_cell_2/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_2/lstm_cell_2/recurrent_kernel/m*
_output_shapes
:	@�*
dtype0
�
Adam/lstm_2/lstm_cell_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*/
shared_name Adam/lstm_2/lstm_cell_2/bias/m
�
2Adam/lstm_2/lstm_cell_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_2/lstm_cell_2/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/time_distributed/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*/
shared_name Adam/time_distributed/kernel/m
�
2Adam/time_distributed/kernel/m/Read/ReadVariableOpReadVariableOpAdam/time_distributed/kernel/m*
_output_shapes

:@@*
dtype0
�
Adam/time_distributed/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_nameAdam/time_distributed/bias/m
�
0Adam/time_distributed/bias/m/Read/ReadVariableOpReadVariableOpAdam/time_distributed/bias/m*
_output_shapes
:@*
dtype0
�
 Adam/time_distributed_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*1
shared_name" Adam/time_distributed_1/kernel/m
�
4Adam/time_distributed_1/kernel/m/Read/ReadVariableOpReadVariableOp Adam/time_distributed_1/kernel/m*
_output_shapes

:@*
dtype0
�
Adam/time_distributed_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/time_distributed_1/bias/m
�
2Adam/time_distributed_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/time_distributed_1/bias/m*
_output_shapes
:*
dtype0
�
 Adam/lstm_1/lstm_cell_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*1
shared_name" Adam/lstm_1/lstm_cell_1/kernel/v
�
4Adam/lstm_1/lstm_cell_1/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_1/lstm_cell_1/kernel/v*
_output_shapes
:	�*
dtype0
�
*Adam/lstm_1/lstm_cell_1/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*;
shared_name,*Adam/lstm_1/lstm_cell_1/recurrent_kernel/v
�
>Adam/lstm_1/lstm_cell_1/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_1/lstm_cell_1/recurrent_kernel/v* 
_output_shapes
:
��*
dtype0
�
Adam/lstm_1/lstm_cell_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*/
shared_name Adam/lstm_1/lstm_cell_1/bias/v
�
2Adam/lstm_1/lstm_cell_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_1/lstm_cell_1/bias/v*
_output_shapes	
:�*
dtype0
�
 Adam/lstm_2/lstm_cell_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*1
shared_name" Adam/lstm_2/lstm_cell_2/kernel/v
�
4Adam/lstm_2/lstm_cell_2/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_2/lstm_cell_2/kernel/v* 
_output_shapes
:
��*
dtype0
�
*Adam/lstm_2/lstm_cell_2/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*;
shared_name,*Adam/lstm_2/lstm_cell_2/recurrent_kernel/v
�
>Adam/lstm_2/lstm_cell_2/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_2/lstm_cell_2/recurrent_kernel/v*
_output_shapes
:	@�*
dtype0
�
Adam/lstm_2/lstm_cell_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*/
shared_name Adam/lstm_2/lstm_cell_2/bias/v
�
2Adam/lstm_2/lstm_cell_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_2/lstm_cell_2/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/time_distributed/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*/
shared_name Adam/time_distributed/kernel/v
�
2Adam/time_distributed/kernel/v/Read/ReadVariableOpReadVariableOpAdam/time_distributed/kernel/v*
_output_shapes

:@@*
dtype0
�
Adam/time_distributed/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_nameAdam/time_distributed/bias/v
�
0Adam/time_distributed/bias/v/Read/ReadVariableOpReadVariableOpAdam/time_distributed/bias/v*
_output_shapes
:@*
dtype0
�
 Adam/time_distributed_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*1
shared_name" Adam/time_distributed_1/kernel/v
�
4Adam/time_distributed_1/kernel/v/Read/ReadVariableOpReadVariableOp Adam/time_distributed_1/kernel/v*
_output_shapes

:@*
dtype0
�
Adam/time_distributed_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/time_distributed_1/bias/v
�
2Adam/time_distributed_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/time_distributed_1/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
�F
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�E
value�EB�E B�E
�
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
regularization_losses
	trainable_variables

	variables
	keras_api
�
cell

state_spec
#_self_saveable_object_factories
regularization_losses
trainable_variables
	variables
	keras_api
�
cell

state_spec
#_self_saveable_object_factories
regularization_losses
trainable_variables
	variables
	keras_api
�
	layer
#_self_saveable_object_factories
regularization_losses
trainable_variables
	variables
	keras_api
�
	 layer
#!_self_saveable_object_factories
"regularization_losses
#trainable_variables
$	variables
%	keras_api
�
&iter

'beta_1

(beta_2
	)decay
*learning_rate+m�,m�-m�.m�/m�0m�1m�2m�3m�4m�+v�,v�-v�.v�/v�0v�1v�2v�3v�4v�
 
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
�
5layer_metrics
6layer_regularization_losses
regularization_losses

7layers
8non_trainable_variables
9metrics
	trainable_variables

	variables
�
:
state_size

+kernel
,recurrent_kernel
-bias
#;_self_saveable_object_factories
<regularization_losses
=trainable_variables
>	variables
?	keras_api
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
�
@layer_metrics
Alayer_regularization_losses
regularization_losses

Bstates

Clayers
Dnon_trainable_variables
Emetrics
trainable_variables
	variables
�
F
state_size

.kernel
/recurrent_kernel
0bias
#G_self_saveable_object_factories
Hregularization_losses
Itrainable_variables
J	variables
K	keras_api
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
�
Llayer_metrics
Mlayer_regularization_losses
regularization_losses

Nstates

Olayers
Pnon_trainable_variables
Qmetrics
trainable_variables
	variables
�

1kernel
2bias
#R_self_saveable_object_factories
Sregularization_losses
Ttrainable_variables
U	variables
V	keras_api
 
 

10
21

10
21
�
Wlayer_metrics
Xlayer_regularization_losses
regularization_losses

Ylayers
Znon_trainable_variables
[metrics
trainable_variables
	variables
�

3kernel
4bias
#\_self_saveable_object_factories
]regularization_losses
^trainable_variables
_	variables
`	keras_api
 
 

30
41

30
41
�
alayer_metrics
blayer_regularization_losses
"regularization_losses

clayers
dnon_trainable_variables
emetrics
#trainable_variables
$	variables
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
 
 

0
1
2
3
 

f0
g1
h2
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
�
ilayer_metrics
jlayer_regularization_losses
<regularization_losses

klayers
lnon_trainable_variables
mmetrics
=trainable_variables
>	variables
 
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
�
nlayer_metrics
olayer_regularization_losses
Hregularization_losses

players
qnon_trainable_variables
rmetrics
Itrainable_variables
J	variables
 
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
�
slayer_metrics
tlayer_regularization_losses
Sregularization_losses

ulayers
vnon_trainable_variables
wmetrics
Ttrainable_variables
U	variables
 
 

0
 
 
 
 

30
41

30
41
�
xlayer_metrics
ylayer_regularization_losses
]regularization_losses

zlayers
{non_trainable_variables
|metrics
^trainable_variables
_	variables
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
�	keras_api
I

�total

�count
�
_fn_kwargs
�	variables
�	keras_api
I

�total

�count
�
_fn_kwargs
�	variables
�	keras_api
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
�0
�1

�	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE
 

�0
�1

�	variables
��
VARIABLE_VALUE Adam/lstm_1/lstm_cell_1/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE*Adam/lstm_1/lstm_cell_1/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/lstm_1/lstm_cell_1/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE Adam/lstm_2/lstm_cell_2/kernel/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE*Adam/lstm_2/lstm_cell_2/recurrent_kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/lstm_2/lstm_cell_2/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/time_distributed/kernel/mLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/time_distributed/bias/mLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE Adam/time_distributed_1/kernel/mLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/time_distributed_1/bias/mLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE Adam/lstm_1/lstm_cell_1/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE*Adam/lstm_1/lstm_cell_1/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/lstm_1/lstm_cell_1/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE Adam/lstm_2/lstm_cell_2/kernel/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE*Adam/lstm_2/lstm_cell_2/recurrent_kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/lstm_2/lstm_cell_2/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/time_distributed/kernel/vLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/time_distributed/bias/vLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE Adam/time_distributed_1/kernel/vLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/time_distributed_1/bias/vLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_lstm_1_inputPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_1_inputlstm_1/lstm_cell_1/kernel#lstm_1/lstm_cell_1/recurrent_kernellstm_1/lstm_cell_1/biaslstm_2/lstm_cell_2/kernel#lstm_2/lstm_cell_2/recurrent_kernellstm_2/lstm_cell_2/biastime_distributed/kerneltime_distributed/biastime_distributed_1/kerneltime_distributed_1/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_566825
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
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
GPU 2J 8� *(
f#R!
__inference__traced_save_569729
�
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
GPU 2J 8� *+
f&R$
"__inference__traced_restore_569862��*
�&
�
while_body_564895
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_82_564919_0:
��.
while_lstm_cell_82_564921_0:	@�*
while_lstm_cell_82_564923_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_82_564919:
��,
while_lstm_cell_82_564921:	@�(
while_lstm_cell_82_564923:	���*while/lstm_cell_82/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:����������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
*while/lstm_cell_82/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_82_564919_0while_lstm_cell_82_564921_0while_lstm_cell_82_564923_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������@:���������@:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_82_layer_call_and_return_conditional_losses_5648812,
*while/lstm_cell_82/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_82/StatefulPartitionedCall:output:0*
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
while/add_1�
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_82/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_82/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_82/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_82/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity3while/lstm_cell_82/StatefulPartitionedCall:output:1+^while/lstm_cell_82/StatefulPartitionedCall*
T0*'
_output_shapes
:���������@2
while/Identity_4�
while/Identity_5Identity3while/lstm_cell_82/StatefulPartitionedCall:output:2+^while/lstm_cell_82/StatefulPartitionedCall*
T0*'
_output_shapes
:���������@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_82_564919while_lstm_cell_82_564919_0"8
while_lstm_cell_82_564921while_lstm_cell_82_564921_0"8
while_lstm_cell_82_564923while_lstm_cell_82_564923_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2X
*while/lstm_cell_82/StatefulPartitionedCall*while/lstm_cell_82/StatefulPartitionedCall: 
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
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_564894
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_564894___redundant_placeholder04
0while_while_cond_564894___redundant_placeholder14
0while_while_cond_564894___redundant_placeholder24
0while_while_cond_564894___redundant_placeholder3
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
@: : : : :���������@:���������@: ::::: 
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
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�L
�
while_body_567903
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_81_matmul_readvariableop_resource_0:	�I
5while_lstm_cell_81_matmul_1_readvariableop_resource_0:
��C
4while_lstm_cell_81_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_81_matmul_readvariableop_resource:	�G
3while_lstm_cell_81_matmul_1_readvariableop_resource:
��A
2while_lstm_cell_81_biasadd_readvariableop_resource:	���)while/lstm_cell_81/BiasAdd/ReadVariableOp�(while/lstm_cell_81/MatMul/ReadVariableOp�*while/lstm_cell_81/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_81/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_81_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02*
(while/lstm_cell_81/MatMul/ReadVariableOp�
while/lstm_cell_81/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/MatMul�
*while/lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_81_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype02,
*while/lstm_cell_81/MatMul_1/ReadVariableOp�
while/lstm_cell_81/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/MatMul_1�
while/lstm_cell_81/addAddV2#while/lstm_cell_81/MatMul:product:0%while/lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/add�
)while/lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_81_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_81/BiasAdd/ReadVariableOp�
while/lstm_cell_81/BiasAddBiasAddwhile/lstm_cell_81/add:z:01while/lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/BiasAdd�
"while/lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_81/split/split_dim�
while/lstm_cell_81/splitSplit+while/lstm_cell_81/split/split_dim:output:0#while/lstm_cell_81/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split2
while/lstm_cell_81/split�
while/lstm_cell_81/SigmoidSigmoid!while/lstm_cell_81/split:output:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Sigmoid�
while/lstm_cell_81/Sigmoid_1Sigmoid!while/lstm_cell_81/split:output:1*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Sigmoid_1�
while/lstm_cell_81/mulMul while/lstm_cell_81/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/mul�
while/lstm_cell_81/Sigmoid_2Sigmoid!while/lstm_cell_81/split:output:2*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Sigmoid_2�
while/lstm_cell_81/mul_1Mul!while/lstm_cell_81/split:output:2 while/lstm_cell_81/Sigmoid_2:y:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/mul_1�
while/lstm_cell_81/IdentityIdentitywhile/lstm_cell_81/mul_1:z:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Identity�
while/lstm_cell_81/IdentityN	IdentityNwhile/lstm_cell_81/mul_1:z:0!while/lstm_cell_81/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-567945*<
_output_shapes*
(:����������:����������2
while/lstm_cell_81/IdentityN�
while/lstm_cell_81/mul_2Mulwhile/lstm_cell_81/Sigmoid:y:0%while/lstm_cell_81/IdentityN:output:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/mul_2�
while/lstm_cell_81/add_1AddV2while/lstm_cell_81/mul:z:0while/lstm_cell_81/mul_2:z:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/add_1�
while/lstm_cell_81/Sigmoid_3Sigmoid!while/lstm_cell_81/split:output:3*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Sigmoid_3�
while/lstm_cell_81/Sigmoid_4Sigmoidwhile/lstm_cell_81/add_1:z:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Sigmoid_4�
while/lstm_cell_81/mul_3Mulwhile/lstm_cell_81/add_1:z:0 while/lstm_cell_81/Sigmoid_4:y:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/mul_3�
while/lstm_cell_81/Identity_1Identitywhile/lstm_cell_81/mul_3:z:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Identity_1�
while/lstm_cell_81/IdentityN_1	IdentityNwhile/lstm_cell_81/mul_3:z:0while/lstm_cell_81/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-567954*<
_output_shapes*
(:����������:����������2 
while/lstm_cell_81/IdentityN_1�
while/lstm_cell_81/mul_4Mul while/lstm_cell_81/Sigmoid_3:y:0'while/lstm_cell_81/IdentityN_1:output:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/mul_4�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_81/mul_4:z:0*
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
while/add_1�
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_81/mul_4:z:0*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:����������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_81/add_1:z:0*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:����������2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_81_biasadd_readvariableop_resource4while_lstm_cell_81_biasadd_readvariableop_resource_0"l
3while_lstm_cell_81_matmul_1_readvariableop_resource5while_lstm_cell_81_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_81_matmul_readvariableop_resource3while_lstm_cell_81_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2V
)while/lstm_cell_81/BiasAdd/ReadVariableOp)while/lstm_cell_81/BiasAdd/ReadVariableOp2T
(while/lstm_cell_81/MatMul/ReadVariableOp(while/lstm_cell_81/MatMul/ReadVariableOp2X
*while/lstm_cell_81/MatMul_1/ReadVariableOp*while/lstm_cell_81/MatMul_1/ReadVariableOp: 
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
:����������:.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�
�
'__inference_lstm_1_layer_call_fn_567622
inputs_0
unknown:	�
	unknown_0:
��
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_5643142
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:�������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
while_cond_568073
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_568073___redundant_placeholder04
0while_while_cond_568073___redundant_placeholder14
0while_while_cond_568073___redundant_placeholder24
0while_while_cond_568073___redundant_placeholder3
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
B: : : : :����������:����������: ::::: 
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
:����������:.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�

�
-__inference_sequential_1_layer_call_fn_566875

inputs
unknown:	�
	unknown_0:
��
	unknown_1:	�
	unknown_2:
��
	unknown_3:	@�
	unknown_4:	�
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_5666802
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_568972
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_568972___redundant_placeholder04
0while_while_cond_568972___redundant_placeholder14
0while_while_cond_568972___redundant_placeholder24
0while_while_cond_568972___redundant_placeholder3
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
@: : : : :���������@:���������@: ::::: 
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
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
��
�
"__inference__traced_restore_569862
file_prefix$
assignvariableop_adam_iter:	 (
assignvariableop_1_adam_beta_1: (
assignvariableop_2_adam_beta_2: '
assignvariableop_3_adam_decay: /
%assignvariableop_4_adam_learning_rate: ?
,assignvariableop_5_lstm_1_lstm_cell_1_kernel:	�J
6assignvariableop_6_lstm_1_lstm_cell_1_recurrent_kernel:
��9
*assignvariableop_7_lstm_1_lstm_cell_1_bias:	�@
,assignvariableop_8_lstm_2_lstm_cell_2_kernel:
��I
6assignvariableop_9_lstm_2_lstm_cell_2_recurrent_kernel:	@�:
+assignvariableop_10_lstm_2_lstm_cell_2_bias:	�=
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
4assignvariableop_21_adam_lstm_1_lstm_cell_1_kernel_m:	�R
>assignvariableop_22_adam_lstm_1_lstm_cell_1_recurrent_kernel_m:
��A
2assignvariableop_23_adam_lstm_1_lstm_cell_1_bias_m:	�H
4assignvariableop_24_adam_lstm_2_lstm_cell_2_kernel_m:
��Q
>assignvariableop_25_adam_lstm_2_lstm_cell_2_recurrent_kernel_m:	@�A
2assignvariableop_26_adam_lstm_2_lstm_cell_2_bias_m:	�D
2assignvariableop_27_adam_time_distributed_kernel_m:@@>
0assignvariableop_28_adam_time_distributed_bias_m:@F
4assignvariableop_29_adam_time_distributed_1_kernel_m:@@
2assignvariableop_30_adam_time_distributed_1_bias_m:G
4assignvariableop_31_adam_lstm_1_lstm_cell_1_kernel_v:	�R
>assignvariableop_32_adam_lstm_1_lstm_cell_1_recurrent_kernel_v:
��A
2assignvariableop_33_adam_lstm_1_lstm_cell_1_bias_v:	�H
4assignvariableop_34_adam_lstm_2_lstm_cell_2_kernel_v:
��Q
>assignvariableop_35_adam_lstm_2_lstm_cell_2_recurrent_kernel_v:	@�A
2assignvariableop_36_adam_lstm_2_lstm_cell_2_bias_v:	�D
2assignvariableop_37_adam_time_distributed_kernel_v:@@>
0assignvariableop_38_adam_time_distributed_bias_v:@F
4assignvariableop_39_adam_time_distributed_1_kernel_v:@@
2assignvariableop_40_adam_time_distributed_1_bias_v:
identity_42��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:**
dtype0*�
value�B�*B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:**
dtype0*g
value^B\*B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::*8
dtypes.
,2*	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOpassignvariableop_adam_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_beta_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_2Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp%assignvariableop_4_adam_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp,assignvariableop_5_lstm_1_lstm_cell_1_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp6assignvariableop_6_lstm_1_lstm_cell_1_recurrent_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp*assignvariableop_7_lstm_1_lstm_cell_1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp,assignvariableop_8_lstm_2_lstm_cell_2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp6assignvariableop_9_lstm_2_lstm_cell_2_recurrent_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp+assignvariableop_10_lstm_2_lstm_cell_2_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp+assignvariableop_11_time_distributed_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp)assignvariableop_12_time_distributed_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp-assignvariableop_13_time_distributed_1_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp+assignvariableop_14_time_distributed_1_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_2Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_2Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOp4assignvariableop_21_adam_lstm_1_lstm_cell_1_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOp>assignvariableop_22_adam_lstm_1_lstm_cell_1_recurrent_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOp2assignvariableop_23_adam_lstm_1_lstm_cell_1_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp4assignvariableop_24_adam_lstm_2_lstm_cell_2_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOp>assignvariableop_25_adam_lstm_2_lstm_cell_2_recurrent_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp2assignvariableop_26_adam_lstm_2_lstm_cell_2_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOp2assignvariableop_27_adam_time_distributed_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp0assignvariableop_28_adam_time_distributed_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOp4assignvariableop_29_adam_time_distributed_1_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOp2assignvariableop_30_adam_time_distributed_1_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31�
AssignVariableOp_31AssignVariableOp4assignvariableop_31_adam_lstm_1_lstm_cell_1_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32�
AssignVariableOp_32AssignVariableOp>assignvariableop_32_adam_lstm_1_lstm_cell_1_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33�
AssignVariableOp_33AssignVariableOp2assignvariableop_33_adam_lstm_1_lstm_cell_1_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34�
AssignVariableOp_34AssignVariableOp4assignvariableop_34_adam_lstm_2_lstm_cell_2_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35�
AssignVariableOp_35AssignVariableOp>assignvariableop_35_adam_lstm_2_lstm_cell_2_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36�
AssignVariableOp_36AssignVariableOp2assignvariableop_36_adam_lstm_2_lstm_cell_2_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37�
AssignVariableOp_37AssignVariableOp2assignvariableop_37_adam_time_distributed_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38�
AssignVariableOp_38AssignVariableOp0assignvariableop_38_adam_time_distributed_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39�
AssignVariableOp_39AssignVariableOp4assignvariableop_39_adam_time_distributed_1_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40�
AssignVariableOp_40AssignVariableOp2assignvariableop_40_adam_time_distributed_1_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_409
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_41Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_41�
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
�
�
'__inference_lstm_2_layer_call_fn_568372

inputs
unknown:
��
	unknown_0:	@�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_5660852
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
(__inference_dense_3_layer_call_fn_569573

inputs
unknown:@
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_5656152
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�c
�
B__inference_lstm_2_layer_call_and_return_conditional_losses_568896

inputs?
+lstm_cell_82_matmul_readvariableop_resource:
��@
-lstm_cell_82_matmul_1_readvariableop_resource:	@�;
,lstm_cell_82_biasadd_readvariableop_resource:	�
identity��#lstm_cell_82/BiasAdd/ReadVariableOp�"lstm_cell_82/MatMul/ReadVariableOp�$lstm_cell_82/MatMul_1/ReadVariableOp�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:���������@2
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
B :�2
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
zeros_1/packed/1�
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
:���������@2	
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
:����������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_82/MatMul/ReadVariableOpReadVariableOp+lstm_cell_82_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02$
"lstm_cell_82/MatMul/ReadVariableOp�
lstm_cell_82/MatMulMatMulstrided_slice_2:output:0*lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_82/MatMul�
$lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_82_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype02&
$lstm_cell_82/MatMul_1/ReadVariableOp�
lstm_cell_82/MatMul_1MatMulzeros:output:0,lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_82/MatMul_1�
lstm_cell_82/addAddV2lstm_cell_82/MatMul:product:0lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_82/add�
#lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_82_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_82/BiasAdd/ReadVariableOp�
lstm_cell_82/BiasAddBiasAddlstm_cell_82/add:z:0+lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_82/BiasAdd~
lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_82/split/split_dim�
lstm_cell_82/splitSplit%lstm_cell_82/split/split_dim:output:0lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
lstm_cell_82/split�
lstm_cell_82/SigmoidSigmoidlstm_cell_82/split:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Sigmoid�
lstm_cell_82/Sigmoid_1Sigmoidlstm_cell_82/split:output:1*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Sigmoid_1�
lstm_cell_82/mulMullstm_cell_82/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/mul�
lstm_cell_82/Sigmoid_2Sigmoidlstm_cell_82/split:output:2*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Sigmoid_2�
lstm_cell_82/mul_1Mullstm_cell_82/split:output:2lstm_cell_82/Sigmoid_2:y:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/mul_1�
lstm_cell_82/IdentityIdentitylstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Identity�
lstm_cell_82/IdentityN	IdentityNlstm_cell_82/mul_1:z:0lstm_cell_82/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-568782*:
_output_shapes(
&:���������@:���������@2
lstm_cell_82/IdentityN�
lstm_cell_82/mul_2Mullstm_cell_82/Sigmoid:y:0lstm_cell_82/IdentityN:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/mul_2�
lstm_cell_82/add_1AddV2lstm_cell_82/mul:z:0lstm_cell_82/mul_2:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/add_1�
lstm_cell_82/Sigmoid_3Sigmoidlstm_cell_82/split:output:3*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Sigmoid_3�
lstm_cell_82/Sigmoid_4Sigmoidlstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Sigmoid_4�
lstm_cell_82/mul_3Mullstm_cell_82/add_1:z:0lstm_cell_82/Sigmoid_4:y:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/mul_3�
lstm_cell_82/Identity_1Identitylstm_cell_82/mul_3:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Identity_1�
lstm_cell_82/IdentityN_1	IdentityNlstm_cell_82/mul_3:z:0lstm_cell_82/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-568791*:
_output_shapes(
&:���������@:���������@2
lstm_cell_82/IdentityN_1�
lstm_cell_82/mul_4Mullstm_cell_82/Sigmoid_3:y:0!lstm_cell_82/IdentityN_1:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/mul_4�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_82_matmul_readvariableop_resource-lstm_cell_82_matmul_1_readvariableop_resource,lstm_cell_82_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������@:���������@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_568802*
condR
while_cond_568801*K
output_shapes:
8: : : : :���������@:���������@: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime�
IdentityIdentitytranspose_1:y:0$^lstm_cell_82/BiasAdd/ReadVariableOp#^lstm_cell_82/MatMul/ReadVariableOp%^lstm_cell_82/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 2J
#lstm_cell_82/BiasAdd/ReadVariableOp#lstm_cell_82/BiasAdd/ReadVariableOp2H
"lstm_cell_82/MatMul/ReadVariableOp"lstm_cell_82/MatMul/ReadVariableOp2L
$lstm_cell_82/MatMul_1/ReadVariableOp$lstm_cell_82/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
C__inference_dense_2_layer_call_and_return_conditional_losses_565476

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������@2	
Sigmoidb
mulMulBiasAdd:output:0Sigmoid:y:0*
T0*'
_output_shapes
:���������@2
mul[
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:���������@2

Identity�
	IdentityN	IdentityNmul:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-565469*:
_output_shapes(
&:���������@:���������@2
	IdentityN�

Identity_1IdentityIdentityN:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
while_cond_566517
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_566517___redundant_placeholder04
0while_while_cond_566517___redundant_placeholder14
0while_while_cond_566517___redundant_placeholder24
0while_while_cond_566517___redundant_placeholder3
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
B: : : : :����������:����������: ::::: 
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
:����������:.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�"
�
H__inference_lstm_cell_82_layer_call_and_return_conditional_losses_565037

inputs

states
states_12
matmul_readvariableop_resource:
��3
 matmul_1_readvariableop_resource:	@�.
biasadd_readvariableop_resource:	�

identity_2

identity_3

identity_4��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������@2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������@2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������@2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:���������@2
	Sigmoid_2f
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*'
_output_shapes
:���������@2
mul_1]
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:���������@2

Identity�
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*,
_gradient_op_typeCustomGradient-565018*:
_output_shapes(
&:���������@:���������@2
	IdentityNh
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*'
_output_shapes
:���������@2
mul_2]
add_1AddV2mul:z:0	mul_2:z:0*
T0*'
_output_shapes
:���������@2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������@2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:���������@2
	Sigmoid_4a
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*'
_output_shapes
:���������@2
mul_3a

Identity_1Identity	mul_3:z:0*
T0*'
_output_shapes
:���������@2

Identity_1�
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-565027*:
_output_shapes(
&:���������@:���������@2
IdentityN_1l
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*'
_output_shapes
:���������@2
mul_4�

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity_2�

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity_3�

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:����������:���������@:���������@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������@
 
_user_specified_namestates:OK
'
_output_shapes
:���������@
 
_user_specified_namestates
�c
�
B__inference_lstm_1_layer_call_and_return_conditional_losses_568168

inputs>
+lstm_cell_81_matmul_readvariableop_resource:	�A
-lstm_cell_81_matmul_1_readvariableop_resource:
��;
,lstm_cell_81_biasadd_readvariableop_resource:	�
identity��#lstm_cell_81/BiasAdd/ReadVariableOp�"lstm_cell_81/MatMul/ReadVariableOp�$lstm_cell_81/MatMul_1/ReadVariableOp�whileD
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
strided_slice/stack_2�
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
B :�2
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
B :�2
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
B :�2
zeros/packed/1�
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
:����������2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2
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
B :�2
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
B :�2
zeros_1/packed/1�
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
:����������2	
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
:���������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_81/MatMul/ReadVariableOpReadVariableOp+lstm_cell_81_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"lstm_cell_81/MatMul/ReadVariableOp�
lstm_cell_81/MatMulMatMulstrided_slice_2:output:0*lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/MatMul�
$lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_81_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02&
$lstm_cell_81/MatMul_1/ReadVariableOp�
lstm_cell_81/MatMul_1MatMulzeros:output:0,lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/MatMul_1�
lstm_cell_81/addAddV2lstm_cell_81/MatMul:product:0lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/add�
#lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_81_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_81/BiasAdd/ReadVariableOp�
lstm_cell_81/BiasAddBiasAddlstm_cell_81/add:z:0+lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/BiasAdd~
lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_81/split/split_dim�
lstm_cell_81/splitSplit%lstm_cell_81/split/split_dim:output:0lstm_cell_81/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split2
lstm_cell_81/split�
lstm_cell_81/SigmoidSigmoidlstm_cell_81/split:output:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/Sigmoid�
lstm_cell_81/Sigmoid_1Sigmoidlstm_cell_81/split:output:1*
T0*(
_output_shapes
:����������2
lstm_cell_81/Sigmoid_1�
lstm_cell_81/mulMullstm_cell_81/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/mul�
lstm_cell_81/Sigmoid_2Sigmoidlstm_cell_81/split:output:2*
T0*(
_output_shapes
:����������2
lstm_cell_81/Sigmoid_2�
lstm_cell_81/mul_1Mullstm_cell_81/split:output:2lstm_cell_81/Sigmoid_2:y:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/mul_1�
lstm_cell_81/IdentityIdentitylstm_cell_81/mul_1:z:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/Identity�
lstm_cell_81/IdentityN	IdentityNlstm_cell_81/mul_1:z:0lstm_cell_81/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-568054*<
_output_shapes*
(:����������:����������2
lstm_cell_81/IdentityN�
lstm_cell_81/mul_2Mullstm_cell_81/Sigmoid:y:0lstm_cell_81/IdentityN:output:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/mul_2�
lstm_cell_81/add_1AddV2lstm_cell_81/mul:z:0lstm_cell_81/mul_2:z:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/add_1�
lstm_cell_81/Sigmoid_3Sigmoidlstm_cell_81/split:output:3*
T0*(
_output_shapes
:����������2
lstm_cell_81/Sigmoid_3�
lstm_cell_81/Sigmoid_4Sigmoidlstm_cell_81/add_1:z:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/Sigmoid_4�
lstm_cell_81/mul_3Mullstm_cell_81/add_1:z:0lstm_cell_81/Sigmoid_4:y:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/mul_3�
lstm_cell_81/Identity_1Identitylstm_cell_81/mul_3:z:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/Identity_1�
lstm_cell_81/IdentityN_1	IdentityNlstm_cell_81/mul_3:z:0lstm_cell_81/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-568063*<
_output_shapes*
(:����������:����������2
lstm_cell_81/IdentityN_1�
lstm_cell_81/mul_4Mullstm_cell_81/Sigmoid_3:y:0!lstm_cell_81/IdentityN_1:output:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/mul_4�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_81_matmul_readvariableop_resource-lstm_cell_81_matmul_1_readvariableop_resource,lstm_cell_81_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_568074*
condR
while_cond_568073*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime�
IdentityIdentitytranspose_1:y:0$^lstm_cell_81/BiasAdd/ReadVariableOp#^lstm_cell_81/MatMul/ReadVariableOp%^lstm_cell_81/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2J
#lstm_cell_81/BiasAdd/ReadVariableOp#lstm_cell_81/BiasAdd/ReadVariableOp2H
"lstm_cell_81/MatMul/ReadVariableOp"lstm_cell_81/MatMul/ReadVariableOp2L
$lstm_cell_81/MatMul_1/ReadVariableOp$lstm_cell_81/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�L
�
while_body_568973
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_82_matmul_readvariableop_resource_0:
��H
5while_lstm_cell_82_matmul_1_readvariableop_resource_0:	@�C
4while_lstm_cell_82_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_82_matmul_readvariableop_resource:
��F
3while_lstm_cell_82_matmul_1_readvariableop_resource:	@�A
2while_lstm_cell_82_biasadd_readvariableop_resource:	���)while/lstm_cell_82/BiasAdd/ReadVariableOp�(while/lstm_cell_82/MatMul/ReadVariableOp�*while/lstm_cell_82/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:����������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_82/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_82_matmul_readvariableop_resource_0* 
_output_shapes
:
��*
dtype02*
(while/lstm_cell_82/MatMul/ReadVariableOp�
while/lstm_cell_82/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_82/MatMul�
*while/lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_82_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype02,
*while/lstm_cell_82/MatMul_1/ReadVariableOp�
while/lstm_cell_82/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_82/MatMul_1�
while/lstm_cell_82/addAddV2#while/lstm_cell_82/MatMul:product:0%while/lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_82/add�
)while/lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_82_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_82/BiasAdd/ReadVariableOp�
while/lstm_cell_82/BiasAddBiasAddwhile/lstm_cell_82/add:z:01while/lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_82/BiasAdd�
"while/lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_82/split/split_dim�
while/lstm_cell_82/splitSplit+while/lstm_cell_82/split/split_dim:output:0#while/lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
while/lstm_cell_82/split�
while/lstm_cell_82/SigmoidSigmoid!while/lstm_cell_82/split:output:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Sigmoid�
while/lstm_cell_82/Sigmoid_1Sigmoid!while/lstm_cell_82/split:output:1*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Sigmoid_1�
while/lstm_cell_82/mulMul while/lstm_cell_82/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/mul�
while/lstm_cell_82/Sigmoid_2Sigmoid!while/lstm_cell_82/split:output:2*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Sigmoid_2�
while/lstm_cell_82/mul_1Mul!while/lstm_cell_82/split:output:2 while/lstm_cell_82/Sigmoid_2:y:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/mul_1�
while/lstm_cell_82/IdentityIdentitywhile/lstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Identity�
while/lstm_cell_82/IdentityN	IdentityNwhile/lstm_cell_82/mul_1:z:0!while/lstm_cell_82/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-569015*:
_output_shapes(
&:���������@:���������@2
while/lstm_cell_82/IdentityN�
while/lstm_cell_82/mul_2Mulwhile/lstm_cell_82/Sigmoid:y:0%while/lstm_cell_82/IdentityN:output:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/mul_2�
while/lstm_cell_82/add_1AddV2while/lstm_cell_82/mul:z:0while/lstm_cell_82/mul_2:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/add_1�
while/lstm_cell_82/Sigmoid_3Sigmoid!while/lstm_cell_82/split:output:3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Sigmoid_3�
while/lstm_cell_82/Sigmoid_4Sigmoidwhile/lstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Sigmoid_4�
while/lstm_cell_82/mul_3Mulwhile/lstm_cell_82/add_1:z:0 while/lstm_cell_82/Sigmoid_4:y:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/mul_3�
while/lstm_cell_82/Identity_1Identitywhile/lstm_cell_82/mul_3:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Identity_1�
while/lstm_cell_82/IdentityN_1	IdentityNwhile/lstm_cell_82/mul_3:z:0while/lstm_cell_82/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-569024*:
_output_shapes(
&:���������@:���������@2 
while/lstm_cell_82/IdentityN_1�
while/lstm_cell_82/mul_4Mul while/lstm_cell_82/Sigmoid_3:y:0'while/lstm_cell_82/IdentityN_1:output:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/mul_4�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_82/mul_4:z:0*
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
while/add_1�
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_82/mul_4:z:0*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_82/add_1:z:0*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_82_biasadd_readvariableop_resource4while_lstm_cell_82_biasadd_readvariableop_resource_0"l
3while_lstm_cell_82_matmul_1_readvariableop_resource5while_lstm_cell_82_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_82_matmul_readvariableop_resource3while_lstm_cell_82_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2V
)while/lstm_cell_82/BiasAdd/ReadVariableOp)while/lstm_cell_82/BiasAdd/ReadVariableOp2T
(while/lstm_cell_82/MatMul/ReadVariableOp(while/lstm_cell_82/MatMul/ReadVariableOp2X
*while/lstm_cell_82/MatMul_1/ReadVariableOp*while/lstm_cell_82/MatMul_1/ReadVariableOp: 
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
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�"
�
H__inference_lstm_cell_81_layer_call_and_return_conditional_losses_564387

inputs

states
states_11
matmul_readvariableop_resource:	�4
 matmul_1_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�

identity_2

identity_3

identity_4��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:����������2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:����������2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:����������2
muld
	Sigmoid_2Sigmoidsplit:output:2*
T0*(
_output_shapes
:����������2
	Sigmoid_2g
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*(
_output_shapes
:����������2
mul_1^
IdentityIdentity	mul_1:z:0*
T0*(
_output_shapes
:����������2

Identity�
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*,
_gradient_op_typeCustomGradient-564368*<
_output_shapes*
(:����������:����������2
	IdentityNi
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*(
_output_shapes
:����������2
mul_2^
add_1AddV2mul:z:0	mul_2:z:0*
T0*(
_output_shapes
:����������2
add_1d
	Sigmoid_3Sigmoidsplit:output:3*
T0*(
_output_shapes
:����������2
	Sigmoid_3_
	Sigmoid_4Sigmoid	add_1:z:0*
T0*(
_output_shapes
:����������2
	Sigmoid_4b
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*(
_output_shapes
:����������2
mul_3b

Identity_1Identity	mul_3:z:0*
T0*(
_output_shapes
:����������2

Identity_1�
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-564377*<
_output_shapes*
(:����������:����������2
IdentityN_1m
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*(
_output_shapes
:����������2
mul_4�

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity_2�

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity_3�

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:���������:����������:����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_namestates:PL
(
_output_shapes
:����������
 
_user_specified_namestates
�
�
while_cond_565990
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_565990___redundant_placeholder04
0while_while_cond_565990___redundant_placeholder14
0while_while_cond_565990___redundant_placeholder24
0while_while_cond_565990___redundant_placeholder3
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
@: : : : :���������@:���������@: ::::: 
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
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�
�
%sequential_1_lstm_1_while_cond_563854D
@sequential_1_lstm_1_while_sequential_1_lstm_1_while_loop_counterJ
Fsequential_1_lstm_1_while_sequential_1_lstm_1_while_maximum_iterations)
%sequential_1_lstm_1_while_placeholder+
'sequential_1_lstm_1_while_placeholder_1+
'sequential_1_lstm_1_while_placeholder_2+
'sequential_1_lstm_1_while_placeholder_3F
Bsequential_1_lstm_1_while_less_sequential_1_lstm_1_strided_slice_1\
Xsequential_1_lstm_1_while_sequential_1_lstm_1_while_cond_563854___redundant_placeholder0\
Xsequential_1_lstm_1_while_sequential_1_lstm_1_while_cond_563854___redundant_placeholder1\
Xsequential_1_lstm_1_while_sequential_1_lstm_1_while_cond_563854___redundant_placeholder2\
Xsequential_1_lstm_1_while_sequential_1_lstm_1_while_cond_563854___redundant_placeholder3&
"sequential_1_lstm_1_while_identity
�
sequential_1/lstm_1/while/LessLess%sequential_1_lstm_1_while_placeholderBsequential_1_lstm_1_while_less_sequential_1_lstm_1_strided_slice_1*
T0*
_output_shapes
: 2 
sequential_1/lstm_1/while/Less�
"sequential_1/lstm_1/while/IdentityIdentity"sequential_1/lstm_1/while/Less:z:0*
T0
*
_output_shapes
: 2$
"sequential_1/lstm_1/while/Identity"Q
"sequential_1_lstm_1_while_identity+sequential_1/lstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :����������:����������: ::::: 
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
:����������:.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�E
�
B__inference_lstm_1_layer_call_and_return_conditional_losses_564534

inputs&
lstm_cell_81_564452:	�'
lstm_cell_81_564454:
��"
lstm_cell_81_564456:	�
identity��$lstm_cell_81/StatefulPartitionedCall�whileD
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
strided_slice/stack_2�
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
B :�2
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
B :�2
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
B :�2
zeros/packed/1�
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
:����������2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2
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
B :�2
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
B :�2
zeros_1/packed/1�
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
:����������2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
$lstm_cell_81/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_81_564452lstm_cell_81_564454lstm_cell_81_564456*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_81_layer_call_and_return_conditional_losses_5643872&
$lstm_cell_81/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_81_564452lstm_cell_81_564454lstm_cell_81_564456*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_564465*
condR
while_cond_564464*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:�������������������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:�������������������2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime�
IdentityIdentitytranspose_1:y:0%^lstm_cell_81/StatefulPartitionedCall^while*
T0*5
_output_shapes#
!:�������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_81/StatefulPartitionedCall$lstm_cell_81/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�c
�
B__inference_lstm_1_layer_call_and_return_conditional_losses_568339

inputs>
+lstm_cell_81_matmul_readvariableop_resource:	�A
-lstm_cell_81_matmul_1_readvariableop_resource:
��;
,lstm_cell_81_biasadd_readvariableop_resource:	�
identity��#lstm_cell_81/BiasAdd/ReadVariableOp�"lstm_cell_81/MatMul/ReadVariableOp�$lstm_cell_81/MatMul_1/ReadVariableOp�whileD
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
strided_slice/stack_2�
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
B :�2
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
B :�2
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
B :�2
zeros/packed/1�
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
:����������2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2
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
B :�2
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
B :�2
zeros_1/packed/1�
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
:����������2	
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
:���������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_81/MatMul/ReadVariableOpReadVariableOp+lstm_cell_81_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"lstm_cell_81/MatMul/ReadVariableOp�
lstm_cell_81/MatMulMatMulstrided_slice_2:output:0*lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/MatMul�
$lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_81_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02&
$lstm_cell_81/MatMul_1/ReadVariableOp�
lstm_cell_81/MatMul_1MatMulzeros:output:0,lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/MatMul_1�
lstm_cell_81/addAddV2lstm_cell_81/MatMul:product:0lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/add�
#lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_81_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_81/BiasAdd/ReadVariableOp�
lstm_cell_81/BiasAddBiasAddlstm_cell_81/add:z:0+lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/BiasAdd~
lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_81/split/split_dim�
lstm_cell_81/splitSplit%lstm_cell_81/split/split_dim:output:0lstm_cell_81/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split2
lstm_cell_81/split�
lstm_cell_81/SigmoidSigmoidlstm_cell_81/split:output:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/Sigmoid�
lstm_cell_81/Sigmoid_1Sigmoidlstm_cell_81/split:output:1*
T0*(
_output_shapes
:����������2
lstm_cell_81/Sigmoid_1�
lstm_cell_81/mulMullstm_cell_81/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/mul�
lstm_cell_81/Sigmoid_2Sigmoidlstm_cell_81/split:output:2*
T0*(
_output_shapes
:����������2
lstm_cell_81/Sigmoid_2�
lstm_cell_81/mul_1Mullstm_cell_81/split:output:2lstm_cell_81/Sigmoid_2:y:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/mul_1�
lstm_cell_81/IdentityIdentitylstm_cell_81/mul_1:z:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/Identity�
lstm_cell_81/IdentityN	IdentityNlstm_cell_81/mul_1:z:0lstm_cell_81/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-568225*<
_output_shapes*
(:����������:����������2
lstm_cell_81/IdentityN�
lstm_cell_81/mul_2Mullstm_cell_81/Sigmoid:y:0lstm_cell_81/IdentityN:output:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/mul_2�
lstm_cell_81/add_1AddV2lstm_cell_81/mul:z:0lstm_cell_81/mul_2:z:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/add_1�
lstm_cell_81/Sigmoid_3Sigmoidlstm_cell_81/split:output:3*
T0*(
_output_shapes
:����������2
lstm_cell_81/Sigmoid_3�
lstm_cell_81/Sigmoid_4Sigmoidlstm_cell_81/add_1:z:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/Sigmoid_4�
lstm_cell_81/mul_3Mullstm_cell_81/add_1:z:0lstm_cell_81/Sigmoid_4:y:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/mul_3�
lstm_cell_81/Identity_1Identitylstm_cell_81/mul_3:z:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/Identity_1�
lstm_cell_81/IdentityN_1	IdentityNlstm_cell_81/mul_3:z:0lstm_cell_81/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-568234*<
_output_shapes*
(:����������:����������2
lstm_cell_81/IdentityN_1�
lstm_cell_81/mul_4Mullstm_cell_81/Sigmoid_3:y:0!lstm_cell_81/IdentityN_1:output:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/mul_4�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_81_matmul_readvariableop_resource-lstm_cell_81_matmul_1_readvariableop_resource,lstm_cell_81_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_568245*
condR
while_cond_568244*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime�
IdentityIdentitytranspose_1:y:0$^lstm_cell_81/BiasAdd/ReadVariableOp#^lstm_cell_81/MatMul/ReadVariableOp%^lstm_cell_81/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2J
#lstm_cell_81/BiasAdd/ReadVariableOp#lstm_cell_81/BiasAdd/ReadVariableOp2H
"lstm_cell_81/MatMul/ReadVariableOp"lstm_cell_81/MatMul/ReadVariableOp2L
$lstm_cell_81/MatMul_1/ReadVariableOp$lstm_cell_81/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�X
�

lstm_1_while_body_566952*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3)
%lstm_1_while_lstm_1_strided_slice_1_0e
alstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_1_while_lstm_cell_81_matmul_readvariableop_resource_0:	�P
<lstm_1_while_lstm_cell_81_matmul_1_readvariableop_resource_0:
��J
;lstm_1_while_lstm_cell_81_biasadd_readvariableop_resource_0:	�
lstm_1_while_identity
lstm_1_while_identity_1
lstm_1_while_identity_2
lstm_1_while_identity_3
lstm_1_while_identity_4
lstm_1_while_identity_5'
#lstm_1_while_lstm_1_strided_slice_1c
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensorK
8lstm_1_while_lstm_cell_81_matmul_readvariableop_resource:	�N
:lstm_1_while_lstm_cell_81_matmul_1_readvariableop_resource:
��H
9lstm_1_while_lstm_cell_81_biasadd_readvariableop_resource:	���0lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOp�/lstm_1/while/lstm_cell_81/MatMul/ReadVariableOp�1lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOp�
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2@
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape�
0lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0lstm_1_while_placeholderGlstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype022
0lstm_1/while/TensorArrayV2Read/TensorListGetItem�
/lstm_1/while/lstm_cell_81/MatMul/ReadVariableOpReadVariableOp:lstm_1_while_lstm_cell_81_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype021
/lstm_1/while/lstm_cell_81/MatMul/ReadVariableOp�
 lstm_1/while/lstm_cell_81/MatMulMatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_1/while/lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2"
 lstm_1/while/lstm_cell_81/MatMul�
1lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOp<lstm_1_while_lstm_cell_81_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype023
1lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOp�
"lstm_1/while/lstm_cell_81/MatMul_1MatMullstm_1_while_placeholder_29lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2$
"lstm_1/while/lstm_cell_81/MatMul_1�
lstm_1/while/lstm_cell_81/addAddV2*lstm_1/while/lstm_cell_81/MatMul:product:0,lstm_1/while/lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_1/while/lstm_cell_81/add�
0lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOp;lstm_1_while_lstm_cell_81_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype022
0lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOp�
!lstm_1/while/lstm_cell_81/BiasAddBiasAdd!lstm_1/while/lstm_cell_81/add:z:08lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2#
!lstm_1/while/lstm_cell_81/BiasAdd�
)lstm_1/while/lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2+
)lstm_1/while/lstm_cell_81/split/split_dim�
lstm_1/while/lstm_cell_81/splitSplit2lstm_1/while/lstm_cell_81/split/split_dim:output:0*lstm_1/while/lstm_cell_81/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split2!
lstm_1/while/lstm_cell_81/split�
!lstm_1/while/lstm_cell_81/SigmoidSigmoid(lstm_1/while/lstm_cell_81/split:output:0*
T0*(
_output_shapes
:����������2#
!lstm_1/while/lstm_cell_81/Sigmoid�
#lstm_1/while/lstm_cell_81/Sigmoid_1Sigmoid(lstm_1/while/lstm_cell_81/split:output:1*
T0*(
_output_shapes
:����������2%
#lstm_1/while/lstm_cell_81/Sigmoid_1�
lstm_1/while/lstm_cell_81/mulMul'lstm_1/while/lstm_cell_81/Sigmoid_1:y:0lstm_1_while_placeholder_3*
T0*(
_output_shapes
:����������2
lstm_1/while/lstm_cell_81/mul�
#lstm_1/while/lstm_cell_81/Sigmoid_2Sigmoid(lstm_1/while/lstm_cell_81/split:output:2*
T0*(
_output_shapes
:����������2%
#lstm_1/while/lstm_cell_81/Sigmoid_2�
lstm_1/while/lstm_cell_81/mul_1Mul(lstm_1/while/lstm_cell_81/split:output:2'lstm_1/while/lstm_cell_81/Sigmoid_2:y:0*
T0*(
_output_shapes
:����������2!
lstm_1/while/lstm_cell_81/mul_1�
"lstm_1/while/lstm_cell_81/IdentityIdentity#lstm_1/while/lstm_cell_81/mul_1:z:0*
T0*(
_output_shapes
:����������2$
"lstm_1/while/lstm_cell_81/Identity�
#lstm_1/while/lstm_cell_81/IdentityN	IdentityN#lstm_1/while/lstm_cell_81/mul_1:z:0(lstm_1/while/lstm_cell_81/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-566994*<
_output_shapes*
(:����������:����������2%
#lstm_1/while/lstm_cell_81/IdentityN�
lstm_1/while/lstm_cell_81/mul_2Mul%lstm_1/while/lstm_cell_81/Sigmoid:y:0,lstm_1/while/lstm_cell_81/IdentityN:output:0*
T0*(
_output_shapes
:����������2!
lstm_1/while/lstm_cell_81/mul_2�
lstm_1/while/lstm_cell_81/add_1AddV2!lstm_1/while/lstm_cell_81/mul:z:0#lstm_1/while/lstm_cell_81/mul_2:z:0*
T0*(
_output_shapes
:����������2!
lstm_1/while/lstm_cell_81/add_1�
#lstm_1/while/lstm_cell_81/Sigmoid_3Sigmoid(lstm_1/while/lstm_cell_81/split:output:3*
T0*(
_output_shapes
:����������2%
#lstm_1/while/lstm_cell_81/Sigmoid_3�
#lstm_1/while/lstm_cell_81/Sigmoid_4Sigmoid#lstm_1/while/lstm_cell_81/add_1:z:0*
T0*(
_output_shapes
:����������2%
#lstm_1/while/lstm_cell_81/Sigmoid_4�
lstm_1/while/lstm_cell_81/mul_3Mul#lstm_1/while/lstm_cell_81/add_1:z:0'lstm_1/while/lstm_cell_81/Sigmoid_4:y:0*
T0*(
_output_shapes
:����������2!
lstm_1/while/lstm_cell_81/mul_3�
$lstm_1/while/lstm_cell_81/Identity_1Identity#lstm_1/while/lstm_cell_81/mul_3:z:0*
T0*(
_output_shapes
:����������2&
$lstm_1/while/lstm_cell_81/Identity_1�
%lstm_1/while/lstm_cell_81/IdentityN_1	IdentityN#lstm_1/while/lstm_cell_81/mul_3:z:0#lstm_1/while/lstm_cell_81/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-567003*<
_output_shapes*
(:����������:����������2'
%lstm_1/while/lstm_cell_81/IdentityN_1�
lstm_1/while/lstm_cell_81/mul_4Mul'lstm_1/while/lstm_cell_81/Sigmoid_3:y:0.lstm_1/while/lstm_cell_81/IdentityN_1:output:0*
T0*(
_output_shapes
:����������2!
lstm_1/while/lstm_cell_81/mul_4�
1lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_1_while_placeholder_1lstm_1_while_placeholder#lstm_1/while/lstm_cell_81/mul_4:z:0*
_output_shapes
: *
element_dtype023
1lstm_1/while/TensorArrayV2Write/TensorListSetItemj
lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/while/add/y�
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
lstm_1/while/add_1/y�
lstm_1/while/add_1AddV2&lstm_1_while_lstm_1_while_loop_counterlstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_1/while/add_1�
lstm_1/while/IdentityIdentitylstm_1/while/add_1:z:01^lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_81/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity�
lstm_1/while/Identity_1Identity,lstm_1_while_lstm_1_while_maximum_iterations1^lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_81/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_1�
lstm_1/while/Identity_2Identitylstm_1/while/add:z:01^lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_81/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_2�
lstm_1/while/Identity_3IdentityAlstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:01^lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_81/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_3�
lstm_1/while/Identity_4Identity#lstm_1/while/lstm_cell_81/mul_4:z:01^lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_81/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:����������2
lstm_1/while/Identity_4�
lstm_1/while/Identity_5Identity#lstm_1/while/lstm_cell_81/add_1:z:01^lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_81/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:����������2
lstm_1/while/Identity_5"7
lstm_1_while_identitylstm_1/while/Identity:output:0";
lstm_1_while_identity_1 lstm_1/while/Identity_1:output:0";
lstm_1_while_identity_2 lstm_1/while/Identity_2:output:0";
lstm_1_while_identity_3 lstm_1/while/Identity_3:output:0";
lstm_1_while_identity_4 lstm_1/while/Identity_4:output:0";
lstm_1_while_identity_5 lstm_1/while/Identity_5:output:0"L
#lstm_1_while_lstm_1_strided_slice_1%lstm_1_while_lstm_1_strided_slice_1_0"x
9lstm_1_while_lstm_cell_81_biasadd_readvariableop_resource;lstm_1_while_lstm_cell_81_biasadd_readvariableop_resource_0"z
:lstm_1_while_lstm_cell_81_matmul_1_readvariableop_resource<lstm_1_while_lstm_cell_81_matmul_1_readvariableop_resource_0"v
8lstm_1_while_lstm_cell_81_matmul_readvariableop_resource:lstm_1_while_lstm_cell_81_matmul_readvariableop_resource_0"�
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensoralstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2d
0lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOp0lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOp2b
/lstm_1/while/lstm_cell_81/MatMul/ReadVariableOp/lstm_1/while/lstm_cell_81/MatMul/ReadVariableOp2f
1lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOp1lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOp: 
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
:����������:.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_567902
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_567902___redundant_placeholder04
0while_while_cond_567902___redundant_placeholder14
0while_while_cond_567902___redundant_placeholder24
0while_while_cond_567902___redundant_placeholder3
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
B: : : : :����������:����������: ::::: 
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
:����������:.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�

�
lstm_1_while_cond_566951*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3,
(lstm_1_while_less_lstm_1_strided_slice_1B
>lstm_1_while_lstm_1_while_cond_566951___redundant_placeholder0B
>lstm_1_while_lstm_1_while_cond_566951___redundant_placeholder1B
>lstm_1_while_lstm_1_while_cond_566951___redundant_placeholder2B
>lstm_1_while_lstm_1_while_cond_566951___redundant_placeholder3
lstm_1_while_identity
�
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
B: : : : :����������:����������: ::::: 
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
:����������:.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
�
1__inference_time_distributed_layer_call_fn_569094

inputs
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_5661122
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
-__inference_lstm_cell_81_layer_call_fn_569337

inputs
states_0
states_1
unknown:	�
	unknown_0:
��
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_81_layer_call_and_return_conditional_losses_5643872
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity_1�

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:���������:����������:����������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:RN
(
_output_shapes
:����������
"
_user_specified_name
states/0:RN
(
_output_shapes
:����������
"
_user_specified_name
states/1
�E
�
B__inference_lstm_1_layer_call_and_return_conditional_losses_564314

inputs&
lstm_cell_81_564232:	�'
lstm_cell_81_564234:
��"
lstm_cell_81_564236:	�
identity��$lstm_cell_81/StatefulPartitionedCall�whileD
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
strided_slice/stack_2�
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
B :�2
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
B :�2
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
B :�2
zeros/packed/1�
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
:����������2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2
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
B :�2
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
B :�2
zeros_1/packed/1�
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
:����������2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
$lstm_cell_81/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_81_564232lstm_cell_81_564234lstm_cell_81_564236*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_81_layer_call_and_return_conditional_losses_5642312&
$lstm_cell_81/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_81_564232lstm_cell_81_564234lstm_cell_81_564236*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_564245*
condR
while_cond_564244*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:�������������������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:�������������������2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime�
IdentityIdentitytranspose_1:y:0%^lstm_cell_81/StatefulPartitionedCall^while*
T0*5
_output_shapes#
!:�������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_81/StatefulPartitionedCall$lstm_cell_81/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
L__inference_time_distributed_layer_call_and_return_conditional_losses_569130

inputs8
&dense_2_matmul_readvariableop_resource:@@5
'dense_2_biasadd_readvariableop_resource:@
identity��dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOpD
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
strided_slice/stack_2�
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
valueB"����@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:���������@2	
Reshape�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_2/MatMul/ReadVariableOp�
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_2/MatMul�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_2/BiasAdd/ReadVariableOp�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_2/BiasAddy
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_2/Sigmoid�
dense_2/mulMuldense_2/BiasAdd:output:0dense_2/Sigmoid:y:0*
T0*'
_output_shapes
:���������@2
dense_2/muls
dense_2/IdentityIdentitydense_2/mul:z:0*
T0*'
_output_shapes
:���������@2
dense_2/Identity�
dense_2/IdentityN	IdentityNdense_2/mul:z:0dense_2/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-569119*:
_output_shapes(
&:���������@:���������@2
dense_2/IdentityNq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
���������2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2
Reshape_1/shape/2�
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape�
	Reshape_1Reshapedense_2/IdentityN:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :������������������@2
	Reshape_1�
IdentityIdentityReshape_1:output:0^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :������������������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:������������������@: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������@
 
_user_specified_nameinputs
�c
�
B__inference_lstm_1_layer_call_and_return_conditional_losses_566612

inputs>
+lstm_cell_81_matmul_readvariableop_resource:	�A
-lstm_cell_81_matmul_1_readvariableop_resource:
��;
,lstm_cell_81_biasadd_readvariableop_resource:	�
identity��#lstm_cell_81/BiasAdd/ReadVariableOp�"lstm_cell_81/MatMul/ReadVariableOp�$lstm_cell_81/MatMul_1/ReadVariableOp�whileD
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
strided_slice/stack_2�
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
B :�2
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
B :�2
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
B :�2
zeros/packed/1�
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
:����������2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2
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
B :�2
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
B :�2
zeros_1/packed/1�
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
:����������2	
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
:���������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_81/MatMul/ReadVariableOpReadVariableOp+lstm_cell_81_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"lstm_cell_81/MatMul/ReadVariableOp�
lstm_cell_81/MatMulMatMulstrided_slice_2:output:0*lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/MatMul�
$lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_81_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02&
$lstm_cell_81/MatMul_1/ReadVariableOp�
lstm_cell_81/MatMul_1MatMulzeros:output:0,lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/MatMul_1�
lstm_cell_81/addAddV2lstm_cell_81/MatMul:product:0lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/add�
#lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_81_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_81/BiasAdd/ReadVariableOp�
lstm_cell_81/BiasAddBiasAddlstm_cell_81/add:z:0+lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/BiasAdd~
lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_81/split/split_dim�
lstm_cell_81/splitSplit%lstm_cell_81/split/split_dim:output:0lstm_cell_81/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split2
lstm_cell_81/split�
lstm_cell_81/SigmoidSigmoidlstm_cell_81/split:output:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/Sigmoid�
lstm_cell_81/Sigmoid_1Sigmoidlstm_cell_81/split:output:1*
T0*(
_output_shapes
:����������2
lstm_cell_81/Sigmoid_1�
lstm_cell_81/mulMullstm_cell_81/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/mul�
lstm_cell_81/Sigmoid_2Sigmoidlstm_cell_81/split:output:2*
T0*(
_output_shapes
:����������2
lstm_cell_81/Sigmoid_2�
lstm_cell_81/mul_1Mullstm_cell_81/split:output:2lstm_cell_81/Sigmoid_2:y:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/mul_1�
lstm_cell_81/IdentityIdentitylstm_cell_81/mul_1:z:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/Identity�
lstm_cell_81/IdentityN	IdentityNlstm_cell_81/mul_1:z:0lstm_cell_81/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-566498*<
_output_shapes*
(:����������:����������2
lstm_cell_81/IdentityN�
lstm_cell_81/mul_2Mullstm_cell_81/Sigmoid:y:0lstm_cell_81/IdentityN:output:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/mul_2�
lstm_cell_81/add_1AddV2lstm_cell_81/mul:z:0lstm_cell_81/mul_2:z:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/add_1�
lstm_cell_81/Sigmoid_3Sigmoidlstm_cell_81/split:output:3*
T0*(
_output_shapes
:����������2
lstm_cell_81/Sigmoid_3�
lstm_cell_81/Sigmoid_4Sigmoidlstm_cell_81/add_1:z:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/Sigmoid_4�
lstm_cell_81/mul_3Mullstm_cell_81/add_1:z:0lstm_cell_81/Sigmoid_4:y:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/mul_3�
lstm_cell_81/Identity_1Identitylstm_cell_81/mul_3:z:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/Identity_1�
lstm_cell_81/IdentityN_1	IdentityNlstm_cell_81/mul_3:z:0lstm_cell_81/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-566507*<
_output_shapes*
(:����������:����������2
lstm_cell_81/IdentityN_1�
lstm_cell_81/mul_4Mullstm_cell_81/Sigmoid_3:y:0!lstm_cell_81/IdentityN_1:output:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/mul_4�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_81_matmul_readvariableop_resource-lstm_cell_81_matmul_1_readvariableop_resource,lstm_cell_81_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_566518*
condR
while_cond_566517*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime�
IdentityIdentitytranspose_1:y:0$^lstm_cell_81/BiasAdd/ReadVariableOp#^lstm_cell_81/MatMul/ReadVariableOp%^lstm_cell_81/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2J
#lstm_cell_81/BiasAdd/ReadVariableOp#lstm_cell_81/BiasAdd/ReadVariableOp2H
"lstm_cell_81/MatMul/ReadVariableOp"lstm_cell_81/MatMul/ReadVariableOp2L
$lstm_cell_81/MatMul_1/ReadVariableOp$lstm_cell_81/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
%sequential_1_lstm_2_while_cond_564021D
@sequential_1_lstm_2_while_sequential_1_lstm_2_while_loop_counterJ
Fsequential_1_lstm_2_while_sequential_1_lstm_2_while_maximum_iterations)
%sequential_1_lstm_2_while_placeholder+
'sequential_1_lstm_2_while_placeholder_1+
'sequential_1_lstm_2_while_placeholder_2+
'sequential_1_lstm_2_while_placeholder_3F
Bsequential_1_lstm_2_while_less_sequential_1_lstm_2_strided_slice_1\
Xsequential_1_lstm_2_while_sequential_1_lstm_2_while_cond_564021___redundant_placeholder0\
Xsequential_1_lstm_2_while_sequential_1_lstm_2_while_cond_564021___redundant_placeholder1\
Xsequential_1_lstm_2_while_sequential_1_lstm_2_while_cond_564021___redundant_placeholder2\
Xsequential_1_lstm_2_while_sequential_1_lstm_2_while_cond_564021___redundant_placeholder3&
"sequential_1_lstm_2_while_identity
�
sequential_1/lstm_2/while/LessLess%sequential_1_lstm_2_while_placeholderBsequential_1_lstm_2_while_less_sequential_1_lstm_2_strided_slice_1*
T0*
_output_shapes
: 2 
sequential_1/lstm_2/while/Less�
"sequential_1/lstm_2/while/IdentityIdentity"sequential_1/lstm_2/while/Less:z:0*
T0
*
_output_shapes
: 2$
"sequential_1/lstm_2/while/Identity"Q
"sequential_1_lstm_2_while_identity+sequential_1/lstm_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������@:���������@: ::::: 
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
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�
�
-__inference_lstm_cell_81_layer_call_fn_569320

inputs
states_0
states_1
unknown:	�
	unknown_0:
��
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_81_layer_call_and_return_conditional_losses_5642312
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity_1�

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:���������:����������:����������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:RN
(
_output_shapes
:����������
"
_user_specified_name
states/0:RN
(
_output_shapes
:����������
"
_user_specified_name
states/1
�
�
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_569303

inputs8
&dense_3_matmul_readvariableop_resource:@5
'dense_3_biasadd_readvariableop_resource:
identity��dense_3/BiasAdd/ReadVariableOp�dense_3/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:���������@2	
Reshape�
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_3/MatMul/ReadVariableOp�
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_3/MatMul�
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp�
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_3/BiasAddw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����      2
Reshape_1/shape�
	Reshape_1Reshapedense_3/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:���������2
	Reshape_1�
IdentityIdentityReshape_1:output:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�m
�
%sequential_1_lstm_2_while_body_564022D
@sequential_1_lstm_2_while_sequential_1_lstm_2_while_loop_counterJ
Fsequential_1_lstm_2_while_sequential_1_lstm_2_while_maximum_iterations)
%sequential_1_lstm_2_while_placeholder+
'sequential_1_lstm_2_while_placeholder_1+
'sequential_1_lstm_2_while_placeholder_2+
'sequential_1_lstm_2_while_placeholder_3C
?sequential_1_lstm_2_while_sequential_1_lstm_2_strided_slice_1_0
{sequential_1_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_2_tensorarrayunstack_tensorlistfromtensor_0[
Gsequential_1_lstm_2_while_lstm_cell_82_matmul_readvariableop_resource_0:
��\
Isequential_1_lstm_2_while_lstm_cell_82_matmul_1_readvariableop_resource_0:	@�W
Hsequential_1_lstm_2_while_lstm_cell_82_biasadd_readvariableop_resource_0:	�&
"sequential_1_lstm_2_while_identity(
$sequential_1_lstm_2_while_identity_1(
$sequential_1_lstm_2_while_identity_2(
$sequential_1_lstm_2_while_identity_3(
$sequential_1_lstm_2_while_identity_4(
$sequential_1_lstm_2_while_identity_5A
=sequential_1_lstm_2_while_sequential_1_lstm_2_strided_slice_1}
ysequential_1_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_2_tensorarrayunstack_tensorlistfromtensorY
Esequential_1_lstm_2_while_lstm_cell_82_matmul_readvariableop_resource:
��Z
Gsequential_1_lstm_2_while_lstm_cell_82_matmul_1_readvariableop_resource:	@�U
Fsequential_1_lstm_2_while_lstm_cell_82_biasadd_readvariableop_resource:	���=sequential_1/lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOp�<sequential_1/lstm_2/while/lstm_cell_82/MatMul/ReadVariableOp�>sequential_1/lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOp�
Ksequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   2M
Ksequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape�
=sequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_1_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_2_tensorarrayunstack_tensorlistfromtensor_0%sequential_1_lstm_2_while_placeholderTsequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:����������*
element_dtype02?
=sequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem�
<sequential_1/lstm_2/while/lstm_cell_82/MatMul/ReadVariableOpReadVariableOpGsequential_1_lstm_2_while_lstm_cell_82_matmul_readvariableop_resource_0* 
_output_shapes
:
��*
dtype02>
<sequential_1/lstm_2/while/lstm_cell_82/MatMul/ReadVariableOp�
-sequential_1/lstm_2/while/lstm_cell_82/MatMulMatMulDsequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:0Dsequential_1/lstm_2/while/lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2/
-sequential_1/lstm_2/while/lstm_cell_82/MatMul�
>sequential_1/lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOpIsequential_1_lstm_2_while_lstm_cell_82_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype02@
>sequential_1/lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOp�
/sequential_1/lstm_2/while/lstm_cell_82/MatMul_1MatMul'sequential_1_lstm_2_while_placeholder_2Fsequential_1/lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������21
/sequential_1/lstm_2/while/lstm_cell_82/MatMul_1�
*sequential_1/lstm_2/while/lstm_cell_82/addAddV27sequential_1/lstm_2/while/lstm_cell_82/MatMul:product:09sequential_1/lstm_2/while/lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:����������2,
*sequential_1/lstm_2/while/lstm_cell_82/add�
=sequential_1/lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOpHsequential_1_lstm_2_while_lstm_cell_82_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02?
=sequential_1/lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOp�
.sequential_1/lstm_2/while/lstm_cell_82/BiasAddBiasAdd.sequential_1/lstm_2/while/lstm_cell_82/add:z:0Esequential_1/lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������20
.sequential_1/lstm_2/while/lstm_cell_82/BiasAdd�
6sequential_1/lstm_2/while/lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :28
6sequential_1/lstm_2/while/lstm_cell_82/split/split_dim�
,sequential_1/lstm_2/while/lstm_cell_82/splitSplit?sequential_1/lstm_2/while/lstm_cell_82/split/split_dim:output:07sequential_1/lstm_2/while/lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2.
,sequential_1/lstm_2/while/lstm_cell_82/split�
.sequential_1/lstm_2/while/lstm_cell_82/SigmoidSigmoid5sequential_1/lstm_2/while/lstm_cell_82/split:output:0*
T0*'
_output_shapes
:���������@20
.sequential_1/lstm_2/while/lstm_cell_82/Sigmoid�
0sequential_1/lstm_2/while/lstm_cell_82/Sigmoid_1Sigmoid5sequential_1/lstm_2/while/lstm_cell_82/split:output:1*
T0*'
_output_shapes
:���������@22
0sequential_1/lstm_2/while/lstm_cell_82/Sigmoid_1�
*sequential_1/lstm_2/while/lstm_cell_82/mulMul4sequential_1/lstm_2/while/lstm_cell_82/Sigmoid_1:y:0'sequential_1_lstm_2_while_placeholder_3*
T0*'
_output_shapes
:���������@2,
*sequential_1/lstm_2/while/lstm_cell_82/mul�
0sequential_1/lstm_2/while/lstm_cell_82/Sigmoid_2Sigmoid5sequential_1/lstm_2/while/lstm_cell_82/split:output:2*
T0*'
_output_shapes
:���������@22
0sequential_1/lstm_2/while/lstm_cell_82/Sigmoid_2�
,sequential_1/lstm_2/while/lstm_cell_82/mul_1Mul5sequential_1/lstm_2/while/lstm_cell_82/split:output:24sequential_1/lstm_2/while/lstm_cell_82/Sigmoid_2:y:0*
T0*'
_output_shapes
:���������@2.
,sequential_1/lstm_2/while/lstm_cell_82/mul_1�
/sequential_1/lstm_2/while/lstm_cell_82/IdentityIdentity0sequential_1/lstm_2/while/lstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:���������@21
/sequential_1/lstm_2/while/lstm_cell_82/Identity�
0sequential_1/lstm_2/while/lstm_cell_82/IdentityN	IdentityN0sequential_1/lstm_2/while/lstm_cell_82/mul_1:z:05sequential_1/lstm_2/while/lstm_cell_82/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-564064*:
_output_shapes(
&:���������@:���������@22
0sequential_1/lstm_2/while/lstm_cell_82/IdentityN�
,sequential_1/lstm_2/while/lstm_cell_82/mul_2Mul2sequential_1/lstm_2/while/lstm_cell_82/Sigmoid:y:09sequential_1/lstm_2/while/lstm_cell_82/IdentityN:output:0*
T0*'
_output_shapes
:���������@2.
,sequential_1/lstm_2/while/lstm_cell_82/mul_2�
,sequential_1/lstm_2/while/lstm_cell_82/add_1AddV2.sequential_1/lstm_2/while/lstm_cell_82/mul:z:00sequential_1/lstm_2/while/lstm_cell_82/mul_2:z:0*
T0*'
_output_shapes
:���������@2.
,sequential_1/lstm_2/while/lstm_cell_82/add_1�
0sequential_1/lstm_2/while/lstm_cell_82/Sigmoid_3Sigmoid5sequential_1/lstm_2/while/lstm_cell_82/split:output:3*
T0*'
_output_shapes
:���������@22
0sequential_1/lstm_2/while/lstm_cell_82/Sigmoid_3�
0sequential_1/lstm_2/while/lstm_cell_82/Sigmoid_4Sigmoid0sequential_1/lstm_2/while/lstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:���������@22
0sequential_1/lstm_2/while/lstm_cell_82/Sigmoid_4�
,sequential_1/lstm_2/while/lstm_cell_82/mul_3Mul0sequential_1/lstm_2/while/lstm_cell_82/add_1:z:04sequential_1/lstm_2/while/lstm_cell_82/Sigmoid_4:y:0*
T0*'
_output_shapes
:���������@2.
,sequential_1/lstm_2/while/lstm_cell_82/mul_3�
1sequential_1/lstm_2/while/lstm_cell_82/Identity_1Identity0sequential_1/lstm_2/while/lstm_cell_82/mul_3:z:0*
T0*'
_output_shapes
:���������@23
1sequential_1/lstm_2/while/lstm_cell_82/Identity_1�
2sequential_1/lstm_2/while/lstm_cell_82/IdentityN_1	IdentityN0sequential_1/lstm_2/while/lstm_cell_82/mul_3:z:00sequential_1/lstm_2/while/lstm_cell_82/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-564073*:
_output_shapes(
&:���������@:���������@24
2sequential_1/lstm_2/while/lstm_cell_82/IdentityN_1�
,sequential_1/lstm_2/while/lstm_cell_82/mul_4Mul4sequential_1/lstm_2/while/lstm_cell_82/Sigmoid_3:y:0;sequential_1/lstm_2/while/lstm_cell_82/IdentityN_1:output:0*
T0*'
_output_shapes
:���������@2.
,sequential_1/lstm_2/while/lstm_cell_82/mul_4�
>sequential_1/lstm_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_1_lstm_2_while_placeholder_1%sequential_1_lstm_2_while_placeholder0sequential_1/lstm_2/while/lstm_cell_82/mul_4:z:0*
_output_shapes
: *
element_dtype02@
>sequential_1/lstm_2/while/TensorArrayV2Write/TensorListSetItem�
sequential_1/lstm_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_1/lstm_2/while/add/y�
sequential_1/lstm_2/while/addAddV2%sequential_1_lstm_2_while_placeholder(sequential_1/lstm_2/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_1/lstm_2/while/add�
!sequential_1/lstm_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_1/lstm_2/while/add_1/y�
sequential_1/lstm_2/while/add_1AddV2@sequential_1_lstm_2_while_sequential_1_lstm_2_while_loop_counter*sequential_1/lstm_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
sequential_1/lstm_2/while/add_1�
"sequential_1/lstm_2/while/IdentityIdentity#sequential_1/lstm_2/while/add_1:z:0>^sequential_1/lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOp=^sequential_1/lstm_2/while/lstm_cell_82/MatMul/ReadVariableOp?^sequential_1/lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2$
"sequential_1/lstm_2/while/Identity�
$sequential_1/lstm_2/while/Identity_1IdentityFsequential_1_lstm_2_while_sequential_1_lstm_2_while_maximum_iterations>^sequential_1/lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOp=^sequential_1/lstm_2/while/lstm_cell_82/MatMul/ReadVariableOp?^sequential_1/lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_2/while/Identity_1�
$sequential_1/lstm_2/while/Identity_2Identity!sequential_1/lstm_2/while/add:z:0>^sequential_1/lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOp=^sequential_1/lstm_2/while/lstm_cell_82/MatMul/ReadVariableOp?^sequential_1/lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_2/while/Identity_2�
$sequential_1/lstm_2/while/Identity_3IdentityNsequential_1/lstm_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^sequential_1/lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOp=^sequential_1/lstm_2/while/lstm_cell_82/MatMul/ReadVariableOp?^sequential_1/lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_2/while/Identity_3�
$sequential_1/lstm_2/while/Identity_4Identity0sequential_1/lstm_2/while/lstm_cell_82/mul_4:z:0>^sequential_1/lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOp=^sequential_1/lstm_2/while/lstm_cell_82/MatMul/ReadVariableOp?^sequential_1/lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2&
$sequential_1/lstm_2/while/Identity_4�
$sequential_1/lstm_2/while/Identity_5Identity0sequential_1/lstm_2/while/lstm_cell_82/add_1:z:0>^sequential_1/lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOp=^sequential_1/lstm_2/while/lstm_cell_82/MatMul/ReadVariableOp?^sequential_1/lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2&
$sequential_1/lstm_2/while/Identity_5"Q
"sequential_1_lstm_2_while_identity+sequential_1/lstm_2/while/Identity:output:0"U
$sequential_1_lstm_2_while_identity_1-sequential_1/lstm_2/while/Identity_1:output:0"U
$sequential_1_lstm_2_while_identity_2-sequential_1/lstm_2/while/Identity_2:output:0"U
$sequential_1_lstm_2_while_identity_3-sequential_1/lstm_2/while/Identity_3:output:0"U
$sequential_1_lstm_2_while_identity_4-sequential_1/lstm_2/while/Identity_4:output:0"U
$sequential_1_lstm_2_while_identity_5-sequential_1/lstm_2/while/Identity_5:output:0"�
Fsequential_1_lstm_2_while_lstm_cell_82_biasadd_readvariableop_resourceHsequential_1_lstm_2_while_lstm_cell_82_biasadd_readvariableop_resource_0"�
Gsequential_1_lstm_2_while_lstm_cell_82_matmul_1_readvariableop_resourceIsequential_1_lstm_2_while_lstm_cell_82_matmul_1_readvariableop_resource_0"�
Esequential_1_lstm_2_while_lstm_cell_82_matmul_readvariableop_resourceGsequential_1_lstm_2_while_lstm_cell_82_matmul_readvariableop_resource_0"�
=sequential_1_lstm_2_while_sequential_1_lstm_2_strided_slice_1?sequential_1_lstm_2_while_sequential_1_lstm_2_strided_slice_1_0"�
ysequential_1_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_2_tensorarrayunstack_tensorlistfromtensor{sequential_1_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2~
=sequential_1/lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOp=sequential_1/lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOp2|
<sequential_1/lstm_2/while/lstm_cell_82/MatMul/ReadVariableOp<sequential_1/lstm_2/while/lstm_cell_82/MatMul/ReadVariableOp2�
>sequential_1/lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOp>sequential_1/lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOp: 
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
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�
�
1__inference_time_distributed_layer_call_fn_569085

inputs
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_5655352
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :������������������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:������������������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������@
 
_user_specified_nameinputs
�c
�
B__inference_lstm_1_layer_call_and_return_conditional_losses_565907

inputs>
+lstm_cell_81_matmul_readvariableop_resource:	�A
-lstm_cell_81_matmul_1_readvariableop_resource:
��;
,lstm_cell_81_biasadd_readvariableop_resource:	�
identity��#lstm_cell_81/BiasAdd/ReadVariableOp�"lstm_cell_81/MatMul/ReadVariableOp�$lstm_cell_81/MatMul_1/ReadVariableOp�whileD
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
strided_slice/stack_2�
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
B :�2
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
B :�2
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
B :�2
zeros/packed/1�
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
:����������2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2
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
B :�2
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
B :�2
zeros_1/packed/1�
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
:����������2	
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
:���������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_81/MatMul/ReadVariableOpReadVariableOp+lstm_cell_81_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"lstm_cell_81/MatMul/ReadVariableOp�
lstm_cell_81/MatMulMatMulstrided_slice_2:output:0*lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/MatMul�
$lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_81_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02&
$lstm_cell_81/MatMul_1/ReadVariableOp�
lstm_cell_81/MatMul_1MatMulzeros:output:0,lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/MatMul_1�
lstm_cell_81/addAddV2lstm_cell_81/MatMul:product:0lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/add�
#lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_81_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_81/BiasAdd/ReadVariableOp�
lstm_cell_81/BiasAddBiasAddlstm_cell_81/add:z:0+lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/BiasAdd~
lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_81/split/split_dim�
lstm_cell_81/splitSplit%lstm_cell_81/split/split_dim:output:0lstm_cell_81/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split2
lstm_cell_81/split�
lstm_cell_81/SigmoidSigmoidlstm_cell_81/split:output:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/Sigmoid�
lstm_cell_81/Sigmoid_1Sigmoidlstm_cell_81/split:output:1*
T0*(
_output_shapes
:����������2
lstm_cell_81/Sigmoid_1�
lstm_cell_81/mulMullstm_cell_81/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/mul�
lstm_cell_81/Sigmoid_2Sigmoidlstm_cell_81/split:output:2*
T0*(
_output_shapes
:����������2
lstm_cell_81/Sigmoid_2�
lstm_cell_81/mul_1Mullstm_cell_81/split:output:2lstm_cell_81/Sigmoid_2:y:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/mul_1�
lstm_cell_81/IdentityIdentitylstm_cell_81/mul_1:z:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/Identity�
lstm_cell_81/IdentityN	IdentityNlstm_cell_81/mul_1:z:0lstm_cell_81/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-565793*<
_output_shapes*
(:����������:����������2
lstm_cell_81/IdentityN�
lstm_cell_81/mul_2Mullstm_cell_81/Sigmoid:y:0lstm_cell_81/IdentityN:output:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/mul_2�
lstm_cell_81/add_1AddV2lstm_cell_81/mul:z:0lstm_cell_81/mul_2:z:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/add_1�
lstm_cell_81/Sigmoid_3Sigmoidlstm_cell_81/split:output:3*
T0*(
_output_shapes
:����������2
lstm_cell_81/Sigmoid_3�
lstm_cell_81/Sigmoid_4Sigmoidlstm_cell_81/add_1:z:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/Sigmoid_4�
lstm_cell_81/mul_3Mullstm_cell_81/add_1:z:0lstm_cell_81/Sigmoid_4:y:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/mul_3�
lstm_cell_81/Identity_1Identitylstm_cell_81/mul_3:z:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/Identity_1�
lstm_cell_81/IdentityN_1	IdentityNlstm_cell_81/mul_3:z:0lstm_cell_81/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-565802*<
_output_shapes*
(:����������:����������2
lstm_cell_81/IdentityN_1�
lstm_cell_81/mul_4Mullstm_cell_81/Sigmoid_3:y:0!lstm_cell_81/IdentityN_1:output:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/mul_4�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_81_matmul_readvariableop_resource-lstm_cell_81_matmul_1_readvariableop_resource,lstm_cell_81_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_565813*
condR
while_cond_565812*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime�
IdentityIdentitytranspose_1:y:0$^lstm_cell_81/BiasAdd/ReadVariableOp#^lstm_cell_81/MatMul/ReadVariableOp%^lstm_cell_81/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2J
#lstm_cell_81/BiasAdd/ReadVariableOp#lstm_cell_81/BiasAdd/ReadVariableOp2H
"lstm_cell_81/MatMul/ReadVariableOp"lstm_cell_81/MatMul/ReadVariableOp2L
$lstm_cell_81/MatMul_1/ReadVariableOp$lstm_cell_81/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
lstm_2_while_cond_567486*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3,
(lstm_2_while_less_lstm_2_strided_slice_1B
>lstm_2_while_lstm_2_while_cond_567486___redundant_placeholder0B
>lstm_2_while_lstm_2_while_cond_567486___redundant_placeholder1B
>lstm_2_while_lstm_2_while_cond_567486___redundant_placeholder2B
>lstm_2_while_lstm_2_while_cond_567486___redundant_placeholder3
lstm_2_while_identity
�
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
@: : : : :���������@:���������@: ::::: 
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
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
��
�

H__inference_sequential_1_layer_call_and_return_conditional_losses_567611

inputsE
2lstm_1_lstm_cell_81_matmul_readvariableop_resource:	�H
4lstm_1_lstm_cell_81_matmul_1_readvariableop_resource:
��B
3lstm_1_lstm_cell_81_biasadd_readvariableop_resource:	�F
2lstm_2_lstm_cell_82_matmul_readvariableop_resource:
��G
4lstm_2_lstm_cell_82_matmul_1_readvariableop_resource:	@�B
3lstm_2_lstm_cell_82_biasadd_readvariableop_resource:	�I
7time_distributed_dense_2_matmul_readvariableop_resource:@@F
8time_distributed_dense_2_biasadd_readvariableop_resource:@K
9time_distributed_1_dense_3_matmul_readvariableop_resource:@H
:time_distributed_1_dense_3_biasadd_readvariableop_resource:
identity��*lstm_1/lstm_cell_81/BiasAdd/ReadVariableOp�)lstm_1/lstm_cell_81/MatMul/ReadVariableOp�+lstm_1/lstm_cell_81/MatMul_1/ReadVariableOp�lstm_1/while�*lstm_2/lstm_cell_82/BiasAdd/ReadVariableOp�)lstm_2/lstm_cell_82/MatMul/ReadVariableOp�+lstm_2/lstm_cell_82/MatMul_1/ReadVariableOp�lstm_2/while�/time_distributed/dense_2/BiasAdd/ReadVariableOp�.time_distributed/dense_2/MatMul/ReadVariableOp�1time_distributed_1/dense_3/BiasAdd/ReadVariableOp�0time_distributed_1/dense_3/MatMul/ReadVariableOpR
lstm_1/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_1/Shape�
lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice/stack�
lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_1/strided_slice/stack_1�
lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_1/strided_slice/stack_2�
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
B :�2
lstm_1/zeros/mul/y�
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
B :�2
lstm_1/zeros/Less/y�
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
B :�2
lstm_1/zeros/packed/1�
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
lstm_1/zeros/Const�
lstm_1/zerosFilllstm_1/zeros/packed:output:0lstm_1/zeros/Const:output:0*
T0*(
_output_shapes
:����������2
lstm_1/zeroso
lstm_1/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_1/zeros_1/mul/y�
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
B :�2
lstm_1/zeros_1/Less/y�
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
B :�2
lstm_1/zeros_1/packed/1�
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
lstm_1/zeros_1/Const�
lstm_1/zeros_1Filllstm_1/zeros_1/packed:output:0lstm_1/zeros_1/Const:output:0*
T0*(
_output_shapes
:����������2
lstm_1/zeros_1�
lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_1/transpose/perm�
lstm_1/transpose	Transposeinputslstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:���������2
lstm_1/transposed
lstm_1/Shape_1Shapelstm_1/transpose:y:0*
T0*
_output_shapes
:2
lstm_1/Shape_1�
lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice_1/stack�
lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_1/stack_1�
lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_1/stack_2�
lstm_1/strided_slice_1StridedSlicelstm_1/Shape_1:output:0%lstm_1/strided_slice_1/stack:output:0'lstm_1/strided_slice_1/stack_1:output:0'lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_1/strided_slice_1�
"lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2$
"lstm_1/TensorArrayV2/element_shape�
lstm_1/TensorArrayV2TensorListReserve+lstm_1/TensorArrayV2/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_1/TensorArrayV2�
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2>
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape�
.lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_1/transpose:y:0Elstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_1/TensorArrayUnstack/TensorListFromTensor�
lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice_2/stack�
lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_2/stack_1�
lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_2/stack_2�
lstm_1/strided_slice_2StridedSlicelstm_1/transpose:y:0%lstm_1/strided_slice_2/stack:output:0'lstm_1/strided_slice_2/stack_1:output:0'lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
lstm_1/strided_slice_2�
)lstm_1/lstm_cell_81/MatMul/ReadVariableOpReadVariableOp2lstm_1_lstm_cell_81_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02+
)lstm_1/lstm_cell_81/MatMul/ReadVariableOp�
lstm_1/lstm_cell_81/MatMulMatMullstm_1/strided_slice_2:output:01lstm_1/lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_1/lstm_cell_81/MatMul�
+lstm_1/lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOp4lstm_1_lstm_cell_81_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02-
+lstm_1/lstm_cell_81/MatMul_1/ReadVariableOp�
lstm_1/lstm_cell_81/MatMul_1MatMullstm_1/zeros:output:03lstm_1/lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_1/lstm_cell_81/MatMul_1�
lstm_1/lstm_cell_81/addAddV2$lstm_1/lstm_cell_81/MatMul:product:0&lstm_1/lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_1/lstm_cell_81/add�
*lstm_1/lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOp3lstm_1_lstm_cell_81_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02,
*lstm_1/lstm_cell_81/BiasAdd/ReadVariableOp�
lstm_1/lstm_cell_81/BiasAddBiasAddlstm_1/lstm_cell_81/add:z:02lstm_1/lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_1/lstm_cell_81/BiasAdd�
#lstm_1/lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#lstm_1/lstm_cell_81/split/split_dim�
lstm_1/lstm_cell_81/splitSplit,lstm_1/lstm_cell_81/split/split_dim:output:0$lstm_1/lstm_cell_81/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split2
lstm_1/lstm_cell_81/split�
lstm_1/lstm_cell_81/SigmoidSigmoid"lstm_1/lstm_cell_81/split:output:0*
T0*(
_output_shapes
:����������2
lstm_1/lstm_cell_81/Sigmoid�
lstm_1/lstm_cell_81/Sigmoid_1Sigmoid"lstm_1/lstm_cell_81/split:output:1*
T0*(
_output_shapes
:����������2
lstm_1/lstm_cell_81/Sigmoid_1�
lstm_1/lstm_cell_81/mulMul!lstm_1/lstm_cell_81/Sigmoid_1:y:0lstm_1/zeros_1:output:0*
T0*(
_output_shapes
:����������2
lstm_1/lstm_cell_81/mul�
lstm_1/lstm_cell_81/Sigmoid_2Sigmoid"lstm_1/lstm_cell_81/split:output:2*
T0*(
_output_shapes
:����������2
lstm_1/lstm_cell_81/Sigmoid_2�
lstm_1/lstm_cell_81/mul_1Mul"lstm_1/lstm_cell_81/split:output:2!lstm_1/lstm_cell_81/Sigmoid_2:y:0*
T0*(
_output_shapes
:����������2
lstm_1/lstm_cell_81/mul_1�
lstm_1/lstm_cell_81/IdentityIdentitylstm_1/lstm_cell_81/mul_1:z:0*
T0*(
_output_shapes
:����������2
lstm_1/lstm_cell_81/Identity�
lstm_1/lstm_cell_81/IdentityN	IdentityNlstm_1/lstm_cell_81/mul_1:z:0"lstm_1/lstm_cell_81/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-567300*<
_output_shapes*
(:����������:����������2
lstm_1/lstm_cell_81/IdentityN�
lstm_1/lstm_cell_81/mul_2Mullstm_1/lstm_cell_81/Sigmoid:y:0&lstm_1/lstm_cell_81/IdentityN:output:0*
T0*(
_output_shapes
:����������2
lstm_1/lstm_cell_81/mul_2�
lstm_1/lstm_cell_81/add_1AddV2lstm_1/lstm_cell_81/mul:z:0lstm_1/lstm_cell_81/mul_2:z:0*
T0*(
_output_shapes
:����������2
lstm_1/lstm_cell_81/add_1�
lstm_1/lstm_cell_81/Sigmoid_3Sigmoid"lstm_1/lstm_cell_81/split:output:3*
T0*(
_output_shapes
:����������2
lstm_1/lstm_cell_81/Sigmoid_3�
lstm_1/lstm_cell_81/Sigmoid_4Sigmoidlstm_1/lstm_cell_81/add_1:z:0*
T0*(
_output_shapes
:����������2
lstm_1/lstm_cell_81/Sigmoid_4�
lstm_1/lstm_cell_81/mul_3Mullstm_1/lstm_cell_81/add_1:z:0!lstm_1/lstm_cell_81/Sigmoid_4:y:0*
T0*(
_output_shapes
:����������2
lstm_1/lstm_cell_81/mul_3�
lstm_1/lstm_cell_81/Identity_1Identitylstm_1/lstm_cell_81/mul_3:z:0*
T0*(
_output_shapes
:����������2 
lstm_1/lstm_cell_81/Identity_1�
lstm_1/lstm_cell_81/IdentityN_1	IdentityNlstm_1/lstm_cell_81/mul_3:z:0lstm_1/lstm_cell_81/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-567309*<
_output_shapes*
(:����������:����������2!
lstm_1/lstm_cell_81/IdentityN_1�
lstm_1/lstm_cell_81/mul_4Mul!lstm_1/lstm_cell_81/Sigmoid_3:y:0(lstm_1/lstm_cell_81/IdentityN_1:output:0*
T0*(
_output_shapes
:����������2
lstm_1/lstm_cell_81/mul_4�
$lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   2&
$lstm_1/TensorArrayV2_1/element_shape�
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
lstm_1/time�
lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2!
lstm_1/while/maximum_iterationsx
lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_1/while/loop_counter�
lstm_1/whileWhile"lstm_1/while/loop_counter:output:0(lstm_1/while/maximum_iterations:output:0lstm_1/time:output:0lstm_1/TensorArrayV2_1:handle:0lstm_1/zeros:output:0lstm_1/zeros_1:output:0lstm_1/strided_slice_1:output:0>lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_1_lstm_cell_81_matmul_readvariableop_resource4lstm_1_lstm_cell_81_matmul_1_readvariableop_resource3lstm_1_lstm_cell_81_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*$
bodyR
lstm_1_while_body_567320*$
condR
lstm_1_while_cond_567319*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations 2
lstm_1/while�
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   29
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shape�
)lstm_1/TensorArrayV2Stack/TensorListStackTensorListStacklstm_1/while:output:3@lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype02+
)lstm_1/TensorArrayV2Stack/TensorListStack�
lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
lstm_1/strided_slice_3/stack�
lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_1/strided_slice_3/stack_1�
lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_3/stack_2�
lstm_1/strided_slice_3StridedSlice2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_1/strided_slice_3/stack:output:0'lstm_1/strided_slice_3/stack_1:output:0'lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
lstm_1/strided_slice_3�
lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_1/transpose_1/perm�
lstm_1/transpose_1	Transpose2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:����������2
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
lstm_2/Shape�
lstm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice/stack�
lstm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_2/strided_slice/stack_1�
lstm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_2/strided_slice/stack_2�
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
lstm_2/zeros/mul/y�
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
B :�2
lstm_2/zeros/Less/y�
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
lstm_2/zeros/packed/1�
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
lstm_2/zeros/Const�
lstm_2/zerosFilllstm_2/zeros/packed:output:0lstm_2/zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
lstm_2/zerosn
lstm_2/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_2/zeros_1/mul/y�
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
B :�2
lstm_2/zeros_1/Less/y�
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
lstm_2/zeros_1/packed/1�
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
lstm_2/zeros_1/Const�
lstm_2/zeros_1Filllstm_2/zeros_1/packed:output:0lstm_2/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@2
lstm_2/zeros_1�
lstm_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_2/transpose/perm�
lstm_2/transpose	Transposelstm_1/transpose_1:y:0lstm_2/transpose/perm:output:0*
T0*,
_output_shapes
:����������2
lstm_2/transposed
lstm_2/Shape_1Shapelstm_2/transpose:y:0*
T0*
_output_shapes
:2
lstm_2/Shape_1�
lstm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice_1/stack�
lstm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_1/stack_1�
lstm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_1/stack_2�
lstm_2/strided_slice_1StridedSlicelstm_2/Shape_1:output:0%lstm_2/strided_slice_1/stack:output:0'lstm_2/strided_slice_1/stack_1:output:0'lstm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_2/strided_slice_1�
"lstm_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2$
"lstm_2/TensorArrayV2/element_shape�
lstm_2/TensorArrayV2TensorListReserve+lstm_2/TensorArrayV2/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_2/TensorArrayV2�
<lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   2>
<lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape�
.lstm_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_2/transpose:y:0Elstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_2/TensorArrayUnstack/TensorListFromTensor�
lstm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice_2/stack�
lstm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_2/stack_1�
lstm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_2/stack_2�
lstm_2/strided_slice_2StridedSlicelstm_2/transpose:y:0%lstm_2/strided_slice_2/stack:output:0'lstm_2/strided_slice_2/stack_1:output:0'lstm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
lstm_2/strided_slice_2�
)lstm_2/lstm_cell_82/MatMul/ReadVariableOpReadVariableOp2lstm_2_lstm_cell_82_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02+
)lstm_2/lstm_cell_82/MatMul/ReadVariableOp�
lstm_2/lstm_cell_82/MatMulMatMullstm_2/strided_slice_2:output:01lstm_2/lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_2/lstm_cell_82/MatMul�
+lstm_2/lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOp4lstm_2_lstm_cell_82_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype02-
+lstm_2/lstm_cell_82/MatMul_1/ReadVariableOp�
lstm_2/lstm_cell_82/MatMul_1MatMullstm_2/zeros:output:03lstm_2/lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_2/lstm_cell_82/MatMul_1�
lstm_2/lstm_cell_82/addAddV2$lstm_2/lstm_cell_82/MatMul:product:0&lstm_2/lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_2/lstm_cell_82/add�
*lstm_2/lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOp3lstm_2_lstm_cell_82_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02,
*lstm_2/lstm_cell_82/BiasAdd/ReadVariableOp�
lstm_2/lstm_cell_82/BiasAddBiasAddlstm_2/lstm_cell_82/add:z:02lstm_2/lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_2/lstm_cell_82/BiasAdd�
#lstm_2/lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#lstm_2/lstm_cell_82/split/split_dim�
lstm_2/lstm_cell_82/splitSplit,lstm_2/lstm_cell_82/split/split_dim:output:0$lstm_2/lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
lstm_2/lstm_cell_82/split�
lstm_2/lstm_cell_82/SigmoidSigmoid"lstm_2/lstm_cell_82/split:output:0*
T0*'
_output_shapes
:���������@2
lstm_2/lstm_cell_82/Sigmoid�
lstm_2/lstm_cell_82/Sigmoid_1Sigmoid"lstm_2/lstm_cell_82/split:output:1*
T0*'
_output_shapes
:���������@2
lstm_2/lstm_cell_82/Sigmoid_1�
lstm_2/lstm_cell_82/mulMul!lstm_2/lstm_cell_82/Sigmoid_1:y:0lstm_2/zeros_1:output:0*
T0*'
_output_shapes
:���������@2
lstm_2/lstm_cell_82/mul�
lstm_2/lstm_cell_82/Sigmoid_2Sigmoid"lstm_2/lstm_cell_82/split:output:2*
T0*'
_output_shapes
:���������@2
lstm_2/lstm_cell_82/Sigmoid_2�
lstm_2/lstm_cell_82/mul_1Mul"lstm_2/lstm_cell_82/split:output:2!lstm_2/lstm_cell_82/Sigmoid_2:y:0*
T0*'
_output_shapes
:���������@2
lstm_2/lstm_cell_82/mul_1�
lstm_2/lstm_cell_82/IdentityIdentitylstm_2/lstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_2/lstm_cell_82/Identity�
lstm_2/lstm_cell_82/IdentityN	IdentityNlstm_2/lstm_cell_82/mul_1:z:0"lstm_2/lstm_cell_82/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-567467*:
_output_shapes(
&:���������@:���������@2
lstm_2/lstm_cell_82/IdentityN�
lstm_2/lstm_cell_82/mul_2Mullstm_2/lstm_cell_82/Sigmoid:y:0&lstm_2/lstm_cell_82/IdentityN:output:0*
T0*'
_output_shapes
:���������@2
lstm_2/lstm_cell_82/mul_2�
lstm_2/lstm_cell_82/add_1AddV2lstm_2/lstm_cell_82/mul:z:0lstm_2/lstm_cell_82/mul_2:z:0*
T0*'
_output_shapes
:���������@2
lstm_2/lstm_cell_82/add_1�
lstm_2/lstm_cell_82/Sigmoid_3Sigmoid"lstm_2/lstm_cell_82/split:output:3*
T0*'
_output_shapes
:���������@2
lstm_2/lstm_cell_82/Sigmoid_3�
lstm_2/lstm_cell_82/Sigmoid_4Sigmoidlstm_2/lstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_2/lstm_cell_82/Sigmoid_4�
lstm_2/lstm_cell_82/mul_3Mullstm_2/lstm_cell_82/add_1:z:0!lstm_2/lstm_cell_82/Sigmoid_4:y:0*
T0*'
_output_shapes
:���������@2
lstm_2/lstm_cell_82/mul_3�
lstm_2/lstm_cell_82/Identity_1Identitylstm_2/lstm_cell_82/mul_3:z:0*
T0*'
_output_shapes
:���������@2 
lstm_2/lstm_cell_82/Identity_1�
lstm_2/lstm_cell_82/IdentityN_1	IdentityNlstm_2/lstm_cell_82/mul_3:z:0lstm_2/lstm_cell_82/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-567476*:
_output_shapes(
&:���������@:���������@2!
lstm_2/lstm_cell_82/IdentityN_1�
lstm_2/lstm_cell_82/mul_4Mul!lstm_2/lstm_cell_82/Sigmoid_3:y:0(lstm_2/lstm_cell_82/IdentityN_1:output:0*
T0*'
_output_shapes
:���������@2
lstm_2/lstm_cell_82/mul_4�
$lstm_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2&
$lstm_2/TensorArrayV2_1/element_shape�
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
lstm_2/time�
lstm_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2!
lstm_2/while/maximum_iterationsx
lstm_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_2/while/loop_counter�
lstm_2/whileWhile"lstm_2/while/loop_counter:output:0(lstm_2/while/maximum_iterations:output:0lstm_2/time:output:0lstm_2/TensorArrayV2_1:handle:0lstm_2/zeros:output:0lstm_2/zeros_1:output:0lstm_2/strided_slice_1:output:0>lstm_2/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_2_lstm_cell_82_matmul_readvariableop_resource4lstm_2_lstm_cell_82_matmul_1_readvariableop_resource3lstm_2_lstm_cell_82_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������@:���������@: : : : : *%
_read_only_resource_inputs
	
*$
bodyR
lstm_2_while_body_567487*$
condR
lstm_2_while_cond_567486*K
output_shapes:
8: : : : :���������@:���������@: : : : : *
parallel_iterations 2
lstm_2/while�
7lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   29
7lstm_2/TensorArrayV2Stack/TensorListStack/element_shape�
)lstm_2/TensorArrayV2Stack/TensorListStackTensorListStacklstm_2/while:output:3@lstm_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype02+
)lstm_2/TensorArrayV2Stack/TensorListStack�
lstm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
lstm_2/strided_slice_3/stack�
lstm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_2/strided_slice_3/stack_1�
lstm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_3/stack_2�
lstm_2/strided_slice_3StridedSlice2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_2/strided_slice_3/stack:output:0'lstm_2/strided_slice_3/stack_1:output:0'lstm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
lstm_2/strided_slice_3�
lstm_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_2/transpose_1/perm�
lstm_2/transpose_1	Transpose2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@2
lstm_2/transpose_1t
lstm_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_2/runtime�
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2 
time_distributed/Reshape/shape�
time_distributed/ReshapeReshapelstm_2/transpose_1:y:0'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
time_distributed/Reshape�
.time_distributed/dense_2/MatMul/ReadVariableOpReadVariableOp7time_distributed_dense_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype020
.time_distributed/dense_2/MatMul/ReadVariableOp�
time_distributed/dense_2/MatMulMatMul!time_distributed/Reshape:output:06time_distributed/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2!
time_distributed/dense_2/MatMul�
/time_distributed/dense_2/BiasAdd/ReadVariableOpReadVariableOp8time_distributed_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype021
/time_distributed/dense_2/BiasAdd/ReadVariableOp�
 time_distributed/dense_2/BiasAddBiasAdd)time_distributed/dense_2/MatMul:product:07time_distributed/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2"
 time_distributed/dense_2/BiasAdd�
 time_distributed/dense_2/SigmoidSigmoid)time_distributed/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2"
 time_distributed/dense_2/Sigmoid�
time_distributed/dense_2/mulMul)time_distributed/dense_2/BiasAdd:output:0$time_distributed/dense_2/Sigmoid:y:0*
T0*'
_output_shapes
:���������@2
time_distributed/dense_2/mul�
!time_distributed/dense_2/IdentityIdentity time_distributed/dense_2/mul:z:0*
T0*'
_output_shapes
:���������@2#
!time_distributed/dense_2/Identity�
"time_distributed/dense_2/IdentityN	IdentityN time_distributed/dense_2/mul:z:0)time_distributed/dense_2/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-567588*:
_output_shapes(
&:���������@:���������@2$
"time_distributed/dense_2/IdentityN�
 time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����   @   2"
 time_distributed/Reshape_1/shape�
time_distributed/Reshape_1Reshape+time_distributed/dense_2/IdentityN:output:0)time_distributed/Reshape_1/shape:output:0*
T0*+
_output_shapes
:���������@2
time_distributed/Reshape_1�
 time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2"
 time_distributed/Reshape_2/shape�
time_distributed/Reshape_2Reshapelstm_2/transpose_1:y:0)time_distributed/Reshape_2/shape:output:0*
T0*'
_output_shapes
:���������@2
time_distributed/Reshape_2�
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2"
 time_distributed_1/Reshape/shape�
time_distributed_1/ReshapeReshape#time_distributed/Reshape_1:output:0)time_distributed_1/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
time_distributed_1/Reshape�
0time_distributed_1/dense_3/MatMul/ReadVariableOpReadVariableOp9time_distributed_1_dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype022
0time_distributed_1/dense_3/MatMul/ReadVariableOp�
!time_distributed_1/dense_3/MatMulMatMul#time_distributed_1/Reshape:output:08time_distributed_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2#
!time_distributed_1/dense_3/MatMul�
1time_distributed_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype023
1time_distributed_1/dense_3/BiasAdd/ReadVariableOp�
"time_distributed_1/dense_3/BiasAddBiasAdd+time_distributed_1/dense_3/MatMul:product:09time_distributed_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2$
"time_distributed_1/dense_3/BiasAdd�
"time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����      2$
"time_distributed_1/Reshape_1/shape�
time_distributed_1/Reshape_1Reshape+time_distributed_1/dense_3/BiasAdd:output:0+time_distributed_1/Reshape_1/shape:output:0*
T0*+
_output_shapes
:���������2
time_distributed_1/Reshape_1�
"time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2$
"time_distributed_1/Reshape_2/shape�
time_distributed_1/Reshape_2Reshape#time_distributed/Reshape_1:output:0+time_distributed_1/Reshape_2/shape:output:0*
T0*'
_output_shapes
:���������@2
time_distributed_1/Reshape_2�
IdentityIdentity%time_distributed_1/Reshape_1:output:0+^lstm_1/lstm_cell_81/BiasAdd/ReadVariableOp*^lstm_1/lstm_cell_81/MatMul/ReadVariableOp,^lstm_1/lstm_cell_81/MatMul_1/ReadVariableOp^lstm_1/while+^lstm_2/lstm_cell_82/BiasAdd/ReadVariableOp*^lstm_2/lstm_cell_82/MatMul/ReadVariableOp,^lstm_2/lstm_cell_82/MatMul_1/ReadVariableOp^lstm_2/while0^time_distributed/dense_2/BiasAdd/ReadVariableOp/^time_distributed/dense_2/MatMul/ReadVariableOp2^time_distributed_1/dense_3/BiasAdd/ReadVariableOp1^time_distributed_1/dense_3/MatMul/ReadVariableOp*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : 2X
*lstm_1/lstm_cell_81/BiasAdd/ReadVariableOp*lstm_1/lstm_cell_81/BiasAdd/ReadVariableOp2V
)lstm_1/lstm_cell_81/MatMul/ReadVariableOp)lstm_1/lstm_cell_81/MatMul/ReadVariableOp2Z
+lstm_1/lstm_cell_81/MatMul_1/ReadVariableOp+lstm_1/lstm_cell_81/MatMul_1/ReadVariableOp2
lstm_1/whilelstm_1/while2X
*lstm_2/lstm_cell_82/BiasAdd/ReadVariableOp*lstm_2/lstm_cell_82/BiasAdd/ReadVariableOp2V
)lstm_2/lstm_cell_82/MatMul/ReadVariableOp)lstm_2/lstm_cell_82/MatMul/ReadVariableOp2Z
+lstm_2/lstm_cell_82/MatMul_1/ReadVariableOp+lstm_2/lstm_cell_82/MatMul_1/ReadVariableOp2
lstm_2/whilelstm_2/while2b
/time_distributed/dense_2/BiasAdd/ReadVariableOp/time_distributed/dense_2/BiasAdd/ReadVariableOp2`
.time_distributed/dense_2/MatMul/ReadVariableOp.time_distributed/dense_2/MatMul/ReadVariableOp2f
1time_distributed_1/dense_3/BiasAdd/ReadVariableOp1time_distributed_1/dense_3/BiasAdd/ReadVariableOp2d
0time_distributed_1/dense_3/MatMul/ReadVariableOp0time_distributed_1/dense_3/MatMul/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�c
�
B__inference_lstm_2_layer_call_and_return_conditional_losses_568554
inputs_0?
+lstm_cell_82_matmul_readvariableop_resource:
��@
-lstm_cell_82_matmul_1_readvariableop_resource:	@�;
,lstm_cell_82_biasadd_readvariableop_resource:	�
identity��#lstm_cell_82/BiasAdd/ReadVariableOp�"lstm_cell_82/MatMul/ReadVariableOp�$lstm_cell_82/MatMul_1/ReadVariableOp�whileF
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:���������@2
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
B :�2
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
zeros_1/packed/1�
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
:���������@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:�������������������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_82/MatMul/ReadVariableOpReadVariableOp+lstm_cell_82_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02$
"lstm_cell_82/MatMul/ReadVariableOp�
lstm_cell_82/MatMulMatMulstrided_slice_2:output:0*lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_82/MatMul�
$lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_82_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype02&
$lstm_cell_82/MatMul_1/ReadVariableOp�
lstm_cell_82/MatMul_1MatMulzeros:output:0,lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_82/MatMul_1�
lstm_cell_82/addAddV2lstm_cell_82/MatMul:product:0lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_82/add�
#lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_82_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_82/BiasAdd/ReadVariableOp�
lstm_cell_82/BiasAddBiasAddlstm_cell_82/add:z:0+lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_82/BiasAdd~
lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_82/split/split_dim�
lstm_cell_82/splitSplit%lstm_cell_82/split/split_dim:output:0lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
lstm_cell_82/split�
lstm_cell_82/SigmoidSigmoidlstm_cell_82/split:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Sigmoid�
lstm_cell_82/Sigmoid_1Sigmoidlstm_cell_82/split:output:1*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Sigmoid_1�
lstm_cell_82/mulMullstm_cell_82/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/mul�
lstm_cell_82/Sigmoid_2Sigmoidlstm_cell_82/split:output:2*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Sigmoid_2�
lstm_cell_82/mul_1Mullstm_cell_82/split:output:2lstm_cell_82/Sigmoid_2:y:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/mul_1�
lstm_cell_82/IdentityIdentitylstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Identity�
lstm_cell_82/IdentityN	IdentityNlstm_cell_82/mul_1:z:0lstm_cell_82/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-568440*:
_output_shapes(
&:���������@:���������@2
lstm_cell_82/IdentityN�
lstm_cell_82/mul_2Mullstm_cell_82/Sigmoid:y:0lstm_cell_82/IdentityN:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/mul_2�
lstm_cell_82/add_1AddV2lstm_cell_82/mul:z:0lstm_cell_82/mul_2:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/add_1�
lstm_cell_82/Sigmoid_3Sigmoidlstm_cell_82/split:output:3*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Sigmoid_3�
lstm_cell_82/Sigmoid_4Sigmoidlstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Sigmoid_4�
lstm_cell_82/mul_3Mullstm_cell_82/add_1:z:0lstm_cell_82/Sigmoid_4:y:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/mul_3�
lstm_cell_82/Identity_1Identitylstm_cell_82/mul_3:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Identity_1�
lstm_cell_82/IdentityN_1	IdentityNlstm_cell_82/mul_3:z:0lstm_cell_82/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-568449*:
_output_shapes(
&:���������@:���������@2
lstm_cell_82/IdentityN_1�
lstm_cell_82/mul_4Mullstm_cell_82/Sigmoid_3:y:0!lstm_cell_82/IdentityN_1:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/mul_4�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_82_matmul_readvariableop_resource-lstm_cell_82_matmul_1_readvariableop_resource,lstm_cell_82_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������@:���������@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_568460*
condR
while_cond_568459*K
output_shapes:
8: : : : :���������@:���������@: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime�
IdentityIdentitytranspose_1:y:0$^lstm_cell_82/BiasAdd/ReadVariableOp#^lstm_cell_82/MatMul/ReadVariableOp%^lstm_cell_82/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :������������������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':�������������������: : : 2J
#lstm_cell_82/BiasAdd/ReadVariableOp#lstm_cell_82/BiasAdd/ReadVariableOp2H
"lstm_cell_82/MatMul/ReadVariableOp"lstm_cell_82/MatMul/ReadVariableOp2L
$lstm_cell_82/MatMul_1/ReadVariableOp$lstm_cell_82/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:�������������������
"
_user_specified_name
inputs/0
�	
�
C__inference_dense_3_layer_call_and_return_conditional_losses_565615

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_566190

inputs8
&dense_3_matmul_readvariableop_resource:@5
'dense_3_biasadd_readvariableop_resource:
identity��dense_3/BiasAdd/ReadVariableOp�dense_3/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:���������@2	
Reshape�
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_3/MatMul/ReadVariableOp�
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_3/MatMul�
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp�
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_3/BiasAddw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����      2
Reshape_1/shape�
	Reshape_1Reshapedense_3/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:���������2
	Reshape_1�
IdentityIdentityReshape_1:output:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�L
�
while_body_565991
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_82_matmul_readvariableop_resource_0:
��H
5while_lstm_cell_82_matmul_1_readvariableop_resource_0:	@�C
4while_lstm_cell_82_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_82_matmul_readvariableop_resource:
��F
3while_lstm_cell_82_matmul_1_readvariableop_resource:	@�A
2while_lstm_cell_82_biasadd_readvariableop_resource:	���)while/lstm_cell_82/BiasAdd/ReadVariableOp�(while/lstm_cell_82/MatMul/ReadVariableOp�*while/lstm_cell_82/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:����������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_82/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_82_matmul_readvariableop_resource_0* 
_output_shapes
:
��*
dtype02*
(while/lstm_cell_82/MatMul/ReadVariableOp�
while/lstm_cell_82/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_82/MatMul�
*while/lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_82_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype02,
*while/lstm_cell_82/MatMul_1/ReadVariableOp�
while/lstm_cell_82/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_82/MatMul_1�
while/lstm_cell_82/addAddV2#while/lstm_cell_82/MatMul:product:0%while/lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_82/add�
)while/lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_82_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_82/BiasAdd/ReadVariableOp�
while/lstm_cell_82/BiasAddBiasAddwhile/lstm_cell_82/add:z:01while/lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_82/BiasAdd�
"while/lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_82/split/split_dim�
while/lstm_cell_82/splitSplit+while/lstm_cell_82/split/split_dim:output:0#while/lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
while/lstm_cell_82/split�
while/lstm_cell_82/SigmoidSigmoid!while/lstm_cell_82/split:output:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Sigmoid�
while/lstm_cell_82/Sigmoid_1Sigmoid!while/lstm_cell_82/split:output:1*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Sigmoid_1�
while/lstm_cell_82/mulMul while/lstm_cell_82/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/mul�
while/lstm_cell_82/Sigmoid_2Sigmoid!while/lstm_cell_82/split:output:2*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Sigmoid_2�
while/lstm_cell_82/mul_1Mul!while/lstm_cell_82/split:output:2 while/lstm_cell_82/Sigmoid_2:y:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/mul_1�
while/lstm_cell_82/IdentityIdentitywhile/lstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Identity�
while/lstm_cell_82/IdentityN	IdentityNwhile/lstm_cell_82/mul_1:z:0!while/lstm_cell_82/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-566033*:
_output_shapes(
&:���������@:���������@2
while/lstm_cell_82/IdentityN�
while/lstm_cell_82/mul_2Mulwhile/lstm_cell_82/Sigmoid:y:0%while/lstm_cell_82/IdentityN:output:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/mul_2�
while/lstm_cell_82/add_1AddV2while/lstm_cell_82/mul:z:0while/lstm_cell_82/mul_2:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/add_1�
while/lstm_cell_82/Sigmoid_3Sigmoid!while/lstm_cell_82/split:output:3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Sigmoid_3�
while/lstm_cell_82/Sigmoid_4Sigmoidwhile/lstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Sigmoid_4�
while/lstm_cell_82/mul_3Mulwhile/lstm_cell_82/add_1:z:0 while/lstm_cell_82/Sigmoid_4:y:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/mul_3�
while/lstm_cell_82/Identity_1Identitywhile/lstm_cell_82/mul_3:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Identity_1�
while/lstm_cell_82/IdentityN_1	IdentityNwhile/lstm_cell_82/mul_3:z:0while/lstm_cell_82/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-566042*:
_output_shapes(
&:���������@:���������@2 
while/lstm_cell_82/IdentityN_1�
while/lstm_cell_82/mul_4Mul while/lstm_cell_82/Sigmoid_3:y:0'while/lstm_cell_82/IdentityN_1:output:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/mul_4�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_82/mul_4:z:0*
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
while/add_1�
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_82/mul_4:z:0*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_82/add_1:z:0*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_82_biasadd_readvariableop_resource4while_lstm_cell_82_biasadd_readvariableop_resource_0"l
3while_lstm_cell_82_matmul_1_readvariableop_resource5while_lstm_cell_82_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_82_matmul_readvariableop_resource3while_lstm_cell_82_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2V
)while/lstm_cell_82/BiasAdd/ReadVariableOp)while/lstm_cell_82/BiasAdd/ReadVariableOp2T
(while/lstm_cell_82/MatMul/ReadVariableOp(while/lstm_cell_82/MatMul/ReadVariableOp2X
*while/lstm_cell_82/MatMul_1/ReadVariableOp*while/lstm_cell_82/MatMul_1/ReadVariableOp: 
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
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�
�
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_569254

inputs8
&dense_3_matmul_readvariableop_resource:@5
'dense_3_biasadd_readvariableop_resource:
identity��dense_3/BiasAdd/ReadVariableOp�dense_3/MatMul/ReadVariableOpD
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
strided_slice/stack_2�
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
valueB"����@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:���������@2	
Reshape�
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_3/MatMul/ReadVariableOp�
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_3/MatMul�
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp�
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_3/BiasAddq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
���������2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2�
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape�
	Reshape_1Reshapedense_3/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :������������������2
	Reshape_1�
IdentityIdentityReshape_1:output:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:������������������@: : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������@
 
_user_specified_nameinputs
�
�
-__inference_lstm_cell_82_layer_call_fn_569455

inputs
states_0
states_1
unknown:
��
	unknown_0:	@�
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������@:���������@:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_82_layer_call_and_return_conditional_losses_5650372
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������@2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:���������@2

Identity_1�

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:���������@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:����������:���������@:���������@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/1
�
�
L__inference_time_distributed_layer_call_and_return_conditional_losses_569197

inputs8
&dense_2_matmul_readvariableop_resource:@@5
'dense_2_biasadd_readvariableop_resource:@
identity��dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:���������@2	
Reshape�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_2/MatMul/ReadVariableOp�
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_2/MatMul�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_2/BiasAdd/ReadVariableOp�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_2/BiasAddy
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_2/Sigmoid�
dense_2/mulMuldense_2/BiasAdd:output:0dense_2/Sigmoid:y:0*
T0*'
_output_shapes
:���������@2
dense_2/muls
dense_2/IdentityIdentitydense_2/mul:z:0*
T0*'
_output_shapes
:���������@2
dense_2/Identity�
dense_2/IdentityN	IdentityNdense_2/mul:z:0dense_2/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-569188*:
_output_shapes(
&:���������@:���������@2
dense_2/IdentityNw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����   @   2
Reshape_1/shape�
	Reshape_1Reshapedense_2/IdentityN:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:���������@2
	Reshape_1�
IdentityIdentityReshape_1:output:0^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*+
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�d
�
B__inference_lstm_1_layer_call_and_return_conditional_losses_567826
inputs_0>
+lstm_cell_81_matmul_readvariableop_resource:	�A
-lstm_cell_81_matmul_1_readvariableop_resource:
��;
,lstm_cell_81_biasadd_readvariableop_resource:	�
identity��#lstm_cell_81/BiasAdd/ReadVariableOp�"lstm_cell_81/MatMul/ReadVariableOp�$lstm_cell_81/MatMul_1/ReadVariableOp�whileF
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
strided_slice/stack_2�
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
B :�2
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
B :�2
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
B :�2
zeros/packed/1�
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
:����������2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2
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
B :�2
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
B :�2
zeros_1/packed/1�
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
:����������2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_81/MatMul/ReadVariableOpReadVariableOp+lstm_cell_81_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"lstm_cell_81/MatMul/ReadVariableOp�
lstm_cell_81/MatMulMatMulstrided_slice_2:output:0*lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/MatMul�
$lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_81_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02&
$lstm_cell_81/MatMul_1/ReadVariableOp�
lstm_cell_81/MatMul_1MatMulzeros:output:0,lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/MatMul_1�
lstm_cell_81/addAddV2lstm_cell_81/MatMul:product:0lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/add�
#lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_81_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_81/BiasAdd/ReadVariableOp�
lstm_cell_81/BiasAddBiasAddlstm_cell_81/add:z:0+lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/BiasAdd~
lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_81/split/split_dim�
lstm_cell_81/splitSplit%lstm_cell_81/split/split_dim:output:0lstm_cell_81/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split2
lstm_cell_81/split�
lstm_cell_81/SigmoidSigmoidlstm_cell_81/split:output:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/Sigmoid�
lstm_cell_81/Sigmoid_1Sigmoidlstm_cell_81/split:output:1*
T0*(
_output_shapes
:����������2
lstm_cell_81/Sigmoid_1�
lstm_cell_81/mulMullstm_cell_81/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/mul�
lstm_cell_81/Sigmoid_2Sigmoidlstm_cell_81/split:output:2*
T0*(
_output_shapes
:����������2
lstm_cell_81/Sigmoid_2�
lstm_cell_81/mul_1Mullstm_cell_81/split:output:2lstm_cell_81/Sigmoid_2:y:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/mul_1�
lstm_cell_81/IdentityIdentitylstm_cell_81/mul_1:z:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/Identity�
lstm_cell_81/IdentityN	IdentityNlstm_cell_81/mul_1:z:0lstm_cell_81/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-567712*<
_output_shapes*
(:����������:����������2
lstm_cell_81/IdentityN�
lstm_cell_81/mul_2Mullstm_cell_81/Sigmoid:y:0lstm_cell_81/IdentityN:output:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/mul_2�
lstm_cell_81/add_1AddV2lstm_cell_81/mul:z:0lstm_cell_81/mul_2:z:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/add_1�
lstm_cell_81/Sigmoid_3Sigmoidlstm_cell_81/split:output:3*
T0*(
_output_shapes
:����������2
lstm_cell_81/Sigmoid_3�
lstm_cell_81/Sigmoid_4Sigmoidlstm_cell_81/add_1:z:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/Sigmoid_4�
lstm_cell_81/mul_3Mullstm_cell_81/add_1:z:0lstm_cell_81/Sigmoid_4:y:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/mul_3�
lstm_cell_81/Identity_1Identitylstm_cell_81/mul_3:z:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/Identity_1�
lstm_cell_81/IdentityN_1	IdentityNlstm_cell_81/mul_3:z:0lstm_cell_81/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-567721*<
_output_shapes*
(:����������:����������2
lstm_cell_81/IdentityN_1�
lstm_cell_81/mul_4Mullstm_cell_81/Sigmoid_3:y:0!lstm_cell_81/IdentityN_1:output:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/mul_4�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_81_matmul_readvariableop_resource-lstm_cell_81_matmul_1_readvariableop_resource,lstm_cell_81_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_567732*
condR
while_cond_567731*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:�������������������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:�������������������2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime�
IdentityIdentitytranspose_1:y:0$^lstm_cell_81/BiasAdd/ReadVariableOp#^lstm_cell_81/MatMul/ReadVariableOp%^lstm_cell_81/MatMul_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:�������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2J
#lstm_cell_81/BiasAdd/ReadVariableOp#lstm_cell_81/BiasAdd/ReadVariableOp2H
"lstm_cell_81/MatMul/ReadVariableOp"lstm_cell_81/MatMul/ReadVariableOp2L
$lstm_cell_81/MatMul_1/ReadVariableOp$lstm_cell_81/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
'__inference_lstm_2_layer_call_fn_568383

inputs
unknown:
��
	unknown_0:	@�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_5664192
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�c
�
B__inference_lstm_2_layer_call_and_return_conditional_losses_568725
inputs_0?
+lstm_cell_82_matmul_readvariableop_resource:
��@
-lstm_cell_82_matmul_1_readvariableop_resource:	@�;
,lstm_cell_82_biasadd_readvariableop_resource:	�
identity��#lstm_cell_82/BiasAdd/ReadVariableOp�"lstm_cell_82/MatMul/ReadVariableOp�$lstm_cell_82/MatMul_1/ReadVariableOp�whileF
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:���������@2
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
B :�2
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
zeros_1/packed/1�
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
:���������@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:�������������������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_82/MatMul/ReadVariableOpReadVariableOp+lstm_cell_82_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02$
"lstm_cell_82/MatMul/ReadVariableOp�
lstm_cell_82/MatMulMatMulstrided_slice_2:output:0*lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_82/MatMul�
$lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_82_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype02&
$lstm_cell_82/MatMul_1/ReadVariableOp�
lstm_cell_82/MatMul_1MatMulzeros:output:0,lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_82/MatMul_1�
lstm_cell_82/addAddV2lstm_cell_82/MatMul:product:0lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_82/add�
#lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_82_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_82/BiasAdd/ReadVariableOp�
lstm_cell_82/BiasAddBiasAddlstm_cell_82/add:z:0+lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_82/BiasAdd~
lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_82/split/split_dim�
lstm_cell_82/splitSplit%lstm_cell_82/split/split_dim:output:0lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
lstm_cell_82/split�
lstm_cell_82/SigmoidSigmoidlstm_cell_82/split:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Sigmoid�
lstm_cell_82/Sigmoid_1Sigmoidlstm_cell_82/split:output:1*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Sigmoid_1�
lstm_cell_82/mulMullstm_cell_82/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/mul�
lstm_cell_82/Sigmoid_2Sigmoidlstm_cell_82/split:output:2*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Sigmoid_2�
lstm_cell_82/mul_1Mullstm_cell_82/split:output:2lstm_cell_82/Sigmoid_2:y:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/mul_1�
lstm_cell_82/IdentityIdentitylstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Identity�
lstm_cell_82/IdentityN	IdentityNlstm_cell_82/mul_1:z:0lstm_cell_82/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-568611*:
_output_shapes(
&:���������@:���������@2
lstm_cell_82/IdentityN�
lstm_cell_82/mul_2Mullstm_cell_82/Sigmoid:y:0lstm_cell_82/IdentityN:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/mul_2�
lstm_cell_82/add_1AddV2lstm_cell_82/mul:z:0lstm_cell_82/mul_2:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/add_1�
lstm_cell_82/Sigmoid_3Sigmoidlstm_cell_82/split:output:3*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Sigmoid_3�
lstm_cell_82/Sigmoid_4Sigmoidlstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Sigmoid_4�
lstm_cell_82/mul_3Mullstm_cell_82/add_1:z:0lstm_cell_82/Sigmoid_4:y:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/mul_3�
lstm_cell_82/Identity_1Identitylstm_cell_82/mul_3:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Identity_1�
lstm_cell_82/IdentityN_1	IdentityNlstm_cell_82/mul_3:z:0lstm_cell_82/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-568620*:
_output_shapes(
&:���������@:���������@2
lstm_cell_82/IdentityN_1�
lstm_cell_82/mul_4Mullstm_cell_82/Sigmoid_3:y:0!lstm_cell_82/IdentityN_1:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/mul_4�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_82_matmul_readvariableop_resource-lstm_cell_82_matmul_1_readvariableop_resource,lstm_cell_82_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������@:���������@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_568631*
condR
while_cond_568630*K
output_shapes:
8: : : : :���������@:���������@: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime�
IdentityIdentitytranspose_1:y:0$^lstm_cell_82/BiasAdd/ReadVariableOp#^lstm_cell_82/MatMul/ReadVariableOp%^lstm_cell_82/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :������������������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':�������������������: : : 2J
#lstm_cell_82/BiasAdd/ReadVariableOp#lstm_cell_82/BiasAdd/ReadVariableOp2H
"lstm_cell_82/MatMul/ReadVariableOp"lstm_cell_82/MatMul/ReadVariableOp2L
$lstm_cell_82/MatMul_1/ReadVariableOp$lstm_cell_82/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:�������������������
"
_user_specified_name
inputs/0
�
�
while_cond_568244
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_568244___redundant_placeholder04
0while_while_cond_568244___redundant_placeholder14
0while_while_cond_568244___redundant_placeholder24
0while_while_cond_568244___redundant_placeholder3
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
B: : : : :����������:����������: ::::: 
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
:����������:.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�L
�
while_body_568460
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_82_matmul_readvariableop_resource_0:
��H
5while_lstm_cell_82_matmul_1_readvariableop_resource_0:	@�C
4while_lstm_cell_82_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_82_matmul_readvariableop_resource:
��F
3while_lstm_cell_82_matmul_1_readvariableop_resource:	@�A
2while_lstm_cell_82_biasadd_readvariableop_resource:	���)while/lstm_cell_82/BiasAdd/ReadVariableOp�(while/lstm_cell_82/MatMul/ReadVariableOp�*while/lstm_cell_82/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:����������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_82/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_82_matmul_readvariableop_resource_0* 
_output_shapes
:
��*
dtype02*
(while/lstm_cell_82/MatMul/ReadVariableOp�
while/lstm_cell_82/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_82/MatMul�
*while/lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_82_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype02,
*while/lstm_cell_82/MatMul_1/ReadVariableOp�
while/lstm_cell_82/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_82/MatMul_1�
while/lstm_cell_82/addAddV2#while/lstm_cell_82/MatMul:product:0%while/lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_82/add�
)while/lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_82_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_82/BiasAdd/ReadVariableOp�
while/lstm_cell_82/BiasAddBiasAddwhile/lstm_cell_82/add:z:01while/lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_82/BiasAdd�
"while/lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_82/split/split_dim�
while/lstm_cell_82/splitSplit+while/lstm_cell_82/split/split_dim:output:0#while/lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
while/lstm_cell_82/split�
while/lstm_cell_82/SigmoidSigmoid!while/lstm_cell_82/split:output:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Sigmoid�
while/lstm_cell_82/Sigmoid_1Sigmoid!while/lstm_cell_82/split:output:1*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Sigmoid_1�
while/lstm_cell_82/mulMul while/lstm_cell_82/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/mul�
while/lstm_cell_82/Sigmoid_2Sigmoid!while/lstm_cell_82/split:output:2*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Sigmoid_2�
while/lstm_cell_82/mul_1Mul!while/lstm_cell_82/split:output:2 while/lstm_cell_82/Sigmoid_2:y:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/mul_1�
while/lstm_cell_82/IdentityIdentitywhile/lstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Identity�
while/lstm_cell_82/IdentityN	IdentityNwhile/lstm_cell_82/mul_1:z:0!while/lstm_cell_82/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-568502*:
_output_shapes(
&:���������@:���������@2
while/lstm_cell_82/IdentityN�
while/lstm_cell_82/mul_2Mulwhile/lstm_cell_82/Sigmoid:y:0%while/lstm_cell_82/IdentityN:output:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/mul_2�
while/lstm_cell_82/add_1AddV2while/lstm_cell_82/mul:z:0while/lstm_cell_82/mul_2:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/add_1�
while/lstm_cell_82/Sigmoid_3Sigmoid!while/lstm_cell_82/split:output:3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Sigmoid_3�
while/lstm_cell_82/Sigmoid_4Sigmoidwhile/lstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Sigmoid_4�
while/lstm_cell_82/mul_3Mulwhile/lstm_cell_82/add_1:z:0 while/lstm_cell_82/Sigmoid_4:y:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/mul_3�
while/lstm_cell_82/Identity_1Identitywhile/lstm_cell_82/mul_3:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Identity_1�
while/lstm_cell_82/IdentityN_1	IdentityNwhile/lstm_cell_82/mul_3:z:0while/lstm_cell_82/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-568511*:
_output_shapes(
&:���������@:���������@2 
while/lstm_cell_82/IdentityN_1�
while/lstm_cell_82/mul_4Mul while/lstm_cell_82/Sigmoid_3:y:0'while/lstm_cell_82/IdentityN_1:output:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/mul_4�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_82/mul_4:z:0*
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
while/add_1�
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_82/mul_4:z:0*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_82/add_1:z:0*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_82_biasadd_readvariableop_resource4while_lstm_cell_82_biasadd_readvariableop_resource_0"l
3while_lstm_cell_82_matmul_1_readvariableop_resource5while_lstm_cell_82_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_82_matmul_readvariableop_resource3while_lstm_cell_82_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2V
)while/lstm_cell_82/BiasAdd/ReadVariableOp)while/lstm_cell_82/BiasAdd/ReadVariableOp2T
(while/lstm_cell_82/MatMul/ReadVariableOp(while/lstm_cell_82/MatMul/ReadVariableOp2X
*while/lstm_cell_82/MatMul_1/ReadVariableOp*while/lstm_cell_82/MatMul_1/ReadVariableOp: 
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
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�c
�
B__inference_lstm_2_layer_call_and_return_conditional_losses_569067

inputs?
+lstm_cell_82_matmul_readvariableop_resource:
��@
-lstm_cell_82_matmul_1_readvariableop_resource:	@�;
,lstm_cell_82_biasadd_readvariableop_resource:	�
identity��#lstm_cell_82/BiasAdd/ReadVariableOp�"lstm_cell_82/MatMul/ReadVariableOp�$lstm_cell_82/MatMul_1/ReadVariableOp�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:���������@2
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
B :�2
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
zeros_1/packed/1�
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
:���������@2	
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
:����������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_82/MatMul/ReadVariableOpReadVariableOp+lstm_cell_82_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02$
"lstm_cell_82/MatMul/ReadVariableOp�
lstm_cell_82/MatMulMatMulstrided_slice_2:output:0*lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_82/MatMul�
$lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_82_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype02&
$lstm_cell_82/MatMul_1/ReadVariableOp�
lstm_cell_82/MatMul_1MatMulzeros:output:0,lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_82/MatMul_1�
lstm_cell_82/addAddV2lstm_cell_82/MatMul:product:0lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_82/add�
#lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_82_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_82/BiasAdd/ReadVariableOp�
lstm_cell_82/BiasAddBiasAddlstm_cell_82/add:z:0+lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_82/BiasAdd~
lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_82/split/split_dim�
lstm_cell_82/splitSplit%lstm_cell_82/split/split_dim:output:0lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
lstm_cell_82/split�
lstm_cell_82/SigmoidSigmoidlstm_cell_82/split:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Sigmoid�
lstm_cell_82/Sigmoid_1Sigmoidlstm_cell_82/split:output:1*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Sigmoid_1�
lstm_cell_82/mulMullstm_cell_82/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/mul�
lstm_cell_82/Sigmoid_2Sigmoidlstm_cell_82/split:output:2*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Sigmoid_2�
lstm_cell_82/mul_1Mullstm_cell_82/split:output:2lstm_cell_82/Sigmoid_2:y:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/mul_1�
lstm_cell_82/IdentityIdentitylstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Identity�
lstm_cell_82/IdentityN	IdentityNlstm_cell_82/mul_1:z:0lstm_cell_82/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-568953*:
_output_shapes(
&:���������@:���������@2
lstm_cell_82/IdentityN�
lstm_cell_82/mul_2Mullstm_cell_82/Sigmoid:y:0lstm_cell_82/IdentityN:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/mul_2�
lstm_cell_82/add_1AddV2lstm_cell_82/mul:z:0lstm_cell_82/mul_2:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/add_1�
lstm_cell_82/Sigmoid_3Sigmoidlstm_cell_82/split:output:3*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Sigmoid_3�
lstm_cell_82/Sigmoid_4Sigmoidlstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Sigmoid_4�
lstm_cell_82/mul_3Mullstm_cell_82/add_1:z:0lstm_cell_82/Sigmoid_4:y:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/mul_3�
lstm_cell_82/Identity_1Identitylstm_cell_82/mul_3:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Identity_1�
lstm_cell_82/IdentityN_1	IdentityNlstm_cell_82/mul_3:z:0lstm_cell_82/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-568962*:
_output_shapes(
&:���������@:���������@2
lstm_cell_82/IdentityN_1�
lstm_cell_82/mul_4Mullstm_cell_82/Sigmoid_3:y:0!lstm_cell_82/IdentityN_1:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/mul_4�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_82_matmul_readvariableop_resource-lstm_cell_82_matmul_1_readvariableop_resource,lstm_cell_82_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������@:���������@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_568973*
condR
while_cond_568972*K
output_shapes:
8: : : : :���������@:���������@: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime�
IdentityIdentitytranspose_1:y:0$^lstm_cell_82/BiasAdd/ReadVariableOp#^lstm_cell_82/MatMul/ReadVariableOp%^lstm_cell_82/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 2J
#lstm_cell_82/BiasAdd/ReadVariableOp#lstm_cell_82/BiasAdd/ReadVariableOp2H
"lstm_cell_82/MatMul/ReadVariableOp"lstm_cell_82/MatMul/ReadVariableOp2L
$lstm_cell_82/MatMul_1/ReadVariableOp$lstm_cell_82/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�m
�
%sequential_1_lstm_1_while_body_563855D
@sequential_1_lstm_1_while_sequential_1_lstm_1_while_loop_counterJ
Fsequential_1_lstm_1_while_sequential_1_lstm_1_while_maximum_iterations)
%sequential_1_lstm_1_while_placeholder+
'sequential_1_lstm_1_while_placeholder_1+
'sequential_1_lstm_1_while_placeholder_2+
'sequential_1_lstm_1_while_placeholder_3C
?sequential_1_lstm_1_while_sequential_1_lstm_1_strided_slice_1_0
{sequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensor_0Z
Gsequential_1_lstm_1_while_lstm_cell_81_matmul_readvariableop_resource_0:	�]
Isequential_1_lstm_1_while_lstm_cell_81_matmul_1_readvariableop_resource_0:
��W
Hsequential_1_lstm_1_while_lstm_cell_81_biasadd_readvariableop_resource_0:	�&
"sequential_1_lstm_1_while_identity(
$sequential_1_lstm_1_while_identity_1(
$sequential_1_lstm_1_while_identity_2(
$sequential_1_lstm_1_while_identity_3(
$sequential_1_lstm_1_while_identity_4(
$sequential_1_lstm_1_while_identity_5A
=sequential_1_lstm_1_while_sequential_1_lstm_1_strided_slice_1}
ysequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensorX
Esequential_1_lstm_1_while_lstm_cell_81_matmul_readvariableop_resource:	�[
Gsequential_1_lstm_1_while_lstm_cell_81_matmul_1_readvariableop_resource:
��U
Fsequential_1_lstm_1_while_lstm_cell_81_biasadd_readvariableop_resource:	���=sequential_1/lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOp�<sequential_1/lstm_1/while/lstm_cell_81/MatMul/ReadVariableOp�>sequential_1/lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOp�
Ksequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2M
Ksequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape�
=sequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensor_0%sequential_1_lstm_1_while_placeholderTsequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02?
=sequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem�
<sequential_1/lstm_1/while/lstm_cell_81/MatMul/ReadVariableOpReadVariableOpGsequential_1_lstm_1_while_lstm_cell_81_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02>
<sequential_1/lstm_1/while/lstm_cell_81/MatMul/ReadVariableOp�
-sequential_1/lstm_1/while/lstm_cell_81/MatMulMatMulDsequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0Dsequential_1/lstm_1/while/lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2/
-sequential_1/lstm_1/while/lstm_cell_81/MatMul�
>sequential_1/lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOpIsequential_1_lstm_1_while_lstm_cell_81_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype02@
>sequential_1/lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOp�
/sequential_1/lstm_1/while/lstm_cell_81/MatMul_1MatMul'sequential_1_lstm_1_while_placeholder_2Fsequential_1/lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������21
/sequential_1/lstm_1/while/lstm_cell_81/MatMul_1�
*sequential_1/lstm_1/while/lstm_cell_81/addAddV27sequential_1/lstm_1/while/lstm_cell_81/MatMul:product:09sequential_1/lstm_1/while/lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:����������2,
*sequential_1/lstm_1/while/lstm_cell_81/add�
=sequential_1/lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOpHsequential_1_lstm_1_while_lstm_cell_81_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02?
=sequential_1/lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOp�
.sequential_1/lstm_1/while/lstm_cell_81/BiasAddBiasAdd.sequential_1/lstm_1/while/lstm_cell_81/add:z:0Esequential_1/lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������20
.sequential_1/lstm_1/while/lstm_cell_81/BiasAdd�
6sequential_1/lstm_1/while/lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :28
6sequential_1/lstm_1/while/lstm_cell_81/split/split_dim�
,sequential_1/lstm_1/while/lstm_cell_81/splitSplit?sequential_1/lstm_1/while/lstm_cell_81/split/split_dim:output:07sequential_1/lstm_1/while/lstm_cell_81/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split2.
,sequential_1/lstm_1/while/lstm_cell_81/split�
.sequential_1/lstm_1/while/lstm_cell_81/SigmoidSigmoid5sequential_1/lstm_1/while/lstm_cell_81/split:output:0*
T0*(
_output_shapes
:����������20
.sequential_1/lstm_1/while/lstm_cell_81/Sigmoid�
0sequential_1/lstm_1/while/lstm_cell_81/Sigmoid_1Sigmoid5sequential_1/lstm_1/while/lstm_cell_81/split:output:1*
T0*(
_output_shapes
:����������22
0sequential_1/lstm_1/while/lstm_cell_81/Sigmoid_1�
*sequential_1/lstm_1/while/lstm_cell_81/mulMul4sequential_1/lstm_1/while/lstm_cell_81/Sigmoid_1:y:0'sequential_1_lstm_1_while_placeholder_3*
T0*(
_output_shapes
:����������2,
*sequential_1/lstm_1/while/lstm_cell_81/mul�
0sequential_1/lstm_1/while/lstm_cell_81/Sigmoid_2Sigmoid5sequential_1/lstm_1/while/lstm_cell_81/split:output:2*
T0*(
_output_shapes
:����������22
0sequential_1/lstm_1/while/lstm_cell_81/Sigmoid_2�
,sequential_1/lstm_1/while/lstm_cell_81/mul_1Mul5sequential_1/lstm_1/while/lstm_cell_81/split:output:24sequential_1/lstm_1/while/lstm_cell_81/Sigmoid_2:y:0*
T0*(
_output_shapes
:����������2.
,sequential_1/lstm_1/while/lstm_cell_81/mul_1�
/sequential_1/lstm_1/while/lstm_cell_81/IdentityIdentity0sequential_1/lstm_1/while/lstm_cell_81/mul_1:z:0*
T0*(
_output_shapes
:����������21
/sequential_1/lstm_1/while/lstm_cell_81/Identity�
0sequential_1/lstm_1/while/lstm_cell_81/IdentityN	IdentityN0sequential_1/lstm_1/while/lstm_cell_81/mul_1:z:05sequential_1/lstm_1/while/lstm_cell_81/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-563897*<
_output_shapes*
(:����������:����������22
0sequential_1/lstm_1/while/lstm_cell_81/IdentityN�
,sequential_1/lstm_1/while/lstm_cell_81/mul_2Mul2sequential_1/lstm_1/while/lstm_cell_81/Sigmoid:y:09sequential_1/lstm_1/while/lstm_cell_81/IdentityN:output:0*
T0*(
_output_shapes
:����������2.
,sequential_1/lstm_1/while/lstm_cell_81/mul_2�
,sequential_1/lstm_1/while/lstm_cell_81/add_1AddV2.sequential_1/lstm_1/while/lstm_cell_81/mul:z:00sequential_1/lstm_1/while/lstm_cell_81/mul_2:z:0*
T0*(
_output_shapes
:����������2.
,sequential_1/lstm_1/while/lstm_cell_81/add_1�
0sequential_1/lstm_1/while/lstm_cell_81/Sigmoid_3Sigmoid5sequential_1/lstm_1/while/lstm_cell_81/split:output:3*
T0*(
_output_shapes
:����������22
0sequential_1/lstm_1/while/lstm_cell_81/Sigmoid_3�
0sequential_1/lstm_1/while/lstm_cell_81/Sigmoid_4Sigmoid0sequential_1/lstm_1/while/lstm_cell_81/add_1:z:0*
T0*(
_output_shapes
:����������22
0sequential_1/lstm_1/while/lstm_cell_81/Sigmoid_4�
,sequential_1/lstm_1/while/lstm_cell_81/mul_3Mul0sequential_1/lstm_1/while/lstm_cell_81/add_1:z:04sequential_1/lstm_1/while/lstm_cell_81/Sigmoid_4:y:0*
T0*(
_output_shapes
:����������2.
,sequential_1/lstm_1/while/lstm_cell_81/mul_3�
1sequential_1/lstm_1/while/lstm_cell_81/Identity_1Identity0sequential_1/lstm_1/while/lstm_cell_81/mul_3:z:0*
T0*(
_output_shapes
:����������23
1sequential_1/lstm_1/while/lstm_cell_81/Identity_1�
2sequential_1/lstm_1/while/lstm_cell_81/IdentityN_1	IdentityN0sequential_1/lstm_1/while/lstm_cell_81/mul_3:z:00sequential_1/lstm_1/while/lstm_cell_81/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-563906*<
_output_shapes*
(:����������:����������24
2sequential_1/lstm_1/while/lstm_cell_81/IdentityN_1�
,sequential_1/lstm_1/while/lstm_cell_81/mul_4Mul4sequential_1/lstm_1/while/lstm_cell_81/Sigmoid_3:y:0;sequential_1/lstm_1/while/lstm_cell_81/IdentityN_1:output:0*
T0*(
_output_shapes
:����������2.
,sequential_1/lstm_1/while/lstm_cell_81/mul_4�
>sequential_1/lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_1_lstm_1_while_placeholder_1%sequential_1_lstm_1_while_placeholder0sequential_1/lstm_1/while/lstm_cell_81/mul_4:z:0*
_output_shapes
: *
element_dtype02@
>sequential_1/lstm_1/while/TensorArrayV2Write/TensorListSetItem�
sequential_1/lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_1/lstm_1/while/add/y�
sequential_1/lstm_1/while/addAddV2%sequential_1_lstm_1_while_placeholder(sequential_1/lstm_1/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_1/lstm_1/while/add�
!sequential_1/lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_1/lstm_1/while/add_1/y�
sequential_1/lstm_1/while/add_1AddV2@sequential_1_lstm_1_while_sequential_1_lstm_1_while_loop_counter*sequential_1/lstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
sequential_1/lstm_1/while/add_1�
"sequential_1/lstm_1/while/IdentityIdentity#sequential_1/lstm_1/while/add_1:z:0>^sequential_1/lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_81/MatMul/ReadVariableOp?^sequential_1/lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2$
"sequential_1/lstm_1/while/Identity�
$sequential_1/lstm_1/while/Identity_1IdentityFsequential_1_lstm_1_while_sequential_1_lstm_1_while_maximum_iterations>^sequential_1/lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_81/MatMul/ReadVariableOp?^sequential_1/lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_1/while/Identity_1�
$sequential_1/lstm_1/while/Identity_2Identity!sequential_1/lstm_1/while/add:z:0>^sequential_1/lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_81/MatMul/ReadVariableOp?^sequential_1/lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_1/while/Identity_2�
$sequential_1/lstm_1/while/Identity_3IdentityNsequential_1/lstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^sequential_1/lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_81/MatMul/ReadVariableOp?^sequential_1/lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_1/while/Identity_3�
$sequential_1/lstm_1/while/Identity_4Identity0sequential_1/lstm_1/while/lstm_cell_81/mul_4:z:0>^sequential_1/lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_81/MatMul/ReadVariableOp?^sequential_1/lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:����������2&
$sequential_1/lstm_1/while/Identity_4�
$sequential_1/lstm_1/while/Identity_5Identity0sequential_1/lstm_1/while/lstm_cell_81/add_1:z:0>^sequential_1/lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_81/MatMul/ReadVariableOp?^sequential_1/lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:����������2&
$sequential_1/lstm_1/while/Identity_5"Q
"sequential_1_lstm_1_while_identity+sequential_1/lstm_1/while/Identity:output:0"U
$sequential_1_lstm_1_while_identity_1-sequential_1/lstm_1/while/Identity_1:output:0"U
$sequential_1_lstm_1_while_identity_2-sequential_1/lstm_1/while/Identity_2:output:0"U
$sequential_1_lstm_1_while_identity_3-sequential_1/lstm_1/while/Identity_3:output:0"U
$sequential_1_lstm_1_while_identity_4-sequential_1/lstm_1/while/Identity_4:output:0"U
$sequential_1_lstm_1_while_identity_5-sequential_1/lstm_1/while/Identity_5:output:0"�
Fsequential_1_lstm_1_while_lstm_cell_81_biasadd_readvariableop_resourceHsequential_1_lstm_1_while_lstm_cell_81_biasadd_readvariableop_resource_0"�
Gsequential_1_lstm_1_while_lstm_cell_81_matmul_1_readvariableop_resourceIsequential_1_lstm_1_while_lstm_cell_81_matmul_1_readvariableop_resource_0"�
Esequential_1_lstm_1_while_lstm_cell_81_matmul_readvariableop_resourceGsequential_1_lstm_1_while_lstm_cell_81_matmul_readvariableop_resource_0"�
=sequential_1_lstm_1_while_sequential_1_lstm_1_strided_slice_1?sequential_1_lstm_1_while_sequential_1_lstm_1_strided_slice_1_0"�
ysequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensor{sequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2~
=sequential_1/lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOp=sequential_1/lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOp2|
<sequential_1/lstm_1/while/lstm_cell_81/MatMul/ReadVariableOp<sequential_1/lstm_1/while/lstm_cell_81/MatMul/ReadVariableOp2�
>sequential_1/lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOp>sequential_1/lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOp: 
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
:����������:.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�
�
L__inference_time_distributed_layer_call_and_return_conditional_losses_565487

inputs 
dense_2_565477:@@
dense_2_565479:@
identity��dense_2/StatefulPartitionedCallD
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
strided_slice/stack_2�
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
valueB"����@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:���������@2	
Reshape�
dense_2/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_2_565477dense_2_565479*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_5654762!
dense_2/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
���������2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2
Reshape_1/shape/2�
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape�
	Reshape_1Reshape(dense_2/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :������������������@2
	Reshape_1�
IdentityIdentityReshape_1:output:0 ^dense_2/StatefulPartitionedCall*
T0*4
_output_shapes"
 :������������������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:������������������@: : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������@
 
_user_specified_nameinputs
�
�
while_cond_564464
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_564464___redundant_placeholder04
0while_while_cond_564464___redundant_placeholder14
0while_while_cond_564464___redundant_placeholder24
0while_while_cond_564464___redundant_placeholder3
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
B: : : : :����������:����������: ::::: 
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
:����������:.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�c
�
B__inference_lstm_2_layer_call_and_return_conditional_losses_566085

inputs?
+lstm_cell_82_matmul_readvariableop_resource:
��@
-lstm_cell_82_matmul_1_readvariableop_resource:	@�;
,lstm_cell_82_biasadd_readvariableop_resource:	�
identity��#lstm_cell_82/BiasAdd/ReadVariableOp�"lstm_cell_82/MatMul/ReadVariableOp�$lstm_cell_82/MatMul_1/ReadVariableOp�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:���������@2
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
B :�2
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
zeros_1/packed/1�
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
:���������@2	
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
:����������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_82/MatMul/ReadVariableOpReadVariableOp+lstm_cell_82_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02$
"lstm_cell_82/MatMul/ReadVariableOp�
lstm_cell_82/MatMulMatMulstrided_slice_2:output:0*lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_82/MatMul�
$lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_82_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype02&
$lstm_cell_82/MatMul_1/ReadVariableOp�
lstm_cell_82/MatMul_1MatMulzeros:output:0,lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_82/MatMul_1�
lstm_cell_82/addAddV2lstm_cell_82/MatMul:product:0lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_82/add�
#lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_82_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_82/BiasAdd/ReadVariableOp�
lstm_cell_82/BiasAddBiasAddlstm_cell_82/add:z:0+lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_82/BiasAdd~
lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_82/split/split_dim�
lstm_cell_82/splitSplit%lstm_cell_82/split/split_dim:output:0lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
lstm_cell_82/split�
lstm_cell_82/SigmoidSigmoidlstm_cell_82/split:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Sigmoid�
lstm_cell_82/Sigmoid_1Sigmoidlstm_cell_82/split:output:1*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Sigmoid_1�
lstm_cell_82/mulMullstm_cell_82/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/mul�
lstm_cell_82/Sigmoid_2Sigmoidlstm_cell_82/split:output:2*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Sigmoid_2�
lstm_cell_82/mul_1Mullstm_cell_82/split:output:2lstm_cell_82/Sigmoid_2:y:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/mul_1�
lstm_cell_82/IdentityIdentitylstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Identity�
lstm_cell_82/IdentityN	IdentityNlstm_cell_82/mul_1:z:0lstm_cell_82/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-565971*:
_output_shapes(
&:���������@:���������@2
lstm_cell_82/IdentityN�
lstm_cell_82/mul_2Mullstm_cell_82/Sigmoid:y:0lstm_cell_82/IdentityN:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/mul_2�
lstm_cell_82/add_1AddV2lstm_cell_82/mul:z:0lstm_cell_82/mul_2:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/add_1�
lstm_cell_82/Sigmoid_3Sigmoidlstm_cell_82/split:output:3*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Sigmoid_3�
lstm_cell_82/Sigmoid_4Sigmoidlstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Sigmoid_4�
lstm_cell_82/mul_3Mullstm_cell_82/add_1:z:0lstm_cell_82/Sigmoid_4:y:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/mul_3�
lstm_cell_82/Identity_1Identitylstm_cell_82/mul_3:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Identity_1�
lstm_cell_82/IdentityN_1	IdentityNlstm_cell_82/mul_3:z:0lstm_cell_82/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-565980*:
_output_shapes(
&:���������@:���������@2
lstm_cell_82/IdentityN_1�
lstm_cell_82/mul_4Mullstm_cell_82/Sigmoid_3:y:0!lstm_cell_82/IdentityN_1:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/mul_4�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_82_matmul_readvariableop_resource-lstm_cell_82_matmul_1_readvariableop_resource,lstm_cell_82_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������@:���������@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_565991*
condR
while_cond_565990*K
output_shapes:
8: : : : :���������@:���������@: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime�
IdentityIdentitytranspose_1:y:0$^lstm_cell_82/BiasAdd/ReadVariableOp#^lstm_cell_82/MatMul/ReadVariableOp%^lstm_cell_82/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 2J
#lstm_cell_82/BiasAdd/ReadVariableOp#lstm_cell_82/BiasAdd/ReadVariableOp2H
"lstm_cell_82/MatMul/ReadVariableOp"lstm_cell_82/MatMul/ReadVariableOp2L
$lstm_cell_82/MatMul_1/ReadVariableOp$lstm_cell_82/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�L
�
while_body_565813
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_81_matmul_readvariableop_resource_0:	�I
5while_lstm_cell_81_matmul_1_readvariableop_resource_0:
��C
4while_lstm_cell_81_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_81_matmul_readvariableop_resource:	�G
3while_lstm_cell_81_matmul_1_readvariableop_resource:
��A
2while_lstm_cell_81_biasadd_readvariableop_resource:	���)while/lstm_cell_81/BiasAdd/ReadVariableOp�(while/lstm_cell_81/MatMul/ReadVariableOp�*while/lstm_cell_81/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_81/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_81_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02*
(while/lstm_cell_81/MatMul/ReadVariableOp�
while/lstm_cell_81/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/MatMul�
*while/lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_81_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype02,
*while/lstm_cell_81/MatMul_1/ReadVariableOp�
while/lstm_cell_81/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/MatMul_1�
while/lstm_cell_81/addAddV2#while/lstm_cell_81/MatMul:product:0%while/lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/add�
)while/lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_81_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_81/BiasAdd/ReadVariableOp�
while/lstm_cell_81/BiasAddBiasAddwhile/lstm_cell_81/add:z:01while/lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/BiasAdd�
"while/lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_81/split/split_dim�
while/lstm_cell_81/splitSplit+while/lstm_cell_81/split/split_dim:output:0#while/lstm_cell_81/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split2
while/lstm_cell_81/split�
while/lstm_cell_81/SigmoidSigmoid!while/lstm_cell_81/split:output:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Sigmoid�
while/lstm_cell_81/Sigmoid_1Sigmoid!while/lstm_cell_81/split:output:1*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Sigmoid_1�
while/lstm_cell_81/mulMul while/lstm_cell_81/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/mul�
while/lstm_cell_81/Sigmoid_2Sigmoid!while/lstm_cell_81/split:output:2*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Sigmoid_2�
while/lstm_cell_81/mul_1Mul!while/lstm_cell_81/split:output:2 while/lstm_cell_81/Sigmoid_2:y:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/mul_1�
while/lstm_cell_81/IdentityIdentitywhile/lstm_cell_81/mul_1:z:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Identity�
while/lstm_cell_81/IdentityN	IdentityNwhile/lstm_cell_81/mul_1:z:0!while/lstm_cell_81/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-565855*<
_output_shapes*
(:����������:����������2
while/lstm_cell_81/IdentityN�
while/lstm_cell_81/mul_2Mulwhile/lstm_cell_81/Sigmoid:y:0%while/lstm_cell_81/IdentityN:output:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/mul_2�
while/lstm_cell_81/add_1AddV2while/lstm_cell_81/mul:z:0while/lstm_cell_81/mul_2:z:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/add_1�
while/lstm_cell_81/Sigmoid_3Sigmoid!while/lstm_cell_81/split:output:3*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Sigmoid_3�
while/lstm_cell_81/Sigmoid_4Sigmoidwhile/lstm_cell_81/add_1:z:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Sigmoid_4�
while/lstm_cell_81/mul_3Mulwhile/lstm_cell_81/add_1:z:0 while/lstm_cell_81/Sigmoid_4:y:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/mul_3�
while/lstm_cell_81/Identity_1Identitywhile/lstm_cell_81/mul_3:z:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Identity_1�
while/lstm_cell_81/IdentityN_1	IdentityNwhile/lstm_cell_81/mul_3:z:0while/lstm_cell_81/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-565864*<
_output_shapes*
(:����������:����������2 
while/lstm_cell_81/IdentityN_1�
while/lstm_cell_81/mul_4Mul while/lstm_cell_81/Sigmoid_3:y:0'while/lstm_cell_81/IdentityN_1:output:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/mul_4�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_81/mul_4:z:0*
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
while/add_1�
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_81/mul_4:z:0*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:����������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_81/add_1:z:0*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:����������2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_81_biasadd_readvariableop_resource4while_lstm_cell_81_biasadd_readvariableop_resource_0"l
3while_lstm_cell_81_matmul_1_readvariableop_resource5while_lstm_cell_81_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_81_matmul_readvariableop_resource3while_lstm_cell_81_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2V
)while/lstm_cell_81/BiasAdd/ReadVariableOp)while/lstm_cell_81/BiasAdd/ReadVariableOp2T
(while/lstm_cell_81/MatMul/ReadVariableOp(while/lstm_cell_81/MatMul/ReadVariableOp2X
*while/lstm_cell_81/MatMul_1/ReadVariableOp*while/lstm_cell_81/MatMul_1/ReadVariableOp: 
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
:����������:.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�

�
-__inference_sequential_1_layer_call_fn_566165
lstm_1_input
unknown:	�
	unknown_0:
��
	unknown_1:	�
	unknown_2:
��
	unknown_3:	@�
	unknown_4:	�
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_5661422
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:���������
&
_user_specified_namelstm_1_input
�L
�
while_body_568802
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_82_matmul_readvariableop_resource_0:
��H
5while_lstm_cell_82_matmul_1_readvariableop_resource_0:	@�C
4while_lstm_cell_82_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_82_matmul_readvariableop_resource:
��F
3while_lstm_cell_82_matmul_1_readvariableop_resource:	@�A
2while_lstm_cell_82_biasadd_readvariableop_resource:	���)while/lstm_cell_82/BiasAdd/ReadVariableOp�(while/lstm_cell_82/MatMul/ReadVariableOp�*while/lstm_cell_82/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:����������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_82/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_82_matmul_readvariableop_resource_0* 
_output_shapes
:
��*
dtype02*
(while/lstm_cell_82/MatMul/ReadVariableOp�
while/lstm_cell_82/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_82/MatMul�
*while/lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_82_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype02,
*while/lstm_cell_82/MatMul_1/ReadVariableOp�
while/lstm_cell_82/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_82/MatMul_1�
while/lstm_cell_82/addAddV2#while/lstm_cell_82/MatMul:product:0%while/lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_82/add�
)while/lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_82_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_82/BiasAdd/ReadVariableOp�
while/lstm_cell_82/BiasAddBiasAddwhile/lstm_cell_82/add:z:01while/lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_82/BiasAdd�
"while/lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_82/split/split_dim�
while/lstm_cell_82/splitSplit+while/lstm_cell_82/split/split_dim:output:0#while/lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
while/lstm_cell_82/split�
while/lstm_cell_82/SigmoidSigmoid!while/lstm_cell_82/split:output:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Sigmoid�
while/lstm_cell_82/Sigmoid_1Sigmoid!while/lstm_cell_82/split:output:1*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Sigmoid_1�
while/lstm_cell_82/mulMul while/lstm_cell_82/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/mul�
while/lstm_cell_82/Sigmoid_2Sigmoid!while/lstm_cell_82/split:output:2*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Sigmoid_2�
while/lstm_cell_82/mul_1Mul!while/lstm_cell_82/split:output:2 while/lstm_cell_82/Sigmoid_2:y:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/mul_1�
while/lstm_cell_82/IdentityIdentitywhile/lstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Identity�
while/lstm_cell_82/IdentityN	IdentityNwhile/lstm_cell_82/mul_1:z:0!while/lstm_cell_82/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-568844*:
_output_shapes(
&:���������@:���������@2
while/lstm_cell_82/IdentityN�
while/lstm_cell_82/mul_2Mulwhile/lstm_cell_82/Sigmoid:y:0%while/lstm_cell_82/IdentityN:output:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/mul_2�
while/lstm_cell_82/add_1AddV2while/lstm_cell_82/mul:z:0while/lstm_cell_82/mul_2:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/add_1�
while/lstm_cell_82/Sigmoid_3Sigmoid!while/lstm_cell_82/split:output:3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Sigmoid_3�
while/lstm_cell_82/Sigmoid_4Sigmoidwhile/lstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Sigmoid_4�
while/lstm_cell_82/mul_3Mulwhile/lstm_cell_82/add_1:z:0 while/lstm_cell_82/Sigmoid_4:y:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/mul_3�
while/lstm_cell_82/Identity_1Identitywhile/lstm_cell_82/mul_3:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Identity_1�
while/lstm_cell_82/IdentityN_1	IdentityNwhile/lstm_cell_82/mul_3:z:0while/lstm_cell_82/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-568853*:
_output_shapes(
&:���������@:���������@2 
while/lstm_cell_82/IdentityN_1�
while/lstm_cell_82/mul_4Mul while/lstm_cell_82/Sigmoid_3:y:0'while/lstm_cell_82/IdentityN_1:output:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/mul_4�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_82/mul_4:z:0*
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
while/add_1�
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_82/mul_4:z:0*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_82/add_1:z:0*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_82_biasadd_readvariableop_resource4while_lstm_cell_82_biasadd_readvariableop_resource_0"l
3while_lstm_cell_82_matmul_1_readvariableop_resource5while_lstm_cell_82_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_82_matmul_readvariableop_resource3while_lstm_cell_82_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2V
)while/lstm_cell_82/BiasAdd/ReadVariableOp)while/lstm_cell_82/BiasAdd/ReadVariableOp2T
(while/lstm_cell_82/MatMul/ReadVariableOp(while/lstm_cell_82/MatMul/ReadVariableOp2X
*while/lstm_cell_82/MatMul_1/ReadVariableOp*while/lstm_cell_82/MatMul_1/ReadVariableOp: 
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
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�
�
(__inference_dense_2_layer_call_fn_569548

inputs
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_5654762
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
L__inference_time_distributed_layer_call_and_return_conditional_losses_565535

inputs 
dense_2_565525:@@
dense_2_565527:@
identity��dense_2/StatefulPartitionedCallD
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
strided_slice/stack_2�
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
valueB"����@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:���������@2	
Reshape�
dense_2/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_2_565525dense_2_565527*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_5654762!
dense_2/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
���������2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2
Reshape_1/shape/2�
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape�
	Reshape_1Reshape(dense_2/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :������������������@2
	Reshape_1�
IdentityIdentityReshape_1:output:0 ^dense_2/StatefulPartitionedCall*
T0*4
_output_shapes"
 :������������������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:������������������@: : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������@
 
_user_specified_nameinputs
�
�
'__inference_lstm_1_layer_call_fn_567633
inputs_0
unknown:	�
	unknown_0:
��
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_5645342
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:�������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�X
�

lstm_2_while_body_567119*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3)
%lstm_2_while_lstm_2_strided_slice_1_0e
alstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0N
:lstm_2_while_lstm_cell_82_matmul_readvariableop_resource_0:
��O
<lstm_2_while_lstm_cell_82_matmul_1_readvariableop_resource_0:	@�J
;lstm_2_while_lstm_cell_82_biasadd_readvariableop_resource_0:	�
lstm_2_while_identity
lstm_2_while_identity_1
lstm_2_while_identity_2
lstm_2_while_identity_3
lstm_2_while_identity_4
lstm_2_while_identity_5'
#lstm_2_while_lstm_2_strided_slice_1c
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensorL
8lstm_2_while_lstm_cell_82_matmul_readvariableop_resource:
��M
:lstm_2_while_lstm_cell_82_matmul_1_readvariableop_resource:	@�H
9lstm_2_while_lstm_cell_82_biasadd_readvariableop_resource:	���0lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOp�/lstm_2/while/lstm_cell_82/MatMul/ReadVariableOp�1lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOp�
>lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   2@
>lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape�
0lstm_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0lstm_2_while_placeholderGlstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:����������*
element_dtype022
0lstm_2/while/TensorArrayV2Read/TensorListGetItem�
/lstm_2/while/lstm_cell_82/MatMul/ReadVariableOpReadVariableOp:lstm_2_while_lstm_cell_82_matmul_readvariableop_resource_0* 
_output_shapes
:
��*
dtype021
/lstm_2/while/lstm_cell_82/MatMul/ReadVariableOp�
 lstm_2/while/lstm_cell_82/MatMulMatMul7lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_2/while/lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2"
 lstm_2/while/lstm_cell_82/MatMul�
1lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOp<lstm_2_while_lstm_cell_82_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype023
1lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOp�
"lstm_2/while/lstm_cell_82/MatMul_1MatMullstm_2_while_placeholder_29lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2$
"lstm_2/while/lstm_cell_82/MatMul_1�
lstm_2/while/lstm_cell_82/addAddV2*lstm_2/while/lstm_cell_82/MatMul:product:0,lstm_2/while/lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_2/while/lstm_cell_82/add�
0lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOp;lstm_2_while_lstm_cell_82_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype022
0lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOp�
!lstm_2/while/lstm_cell_82/BiasAddBiasAdd!lstm_2/while/lstm_cell_82/add:z:08lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2#
!lstm_2/while/lstm_cell_82/BiasAdd�
)lstm_2/while/lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2+
)lstm_2/while/lstm_cell_82/split/split_dim�
lstm_2/while/lstm_cell_82/splitSplit2lstm_2/while/lstm_cell_82/split/split_dim:output:0*lstm_2/while/lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2!
lstm_2/while/lstm_cell_82/split�
!lstm_2/while/lstm_cell_82/SigmoidSigmoid(lstm_2/while/lstm_cell_82/split:output:0*
T0*'
_output_shapes
:���������@2#
!lstm_2/while/lstm_cell_82/Sigmoid�
#lstm_2/while/lstm_cell_82/Sigmoid_1Sigmoid(lstm_2/while/lstm_cell_82/split:output:1*
T0*'
_output_shapes
:���������@2%
#lstm_2/while/lstm_cell_82/Sigmoid_1�
lstm_2/while/lstm_cell_82/mulMul'lstm_2/while/lstm_cell_82/Sigmoid_1:y:0lstm_2_while_placeholder_3*
T0*'
_output_shapes
:���������@2
lstm_2/while/lstm_cell_82/mul�
#lstm_2/while/lstm_cell_82/Sigmoid_2Sigmoid(lstm_2/while/lstm_cell_82/split:output:2*
T0*'
_output_shapes
:���������@2%
#lstm_2/while/lstm_cell_82/Sigmoid_2�
lstm_2/while/lstm_cell_82/mul_1Mul(lstm_2/while/lstm_cell_82/split:output:2'lstm_2/while/lstm_cell_82/Sigmoid_2:y:0*
T0*'
_output_shapes
:���������@2!
lstm_2/while/lstm_cell_82/mul_1�
"lstm_2/while/lstm_cell_82/IdentityIdentity#lstm_2/while/lstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:���������@2$
"lstm_2/while/lstm_cell_82/Identity�
#lstm_2/while/lstm_cell_82/IdentityN	IdentityN#lstm_2/while/lstm_cell_82/mul_1:z:0(lstm_2/while/lstm_cell_82/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-567161*:
_output_shapes(
&:���������@:���������@2%
#lstm_2/while/lstm_cell_82/IdentityN�
lstm_2/while/lstm_cell_82/mul_2Mul%lstm_2/while/lstm_cell_82/Sigmoid:y:0,lstm_2/while/lstm_cell_82/IdentityN:output:0*
T0*'
_output_shapes
:���������@2!
lstm_2/while/lstm_cell_82/mul_2�
lstm_2/while/lstm_cell_82/add_1AddV2!lstm_2/while/lstm_cell_82/mul:z:0#lstm_2/while/lstm_cell_82/mul_2:z:0*
T0*'
_output_shapes
:���������@2!
lstm_2/while/lstm_cell_82/add_1�
#lstm_2/while/lstm_cell_82/Sigmoid_3Sigmoid(lstm_2/while/lstm_cell_82/split:output:3*
T0*'
_output_shapes
:���������@2%
#lstm_2/while/lstm_cell_82/Sigmoid_3�
#lstm_2/while/lstm_cell_82/Sigmoid_4Sigmoid#lstm_2/while/lstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:���������@2%
#lstm_2/while/lstm_cell_82/Sigmoid_4�
lstm_2/while/lstm_cell_82/mul_3Mul#lstm_2/while/lstm_cell_82/add_1:z:0'lstm_2/while/lstm_cell_82/Sigmoid_4:y:0*
T0*'
_output_shapes
:���������@2!
lstm_2/while/lstm_cell_82/mul_3�
$lstm_2/while/lstm_cell_82/Identity_1Identity#lstm_2/while/lstm_cell_82/mul_3:z:0*
T0*'
_output_shapes
:���������@2&
$lstm_2/while/lstm_cell_82/Identity_1�
%lstm_2/while/lstm_cell_82/IdentityN_1	IdentityN#lstm_2/while/lstm_cell_82/mul_3:z:0#lstm_2/while/lstm_cell_82/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-567170*:
_output_shapes(
&:���������@:���������@2'
%lstm_2/while/lstm_cell_82/IdentityN_1�
lstm_2/while/lstm_cell_82/mul_4Mul'lstm_2/while/lstm_cell_82/Sigmoid_3:y:0.lstm_2/while/lstm_cell_82/IdentityN_1:output:0*
T0*'
_output_shapes
:���������@2!
lstm_2/while/lstm_cell_82/mul_4�
1lstm_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_2_while_placeholder_1lstm_2_while_placeholder#lstm_2/while/lstm_cell_82/mul_4:z:0*
_output_shapes
: *
element_dtype023
1lstm_2/while/TensorArrayV2Write/TensorListSetItemj
lstm_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/while/add/y�
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
lstm_2/while/add_1/y�
lstm_2/while/add_1AddV2&lstm_2_while_lstm_2_while_loop_counterlstm_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_2/while/add_1�
lstm_2/while/IdentityIdentitylstm_2/while/add_1:z:01^lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_82/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity�
lstm_2/while/Identity_1Identity,lstm_2_while_lstm_2_while_maximum_iterations1^lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_82/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_1�
lstm_2/while/Identity_2Identitylstm_2/while/add:z:01^lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_82/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_2�
lstm_2/while/Identity_3IdentityAlstm_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:01^lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_82/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_3�
lstm_2/while/Identity_4Identity#lstm_2/while/lstm_cell_82/mul_4:z:01^lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_82/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
lstm_2/while/Identity_4�
lstm_2/while/Identity_5Identity#lstm_2/while/lstm_cell_82/add_1:z:01^lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_82/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
lstm_2/while/Identity_5"7
lstm_2_while_identitylstm_2/while/Identity:output:0";
lstm_2_while_identity_1 lstm_2/while/Identity_1:output:0";
lstm_2_while_identity_2 lstm_2/while/Identity_2:output:0";
lstm_2_while_identity_3 lstm_2/while/Identity_3:output:0";
lstm_2_while_identity_4 lstm_2/while/Identity_4:output:0";
lstm_2_while_identity_5 lstm_2/while/Identity_5:output:0"L
#lstm_2_while_lstm_2_strided_slice_1%lstm_2_while_lstm_2_strided_slice_1_0"x
9lstm_2_while_lstm_cell_82_biasadd_readvariableop_resource;lstm_2_while_lstm_cell_82_biasadd_readvariableop_resource_0"z
:lstm_2_while_lstm_cell_82_matmul_1_readvariableop_resource<lstm_2_while_lstm_cell_82_matmul_1_readvariableop_resource_0"v
8lstm_2_while_lstm_cell_82_matmul_readvariableop_resource:lstm_2_while_lstm_cell_82_matmul_readvariableop_resource_0"�
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensoralstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2d
0lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOp0lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOp2b
/lstm_2/while/lstm_cell_82/MatMul/ReadVariableOp/lstm_2/while/lstm_cell_82/MatMul/ReadVariableOp2f
1lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOp1lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOp: 
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
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�"
�
H__inference_lstm_cell_82_layer_call_and_return_conditional_losses_569539

inputs
states_0
states_12
matmul_readvariableop_resource:
��3
 matmul_1_readvariableop_resource:	@�.
biasadd_readvariableop_resource:	�

identity_2

identity_3

identity_4��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������@2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������@2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������@2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:���������@2
	Sigmoid_2f
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*'
_output_shapes
:���������@2
mul_1]
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:���������@2

Identity�
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*,
_gradient_op_typeCustomGradient-569520*:
_output_shapes(
&:���������@:���������@2
	IdentityNh
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*'
_output_shapes
:���������@2
mul_2]
add_1AddV2mul:z:0	mul_2:z:0*
T0*'
_output_shapes
:���������@2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������@2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:���������@2
	Sigmoid_4a
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*'
_output_shapes
:���������@2
mul_3a

Identity_1Identity	mul_3:z:0*
T0*'
_output_shapes
:���������@2

Identity_1�
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-569529*:
_output_shapes(
&:���������@:���������@2
IdentityN_1l
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*'
_output_shapes
:���������@2
mul_4�

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity_2�

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity_3�

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:����������:���������@:���������@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/1
�
�
L__inference_time_distributed_layer_call_and_return_conditional_losses_566112

inputs8
&dense_2_matmul_readvariableop_resource:@@5
'dense_2_biasadd_readvariableop_resource:@
identity��dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:���������@2	
Reshape�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_2/MatMul/ReadVariableOp�
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_2/MatMul�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_2/BiasAdd/ReadVariableOp�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_2/BiasAddy
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_2/Sigmoid�
dense_2/mulMuldense_2/BiasAdd:output:0dense_2/Sigmoid:y:0*
T0*'
_output_shapes
:���������@2
dense_2/muls
dense_2/IdentityIdentitydense_2/mul:z:0*
T0*'
_output_shapes
:���������@2
dense_2/Identity�
dense_2/IdentityN	IdentityNdense_2/mul:z:0dense_2/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-566103*:
_output_shapes(
&:���������@:���������@2
dense_2/IdentityNw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����   @   2
Reshape_1/shape�
	Reshape_1Reshapedense_2/IdentityN:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:���������@2
	Reshape_1�
IdentityIdentityReshape_1:output:0^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*+
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�L
�
while_body_566325
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_82_matmul_readvariableop_resource_0:
��H
5while_lstm_cell_82_matmul_1_readvariableop_resource_0:	@�C
4while_lstm_cell_82_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_82_matmul_readvariableop_resource:
��F
3while_lstm_cell_82_matmul_1_readvariableop_resource:	@�A
2while_lstm_cell_82_biasadd_readvariableop_resource:	���)while/lstm_cell_82/BiasAdd/ReadVariableOp�(while/lstm_cell_82/MatMul/ReadVariableOp�*while/lstm_cell_82/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:����������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_82/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_82_matmul_readvariableop_resource_0* 
_output_shapes
:
��*
dtype02*
(while/lstm_cell_82/MatMul/ReadVariableOp�
while/lstm_cell_82/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_82/MatMul�
*while/lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_82_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype02,
*while/lstm_cell_82/MatMul_1/ReadVariableOp�
while/lstm_cell_82/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_82/MatMul_1�
while/lstm_cell_82/addAddV2#while/lstm_cell_82/MatMul:product:0%while/lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_82/add�
)while/lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_82_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_82/BiasAdd/ReadVariableOp�
while/lstm_cell_82/BiasAddBiasAddwhile/lstm_cell_82/add:z:01while/lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_82/BiasAdd�
"while/lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_82/split/split_dim�
while/lstm_cell_82/splitSplit+while/lstm_cell_82/split/split_dim:output:0#while/lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
while/lstm_cell_82/split�
while/lstm_cell_82/SigmoidSigmoid!while/lstm_cell_82/split:output:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Sigmoid�
while/lstm_cell_82/Sigmoid_1Sigmoid!while/lstm_cell_82/split:output:1*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Sigmoid_1�
while/lstm_cell_82/mulMul while/lstm_cell_82/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/mul�
while/lstm_cell_82/Sigmoid_2Sigmoid!while/lstm_cell_82/split:output:2*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Sigmoid_2�
while/lstm_cell_82/mul_1Mul!while/lstm_cell_82/split:output:2 while/lstm_cell_82/Sigmoid_2:y:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/mul_1�
while/lstm_cell_82/IdentityIdentitywhile/lstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Identity�
while/lstm_cell_82/IdentityN	IdentityNwhile/lstm_cell_82/mul_1:z:0!while/lstm_cell_82/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-566367*:
_output_shapes(
&:���������@:���������@2
while/lstm_cell_82/IdentityN�
while/lstm_cell_82/mul_2Mulwhile/lstm_cell_82/Sigmoid:y:0%while/lstm_cell_82/IdentityN:output:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/mul_2�
while/lstm_cell_82/add_1AddV2while/lstm_cell_82/mul:z:0while/lstm_cell_82/mul_2:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/add_1�
while/lstm_cell_82/Sigmoid_3Sigmoid!while/lstm_cell_82/split:output:3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Sigmoid_3�
while/lstm_cell_82/Sigmoid_4Sigmoidwhile/lstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Sigmoid_4�
while/lstm_cell_82/mul_3Mulwhile/lstm_cell_82/add_1:z:0 while/lstm_cell_82/Sigmoid_4:y:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/mul_3�
while/lstm_cell_82/Identity_1Identitywhile/lstm_cell_82/mul_3:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Identity_1�
while/lstm_cell_82/IdentityN_1	IdentityNwhile/lstm_cell_82/mul_3:z:0while/lstm_cell_82/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-566376*:
_output_shapes(
&:���������@:���������@2 
while/lstm_cell_82/IdentityN_1�
while/lstm_cell_82/mul_4Mul while/lstm_cell_82/Sigmoid_3:y:0'while/lstm_cell_82/IdentityN_1:output:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/mul_4�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_82/mul_4:z:0*
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
while/add_1�
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_82/mul_4:z:0*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_82/add_1:z:0*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_82_biasadd_readvariableop_resource4while_lstm_cell_82_biasadd_readvariableop_resource_0"l
3while_lstm_cell_82_matmul_1_readvariableop_resource5while_lstm_cell_82_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_82_matmul_readvariableop_resource3while_lstm_cell_82_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2V
)while/lstm_cell_82/BiasAdd/ReadVariableOp)while/lstm_cell_82/BiasAdd/ReadVariableOp2T
(while/lstm_cell_82/MatMul/ReadVariableOp(while/lstm_cell_82/MatMul/ReadVariableOp2X
*while/lstm_cell_82/MatMul_1/ReadVariableOp*while/lstm_cell_82/MatMul_1/ReadVariableOp: 
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
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�

�
lstm_2_while_cond_567118*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3,
(lstm_2_while_less_lstm_2_strided_slice_1B
>lstm_2_while_lstm_2_while_cond_567118___redundant_placeholder0B
>lstm_2_while_lstm_2_while_cond_567118___redundant_placeholder1B
>lstm_2_while_lstm_2_while_cond_567118___redundant_placeholder2B
>lstm_2_while_lstm_2_while_cond_567118___redundant_placeholder3
lstm_2_while_identity
�
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
@: : : : :���������@:���������@: ::::: 
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
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_568801
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_568801___redundant_placeholder04
0while_while_cond_568801___redundant_placeholder14
0while_while_cond_568801___redundant_placeholder24
0while_while_cond_568801___redundant_placeholder3
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
@: : : : :���������@:���������@: ::::: 
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
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�
�
3__inference_time_distributed_1_layer_call_fn_569206

inputs
unknown:@
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_5656262
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:������������������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������@
 
_user_specified_nameinputs
�

�
-__inference_sequential_1_layer_call_fn_566728
lstm_1_input
unknown:	�
	unknown_0:
��
	unknown_1:	�
	unknown_2:
��
	unknown_3:	@�
	unknown_4:	�
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_5666802
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:���������
&
_user_specified_namelstm_1_input
�E
�
B__inference_lstm_2_layer_call_and_return_conditional_losses_564964

inputs'
lstm_cell_82_564882:
��&
lstm_cell_82_564884:	@�"
lstm_cell_82_564886:	�
identity��$lstm_cell_82/StatefulPartitionedCall�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:���������@2
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
B :�2
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
zeros_1/packed/1�
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
:���������@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:�������������������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
strided_slice_2�
$lstm_cell_82/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_82_564882lstm_cell_82_564884lstm_cell_82_564886*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������@:���������@:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_82_layer_call_and_return_conditional_losses_5648812&
$lstm_cell_82/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_82_564882lstm_cell_82_564884lstm_cell_82_564886*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������@:���������@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_564895*
condR
while_cond_564894*K
output_shapes:
8: : : : :���������@:���������@: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime�
IdentityIdentitytranspose_1:y:0%^lstm_cell_82/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :������������������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':�������������������: : : 2L
$lstm_cell_82/StatefulPartitionedCall$lstm_cell_82/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:�������������������
 
_user_specified_nameinputs
�"
�
H__inference_lstm_cell_81_layer_call_and_return_conditional_losses_569379

inputs
states_0
states_11
matmul_readvariableop_resource:	�4
 matmul_1_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�

identity_2

identity_3

identity_4��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:����������2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:����������2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:����������2
muld
	Sigmoid_2Sigmoidsplit:output:2*
T0*(
_output_shapes
:����������2
	Sigmoid_2g
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*(
_output_shapes
:����������2
mul_1^
IdentityIdentity	mul_1:z:0*
T0*(
_output_shapes
:����������2

Identity�
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*,
_gradient_op_typeCustomGradient-569360*<
_output_shapes*
(:����������:����������2
	IdentityNi
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*(
_output_shapes
:����������2
mul_2^
add_1AddV2mul:z:0	mul_2:z:0*
T0*(
_output_shapes
:����������2
add_1d
	Sigmoid_3Sigmoidsplit:output:3*
T0*(
_output_shapes
:����������2
	Sigmoid_3_
	Sigmoid_4Sigmoid	add_1:z:0*
T0*(
_output_shapes
:����������2
	Sigmoid_4b
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*(
_output_shapes
:����������2
mul_3b

Identity_1Identity	mul_3:z:0*
T0*(
_output_shapes
:����������2

Identity_1�
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-569369*<
_output_shapes*
(:����������:����������2
IdentityN_1m
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*(
_output_shapes
:����������2
mul_4�

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity_2�

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity_3�

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:���������:����������:����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:RN
(
_output_shapes
:����������
"
_user_specified_name
states/0:RN
(
_output_shapes
:����������
"
_user_specified_name
states/1
�"
�
H__inference_lstm_cell_81_layer_call_and_return_conditional_losses_564231

inputs

states
states_11
matmul_readvariableop_resource:	�4
 matmul_1_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�

identity_2

identity_3

identity_4��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:����������2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:����������2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:����������2
muld
	Sigmoid_2Sigmoidsplit:output:2*
T0*(
_output_shapes
:����������2
	Sigmoid_2g
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*(
_output_shapes
:����������2
mul_1^
IdentityIdentity	mul_1:z:0*
T0*(
_output_shapes
:����������2

Identity�
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*,
_gradient_op_typeCustomGradient-564212*<
_output_shapes*
(:����������:����������2
	IdentityNi
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*(
_output_shapes
:����������2
mul_2^
add_1AddV2mul:z:0	mul_2:z:0*
T0*(
_output_shapes
:����������2
add_1d
	Sigmoid_3Sigmoidsplit:output:3*
T0*(
_output_shapes
:����������2
	Sigmoid_3_
	Sigmoid_4Sigmoid	add_1:z:0*
T0*(
_output_shapes
:����������2
	Sigmoid_4b
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*(
_output_shapes
:����������2
mul_3b

Identity_1Identity	mul_3:z:0*
T0*(
_output_shapes
:����������2

Identity_1�
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-564221*<
_output_shapes*
(:����������:����������2
IdentityN_1m
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*(
_output_shapes
:����������2
mul_4�

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity_2�

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity_3�

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:���������:����������:����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_namestates:PL
(
_output_shapes
:����������
 
_user_specified_namestates
�
�
while_cond_565812
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_565812___redundant_placeholder04
0while_while_cond_565812___redundant_placeholder14
0while_while_cond_565812___redundant_placeholder24
0while_while_cond_565812___redundant_placeholder3
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
B: : : : :����������:����������: ::::: 
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
:����������:.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
�
3__inference_time_distributed_1_layer_call_fn_569233

inputs
unknown:@
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_5661902
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�c
�
B__inference_lstm_2_layer_call_and_return_conditional_losses_566419

inputs?
+lstm_cell_82_matmul_readvariableop_resource:
��@
-lstm_cell_82_matmul_1_readvariableop_resource:	@�;
,lstm_cell_82_biasadd_readvariableop_resource:	�
identity��#lstm_cell_82/BiasAdd/ReadVariableOp�"lstm_cell_82/MatMul/ReadVariableOp�$lstm_cell_82/MatMul_1/ReadVariableOp�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:���������@2
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
B :�2
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
zeros_1/packed/1�
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
:���������@2	
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
:����������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_82/MatMul/ReadVariableOpReadVariableOp+lstm_cell_82_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02$
"lstm_cell_82/MatMul/ReadVariableOp�
lstm_cell_82/MatMulMatMulstrided_slice_2:output:0*lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_82/MatMul�
$lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_82_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype02&
$lstm_cell_82/MatMul_1/ReadVariableOp�
lstm_cell_82/MatMul_1MatMulzeros:output:0,lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_82/MatMul_1�
lstm_cell_82/addAddV2lstm_cell_82/MatMul:product:0lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_82/add�
#lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_82_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_82/BiasAdd/ReadVariableOp�
lstm_cell_82/BiasAddBiasAddlstm_cell_82/add:z:0+lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_82/BiasAdd~
lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_82/split/split_dim�
lstm_cell_82/splitSplit%lstm_cell_82/split/split_dim:output:0lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
lstm_cell_82/split�
lstm_cell_82/SigmoidSigmoidlstm_cell_82/split:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Sigmoid�
lstm_cell_82/Sigmoid_1Sigmoidlstm_cell_82/split:output:1*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Sigmoid_1�
lstm_cell_82/mulMullstm_cell_82/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/mul�
lstm_cell_82/Sigmoid_2Sigmoidlstm_cell_82/split:output:2*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Sigmoid_2�
lstm_cell_82/mul_1Mullstm_cell_82/split:output:2lstm_cell_82/Sigmoid_2:y:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/mul_1�
lstm_cell_82/IdentityIdentitylstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Identity�
lstm_cell_82/IdentityN	IdentityNlstm_cell_82/mul_1:z:0lstm_cell_82/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-566305*:
_output_shapes(
&:���������@:���������@2
lstm_cell_82/IdentityN�
lstm_cell_82/mul_2Mullstm_cell_82/Sigmoid:y:0lstm_cell_82/IdentityN:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/mul_2�
lstm_cell_82/add_1AddV2lstm_cell_82/mul:z:0lstm_cell_82/mul_2:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/add_1�
lstm_cell_82/Sigmoid_3Sigmoidlstm_cell_82/split:output:3*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Sigmoid_3�
lstm_cell_82/Sigmoid_4Sigmoidlstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Sigmoid_4�
lstm_cell_82/mul_3Mullstm_cell_82/add_1:z:0lstm_cell_82/Sigmoid_4:y:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/mul_3�
lstm_cell_82/Identity_1Identitylstm_cell_82/mul_3:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/Identity_1�
lstm_cell_82/IdentityN_1	IdentityNlstm_cell_82/mul_3:z:0lstm_cell_82/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-566314*:
_output_shapes(
&:���������@:���������@2
lstm_cell_82/IdentityN_1�
lstm_cell_82/mul_4Mullstm_cell_82/Sigmoid_3:y:0!lstm_cell_82/IdentityN_1:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_82/mul_4�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_82_matmul_readvariableop_resource-lstm_cell_82_matmul_1_readvariableop_resource,lstm_cell_82_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������@:���������@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_566325*
condR
while_cond_566324*K
output_shapes:
8: : : : :���������@:���������@: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime�
IdentityIdentitytranspose_1:y:0$^lstm_cell_82/BiasAdd/ReadVariableOp#^lstm_cell_82/MatMul/ReadVariableOp%^lstm_cell_82/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 2J
#lstm_cell_82/BiasAdd/ReadVariableOp#lstm_cell_82/BiasAdd/ReadVariableOp2H
"lstm_cell_82/MatMul/ReadVariableOp"lstm_cell_82/MatMul/ReadVariableOp2L
$lstm_cell_82/MatMul_1/ReadVariableOp$lstm_cell_82/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
H__inference_sequential_1_layer_call_and_return_conditional_losses_566760
lstm_1_input 
lstm_1_566731:	�!
lstm_1_566733:
��
lstm_1_566735:	�!
lstm_2_566738:
�� 
lstm_2_566740:	@�
lstm_2_566742:	�)
time_distributed_566745:@@%
time_distributed_566747:@+
time_distributed_1_566752:@'
time_distributed_1_566754:
identity��lstm_1/StatefulPartitionedCall�lstm_2/StatefulPartitionedCall�(time_distributed/StatefulPartitionedCall�*time_distributed_1/StatefulPartitionedCall�
lstm_1/StatefulPartitionedCallStatefulPartitionedCalllstm_1_inputlstm_1_566731lstm_1_566733lstm_1_566735*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_5659072 
lstm_1/StatefulPartitionedCall�
lstm_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0lstm_2_566738lstm_2_566740lstm_2_566742*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_5660852 
lstm_2/StatefulPartitionedCall�
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0time_distributed_566745time_distributed_566747*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_5661122*
(time_distributed/StatefulPartitionedCall�
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2 
time_distributed/Reshape/shape�
time_distributed/ReshapeReshape'lstm_2/StatefulPartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
time_distributed/Reshape�
*time_distributed_1/StatefulPartitionedCallStatefulPartitionedCall1time_distributed/StatefulPartitionedCall:output:0time_distributed_1_566752time_distributed_1_566754*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_5661332,
*time_distributed_1/StatefulPartitionedCall�
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2"
 time_distributed_1/Reshape/shape�
time_distributed_1/ReshapeReshape1time_distributed/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
time_distributed_1/Reshape�
IdentityIdentity3time_distributed_1/StatefulPartitionedCall:output:0^lstm_1/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_1/StatefulPartitionedCall*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : 2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_1/StatefulPartitionedCall*time_distributed_1/StatefulPartitionedCall:Y U
+
_output_shapes
:���������
&
_user_specified_namelstm_1_input
�
�
3__inference_time_distributed_1_layer_call_fn_569224

inputs
unknown:@
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_5661332
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_565626

inputs 
dense_3_565616:@
dense_3_565618:
identity��dense_3/StatefulPartitionedCallD
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
strided_slice/stack_2�
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
valueB"����@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:���������@2	
Reshape�
dense_3/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_3_565616dense_3_565618*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_5656152!
dense_3/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
���������2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2�
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape�
	Reshape_1Reshape(dense_3/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :������������������2
	Reshape_1�
IdentityIdentityReshape_1:output:0 ^dense_3/StatefulPartitionedCall*
T0*4
_output_shapes"
 :������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:������������������@: : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������@
 
_user_specified_nameinputs
��
�

H__inference_sequential_1_layer_call_and_return_conditional_losses_567243

inputsE
2lstm_1_lstm_cell_81_matmul_readvariableop_resource:	�H
4lstm_1_lstm_cell_81_matmul_1_readvariableop_resource:
��B
3lstm_1_lstm_cell_81_biasadd_readvariableop_resource:	�F
2lstm_2_lstm_cell_82_matmul_readvariableop_resource:
��G
4lstm_2_lstm_cell_82_matmul_1_readvariableop_resource:	@�B
3lstm_2_lstm_cell_82_biasadd_readvariableop_resource:	�I
7time_distributed_dense_2_matmul_readvariableop_resource:@@F
8time_distributed_dense_2_biasadd_readvariableop_resource:@K
9time_distributed_1_dense_3_matmul_readvariableop_resource:@H
:time_distributed_1_dense_3_biasadd_readvariableop_resource:
identity��*lstm_1/lstm_cell_81/BiasAdd/ReadVariableOp�)lstm_1/lstm_cell_81/MatMul/ReadVariableOp�+lstm_1/lstm_cell_81/MatMul_1/ReadVariableOp�lstm_1/while�*lstm_2/lstm_cell_82/BiasAdd/ReadVariableOp�)lstm_2/lstm_cell_82/MatMul/ReadVariableOp�+lstm_2/lstm_cell_82/MatMul_1/ReadVariableOp�lstm_2/while�/time_distributed/dense_2/BiasAdd/ReadVariableOp�.time_distributed/dense_2/MatMul/ReadVariableOp�1time_distributed_1/dense_3/BiasAdd/ReadVariableOp�0time_distributed_1/dense_3/MatMul/ReadVariableOpR
lstm_1/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_1/Shape�
lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice/stack�
lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_1/strided_slice/stack_1�
lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_1/strided_slice/stack_2�
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
B :�2
lstm_1/zeros/mul/y�
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
B :�2
lstm_1/zeros/Less/y�
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
B :�2
lstm_1/zeros/packed/1�
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
lstm_1/zeros/Const�
lstm_1/zerosFilllstm_1/zeros/packed:output:0lstm_1/zeros/Const:output:0*
T0*(
_output_shapes
:����������2
lstm_1/zeroso
lstm_1/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_1/zeros_1/mul/y�
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
B :�2
lstm_1/zeros_1/Less/y�
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
B :�2
lstm_1/zeros_1/packed/1�
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
lstm_1/zeros_1/Const�
lstm_1/zeros_1Filllstm_1/zeros_1/packed:output:0lstm_1/zeros_1/Const:output:0*
T0*(
_output_shapes
:����������2
lstm_1/zeros_1�
lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_1/transpose/perm�
lstm_1/transpose	Transposeinputslstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:���������2
lstm_1/transposed
lstm_1/Shape_1Shapelstm_1/transpose:y:0*
T0*
_output_shapes
:2
lstm_1/Shape_1�
lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice_1/stack�
lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_1/stack_1�
lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_1/stack_2�
lstm_1/strided_slice_1StridedSlicelstm_1/Shape_1:output:0%lstm_1/strided_slice_1/stack:output:0'lstm_1/strided_slice_1/stack_1:output:0'lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_1/strided_slice_1�
"lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2$
"lstm_1/TensorArrayV2/element_shape�
lstm_1/TensorArrayV2TensorListReserve+lstm_1/TensorArrayV2/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_1/TensorArrayV2�
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2>
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape�
.lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_1/transpose:y:0Elstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_1/TensorArrayUnstack/TensorListFromTensor�
lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice_2/stack�
lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_2/stack_1�
lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_2/stack_2�
lstm_1/strided_slice_2StridedSlicelstm_1/transpose:y:0%lstm_1/strided_slice_2/stack:output:0'lstm_1/strided_slice_2/stack_1:output:0'lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
lstm_1/strided_slice_2�
)lstm_1/lstm_cell_81/MatMul/ReadVariableOpReadVariableOp2lstm_1_lstm_cell_81_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02+
)lstm_1/lstm_cell_81/MatMul/ReadVariableOp�
lstm_1/lstm_cell_81/MatMulMatMullstm_1/strided_slice_2:output:01lstm_1/lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_1/lstm_cell_81/MatMul�
+lstm_1/lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOp4lstm_1_lstm_cell_81_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02-
+lstm_1/lstm_cell_81/MatMul_1/ReadVariableOp�
lstm_1/lstm_cell_81/MatMul_1MatMullstm_1/zeros:output:03lstm_1/lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_1/lstm_cell_81/MatMul_1�
lstm_1/lstm_cell_81/addAddV2$lstm_1/lstm_cell_81/MatMul:product:0&lstm_1/lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_1/lstm_cell_81/add�
*lstm_1/lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOp3lstm_1_lstm_cell_81_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02,
*lstm_1/lstm_cell_81/BiasAdd/ReadVariableOp�
lstm_1/lstm_cell_81/BiasAddBiasAddlstm_1/lstm_cell_81/add:z:02lstm_1/lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_1/lstm_cell_81/BiasAdd�
#lstm_1/lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#lstm_1/lstm_cell_81/split/split_dim�
lstm_1/lstm_cell_81/splitSplit,lstm_1/lstm_cell_81/split/split_dim:output:0$lstm_1/lstm_cell_81/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split2
lstm_1/lstm_cell_81/split�
lstm_1/lstm_cell_81/SigmoidSigmoid"lstm_1/lstm_cell_81/split:output:0*
T0*(
_output_shapes
:����������2
lstm_1/lstm_cell_81/Sigmoid�
lstm_1/lstm_cell_81/Sigmoid_1Sigmoid"lstm_1/lstm_cell_81/split:output:1*
T0*(
_output_shapes
:����������2
lstm_1/lstm_cell_81/Sigmoid_1�
lstm_1/lstm_cell_81/mulMul!lstm_1/lstm_cell_81/Sigmoid_1:y:0lstm_1/zeros_1:output:0*
T0*(
_output_shapes
:����������2
lstm_1/lstm_cell_81/mul�
lstm_1/lstm_cell_81/Sigmoid_2Sigmoid"lstm_1/lstm_cell_81/split:output:2*
T0*(
_output_shapes
:����������2
lstm_1/lstm_cell_81/Sigmoid_2�
lstm_1/lstm_cell_81/mul_1Mul"lstm_1/lstm_cell_81/split:output:2!lstm_1/lstm_cell_81/Sigmoid_2:y:0*
T0*(
_output_shapes
:����������2
lstm_1/lstm_cell_81/mul_1�
lstm_1/lstm_cell_81/IdentityIdentitylstm_1/lstm_cell_81/mul_1:z:0*
T0*(
_output_shapes
:����������2
lstm_1/lstm_cell_81/Identity�
lstm_1/lstm_cell_81/IdentityN	IdentityNlstm_1/lstm_cell_81/mul_1:z:0"lstm_1/lstm_cell_81/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-566932*<
_output_shapes*
(:����������:����������2
lstm_1/lstm_cell_81/IdentityN�
lstm_1/lstm_cell_81/mul_2Mullstm_1/lstm_cell_81/Sigmoid:y:0&lstm_1/lstm_cell_81/IdentityN:output:0*
T0*(
_output_shapes
:����������2
lstm_1/lstm_cell_81/mul_2�
lstm_1/lstm_cell_81/add_1AddV2lstm_1/lstm_cell_81/mul:z:0lstm_1/lstm_cell_81/mul_2:z:0*
T0*(
_output_shapes
:����������2
lstm_1/lstm_cell_81/add_1�
lstm_1/lstm_cell_81/Sigmoid_3Sigmoid"lstm_1/lstm_cell_81/split:output:3*
T0*(
_output_shapes
:����������2
lstm_1/lstm_cell_81/Sigmoid_3�
lstm_1/lstm_cell_81/Sigmoid_4Sigmoidlstm_1/lstm_cell_81/add_1:z:0*
T0*(
_output_shapes
:����������2
lstm_1/lstm_cell_81/Sigmoid_4�
lstm_1/lstm_cell_81/mul_3Mullstm_1/lstm_cell_81/add_1:z:0!lstm_1/lstm_cell_81/Sigmoid_4:y:0*
T0*(
_output_shapes
:����������2
lstm_1/lstm_cell_81/mul_3�
lstm_1/lstm_cell_81/Identity_1Identitylstm_1/lstm_cell_81/mul_3:z:0*
T0*(
_output_shapes
:����������2 
lstm_1/lstm_cell_81/Identity_1�
lstm_1/lstm_cell_81/IdentityN_1	IdentityNlstm_1/lstm_cell_81/mul_3:z:0lstm_1/lstm_cell_81/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-566941*<
_output_shapes*
(:����������:����������2!
lstm_1/lstm_cell_81/IdentityN_1�
lstm_1/lstm_cell_81/mul_4Mul!lstm_1/lstm_cell_81/Sigmoid_3:y:0(lstm_1/lstm_cell_81/IdentityN_1:output:0*
T0*(
_output_shapes
:����������2
lstm_1/lstm_cell_81/mul_4�
$lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   2&
$lstm_1/TensorArrayV2_1/element_shape�
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
lstm_1/time�
lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2!
lstm_1/while/maximum_iterationsx
lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_1/while/loop_counter�
lstm_1/whileWhile"lstm_1/while/loop_counter:output:0(lstm_1/while/maximum_iterations:output:0lstm_1/time:output:0lstm_1/TensorArrayV2_1:handle:0lstm_1/zeros:output:0lstm_1/zeros_1:output:0lstm_1/strided_slice_1:output:0>lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_1_lstm_cell_81_matmul_readvariableop_resource4lstm_1_lstm_cell_81_matmul_1_readvariableop_resource3lstm_1_lstm_cell_81_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*$
bodyR
lstm_1_while_body_566952*$
condR
lstm_1_while_cond_566951*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations 2
lstm_1/while�
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   29
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shape�
)lstm_1/TensorArrayV2Stack/TensorListStackTensorListStacklstm_1/while:output:3@lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype02+
)lstm_1/TensorArrayV2Stack/TensorListStack�
lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
lstm_1/strided_slice_3/stack�
lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_1/strided_slice_3/stack_1�
lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_3/stack_2�
lstm_1/strided_slice_3StridedSlice2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_1/strided_slice_3/stack:output:0'lstm_1/strided_slice_3/stack_1:output:0'lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
lstm_1/strided_slice_3�
lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_1/transpose_1/perm�
lstm_1/transpose_1	Transpose2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:����������2
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
lstm_2/Shape�
lstm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice/stack�
lstm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_2/strided_slice/stack_1�
lstm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_2/strided_slice/stack_2�
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
lstm_2/zeros/mul/y�
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
B :�2
lstm_2/zeros/Less/y�
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
lstm_2/zeros/packed/1�
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
lstm_2/zeros/Const�
lstm_2/zerosFilllstm_2/zeros/packed:output:0lstm_2/zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
lstm_2/zerosn
lstm_2/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_2/zeros_1/mul/y�
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
B :�2
lstm_2/zeros_1/Less/y�
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
lstm_2/zeros_1/packed/1�
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
lstm_2/zeros_1/Const�
lstm_2/zeros_1Filllstm_2/zeros_1/packed:output:0lstm_2/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@2
lstm_2/zeros_1�
lstm_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_2/transpose/perm�
lstm_2/transpose	Transposelstm_1/transpose_1:y:0lstm_2/transpose/perm:output:0*
T0*,
_output_shapes
:����������2
lstm_2/transposed
lstm_2/Shape_1Shapelstm_2/transpose:y:0*
T0*
_output_shapes
:2
lstm_2/Shape_1�
lstm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice_1/stack�
lstm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_1/stack_1�
lstm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_1/stack_2�
lstm_2/strided_slice_1StridedSlicelstm_2/Shape_1:output:0%lstm_2/strided_slice_1/stack:output:0'lstm_2/strided_slice_1/stack_1:output:0'lstm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_2/strided_slice_1�
"lstm_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2$
"lstm_2/TensorArrayV2/element_shape�
lstm_2/TensorArrayV2TensorListReserve+lstm_2/TensorArrayV2/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_2/TensorArrayV2�
<lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   2>
<lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape�
.lstm_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_2/transpose:y:0Elstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_2/TensorArrayUnstack/TensorListFromTensor�
lstm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice_2/stack�
lstm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_2/stack_1�
lstm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_2/stack_2�
lstm_2/strided_slice_2StridedSlicelstm_2/transpose:y:0%lstm_2/strided_slice_2/stack:output:0'lstm_2/strided_slice_2/stack_1:output:0'lstm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
lstm_2/strided_slice_2�
)lstm_2/lstm_cell_82/MatMul/ReadVariableOpReadVariableOp2lstm_2_lstm_cell_82_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02+
)lstm_2/lstm_cell_82/MatMul/ReadVariableOp�
lstm_2/lstm_cell_82/MatMulMatMullstm_2/strided_slice_2:output:01lstm_2/lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_2/lstm_cell_82/MatMul�
+lstm_2/lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOp4lstm_2_lstm_cell_82_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype02-
+lstm_2/lstm_cell_82/MatMul_1/ReadVariableOp�
lstm_2/lstm_cell_82/MatMul_1MatMullstm_2/zeros:output:03lstm_2/lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_2/lstm_cell_82/MatMul_1�
lstm_2/lstm_cell_82/addAddV2$lstm_2/lstm_cell_82/MatMul:product:0&lstm_2/lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_2/lstm_cell_82/add�
*lstm_2/lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOp3lstm_2_lstm_cell_82_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02,
*lstm_2/lstm_cell_82/BiasAdd/ReadVariableOp�
lstm_2/lstm_cell_82/BiasAddBiasAddlstm_2/lstm_cell_82/add:z:02lstm_2/lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_2/lstm_cell_82/BiasAdd�
#lstm_2/lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#lstm_2/lstm_cell_82/split/split_dim�
lstm_2/lstm_cell_82/splitSplit,lstm_2/lstm_cell_82/split/split_dim:output:0$lstm_2/lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
lstm_2/lstm_cell_82/split�
lstm_2/lstm_cell_82/SigmoidSigmoid"lstm_2/lstm_cell_82/split:output:0*
T0*'
_output_shapes
:���������@2
lstm_2/lstm_cell_82/Sigmoid�
lstm_2/lstm_cell_82/Sigmoid_1Sigmoid"lstm_2/lstm_cell_82/split:output:1*
T0*'
_output_shapes
:���������@2
lstm_2/lstm_cell_82/Sigmoid_1�
lstm_2/lstm_cell_82/mulMul!lstm_2/lstm_cell_82/Sigmoid_1:y:0lstm_2/zeros_1:output:0*
T0*'
_output_shapes
:���������@2
lstm_2/lstm_cell_82/mul�
lstm_2/lstm_cell_82/Sigmoid_2Sigmoid"lstm_2/lstm_cell_82/split:output:2*
T0*'
_output_shapes
:���������@2
lstm_2/lstm_cell_82/Sigmoid_2�
lstm_2/lstm_cell_82/mul_1Mul"lstm_2/lstm_cell_82/split:output:2!lstm_2/lstm_cell_82/Sigmoid_2:y:0*
T0*'
_output_shapes
:���������@2
lstm_2/lstm_cell_82/mul_1�
lstm_2/lstm_cell_82/IdentityIdentitylstm_2/lstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_2/lstm_cell_82/Identity�
lstm_2/lstm_cell_82/IdentityN	IdentityNlstm_2/lstm_cell_82/mul_1:z:0"lstm_2/lstm_cell_82/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-567099*:
_output_shapes(
&:���������@:���������@2
lstm_2/lstm_cell_82/IdentityN�
lstm_2/lstm_cell_82/mul_2Mullstm_2/lstm_cell_82/Sigmoid:y:0&lstm_2/lstm_cell_82/IdentityN:output:0*
T0*'
_output_shapes
:���������@2
lstm_2/lstm_cell_82/mul_2�
lstm_2/lstm_cell_82/add_1AddV2lstm_2/lstm_cell_82/mul:z:0lstm_2/lstm_cell_82/mul_2:z:0*
T0*'
_output_shapes
:���������@2
lstm_2/lstm_cell_82/add_1�
lstm_2/lstm_cell_82/Sigmoid_3Sigmoid"lstm_2/lstm_cell_82/split:output:3*
T0*'
_output_shapes
:���������@2
lstm_2/lstm_cell_82/Sigmoid_3�
lstm_2/lstm_cell_82/Sigmoid_4Sigmoidlstm_2/lstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_2/lstm_cell_82/Sigmoid_4�
lstm_2/lstm_cell_82/mul_3Mullstm_2/lstm_cell_82/add_1:z:0!lstm_2/lstm_cell_82/Sigmoid_4:y:0*
T0*'
_output_shapes
:���������@2
lstm_2/lstm_cell_82/mul_3�
lstm_2/lstm_cell_82/Identity_1Identitylstm_2/lstm_cell_82/mul_3:z:0*
T0*'
_output_shapes
:���������@2 
lstm_2/lstm_cell_82/Identity_1�
lstm_2/lstm_cell_82/IdentityN_1	IdentityNlstm_2/lstm_cell_82/mul_3:z:0lstm_2/lstm_cell_82/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-567108*:
_output_shapes(
&:���������@:���������@2!
lstm_2/lstm_cell_82/IdentityN_1�
lstm_2/lstm_cell_82/mul_4Mul!lstm_2/lstm_cell_82/Sigmoid_3:y:0(lstm_2/lstm_cell_82/IdentityN_1:output:0*
T0*'
_output_shapes
:���������@2
lstm_2/lstm_cell_82/mul_4�
$lstm_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2&
$lstm_2/TensorArrayV2_1/element_shape�
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
lstm_2/time�
lstm_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2!
lstm_2/while/maximum_iterationsx
lstm_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_2/while/loop_counter�
lstm_2/whileWhile"lstm_2/while/loop_counter:output:0(lstm_2/while/maximum_iterations:output:0lstm_2/time:output:0lstm_2/TensorArrayV2_1:handle:0lstm_2/zeros:output:0lstm_2/zeros_1:output:0lstm_2/strided_slice_1:output:0>lstm_2/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_2_lstm_cell_82_matmul_readvariableop_resource4lstm_2_lstm_cell_82_matmul_1_readvariableop_resource3lstm_2_lstm_cell_82_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������@:���������@: : : : : *%
_read_only_resource_inputs
	
*$
bodyR
lstm_2_while_body_567119*$
condR
lstm_2_while_cond_567118*K
output_shapes:
8: : : : :���������@:���������@: : : : : *
parallel_iterations 2
lstm_2/while�
7lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   29
7lstm_2/TensorArrayV2Stack/TensorListStack/element_shape�
)lstm_2/TensorArrayV2Stack/TensorListStackTensorListStacklstm_2/while:output:3@lstm_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype02+
)lstm_2/TensorArrayV2Stack/TensorListStack�
lstm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
lstm_2/strided_slice_3/stack�
lstm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_2/strided_slice_3/stack_1�
lstm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_3/stack_2�
lstm_2/strided_slice_3StridedSlice2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_2/strided_slice_3/stack:output:0'lstm_2/strided_slice_3/stack_1:output:0'lstm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
lstm_2/strided_slice_3�
lstm_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_2/transpose_1/perm�
lstm_2/transpose_1	Transpose2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@2
lstm_2/transpose_1t
lstm_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_2/runtime�
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2 
time_distributed/Reshape/shape�
time_distributed/ReshapeReshapelstm_2/transpose_1:y:0'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
time_distributed/Reshape�
.time_distributed/dense_2/MatMul/ReadVariableOpReadVariableOp7time_distributed_dense_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype020
.time_distributed/dense_2/MatMul/ReadVariableOp�
time_distributed/dense_2/MatMulMatMul!time_distributed/Reshape:output:06time_distributed/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2!
time_distributed/dense_2/MatMul�
/time_distributed/dense_2/BiasAdd/ReadVariableOpReadVariableOp8time_distributed_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype021
/time_distributed/dense_2/BiasAdd/ReadVariableOp�
 time_distributed/dense_2/BiasAddBiasAdd)time_distributed/dense_2/MatMul:product:07time_distributed/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2"
 time_distributed/dense_2/BiasAdd�
 time_distributed/dense_2/SigmoidSigmoid)time_distributed/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2"
 time_distributed/dense_2/Sigmoid�
time_distributed/dense_2/mulMul)time_distributed/dense_2/BiasAdd:output:0$time_distributed/dense_2/Sigmoid:y:0*
T0*'
_output_shapes
:���������@2
time_distributed/dense_2/mul�
!time_distributed/dense_2/IdentityIdentity time_distributed/dense_2/mul:z:0*
T0*'
_output_shapes
:���������@2#
!time_distributed/dense_2/Identity�
"time_distributed/dense_2/IdentityN	IdentityN time_distributed/dense_2/mul:z:0)time_distributed/dense_2/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-567220*:
_output_shapes(
&:���������@:���������@2$
"time_distributed/dense_2/IdentityN�
 time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����   @   2"
 time_distributed/Reshape_1/shape�
time_distributed/Reshape_1Reshape+time_distributed/dense_2/IdentityN:output:0)time_distributed/Reshape_1/shape:output:0*
T0*+
_output_shapes
:���������@2
time_distributed/Reshape_1�
 time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2"
 time_distributed/Reshape_2/shape�
time_distributed/Reshape_2Reshapelstm_2/transpose_1:y:0)time_distributed/Reshape_2/shape:output:0*
T0*'
_output_shapes
:���������@2
time_distributed/Reshape_2�
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2"
 time_distributed_1/Reshape/shape�
time_distributed_1/ReshapeReshape#time_distributed/Reshape_1:output:0)time_distributed_1/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
time_distributed_1/Reshape�
0time_distributed_1/dense_3/MatMul/ReadVariableOpReadVariableOp9time_distributed_1_dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype022
0time_distributed_1/dense_3/MatMul/ReadVariableOp�
!time_distributed_1/dense_3/MatMulMatMul#time_distributed_1/Reshape:output:08time_distributed_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2#
!time_distributed_1/dense_3/MatMul�
1time_distributed_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype023
1time_distributed_1/dense_3/BiasAdd/ReadVariableOp�
"time_distributed_1/dense_3/BiasAddBiasAdd+time_distributed_1/dense_3/MatMul:product:09time_distributed_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2$
"time_distributed_1/dense_3/BiasAdd�
"time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����      2$
"time_distributed_1/Reshape_1/shape�
time_distributed_1/Reshape_1Reshape+time_distributed_1/dense_3/BiasAdd:output:0+time_distributed_1/Reshape_1/shape:output:0*
T0*+
_output_shapes
:���������2
time_distributed_1/Reshape_1�
"time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2$
"time_distributed_1/Reshape_2/shape�
time_distributed_1/Reshape_2Reshape#time_distributed/Reshape_1:output:0+time_distributed_1/Reshape_2/shape:output:0*
T0*'
_output_shapes
:���������@2
time_distributed_1/Reshape_2�
IdentityIdentity%time_distributed_1/Reshape_1:output:0+^lstm_1/lstm_cell_81/BiasAdd/ReadVariableOp*^lstm_1/lstm_cell_81/MatMul/ReadVariableOp,^lstm_1/lstm_cell_81/MatMul_1/ReadVariableOp^lstm_1/while+^lstm_2/lstm_cell_82/BiasAdd/ReadVariableOp*^lstm_2/lstm_cell_82/MatMul/ReadVariableOp,^lstm_2/lstm_cell_82/MatMul_1/ReadVariableOp^lstm_2/while0^time_distributed/dense_2/BiasAdd/ReadVariableOp/^time_distributed/dense_2/MatMul/ReadVariableOp2^time_distributed_1/dense_3/BiasAdd/ReadVariableOp1^time_distributed_1/dense_3/MatMul/ReadVariableOp*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : 2X
*lstm_1/lstm_cell_81/BiasAdd/ReadVariableOp*lstm_1/lstm_cell_81/BiasAdd/ReadVariableOp2V
)lstm_1/lstm_cell_81/MatMul/ReadVariableOp)lstm_1/lstm_cell_81/MatMul/ReadVariableOp2Z
+lstm_1/lstm_cell_81/MatMul_1/ReadVariableOp+lstm_1/lstm_cell_81/MatMul_1/ReadVariableOp2
lstm_1/whilelstm_1/while2X
*lstm_2/lstm_cell_82/BiasAdd/ReadVariableOp*lstm_2/lstm_cell_82/BiasAdd/ReadVariableOp2V
)lstm_2/lstm_cell_82/MatMul/ReadVariableOp)lstm_2/lstm_cell_82/MatMul/ReadVariableOp2Z
+lstm_2/lstm_cell_82/MatMul_1/ReadVariableOp+lstm_2/lstm_cell_82/MatMul_1/ReadVariableOp2
lstm_2/whilelstm_2/while2b
/time_distributed/dense_2/BiasAdd/ReadVariableOp/time_distributed/dense_2/BiasAdd/ReadVariableOp2`
.time_distributed/dense_2/MatMul/ReadVariableOp.time_distributed/dense_2/MatMul/ReadVariableOp2f
1time_distributed_1/dense_3/BiasAdd/ReadVariableOp1time_distributed_1/dense_3/BiasAdd/ReadVariableOp2d
0time_distributed_1/dense_3/MatMul/ReadVariableOp0time_distributed_1/dense_3/MatMul/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�E
�
B__inference_lstm_2_layer_call_and_return_conditional_losses_565184

inputs'
lstm_cell_82_565102:
��&
lstm_cell_82_565104:	@�"
lstm_cell_82_565106:	�
identity��$lstm_cell_82/StatefulPartitionedCall�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:���������@2
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
B :�2
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
zeros_1/packed/1�
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
:���������@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:�������������������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
strided_slice_2�
$lstm_cell_82/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_82_565102lstm_cell_82_565104lstm_cell_82_565106*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������@:���������@:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_82_layer_call_and_return_conditional_losses_5650372&
$lstm_cell_82/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_82_565102lstm_cell_82_565104lstm_cell_82_565106*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������@:���������@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_565115*
condR
while_cond_565114*K
output_shapes:
8: : : : :���������@:���������@: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime�
IdentityIdentitytranspose_1:y:0%^lstm_cell_82/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :������������������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':�������������������: : : 2L
$lstm_cell_82/StatefulPartitionedCall$lstm_cell_82/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:�������������������
 
_user_specified_nameinputs
�
�
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_566133

inputs8
&dense_3_matmul_readvariableop_resource:@5
'dense_3_biasadd_readvariableop_resource:
identity��dense_3/BiasAdd/ReadVariableOp�dense_3/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:���������@2	
Reshape�
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_3/MatMul/ReadVariableOp�
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_3/MatMul�
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp�
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_3/BiasAddw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����      2
Reshape_1/shape�
	Reshape_1Reshapedense_3/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:���������2
	Reshape_1�
IdentityIdentityReshape_1:output:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
'__inference_lstm_1_layer_call_fn_567655

inputs
unknown:	�
	unknown_0:
��
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_5666122
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
H__inference_sequential_1_layer_call_and_return_conditional_losses_566792
lstm_1_input 
lstm_1_566763:	�!
lstm_1_566765:
��
lstm_1_566767:	�!
lstm_2_566770:
�� 
lstm_2_566772:	@�
lstm_2_566774:	�)
time_distributed_566777:@@%
time_distributed_566779:@+
time_distributed_1_566784:@'
time_distributed_1_566786:
identity��lstm_1/StatefulPartitionedCall�lstm_2/StatefulPartitionedCall�(time_distributed/StatefulPartitionedCall�*time_distributed_1/StatefulPartitionedCall�
lstm_1/StatefulPartitionedCallStatefulPartitionedCalllstm_1_inputlstm_1_566763lstm_1_566765lstm_1_566767*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_5666122 
lstm_1/StatefulPartitionedCall�
lstm_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0lstm_2_566770lstm_2_566772lstm_2_566774*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_5664192 
lstm_2/StatefulPartitionedCall�
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0time_distributed_566777time_distributed_566779*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_5662282*
(time_distributed/StatefulPartitionedCall�
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2 
time_distributed/Reshape/shape�
time_distributed/ReshapeReshape'lstm_2/StatefulPartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
time_distributed/Reshape�
*time_distributed_1/StatefulPartitionedCallStatefulPartitionedCall1time_distributed/StatefulPartitionedCall:output:0time_distributed_1_566784time_distributed_1_566786*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_5661902,
*time_distributed_1/StatefulPartitionedCall�
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2"
 time_distributed_1/Reshape/shape�
time_distributed_1/ReshapeReshape1time_distributed/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
time_distributed_1/Reshape�
IdentityIdentity3time_distributed_1/StatefulPartitionedCall:output:0^lstm_1/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_1/StatefulPartitionedCall*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : 2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_1/StatefulPartitionedCall*time_distributed_1/StatefulPartitionedCall:Y U
+
_output_shapes
:���������
&
_user_specified_namelstm_1_input
�
�
H__inference_sequential_1_layer_call_and_return_conditional_losses_566142

inputs 
lstm_1_565908:	�!
lstm_1_565910:
��
lstm_1_565912:	�!
lstm_2_566086:
�� 
lstm_2_566088:	@�
lstm_2_566090:	�)
time_distributed_566113:@@%
time_distributed_566115:@+
time_distributed_1_566134:@'
time_distributed_1_566136:
identity��lstm_1/StatefulPartitionedCall�lstm_2/StatefulPartitionedCall�(time_distributed/StatefulPartitionedCall�*time_distributed_1/StatefulPartitionedCall�
lstm_1/StatefulPartitionedCallStatefulPartitionedCallinputslstm_1_565908lstm_1_565910lstm_1_565912*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_5659072 
lstm_1/StatefulPartitionedCall�
lstm_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0lstm_2_566086lstm_2_566088lstm_2_566090*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_5660852 
lstm_2/StatefulPartitionedCall�
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0time_distributed_566113time_distributed_566115*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_5661122*
(time_distributed/StatefulPartitionedCall�
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2 
time_distributed/Reshape/shape�
time_distributed/ReshapeReshape'lstm_2/StatefulPartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
time_distributed/Reshape�
*time_distributed_1/StatefulPartitionedCallStatefulPartitionedCall1time_distributed/StatefulPartitionedCall:output:0time_distributed_1_566134time_distributed_1_566136*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_5661332,
*time_distributed_1/StatefulPartitionedCall�
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2"
 time_distributed_1/Reshape/shape�
time_distributed_1/ReshapeReshape1time_distributed/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
time_distributed_1/Reshape�
IdentityIdentity3time_distributed_1/StatefulPartitionedCall:output:0^lstm_1/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_1/StatefulPartitionedCall*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : 2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_1/StatefulPartitionedCall*time_distributed_1/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_565674

inputs 
dense_3_565664:@
dense_3_565666:
identity��dense_3/StatefulPartitionedCallD
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
strided_slice/stack_2�
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
valueB"����@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:���������@2	
Reshape�
dense_3/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_3_565664dense_3_565666*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_5656152!
dense_3/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
���������2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2�
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape�
	Reshape_1Reshape(dense_3/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :������������������2
	Reshape_1�
IdentityIdentityReshape_1:output:0 ^dense_3/StatefulPartitionedCall*
T0*4
_output_shapes"
 :������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:������������������@: : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������@
 
_user_specified_nameinputs
�
�
L__inference_time_distributed_layer_call_and_return_conditional_losses_566228

inputs8
&dense_2_matmul_readvariableop_resource:@@5
'dense_2_biasadd_readvariableop_resource:@
identity��dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:���������@2	
Reshape�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_2/MatMul/ReadVariableOp�
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_2/MatMul�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_2/BiasAdd/ReadVariableOp�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_2/BiasAddy
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_2/Sigmoid�
dense_2/mulMuldense_2/BiasAdd:output:0dense_2/Sigmoid:y:0*
T0*'
_output_shapes
:���������@2
dense_2/muls
dense_2/IdentityIdentitydense_2/mul:z:0*
T0*'
_output_shapes
:���������@2
dense_2/Identity�
dense_2/IdentityN	IdentityNdense_2/mul:z:0dense_2/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-566219*:
_output_shapes(
&:���������@:���������@2
dense_2/IdentityNw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����   @   2
Reshape_1/shape�
	Reshape_1Reshapedense_2/IdentityN:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:���������@2
	Reshape_1�
IdentityIdentityReshape_1:output:0^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*+
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_569289

inputs8
&dense_3_matmul_readvariableop_resource:@5
'dense_3_biasadd_readvariableop_resource:
identity��dense_3/BiasAdd/ReadVariableOp�dense_3/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:���������@2	
Reshape�
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_3/MatMul/ReadVariableOp�
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_3/MatMul�
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp�
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_3/BiasAddw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����      2
Reshape_1/shape�
	Reshape_1Reshapedense_3/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:���������2
	Reshape_1�
IdentityIdentityReshape_1:output:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
'__inference_lstm_1_layer_call_fn_567644

inputs
unknown:	�
	unknown_0:
��
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_5659072
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�L
�
while_body_568074
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_81_matmul_readvariableop_resource_0:	�I
5while_lstm_cell_81_matmul_1_readvariableop_resource_0:
��C
4while_lstm_cell_81_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_81_matmul_readvariableop_resource:	�G
3while_lstm_cell_81_matmul_1_readvariableop_resource:
��A
2while_lstm_cell_81_biasadd_readvariableop_resource:	���)while/lstm_cell_81/BiasAdd/ReadVariableOp�(while/lstm_cell_81/MatMul/ReadVariableOp�*while/lstm_cell_81/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_81/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_81_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02*
(while/lstm_cell_81/MatMul/ReadVariableOp�
while/lstm_cell_81/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/MatMul�
*while/lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_81_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype02,
*while/lstm_cell_81/MatMul_1/ReadVariableOp�
while/lstm_cell_81/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/MatMul_1�
while/lstm_cell_81/addAddV2#while/lstm_cell_81/MatMul:product:0%while/lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/add�
)while/lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_81_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_81/BiasAdd/ReadVariableOp�
while/lstm_cell_81/BiasAddBiasAddwhile/lstm_cell_81/add:z:01while/lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/BiasAdd�
"while/lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_81/split/split_dim�
while/lstm_cell_81/splitSplit+while/lstm_cell_81/split/split_dim:output:0#while/lstm_cell_81/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split2
while/lstm_cell_81/split�
while/lstm_cell_81/SigmoidSigmoid!while/lstm_cell_81/split:output:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Sigmoid�
while/lstm_cell_81/Sigmoid_1Sigmoid!while/lstm_cell_81/split:output:1*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Sigmoid_1�
while/lstm_cell_81/mulMul while/lstm_cell_81/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/mul�
while/lstm_cell_81/Sigmoid_2Sigmoid!while/lstm_cell_81/split:output:2*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Sigmoid_2�
while/lstm_cell_81/mul_1Mul!while/lstm_cell_81/split:output:2 while/lstm_cell_81/Sigmoid_2:y:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/mul_1�
while/lstm_cell_81/IdentityIdentitywhile/lstm_cell_81/mul_1:z:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Identity�
while/lstm_cell_81/IdentityN	IdentityNwhile/lstm_cell_81/mul_1:z:0!while/lstm_cell_81/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-568116*<
_output_shapes*
(:����������:����������2
while/lstm_cell_81/IdentityN�
while/lstm_cell_81/mul_2Mulwhile/lstm_cell_81/Sigmoid:y:0%while/lstm_cell_81/IdentityN:output:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/mul_2�
while/lstm_cell_81/add_1AddV2while/lstm_cell_81/mul:z:0while/lstm_cell_81/mul_2:z:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/add_1�
while/lstm_cell_81/Sigmoid_3Sigmoid!while/lstm_cell_81/split:output:3*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Sigmoid_3�
while/lstm_cell_81/Sigmoid_4Sigmoidwhile/lstm_cell_81/add_1:z:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Sigmoid_4�
while/lstm_cell_81/mul_3Mulwhile/lstm_cell_81/add_1:z:0 while/lstm_cell_81/Sigmoid_4:y:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/mul_3�
while/lstm_cell_81/Identity_1Identitywhile/lstm_cell_81/mul_3:z:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Identity_1�
while/lstm_cell_81/IdentityN_1	IdentityNwhile/lstm_cell_81/mul_3:z:0while/lstm_cell_81/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-568125*<
_output_shapes*
(:����������:����������2 
while/lstm_cell_81/IdentityN_1�
while/lstm_cell_81/mul_4Mul while/lstm_cell_81/Sigmoid_3:y:0'while/lstm_cell_81/IdentityN_1:output:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/mul_4�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_81/mul_4:z:0*
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
while/add_1�
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_81/mul_4:z:0*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:����������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_81/add_1:z:0*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:����������2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_81_biasadd_readvariableop_resource4while_lstm_cell_81_biasadd_readvariableop_resource_0"l
3while_lstm_cell_81_matmul_1_readvariableop_resource5while_lstm_cell_81_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_81_matmul_readvariableop_resource3while_lstm_cell_81_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2V
)while/lstm_cell_81/BiasAdd/ReadVariableOp)while/lstm_cell_81/BiasAdd/ReadVariableOp2T
(while/lstm_cell_81/MatMul/ReadVariableOp(while/lstm_cell_81/MatMul/ReadVariableOp2X
*while/lstm_cell_81/MatMul_1/ReadVariableOp*while/lstm_cell_81/MatMul_1/ReadVariableOp: 
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
:����������:.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�
�
1__inference_time_distributed_layer_call_fn_569076

inputs
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_5654872
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :������������������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:������������������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������@
 
_user_specified_nameinputs
�
�
while_cond_565114
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_565114___redundant_placeholder04
0while_while_cond_565114___redundant_placeholder14
0while_while_cond_565114___redundant_placeholder24
0while_while_cond_565114___redundant_placeholder3
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
@: : : : :���������@:���������@: ::::: 
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
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�
�
L__inference_time_distributed_layer_call_and_return_conditional_losses_569157

inputs8
&dense_2_matmul_readvariableop_resource:@@5
'dense_2_biasadd_readvariableop_resource:@
identity��dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOpD
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
strided_slice/stack_2�
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
valueB"����@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:���������@2	
Reshape�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_2/MatMul/ReadVariableOp�
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_2/MatMul�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_2/BiasAdd/ReadVariableOp�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_2/BiasAddy
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_2/Sigmoid�
dense_2/mulMuldense_2/BiasAdd:output:0dense_2/Sigmoid:y:0*
T0*'
_output_shapes
:���������@2
dense_2/muls
dense_2/IdentityIdentitydense_2/mul:z:0*
T0*'
_output_shapes
:���������@2
dense_2/Identity�
dense_2/IdentityN	IdentityNdense_2/mul:z:0dense_2/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-569146*:
_output_shapes(
&:���������@:���������@2
dense_2/IdentityNq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
���������2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2
Reshape_1/shape/2�
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape�
	Reshape_1Reshapedense_2/IdentityN:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :������������������@2
	Reshape_1�
IdentityIdentityReshape_1:output:0^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :������������������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:������������������@: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������@
 
_user_specified_nameinputs
�L
�
while_body_568245
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_81_matmul_readvariableop_resource_0:	�I
5while_lstm_cell_81_matmul_1_readvariableop_resource_0:
��C
4while_lstm_cell_81_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_81_matmul_readvariableop_resource:	�G
3while_lstm_cell_81_matmul_1_readvariableop_resource:
��A
2while_lstm_cell_81_biasadd_readvariableop_resource:	���)while/lstm_cell_81/BiasAdd/ReadVariableOp�(while/lstm_cell_81/MatMul/ReadVariableOp�*while/lstm_cell_81/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_81/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_81_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02*
(while/lstm_cell_81/MatMul/ReadVariableOp�
while/lstm_cell_81/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/MatMul�
*while/lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_81_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype02,
*while/lstm_cell_81/MatMul_1/ReadVariableOp�
while/lstm_cell_81/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/MatMul_1�
while/lstm_cell_81/addAddV2#while/lstm_cell_81/MatMul:product:0%while/lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/add�
)while/lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_81_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_81/BiasAdd/ReadVariableOp�
while/lstm_cell_81/BiasAddBiasAddwhile/lstm_cell_81/add:z:01while/lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/BiasAdd�
"while/lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_81/split/split_dim�
while/lstm_cell_81/splitSplit+while/lstm_cell_81/split/split_dim:output:0#while/lstm_cell_81/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split2
while/lstm_cell_81/split�
while/lstm_cell_81/SigmoidSigmoid!while/lstm_cell_81/split:output:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Sigmoid�
while/lstm_cell_81/Sigmoid_1Sigmoid!while/lstm_cell_81/split:output:1*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Sigmoid_1�
while/lstm_cell_81/mulMul while/lstm_cell_81/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/mul�
while/lstm_cell_81/Sigmoid_2Sigmoid!while/lstm_cell_81/split:output:2*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Sigmoid_2�
while/lstm_cell_81/mul_1Mul!while/lstm_cell_81/split:output:2 while/lstm_cell_81/Sigmoid_2:y:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/mul_1�
while/lstm_cell_81/IdentityIdentitywhile/lstm_cell_81/mul_1:z:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Identity�
while/lstm_cell_81/IdentityN	IdentityNwhile/lstm_cell_81/mul_1:z:0!while/lstm_cell_81/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-568287*<
_output_shapes*
(:����������:����������2
while/lstm_cell_81/IdentityN�
while/lstm_cell_81/mul_2Mulwhile/lstm_cell_81/Sigmoid:y:0%while/lstm_cell_81/IdentityN:output:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/mul_2�
while/lstm_cell_81/add_1AddV2while/lstm_cell_81/mul:z:0while/lstm_cell_81/mul_2:z:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/add_1�
while/lstm_cell_81/Sigmoid_3Sigmoid!while/lstm_cell_81/split:output:3*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Sigmoid_3�
while/lstm_cell_81/Sigmoid_4Sigmoidwhile/lstm_cell_81/add_1:z:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Sigmoid_4�
while/lstm_cell_81/mul_3Mulwhile/lstm_cell_81/add_1:z:0 while/lstm_cell_81/Sigmoid_4:y:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/mul_3�
while/lstm_cell_81/Identity_1Identitywhile/lstm_cell_81/mul_3:z:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Identity_1�
while/lstm_cell_81/IdentityN_1	IdentityNwhile/lstm_cell_81/mul_3:z:0while/lstm_cell_81/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-568296*<
_output_shapes*
(:����������:����������2 
while/lstm_cell_81/IdentityN_1�
while/lstm_cell_81/mul_4Mul while/lstm_cell_81/Sigmoid_3:y:0'while/lstm_cell_81/IdentityN_1:output:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/mul_4�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_81/mul_4:z:0*
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
while/add_1�
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_81/mul_4:z:0*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:����������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_81/add_1:z:0*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:����������2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_81_biasadd_readvariableop_resource4while_lstm_cell_81_biasadd_readvariableop_resource_0"l
3while_lstm_cell_81_matmul_1_readvariableop_resource5while_lstm_cell_81_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_81_matmul_readvariableop_resource3while_lstm_cell_81_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2V
)while/lstm_cell_81/BiasAdd/ReadVariableOp)while/lstm_cell_81/BiasAdd/ReadVariableOp2T
(while/lstm_cell_81/MatMul/ReadVariableOp(while/lstm_cell_81/MatMul/ReadVariableOp2X
*while/lstm_cell_81/MatMul_1/ReadVariableOp*while/lstm_cell_81/MatMul_1/ReadVariableOp: 
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
:����������:.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�
�
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_569275

inputs8
&dense_3_matmul_readvariableop_resource:@5
'dense_3_biasadd_readvariableop_resource:
identity��dense_3/BiasAdd/ReadVariableOp�dense_3/MatMul/ReadVariableOpD
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
strided_slice/stack_2�
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
valueB"����@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:���������@2	
Reshape�
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_3/MatMul/ReadVariableOp�
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_3/MatMul�
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp�
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_3/BiasAddq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
���������2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2�
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape�
	Reshape_1Reshapedense_3/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :������������������2
	Reshape_1�
IdentityIdentityReshape_1:output:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:������������������@: : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������@
 
_user_specified_nameinputs
�L
�
while_body_567732
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_81_matmul_readvariableop_resource_0:	�I
5while_lstm_cell_81_matmul_1_readvariableop_resource_0:
��C
4while_lstm_cell_81_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_81_matmul_readvariableop_resource:	�G
3while_lstm_cell_81_matmul_1_readvariableop_resource:
��A
2while_lstm_cell_81_biasadd_readvariableop_resource:	���)while/lstm_cell_81/BiasAdd/ReadVariableOp�(while/lstm_cell_81/MatMul/ReadVariableOp�*while/lstm_cell_81/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_81/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_81_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02*
(while/lstm_cell_81/MatMul/ReadVariableOp�
while/lstm_cell_81/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/MatMul�
*while/lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_81_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype02,
*while/lstm_cell_81/MatMul_1/ReadVariableOp�
while/lstm_cell_81/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/MatMul_1�
while/lstm_cell_81/addAddV2#while/lstm_cell_81/MatMul:product:0%while/lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/add�
)while/lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_81_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_81/BiasAdd/ReadVariableOp�
while/lstm_cell_81/BiasAddBiasAddwhile/lstm_cell_81/add:z:01while/lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/BiasAdd�
"while/lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_81/split/split_dim�
while/lstm_cell_81/splitSplit+while/lstm_cell_81/split/split_dim:output:0#while/lstm_cell_81/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split2
while/lstm_cell_81/split�
while/lstm_cell_81/SigmoidSigmoid!while/lstm_cell_81/split:output:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Sigmoid�
while/lstm_cell_81/Sigmoid_1Sigmoid!while/lstm_cell_81/split:output:1*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Sigmoid_1�
while/lstm_cell_81/mulMul while/lstm_cell_81/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/mul�
while/lstm_cell_81/Sigmoid_2Sigmoid!while/lstm_cell_81/split:output:2*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Sigmoid_2�
while/lstm_cell_81/mul_1Mul!while/lstm_cell_81/split:output:2 while/lstm_cell_81/Sigmoid_2:y:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/mul_1�
while/lstm_cell_81/IdentityIdentitywhile/lstm_cell_81/mul_1:z:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Identity�
while/lstm_cell_81/IdentityN	IdentityNwhile/lstm_cell_81/mul_1:z:0!while/lstm_cell_81/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-567774*<
_output_shapes*
(:����������:����������2
while/lstm_cell_81/IdentityN�
while/lstm_cell_81/mul_2Mulwhile/lstm_cell_81/Sigmoid:y:0%while/lstm_cell_81/IdentityN:output:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/mul_2�
while/lstm_cell_81/add_1AddV2while/lstm_cell_81/mul:z:0while/lstm_cell_81/mul_2:z:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/add_1�
while/lstm_cell_81/Sigmoid_3Sigmoid!while/lstm_cell_81/split:output:3*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Sigmoid_3�
while/lstm_cell_81/Sigmoid_4Sigmoidwhile/lstm_cell_81/add_1:z:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Sigmoid_4�
while/lstm_cell_81/mul_3Mulwhile/lstm_cell_81/add_1:z:0 while/lstm_cell_81/Sigmoid_4:y:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/mul_3�
while/lstm_cell_81/Identity_1Identitywhile/lstm_cell_81/mul_3:z:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Identity_1�
while/lstm_cell_81/IdentityN_1	IdentityNwhile/lstm_cell_81/mul_3:z:0while/lstm_cell_81/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-567783*<
_output_shapes*
(:����������:����������2 
while/lstm_cell_81/IdentityN_1�
while/lstm_cell_81/mul_4Mul while/lstm_cell_81/Sigmoid_3:y:0'while/lstm_cell_81/IdentityN_1:output:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/mul_4�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_81/mul_4:z:0*
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
while/add_1�
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_81/mul_4:z:0*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:����������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_81/add_1:z:0*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:����������2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_81_biasadd_readvariableop_resource4while_lstm_cell_81_biasadd_readvariableop_resource_0"l
3while_lstm_cell_81_matmul_1_readvariableop_resource5while_lstm_cell_81_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_81_matmul_readvariableop_resource3while_lstm_cell_81_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2V
)while/lstm_cell_81/BiasAdd/ReadVariableOp)while/lstm_cell_81/BiasAdd/ReadVariableOp2T
(while/lstm_cell_81/MatMul/ReadVariableOp(while/lstm_cell_81/MatMul/ReadVariableOp2X
*while/lstm_cell_81/MatMul_1/ReadVariableOp*while/lstm_cell_81/MatMul_1/ReadVariableOp: 
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
:����������:.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�	
�
C__inference_dense_3_layer_call_and_return_conditional_losses_569583

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�L
�
while_body_568631
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_82_matmul_readvariableop_resource_0:
��H
5while_lstm_cell_82_matmul_1_readvariableop_resource_0:	@�C
4while_lstm_cell_82_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_82_matmul_readvariableop_resource:
��F
3while_lstm_cell_82_matmul_1_readvariableop_resource:	@�A
2while_lstm_cell_82_biasadd_readvariableop_resource:	���)while/lstm_cell_82/BiasAdd/ReadVariableOp�(while/lstm_cell_82/MatMul/ReadVariableOp�*while/lstm_cell_82/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:����������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_82/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_82_matmul_readvariableop_resource_0* 
_output_shapes
:
��*
dtype02*
(while/lstm_cell_82/MatMul/ReadVariableOp�
while/lstm_cell_82/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_82/MatMul�
*while/lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_82_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype02,
*while/lstm_cell_82/MatMul_1/ReadVariableOp�
while/lstm_cell_82/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_82/MatMul_1�
while/lstm_cell_82/addAddV2#while/lstm_cell_82/MatMul:product:0%while/lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_82/add�
)while/lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_82_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_82/BiasAdd/ReadVariableOp�
while/lstm_cell_82/BiasAddBiasAddwhile/lstm_cell_82/add:z:01while/lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_82/BiasAdd�
"while/lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_82/split/split_dim�
while/lstm_cell_82/splitSplit+while/lstm_cell_82/split/split_dim:output:0#while/lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
while/lstm_cell_82/split�
while/lstm_cell_82/SigmoidSigmoid!while/lstm_cell_82/split:output:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Sigmoid�
while/lstm_cell_82/Sigmoid_1Sigmoid!while/lstm_cell_82/split:output:1*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Sigmoid_1�
while/lstm_cell_82/mulMul while/lstm_cell_82/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/mul�
while/lstm_cell_82/Sigmoid_2Sigmoid!while/lstm_cell_82/split:output:2*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Sigmoid_2�
while/lstm_cell_82/mul_1Mul!while/lstm_cell_82/split:output:2 while/lstm_cell_82/Sigmoid_2:y:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/mul_1�
while/lstm_cell_82/IdentityIdentitywhile/lstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Identity�
while/lstm_cell_82/IdentityN	IdentityNwhile/lstm_cell_82/mul_1:z:0!while/lstm_cell_82/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-568673*:
_output_shapes(
&:���������@:���������@2
while/lstm_cell_82/IdentityN�
while/lstm_cell_82/mul_2Mulwhile/lstm_cell_82/Sigmoid:y:0%while/lstm_cell_82/IdentityN:output:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/mul_2�
while/lstm_cell_82/add_1AddV2while/lstm_cell_82/mul:z:0while/lstm_cell_82/mul_2:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/add_1�
while/lstm_cell_82/Sigmoid_3Sigmoid!while/lstm_cell_82/split:output:3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Sigmoid_3�
while/lstm_cell_82/Sigmoid_4Sigmoidwhile/lstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Sigmoid_4�
while/lstm_cell_82/mul_3Mulwhile/lstm_cell_82/add_1:z:0 while/lstm_cell_82/Sigmoid_4:y:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/mul_3�
while/lstm_cell_82/Identity_1Identitywhile/lstm_cell_82/mul_3:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/Identity_1�
while/lstm_cell_82/IdentityN_1	IdentityNwhile/lstm_cell_82/mul_3:z:0while/lstm_cell_82/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-568682*:
_output_shapes(
&:���������@:���������@2 
while/lstm_cell_82/IdentityN_1�
while/lstm_cell_82/mul_4Mul while/lstm_cell_82/Sigmoid_3:y:0'while/lstm_cell_82/IdentityN_1:output:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_82/mul_4�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_82/mul_4:z:0*
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
while/add_1�
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_82/mul_4:z:0*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_82/add_1:z:0*^while/lstm_cell_82/BiasAdd/ReadVariableOp)^while/lstm_cell_82/MatMul/ReadVariableOp+^while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_82_biasadd_readvariableop_resource4while_lstm_cell_82_biasadd_readvariableop_resource_0"l
3while_lstm_cell_82_matmul_1_readvariableop_resource5while_lstm_cell_82_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_82_matmul_readvariableop_resource3while_lstm_cell_82_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2V
)while/lstm_cell_82/BiasAdd/ReadVariableOp)while/lstm_cell_82/BiasAdd/ReadVariableOp2T
(while/lstm_cell_82/MatMul/ReadVariableOp(while/lstm_cell_82/MatMul/ReadVariableOp2X
*while/lstm_cell_82/MatMul_1/ReadVariableOp*while/lstm_cell_82/MatMul_1/ReadVariableOp: 
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
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_564244
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_564244___redundant_placeholder04
0while_while_cond_564244___redundant_placeholder14
0while_while_cond_564244___redundant_placeholder24
0while_while_cond_564244___redundant_placeholder3
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
B: : : : :����������:����������: ::::: 
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
:����������:.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
�
L__inference_time_distributed_layer_call_and_return_conditional_losses_569177

inputs8
&dense_2_matmul_readvariableop_resource:@@5
'dense_2_biasadd_readvariableop_resource:@
identity��dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:���������@2	
Reshape�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_2/MatMul/ReadVariableOp�
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_2/MatMul�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_2/BiasAdd/ReadVariableOp�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_2/BiasAddy
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_2/Sigmoid�
dense_2/mulMuldense_2/BiasAdd:output:0dense_2/Sigmoid:y:0*
T0*'
_output_shapes
:���������@2
dense_2/muls
dense_2/IdentityIdentitydense_2/mul:z:0*
T0*'
_output_shapes
:���������@2
dense_2/Identity�
dense_2/IdentityN	IdentityNdense_2/mul:z:0dense_2/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-569168*:
_output_shapes(
&:���������@:���������@2
dense_2/IdentityNw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����   @   2
Reshape_1/shape�
	Reshape_1Reshapedense_2/IdentityN:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:���������@2
	Reshape_1�
IdentityIdentityReshape_1:output:0^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*+
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�X
�

lstm_2_while_body_567487*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3)
%lstm_2_while_lstm_2_strided_slice_1_0e
alstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0N
:lstm_2_while_lstm_cell_82_matmul_readvariableop_resource_0:
��O
<lstm_2_while_lstm_cell_82_matmul_1_readvariableop_resource_0:	@�J
;lstm_2_while_lstm_cell_82_biasadd_readvariableop_resource_0:	�
lstm_2_while_identity
lstm_2_while_identity_1
lstm_2_while_identity_2
lstm_2_while_identity_3
lstm_2_while_identity_4
lstm_2_while_identity_5'
#lstm_2_while_lstm_2_strided_slice_1c
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensorL
8lstm_2_while_lstm_cell_82_matmul_readvariableop_resource:
��M
:lstm_2_while_lstm_cell_82_matmul_1_readvariableop_resource:	@�H
9lstm_2_while_lstm_cell_82_biasadd_readvariableop_resource:	���0lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOp�/lstm_2/while/lstm_cell_82/MatMul/ReadVariableOp�1lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOp�
>lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   2@
>lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape�
0lstm_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0lstm_2_while_placeholderGlstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:����������*
element_dtype022
0lstm_2/while/TensorArrayV2Read/TensorListGetItem�
/lstm_2/while/lstm_cell_82/MatMul/ReadVariableOpReadVariableOp:lstm_2_while_lstm_cell_82_matmul_readvariableop_resource_0* 
_output_shapes
:
��*
dtype021
/lstm_2/while/lstm_cell_82/MatMul/ReadVariableOp�
 lstm_2/while/lstm_cell_82/MatMulMatMul7lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_2/while/lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2"
 lstm_2/while/lstm_cell_82/MatMul�
1lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOp<lstm_2_while_lstm_cell_82_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype023
1lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOp�
"lstm_2/while/lstm_cell_82/MatMul_1MatMullstm_2_while_placeholder_29lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2$
"lstm_2/while/lstm_cell_82/MatMul_1�
lstm_2/while/lstm_cell_82/addAddV2*lstm_2/while/lstm_cell_82/MatMul:product:0,lstm_2/while/lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_2/while/lstm_cell_82/add�
0lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOp;lstm_2_while_lstm_cell_82_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype022
0lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOp�
!lstm_2/while/lstm_cell_82/BiasAddBiasAdd!lstm_2/while/lstm_cell_82/add:z:08lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2#
!lstm_2/while/lstm_cell_82/BiasAdd�
)lstm_2/while/lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2+
)lstm_2/while/lstm_cell_82/split/split_dim�
lstm_2/while/lstm_cell_82/splitSplit2lstm_2/while/lstm_cell_82/split/split_dim:output:0*lstm_2/while/lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2!
lstm_2/while/lstm_cell_82/split�
!lstm_2/while/lstm_cell_82/SigmoidSigmoid(lstm_2/while/lstm_cell_82/split:output:0*
T0*'
_output_shapes
:���������@2#
!lstm_2/while/lstm_cell_82/Sigmoid�
#lstm_2/while/lstm_cell_82/Sigmoid_1Sigmoid(lstm_2/while/lstm_cell_82/split:output:1*
T0*'
_output_shapes
:���������@2%
#lstm_2/while/lstm_cell_82/Sigmoid_1�
lstm_2/while/lstm_cell_82/mulMul'lstm_2/while/lstm_cell_82/Sigmoid_1:y:0lstm_2_while_placeholder_3*
T0*'
_output_shapes
:���������@2
lstm_2/while/lstm_cell_82/mul�
#lstm_2/while/lstm_cell_82/Sigmoid_2Sigmoid(lstm_2/while/lstm_cell_82/split:output:2*
T0*'
_output_shapes
:���������@2%
#lstm_2/while/lstm_cell_82/Sigmoid_2�
lstm_2/while/lstm_cell_82/mul_1Mul(lstm_2/while/lstm_cell_82/split:output:2'lstm_2/while/lstm_cell_82/Sigmoid_2:y:0*
T0*'
_output_shapes
:���������@2!
lstm_2/while/lstm_cell_82/mul_1�
"lstm_2/while/lstm_cell_82/IdentityIdentity#lstm_2/while/lstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:���������@2$
"lstm_2/while/lstm_cell_82/Identity�
#lstm_2/while/lstm_cell_82/IdentityN	IdentityN#lstm_2/while/lstm_cell_82/mul_1:z:0(lstm_2/while/lstm_cell_82/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-567529*:
_output_shapes(
&:���������@:���������@2%
#lstm_2/while/lstm_cell_82/IdentityN�
lstm_2/while/lstm_cell_82/mul_2Mul%lstm_2/while/lstm_cell_82/Sigmoid:y:0,lstm_2/while/lstm_cell_82/IdentityN:output:0*
T0*'
_output_shapes
:���������@2!
lstm_2/while/lstm_cell_82/mul_2�
lstm_2/while/lstm_cell_82/add_1AddV2!lstm_2/while/lstm_cell_82/mul:z:0#lstm_2/while/lstm_cell_82/mul_2:z:0*
T0*'
_output_shapes
:���������@2!
lstm_2/while/lstm_cell_82/add_1�
#lstm_2/while/lstm_cell_82/Sigmoid_3Sigmoid(lstm_2/while/lstm_cell_82/split:output:3*
T0*'
_output_shapes
:���������@2%
#lstm_2/while/lstm_cell_82/Sigmoid_3�
#lstm_2/while/lstm_cell_82/Sigmoid_4Sigmoid#lstm_2/while/lstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:���������@2%
#lstm_2/while/lstm_cell_82/Sigmoid_4�
lstm_2/while/lstm_cell_82/mul_3Mul#lstm_2/while/lstm_cell_82/add_1:z:0'lstm_2/while/lstm_cell_82/Sigmoid_4:y:0*
T0*'
_output_shapes
:���������@2!
lstm_2/while/lstm_cell_82/mul_3�
$lstm_2/while/lstm_cell_82/Identity_1Identity#lstm_2/while/lstm_cell_82/mul_3:z:0*
T0*'
_output_shapes
:���������@2&
$lstm_2/while/lstm_cell_82/Identity_1�
%lstm_2/while/lstm_cell_82/IdentityN_1	IdentityN#lstm_2/while/lstm_cell_82/mul_3:z:0#lstm_2/while/lstm_cell_82/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-567538*:
_output_shapes(
&:���������@:���������@2'
%lstm_2/while/lstm_cell_82/IdentityN_1�
lstm_2/while/lstm_cell_82/mul_4Mul'lstm_2/while/lstm_cell_82/Sigmoid_3:y:0.lstm_2/while/lstm_cell_82/IdentityN_1:output:0*
T0*'
_output_shapes
:���������@2!
lstm_2/while/lstm_cell_82/mul_4�
1lstm_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_2_while_placeholder_1lstm_2_while_placeholder#lstm_2/while/lstm_cell_82/mul_4:z:0*
_output_shapes
: *
element_dtype023
1lstm_2/while/TensorArrayV2Write/TensorListSetItemj
lstm_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/while/add/y�
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
lstm_2/while/add_1/y�
lstm_2/while/add_1AddV2&lstm_2_while_lstm_2_while_loop_counterlstm_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_2/while/add_1�
lstm_2/while/IdentityIdentitylstm_2/while/add_1:z:01^lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_82/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity�
lstm_2/while/Identity_1Identity,lstm_2_while_lstm_2_while_maximum_iterations1^lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_82/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_1�
lstm_2/while/Identity_2Identitylstm_2/while/add:z:01^lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_82/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_2�
lstm_2/while/Identity_3IdentityAlstm_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:01^lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_82/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_3�
lstm_2/while/Identity_4Identity#lstm_2/while/lstm_cell_82/mul_4:z:01^lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_82/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
lstm_2/while/Identity_4�
lstm_2/while/Identity_5Identity#lstm_2/while/lstm_cell_82/add_1:z:01^lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_82/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
lstm_2/while/Identity_5"7
lstm_2_while_identitylstm_2/while/Identity:output:0";
lstm_2_while_identity_1 lstm_2/while/Identity_1:output:0";
lstm_2_while_identity_2 lstm_2/while/Identity_2:output:0";
lstm_2_while_identity_3 lstm_2/while/Identity_3:output:0";
lstm_2_while_identity_4 lstm_2/while/Identity_4:output:0";
lstm_2_while_identity_5 lstm_2/while/Identity_5:output:0"L
#lstm_2_while_lstm_2_strided_slice_1%lstm_2_while_lstm_2_strided_slice_1_0"x
9lstm_2_while_lstm_cell_82_biasadd_readvariableop_resource;lstm_2_while_lstm_cell_82_biasadd_readvariableop_resource_0"z
:lstm_2_while_lstm_cell_82_matmul_1_readvariableop_resource<lstm_2_while_lstm_cell_82_matmul_1_readvariableop_resource_0"v
8lstm_2_while_lstm_cell_82_matmul_readvariableop_resource:lstm_2_while_lstm_cell_82_matmul_readvariableop_resource_0"�
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensoralstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2d
0lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOp0lstm_2/while/lstm_cell_82/BiasAdd/ReadVariableOp2b
/lstm_2/while/lstm_cell_82/MatMul/ReadVariableOp/lstm_2/while/lstm_cell_82/MatMul/ReadVariableOp2f
1lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOp1lstm_2/while/lstm_cell_82/MatMul_1/ReadVariableOp: 
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
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�
�
'__inference_lstm_2_layer_call_fn_568350
inputs_0
unknown:
��
	unknown_0:	@�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_5649642
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :������������������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':�������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:�������������������
"
_user_specified_name
inputs/0
�&
�
while_body_564465
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_81_564489_0:	�/
while_lstm_cell_81_564491_0:
��*
while_lstm_cell_81_564493_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_81_564489:	�-
while_lstm_cell_81_564491:
��(
while_lstm_cell_81_564493:	���*while/lstm_cell_81/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
*while/lstm_cell_81/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_81_564489_0while_lstm_cell_81_564491_0while_lstm_cell_81_564493_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_81_layer_call_and_return_conditional_losses_5643872,
*while/lstm_cell_81/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_81/StatefulPartitionedCall:output:0*
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
while/add_1�
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_81/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_81/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_81/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_81/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity3while/lstm_cell_81/StatefulPartitionedCall:output:1+^while/lstm_cell_81/StatefulPartitionedCall*
T0*(
_output_shapes
:����������2
while/Identity_4�
while/Identity_5Identity3while/lstm_cell_81/StatefulPartitionedCall:output:2+^while/lstm_cell_81/StatefulPartitionedCall*
T0*(
_output_shapes
:����������2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_81_564489while_lstm_cell_81_564489_0"8
while_lstm_cell_81_564491while_lstm_cell_81_564491_0"8
while_lstm_cell_81_564493while_lstm_cell_81_564493_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2X
*while/lstm_cell_81/StatefulPartitionedCall*while/lstm_cell_81/StatefulPartitionedCall: 
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
:����������:.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_568630
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_568630___redundant_placeholder04
0while_while_cond_568630___redundant_placeholder14
0while_while_cond_568630___redundant_placeholder24
0while_while_cond_568630___redundant_placeholder3
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
@: : : : :���������@:���������@: ::::: 
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
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_568459
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_568459___redundant_placeholder04
0while_while_cond_568459___redundant_placeholder14
0while_while_cond_568459___redundant_placeholder24
0while_while_cond_568459___redundant_placeholder3
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
@: : : : :���������@:���������@: ::::: 
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
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�
�
C__inference_dense_2_layer_call_and_return_conditional_losses_569564

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������@2	
Sigmoidb
mulMulBiasAdd:output:0Sigmoid:y:0*
T0*'
_output_shapes
:���������@2
mul[
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:���������@2

Identity�
	IdentityN	IdentityNmul:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-569557*:
_output_shapes(
&:���������@:���������@2
	IdentityN�

Identity_1IdentityIdentityN:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�	
�
$__inference_signature_wrapper_566825
lstm_1_input
unknown:	�
	unknown_0:
��
	unknown_1:	�
	unknown_2:
��
	unknown_3:	@�
	unknown_4:	�
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_5641462
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:���������
&
_user_specified_namelstm_1_input
��
�
!__inference__wrapped_model_564146
lstm_1_inputR
?sequential_1_lstm_1_lstm_cell_81_matmul_readvariableop_resource:	�U
Asequential_1_lstm_1_lstm_cell_81_matmul_1_readvariableop_resource:
��O
@sequential_1_lstm_1_lstm_cell_81_biasadd_readvariableop_resource:	�S
?sequential_1_lstm_2_lstm_cell_82_matmul_readvariableop_resource:
��T
Asequential_1_lstm_2_lstm_cell_82_matmul_1_readvariableop_resource:	@�O
@sequential_1_lstm_2_lstm_cell_82_biasadd_readvariableop_resource:	�V
Dsequential_1_time_distributed_dense_2_matmul_readvariableop_resource:@@S
Esequential_1_time_distributed_dense_2_biasadd_readvariableop_resource:@X
Fsequential_1_time_distributed_1_dense_3_matmul_readvariableop_resource:@U
Gsequential_1_time_distributed_1_dense_3_biasadd_readvariableop_resource:
identity��7sequential_1/lstm_1/lstm_cell_81/BiasAdd/ReadVariableOp�6sequential_1/lstm_1/lstm_cell_81/MatMul/ReadVariableOp�8sequential_1/lstm_1/lstm_cell_81/MatMul_1/ReadVariableOp�sequential_1/lstm_1/while�7sequential_1/lstm_2/lstm_cell_82/BiasAdd/ReadVariableOp�6sequential_1/lstm_2/lstm_cell_82/MatMul/ReadVariableOp�8sequential_1/lstm_2/lstm_cell_82/MatMul_1/ReadVariableOp�sequential_1/lstm_2/while�<sequential_1/time_distributed/dense_2/BiasAdd/ReadVariableOp�;sequential_1/time_distributed/dense_2/MatMul/ReadVariableOp�>sequential_1/time_distributed_1/dense_3/BiasAdd/ReadVariableOp�=sequential_1/time_distributed_1/dense_3/MatMul/ReadVariableOpr
sequential_1/lstm_1/ShapeShapelstm_1_input*
T0*
_output_shapes
:2
sequential_1/lstm_1/Shape�
'sequential_1/lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_1/lstm_1/strided_slice/stack�
)sequential_1/lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_1/lstm_1/strided_slice/stack_1�
)sequential_1/lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_1/lstm_1/strided_slice/stack_2�
!sequential_1/lstm_1/strided_sliceStridedSlice"sequential_1/lstm_1/Shape:output:00sequential_1/lstm_1/strided_slice/stack:output:02sequential_1/lstm_1/strided_slice/stack_1:output:02sequential_1/lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_1/lstm_1/strided_slice�
sequential_1/lstm_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2!
sequential_1/lstm_1/zeros/mul/y�
sequential_1/lstm_1/zeros/mulMul*sequential_1/lstm_1/strided_slice:output:0(sequential_1/lstm_1/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_1/lstm_1/zeros/mul�
 sequential_1/lstm_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2"
 sequential_1/lstm_1/zeros/Less/y�
sequential_1/lstm_1/zeros/LessLess!sequential_1/lstm_1/zeros/mul:z:0)sequential_1/lstm_1/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
sequential_1/lstm_1/zeros/Less�
"sequential_1/lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�2$
"sequential_1/lstm_1/zeros/packed/1�
 sequential_1/lstm_1/zeros/packedPack*sequential_1/lstm_1/strided_slice:output:0+sequential_1/lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_1/lstm_1/zeros/packed�
sequential_1/lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_1/lstm_1/zeros/Const�
sequential_1/lstm_1/zerosFill)sequential_1/lstm_1/zeros/packed:output:0(sequential_1/lstm_1/zeros/Const:output:0*
T0*(
_output_shapes
:����������2
sequential_1/lstm_1/zeros�
!sequential_1/lstm_1/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2#
!sequential_1/lstm_1/zeros_1/mul/y�
sequential_1/lstm_1/zeros_1/mulMul*sequential_1/lstm_1/strided_slice:output:0*sequential_1/lstm_1/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_1/lstm_1/zeros_1/mul�
"sequential_1/lstm_1/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2$
"sequential_1/lstm_1/zeros_1/Less/y�
 sequential_1/lstm_1/zeros_1/LessLess#sequential_1/lstm_1/zeros_1/mul:z:0+sequential_1/lstm_1/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_1/lstm_1/zeros_1/Less�
$sequential_1/lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�2&
$sequential_1/lstm_1/zeros_1/packed/1�
"sequential_1/lstm_1/zeros_1/packedPack*sequential_1/lstm_1/strided_slice:output:0-sequential_1/lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_1/lstm_1/zeros_1/packed�
!sequential_1/lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_1/lstm_1/zeros_1/Const�
sequential_1/lstm_1/zeros_1Fill+sequential_1/lstm_1/zeros_1/packed:output:0*sequential_1/lstm_1/zeros_1/Const:output:0*
T0*(
_output_shapes
:����������2
sequential_1/lstm_1/zeros_1�
"sequential_1/lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"sequential_1/lstm_1/transpose/perm�
sequential_1/lstm_1/transpose	Transposelstm_1_input+sequential_1/lstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:���������2
sequential_1/lstm_1/transpose�
sequential_1/lstm_1/Shape_1Shape!sequential_1/lstm_1/transpose:y:0*
T0*
_output_shapes
:2
sequential_1/lstm_1/Shape_1�
)sequential_1/lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_1/lstm_1/strided_slice_1/stack�
+sequential_1/lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_1/strided_slice_1/stack_1�
+sequential_1/lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_1/strided_slice_1/stack_2�
#sequential_1/lstm_1/strided_slice_1StridedSlice$sequential_1/lstm_1/Shape_1:output:02sequential_1/lstm_1/strided_slice_1/stack:output:04sequential_1/lstm_1/strided_slice_1/stack_1:output:04sequential_1/lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_1/lstm_1/strided_slice_1�
/sequential_1/lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������21
/sequential_1/lstm_1/TensorArrayV2/element_shape�
!sequential_1/lstm_1/TensorArrayV2TensorListReserve8sequential_1/lstm_1/TensorArrayV2/element_shape:output:0,sequential_1/lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!sequential_1/lstm_1/TensorArrayV2�
Isequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2K
Isequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape�
;sequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_1/lstm_1/transpose:y:0Rsequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;sequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor�
)sequential_1/lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_1/lstm_1/strided_slice_2/stack�
+sequential_1/lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_1/strided_slice_2/stack_1�
+sequential_1/lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_1/strided_slice_2/stack_2�
#sequential_1/lstm_1/strided_slice_2StridedSlice!sequential_1/lstm_1/transpose:y:02sequential_1/lstm_1/strided_slice_2/stack:output:04sequential_1/lstm_1/strided_slice_2/stack_1:output:04sequential_1/lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2%
#sequential_1/lstm_1/strided_slice_2�
6sequential_1/lstm_1/lstm_cell_81/MatMul/ReadVariableOpReadVariableOp?sequential_1_lstm_1_lstm_cell_81_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype028
6sequential_1/lstm_1/lstm_cell_81/MatMul/ReadVariableOp�
'sequential_1/lstm_1/lstm_cell_81/MatMulMatMul,sequential_1/lstm_1/strided_slice_2:output:0>sequential_1/lstm_1/lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2)
'sequential_1/lstm_1/lstm_cell_81/MatMul�
8sequential_1/lstm_1/lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOpAsequential_1_lstm_1_lstm_cell_81_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02:
8sequential_1/lstm_1/lstm_cell_81/MatMul_1/ReadVariableOp�
)sequential_1/lstm_1/lstm_cell_81/MatMul_1MatMul"sequential_1/lstm_1/zeros:output:0@sequential_1/lstm_1/lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2+
)sequential_1/lstm_1/lstm_cell_81/MatMul_1�
$sequential_1/lstm_1/lstm_cell_81/addAddV21sequential_1/lstm_1/lstm_cell_81/MatMul:product:03sequential_1/lstm_1/lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:����������2&
$sequential_1/lstm_1/lstm_cell_81/add�
7sequential_1/lstm_1/lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOp@sequential_1_lstm_1_lstm_cell_81_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype029
7sequential_1/lstm_1/lstm_cell_81/BiasAdd/ReadVariableOp�
(sequential_1/lstm_1/lstm_cell_81/BiasAddBiasAdd(sequential_1/lstm_1/lstm_cell_81/add:z:0?sequential_1/lstm_1/lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2*
(sequential_1/lstm_1/lstm_cell_81/BiasAdd�
0sequential_1/lstm_1/lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :22
0sequential_1/lstm_1/lstm_cell_81/split/split_dim�
&sequential_1/lstm_1/lstm_cell_81/splitSplit9sequential_1/lstm_1/lstm_cell_81/split/split_dim:output:01sequential_1/lstm_1/lstm_cell_81/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split2(
&sequential_1/lstm_1/lstm_cell_81/split�
(sequential_1/lstm_1/lstm_cell_81/SigmoidSigmoid/sequential_1/lstm_1/lstm_cell_81/split:output:0*
T0*(
_output_shapes
:����������2*
(sequential_1/lstm_1/lstm_cell_81/Sigmoid�
*sequential_1/lstm_1/lstm_cell_81/Sigmoid_1Sigmoid/sequential_1/lstm_1/lstm_cell_81/split:output:1*
T0*(
_output_shapes
:����������2,
*sequential_1/lstm_1/lstm_cell_81/Sigmoid_1�
$sequential_1/lstm_1/lstm_cell_81/mulMul.sequential_1/lstm_1/lstm_cell_81/Sigmoid_1:y:0$sequential_1/lstm_1/zeros_1:output:0*
T0*(
_output_shapes
:����������2&
$sequential_1/lstm_1/lstm_cell_81/mul�
*sequential_1/lstm_1/lstm_cell_81/Sigmoid_2Sigmoid/sequential_1/lstm_1/lstm_cell_81/split:output:2*
T0*(
_output_shapes
:����������2,
*sequential_1/lstm_1/lstm_cell_81/Sigmoid_2�
&sequential_1/lstm_1/lstm_cell_81/mul_1Mul/sequential_1/lstm_1/lstm_cell_81/split:output:2.sequential_1/lstm_1/lstm_cell_81/Sigmoid_2:y:0*
T0*(
_output_shapes
:����������2(
&sequential_1/lstm_1/lstm_cell_81/mul_1�
)sequential_1/lstm_1/lstm_cell_81/IdentityIdentity*sequential_1/lstm_1/lstm_cell_81/mul_1:z:0*
T0*(
_output_shapes
:����������2+
)sequential_1/lstm_1/lstm_cell_81/Identity�
*sequential_1/lstm_1/lstm_cell_81/IdentityN	IdentityN*sequential_1/lstm_1/lstm_cell_81/mul_1:z:0/sequential_1/lstm_1/lstm_cell_81/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-563835*<
_output_shapes*
(:����������:����������2,
*sequential_1/lstm_1/lstm_cell_81/IdentityN�
&sequential_1/lstm_1/lstm_cell_81/mul_2Mul,sequential_1/lstm_1/lstm_cell_81/Sigmoid:y:03sequential_1/lstm_1/lstm_cell_81/IdentityN:output:0*
T0*(
_output_shapes
:����������2(
&sequential_1/lstm_1/lstm_cell_81/mul_2�
&sequential_1/lstm_1/lstm_cell_81/add_1AddV2(sequential_1/lstm_1/lstm_cell_81/mul:z:0*sequential_1/lstm_1/lstm_cell_81/mul_2:z:0*
T0*(
_output_shapes
:����������2(
&sequential_1/lstm_1/lstm_cell_81/add_1�
*sequential_1/lstm_1/lstm_cell_81/Sigmoid_3Sigmoid/sequential_1/lstm_1/lstm_cell_81/split:output:3*
T0*(
_output_shapes
:����������2,
*sequential_1/lstm_1/lstm_cell_81/Sigmoid_3�
*sequential_1/lstm_1/lstm_cell_81/Sigmoid_4Sigmoid*sequential_1/lstm_1/lstm_cell_81/add_1:z:0*
T0*(
_output_shapes
:����������2,
*sequential_1/lstm_1/lstm_cell_81/Sigmoid_4�
&sequential_1/lstm_1/lstm_cell_81/mul_3Mul*sequential_1/lstm_1/lstm_cell_81/add_1:z:0.sequential_1/lstm_1/lstm_cell_81/Sigmoid_4:y:0*
T0*(
_output_shapes
:����������2(
&sequential_1/lstm_1/lstm_cell_81/mul_3�
+sequential_1/lstm_1/lstm_cell_81/Identity_1Identity*sequential_1/lstm_1/lstm_cell_81/mul_3:z:0*
T0*(
_output_shapes
:����������2-
+sequential_1/lstm_1/lstm_cell_81/Identity_1�
,sequential_1/lstm_1/lstm_cell_81/IdentityN_1	IdentityN*sequential_1/lstm_1/lstm_cell_81/mul_3:z:0*sequential_1/lstm_1/lstm_cell_81/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-563844*<
_output_shapes*
(:����������:����������2.
,sequential_1/lstm_1/lstm_cell_81/IdentityN_1�
&sequential_1/lstm_1/lstm_cell_81/mul_4Mul.sequential_1/lstm_1/lstm_cell_81/Sigmoid_3:y:05sequential_1/lstm_1/lstm_cell_81/IdentityN_1:output:0*
T0*(
_output_shapes
:����������2(
&sequential_1/lstm_1/lstm_cell_81/mul_4�
1sequential_1/lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   23
1sequential_1/lstm_1/TensorArrayV2_1/element_shape�
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
sequential_1/lstm_1/time�
,sequential_1/lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2.
,sequential_1/lstm_1/while/maximum_iterations�
&sequential_1/lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_1/lstm_1/while/loop_counter�
sequential_1/lstm_1/whileWhile/sequential_1/lstm_1/while/loop_counter:output:05sequential_1/lstm_1/while/maximum_iterations:output:0!sequential_1/lstm_1/time:output:0,sequential_1/lstm_1/TensorArrayV2_1:handle:0"sequential_1/lstm_1/zeros:output:0$sequential_1/lstm_1/zeros_1:output:0,sequential_1/lstm_1/strided_slice_1:output:0Ksequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0?sequential_1_lstm_1_lstm_cell_81_matmul_readvariableop_resourceAsequential_1_lstm_1_lstm_cell_81_matmul_1_readvariableop_resource@sequential_1_lstm_1_lstm_cell_81_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*1
body)R'
%sequential_1_lstm_1_while_body_563855*1
cond)R'
%sequential_1_lstm_1_while_cond_563854*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations 2
sequential_1/lstm_1/while�
Dsequential_1/lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   2F
Dsequential_1/lstm_1/TensorArrayV2Stack/TensorListStack/element_shape�
6sequential_1/lstm_1/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_1/lstm_1/while:output:3Msequential_1/lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype028
6sequential_1/lstm_1/TensorArrayV2Stack/TensorListStack�
)sequential_1/lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2+
)sequential_1/lstm_1/strided_slice_3/stack�
+sequential_1/lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_1/lstm_1/strided_slice_3/stack_1�
+sequential_1/lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_1/strided_slice_3/stack_2�
#sequential_1/lstm_1/strided_slice_3StridedSlice?sequential_1/lstm_1/TensorArrayV2Stack/TensorListStack:tensor:02sequential_1/lstm_1/strided_slice_3/stack:output:04sequential_1/lstm_1/strided_slice_3/stack_1:output:04sequential_1/lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2%
#sequential_1/lstm_1/strided_slice_3�
$sequential_1/lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_1/lstm_1/transpose_1/perm�
sequential_1/lstm_1/transpose_1	Transpose?sequential_1/lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_1/lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:����������2!
sequential_1/lstm_1/transpose_1�
sequential_1/lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_1/lstm_1/runtime�
sequential_1/lstm_2/ShapeShape#sequential_1/lstm_1/transpose_1:y:0*
T0*
_output_shapes
:2
sequential_1/lstm_2/Shape�
'sequential_1/lstm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_1/lstm_2/strided_slice/stack�
)sequential_1/lstm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_1/lstm_2/strided_slice/stack_1�
)sequential_1/lstm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_1/lstm_2/strided_slice/stack_2�
!sequential_1/lstm_2/strided_sliceStridedSlice"sequential_1/lstm_2/Shape:output:00sequential_1/lstm_2/strided_slice/stack:output:02sequential_1/lstm_2/strided_slice/stack_1:output:02sequential_1/lstm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_1/lstm_2/strided_slice�
sequential_1/lstm_2/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2!
sequential_1/lstm_2/zeros/mul/y�
sequential_1/lstm_2/zeros/mulMul*sequential_1/lstm_2/strided_slice:output:0(sequential_1/lstm_2/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_1/lstm_2/zeros/mul�
 sequential_1/lstm_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2"
 sequential_1/lstm_2/zeros/Less/y�
sequential_1/lstm_2/zeros/LessLess!sequential_1/lstm_2/zeros/mul:z:0)sequential_1/lstm_2/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
sequential_1/lstm_2/zeros/Less�
"sequential_1/lstm_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2$
"sequential_1/lstm_2/zeros/packed/1�
 sequential_1/lstm_2/zeros/packedPack*sequential_1/lstm_2/strided_slice:output:0+sequential_1/lstm_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_1/lstm_2/zeros/packed�
sequential_1/lstm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_1/lstm_2/zeros/Const�
sequential_1/lstm_2/zerosFill)sequential_1/lstm_2/zeros/packed:output:0(sequential_1/lstm_2/zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
sequential_1/lstm_2/zeros�
!sequential_1/lstm_2/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2#
!sequential_1/lstm_2/zeros_1/mul/y�
sequential_1/lstm_2/zeros_1/mulMul*sequential_1/lstm_2/strided_slice:output:0*sequential_1/lstm_2/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_1/lstm_2/zeros_1/mul�
"sequential_1/lstm_2/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2$
"sequential_1/lstm_2/zeros_1/Less/y�
 sequential_1/lstm_2/zeros_1/LessLess#sequential_1/lstm_2/zeros_1/mul:z:0+sequential_1/lstm_2/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_1/lstm_2/zeros_1/Less�
$sequential_1/lstm_2/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2&
$sequential_1/lstm_2/zeros_1/packed/1�
"sequential_1/lstm_2/zeros_1/packedPack*sequential_1/lstm_2/strided_slice:output:0-sequential_1/lstm_2/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_1/lstm_2/zeros_1/packed�
!sequential_1/lstm_2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_1/lstm_2/zeros_1/Const�
sequential_1/lstm_2/zeros_1Fill+sequential_1/lstm_2/zeros_1/packed:output:0*sequential_1/lstm_2/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@2
sequential_1/lstm_2/zeros_1�
"sequential_1/lstm_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"sequential_1/lstm_2/transpose/perm�
sequential_1/lstm_2/transpose	Transpose#sequential_1/lstm_1/transpose_1:y:0+sequential_1/lstm_2/transpose/perm:output:0*
T0*,
_output_shapes
:����������2
sequential_1/lstm_2/transpose�
sequential_1/lstm_2/Shape_1Shape!sequential_1/lstm_2/transpose:y:0*
T0*
_output_shapes
:2
sequential_1/lstm_2/Shape_1�
)sequential_1/lstm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_1/lstm_2/strided_slice_1/stack�
+sequential_1/lstm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_2/strided_slice_1/stack_1�
+sequential_1/lstm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_2/strided_slice_1/stack_2�
#sequential_1/lstm_2/strided_slice_1StridedSlice$sequential_1/lstm_2/Shape_1:output:02sequential_1/lstm_2/strided_slice_1/stack:output:04sequential_1/lstm_2/strided_slice_1/stack_1:output:04sequential_1/lstm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_1/lstm_2/strided_slice_1�
/sequential_1/lstm_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������21
/sequential_1/lstm_2/TensorArrayV2/element_shape�
!sequential_1/lstm_2/TensorArrayV2TensorListReserve8sequential_1/lstm_2/TensorArrayV2/element_shape:output:0,sequential_1/lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!sequential_1/lstm_2/TensorArrayV2�
Isequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   2K
Isequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape�
;sequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_1/lstm_2/transpose:y:0Rsequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;sequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensor�
)sequential_1/lstm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_1/lstm_2/strided_slice_2/stack�
+sequential_1/lstm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_2/strided_slice_2/stack_1�
+sequential_1/lstm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_2/strided_slice_2/stack_2�
#sequential_1/lstm_2/strided_slice_2StridedSlice!sequential_1/lstm_2/transpose:y:02sequential_1/lstm_2/strided_slice_2/stack:output:04sequential_1/lstm_2/strided_slice_2/stack_1:output:04sequential_1/lstm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2%
#sequential_1/lstm_2/strided_slice_2�
6sequential_1/lstm_2/lstm_cell_82/MatMul/ReadVariableOpReadVariableOp?sequential_1_lstm_2_lstm_cell_82_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype028
6sequential_1/lstm_2/lstm_cell_82/MatMul/ReadVariableOp�
'sequential_1/lstm_2/lstm_cell_82/MatMulMatMul,sequential_1/lstm_2/strided_slice_2:output:0>sequential_1/lstm_2/lstm_cell_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2)
'sequential_1/lstm_2/lstm_cell_82/MatMul�
8sequential_1/lstm_2/lstm_cell_82/MatMul_1/ReadVariableOpReadVariableOpAsequential_1_lstm_2_lstm_cell_82_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype02:
8sequential_1/lstm_2/lstm_cell_82/MatMul_1/ReadVariableOp�
)sequential_1/lstm_2/lstm_cell_82/MatMul_1MatMul"sequential_1/lstm_2/zeros:output:0@sequential_1/lstm_2/lstm_cell_82/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2+
)sequential_1/lstm_2/lstm_cell_82/MatMul_1�
$sequential_1/lstm_2/lstm_cell_82/addAddV21sequential_1/lstm_2/lstm_cell_82/MatMul:product:03sequential_1/lstm_2/lstm_cell_82/MatMul_1:product:0*
T0*(
_output_shapes
:����������2&
$sequential_1/lstm_2/lstm_cell_82/add�
7sequential_1/lstm_2/lstm_cell_82/BiasAdd/ReadVariableOpReadVariableOp@sequential_1_lstm_2_lstm_cell_82_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype029
7sequential_1/lstm_2/lstm_cell_82/BiasAdd/ReadVariableOp�
(sequential_1/lstm_2/lstm_cell_82/BiasAddBiasAdd(sequential_1/lstm_2/lstm_cell_82/add:z:0?sequential_1/lstm_2/lstm_cell_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2*
(sequential_1/lstm_2/lstm_cell_82/BiasAdd�
0sequential_1/lstm_2/lstm_cell_82/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :22
0sequential_1/lstm_2/lstm_cell_82/split/split_dim�
&sequential_1/lstm_2/lstm_cell_82/splitSplit9sequential_1/lstm_2/lstm_cell_82/split/split_dim:output:01sequential_1/lstm_2/lstm_cell_82/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2(
&sequential_1/lstm_2/lstm_cell_82/split�
(sequential_1/lstm_2/lstm_cell_82/SigmoidSigmoid/sequential_1/lstm_2/lstm_cell_82/split:output:0*
T0*'
_output_shapes
:���������@2*
(sequential_1/lstm_2/lstm_cell_82/Sigmoid�
*sequential_1/lstm_2/lstm_cell_82/Sigmoid_1Sigmoid/sequential_1/lstm_2/lstm_cell_82/split:output:1*
T0*'
_output_shapes
:���������@2,
*sequential_1/lstm_2/lstm_cell_82/Sigmoid_1�
$sequential_1/lstm_2/lstm_cell_82/mulMul.sequential_1/lstm_2/lstm_cell_82/Sigmoid_1:y:0$sequential_1/lstm_2/zeros_1:output:0*
T0*'
_output_shapes
:���������@2&
$sequential_1/lstm_2/lstm_cell_82/mul�
*sequential_1/lstm_2/lstm_cell_82/Sigmoid_2Sigmoid/sequential_1/lstm_2/lstm_cell_82/split:output:2*
T0*'
_output_shapes
:���������@2,
*sequential_1/lstm_2/lstm_cell_82/Sigmoid_2�
&sequential_1/lstm_2/lstm_cell_82/mul_1Mul/sequential_1/lstm_2/lstm_cell_82/split:output:2.sequential_1/lstm_2/lstm_cell_82/Sigmoid_2:y:0*
T0*'
_output_shapes
:���������@2(
&sequential_1/lstm_2/lstm_cell_82/mul_1�
)sequential_1/lstm_2/lstm_cell_82/IdentityIdentity*sequential_1/lstm_2/lstm_cell_82/mul_1:z:0*
T0*'
_output_shapes
:���������@2+
)sequential_1/lstm_2/lstm_cell_82/Identity�
*sequential_1/lstm_2/lstm_cell_82/IdentityN	IdentityN*sequential_1/lstm_2/lstm_cell_82/mul_1:z:0/sequential_1/lstm_2/lstm_cell_82/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-564002*:
_output_shapes(
&:���������@:���������@2,
*sequential_1/lstm_2/lstm_cell_82/IdentityN�
&sequential_1/lstm_2/lstm_cell_82/mul_2Mul,sequential_1/lstm_2/lstm_cell_82/Sigmoid:y:03sequential_1/lstm_2/lstm_cell_82/IdentityN:output:0*
T0*'
_output_shapes
:���������@2(
&sequential_1/lstm_2/lstm_cell_82/mul_2�
&sequential_1/lstm_2/lstm_cell_82/add_1AddV2(sequential_1/lstm_2/lstm_cell_82/mul:z:0*sequential_1/lstm_2/lstm_cell_82/mul_2:z:0*
T0*'
_output_shapes
:���������@2(
&sequential_1/lstm_2/lstm_cell_82/add_1�
*sequential_1/lstm_2/lstm_cell_82/Sigmoid_3Sigmoid/sequential_1/lstm_2/lstm_cell_82/split:output:3*
T0*'
_output_shapes
:���������@2,
*sequential_1/lstm_2/lstm_cell_82/Sigmoid_3�
*sequential_1/lstm_2/lstm_cell_82/Sigmoid_4Sigmoid*sequential_1/lstm_2/lstm_cell_82/add_1:z:0*
T0*'
_output_shapes
:���������@2,
*sequential_1/lstm_2/lstm_cell_82/Sigmoid_4�
&sequential_1/lstm_2/lstm_cell_82/mul_3Mul*sequential_1/lstm_2/lstm_cell_82/add_1:z:0.sequential_1/lstm_2/lstm_cell_82/Sigmoid_4:y:0*
T0*'
_output_shapes
:���������@2(
&sequential_1/lstm_2/lstm_cell_82/mul_3�
+sequential_1/lstm_2/lstm_cell_82/Identity_1Identity*sequential_1/lstm_2/lstm_cell_82/mul_3:z:0*
T0*'
_output_shapes
:���������@2-
+sequential_1/lstm_2/lstm_cell_82/Identity_1�
,sequential_1/lstm_2/lstm_cell_82/IdentityN_1	IdentityN*sequential_1/lstm_2/lstm_cell_82/mul_3:z:0*sequential_1/lstm_2/lstm_cell_82/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-564011*:
_output_shapes(
&:���������@:���������@2.
,sequential_1/lstm_2/lstm_cell_82/IdentityN_1�
&sequential_1/lstm_2/lstm_cell_82/mul_4Mul.sequential_1/lstm_2/lstm_cell_82/Sigmoid_3:y:05sequential_1/lstm_2/lstm_cell_82/IdentityN_1:output:0*
T0*'
_output_shapes
:���������@2(
&sequential_1/lstm_2/lstm_cell_82/mul_4�
1sequential_1/lstm_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   23
1sequential_1/lstm_2/TensorArrayV2_1/element_shape�
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
sequential_1/lstm_2/time�
,sequential_1/lstm_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2.
,sequential_1/lstm_2/while/maximum_iterations�
&sequential_1/lstm_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_1/lstm_2/while/loop_counter�
sequential_1/lstm_2/whileWhile/sequential_1/lstm_2/while/loop_counter:output:05sequential_1/lstm_2/while/maximum_iterations:output:0!sequential_1/lstm_2/time:output:0,sequential_1/lstm_2/TensorArrayV2_1:handle:0"sequential_1/lstm_2/zeros:output:0$sequential_1/lstm_2/zeros_1:output:0,sequential_1/lstm_2/strided_slice_1:output:0Ksequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0?sequential_1_lstm_2_lstm_cell_82_matmul_readvariableop_resourceAsequential_1_lstm_2_lstm_cell_82_matmul_1_readvariableop_resource@sequential_1_lstm_2_lstm_cell_82_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������@:���������@: : : : : *%
_read_only_resource_inputs
	
*1
body)R'
%sequential_1_lstm_2_while_body_564022*1
cond)R'
%sequential_1_lstm_2_while_cond_564021*K
output_shapes:
8: : : : :���������@:���������@: : : : : *
parallel_iterations 2
sequential_1/lstm_2/while�
Dsequential_1/lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2F
Dsequential_1/lstm_2/TensorArrayV2Stack/TensorListStack/element_shape�
6sequential_1/lstm_2/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_1/lstm_2/while:output:3Msequential_1/lstm_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype028
6sequential_1/lstm_2/TensorArrayV2Stack/TensorListStack�
)sequential_1/lstm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2+
)sequential_1/lstm_2/strided_slice_3/stack�
+sequential_1/lstm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_1/lstm_2/strided_slice_3/stack_1�
+sequential_1/lstm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_2/strided_slice_3/stack_2�
#sequential_1/lstm_2/strided_slice_3StridedSlice?sequential_1/lstm_2/TensorArrayV2Stack/TensorListStack:tensor:02sequential_1/lstm_2/strided_slice_3/stack:output:04sequential_1/lstm_2/strided_slice_3/stack_1:output:04sequential_1/lstm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2%
#sequential_1/lstm_2/strided_slice_3�
$sequential_1/lstm_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_1/lstm_2/transpose_1/perm�
sequential_1/lstm_2/transpose_1	Transpose?sequential_1/lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_1/lstm_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@2!
sequential_1/lstm_2/transpose_1�
sequential_1/lstm_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_1/lstm_2/runtime�
+sequential_1/time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2-
+sequential_1/time_distributed/Reshape/shape�
%sequential_1/time_distributed/ReshapeReshape#sequential_1/lstm_2/transpose_1:y:04sequential_1/time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2'
%sequential_1/time_distributed/Reshape�
;sequential_1/time_distributed/dense_2/MatMul/ReadVariableOpReadVariableOpDsequential_1_time_distributed_dense_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02=
;sequential_1/time_distributed/dense_2/MatMul/ReadVariableOp�
,sequential_1/time_distributed/dense_2/MatMulMatMul.sequential_1/time_distributed/Reshape:output:0Csequential_1/time_distributed/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2.
,sequential_1/time_distributed/dense_2/MatMul�
<sequential_1/time_distributed/dense_2/BiasAdd/ReadVariableOpReadVariableOpEsequential_1_time_distributed_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02>
<sequential_1/time_distributed/dense_2/BiasAdd/ReadVariableOp�
-sequential_1/time_distributed/dense_2/BiasAddBiasAdd6sequential_1/time_distributed/dense_2/MatMul:product:0Dsequential_1/time_distributed/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2/
-sequential_1/time_distributed/dense_2/BiasAdd�
-sequential_1/time_distributed/dense_2/SigmoidSigmoid6sequential_1/time_distributed/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2/
-sequential_1/time_distributed/dense_2/Sigmoid�
)sequential_1/time_distributed/dense_2/mulMul6sequential_1/time_distributed/dense_2/BiasAdd:output:01sequential_1/time_distributed/dense_2/Sigmoid:y:0*
T0*'
_output_shapes
:���������@2+
)sequential_1/time_distributed/dense_2/mul�
.sequential_1/time_distributed/dense_2/IdentityIdentity-sequential_1/time_distributed/dense_2/mul:z:0*
T0*'
_output_shapes
:���������@20
.sequential_1/time_distributed/dense_2/Identity�
/sequential_1/time_distributed/dense_2/IdentityN	IdentityN-sequential_1/time_distributed/dense_2/mul:z:06sequential_1/time_distributed/dense_2/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-564123*:
_output_shapes(
&:���������@:���������@21
/sequential_1/time_distributed/dense_2/IdentityN�
-sequential_1/time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����   @   2/
-sequential_1/time_distributed/Reshape_1/shape�
'sequential_1/time_distributed/Reshape_1Reshape8sequential_1/time_distributed/dense_2/IdentityN:output:06sequential_1/time_distributed/Reshape_1/shape:output:0*
T0*+
_output_shapes
:���������@2)
'sequential_1/time_distributed/Reshape_1�
-sequential_1/time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2/
-sequential_1/time_distributed/Reshape_2/shape�
'sequential_1/time_distributed/Reshape_2Reshape#sequential_1/lstm_2/transpose_1:y:06sequential_1/time_distributed/Reshape_2/shape:output:0*
T0*'
_output_shapes
:���������@2)
'sequential_1/time_distributed/Reshape_2�
-sequential_1/time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2/
-sequential_1/time_distributed_1/Reshape/shape�
'sequential_1/time_distributed_1/ReshapeReshape0sequential_1/time_distributed/Reshape_1:output:06sequential_1/time_distributed_1/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2)
'sequential_1/time_distributed_1/Reshape�
=sequential_1/time_distributed_1/dense_3/MatMul/ReadVariableOpReadVariableOpFsequential_1_time_distributed_1_dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02?
=sequential_1/time_distributed_1/dense_3/MatMul/ReadVariableOp�
.sequential_1/time_distributed_1/dense_3/MatMulMatMul0sequential_1/time_distributed_1/Reshape:output:0Esequential_1/time_distributed_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������20
.sequential_1/time_distributed_1/dense_3/MatMul�
>sequential_1/time_distributed_1/dense_3/BiasAdd/ReadVariableOpReadVariableOpGsequential_1_time_distributed_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02@
>sequential_1/time_distributed_1/dense_3/BiasAdd/ReadVariableOp�
/sequential_1/time_distributed_1/dense_3/BiasAddBiasAdd8sequential_1/time_distributed_1/dense_3/MatMul:product:0Fsequential_1/time_distributed_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������21
/sequential_1/time_distributed_1/dense_3/BiasAdd�
/sequential_1/time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����      21
/sequential_1/time_distributed_1/Reshape_1/shape�
)sequential_1/time_distributed_1/Reshape_1Reshape8sequential_1/time_distributed_1/dense_3/BiasAdd:output:08sequential_1/time_distributed_1/Reshape_1/shape:output:0*
T0*+
_output_shapes
:���������2+
)sequential_1/time_distributed_1/Reshape_1�
/sequential_1/time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   21
/sequential_1/time_distributed_1/Reshape_2/shape�
)sequential_1/time_distributed_1/Reshape_2Reshape0sequential_1/time_distributed/Reshape_1:output:08sequential_1/time_distributed_1/Reshape_2/shape:output:0*
T0*'
_output_shapes
:���������@2+
)sequential_1/time_distributed_1/Reshape_2�
IdentityIdentity2sequential_1/time_distributed_1/Reshape_1:output:08^sequential_1/lstm_1/lstm_cell_81/BiasAdd/ReadVariableOp7^sequential_1/lstm_1/lstm_cell_81/MatMul/ReadVariableOp9^sequential_1/lstm_1/lstm_cell_81/MatMul_1/ReadVariableOp^sequential_1/lstm_1/while8^sequential_1/lstm_2/lstm_cell_82/BiasAdd/ReadVariableOp7^sequential_1/lstm_2/lstm_cell_82/MatMul/ReadVariableOp9^sequential_1/lstm_2/lstm_cell_82/MatMul_1/ReadVariableOp^sequential_1/lstm_2/while=^sequential_1/time_distributed/dense_2/BiasAdd/ReadVariableOp<^sequential_1/time_distributed/dense_2/MatMul/ReadVariableOp?^sequential_1/time_distributed_1/dense_3/BiasAdd/ReadVariableOp>^sequential_1/time_distributed_1/dense_3/MatMul/ReadVariableOp*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : 2r
7sequential_1/lstm_1/lstm_cell_81/BiasAdd/ReadVariableOp7sequential_1/lstm_1/lstm_cell_81/BiasAdd/ReadVariableOp2p
6sequential_1/lstm_1/lstm_cell_81/MatMul/ReadVariableOp6sequential_1/lstm_1/lstm_cell_81/MatMul/ReadVariableOp2t
8sequential_1/lstm_1/lstm_cell_81/MatMul_1/ReadVariableOp8sequential_1/lstm_1/lstm_cell_81/MatMul_1/ReadVariableOp26
sequential_1/lstm_1/whilesequential_1/lstm_1/while2r
7sequential_1/lstm_2/lstm_cell_82/BiasAdd/ReadVariableOp7sequential_1/lstm_2/lstm_cell_82/BiasAdd/ReadVariableOp2p
6sequential_1/lstm_2/lstm_cell_82/MatMul/ReadVariableOp6sequential_1/lstm_2/lstm_cell_82/MatMul/ReadVariableOp2t
8sequential_1/lstm_2/lstm_cell_82/MatMul_1/ReadVariableOp8sequential_1/lstm_2/lstm_cell_82/MatMul_1/ReadVariableOp26
sequential_1/lstm_2/whilesequential_1/lstm_2/while2|
<sequential_1/time_distributed/dense_2/BiasAdd/ReadVariableOp<sequential_1/time_distributed/dense_2/BiasAdd/ReadVariableOp2z
;sequential_1/time_distributed/dense_2/MatMul/ReadVariableOp;sequential_1/time_distributed/dense_2/MatMul/ReadVariableOp2�
>sequential_1/time_distributed_1/dense_3/BiasAdd/ReadVariableOp>sequential_1/time_distributed_1/dense_3/BiasAdd/ReadVariableOp2~
=sequential_1/time_distributed_1/dense_3/MatMul/ReadVariableOp=sequential_1/time_distributed_1/dense_3/MatMul/ReadVariableOp:Y U
+
_output_shapes
:���������
&
_user_specified_namelstm_1_input
�&
�
while_body_564245
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_81_564269_0:	�/
while_lstm_cell_81_564271_0:
��*
while_lstm_cell_81_564273_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_81_564269:	�-
while_lstm_cell_81_564271:
��(
while_lstm_cell_81_564273:	���*while/lstm_cell_81/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
*while/lstm_cell_81/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_81_564269_0while_lstm_cell_81_564271_0while_lstm_cell_81_564273_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_81_layer_call_and_return_conditional_losses_5642312,
*while/lstm_cell_81/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_81/StatefulPartitionedCall:output:0*
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
while/add_1�
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_81/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_81/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_81/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_81/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity3while/lstm_cell_81/StatefulPartitionedCall:output:1+^while/lstm_cell_81/StatefulPartitionedCall*
T0*(
_output_shapes
:����������2
while/Identity_4�
while/Identity_5Identity3while/lstm_cell_81/StatefulPartitionedCall:output:2+^while/lstm_cell_81/StatefulPartitionedCall*
T0*(
_output_shapes
:����������2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_81_564269while_lstm_cell_81_564269_0"8
while_lstm_cell_81_564271while_lstm_cell_81_564271_0"8
while_lstm_cell_81_564273while_lstm_cell_81_564273_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2X
*while/lstm_cell_81/StatefulPartitionedCall*while/lstm_cell_81/StatefulPartitionedCall: 
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
:����������:.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�

�
-__inference_sequential_1_layer_call_fn_566850

inputs
unknown:	�
	unknown_0:
��
	unknown_1:	�
	unknown_2:
��
	unknown_3:	@�
	unknown_4:	�
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_5661422
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�d
�
B__inference_lstm_1_layer_call_and_return_conditional_losses_567997
inputs_0>
+lstm_cell_81_matmul_readvariableop_resource:	�A
-lstm_cell_81_matmul_1_readvariableop_resource:
��;
,lstm_cell_81_biasadd_readvariableop_resource:	�
identity��#lstm_cell_81/BiasAdd/ReadVariableOp�"lstm_cell_81/MatMul/ReadVariableOp�$lstm_cell_81/MatMul_1/ReadVariableOp�whileF
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
strided_slice/stack_2�
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
B :�2
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
B :�2
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
B :�2
zeros/packed/1�
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
:����������2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2
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
B :�2
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
B :�2
zeros_1/packed/1�
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
:����������2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_81/MatMul/ReadVariableOpReadVariableOp+lstm_cell_81_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"lstm_cell_81/MatMul/ReadVariableOp�
lstm_cell_81/MatMulMatMulstrided_slice_2:output:0*lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/MatMul�
$lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_81_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02&
$lstm_cell_81/MatMul_1/ReadVariableOp�
lstm_cell_81/MatMul_1MatMulzeros:output:0,lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/MatMul_1�
lstm_cell_81/addAddV2lstm_cell_81/MatMul:product:0lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/add�
#lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_81_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_81/BiasAdd/ReadVariableOp�
lstm_cell_81/BiasAddBiasAddlstm_cell_81/add:z:0+lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/BiasAdd~
lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_81/split/split_dim�
lstm_cell_81/splitSplit%lstm_cell_81/split/split_dim:output:0lstm_cell_81/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split2
lstm_cell_81/split�
lstm_cell_81/SigmoidSigmoidlstm_cell_81/split:output:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/Sigmoid�
lstm_cell_81/Sigmoid_1Sigmoidlstm_cell_81/split:output:1*
T0*(
_output_shapes
:����������2
lstm_cell_81/Sigmoid_1�
lstm_cell_81/mulMullstm_cell_81/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/mul�
lstm_cell_81/Sigmoid_2Sigmoidlstm_cell_81/split:output:2*
T0*(
_output_shapes
:����������2
lstm_cell_81/Sigmoid_2�
lstm_cell_81/mul_1Mullstm_cell_81/split:output:2lstm_cell_81/Sigmoid_2:y:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/mul_1�
lstm_cell_81/IdentityIdentitylstm_cell_81/mul_1:z:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/Identity�
lstm_cell_81/IdentityN	IdentityNlstm_cell_81/mul_1:z:0lstm_cell_81/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-567883*<
_output_shapes*
(:����������:����������2
lstm_cell_81/IdentityN�
lstm_cell_81/mul_2Mullstm_cell_81/Sigmoid:y:0lstm_cell_81/IdentityN:output:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/mul_2�
lstm_cell_81/add_1AddV2lstm_cell_81/mul:z:0lstm_cell_81/mul_2:z:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/add_1�
lstm_cell_81/Sigmoid_3Sigmoidlstm_cell_81/split:output:3*
T0*(
_output_shapes
:����������2
lstm_cell_81/Sigmoid_3�
lstm_cell_81/Sigmoid_4Sigmoidlstm_cell_81/add_1:z:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/Sigmoid_4�
lstm_cell_81/mul_3Mullstm_cell_81/add_1:z:0lstm_cell_81/Sigmoid_4:y:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/mul_3�
lstm_cell_81/Identity_1Identitylstm_cell_81/mul_3:z:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/Identity_1�
lstm_cell_81/IdentityN_1	IdentityNlstm_cell_81/mul_3:z:0lstm_cell_81/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-567892*<
_output_shapes*
(:����������:����������2
lstm_cell_81/IdentityN_1�
lstm_cell_81/mul_4Mullstm_cell_81/Sigmoid_3:y:0!lstm_cell_81/IdentityN_1:output:0*
T0*(
_output_shapes
:����������2
lstm_cell_81/mul_4�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_81_matmul_readvariableop_resource-lstm_cell_81_matmul_1_readvariableop_resource,lstm_cell_81_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_567903*
condR
while_cond_567902*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:�������������������*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:�������������������2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime�
IdentityIdentitytranspose_1:y:0$^lstm_cell_81/BiasAdd/ReadVariableOp#^lstm_cell_81/MatMul/ReadVariableOp%^lstm_cell_81/MatMul_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:�������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2J
#lstm_cell_81/BiasAdd/ReadVariableOp#lstm_cell_81/BiasAdd/ReadVariableOp2H
"lstm_cell_81/MatMul/ReadVariableOp"lstm_cell_81/MatMul/ReadVariableOp2L
$lstm_cell_81/MatMul_1/ReadVariableOp$lstm_cell_81/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�L
�
while_body_566518
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_81_matmul_readvariableop_resource_0:	�I
5while_lstm_cell_81_matmul_1_readvariableop_resource_0:
��C
4while_lstm_cell_81_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_81_matmul_readvariableop_resource:	�G
3while_lstm_cell_81_matmul_1_readvariableop_resource:
��A
2while_lstm_cell_81_biasadd_readvariableop_resource:	���)while/lstm_cell_81/BiasAdd/ReadVariableOp�(while/lstm_cell_81/MatMul/ReadVariableOp�*while/lstm_cell_81/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_81/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_81_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02*
(while/lstm_cell_81/MatMul/ReadVariableOp�
while/lstm_cell_81/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/MatMul�
*while/lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_81_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype02,
*while/lstm_cell_81/MatMul_1/ReadVariableOp�
while/lstm_cell_81/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/MatMul_1�
while/lstm_cell_81/addAddV2#while/lstm_cell_81/MatMul:product:0%while/lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/add�
)while/lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_81_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_81/BiasAdd/ReadVariableOp�
while/lstm_cell_81/BiasAddBiasAddwhile/lstm_cell_81/add:z:01while/lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/BiasAdd�
"while/lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_81/split/split_dim�
while/lstm_cell_81/splitSplit+while/lstm_cell_81/split/split_dim:output:0#while/lstm_cell_81/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split2
while/lstm_cell_81/split�
while/lstm_cell_81/SigmoidSigmoid!while/lstm_cell_81/split:output:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Sigmoid�
while/lstm_cell_81/Sigmoid_1Sigmoid!while/lstm_cell_81/split:output:1*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Sigmoid_1�
while/lstm_cell_81/mulMul while/lstm_cell_81/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/mul�
while/lstm_cell_81/Sigmoid_2Sigmoid!while/lstm_cell_81/split:output:2*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Sigmoid_2�
while/lstm_cell_81/mul_1Mul!while/lstm_cell_81/split:output:2 while/lstm_cell_81/Sigmoid_2:y:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/mul_1�
while/lstm_cell_81/IdentityIdentitywhile/lstm_cell_81/mul_1:z:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Identity�
while/lstm_cell_81/IdentityN	IdentityNwhile/lstm_cell_81/mul_1:z:0!while/lstm_cell_81/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-566560*<
_output_shapes*
(:����������:����������2
while/lstm_cell_81/IdentityN�
while/lstm_cell_81/mul_2Mulwhile/lstm_cell_81/Sigmoid:y:0%while/lstm_cell_81/IdentityN:output:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/mul_2�
while/lstm_cell_81/add_1AddV2while/lstm_cell_81/mul:z:0while/lstm_cell_81/mul_2:z:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/add_1�
while/lstm_cell_81/Sigmoid_3Sigmoid!while/lstm_cell_81/split:output:3*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Sigmoid_3�
while/lstm_cell_81/Sigmoid_4Sigmoidwhile/lstm_cell_81/add_1:z:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Sigmoid_4�
while/lstm_cell_81/mul_3Mulwhile/lstm_cell_81/add_1:z:0 while/lstm_cell_81/Sigmoid_4:y:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/mul_3�
while/lstm_cell_81/Identity_1Identitywhile/lstm_cell_81/mul_3:z:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/Identity_1�
while/lstm_cell_81/IdentityN_1	IdentityNwhile/lstm_cell_81/mul_3:z:0while/lstm_cell_81/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-566569*<
_output_shapes*
(:����������:����������2 
while/lstm_cell_81/IdentityN_1�
while/lstm_cell_81/mul_4Mul while/lstm_cell_81/Sigmoid_3:y:0'while/lstm_cell_81/IdentityN_1:output:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_81/mul_4�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_81/mul_4:z:0*
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
while/add_1�
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_81/mul_4:z:0*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:����������2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_81/add_1:z:0*^while/lstm_cell_81/BiasAdd/ReadVariableOp)^while/lstm_cell_81/MatMul/ReadVariableOp+^while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:����������2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_81_biasadd_readvariableop_resource4while_lstm_cell_81_biasadd_readvariableop_resource_0"l
3while_lstm_cell_81_matmul_1_readvariableop_resource5while_lstm_cell_81_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_81_matmul_readvariableop_resource3while_lstm_cell_81_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2V
)while/lstm_cell_81/BiasAdd/ReadVariableOp)while/lstm_cell_81/BiasAdd/ReadVariableOp2T
(while/lstm_cell_81/MatMul/ReadVariableOp(while/lstm_cell_81/MatMul/ReadVariableOp2X
*while/lstm_cell_81/MatMul_1/ReadVariableOp*while/lstm_cell_81/MatMul_1/ReadVariableOp: 
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
:����������:.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�

�
lstm_1_while_cond_567319*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3,
(lstm_1_while_less_lstm_1_strided_slice_1B
>lstm_1_while_lstm_1_while_cond_567319___redundant_placeholder0B
>lstm_1_while_lstm_1_while_cond_567319___redundant_placeholder1B
>lstm_1_while_lstm_1_while_cond_567319___redundant_placeholder2B
>lstm_1_while_lstm_1_while_cond_567319___redundant_placeholder3
lstm_1_while_identity
�
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
B: : : : :����������:����������: ::::: 
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
:����������:.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�Y
�
__inference__traced_save_569729
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

identity_1��MergeV2Checkpoints�
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
Const_1�
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
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:**
dtype0*�
value�B�*B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:**
dtype0*g
value^B\*B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop4savev2_lstm_1_lstm_cell_1_kernel_read_readvariableop>savev2_lstm_1_lstm_cell_1_recurrent_kernel_read_readvariableop2savev2_lstm_1_lstm_cell_1_bias_read_readvariableop4savev2_lstm_2_lstm_cell_2_kernel_read_readvariableop>savev2_lstm_2_lstm_cell_2_recurrent_kernel_read_readvariableop2savev2_lstm_2_lstm_cell_2_bias_read_readvariableop2savev2_time_distributed_kernel_read_readvariableop0savev2_time_distributed_bias_read_readvariableop4savev2_time_distributed_1_kernel_read_readvariableop2savev2_time_distributed_1_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop;savev2_adam_lstm_1_lstm_cell_1_kernel_m_read_readvariableopEsavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_1_lstm_cell_1_bias_m_read_readvariableop;savev2_adam_lstm_2_lstm_cell_2_kernel_m_read_readvariableopEsavev2_adam_lstm_2_lstm_cell_2_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_2_lstm_cell_2_bias_m_read_readvariableop9savev2_adam_time_distributed_kernel_m_read_readvariableop7savev2_adam_time_distributed_bias_m_read_readvariableop;savev2_adam_time_distributed_1_kernel_m_read_readvariableop9savev2_adam_time_distributed_1_bias_m_read_readvariableop;savev2_adam_lstm_1_lstm_cell_1_kernel_v_read_readvariableopEsavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_1_lstm_cell_1_bias_v_read_readvariableop;savev2_adam_lstm_2_lstm_cell_2_kernel_v_read_readvariableopEsavev2_adam_lstm_2_lstm_cell_2_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_2_lstm_cell_2_bias_v_read_readvariableop9savev2_adam_time_distributed_kernel_v_read_readvariableop7savev2_adam_time_distributed_bias_v_read_readvariableop;savev2_adam_time_distributed_1_kernel_v_read_readvariableop9savev2_adam_time_distributed_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *8
dtypes.
,2*	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: : : : : : :	�:
��:�:
��:	@�:�:@@:@:@:: : : : : : :	�:
��:�:
��:	@�:�:@@:@:@::	�:
��:�:
��:	@�:�:@@:@:@:: 2(
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
:	�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&	"
 
_output_shapes
:
��:%
!

_output_shapes
:	@�:!

_output_shapes	
:�:$ 

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
:	�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:%!

_output_shapes
:	@�:!

_output_shapes	
:�:$ 

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
:	�:&!"
 
_output_shapes
:
��:!"

_output_shapes	
:�:&#"
 
_output_shapes
:
��:%$!

_output_shapes
:	@�:!%

_output_shapes	
:�:$& 

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
�
�
-__inference_lstm_cell_82_layer_call_fn_569438

inputs
states_0
states_1
unknown:
��
	unknown_0:	@�
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������@:���������@:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_82_layer_call_and_return_conditional_losses_5648812
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������@2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:���������@2

Identity_1�

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:���������@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:����������:���������@:���������@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/1
�
�
3__inference_time_distributed_1_layer_call_fn_569215

inputs
unknown:@
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_5656742
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:������������������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������@
 
_user_specified_nameinputs
�
�
while_cond_566324
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_566324___redundant_placeholder04
0while_while_cond_566324___redundant_placeholder14
0while_while_cond_566324___redundant_placeholder24
0while_while_cond_566324___redundant_placeholder3
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
@: : : : :���������@:���������@: ::::: 
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
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�
�
H__inference_sequential_1_layer_call_and_return_conditional_losses_566680

inputs 
lstm_1_566651:	�!
lstm_1_566653:
��
lstm_1_566655:	�!
lstm_2_566658:
�� 
lstm_2_566660:	@�
lstm_2_566662:	�)
time_distributed_566665:@@%
time_distributed_566667:@+
time_distributed_1_566672:@'
time_distributed_1_566674:
identity��lstm_1/StatefulPartitionedCall�lstm_2/StatefulPartitionedCall�(time_distributed/StatefulPartitionedCall�*time_distributed_1/StatefulPartitionedCall�
lstm_1/StatefulPartitionedCallStatefulPartitionedCallinputslstm_1_566651lstm_1_566653lstm_1_566655*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_5666122 
lstm_1/StatefulPartitionedCall�
lstm_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0lstm_2_566658lstm_2_566660lstm_2_566662*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_5664192 
lstm_2/StatefulPartitionedCall�
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0time_distributed_566665time_distributed_566667*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_5662282*
(time_distributed/StatefulPartitionedCall�
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2 
time_distributed/Reshape/shape�
time_distributed/ReshapeReshape'lstm_2/StatefulPartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
time_distributed/Reshape�
*time_distributed_1/StatefulPartitionedCallStatefulPartitionedCall1time_distributed/StatefulPartitionedCall:output:0time_distributed_1_566672time_distributed_1_566674*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_5661902,
*time_distributed_1/StatefulPartitionedCall�
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2"
 time_distributed_1/Reshape/shape�
time_distributed_1/ReshapeReshape1time_distributed/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@2
time_distributed_1/Reshape�
IdentityIdentity3time_distributed_1/StatefulPartitionedCall:output:0^lstm_1/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_1/StatefulPartitionedCall*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : 2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_1/StatefulPartitionedCall*time_distributed_1/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�&
�
while_body_565115
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_82_565139_0:
��.
while_lstm_cell_82_565141_0:	@�*
while_lstm_cell_82_565143_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_82_565139:
��,
while_lstm_cell_82_565141:	@�(
while_lstm_cell_82_565143:	���*while/lstm_cell_82/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:����������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
*while/lstm_cell_82/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_82_565139_0while_lstm_cell_82_565141_0while_lstm_cell_82_565143_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������@:���������@:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_82_layer_call_and_return_conditional_losses_5650372,
*while/lstm_cell_82/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_82/StatefulPartitionedCall:output:0*
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
while/add_1�
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_82/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_82/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_82/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_82/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity3while/lstm_cell_82/StatefulPartitionedCall:output:1+^while/lstm_cell_82/StatefulPartitionedCall*
T0*'
_output_shapes
:���������@2
while/Identity_4�
while/Identity_5Identity3while/lstm_cell_82/StatefulPartitionedCall:output:2+^while/lstm_cell_82/StatefulPartitionedCall*
T0*'
_output_shapes
:���������@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_82_565139while_lstm_cell_82_565139_0"8
while_lstm_cell_82_565141while_lstm_cell_82_565141_0"8
while_lstm_cell_82_565143while_lstm_cell_82_565143_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2X
*while/lstm_cell_82/StatefulPartitionedCall*while/lstm_cell_82/StatefulPartitionedCall: 
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
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�X
�

lstm_1_while_body_567320*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3)
%lstm_1_while_lstm_1_strided_slice_1_0e
alstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_1_while_lstm_cell_81_matmul_readvariableop_resource_0:	�P
<lstm_1_while_lstm_cell_81_matmul_1_readvariableop_resource_0:
��J
;lstm_1_while_lstm_cell_81_biasadd_readvariableop_resource_0:	�
lstm_1_while_identity
lstm_1_while_identity_1
lstm_1_while_identity_2
lstm_1_while_identity_3
lstm_1_while_identity_4
lstm_1_while_identity_5'
#lstm_1_while_lstm_1_strided_slice_1c
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensorK
8lstm_1_while_lstm_cell_81_matmul_readvariableop_resource:	�N
:lstm_1_while_lstm_cell_81_matmul_1_readvariableop_resource:
��H
9lstm_1_while_lstm_cell_81_biasadd_readvariableop_resource:	���0lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOp�/lstm_1/while/lstm_cell_81/MatMul/ReadVariableOp�1lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOp�
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2@
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape�
0lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0lstm_1_while_placeholderGlstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype022
0lstm_1/while/TensorArrayV2Read/TensorListGetItem�
/lstm_1/while/lstm_cell_81/MatMul/ReadVariableOpReadVariableOp:lstm_1_while_lstm_cell_81_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype021
/lstm_1/while/lstm_cell_81/MatMul/ReadVariableOp�
 lstm_1/while/lstm_cell_81/MatMulMatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_1/while/lstm_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2"
 lstm_1/while/lstm_cell_81/MatMul�
1lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOpReadVariableOp<lstm_1_while_lstm_cell_81_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype023
1lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOp�
"lstm_1/while/lstm_cell_81/MatMul_1MatMullstm_1_while_placeholder_29lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2$
"lstm_1/while/lstm_cell_81/MatMul_1�
lstm_1/while/lstm_cell_81/addAddV2*lstm_1/while/lstm_cell_81/MatMul:product:0,lstm_1/while/lstm_cell_81/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_1/while/lstm_cell_81/add�
0lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOpReadVariableOp;lstm_1_while_lstm_cell_81_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype022
0lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOp�
!lstm_1/while/lstm_cell_81/BiasAddBiasAdd!lstm_1/while/lstm_cell_81/add:z:08lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2#
!lstm_1/while/lstm_cell_81/BiasAdd�
)lstm_1/while/lstm_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2+
)lstm_1/while/lstm_cell_81/split/split_dim�
lstm_1/while/lstm_cell_81/splitSplit2lstm_1/while/lstm_cell_81/split/split_dim:output:0*lstm_1/while/lstm_cell_81/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split2!
lstm_1/while/lstm_cell_81/split�
!lstm_1/while/lstm_cell_81/SigmoidSigmoid(lstm_1/while/lstm_cell_81/split:output:0*
T0*(
_output_shapes
:����������2#
!lstm_1/while/lstm_cell_81/Sigmoid�
#lstm_1/while/lstm_cell_81/Sigmoid_1Sigmoid(lstm_1/while/lstm_cell_81/split:output:1*
T0*(
_output_shapes
:����������2%
#lstm_1/while/lstm_cell_81/Sigmoid_1�
lstm_1/while/lstm_cell_81/mulMul'lstm_1/while/lstm_cell_81/Sigmoid_1:y:0lstm_1_while_placeholder_3*
T0*(
_output_shapes
:����������2
lstm_1/while/lstm_cell_81/mul�
#lstm_1/while/lstm_cell_81/Sigmoid_2Sigmoid(lstm_1/while/lstm_cell_81/split:output:2*
T0*(
_output_shapes
:����������2%
#lstm_1/while/lstm_cell_81/Sigmoid_2�
lstm_1/while/lstm_cell_81/mul_1Mul(lstm_1/while/lstm_cell_81/split:output:2'lstm_1/while/lstm_cell_81/Sigmoid_2:y:0*
T0*(
_output_shapes
:����������2!
lstm_1/while/lstm_cell_81/mul_1�
"lstm_1/while/lstm_cell_81/IdentityIdentity#lstm_1/while/lstm_cell_81/mul_1:z:0*
T0*(
_output_shapes
:����������2$
"lstm_1/while/lstm_cell_81/Identity�
#lstm_1/while/lstm_cell_81/IdentityN	IdentityN#lstm_1/while/lstm_cell_81/mul_1:z:0(lstm_1/while/lstm_cell_81/split:output:2*
T
2*,
_gradient_op_typeCustomGradient-567362*<
_output_shapes*
(:����������:����������2%
#lstm_1/while/lstm_cell_81/IdentityN�
lstm_1/while/lstm_cell_81/mul_2Mul%lstm_1/while/lstm_cell_81/Sigmoid:y:0,lstm_1/while/lstm_cell_81/IdentityN:output:0*
T0*(
_output_shapes
:����������2!
lstm_1/while/lstm_cell_81/mul_2�
lstm_1/while/lstm_cell_81/add_1AddV2!lstm_1/while/lstm_cell_81/mul:z:0#lstm_1/while/lstm_cell_81/mul_2:z:0*
T0*(
_output_shapes
:����������2!
lstm_1/while/lstm_cell_81/add_1�
#lstm_1/while/lstm_cell_81/Sigmoid_3Sigmoid(lstm_1/while/lstm_cell_81/split:output:3*
T0*(
_output_shapes
:����������2%
#lstm_1/while/lstm_cell_81/Sigmoid_3�
#lstm_1/while/lstm_cell_81/Sigmoid_4Sigmoid#lstm_1/while/lstm_cell_81/add_1:z:0*
T0*(
_output_shapes
:����������2%
#lstm_1/while/lstm_cell_81/Sigmoid_4�
lstm_1/while/lstm_cell_81/mul_3Mul#lstm_1/while/lstm_cell_81/add_1:z:0'lstm_1/while/lstm_cell_81/Sigmoid_4:y:0*
T0*(
_output_shapes
:����������2!
lstm_1/while/lstm_cell_81/mul_3�
$lstm_1/while/lstm_cell_81/Identity_1Identity#lstm_1/while/lstm_cell_81/mul_3:z:0*
T0*(
_output_shapes
:����������2&
$lstm_1/while/lstm_cell_81/Identity_1�
%lstm_1/while/lstm_cell_81/IdentityN_1	IdentityN#lstm_1/while/lstm_cell_81/mul_3:z:0#lstm_1/while/lstm_cell_81/add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-567371*<
_output_shapes*
(:����������:����������2'
%lstm_1/while/lstm_cell_81/IdentityN_1�
lstm_1/while/lstm_cell_81/mul_4Mul'lstm_1/while/lstm_cell_81/Sigmoid_3:y:0.lstm_1/while/lstm_cell_81/IdentityN_1:output:0*
T0*(
_output_shapes
:����������2!
lstm_1/while/lstm_cell_81/mul_4�
1lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_1_while_placeholder_1lstm_1_while_placeholder#lstm_1/while/lstm_cell_81/mul_4:z:0*
_output_shapes
: *
element_dtype023
1lstm_1/while/TensorArrayV2Write/TensorListSetItemj
lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/while/add/y�
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
lstm_1/while/add_1/y�
lstm_1/while/add_1AddV2&lstm_1_while_lstm_1_while_loop_counterlstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_1/while/add_1�
lstm_1/while/IdentityIdentitylstm_1/while/add_1:z:01^lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_81/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity�
lstm_1/while/Identity_1Identity,lstm_1_while_lstm_1_while_maximum_iterations1^lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_81/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_1�
lstm_1/while/Identity_2Identitylstm_1/while/add:z:01^lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_81/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_2�
lstm_1/while/Identity_3IdentityAlstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:01^lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_81/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_3�
lstm_1/while/Identity_4Identity#lstm_1/while/lstm_cell_81/mul_4:z:01^lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_81/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:����������2
lstm_1/while/Identity_4�
lstm_1/while/Identity_5Identity#lstm_1/while/lstm_cell_81/add_1:z:01^lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_81/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:����������2
lstm_1/while/Identity_5"7
lstm_1_while_identitylstm_1/while/Identity:output:0";
lstm_1_while_identity_1 lstm_1/while/Identity_1:output:0";
lstm_1_while_identity_2 lstm_1/while/Identity_2:output:0";
lstm_1_while_identity_3 lstm_1/while/Identity_3:output:0";
lstm_1_while_identity_4 lstm_1/while/Identity_4:output:0";
lstm_1_while_identity_5 lstm_1/while/Identity_5:output:0"L
#lstm_1_while_lstm_1_strided_slice_1%lstm_1_while_lstm_1_strided_slice_1_0"x
9lstm_1_while_lstm_cell_81_biasadd_readvariableop_resource;lstm_1_while_lstm_cell_81_biasadd_readvariableop_resource_0"z
:lstm_1_while_lstm_cell_81_matmul_1_readvariableop_resource<lstm_1_while_lstm_cell_81_matmul_1_readvariableop_resource_0"v
8lstm_1_while_lstm_cell_81_matmul_readvariableop_resource:lstm_1_while_lstm_cell_81_matmul_readvariableop_resource_0"�
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensoralstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2d
0lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOp0lstm_1/while/lstm_cell_81/BiasAdd/ReadVariableOp2b
/lstm_1/while/lstm_cell_81/MatMul/ReadVariableOp/lstm_1/while/lstm_cell_81/MatMul/ReadVariableOp2f
1lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOp1lstm_1/while/lstm_cell_81/MatMul_1/ReadVariableOp: 
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
:����������:.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�"
�
H__inference_lstm_cell_82_layer_call_and_return_conditional_losses_564881

inputs

states
states_12
matmul_readvariableop_resource:
��3
 matmul_1_readvariableop_resource:	@�.
biasadd_readvariableop_resource:	�

identity_2

identity_3

identity_4��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������@2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������@2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������@2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:���������@2
	Sigmoid_2f
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*'
_output_shapes
:���������@2
mul_1]
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:���������@2

Identity�
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*,
_gradient_op_typeCustomGradient-564862*:
_output_shapes(
&:���������@:���������@2
	IdentityNh
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*'
_output_shapes
:���������@2
mul_2]
add_1AddV2mul:z:0	mul_2:z:0*
T0*'
_output_shapes
:���������@2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������@2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:���������@2
	Sigmoid_4a
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*'
_output_shapes
:���������@2
mul_3a

Identity_1Identity	mul_3:z:0*
T0*'
_output_shapes
:���������@2

Identity_1�
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-564871*:
_output_shapes(
&:���������@:���������@2
IdentityN_1l
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*'
_output_shapes
:���������@2
mul_4�

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity_2�

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity_3�

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:����������:���������@:���������@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������@
 
_user_specified_namestates:OK
'
_output_shapes
:���������@
 
_user_specified_namestates
�
�
'__inference_lstm_2_layer_call_fn_568361
inputs_0
unknown:
��
	unknown_0:	@�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_5651842
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :������������������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':�������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:�������������������
"
_user_specified_name
inputs/0
�"
�
H__inference_lstm_cell_81_layer_call_and_return_conditional_losses_569421

inputs
states_0
states_11
matmul_readvariableop_resource:	�4
 matmul_1_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�

identity_2

identity_3

identity_4��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:����������2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:����������2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:����������2
muld
	Sigmoid_2Sigmoidsplit:output:2*
T0*(
_output_shapes
:����������2
	Sigmoid_2g
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*(
_output_shapes
:����������2
mul_1^
IdentityIdentity	mul_1:z:0*
T0*(
_output_shapes
:����������2

Identity�
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*,
_gradient_op_typeCustomGradient-569402*<
_output_shapes*
(:����������:����������2
	IdentityNi
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*(
_output_shapes
:����������2
mul_2^
add_1AddV2mul:z:0	mul_2:z:0*
T0*(
_output_shapes
:����������2
add_1d
	Sigmoid_3Sigmoidsplit:output:3*
T0*(
_output_shapes
:����������2
	Sigmoid_3_
	Sigmoid_4Sigmoid	add_1:z:0*
T0*(
_output_shapes
:����������2
	Sigmoid_4b
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*(
_output_shapes
:����������2
mul_3b

Identity_1Identity	mul_3:z:0*
T0*(
_output_shapes
:����������2

Identity_1�
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-569411*<
_output_shapes*
(:����������:����������2
IdentityN_1m
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*(
_output_shapes
:����������2
mul_4�

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity_2�

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity_3�

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:���������:����������:����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:RN
(
_output_shapes
:����������
"
_user_specified_name
states/0:RN
(
_output_shapes
:����������
"
_user_specified_name
states/1
�
�
1__inference_time_distributed_layer_call_fn_569103

inputs
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_5662282
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�"
�
H__inference_lstm_cell_82_layer_call_and_return_conditional_losses_569497

inputs
states_0
states_12
matmul_readvariableop_resource:
��3
 matmul_1_readvariableop_resource:	@�.
biasadd_readvariableop_resource:	�

identity_2

identity_3

identity_4��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������@2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������@2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������@2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:���������@2
	Sigmoid_2f
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*'
_output_shapes
:���������@2
mul_1]
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:���������@2

Identity�
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*,
_gradient_op_typeCustomGradient-569478*:
_output_shapes(
&:���������@:���������@2
	IdentityNh
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*'
_output_shapes
:���������@2
mul_2]
add_1AddV2mul:z:0	mul_2:z:0*
T0*'
_output_shapes
:���������@2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������@2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:���������@2
	Sigmoid_4a
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*'
_output_shapes
:���������@2
mul_3a

Identity_1Identity	mul_3:z:0*
T0*'
_output_shapes
:���������@2

Identity_1�
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*,
_gradient_op_typeCustomGradient-569487*:
_output_shapes(
&:���������@:���������@2
IdentityN_1l
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*'
_output_shapes
:���������@2
mul_4�

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity_2�

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity_3�

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:����������:���������@:���������@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/1
�
�
while_cond_567731
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_567731___redundant_placeholder04
0while_while_cond_567731___redundant_placeholder14
0while_while_cond_567731___redundant_placeholder24
0while_while_cond_567731___redundant_placeholder3
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
B: : : : :����������:����������: ::::: 
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
:����������:.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
I
lstm_1_input9
serving_default_lstm_1_input:0���������J
time_distributed_14
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�B
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
regularization_losses
	trainable_variables

	variables
	keras_api
�_default_save_signature
�__call__
+�&call_and_return_all_conditional_losses"�?
_tf_keras_sequential�>{"name": "sequential_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 24, 19]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_1_input"}}, {"class_name": "LSTM", "config": {"name": "lstm_1", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "LSTM", "config": {"name": "lstm_2", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_1", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}}]}, "shared_object_id": 19, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 19]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 20}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 19]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 24, 19]}, "float32", "lstm_1_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 24, 19]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_1_input"}, "shared_object_id": 0}, {"class_name": "LSTM", "config": {"name": "lstm_1", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 5}, {"class_name": "LSTM", "config": {"name": "lstm_2", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 10}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13}}, "shared_object_id": 14}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_1", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17}}, "shared_object_id": 18}]}}, "training_config": {"loss": {"class_name": "MeanAbsoluteError", "config": {"reduction": "auto", "name": "mean_absolute_error"}, "shared_object_id": 21}, "metrics": [[{"class_name": "MeanSquaredLogarithmicError", "config": {"name": "mean_squared_logarithmic_error", "dtype": "float32"}, "shared_object_id": 22}, {"class_name": "MeanSquaredError", "config": {"name": "mean_squared_error", "dtype": "float32"}, "shared_object_id": 23}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
�
cell

state_spec
#_self_saveable_object_factories
regularization_losses
trainable_variables
	variables
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_rnn_layer�
{"name": "lstm_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTM", "config": {"name": "lstm_1", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 5, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 19]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 20}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 19]}}
�
cell

state_spec
#_self_saveable_object_factories
regularization_losses
trainable_variables
	variables
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_rnn_layer�
{"name": "lstm_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTM", "config": {"name": "lstm_2", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 10, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 128]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 24}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 128]}}
�

	layer
#_self_saveable_object_factories
regularization_losses
trainable_variables
	variables
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "time_distributed", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "TimeDistributed", "config": {"name": "time_distributed", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13}}, "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 64]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 25}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 64]}}
�

	 layer
#!_self_saveable_object_factories
"regularization_losses
#trainable_variables
$	variables
%	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "time_distributed_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "TimeDistributed", "config": {"name": "time_distributed_1", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17}}, "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 64]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 26}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 64]}}
�
&iter

'beta_1

(beta_2
	)decay
*learning_rate+m�,m�-m�.m�/m�0m�1m�2m�3m�4m�+v�,v�-v�.v�/v�0v�1v�2v�3v�4v�"
	optimizer
-
�serving_default"
signature_map
 "
trackable_dict_wrapper
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
�
5layer_metrics
6layer_regularization_losses
regularization_losses

7layers
8non_trainable_variables
9metrics
	trainable_variables

	variables
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�	
:
state_size

+kernel
,recurrent_kernel
-bias
#;_self_saveable_object_factories
<regularization_losses
=trainable_variables
>	variables
?	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "lstm_cell_81", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTMCell", "config": {"name": "lstm_cell_81", "trainable": true, "dtype": "float32", "units": 128, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 4}
 "
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
�
@layer_metrics
Alayer_regularization_losses
regularization_losses

Bstates

Clayers
Dnon_trainable_variables
Emetrics
trainable_variables
	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�	
F
state_size

.kernel
/recurrent_kernel
0bias
#G_self_saveable_object_factories
Hregularization_losses
Itrainable_variables
J	variables
K	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "lstm_cell_82", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTMCell", "config": {"name": "lstm_cell_82", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 9}
 "
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
�
Llayer_metrics
Mlayer_regularization_losses
regularization_losses

Nstates

Olayers
Pnon_trainable_variables
Qmetrics
trainable_variables
	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�

1kernel
2bias
#R_self_saveable_object_factories
Sregularization_losses
Ttrainable_variables
U	variables
V	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 27}}
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
�
Wlayer_metrics
Xlayer_regularization_losses
regularization_losses

Ylayers
Znon_trainable_variables
[metrics
trainable_variables
	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�

3kernel
4bias
#\_self_saveable_object_factories
]regularization_losses
^trainable_variables
_	variables
`	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 28}}
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
�
alayer_metrics
blayer_regularization_losses
"regularization_losses

clayers
dnon_trainable_variables
emetrics
#trainable_variables
$	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
,:*	�2lstm_1/lstm_cell_1/kernel
7:5
��2#lstm_1/lstm_cell_1/recurrent_kernel
&:$�2lstm_1/lstm_cell_1/bias
-:+
��2lstm_2/lstm_cell_2/kernel
6:4	@�2#lstm_2/lstm_cell_2/recurrent_kernel
&:$�2lstm_2/lstm_cell_2/bias
):'@@2time_distributed/kernel
#:!@2time_distributed/bias
+:)@2time_distributed_1/kernel
%:#2time_distributed_1/bias
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
 "
trackable_list_wrapper
5
f0
g1
h2"
trackable_list_wrapper
 "
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
�
ilayer_metrics
jlayer_regularization_losses
<regularization_losses

klayers
lnon_trainable_variables
mmetrics
=trainable_variables
>	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
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
�
nlayer_metrics
olayer_regularization_losses
Hregularization_losses

players
qnon_trainable_variables
rmetrics
Itrainable_variables
J	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
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
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
�
slayer_metrics
tlayer_regularization_losses
Sregularization_losses

ulayers
vnon_trainable_variables
wmetrics
Ttrainable_variables
U	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
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
�
xlayer_metrics
ylayer_regularization_losses
]regularization_losses

zlayers
{non_trainable_variables
|metrics
^trainable_variables
_	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
 0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
	}total
	~count
	variables
�	keras_api"�
_tf_keras_metric�{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 29}
�

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"�
_tf_keras_metric�{"class_name": "MeanSquaredLogarithmicError", "name": "mean_squared_logarithmic_error", "dtype": "float32", "config": {"name": "mean_squared_logarithmic_error", "dtype": "float32"}, "shared_object_id": 22}
�

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"�
_tf_keras_metric�{"class_name": "MeanSquaredError", "name": "mean_squared_error", "dtype": "float32", "config": {"name": "mean_squared_error", "dtype": "float32"}, "shared_object_id": 23}
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
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
1:/	�2 Adam/lstm_1/lstm_cell_1/kernel/m
<::
��2*Adam/lstm_1/lstm_cell_1/recurrent_kernel/m
+:)�2Adam/lstm_1/lstm_cell_1/bias/m
2:0
��2 Adam/lstm_2/lstm_cell_2/kernel/m
;:9	@�2*Adam/lstm_2/lstm_cell_2/recurrent_kernel/m
+:)�2Adam/lstm_2/lstm_cell_2/bias/m
.:,@@2Adam/time_distributed/kernel/m
(:&@2Adam/time_distributed/bias/m
0:.@2 Adam/time_distributed_1/kernel/m
*:(2Adam/time_distributed_1/bias/m
1:/	�2 Adam/lstm_1/lstm_cell_1/kernel/v
<::
��2*Adam/lstm_1/lstm_cell_1/recurrent_kernel/v
+:)�2Adam/lstm_1/lstm_cell_1/bias/v
2:0
��2 Adam/lstm_2/lstm_cell_2/kernel/v
;:9	@�2*Adam/lstm_2/lstm_cell_2/recurrent_kernel/v
+:)�2Adam/lstm_2/lstm_cell_2/bias/v
.:,@@2Adam/time_distributed/kernel/v
(:&@2Adam/time_distributed/bias/v
0:.@2 Adam/time_distributed_1/kernel/v
*:(2Adam/time_distributed_1/bias/v
�2�
!__inference__wrapped_model_564146�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� */�,
*�'
lstm_1_input���������
�2�
-__inference_sequential_1_layer_call_fn_566165
-__inference_sequential_1_layer_call_fn_566850
-__inference_sequential_1_layer_call_fn_566875
-__inference_sequential_1_layer_call_fn_566728�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
H__inference_sequential_1_layer_call_and_return_conditional_losses_567243
H__inference_sequential_1_layer_call_and_return_conditional_losses_567611
H__inference_sequential_1_layer_call_and_return_conditional_losses_566760
H__inference_sequential_1_layer_call_and_return_conditional_losses_566792�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
'__inference_lstm_1_layer_call_fn_567622
'__inference_lstm_1_layer_call_fn_567633
'__inference_lstm_1_layer_call_fn_567644
'__inference_lstm_1_layer_call_fn_567655�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
B__inference_lstm_1_layer_call_and_return_conditional_losses_567826
B__inference_lstm_1_layer_call_and_return_conditional_losses_567997
B__inference_lstm_1_layer_call_and_return_conditional_losses_568168
B__inference_lstm_1_layer_call_and_return_conditional_losses_568339�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
'__inference_lstm_2_layer_call_fn_568350
'__inference_lstm_2_layer_call_fn_568361
'__inference_lstm_2_layer_call_fn_568372
'__inference_lstm_2_layer_call_fn_568383�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
B__inference_lstm_2_layer_call_and_return_conditional_losses_568554
B__inference_lstm_2_layer_call_and_return_conditional_losses_568725
B__inference_lstm_2_layer_call_and_return_conditional_losses_568896
B__inference_lstm_2_layer_call_and_return_conditional_losses_569067�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
1__inference_time_distributed_layer_call_fn_569076
1__inference_time_distributed_layer_call_fn_569085
1__inference_time_distributed_layer_call_fn_569094
1__inference_time_distributed_layer_call_fn_569103�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
L__inference_time_distributed_layer_call_and_return_conditional_losses_569130
L__inference_time_distributed_layer_call_and_return_conditional_losses_569157
L__inference_time_distributed_layer_call_and_return_conditional_losses_569177
L__inference_time_distributed_layer_call_and_return_conditional_losses_569197�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
3__inference_time_distributed_1_layer_call_fn_569206
3__inference_time_distributed_1_layer_call_fn_569215
3__inference_time_distributed_1_layer_call_fn_569224
3__inference_time_distributed_1_layer_call_fn_569233�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_569254
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_569275
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_569289
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_569303�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
$__inference_signature_wrapper_566825lstm_1_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_lstm_cell_81_layer_call_fn_569320
-__inference_lstm_cell_81_layer_call_fn_569337�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
H__inference_lstm_cell_81_layer_call_and_return_conditional_losses_569379
H__inference_lstm_cell_81_layer_call_and_return_conditional_losses_569421�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
-__inference_lstm_cell_82_layer_call_fn_569438
-__inference_lstm_cell_82_layer_call_fn_569455�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
H__inference_lstm_cell_82_layer_call_and_return_conditional_losses_569497
H__inference_lstm_cell_82_layer_call_and_return_conditional_losses_569539�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
(__inference_dense_2_layer_call_fn_569548�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_dense_2_layer_call_and_return_conditional_losses_569564�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
(__inference_dense_3_layer_call_fn_569573�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_dense_3_layer_call_and_return_conditional_losses_569583�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
!__inference__wrapped_model_564146�
+,-./012349�6
/�,
*�'
lstm_1_input���������
� "K�H
F
time_distributed_10�-
time_distributed_1����������
C__inference_dense_2_layer_call_and_return_conditional_losses_569564\12/�,
%�"
 �
inputs���������@
� "%�"
�
0���������@
� {
(__inference_dense_2_layer_call_fn_569548O12/�,
%�"
 �
inputs���������@
� "����������@�
C__inference_dense_3_layer_call_and_return_conditional_losses_569583\34/�,
%�"
 �
inputs���������@
� "%�"
�
0���������
� {
(__inference_dense_3_layer_call_fn_569573O34/�,
%�"
 �
inputs���������@
� "�����������
B__inference_lstm_1_layer_call_and_return_conditional_losses_567826�+,-O�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "3�0
)�&
0�������������������
� �
B__inference_lstm_1_layer_call_and_return_conditional_losses_567997�+,-O�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "3�0
)�&
0�������������������
� �
B__inference_lstm_1_layer_call_and_return_conditional_losses_568168r+,-?�<
5�2
$�!
inputs���������

 
p 

 
� "*�'
 �
0����������
� �
B__inference_lstm_1_layer_call_and_return_conditional_losses_568339r+,-?�<
5�2
$�!
inputs���������

 
p

 
� "*�'
 �
0����������
� �
'__inference_lstm_1_layer_call_fn_567622~+,-O�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "&�#��������������������
'__inference_lstm_1_layer_call_fn_567633~+,-O�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "&�#��������������������
'__inference_lstm_1_layer_call_fn_567644e+,-?�<
5�2
$�!
inputs���������

 
p 

 
� "������������
'__inference_lstm_1_layer_call_fn_567655e+,-?�<
5�2
$�!
inputs���������

 
p

 
� "������������
B__inference_lstm_2_layer_call_and_return_conditional_losses_568554�./0P�M
F�C
5�2
0�-
inputs/0�������������������

 
p 

 
� "2�/
(�%
0������������������@
� �
B__inference_lstm_2_layer_call_and_return_conditional_losses_568725�./0P�M
F�C
5�2
0�-
inputs/0�������������������

 
p

 
� "2�/
(�%
0������������������@
� �
B__inference_lstm_2_layer_call_and_return_conditional_losses_568896r./0@�=
6�3
%�"
inputs����������

 
p 

 
� ")�&
�
0���������@
� �
B__inference_lstm_2_layer_call_and_return_conditional_losses_569067r./0@�=
6�3
%�"
inputs����������

 
p

 
� ")�&
�
0���������@
� �
'__inference_lstm_2_layer_call_fn_568350~./0P�M
F�C
5�2
0�-
inputs/0�������������������

 
p 

 
� "%�"������������������@�
'__inference_lstm_2_layer_call_fn_568361~./0P�M
F�C
5�2
0�-
inputs/0�������������������

 
p

 
� "%�"������������������@�
'__inference_lstm_2_layer_call_fn_568372e./0@�=
6�3
%�"
inputs����������

 
p 

 
� "����������@�
'__inference_lstm_2_layer_call_fn_568383e./0@�=
6�3
%�"
inputs����������

 
p

 
� "����������@�
H__inference_lstm_cell_81_layer_call_and_return_conditional_losses_569379�+,-��
x�u
 �
inputs���������
M�J
#� 
states/0����������
#� 
states/1����������
p 
� "v�s
l�i
�
0/0����������
G�D
 �
0/1/0����������
 �
0/1/1����������
� �
H__inference_lstm_cell_81_layer_call_and_return_conditional_losses_569421�+,-��
x�u
 �
inputs���������
M�J
#� 
states/0����������
#� 
states/1����������
p
� "v�s
l�i
�
0/0����������
G�D
 �
0/1/0����������
 �
0/1/1����������
� �
-__inference_lstm_cell_81_layer_call_fn_569320�+,-��
x�u
 �
inputs���������
M�J
#� 
states/0����������
#� 
states/1����������
p 
� "f�c
�
0����������
C�@
�
1/0����������
�
1/1�����������
-__inference_lstm_cell_81_layer_call_fn_569337�+,-��
x�u
 �
inputs���������
M�J
#� 
states/0����������
#� 
states/1����������
p
� "f�c
�
0����������
C�@
�
1/0����������
�
1/1�����������
H__inference_lstm_cell_82_layer_call_and_return_conditional_losses_569497�./0��~
w�t
!�
inputs����������
K�H
"�
states/0���������@
"�
states/1���������@
p 
� "s�p
i�f
�
0/0���������@
E�B
�
0/1/0���������@
�
0/1/1���������@
� �
H__inference_lstm_cell_82_layer_call_and_return_conditional_losses_569539�./0��~
w�t
!�
inputs����������
K�H
"�
states/0���������@
"�
states/1���������@
p
� "s�p
i�f
�
0/0���������@
E�B
�
0/1/0���������@
�
0/1/1���������@
� �
-__inference_lstm_cell_82_layer_call_fn_569438�./0��~
w�t
!�
inputs����������
K�H
"�
states/0���������@
"�
states/1���������@
p 
� "c�`
�
0���������@
A�>
�
1/0���������@
�
1/1���������@�
-__inference_lstm_cell_82_layer_call_fn_569455�./0��~
w�t
!�
inputs����������
K�H
"�
states/0���������@
"�
states/1���������@
p
� "c�`
�
0���������@
A�>
�
1/0���������@
�
1/1���������@�
H__inference_sequential_1_layer_call_and_return_conditional_losses_566760z
+,-./01234A�>
7�4
*�'
lstm_1_input���������
p 

 
� ")�&
�
0���������
� �
H__inference_sequential_1_layer_call_and_return_conditional_losses_566792z
+,-./01234A�>
7�4
*�'
lstm_1_input���������
p

 
� ")�&
�
0���������
� �
H__inference_sequential_1_layer_call_and_return_conditional_losses_567243t
+,-./01234;�8
1�.
$�!
inputs���������
p 

 
� ")�&
�
0���������
� �
H__inference_sequential_1_layer_call_and_return_conditional_losses_567611t
+,-./01234;�8
1�.
$�!
inputs���������
p

 
� ")�&
�
0���������
� �
-__inference_sequential_1_layer_call_fn_566165m
+,-./01234A�>
7�4
*�'
lstm_1_input���������
p 

 
� "�����������
-__inference_sequential_1_layer_call_fn_566728m
+,-./01234A�>
7�4
*�'
lstm_1_input���������
p

 
� "�����������
-__inference_sequential_1_layer_call_fn_566850g
+,-./01234;�8
1�.
$�!
inputs���������
p 

 
� "�����������
-__inference_sequential_1_layer_call_fn_566875g
+,-./01234;�8
1�.
$�!
inputs���������
p

 
� "�����������
$__inference_signature_wrapper_566825�
+,-./01234I�F
� 
?�<
:
lstm_1_input*�'
lstm_1_input���������"K�H
F
time_distributed_10�-
time_distributed_1����������
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_569254~34D�A
:�7
-�*
inputs������������������@
p 

 
� "2�/
(�%
0������������������
� �
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_569275~34D�A
:�7
-�*
inputs������������������@
p

 
� "2�/
(�%
0������������������
� �
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_569289l34;�8
1�.
$�!
inputs���������@
p 

 
� ")�&
�
0���������
� �
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_569303l34;�8
1�.
$�!
inputs���������@
p

 
� ")�&
�
0���������
� �
3__inference_time_distributed_1_layer_call_fn_569206q34D�A
:�7
-�*
inputs������������������@
p 

 
� "%�"�������������������
3__inference_time_distributed_1_layer_call_fn_569215q34D�A
:�7
-�*
inputs������������������@
p

 
� "%�"�������������������
3__inference_time_distributed_1_layer_call_fn_569224_34;�8
1�.
$�!
inputs���������@
p 

 
� "�����������
3__inference_time_distributed_1_layer_call_fn_569233_34;�8
1�.
$�!
inputs���������@
p

 
� "�����������
L__inference_time_distributed_layer_call_and_return_conditional_losses_569130~12D�A
:�7
-�*
inputs������������������@
p 

 
� "2�/
(�%
0������������������@
� �
L__inference_time_distributed_layer_call_and_return_conditional_losses_569157~12D�A
:�7
-�*
inputs������������������@
p

 
� "2�/
(�%
0������������������@
� �
L__inference_time_distributed_layer_call_and_return_conditional_losses_569177l12;�8
1�.
$�!
inputs���������@
p 

 
� ")�&
�
0���������@
� �
L__inference_time_distributed_layer_call_and_return_conditional_losses_569197l12;�8
1�.
$�!
inputs���������@
p

 
� ")�&
�
0���������@
� �
1__inference_time_distributed_layer_call_fn_569076q12D�A
:�7
-�*
inputs������������������@
p 

 
� "%�"������������������@�
1__inference_time_distributed_layer_call_fn_569085q12D�A
:�7
-�*
inputs������������������@
p

 
� "%�"������������������@�
1__inference_time_distributed_layer_call_fn_569094_12;�8
1�.
$�!
inputs���������@
p 

 
� "����������@�
1__inference_time_distributed_layer_call_fn_569103_12;�8
1�.
$�!
inputs���������@
p

 
� "����������@