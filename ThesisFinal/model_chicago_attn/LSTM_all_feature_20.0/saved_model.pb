µґ/
Иё
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
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
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
Њ
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
ц
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
num_elementsint€€€€€€€€€
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
И"serve*2.5.02v2.5.0-0-ga4dfb8d1a718щѓ,
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
lstm_1/lstm_cell_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А**
shared_namelstm_1/lstm_cell_1/kernel
И
-lstm_1/lstm_cell_1/kernel/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_1/kernel*
_output_shapes
:	А*
dtype0
§
#lstm_1/lstm_cell_1/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*4
shared_name%#lstm_1/lstm_cell_1/recurrent_kernel
Э
7lstm_1/lstm_cell_1/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_1/lstm_cell_1/recurrent_kernel* 
_output_shapes
:
АА*
dtype0
З
lstm_1/lstm_cell_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*(
shared_namelstm_1/lstm_cell_1/bias
А
+lstm_1/lstm_cell_1/bias/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_1/bias*
_output_shapes	
:А*
dtype0
Р
lstm_2/lstm_cell_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА**
shared_namelstm_2/lstm_cell_2/kernel
Й
-lstm_2/lstm_cell_2/kernel/Read/ReadVariableOpReadVariableOplstm_2/lstm_cell_2/kernel* 
_output_shapes
:
АА*
dtype0
£
#lstm_2/lstm_cell_2/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@А*4
shared_name%#lstm_2/lstm_cell_2/recurrent_kernel
Ь
7lstm_2/lstm_cell_2/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_2/lstm_cell_2/recurrent_kernel*
_output_shapes
:	@А*
dtype0
З
lstm_2/lstm_cell_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*(
shared_namelstm_2/lstm_cell_2/bias
А
+lstm_2/lstm_cell_2/bias/Read/ReadVariableOpReadVariableOplstm_2/lstm_cell_2/bias*
_output_shapes	
:А*
dtype0
К
time_distributed/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*(
shared_nametime_distributed/kernel
Г
+time_distributed/kernel/Read/ReadVariableOpReadVariableOptime_distributed/kernel*
_output_shapes

:@@*
dtype0
В
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
О
time_distributed_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@**
shared_nametime_distributed_1/kernel
З
-time_distributed_1/kernel/Read/ReadVariableOpReadVariableOptime_distributed_1/kernel*
_output_shapes

:@*
dtype0
Ж
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
Э
 Adam/lstm_1/lstm_cell_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*1
shared_name" Adam/lstm_1/lstm_cell_1/kernel/m
Ц
4Adam/lstm_1/lstm_cell_1/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_1/lstm_cell_1/kernel/m*
_output_shapes
:	А*
dtype0
≤
*Adam/lstm_1/lstm_cell_1/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*;
shared_name,*Adam/lstm_1/lstm_cell_1/recurrent_kernel/m
Ђ
>Adam/lstm_1/lstm_cell_1/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_1/lstm_cell_1/recurrent_kernel/m* 
_output_shapes
:
АА*
dtype0
Х
Adam/lstm_1/lstm_cell_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*/
shared_name Adam/lstm_1/lstm_cell_1/bias/m
О
2Adam/lstm_1/lstm_cell_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_1/lstm_cell_1/bias/m*
_output_shapes	
:А*
dtype0
Ю
 Adam/lstm_2/lstm_cell_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*1
shared_name" Adam/lstm_2/lstm_cell_2/kernel/m
Ч
4Adam/lstm_2/lstm_cell_2/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_2/lstm_cell_2/kernel/m* 
_output_shapes
:
АА*
dtype0
±
*Adam/lstm_2/lstm_cell_2/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@А*;
shared_name,*Adam/lstm_2/lstm_cell_2/recurrent_kernel/m
™
>Adam/lstm_2/lstm_cell_2/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_2/lstm_cell_2/recurrent_kernel/m*
_output_shapes
:	@А*
dtype0
Х
Adam/lstm_2/lstm_cell_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*/
shared_name Adam/lstm_2/lstm_cell_2/bias/m
О
2Adam/lstm_2/lstm_cell_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_2/lstm_cell_2/bias/m*
_output_shapes	
:А*
dtype0
Ш
Adam/time_distributed/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*/
shared_name Adam/time_distributed/kernel/m
С
2Adam/time_distributed/kernel/m/Read/ReadVariableOpReadVariableOpAdam/time_distributed/kernel/m*
_output_shapes

:@@*
dtype0
Р
Adam/time_distributed/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_nameAdam/time_distributed/bias/m
Й
0Adam/time_distributed/bias/m/Read/ReadVariableOpReadVariableOpAdam/time_distributed/bias/m*
_output_shapes
:@*
dtype0
Ь
 Adam/time_distributed_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*1
shared_name" Adam/time_distributed_1/kernel/m
Х
4Adam/time_distributed_1/kernel/m/Read/ReadVariableOpReadVariableOp Adam/time_distributed_1/kernel/m*
_output_shapes

:@*
dtype0
Ф
Adam/time_distributed_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/time_distributed_1/bias/m
Н
2Adam/time_distributed_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/time_distributed_1/bias/m*
_output_shapes
:*
dtype0
Э
 Adam/lstm_1/lstm_cell_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*1
shared_name" Adam/lstm_1/lstm_cell_1/kernel/v
Ц
4Adam/lstm_1/lstm_cell_1/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_1/lstm_cell_1/kernel/v*
_output_shapes
:	А*
dtype0
≤
*Adam/lstm_1/lstm_cell_1/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*;
shared_name,*Adam/lstm_1/lstm_cell_1/recurrent_kernel/v
Ђ
>Adam/lstm_1/lstm_cell_1/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_1/lstm_cell_1/recurrent_kernel/v* 
_output_shapes
:
АА*
dtype0
Х
Adam/lstm_1/lstm_cell_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*/
shared_name Adam/lstm_1/lstm_cell_1/bias/v
О
2Adam/lstm_1/lstm_cell_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_1/lstm_cell_1/bias/v*
_output_shapes	
:А*
dtype0
Ю
 Adam/lstm_2/lstm_cell_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*1
shared_name" Adam/lstm_2/lstm_cell_2/kernel/v
Ч
4Adam/lstm_2/lstm_cell_2/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_2/lstm_cell_2/kernel/v* 
_output_shapes
:
АА*
dtype0
±
*Adam/lstm_2/lstm_cell_2/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@А*;
shared_name,*Adam/lstm_2/lstm_cell_2/recurrent_kernel/v
™
>Adam/lstm_2/lstm_cell_2/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_2/lstm_cell_2/recurrent_kernel/v*
_output_shapes
:	@А*
dtype0
Х
Adam/lstm_2/lstm_cell_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*/
shared_name Adam/lstm_2/lstm_cell_2/bias/v
О
2Adam/lstm_2/lstm_cell_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_2/lstm_cell_2/bias/v*
_output_shapes	
:А*
dtype0
Ш
Adam/time_distributed/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*/
shared_name Adam/time_distributed/kernel/v
С
2Adam/time_distributed/kernel/v/Read/ReadVariableOpReadVariableOpAdam/time_distributed/kernel/v*
_output_shapes

:@@*
dtype0
Р
Adam/time_distributed/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_nameAdam/time_distributed/bias/v
Й
0Adam/time_distributed/bias/v/Read/ReadVariableOpReadVariableOpAdam/time_distributed/bias/v*
_output_shapes
:@*
dtype0
Ь
 Adam/time_distributed_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*1
shared_name" Adam/time_distributed_1/kernel/v
Х
4Adam/time_distributed_1/kernel/v/Read/ReadVariableOpReadVariableOp Adam/time_distributed_1/kernel/v*
_output_shapes

:@*
dtype0
Ф
Adam/time_distributed_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/time_distributed_1/bias/v
Н
2Adam/time_distributed_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/time_distributed_1/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
ƒF
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*€E
valueхEBтE BлE
≤
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
С
cell

state_spec
#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api
С
cell

state_spec
#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api
В
	layer
#_self_saveable_object_factories
trainable_variables
regularization_losses
	variables
	keras_api
В
	 layer
#!_self_saveable_object_factories
"trainable_variables
#regularization_losses
$	variables
%	keras_api
И
&iter

'beta_1

(beta_2
	)decay
*learning_rate+mЛ,mМ-mН.mО/mП0mР1mС2mТ3mУ4mФ+vХ,vЦ-vЧ.vШ/vЩ0vЪ1vЫ2vЬ3vЭ4vЮ
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
≠
trainable_variables
5layer_regularization_losses

6layers
7layer_metrics
8non_trainable_variables
		variables

regularization_losses
9metrics
≥
:
state_size

+kernel
,recurrent_kernel
-bias
#;_self_saveable_object_factories
<trainable_variables
=regularization_losses
>	variables
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
є
trainable_variables

@states
Alayer_regularization_losses

Blayers
Clayer_metrics
Dnon_trainable_variables
	variables
regularization_losses
Emetrics
≥
F
state_size

.kernel
/recurrent_kernel
0bias
#G_self_saveable_object_factories
Htrainable_variables
Iregularization_losses
J	variables
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
є
trainable_variables

Lstates
Mlayer_regularization_losses

Nlayers
Olayer_metrics
Pnon_trainable_variables
	variables
regularization_losses
Qmetrics
Н

1kernel
2bias
#R_self_saveable_object_factories
Strainable_variables
Tregularization_losses
U	variables
V	keras_api
 

10
21
 

10
21
≠
trainable_variables
Wlayer_regularization_losses
regularization_losses
Xlayer_metrics
Ynon_trainable_variables
	variables

Zlayers
[metrics
Н

3kernel
4bias
#\_self_saveable_object_factories
]trainable_variables
^regularization_losses
_	variables
`	keras_api
 

30
41
 

30
41
≠
"trainable_variables
alayer_regularization_losses
#regularization_losses
blayer_metrics
cnon_trainable_variables
$	variables

dlayers
emetrics
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

0
1
2
3
 
 

f0
g1
h2
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
≠
<trainable_variables
ilayer_regularization_losses
=regularization_losses
jlayer_metrics
knon_trainable_variables
>	variables

llayers
mmetrics
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
 

.0
/1
02
≠
Htrainable_variables
nlayer_regularization_losses
Iregularization_losses
olayer_metrics
pnon_trainable_variables
J	variables

qlayers
rmetrics
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
 

10
21
≠
Strainable_variables
slayer_regularization_losses
Tregularization_losses
tlayer_metrics
unon_trainable_variables
U	variables

vlayers
wmetrics
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
 

30
41
≠
]trainable_variables
xlayer_regularization_losses
^regularization_losses
ylayer_metrics
znon_trainable_variables
_	variables

{layers
|metrics
 
 
 

 0
 
5
	}total
	~count
	variables
А	keras_api
I

Бtotal

Вcount
Г
_fn_kwargs
Д	variables
Е	keras_api
I

Жtotal

Зcount
И
_fn_kwargs
Й	variables
К	keras_api
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
Б0
В1

Д	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE
 

Ж0
З1

Й	variables
ГА
VARIABLE_VALUE Adam/lstm_1/lstm_cell_1/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
НК
VARIABLE_VALUE*Adam/lstm_1/lstm_cell_1/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/lstm_1/lstm_cell_1/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE Adam/lstm_2/lstm_cell_2/kernel/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
НК
VARIABLE_VALUE*Adam/lstm_2/lstm_cell_2/recurrent_kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/lstm_2/lstm_cell_2/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/time_distributed/kernel/mLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/time_distributed/bias/mLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE Adam/time_distributed_1/kernel/mLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/time_distributed_1/bias/mLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE Adam/lstm_1/lstm_cell_1/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
НК
VARIABLE_VALUE*Adam/lstm_1/lstm_cell_1/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/lstm_1/lstm_cell_1/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE Adam/lstm_2/lstm_cell_2/kernel/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
НК
VARIABLE_VALUE*Adam/lstm_2/lstm_cell_2/recurrent_kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/lstm_2/lstm_cell_2/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/time_distributed/kernel/vLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/time_distributed/bias/vLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE Adam/time_distributed_1/kernel/vLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/time_distributed_1/bias/vLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
З
serving_default_lstm_1_inputPlaceholder*+
_output_shapes
:€€€€€€€€€*
dtype0* 
shape:€€€€€€€€€
ж
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_1_inputlstm_1/lstm_cell_1/kernel#lstm_1/lstm_cell_1/recurrent_kernellstm_1/lstm_cell_1/biaslstm_2/lstm_cell_2/kernel#lstm_2/lstm_cell_2/recurrent_kernellstm_2/lstm_cell_2/biastime_distributed/kerneltime_distributed/biastime_distributed_1/kerneltime_distributed_1/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*,
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
%__inference_signature_wrapper_1548328
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Њ
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
GPU 2J 8В *)
f$R"
 __inference__traced_save_1551232
Е
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
GPU 2J 8В *,
f'R%
#__inference__traced_restore_1551365йн*
КX
≥

lstm_2_while_body_1548572*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3)
%lstm_2_while_lstm_2_strided_slice_1_0e
alstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0N
:lstm_2_while_lstm_cell_66_matmul_readvariableop_resource_0:
ААO
<lstm_2_while_lstm_cell_66_matmul_1_readvariableop_resource_0:	@АJ
;lstm_2_while_lstm_cell_66_biasadd_readvariableop_resource_0:	А
lstm_2_while_identity
lstm_2_while_identity_1
lstm_2_while_identity_2
lstm_2_while_identity_3
lstm_2_while_identity_4
lstm_2_while_identity_5'
#lstm_2_while_lstm_2_strided_slice_1c
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensorL
8lstm_2_while_lstm_cell_66_matmul_readvariableop_resource:
ААM
:lstm_2_while_lstm_cell_66_matmul_1_readvariableop_resource:	@АH
9lstm_2_while_lstm_cell_66_biasadd_readvariableop_resource:	АИҐ0lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOpҐ/lstm_2/while/lstm_cell_66/MatMul/ReadVariableOpҐ1lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOp—
>lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2@
>lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeю
0lstm_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0lstm_2_while_placeholderGlstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€А*
element_dtype022
0lstm_2/while/TensorArrayV2Read/TensorListGetItemя
/lstm_2/while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp:lstm_2_while_lstm_cell_66_matmul_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype021
/lstm_2/while/lstm_cell_66/MatMul/ReadVariableOpу
 lstm_2/while/lstm_cell_66/MatMulMatMul7lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_2/while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2"
 lstm_2/while/lstm_cell_66/MatMulд
1lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp<lstm_2_while_lstm_cell_66_matmul_1_readvariableop_resource_0*
_output_shapes
:	@А*
dtype023
1lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOp№
"lstm_2/while/lstm_cell_66/MatMul_1MatMullstm_2_while_placeholder_29lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2$
"lstm_2/while/lstm_cell_66/MatMul_1‘
lstm_2/while/lstm_cell_66/addAddV2*lstm_2/while/lstm_cell_66/MatMul:product:0,lstm_2/while/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_2/while/lstm_cell_66/addЁ
0lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp;lstm_2_while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype022
0lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOpб
!lstm_2/while/lstm_cell_66/BiasAddBiasAdd!lstm_2/while/lstm_cell_66/add:z:08lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2#
!lstm_2/while/lstm_cell_66/BiasAddШ
)lstm_2/while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2+
)lstm_2/while/lstm_cell_66/split/split_dimІ
lstm_2/while/lstm_cell_66/splitSplit2lstm_2/while/lstm_cell_66/split/split_dim:output:0*lstm_2/while/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split2!
lstm_2/while/lstm_cell_66/split≠
!lstm_2/while/lstm_cell_66/SigmoidSigmoid(lstm_2/while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2#
!lstm_2/while/lstm_cell_66/Sigmoid±
#lstm_2/while/lstm_cell_66/Sigmoid_1Sigmoid(lstm_2/while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€@2%
#lstm_2/while/lstm_cell_66/Sigmoid_1Љ
lstm_2/while/lstm_cell_66/mulMul'lstm_2/while/lstm_cell_66/Sigmoid_1:y:0lstm_2_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_2/while/lstm_cell_66/mul±
#lstm_2/while/lstm_cell_66/Sigmoid_2Sigmoid(lstm_2/while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€@2%
#lstm_2/while/lstm_cell_66/Sigmoid_2ќ
lstm_2/while/lstm_cell_66/mul_1Mul(lstm_2/while/lstm_cell_66/split:output:2'lstm_2/while/lstm_cell_66/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2!
lstm_2/while/lstm_cell_66/mul_1Ђ
"lstm_2/while/lstm_cell_66/IdentityIdentity#lstm_2/while/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2$
"lstm_2/while/lstm_cell_66/IdentityЮ
#lstm_2/while/lstm_cell_66/IdentityN	IdentityN#lstm_2/while/lstm_cell_66/mul_1:z:0(lstm_2/while/lstm_cell_66/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1548614*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2%
#lstm_2/while/lstm_cell_66/IdentityN–
lstm_2/while/lstm_cell_66/mul_2Mul%lstm_2/while/lstm_cell_66/Sigmoid:y:0,lstm_2/while/lstm_cell_66/IdentityN:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2!
lstm_2/while/lstm_cell_66/mul_2≈
lstm_2/while/lstm_cell_66/add_1AddV2!lstm_2/while/lstm_cell_66/mul:z:0#lstm_2/while/lstm_cell_66/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2!
lstm_2/while/lstm_cell_66/add_1±
#lstm_2/while/lstm_cell_66/Sigmoid_3Sigmoid(lstm_2/while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€@2%
#lstm_2/while/lstm_cell_66/Sigmoid_3ђ
#lstm_2/while/lstm_cell_66/Sigmoid_4Sigmoid#lstm_2/while/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2%
#lstm_2/while/lstm_cell_66/Sigmoid_4…
lstm_2/while/lstm_cell_66/mul_3Mul#lstm_2/while/lstm_cell_66/add_1:z:0'lstm_2/while/lstm_cell_66/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2!
lstm_2/while/lstm_cell_66/mul_3ѓ
$lstm_2/while/lstm_cell_66/Identity_1Identity#lstm_2/while/lstm_cell_66/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2&
$lstm_2/while/lstm_cell_66/Identity_1Э
%lstm_2/while/lstm_cell_66/IdentityN_1	IdentityN#lstm_2/while/lstm_cell_66/mul_3:z:0#lstm_2/while/lstm_cell_66/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1548623*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2'
%lstm_2/while/lstm_cell_66/IdentityN_1‘
lstm_2/while/lstm_cell_66/mul_4Mul'lstm_2/while/lstm_cell_66/Sigmoid_3:y:0.lstm_2/while/lstm_cell_66/IdentityN_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2!
lstm_2/while/lstm_cell_66/mul_4Г
1lstm_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_2_while_placeholder_1lstm_2_while_placeholder#lstm_2/while/lstm_cell_66/mul_4:z:0*
_output_shapes
: *
element_dtype023
1lstm_2/while/TensorArrayV2Write/TensorListSetItemj
lstm_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/while/add/yЕ
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
lstm_2/while/add_1/yЩ
lstm_2/while/add_1AddV2&lstm_2_while_lstm_2_while_loop_counterlstm_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_2/while/add_1М
lstm_2/while/IdentityIdentitylstm_2/while/add_1:z:01^lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_66/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity¶
lstm_2/while/Identity_1Identity,lstm_2_while_lstm_2_while_maximum_iterations1^lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_66/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_1О
lstm_2/while/Identity_2Identitylstm_2/while/add:z:01^lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_66/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_2ї
lstm_2/while/Identity_3IdentityAlstm_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:01^lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_66/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_3Ѓ
lstm_2/while/Identity_4Identity#lstm_2/while/lstm_cell_66/mul_4:z:01^lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_66/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_2/while/Identity_4Ѓ
lstm_2/while/Identity_5Identity#lstm_2/while/lstm_cell_66/add_1:z:01^lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_66/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_2/while/Identity_5"7
lstm_2_while_identitylstm_2/while/Identity:output:0";
lstm_2_while_identity_1 lstm_2/while/Identity_1:output:0";
lstm_2_while_identity_2 lstm_2/while/Identity_2:output:0";
lstm_2_while_identity_3 lstm_2/while/Identity_3:output:0";
lstm_2_while_identity_4 lstm_2/while/Identity_4:output:0";
lstm_2_while_identity_5 lstm_2/while/Identity_5:output:0"L
#lstm_2_while_lstm_2_strided_slice_1%lstm_2_while_lstm_2_strided_slice_1_0"x
9lstm_2_while_lstm_cell_66_biasadd_readvariableop_resource;lstm_2_while_lstm_cell_66_biasadd_readvariableop_resource_0"z
:lstm_2_while_lstm_cell_66_matmul_1_readvariableop_resource<lstm_2_while_lstm_cell_66_matmul_1_readvariableop_resource_0"v
8lstm_2_while_lstm_cell_66_matmul_readvariableop_resource:lstm_2_while_lstm_cell_66_matmul_readvariableop_resource_0"ƒ
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensoralstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€@:€€€€€€€€€@: : : : : 2d
0lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOp0lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOp2b
/lstm_2/while/lstm_cell_66/MatMul/ReadVariableOp/lstm_2/while/lstm_cell_66/MatMul/ReadVariableOp2f
1lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOp1lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
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
:€€€€€€€€€@:-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
: 
Џ
»
while_cond_1547827
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1547827___redundant_placeholder05
1while_while_cond_1547827___redundant_placeholder15
1while_while_cond_1547827___redundant_placeholder25
1while_while_cond_1547827___redundant_placeholder3
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
@: : : : :€€€€€€€€€@:€€€€€€€€€@: ::::: 

_output_shapes
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
:€€€€€€€€€@:-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
:
ё
»
while_cond_1548020
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1548020___redundant_placeholder05
1while_while_cond_1548020___redundant_placeholder15
1while_while_cond_1548020___redundant_placeholder25
1while_while_cond_1548020___redundant_placeholder3
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
B: : : : :€€€€€€€€€А:€€€€€€€€€А: ::::: 

_output_shapes
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
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
Ы
Ц
)__inference_dense_2_layer_call_fn_1551067

inputs
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_15469792
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
±

‘
lstm_1_while_cond_1548404*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3,
(lstm_1_while_less_lstm_1_strided_slice_1C
?lstm_1_while_lstm_1_while_cond_1548404___redundant_placeholder0C
?lstm_1_while_lstm_1_while_cond_1548404___redundant_placeholder1C
?lstm_1_while_lstm_1_while_cond_1548404___redundant_placeholder2C
?lstm_1_while_lstm_1_while_cond_1548404___redundant_placeholder3
lstm_1_while_identity
У
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
B: : : : :€€€€€€€€€А:€€€€€€€€€А: ::::: 

_output_shapes
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
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
Е
Є
(__inference_lstm_1_layer_call_fn_1549809
inputs_0
unknown:	А
	unknown_0:
АА
	unknown_1:	А
identityИҐStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_1_layer_call_and_return_conditional_losses_15458172
StatefulPartitionedCallЬ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs/0
г
Ю
M__inference_time_distributed_layer_call_and_return_conditional_losses_1550644

inputs8
&dense_2_matmul_readvariableop_resource:@@5
'dense_2_biasadd_readvariableop_resource:@
identityИҐdense_2/BiasAdd/ReadVariableOpҐdense_2/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
Reshape•
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_2/MatMul/ReadVariableOpХ
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_2/MatMul§
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_2/BiasAdd/ReadVariableOp°
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_2/BiasAddy
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_2/SigmoidВ
dense_2/mulMuldense_2/BiasAdd:output:0dense_2/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_2/muls
dense_2/IdentityIdentitydense_2/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_2/Identity÷
dense_2/IdentityN	IdentityNdense_2/mul:z:0dense_2/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1550635*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
dense_2/IdentityNw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€   @   2
Reshape_1/shapeН
	Reshape_1Reshapedense_2/IdentityN:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€@2
	Reshape_1Ђ
IdentityIdentityReshape_1:output:0^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ПП
≤

I__inference_sequential_1_layer_call_and_return_conditional_losses_1549064

inputsE
2lstm_1_lstm_cell_65_matmul_readvariableop_resource:	АH
4lstm_1_lstm_cell_65_matmul_1_readvariableop_resource:
ААB
3lstm_1_lstm_cell_65_biasadd_readvariableop_resource:	АF
2lstm_2_lstm_cell_66_matmul_readvariableop_resource:
ААG
4lstm_2_lstm_cell_66_matmul_1_readvariableop_resource:	@АB
3lstm_2_lstm_cell_66_biasadd_readvariableop_resource:	АI
7time_distributed_dense_2_matmul_readvariableop_resource:@@F
8time_distributed_dense_2_biasadd_readvariableop_resource:@K
9time_distributed_1_dense_3_matmul_readvariableop_resource:@H
:time_distributed_1_dense_3_biasadd_readvariableop_resource:
identityИҐ*lstm_1/lstm_cell_65/BiasAdd/ReadVariableOpҐ)lstm_1/lstm_cell_65/MatMul/ReadVariableOpҐ+lstm_1/lstm_cell_65/MatMul_1/ReadVariableOpҐlstm_1/whileҐ*lstm_2/lstm_cell_66/BiasAdd/ReadVariableOpҐ)lstm_2/lstm_cell_66/MatMul/ReadVariableOpҐ+lstm_2/lstm_cell_66/MatMul_1/ReadVariableOpҐlstm_2/whileҐ/time_distributed/dense_2/BiasAdd/ReadVariableOpҐ.time_distributed/dense_2/MatMul/ReadVariableOpҐ1time_distributed_1/dense_3/BiasAdd/ReadVariableOpҐ0time_distributed_1/dense_3/MatMul/ReadVariableOpR
lstm_1/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_1/ShapeВ
lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice/stackЖ
lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_1/strided_slice/stack_1Ж
lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_1/strided_slice/stack_2М
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
B :А2
lstm_1/zeros/mul/yИ
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
B :и2
lstm_1/zeros/Less/yГ
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
B :А2
lstm_1/zeros/packed/1Я
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
lstm_1/zeros/ConstТ
lstm_1/zerosFilllstm_1/zeros/packed:output:0lstm_1/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/zeroso
lstm_1/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
lstm_1/zeros_1/mul/yО
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
B :и2
lstm_1/zeros_1/Less/yЛ
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
B :А2
lstm_1/zeros_1/packed/1•
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
lstm_1/zeros_1/ConstЪ
lstm_1/zeros_1Filllstm_1/zeros_1/packed:output:0lstm_1/zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/zeros_1Г
lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_1/transpose/permП
lstm_1/transpose	Transposeinputslstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
lstm_1/transposed
lstm_1/Shape_1Shapelstm_1/transpose:y:0*
T0*
_output_shapes
:2
lstm_1/Shape_1Ж
lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice_1/stackК
lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_1/stack_1К
lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_1/stack_2Ш
lstm_1/strided_slice_1StridedSlicelstm_1/Shape_1:output:0%lstm_1/strided_slice_1/stack:output:0'lstm_1/strided_slice_1/stack_1:output:0'lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_1/strided_slice_1У
"lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2$
"lstm_1/TensorArrayV2/element_shapeќ
lstm_1/TensorArrayV2TensorListReserve+lstm_1/TensorArrayV2/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_1/TensorArrayV2Ќ
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2>
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeФ
.lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_1/transpose:y:0Elstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_1/TensorArrayUnstack/TensorListFromTensorЖ
lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice_2/stackК
lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_2/stack_1К
lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_2/stack_2¶
lstm_1/strided_slice_2StridedSlicelstm_1/transpose:y:0%lstm_1/strided_slice_2/stack:output:0'lstm_1/strided_slice_2/stack_1:output:0'lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
lstm_1/strided_slice_2 
)lstm_1/lstm_cell_65/MatMul/ReadVariableOpReadVariableOp2lstm_1_lstm_cell_65_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02+
)lstm_1/lstm_cell_65/MatMul/ReadVariableOp…
lstm_1/lstm_cell_65/MatMulMatMullstm_1/strided_slice_2:output:01lstm_1/lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/lstm_cell_65/MatMul—
+lstm_1/lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOp4lstm_1_lstm_cell_65_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02-
+lstm_1/lstm_cell_65/MatMul_1/ReadVariableOp≈
lstm_1/lstm_cell_65/MatMul_1MatMullstm_1/zeros:output:03lstm_1/lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/lstm_cell_65/MatMul_1Љ
lstm_1/lstm_cell_65/addAddV2$lstm_1/lstm_cell_65/MatMul:product:0&lstm_1/lstm_cell_65/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/lstm_cell_65/add…
*lstm_1/lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOp3lstm_1_lstm_cell_65_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*lstm_1/lstm_cell_65/BiasAdd/ReadVariableOp…
lstm_1/lstm_cell_65/BiasAddBiasAddlstm_1/lstm_cell_65/add:z:02lstm_1/lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/lstm_cell_65/BiasAddМ
#lstm_1/lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#lstm_1/lstm_cell_65/split/split_dimУ
lstm_1/lstm_cell_65/splitSplit,lstm_1/lstm_cell_65/split/split_dim:output:0$lstm_1/lstm_cell_65/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_split2
lstm_1/lstm_cell_65/splitЬ
lstm_1/lstm_cell_65/SigmoidSigmoid"lstm_1/lstm_cell_65/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/lstm_cell_65/Sigmoid†
lstm_1/lstm_cell_65/Sigmoid_1Sigmoid"lstm_1/lstm_cell_65/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/lstm_cell_65/Sigmoid_1®
lstm_1/lstm_cell_65/mulMul!lstm_1/lstm_cell_65/Sigmoid_1:y:0lstm_1/zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/lstm_cell_65/mul†
lstm_1/lstm_cell_65/Sigmoid_2Sigmoid"lstm_1/lstm_cell_65/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/lstm_cell_65/Sigmoid_2Ј
lstm_1/lstm_cell_65/mul_1Mul"lstm_1/lstm_cell_65/split:output:2!lstm_1/lstm_cell_65/Sigmoid_2:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/lstm_cell_65/mul_1Ъ
lstm_1/lstm_cell_65/IdentityIdentitylstm_1/lstm_cell_65/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/lstm_cell_65/IdentityИ
lstm_1/lstm_cell_65/IdentityN	IdentityNlstm_1/lstm_cell_65/mul_1:z:0"lstm_1/lstm_cell_65/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1548753*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2
lstm_1/lstm_cell_65/IdentityNє
lstm_1/lstm_cell_65/mul_2Mullstm_1/lstm_cell_65/Sigmoid:y:0&lstm_1/lstm_cell_65/IdentityN:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/lstm_cell_65/mul_2Ѓ
lstm_1/lstm_cell_65/add_1AddV2lstm_1/lstm_cell_65/mul:z:0lstm_1/lstm_cell_65/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/lstm_cell_65/add_1†
lstm_1/lstm_cell_65/Sigmoid_3Sigmoid"lstm_1/lstm_cell_65/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/lstm_cell_65/Sigmoid_3Ы
lstm_1/lstm_cell_65/Sigmoid_4Sigmoidlstm_1/lstm_cell_65/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/lstm_cell_65/Sigmoid_4≤
lstm_1/lstm_cell_65/mul_3Mullstm_1/lstm_cell_65/add_1:z:0!lstm_1/lstm_cell_65/Sigmoid_4:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/lstm_cell_65/mul_3Ю
lstm_1/lstm_cell_65/Identity_1Identitylstm_1/lstm_cell_65/mul_3:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2 
lstm_1/lstm_cell_65/Identity_1З
lstm_1/lstm_cell_65/IdentityN_1	IdentityNlstm_1/lstm_cell_65/mul_3:z:0lstm_1/lstm_cell_65/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1548762*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2!
lstm_1/lstm_cell_65/IdentityN_1љ
lstm_1/lstm_cell_65/mul_4Mul!lstm_1/lstm_cell_65/Sigmoid_3:y:0(lstm_1/lstm_cell_65/IdentityN_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/lstm_cell_65/mul_4Э
$lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2&
$lstm_1/TensorArrayV2_1/element_shape‘
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
lstm_1/timeН
lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2!
lstm_1/while/maximum_iterationsx
lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_1/while/loop_counterЁ
lstm_1/whileWhile"lstm_1/while/loop_counter:output:0(lstm_1/while/maximum_iterations:output:0lstm_1/time:output:0lstm_1/TensorArrayV2_1:handle:0lstm_1/zeros:output:0lstm_1/zeros_1:output:0lstm_1/strided_slice_1:output:0>lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_1_lstm_cell_65_matmul_readvariableop_resource4lstm_1_lstm_cell_65_matmul_1_readvariableop_resource3lstm_1_lstm_cell_65_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*%
bodyR
lstm_1_while_body_1548773*%
condR
lstm_1_while_cond_1548772*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations 2
lstm_1/while√
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   29
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeЕ
)lstm_1/TensorArrayV2Stack/TensorListStackTensorListStacklstm_1/while:output:3@lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype02+
)lstm_1/TensorArrayV2Stack/TensorListStackП
lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
lstm_1/strided_slice_3/stackК
lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_1/strided_slice_3/stack_1К
lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_3/stack_2≈
lstm_1/strided_slice_3StridedSlice2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_1/strided_slice_3/stack:output:0'lstm_1/strided_slice_3/stack_1:output:0'lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
lstm_1/strided_slice_3З
lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_1/transpose_1/perm¬
lstm_1/transpose_1	Transpose2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А2
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
lstm_2/ShapeВ
lstm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice/stackЖ
lstm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_2/strided_slice/stack_1Ж
lstm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_2/strided_slice/stack_2М
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
lstm_2/zeros/mul/yИ
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
B :и2
lstm_2/zeros/Less/yГ
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
lstm_2/zeros/packed/1Я
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
lstm_2/zeros/ConstС
lstm_2/zerosFilllstm_2/zeros/packed:output:0lstm_2/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_2/zerosn
lstm_2/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_2/zeros_1/mul/yО
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
B :и2
lstm_2/zeros_1/Less/yЛ
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
lstm_2/zeros_1/packed/1•
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
lstm_2/zeros_1/ConstЩ
lstm_2/zeros_1Filllstm_2/zeros_1/packed:output:0lstm_2/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_2/zeros_1Г
lstm_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_2/transpose/perm†
lstm_2/transpose	Transposelstm_1/transpose_1:y:0lstm_2/transpose/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А2
lstm_2/transposed
lstm_2/Shape_1Shapelstm_2/transpose:y:0*
T0*
_output_shapes
:2
lstm_2/Shape_1Ж
lstm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice_1/stackК
lstm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_1/stack_1К
lstm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_1/stack_2Ш
lstm_2/strided_slice_1StridedSlicelstm_2/Shape_1:output:0%lstm_2/strided_slice_1/stack:output:0'lstm_2/strided_slice_1/stack_1:output:0'lstm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_2/strided_slice_1У
"lstm_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2$
"lstm_2/TensorArrayV2/element_shapeќ
lstm_2/TensorArrayV2TensorListReserve+lstm_2/TensorArrayV2/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_2/TensorArrayV2Ќ
<lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2>
<lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeФ
.lstm_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_2/transpose:y:0Elstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_2/TensorArrayUnstack/TensorListFromTensorЖ
lstm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice_2/stackК
lstm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_2/stack_1К
lstm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_2/stack_2І
lstm_2/strided_slice_2StridedSlicelstm_2/transpose:y:0%lstm_2/strided_slice_2/stack:output:0'lstm_2/strided_slice_2/stack_1:output:0'lstm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
lstm_2/strided_slice_2Ћ
)lstm_2/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp2lstm_2_lstm_cell_66_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02+
)lstm_2/lstm_cell_66/MatMul/ReadVariableOp…
lstm_2/lstm_cell_66/MatMulMatMullstm_2/strided_slice_2:output:01lstm_2/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_2/lstm_cell_66/MatMul–
+lstm_2/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp4lstm_2_lstm_cell_66_matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02-
+lstm_2/lstm_cell_66/MatMul_1/ReadVariableOp≈
lstm_2/lstm_cell_66/MatMul_1MatMullstm_2/zeros:output:03lstm_2/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_2/lstm_cell_66/MatMul_1Љ
lstm_2/lstm_cell_66/addAddV2$lstm_2/lstm_cell_66/MatMul:product:0&lstm_2/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_2/lstm_cell_66/add…
*lstm_2/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp3lstm_2_lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*lstm_2/lstm_cell_66/BiasAdd/ReadVariableOp…
lstm_2/lstm_cell_66/BiasAddBiasAddlstm_2/lstm_cell_66/add:z:02lstm_2/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_2/lstm_cell_66/BiasAddМ
#lstm_2/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#lstm_2/lstm_cell_66/split/split_dimП
lstm_2/lstm_cell_66/splitSplit,lstm_2/lstm_cell_66/split/split_dim:output:0$lstm_2/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split2
lstm_2/lstm_cell_66/splitЫ
lstm_2/lstm_cell_66/SigmoidSigmoid"lstm_2/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_2/lstm_cell_66/SigmoidЯ
lstm_2/lstm_cell_66/Sigmoid_1Sigmoid"lstm_2/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_2/lstm_cell_66/Sigmoid_1І
lstm_2/lstm_cell_66/mulMul!lstm_2/lstm_cell_66/Sigmoid_1:y:0lstm_2/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_2/lstm_cell_66/mulЯ
lstm_2/lstm_cell_66/Sigmoid_2Sigmoid"lstm_2/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_2/lstm_cell_66/Sigmoid_2ґ
lstm_2/lstm_cell_66/mul_1Mul"lstm_2/lstm_cell_66/split:output:2!lstm_2/lstm_cell_66/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_2/lstm_cell_66/mul_1Щ
lstm_2/lstm_cell_66/IdentityIdentitylstm_2/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_2/lstm_cell_66/IdentityЖ
lstm_2/lstm_cell_66/IdentityN	IdentityNlstm_2/lstm_cell_66/mul_1:z:0"lstm_2/lstm_cell_66/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1548920*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
lstm_2/lstm_cell_66/IdentityNЄ
lstm_2/lstm_cell_66/mul_2Mullstm_2/lstm_cell_66/Sigmoid:y:0&lstm_2/lstm_cell_66/IdentityN:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_2/lstm_cell_66/mul_2≠
lstm_2/lstm_cell_66/add_1AddV2lstm_2/lstm_cell_66/mul:z:0lstm_2/lstm_cell_66/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_2/lstm_cell_66/add_1Я
lstm_2/lstm_cell_66/Sigmoid_3Sigmoid"lstm_2/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_2/lstm_cell_66/Sigmoid_3Ъ
lstm_2/lstm_cell_66/Sigmoid_4Sigmoidlstm_2/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_2/lstm_cell_66/Sigmoid_4±
lstm_2/lstm_cell_66/mul_3Mullstm_2/lstm_cell_66/add_1:z:0!lstm_2/lstm_cell_66/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_2/lstm_cell_66/mul_3Э
lstm_2/lstm_cell_66/Identity_1Identitylstm_2/lstm_cell_66/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2 
lstm_2/lstm_cell_66/Identity_1Е
lstm_2/lstm_cell_66/IdentityN_1	IdentityNlstm_2/lstm_cell_66/mul_3:z:0lstm_2/lstm_cell_66/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1548929*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2!
lstm_2/lstm_cell_66/IdentityN_1Љ
lstm_2/lstm_cell_66/mul_4Mul!lstm_2/lstm_cell_66/Sigmoid_3:y:0(lstm_2/lstm_cell_66/IdentityN_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_2/lstm_cell_66/mul_4Э
$lstm_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2&
$lstm_2/TensorArrayV2_1/element_shape‘
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
lstm_2/timeН
lstm_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2!
lstm_2/while/maximum_iterationsx
lstm_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_2/while/loop_counterў
lstm_2/whileWhile"lstm_2/while/loop_counter:output:0(lstm_2/while/maximum_iterations:output:0lstm_2/time:output:0lstm_2/TensorArrayV2_1:handle:0lstm_2/zeros:output:0lstm_2/zeros_1:output:0lstm_2/strided_slice_1:output:0>lstm_2/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_2_lstm_cell_66_matmul_readvariableop_resource4lstm_2_lstm_cell_66_matmul_1_readvariableop_resource3lstm_2_lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€@:€€€€€€€€€@: : : : : *%
_read_only_resource_inputs
	
*%
bodyR
lstm_2_while_body_1548940*%
condR
lstm_2_while_cond_1548939*K
output_shapes:
8: : : : :€€€€€€€€€@:€€€€€€€€€@: : : : : *
parallel_iterations 2
lstm_2/while√
7lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   29
7lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeД
)lstm_2/TensorArrayV2Stack/TensorListStackTensorListStacklstm_2/while:output:3@lstm_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€@*
element_dtype02+
)lstm_2/TensorArrayV2Stack/TensorListStackП
lstm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
lstm_2/strided_slice_3/stackК
lstm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_2/strided_slice_3/stack_1К
lstm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_3/stack_2ƒ
lstm_2/strided_slice_3StridedSlice2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_2/strided_slice_3/stack:output:0'lstm_2/strided_slice_3/stack_1:output:0'lstm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2
lstm_2/strided_slice_3З
lstm_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_2/transpose_1/permЅ
lstm_2/transpose_1	Transpose2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€@2
lstm_2/transpose_1t
lstm_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_2/runtimeС
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2 
time_distributed/Reshape/shape≤
time_distributed/ReshapeReshapelstm_2/transpose_1:y:0'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
time_distributed/ReshapeЎ
.time_distributed/dense_2/MatMul/ReadVariableOpReadVariableOp7time_distributed_dense_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype020
.time_distributed/dense_2/MatMul/ReadVariableOpў
time_distributed/dense_2/MatMulMatMul!time_distributed/Reshape:output:06time_distributed/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2!
time_distributed/dense_2/MatMul„
/time_distributed/dense_2/BiasAdd/ReadVariableOpReadVariableOp8time_distributed_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype021
/time_distributed/dense_2/BiasAdd/ReadVariableOpе
 time_distributed/dense_2/BiasAddBiasAdd)time_distributed/dense_2/MatMul:product:07time_distributed/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2"
 time_distributed/dense_2/BiasAddђ
 time_distributed/dense_2/SigmoidSigmoid)time_distributed/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2"
 time_distributed/dense_2/Sigmoid∆
time_distributed/dense_2/mulMul)time_distributed/dense_2/BiasAdd:output:0$time_distributed/dense_2/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
time_distributed/dense_2/mul¶
!time_distributed/dense_2/IdentityIdentity time_distributed/dense_2/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2#
!time_distributed/dense_2/IdentityЪ
"time_distributed/dense_2/IdentityN	IdentityN time_distributed/dense_2/mul:z:0)time_distributed/dense_2/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1549041*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2$
"time_distributed/dense_2/IdentityNЩ
 time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€   @   2"
 time_distributed/Reshape_1/shape—
time_distributed/Reshape_1Reshape+time_distributed/dense_2/IdentityN:output:0)time_distributed/Reshape_1/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€@2
time_distributed/Reshape_1Х
 time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2"
 time_distributed/Reshape_2/shapeЄ
time_distributed/Reshape_2Reshapelstm_2/transpose_1:y:0)time_distributed/Reshape_2/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
time_distributed/Reshape_2Х
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2"
 time_distributed_1/Reshape/shape≈
time_distributed_1/ReshapeReshape#time_distributed/Reshape_1:output:0)time_distributed_1/Reshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
time_distributed_1/Reshapeё
0time_distributed_1/dense_3/MatMul/ReadVariableOpReadVariableOp9time_distributed_1_dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype022
0time_distributed_1/dense_3/MatMul/ReadVariableOpб
!time_distributed_1/dense_3/MatMulMatMul#time_distributed_1/Reshape:output:08time_distributed_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2#
!time_distributed_1/dense_3/MatMulЁ
1time_distributed_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype023
1time_distributed_1/dense_3/BiasAdd/ReadVariableOpн
"time_distributed_1/dense_3/BiasAddBiasAdd+time_distributed_1/dense_3/MatMul:product:09time_distributed_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2$
"time_distributed_1/dense_3/BiasAddЭ
"time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€      2$
"time_distributed_1/Reshape_1/shape„
time_distributed_1/Reshape_1Reshape+time_distributed_1/dense_3/BiasAdd:output:0+time_distributed_1/Reshape_1/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
time_distributed_1/Reshape_1Щ
"time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2$
"time_distributed_1/Reshape_2/shapeЋ
time_distributed_1/Reshape_2Reshape#time_distributed/Reshape_1:output:0+time_distributed_1/Reshape_2/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
time_distributed_1/Reshape_2у
IdentityIdentity%time_distributed_1/Reshape_1:output:0+^lstm_1/lstm_cell_65/BiasAdd/ReadVariableOp*^lstm_1/lstm_cell_65/MatMul/ReadVariableOp,^lstm_1/lstm_cell_65/MatMul_1/ReadVariableOp^lstm_1/while+^lstm_2/lstm_cell_66/BiasAdd/ReadVariableOp*^lstm_2/lstm_cell_66/MatMul/ReadVariableOp,^lstm_2/lstm_cell_66/MatMul_1/ReadVariableOp^lstm_2/while0^time_distributed/dense_2/BiasAdd/ReadVariableOp/^time_distributed/dense_2/MatMul/ReadVariableOp2^time_distributed_1/dense_3/BiasAdd/ReadVariableOp1^time_distributed_1/dense_3/MatMul/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€: : : : : : : : : : 2X
*lstm_1/lstm_cell_65/BiasAdd/ReadVariableOp*lstm_1/lstm_cell_65/BiasAdd/ReadVariableOp2V
)lstm_1/lstm_cell_65/MatMul/ReadVariableOp)lstm_1/lstm_cell_65/MatMul/ReadVariableOp2Z
+lstm_1/lstm_cell_65/MatMul_1/ReadVariableOp+lstm_1/lstm_cell_65/MatMul_1/ReadVariableOp2
lstm_1/whilelstm_1/while2X
*lstm_2/lstm_cell_66/BiasAdd/ReadVariableOp*lstm_2/lstm_cell_66/BiasAdd/ReadVariableOp2V
)lstm_2/lstm_cell_66/MatMul/ReadVariableOp)lstm_2/lstm_cell_66/MatMul/ReadVariableOp2Z
+lstm_2/lstm_cell_66/MatMul_1/ReadVariableOp+lstm_2/lstm_cell_66/MatMul_1/ReadVariableOp2
lstm_2/whilelstm_2/while2b
/time_distributed/dense_2/BiasAdd/ReadVariableOp/time_distributed/dense_2/BiasAdd/ReadVariableOp2`
.time_distributed/dense_2/MatMul/ReadVariableOp.time_distributed/dense_2/MatMul/ReadVariableOp2f
1time_distributed_1/dense_3/BiasAdd/ReadVariableOp1time_distributed_1/dense_3/BiasAdd/ReadVariableOp2d
0time_distributed_1/dense_3/MatMul/ReadVariableOp0time_distributed_1/dense_3/MatMul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
і
Ў
&sequential_1_lstm_2_while_cond_1545524D
@sequential_1_lstm_2_while_sequential_1_lstm_2_while_loop_counterJ
Fsequential_1_lstm_2_while_sequential_1_lstm_2_while_maximum_iterations)
%sequential_1_lstm_2_while_placeholder+
'sequential_1_lstm_2_while_placeholder_1+
'sequential_1_lstm_2_while_placeholder_2+
'sequential_1_lstm_2_while_placeholder_3F
Bsequential_1_lstm_2_while_less_sequential_1_lstm_2_strided_slice_1]
Ysequential_1_lstm_2_while_sequential_1_lstm_2_while_cond_1545524___redundant_placeholder0]
Ysequential_1_lstm_2_while_sequential_1_lstm_2_while_cond_1545524___redundant_placeholder1]
Ysequential_1_lstm_2_while_sequential_1_lstm_2_while_cond_1545524___redundant_placeholder2]
Ysequential_1_lstm_2_while_sequential_1_lstm_2_while_cond_1545524___redundant_placeholder3&
"sequential_1_lstm_2_while_identity
‘
sequential_1/lstm_2/while/LessLess%sequential_1_lstm_2_while_placeholderBsequential_1_lstm_2_while_less_sequential_1_lstm_2_strided_slice_1*
T0*
_output_shapes
: 2 
sequential_1/lstm_2/while/LessЩ
"sequential_1/lstm_2/while/IdentityIdentity"sequential_1/lstm_2/while/Less:z:0*
T0
*
_output_shapes
: 2$
"sequential_1/lstm_2/while/Identity"Q
"sequential_1_lstm_2_while_identity+sequential_1/lstm_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€@:€€€€€€€€€@: ::::: 

_output_shapes
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
:€€€€€€€€€@:-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
:
ѕ
ъ
I__inference_sequential_1_layer_call_and_return_conditional_losses_1547645

inputs!
lstm_1_1547411:	А"
lstm_1_1547413:
АА
lstm_1_1547415:	А"
lstm_2_1547589:
АА!
lstm_2_1547591:	@А
lstm_2_1547593:	А*
time_distributed_1547616:@@&
time_distributed_1547618:@,
time_distributed_1_1547637:@(
time_distributed_1_1547639:
identityИҐlstm_1/StatefulPartitionedCallҐlstm_2/StatefulPartitionedCallҐ(time_distributed/StatefulPartitionedCallҐ*time_distributed_1/StatefulPartitionedCall§
lstm_1/StatefulPartitionedCallStatefulPartitionedCallinputslstm_1_1547411lstm_1_1547413lstm_1_1547415*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_1_layer_call_and_return_conditional_losses_15474102 
lstm_1/StatefulPartitionedCallƒ
lstm_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0lstm_2_1547589lstm_2_1547591lstm_2_1547593*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_2_layer_call_and_return_conditional_losses_15475882 
lstm_2/StatefulPartitionedCallд
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0time_distributed_1547616time_distributed_1547618*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_layer_call_and_return_conditional_losses_15476152*
(time_distributed/StatefulPartitionedCallС
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2 
time_distributed/Reshape/shape√
time_distributed/ReshapeReshape'lstm_2/StatefulPartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
time_distributed/Reshapeш
*time_distributed_1/StatefulPartitionedCallStatefulPartitionedCall1time_distributed/StatefulPartitionedCall:output:0time_distributed_1_1547637time_distributed_1_1547639*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_15476362,
*time_distributed_1/StatefulPartitionedCallХ
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2"
 time_distributed_1/Reshape/shape”
time_distributed_1/ReshapeReshape1time_distributed/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
time_distributed_1/Reshape•
IdentityIdentity3time_distributed_1/StatefulPartitionedCall:output:0^lstm_1/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_1/StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€: : : : : : : : : : 2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_1/StatefulPartitionedCall*time_distributed_1/StatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
С

€
.__inference_sequential_1_layer_call_fn_1549114

inputs
unknown:	А
	unknown_0:
АА
	unknown_1:	А
	unknown_2:
АА
	unknown_3:	@А
	unknown_4:	А
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:
identityИҐStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*,
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
I__inference_sequential_1_layer_call_and_return_conditional_losses_15481832
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
г"
И
I__inference_lstm_cell_65_layer_call_and_return_conditional_losses_1545734

inputs

states
states_11
matmul_readvariableop_resource:	А4
 matmul_1_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А

identity_2

identity_3

identity_4ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
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
:€€€€€€€€€А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim√
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:€€€€€€€€€А2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:€€€€€€€€€А2
muld
	Sigmoid_2Sigmoidsplit:output:2*
T0*(
_output_shapes
:€€€€€€€€€А2
	Sigmoid_2g
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
mul_1^
IdentityIdentity	mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2

IdentityЄ
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1545715*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2
	IdentityNi
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
mul_2^
add_1AddV2mul:z:0	mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
add_1d
	Sigmoid_3Sigmoidsplit:output:3*
T0*(
_output_shapes
:€€€€€€€€€А2
	Sigmoid_3_
	Sigmoid_4Sigmoid	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
	Sigmoid_4b
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
mul_3b

Identity_1Identity	mul_3:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_1Ј
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1545724*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2
IdentityN_1m
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
mul_4≠

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_2≠

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_3≠

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€А:€€€€€€€€€А: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_namestates:PL
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_namestates
Н
ш
.__inference_lstm_cell_66_layer_call_fn_1551025

inputs
states_0
states_1
unknown:
АА
	unknown_0:	@А
	unknown_1:	А
identity

identity_1

identity_2ИҐStatefulPartitionedCallƒ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_15463842
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€@2

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity_1Т

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:€€€€€€€€€А:€€€€€€€€€@:€€€€€€€€€@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€@
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€@
"
_user_specified_name
states/1
Ы
Ц
)__inference_dense_3_layer_call_fn_1551086

inputs
unknown:@
	unknown_0:
identityИҐStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_15471182
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
КX
≥

lstm_2_while_body_1548940*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3)
%lstm_2_while_lstm_2_strided_slice_1_0e
alstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0N
:lstm_2_while_lstm_cell_66_matmul_readvariableop_resource_0:
ААO
<lstm_2_while_lstm_cell_66_matmul_1_readvariableop_resource_0:	@АJ
;lstm_2_while_lstm_cell_66_biasadd_readvariableop_resource_0:	А
lstm_2_while_identity
lstm_2_while_identity_1
lstm_2_while_identity_2
lstm_2_while_identity_3
lstm_2_while_identity_4
lstm_2_while_identity_5'
#lstm_2_while_lstm_2_strided_slice_1c
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensorL
8lstm_2_while_lstm_cell_66_matmul_readvariableop_resource:
ААM
:lstm_2_while_lstm_cell_66_matmul_1_readvariableop_resource:	@АH
9lstm_2_while_lstm_cell_66_biasadd_readvariableop_resource:	АИҐ0lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOpҐ/lstm_2/while/lstm_cell_66/MatMul/ReadVariableOpҐ1lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOp—
>lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2@
>lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeю
0lstm_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0lstm_2_while_placeholderGlstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€А*
element_dtype022
0lstm_2/while/TensorArrayV2Read/TensorListGetItemя
/lstm_2/while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp:lstm_2_while_lstm_cell_66_matmul_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype021
/lstm_2/while/lstm_cell_66/MatMul/ReadVariableOpу
 lstm_2/while/lstm_cell_66/MatMulMatMul7lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_2/while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2"
 lstm_2/while/lstm_cell_66/MatMulд
1lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp<lstm_2_while_lstm_cell_66_matmul_1_readvariableop_resource_0*
_output_shapes
:	@А*
dtype023
1lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOp№
"lstm_2/while/lstm_cell_66/MatMul_1MatMullstm_2_while_placeholder_29lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2$
"lstm_2/while/lstm_cell_66/MatMul_1‘
lstm_2/while/lstm_cell_66/addAddV2*lstm_2/while/lstm_cell_66/MatMul:product:0,lstm_2/while/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_2/while/lstm_cell_66/addЁ
0lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp;lstm_2_while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype022
0lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOpб
!lstm_2/while/lstm_cell_66/BiasAddBiasAdd!lstm_2/while/lstm_cell_66/add:z:08lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2#
!lstm_2/while/lstm_cell_66/BiasAddШ
)lstm_2/while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2+
)lstm_2/while/lstm_cell_66/split/split_dimІ
lstm_2/while/lstm_cell_66/splitSplit2lstm_2/while/lstm_cell_66/split/split_dim:output:0*lstm_2/while/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split2!
lstm_2/while/lstm_cell_66/split≠
!lstm_2/while/lstm_cell_66/SigmoidSigmoid(lstm_2/while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2#
!lstm_2/while/lstm_cell_66/Sigmoid±
#lstm_2/while/lstm_cell_66/Sigmoid_1Sigmoid(lstm_2/while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€@2%
#lstm_2/while/lstm_cell_66/Sigmoid_1Љ
lstm_2/while/lstm_cell_66/mulMul'lstm_2/while/lstm_cell_66/Sigmoid_1:y:0lstm_2_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_2/while/lstm_cell_66/mul±
#lstm_2/while/lstm_cell_66/Sigmoid_2Sigmoid(lstm_2/while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€@2%
#lstm_2/while/lstm_cell_66/Sigmoid_2ќ
lstm_2/while/lstm_cell_66/mul_1Mul(lstm_2/while/lstm_cell_66/split:output:2'lstm_2/while/lstm_cell_66/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2!
lstm_2/while/lstm_cell_66/mul_1Ђ
"lstm_2/while/lstm_cell_66/IdentityIdentity#lstm_2/while/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2$
"lstm_2/while/lstm_cell_66/IdentityЮ
#lstm_2/while/lstm_cell_66/IdentityN	IdentityN#lstm_2/while/lstm_cell_66/mul_1:z:0(lstm_2/while/lstm_cell_66/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1548982*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2%
#lstm_2/while/lstm_cell_66/IdentityN–
lstm_2/while/lstm_cell_66/mul_2Mul%lstm_2/while/lstm_cell_66/Sigmoid:y:0,lstm_2/while/lstm_cell_66/IdentityN:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2!
lstm_2/while/lstm_cell_66/mul_2≈
lstm_2/while/lstm_cell_66/add_1AddV2!lstm_2/while/lstm_cell_66/mul:z:0#lstm_2/while/lstm_cell_66/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2!
lstm_2/while/lstm_cell_66/add_1±
#lstm_2/while/lstm_cell_66/Sigmoid_3Sigmoid(lstm_2/while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€@2%
#lstm_2/while/lstm_cell_66/Sigmoid_3ђ
#lstm_2/while/lstm_cell_66/Sigmoid_4Sigmoid#lstm_2/while/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2%
#lstm_2/while/lstm_cell_66/Sigmoid_4…
lstm_2/while/lstm_cell_66/mul_3Mul#lstm_2/while/lstm_cell_66/add_1:z:0'lstm_2/while/lstm_cell_66/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2!
lstm_2/while/lstm_cell_66/mul_3ѓ
$lstm_2/while/lstm_cell_66/Identity_1Identity#lstm_2/while/lstm_cell_66/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2&
$lstm_2/while/lstm_cell_66/Identity_1Э
%lstm_2/while/lstm_cell_66/IdentityN_1	IdentityN#lstm_2/while/lstm_cell_66/mul_3:z:0#lstm_2/while/lstm_cell_66/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1548991*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2'
%lstm_2/while/lstm_cell_66/IdentityN_1‘
lstm_2/while/lstm_cell_66/mul_4Mul'lstm_2/while/lstm_cell_66/Sigmoid_3:y:0.lstm_2/while/lstm_cell_66/IdentityN_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2!
lstm_2/while/lstm_cell_66/mul_4Г
1lstm_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_2_while_placeholder_1lstm_2_while_placeholder#lstm_2/while/lstm_cell_66/mul_4:z:0*
_output_shapes
: *
element_dtype023
1lstm_2/while/TensorArrayV2Write/TensorListSetItemj
lstm_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/while/add/yЕ
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
lstm_2/while/add_1/yЩ
lstm_2/while/add_1AddV2&lstm_2_while_lstm_2_while_loop_counterlstm_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_2/while/add_1М
lstm_2/while/IdentityIdentitylstm_2/while/add_1:z:01^lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_66/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity¶
lstm_2/while/Identity_1Identity,lstm_2_while_lstm_2_while_maximum_iterations1^lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_66/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_1О
lstm_2/while/Identity_2Identitylstm_2/while/add:z:01^lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_66/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_2ї
lstm_2/while/Identity_3IdentityAlstm_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:01^lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_66/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_3Ѓ
lstm_2/while/Identity_4Identity#lstm_2/while/lstm_cell_66/mul_4:z:01^lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_66/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_2/while/Identity_4Ѓ
lstm_2/while/Identity_5Identity#lstm_2/while/lstm_cell_66/add_1:z:01^lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOp0^lstm_2/while/lstm_cell_66/MatMul/ReadVariableOp2^lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_2/while/Identity_5"7
lstm_2_while_identitylstm_2/while/Identity:output:0";
lstm_2_while_identity_1 lstm_2/while/Identity_1:output:0";
lstm_2_while_identity_2 lstm_2/while/Identity_2:output:0";
lstm_2_while_identity_3 lstm_2/while/Identity_3:output:0";
lstm_2_while_identity_4 lstm_2/while/Identity_4:output:0";
lstm_2_while_identity_5 lstm_2/while/Identity_5:output:0"L
#lstm_2_while_lstm_2_strided_slice_1%lstm_2_while_lstm_2_strided_slice_1_0"x
9lstm_2_while_lstm_cell_66_biasadd_readvariableop_resource;lstm_2_while_lstm_cell_66_biasadd_readvariableop_resource_0"z
:lstm_2_while_lstm_cell_66_matmul_1_readvariableop_resource<lstm_2_while_lstm_cell_66_matmul_1_readvariableop_resource_0"v
8lstm_2_while_lstm_cell_66_matmul_readvariableop_resource:lstm_2_while_lstm_cell_66_matmul_readvariableop_resource_0"ƒ
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensoralstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€@:€€€€€€€€€@: : : : : 2d
0lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOp0lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOp2b
/lstm_2/while/lstm_cell_66/MatMul/ReadVariableOp/lstm_2/while/lstm_cell_66/MatMul/ReadVariableOp2f
1lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOp1lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
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
:€€€€€€€€€@:-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
: 
џ
ґ
(__inference_lstm_2_layer_call_fn_1550570

inputs
unknown:
АА
	unknown_0:	@А
	unknown_1:	А
identityИҐStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_2_layer_call_and_return_conditional_losses_15479222
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:€€€€€€€€€А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Є≥
£
#__inference__traced_restore_1551365
file_prefix$
assignvariableop_adam_iter:	 (
assignvariableop_1_adam_beta_1: (
assignvariableop_2_adam_beta_2: '
assignvariableop_3_adam_decay: /
%assignvariableop_4_adam_learning_rate: ?
,assignvariableop_5_lstm_1_lstm_cell_1_kernel:	АJ
6assignvariableop_6_lstm_1_lstm_cell_1_recurrent_kernel:
АА9
*assignvariableop_7_lstm_1_lstm_cell_1_bias:	А@
,assignvariableop_8_lstm_2_lstm_cell_2_kernel:
ААI
6assignvariableop_9_lstm_2_lstm_cell_2_recurrent_kernel:	@А:
+assignvariableop_10_lstm_2_lstm_cell_2_bias:	А=
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
4assignvariableop_21_adam_lstm_1_lstm_cell_1_kernel_m:	АR
>assignvariableop_22_adam_lstm_1_lstm_cell_1_recurrent_kernel_m:
ААA
2assignvariableop_23_adam_lstm_1_lstm_cell_1_bias_m:	АH
4assignvariableop_24_adam_lstm_2_lstm_cell_2_kernel_m:
ААQ
>assignvariableop_25_adam_lstm_2_lstm_cell_2_recurrent_kernel_m:	@АA
2assignvariableop_26_adam_lstm_2_lstm_cell_2_bias_m:	АD
2assignvariableop_27_adam_time_distributed_kernel_m:@@>
0assignvariableop_28_adam_time_distributed_bias_m:@F
4assignvariableop_29_adam_time_distributed_1_kernel_m:@@
2assignvariableop_30_adam_time_distributed_1_bias_m:G
4assignvariableop_31_adam_lstm_1_lstm_cell_1_kernel_v:	АR
>assignvariableop_32_adam_lstm_1_lstm_cell_1_recurrent_kernel_v:
ААA
2assignvariableop_33_adam_lstm_1_lstm_cell_1_bias_v:	АH
4assignvariableop_34_adam_lstm_2_lstm_cell_2_kernel_v:
ААQ
>assignvariableop_35_adam_lstm_2_lstm_cell_2_recurrent_kernel_v:	@АA
2assignvariableop_36_adam_lstm_2_lstm_cell_2_bias_v:	АD
2assignvariableop_37_adam_time_distributed_kernel_v:@@>
0assignvariableop_38_adam_time_distributed_bias_v:@F
4assignvariableop_39_adam_time_distributed_1_kernel_v:@@
2assignvariableop_40_adam_time_distributed_1_bias_v:
identity_42ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9№
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:**
dtype0*и
valueёBџ*B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesв
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:**
dtype0*g
value^B\*B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesА
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Њ
_output_shapesЂ
®::::::::::::::::::::::::::::::::::::::::::*8
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

Identity_3Ґ
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4™
AssignVariableOp_4AssignVariableOp%assignvariableop_4_adam_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5±
AssignVariableOp_5AssignVariableOp,assignvariableop_5_lstm_1_lstm_cell_1_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6ї
AssignVariableOp_6AssignVariableOp6assignvariableop_6_lstm_1_lstm_cell_1_recurrent_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7ѓ
AssignVariableOp_7AssignVariableOp*assignvariableop_7_lstm_1_lstm_cell_1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8±
AssignVariableOp_8AssignVariableOp,assignvariableop_8_lstm_2_lstm_cell_2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9ї
AssignVariableOp_9AssignVariableOp6assignvariableop_9_lstm_2_lstm_cell_2_recurrent_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10≥
AssignVariableOp_10AssignVariableOp+assignvariableop_10_lstm_2_lstm_cell_2_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11≥
AssignVariableOp_11AssignVariableOp+assignvariableop_11_time_distributed_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12±
AssignVariableOp_12AssignVariableOp)assignvariableop_12_time_distributed_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13µ
AssignVariableOp_13AssignVariableOp-assignvariableop_13_time_distributed_1_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14≥
AssignVariableOp_14AssignVariableOp+assignvariableop_14_time_distributed_1_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15°
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16°
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
Identity_21Љ
AssignVariableOp_21AssignVariableOp4assignvariableop_21_adam_lstm_1_lstm_cell_1_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22∆
AssignVariableOp_22AssignVariableOp>assignvariableop_22_adam_lstm_1_lstm_cell_1_recurrent_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23Ї
AssignVariableOp_23AssignVariableOp2assignvariableop_23_adam_lstm_1_lstm_cell_1_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24Љ
AssignVariableOp_24AssignVariableOp4assignvariableop_24_adam_lstm_2_lstm_cell_2_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25∆
AssignVariableOp_25AssignVariableOp>assignvariableop_25_adam_lstm_2_lstm_cell_2_recurrent_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26Ї
AssignVariableOp_26AssignVariableOp2assignvariableop_26_adam_lstm_2_lstm_cell_2_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27Ї
AssignVariableOp_27AssignVariableOp2assignvariableop_27_adam_time_distributed_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28Є
AssignVariableOp_28AssignVariableOp0assignvariableop_28_adam_time_distributed_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29Љ
AssignVariableOp_29AssignVariableOp4assignvariableop_29_adam_time_distributed_1_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30Ї
AssignVariableOp_30AssignVariableOp2assignvariableop_30_adam_time_distributed_1_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31Љ
AssignVariableOp_31AssignVariableOp4assignvariableop_31_adam_lstm_1_lstm_cell_1_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32∆
AssignVariableOp_32AssignVariableOp>assignvariableop_32_adam_lstm_1_lstm_cell_1_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33Ї
AssignVariableOp_33AssignVariableOp2assignvariableop_33_adam_lstm_1_lstm_cell_1_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34Љ
AssignVariableOp_34AssignVariableOp4assignvariableop_34_adam_lstm_2_lstm_cell_2_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35∆
AssignVariableOp_35AssignVariableOp>assignvariableop_35_adam_lstm_2_lstm_cell_2_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36Ї
AssignVariableOp_36AssignVariableOp2assignvariableop_36_adam_lstm_2_lstm_cell_2_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37Ї
AssignVariableOp_37AssignVariableOp2assignvariableop_37_adam_time_distributed_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38Є
AssignVariableOp_38AssignVariableOp0assignvariableop_38_adam_time_distributed_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39Љ
AssignVariableOp_39AssignVariableOp4assignvariableop_39_adam_time_distributed_1_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40Ї
AssignVariableOp_40AssignVariableOp2assignvariableop_40_adam_time_distributed_1_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_409
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpд
Identity_41Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_41„
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
Х
†
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_1547636

inputs8
&dense_3_matmul_readvariableop_resource:@5
'dense_3_biasadd_readvariableop_resource:
identityИҐdense_3/BiasAdd/ReadVariableOpҐdense_3/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
Reshape•
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_3/MatMul/ReadVariableOpХ
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_3/MatMul§
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp°
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_3/BiasAddw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€      2
Reshape_1/shapeЛ
	Reshape_1Reshapedense_3/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
	Reshape_1Ђ
IdentityIdentityReshape_1:output:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ћc
Ь
C__inference_lstm_1_layer_call_and_return_conditional_losses_1548115

inputs>
+lstm_cell_65_matmul_readvariableop_resource:	АA
-lstm_cell_65_matmul_1_readvariableop_resource:
АА;
,lstm_cell_65_biasadd_readvariableop_resource:	А
identityИҐ#lstm_cell_65/BiasAdd/ReadVariableOpҐ"lstm_cell_65/MatMul/ReadVariableOpҐ$lstm_cell_65/MatMul_1/ReadVariableOpҐwhileD
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
strided_slice/stack_2в
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
B :и2
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
:€€€€€€€€€А2
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
B :и2
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
:€€€€€€€€€А2	
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
:€€€€€€€€€2
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
strided_slice_1/stack_2о
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
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2µ
"lstm_cell_65/MatMul/ReadVariableOpReadVariableOp+lstm_cell_65_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02$
"lstm_cell_65/MatMul/ReadVariableOp≠
lstm_cell_65/MatMulMatMulstrided_slice_2:output:0*lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/MatMulЉ
$lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_65_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02&
$lstm_cell_65/MatMul_1/ReadVariableOp©
lstm_cell_65/MatMul_1MatMulzeros:output:0,lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/MatMul_1†
lstm_cell_65/addAddV2lstm_cell_65/MatMul:product:0lstm_cell_65/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/addі
#lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_65_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#lstm_cell_65/BiasAdd/ReadVariableOp≠
lstm_cell_65/BiasAddBiasAddlstm_cell_65/add:z:0+lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/BiasAdd~
lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_65/split/split_dimч
lstm_cell_65/splitSplit%lstm_cell_65/split/split_dim:output:0lstm_cell_65/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_split2
lstm_cell_65/splitЗ
lstm_cell_65/SigmoidSigmoidlstm_cell_65/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/SigmoidЛ
lstm_cell_65/Sigmoid_1Sigmoidlstm_cell_65/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Sigmoid_1М
lstm_cell_65/mulMullstm_cell_65/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/mulЛ
lstm_cell_65/Sigmoid_2Sigmoidlstm_cell_65/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Sigmoid_2Ы
lstm_cell_65/mul_1Mullstm_cell_65/split:output:2lstm_cell_65/Sigmoid_2:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/mul_1Е
lstm_cell_65/IdentityIdentitylstm_cell_65/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Identityм
lstm_cell_65/IdentityN	IdentityNlstm_cell_65/mul_1:z:0lstm_cell_65/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1548001*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2
lstm_cell_65/IdentityNЭ
lstm_cell_65/mul_2Mullstm_cell_65/Sigmoid:y:0lstm_cell_65/IdentityN:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/mul_2Т
lstm_cell_65/add_1AddV2lstm_cell_65/mul:z:0lstm_cell_65/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/add_1Л
lstm_cell_65/Sigmoid_3Sigmoidlstm_cell_65/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Sigmoid_3Ж
lstm_cell_65/Sigmoid_4Sigmoidlstm_cell_65/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Sigmoid_4Ц
lstm_cell_65/mul_3Mullstm_cell_65/add_1:z:0lstm_cell_65/Sigmoid_4:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/mul_3Й
lstm_cell_65/Identity_1Identitylstm_cell_65/mul_3:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Identity_1л
lstm_cell_65/IdentityN_1	IdentityNlstm_cell_65/mul_3:z:0lstm_cell_65/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1548010*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2
lstm_cell_65/IdentityN_1°
lstm_cell_65/mul_4Mullstm_cell_65/Sigmoid_3:y:0!lstm_cell_65/IdentityN_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/mul_4П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterф
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_65_matmul_readvariableop_resource-lstm_cell_65_matmul_1_readvariableop_resource,lstm_cell_65_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1548021*
condR
while_cond_1548020*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   22
0TensorArrayV2Stack/TensorListStack/element_shapeй
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¶
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeв
IdentityIdentitytranspose_1:y:0$^lstm_cell_65/BiasAdd/ReadVariableOp#^lstm_cell_65/MatMul/ReadVariableOp%^lstm_cell_65/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2J
#lstm_cell_65/BiasAdd/ReadVariableOp#lstm_cell_65/BiasAdd/ReadVariableOp2H
"lstm_cell_65/MatMul/ReadVariableOp"lstm_cell_65/MatMul/ReadVariableOp2L
$lstm_cell_65/MatMul_1/ReadVariableOp$lstm_cell_65/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ё
»
while_cond_1549361
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1549361___redundant_placeholder05
1while_while_cond_1549361___redundant_placeholder15
1while_while_cond_1549361___redundant_placeholder25
1while_while_cond_1549361___redundant_placeholder3
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
B: : : : :€€€€€€€€€А:€€€€€€€€€А: ::::: 

_output_shapes
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
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
ЁL
”
while_body_1549704
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_65_matmul_readvariableop_resource_0:	АI
5while_lstm_cell_65_matmul_1_readvariableop_resource_0:
ААC
4while_lstm_cell_65_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_65_matmul_readvariableop_resource:	АG
3while_lstm_cell_65_matmul_1_readvariableop_resource:
ААA
2while_lstm_cell_65_biasadd_readvariableop_resource:	АИҐ)while/lstm_cell_65/BiasAdd/ReadVariableOpҐ(while/lstm_cell_65/MatMul/ReadVariableOpҐ*while/lstm_cell_65/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem…
(while/lstm_cell_65/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_65_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02*
(while/lstm_cell_65/MatMul/ReadVariableOp„
while/lstm_cell_65/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/MatMul–
*while/lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_65_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02,
*while/lstm_cell_65/MatMul_1/ReadVariableOpј
while/lstm_cell_65/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/MatMul_1Є
while/lstm_cell_65/addAddV2#while/lstm_cell_65/MatMul:product:0%while/lstm_cell_65/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/add»
)while/lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_65_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02+
)while/lstm_cell_65/BiasAdd/ReadVariableOp≈
while/lstm_cell_65/BiasAddBiasAddwhile/lstm_cell_65/add:z:01while/lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/BiasAddК
"while/lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_65/split/split_dimП
while/lstm_cell_65/splitSplit+while/lstm_cell_65/split/split_dim:output:0#while/lstm_cell_65/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_split2
while/lstm_cell_65/splitЩ
while/lstm_cell_65/SigmoidSigmoid!while/lstm_cell_65/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/SigmoidЭ
while/lstm_cell_65/Sigmoid_1Sigmoid!while/lstm_cell_65/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/Sigmoid_1°
while/lstm_cell_65/mulMul while/lstm_cell_65/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/mulЭ
while/lstm_cell_65/Sigmoid_2Sigmoid!while/lstm_cell_65/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/Sigmoid_2≥
while/lstm_cell_65/mul_1Mul!while/lstm_cell_65/split:output:2 while/lstm_cell_65/Sigmoid_2:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/mul_1Ч
while/lstm_cell_65/IdentityIdentitywhile/lstm_cell_65/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/IdentityД
while/lstm_cell_65/IdentityN	IdentityNwhile/lstm_cell_65/mul_1:z:0!while/lstm_cell_65/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1549746*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2
while/lstm_cell_65/IdentityNµ
while/lstm_cell_65/mul_2Mulwhile/lstm_cell_65/Sigmoid:y:0%while/lstm_cell_65/IdentityN:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/mul_2™
while/lstm_cell_65/add_1AddV2while/lstm_cell_65/mul:z:0while/lstm_cell_65/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/add_1Э
while/lstm_cell_65/Sigmoid_3Sigmoid!while/lstm_cell_65/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/Sigmoid_3Ш
while/lstm_cell_65/Sigmoid_4Sigmoidwhile/lstm_cell_65/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/Sigmoid_4Ѓ
while/lstm_cell_65/mul_3Mulwhile/lstm_cell_65/add_1:z:0 while/lstm_cell_65/Sigmoid_4:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/mul_3Ы
while/lstm_cell_65/Identity_1Identitywhile/lstm_cell_65/mul_3:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/Identity_1Г
while/lstm_cell_65/IdentityN_1	IdentityNwhile/lstm_cell_65/mul_3:z:0while/lstm_cell_65/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1549755*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2 
while/lstm_cell_65/IdentityN_1є
while/lstm_cell_65/mul_4Mul while/lstm_cell_65/Sigmoid_3:y:0'while/lstm_cell_65/IdentityN_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/mul_4а
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_65/mul_4:z:0*
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
while/add_1в
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityх
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1д
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2С
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Е
while/Identity_4Identitywhile/lstm_cell_65/mul_4:z:0*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_4Е
while/Identity_5Identitywhile/lstm_cell_65/add_1:z:0*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_65_biasadd_readvariableop_resource4while_lstm_cell_65_biasadd_readvariableop_resource_0"l
3while_lstm_cell_65_matmul_1_readvariableop_resource5while_lstm_cell_65_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_65_matmul_readvariableop_resource3while_lstm_cell_65_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2V
)while/lstm_cell_65/BiasAdd/ReadVariableOp)while/lstm_cell_65/BiasAdd/ReadVariableOp2T
(while/lstm_cell_65/MatMul/ReadVariableOp(while/lstm_cell_65/MatMul/ReadVariableOp2X
*while/lstm_cell_65/MatMul_1/ReadVariableOp*while/lstm_cell_65/MatMul_1/ReadVariableOp: 

_output_shapes
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
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
л"
К
I__inference_lstm_cell_65_layer_call_and_return_conditional_losses_1550848

inputs
states_0
states_11
matmul_readvariableop_resource:	А4
 matmul_1_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А

identity_2

identity_3

identity_4ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
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
:€€€€€€€€€А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim√
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:€€€€€€€€€А2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:€€€€€€€€€А2
muld
	Sigmoid_2Sigmoidsplit:output:2*
T0*(
_output_shapes
:€€€€€€€€€А2
	Sigmoid_2g
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
mul_1^
IdentityIdentity	mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2

IdentityЄ
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1550829*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2
	IdentityNi
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
mul_2^
add_1AddV2mul:z:0	mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
add_1d
	Sigmoid_3Sigmoidsplit:output:3*
T0*(
_output_shapes
:€€€€€€€€€А2
	Sigmoid_3_
	Sigmoid_4Sigmoid	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
	Sigmoid_4b
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
mul_3b

Identity_1Identity	mul_3:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_1Ј
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1550838*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2
IdentityN_1m
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
mul_4≠

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_2≠

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_3≠

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€А:€€€€€€€€€А: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states/0:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states/1
—"
К
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_1550966

inputs
states_0
states_12
matmul_readvariableop_resource:
АА3
 matmul_1_readvariableop_resource:	@А.
biasadd_readvariableop_resource:	А

identity_2

identity_3

identity_4ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€@2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€@2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€@2
	Sigmoid_2f
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
mul_1]
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2

Identityґ
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1550947*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
	IdentityNh
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
mul_2]
add_1AddV2mul:z:0	mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€@2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
	Sigmoid_4a
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
mul_3a

Identity_1Identity	mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity_1µ
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1550956*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
IdentityN_1l
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
mul_4ђ

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity_2ђ

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity_3ђ

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:€€€€€€€€€А:€€€€€€€€€@:€€€€€€€€€@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€@
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€@
"
_user_specified_name
states/1
Х
ш
.__inference_lstm_cell_65_layer_call_fn_1550907

inputs
states_0
states_1
unknown:	А
	unknown_0:
АА
	unknown_1:	А
identity

identity_1

identity_2ИҐStatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_lstm_cell_65_layer_call_and_return_conditional_losses_15457342
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

IdentityУ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_1У

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€А:€€€€€€€€€А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states/0:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states/1
ё
»
while_cond_1547315
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1547315___redundant_placeholder05
1while_while_cond_1547315___redundant_placeholder15
1while_while_cond_1547315___redundant_placeholder25
1while_while_cond_1547315___redundant_placeholder3
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
B: : : : :€€€€€€€€€А:€€€€€€€€€А: ::::: 

_output_shapes
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
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
ЁL
”
while_body_1547316
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_65_matmul_readvariableop_resource_0:	АI
5while_lstm_cell_65_matmul_1_readvariableop_resource_0:
ААC
4while_lstm_cell_65_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_65_matmul_readvariableop_resource:	АG
3while_lstm_cell_65_matmul_1_readvariableop_resource:
ААA
2while_lstm_cell_65_biasadd_readvariableop_resource:	АИҐ)while/lstm_cell_65/BiasAdd/ReadVariableOpҐ(while/lstm_cell_65/MatMul/ReadVariableOpҐ*while/lstm_cell_65/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem…
(while/lstm_cell_65/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_65_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02*
(while/lstm_cell_65/MatMul/ReadVariableOp„
while/lstm_cell_65/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/MatMul–
*while/lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_65_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02,
*while/lstm_cell_65/MatMul_1/ReadVariableOpј
while/lstm_cell_65/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/MatMul_1Є
while/lstm_cell_65/addAddV2#while/lstm_cell_65/MatMul:product:0%while/lstm_cell_65/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/add»
)while/lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_65_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02+
)while/lstm_cell_65/BiasAdd/ReadVariableOp≈
while/lstm_cell_65/BiasAddBiasAddwhile/lstm_cell_65/add:z:01while/lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/BiasAddК
"while/lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_65/split/split_dimП
while/lstm_cell_65/splitSplit+while/lstm_cell_65/split/split_dim:output:0#while/lstm_cell_65/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_split2
while/lstm_cell_65/splitЩ
while/lstm_cell_65/SigmoidSigmoid!while/lstm_cell_65/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/SigmoidЭ
while/lstm_cell_65/Sigmoid_1Sigmoid!while/lstm_cell_65/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/Sigmoid_1°
while/lstm_cell_65/mulMul while/lstm_cell_65/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/mulЭ
while/lstm_cell_65/Sigmoid_2Sigmoid!while/lstm_cell_65/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/Sigmoid_2≥
while/lstm_cell_65/mul_1Mul!while/lstm_cell_65/split:output:2 while/lstm_cell_65/Sigmoid_2:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/mul_1Ч
while/lstm_cell_65/IdentityIdentitywhile/lstm_cell_65/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/IdentityД
while/lstm_cell_65/IdentityN	IdentityNwhile/lstm_cell_65/mul_1:z:0!while/lstm_cell_65/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1547358*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2
while/lstm_cell_65/IdentityNµ
while/lstm_cell_65/mul_2Mulwhile/lstm_cell_65/Sigmoid:y:0%while/lstm_cell_65/IdentityN:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/mul_2™
while/lstm_cell_65/add_1AddV2while/lstm_cell_65/mul:z:0while/lstm_cell_65/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/add_1Э
while/lstm_cell_65/Sigmoid_3Sigmoid!while/lstm_cell_65/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/Sigmoid_3Ш
while/lstm_cell_65/Sigmoid_4Sigmoidwhile/lstm_cell_65/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/Sigmoid_4Ѓ
while/lstm_cell_65/mul_3Mulwhile/lstm_cell_65/add_1:z:0 while/lstm_cell_65/Sigmoid_4:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/mul_3Ы
while/lstm_cell_65/Identity_1Identitywhile/lstm_cell_65/mul_3:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/Identity_1Г
while/lstm_cell_65/IdentityN_1	IdentityNwhile/lstm_cell_65/mul_3:z:0while/lstm_cell_65/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1547367*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2 
while/lstm_cell_65/IdentityN_1є
while/lstm_cell_65/mul_4Mul while/lstm_cell_65/Sigmoid_3:y:0'while/lstm_cell_65/IdentityN_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/mul_4а
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_65/mul_4:z:0*
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
while/add_1в
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityх
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1д
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2С
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Е
while/Identity_4Identitywhile/lstm_cell_65/mul_4:z:0*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_4Е
while/Identity_5Identitywhile/lstm_cell_65/add_1:z:0*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_65_biasadd_readvariableop_resource4while_lstm_cell_65_biasadd_readvariableop_resource_0"l
3while_lstm_cell_65_matmul_1_readvariableop_resource5while_lstm_cell_65_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_65_matmul_readvariableop_resource3while_lstm_cell_65_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2V
)while/lstm_cell_65/BiasAdd/ReadVariableOp)while/lstm_cell_65/BiasAdd/ReadVariableOp2T
(while/lstm_cell_65/MatMul/ReadVariableOp(while/lstm_cell_65/MatMul/ReadVariableOp2X
*while/lstm_cell_65/MatMul_1/ReadVariableOp*while/lstm_cell_65/MatMul_1/ReadVariableOp: 

_output_shapes
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
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
≠

‘
lstm_2_while_cond_1548571*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3,
(lstm_2_while_less_lstm_2_strided_slice_1C
?lstm_2_while_lstm_2_while_cond_1548571___redundant_placeholder0C
?lstm_2_while_lstm_2_while_cond_1548571___redundant_placeholder1C
?lstm_2_while_lstm_2_while_cond_1548571___redundant_placeholder2C
?lstm_2_while_lstm_2_while_cond_1548571___redundant_placeholder3
lstm_2_while_identity
У
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
@: : : : :€€€€€€€€€@:€€€€€€€€€@: ::::: 

_output_shapes
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
:€€€€€€€€€@:-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
:
√L
”
while_body_1547494
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_66_matmul_readvariableop_resource_0:
ААH
5while_lstm_cell_66_matmul_1_readvariableop_resource_0:	@АC
4while_lstm_cell_66_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_66_matmul_readvariableop_resource:
ААF
3while_lstm_cell_66_matmul_1_readvariableop_resource:	@АA
2while_lstm_cell_66_biasadd_readvariableop_resource:	АИҐ)while/lstm_cell_66/BiasAdd/ReadVariableOpҐ(while/lstm_cell_66/MatMul/ReadVariableOpҐ*while/lstm_cell_66/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape‘
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem 
(while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_66_matmul_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02*
(while/lstm_cell_66/MatMul/ReadVariableOp„
while/lstm_cell_66/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_66/MatMulѕ
*while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_66_matmul_1_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02,
*while/lstm_cell_66/MatMul_1/ReadVariableOpј
while/lstm_cell_66/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_66/MatMul_1Є
while/lstm_cell_66/addAddV2#while/lstm_cell_66/MatMul:product:0%while/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_66/add»
)while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02+
)while/lstm_cell_66/BiasAdd/ReadVariableOp≈
while/lstm_cell_66/BiasAddBiasAddwhile/lstm_cell_66/add:z:01while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_66/BiasAddК
"while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_66/split/split_dimЛ
while/lstm_cell_66/splitSplit+while/lstm_cell_66/split/split_dim:output:0#while/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split2
while/lstm_cell_66/splitШ
while/lstm_cell_66/SigmoidSigmoid!while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/SigmoidЬ
while/lstm_cell_66/Sigmoid_1Sigmoid!while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/Sigmoid_1†
while/lstm_cell_66/mulMul while/lstm_cell_66/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/mulЬ
while/lstm_cell_66/Sigmoid_2Sigmoid!while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/Sigmoid_2≤
while/lstm_cell_66/mul_1Mul!while/lstm_cell_66/split:output:2 while/lstm_cell_66/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/mul_1Ц
while/lstm_cell_66/IdentityIdentitywhile/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/IdentityВ
while/lstm_cell_66/IdentityN	IdentityNwhile/lstm_cell_66/mul_1:z:0!while/lstm_cell_66/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1547536*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
while/lstm_cell_66/IdentityNі
while/lstm_cell_66/mul_2Mulwhile/lstm_cell_66/Sigmoid:y:0%while/lstm_cell_66/IdentityN:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/mul_2©
while/lstm_cell_66/add_1AddV2while/lstm_cell_66/mul:z:0while/lstm_cell_66/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/add_1Ь
while/lstm_cell_66/Sigmoid_3Sigmoid!while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/Sigmoid_3Ч
while/lstm_cell_66/Sigmoid_4Sigmoidwhile/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/Sigmoid_4≠
while/lstm_cell_66/mul_3Mulwhile/lstm_cell_66/add_1:z:0 while/lstm_cell_66/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/mul_3Ъ
while/lstm_cell_66/Identity_1Identitywhile/lstm_cell_66/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/Identity_1Б
while/lstm_cell_66/IdentityN_1	IdentityNwhile/lstm_cell_66/mul_3:z:0while/lstm_cell_66/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1547545*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2 
while/lstm_cell_66/IdentityN_1Є
while/lstm_cell_66/mul_4Mul while/lstm_cell_66/Sigmoid_3:y:0'while/lstm_cell_66/IdentityN_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/mul_4а
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_66/mul_4:z:0*
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
while/add_1в
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityх
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1д
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2С
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Д
while/Identity_4Identitywhile/lstm_cell_66/mul_4:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2
while/Identity_4Д
while/Identity_5Identitywhile/lstm_cell_66/add_1:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_66_biasadd_readvariableop_resource4while_lstm_cell_66_biasadd_readvariableop_resource_0"l
3while_lstm_cell_66_matmul_1_readvariableop_resource5while_lstm_cell_66_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_66_matmul_readvariableop_resource3while_lstm_cell_66_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€@:€€€€€€€€€@: : : : : 2V
)while/lstm_cell_66/BiasAdd/ReadVariableOp)while/lstm_cell_66/BiasAdd/ReadVariableOp2T
(while/lstm_cell_66/MatMul/ReadVariableOp(while/lstm_cell_66/MatMul/ReadVariableOp2X
*while/lstm_cell_66/MatMul_1/ReadVariableOp*while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
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
:€€€€€€€€€@:-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
: 
Џ
»
while_cond_1549918
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1549918___redundant_placeholder05
1while_while_cond_1549918___redundant_placeholder15
1while_while_cond_1549918___redundant_placeholder25
1while_while_cond_1549918___redundant_placeholder3
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
@: : : : :€€€€€€€€€@:€€€€€€€€€@: ::::: 

_output_shapes
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
:€€€€€€€€€@:-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
:
Џ
»
while_cond_1550431
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1550431___redundant_placeholder05
1while_while_cond_1550431___redundant_placeholder15
1while_while_cond_1550431___redundant_placeholder25
1while_while_cond_1550431___redundant_placeholder3
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
@: : : : :€€€€€€€€€@:€€€€€€€€€@: ::::: 

_output_shapes
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
:€€€€€€€€€@:-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
:
ЁL
”
while_body_1548021
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_65_matmul_readvariableop_resource_0:	АI
5while_lstm_cell_65_matmul_1_readvariableop_resource_0:
ААC
4while_lstm_cell_65_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_65_matmul_readvariableop_resource:	АG
3while_lstm_cell_65_matmul_1_readvariableop_resource:
ААA
2while_lstm_cell_65_biasadd_readvariableop_resource:	АИҐ)while/lstm_cell_65/BiasAdd/ReadVariableOpҐ(while/lstm_cell_65/MatMul/ReadVariableOpҐ*while/lstm_cell_65/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem…
(while/lstm_cell_65/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_65_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02*
(while/lstm_cell_65/MatMul/ReadVariableOp„
while/lstm_cell_65/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/MatMul–
*while/lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_65_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02,
*while/lstm_cell_65/MatMul_1/ReadVariableOpј
while/lstm_cell_65/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/MatMul_1Є
while/lstm_cell_65/addAddV2#while/lstm_cell_65/MatMul:product:0%while/lstm_cell_65/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/add»
)while/lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_65_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02+
)while/lstm_cell_65/BiasAdd/ReadVariableOp≈
while/lstm_cell_65/BiasAddBiasAddwhile/lstm_cell_65/add:z:01while/lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/BiasAddК
"while/lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_65/split/split_dimП
while/lstm_cell_65/splitSplit+while/lstm_cell_65/split/split_dim:output:0#while/lstm_cell_65/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_split2
while/lstm_cell_65/splitЩ
while/lstm_cell_65/SigmoidSigmoid!while/lstm_cell_65/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/SigmoidЭ
while/lstm_cell_65/Sigmoid_1Sigmoid!while/lstm_cell_65/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/Sigmoid_1°
while/lstm_cell_65/mulMul while/lstm_cell_65/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/mulЭ
while/lstm_cell_65/Sigmoid_2Sigmoid!while/lstm_cell_65/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/Sigmoid_2≥
while/lstm_cell_65/mul_1Mul!while/lstm_cell_65/split:output:2 while/lstm_cell_65/Sigmoid_2:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/mul_1Ч
while/lstm_cell_65/IdentityIdentitywhile/lstm_cell_65/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/IdentityД
while/lstm_cell_65/IdentityN	IdentityNwhile/lstm_cell_65/mul_1:z:0!while/lstm_cell_65/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1548063*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2
while/lstm_cell_65/IdentityNµ
while/lstm_cell_65/mul_2Mulwhile/lstm_cell_65/Sigmoid:y:0%while/lstm_cell_65/IdentityN:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/mul_2™
while/lstm_cell_65/add_1AddV2while/lstm_cell_65/mul:z:0while/lstm_cell_65/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/add_1Э
while/lstm_cell_65/Sigmoid_3Sigmoid!while/lstm_cell_65/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/Sigmoid_3Ш
while/lstm_cell_65/Sigmoid_4Sigmoidwhile/lstm_cell_65/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/Sigmoid_4Ѓ
while/lstm_cell_65/mul_3Mulwhile/lstm_cell_65/add_1:z:0 while/lstm_cell_65/Sigmoid_4:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/mul_3Ы
while/lstm_cell_65/Identity_1Identitywhile/lstm_cell_65/mul_3:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/Identity_1Г
while/lstm_cell_65/IdentityN_1	IdentityNwhile/lstm_cell_65/mul_3:z:0while/lstm_cell_65/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1548072*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2 
while/lstm_cell_65/IdentityN_1є
while/lstm_cell_65/mul_4Mul while/lstm_cell_65/Sigmoid_3:y:0'while/lstm_cell_65/IdentityN_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/mul_4а
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_65/mul_4:z:0*
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
while/add_1в
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityх
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1д
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2С
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Е
while/Identity_4Identitywhile/lstm_cell_65/mul_4:z:0*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_4Е
while/Identity_5Identitywhile/lstm_cell_65/add_1:z:0*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_65_biasadd_readvariableop_resource4while_lstm_cell_65_biasadd_readvariableop_resource_0"l
3while_lstm_cell_65_matmul_1_readvariableop_resource5while_lstm_cell_65_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_65_matmul_readvariableop_resource3while_lstm_cell_65_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2V
)while/lstm_cell_65/BiasAdd/ReadVariableOp)while/lstm_cell_65/BiasAdd/ReadVariableOp2T
(while/lstm_cell_65/MatMul/ReadVariableOp(while/lstm_cell_65/MatMul/ReadVariableOp2X
*while/lstm_cell_65/MatMul_1/ReadVariableOp*while/lstm_cell_65/MatMul_1/ReadVariableOp: 

_output_shapes
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
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
Е
Є
(__inference_lstm_2_layer_call_fn_1550548
inputs_0
unknown:
АА
	unknown_0:	@А
	unknown_1:	А
identityИҐStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_2_layer_call_and_return_conditional_losses_15466872
StatefulPartitionedCallЫ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€€€€€€€€€€А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
"
_user_specified_name
inputs/0
љ
Я
2__inference_time_distributed_layer_call_fn_1550700

inputs
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_layer_call_and_return_conditional_losses_15477312
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Х
ш
.__inference_lstm_cell_65_layer_call_fn_1550924

inputs
states_0
states_1
unknown:	А
	unknown_0:
АА
	unknown_1:	А
identity

identity_1

identity_2ИҐStatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_lstm_cell_65_layer_call_and_return_conditional_losses_15458902
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

IdentityУ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_1У

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€А:€€€€€€€€€А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states/0:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states/1
√L
”
while_body_1550090
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_66_matmul_readvariableop_resource_0:
ААH
5while_lstm_cell_66_matmul_1_readvariableop_resource_0:	@АC
4while_lstm_cell_66_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_66_matmul_readvariableop_resource:
ААF
3while_lstm_cell_66_matmul_1_readvariableop_resource:	@АA
2while_lstm_cell_66_biasadd_readvariableop_resource:	АИҐ)while/lstm_cell_66/BiasAdd/ReadVariableOpҐ(while/lstm_cell_66/MatMul/ReadVariableOpҐ*while/lstm_cell_66/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape‘
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem 
(while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_66_matmul_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02*
(while/lstm_cell_66/MatMul/ReadVariableOp„
while/lstm_cell_66/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_66/MatMulѕ
*while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_66_matmul_1_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02,
*while/lstm_cell_66/MatMul_1/ReadVariableOpј
while/lstm_cell_66/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_66/MatMul_1Є
while/lstm_cell_66/addAddV2#while/lstm_cell_66/MatMul:product:0%while/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_66/add»
)while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02+
)while/lstm_cell_66/BiasAdd/ReadVariableOp≈
while/lstm_cell_66/BiasAddBiasAddwhile/lstm_cell_66/add:z:01while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_66/BiasAddК
"while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_66/split/split_dimЛ
while/lstm_cell_66/splitSplit+while/lstm_cell_66/split/split_dim:output:0#while/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split2
while/lstm_cell_66/splitШ
while/lstm_cell_66/SigmoidSigmoid!while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/SigmoidЬ
while/lstm_cell_66/Sigmoid_1Sigmoid!while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/Sigmoid_1†
while/lstm_cell_66/mulMul while/lstm_cell_66/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/mulЬ
while/lstm_cell_66/Sigmoid_2Sigmoid!while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/Sigmoid_2≤
while/lstm_cell_66/mul_1Mul!while/lstm_cell_66/split:output:2 while/lstm_cell_66/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/mul_1Ц
while/lstm_cell_66/IdentityIdentitywhile/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/IdentityВ
while/lstm_cell_66/IdentityN	IdentityNwhile/lstm_cell_66/mul_1:z:0!while/lstm_cell_66/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1550132*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
while/lstm_cell_66/IdentityNі
while/lstm_cell_66/mul_2Mulwhile/lstm_cell_66/Sigmoid:y:0%while/lstm_cell_66/IdentityN:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/mul_2©
while/lstm_cell_66/add_1AddV2while/lstm_cell_66/mul:z:0while/lstm_cell_66/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/add_1Ь
while/lstm_cell_66/Sigmoid_3Sigmoid!while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/Sigmoid_3Ч
while/lstm_cell_66/Sigmoid_4Sigmoidwhile/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/Sigmoid_4≠
while/lstm_cell_66/mul_3Mulwhile/lstm_cell_66/add_1:z:0 while/lstm_cell_66/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/mul_3Ъ
while/lstm_cell_66/Identity_1Identitywhile/lstm_cell_66/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/Identity_1Б
while/lstm_cell_66/IdentityN_1	IdentityNwhile/lstm_cell_66/mul_3:z:0while/lstm_cell_66/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1550141*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2 
while/lstm_cell_66/IdentityN_1Є
while/lstm_cell_66/mul_4Mul while/lstm_cell_66/Sigmoid_3:y:0'while/lstm_cell_66/IdentityN_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/mul_4а
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_66/mul_4:z:0*
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
while/add_1в
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityх
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1д
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2С
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Д
while/Identity_4Identitywhile/lstm_cell_66/mul_4:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2
while/Identity_4Д
while/Identity_5Identitywhile/lstm_cell_66/add_1:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_66_biasadd_readvariableop_resource4while_lstm_cell_66_biasadd_readvariableop_resource_0"l
3while_lstm_cell_66_matmul_1_readvariableop_resource5while_lstm_cell_66_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_66_matmul_readvariableop_resource3while_lstm_cell_66_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€@:€€€€€€€€€@: : : : : 2V
)while/lstm_cell_66/BiasAdd/ReadVariableOp)while/lstm_cell_66/BiasAdd/ReadVariableOp2T
(while/lstm_cell_66/MatMul/ReadVariableOp(while/lstm_cell_66/MatMul/ReadVariableOp2X
*while/lstm_cell_66/MatMul_1/ReadVariableOp*while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
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
:€€€€€€€€€@:-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
: 
–	
х
D__inference_dense_3_layer_call_and_return_conditional_losses_1547118

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
џ
ґ
(__inference_lstm_1_layer_call_fn_1549831

inputs
unknown:	А
	unknown_0:
АА
	unknown_1:	А
identityИҐStatefulPartitionedCallЕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_1_layer_call_and_return_conditional_losses_15474102
StatefulPartitionedCallУ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ћc
Ь
C__inference_lstm_1_layer_call_and_return_conditional_losses_1547410

inputs>
+lstm_cell_65_matmul_readvariableop_resource:	АA
-lstm_cell_65_matmul_1_readvariableop_resource:
АА;
,lstm_cell_65_biasadd_readvariableop_resource:	А
identityИҐ#lstm_cell_65/BiasAdd/ReadVariableOpҐ"lstm_cell_65/MatMul/ReadVariableOpҐ$lstm_cell_65/MatMul_1/ReadVariableOpҐwhileD
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
strided_slice/stack_2в
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
B :и2
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
:€€€€€€€€€А2
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
B :и2
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
:€€€€€€€€€А2	
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
:€€€€€€€€€2
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
strided_slice_1/stack_2о
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
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2µ
"lstm_cell_65/MatMul/ReadVariableOpReadVariableOp+lstm_cell_65_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02$
"lstm_cell_65/MatMul/ReadVariableOp≠
lstm_cell_65/MatMulMatMulstrided_slice_2:output:0*lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/MatMulЉ
$lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_65_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02&
$lstm_cell_65/MatMul_1/ReadVariableOp©
lstm_cell_65/MatMul_1MatMulzeros:output:0,lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/MatMul_1†
lstm_cell_65/addAddV2lstm_cell_65/MatMul:product:0lstm_cell_65/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/addі
#lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_65_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#lstm_cell_65/BiasAdd/ReadVariableOp≠
lstm_cell_65/BiasAddBiasAddlstm_cell_65/add:z:0+lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/BiasAdd~
lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_65/split/split_dimч
lstm_cell_65/splitSplit%lstm_cell_65/split/split_dim:output:0lstm_cell_65/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_split2
lstm_cell_65/splitЗ
lstm_cell_65/SigmoidSigmoidlstm_cell_65/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/SigmoidЛ
lstm_cell_65/Sigmoid_1Sigmoidlstm_cell_65/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Sigmoid_1М
lstm_cell_65/mulMullstm_cell_65/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/mulЛ
lstm_cell_65/Sigmoid_2Sigmoidlstm_cell_65/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Sigmoid_2Ы
lstm_cell_65/mul_1Mullstm_cell_65/split:output:2lstm_cell_65/Sigmoid_2:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/mul_1Е
lstm_cell_65/IdentityIdentitylstm_cell_65/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Identityм
lstm_cell_65/IdentityN	IdentityNlstm_cell_65/mul_1:z:0lstm_cell_65/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1547296*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2
lstm_cell_65/IdentityNЭ
lstm_cell_65/mul_2Mullstm_cell_65/Sigmoid:y:0lstm_cell_65/IdentityN:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/mul_2Т
lstm_cell_65/add_1AddV2lstm_cell_65/mul:z:0lstm_cell_65/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/add_1Л
lstm_cell_65/Sigmoid_3Sigmoidlstm_cell_65/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Sigmoid_3Ж
lstm_cell_65/Sigmoid_4Sigmoidlstm_cell_65/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Sigmoid_4Ц
lstm_cell_65/mul_3Mullstm_cell_65/add_1:z:0lstm_cell_65/Sigmoid_4:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/mul_3Й
lstm_cell_65/Identity_1Identitylstm_cell_65/mul_3:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Identity_1л
lstm_cell_65/IdentityN_1	IdentityNlstm_cell_65/mul_3:z:0lstm_cell_65/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1547305*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2
lstm_cell_65/IdentityN_1°
lstm_cell_65/mul_4Mullstm_cell_65/Sigmoid_3:y:0!lstm_cell_65/IdentityN_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/mul_4П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterф
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_65_matmul_readvariableop_resource-lstm_cell_65_matmul_1_readvariableop_resource,lstm_cell_65_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1547316*
condR
while_cond_1547315*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   22
0TensorArrayV2Stack/TensorListStack/element_shapeй
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¶
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeв
IdentityIdentitytranspose_1:y:0$^lstm_cell_65/BiasAdd/ReadVariableOp#^lstm_cell_65/MatMul/ReadVariableOp%^lstm_cell_65/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2J
#lstm_cell_65/BiasAdd/ReadVariableOp#lstm_cell_65/BiasAdd/ReadVariableOp2H
"lstm_cell_65/MatMul/ReadVariableOp"lstm_cell_65/MatMul/ReadVariableOp2L
$lstm_cell_65/MatMul_1/ReadVariableOp$lstm_cell_65/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
е
°
4__inference_time_distributed_1_layer_call_fn_1550788

inputs
unknown:@
	unknown_0:
identityИҐStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_15471772
StatefulPartitionedCallЫ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
г
Ю
M__inference_time_distributed_layer_call_and_return_conditional_losses_1550664

inputs8
&dense_2_matmul_readvariableop_resource:@@5
'dense_2_biasadd_readvariableop_resource:@
identityИҐdense_2/BiasAdd/ReadVariableOpҐdense_2/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
Reshape•
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_2/MatMul/ReadVariableOpХ
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_2/MatMul§
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_2/BiasAdd/ReadVariableOp°
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_2/BiasAddy
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_2/SigmoidВ
dense_2/mulMuldense_2/BiasAdd:output:0dense_2/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_2/muls
dense_2/IdentityIdentitydense_2/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_2/Identity÷
dense_2/IdentityN	IdentityNdense_2/mul:z:0dense_2/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1550655*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
dense_2/IdentityNw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€   @   2
Reshape_1/shapeН
	Reshape_1Reshapedense_2/IdentityN:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€@2
	Reshape_1Ђ
IdentityIdentityReshape_1:output:0^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ё
†
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_1550742

inputs8
&dense_3_matmul_readvariableop_resource:@5
'dense_3_biasadd_readvariableop_resource:
identityИҐdense_3/BiasAdd/ReadVariableOpҐdense_3/MatMul/ReadVariableOpD
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
strided_slice/stack_2в
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
valueB"€€€€@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
Reshape•
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_3/MatMul/ReadVariableOpХ
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_3/MatMul§
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp°
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_3/BiasAddq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2®
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shapeФ
	Reshape_1Reshapedense_3/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
	Reshape_1і
IdentityIdentityReshape_1:output:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€@: : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
мc
Ю
C__inference_lstm_2_layer_call_and_return_conditional_losses_1550184
inputs_0?
+lstm_cell_66_matmul_readvariableop_resource:
АА@
-lstm_cell_66_matmul_1_readvariableop_resource:	@А;
,lstm_cell_66_biasadd_readvariableop_resource:	А
identityИҐ#lstm_cell_66/BiasAdd/ReadVariableOpҐ"lstm_cell_66/MatMul/ReadVariableOpҐ$lstm_cell_66/MatMul_1/ReadVariableOpҐwhileF
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
strided_slice/stack_2в
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
B :и2
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
:€€€€€€€€€@2
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
B :и2
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
:€€€€€€€€€@2	
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
!:€€€€€€€€€€€€€€€€€€А2
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
strided_slice_1/stack_2о
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
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2э
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_2ґ
"lstm_cell_66/MatMul/ReadVariableOpReadVariableOp+lstm_cell_66_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02$
"lstm_cell_66/MatMul/ReadVariableOp≠
lstm_cell_66/MatMulMatMulstrided_slice_2:output:0*lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_66/MatMulї
$lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_66_matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02&
$lstm_cell_66/MatMul_1/ReadVariableOp©
lstm_cell_66/MatMul_1MatMulzeros:output:0,lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_66/MatMul_1†
lstm_cell_66/addAddV2lstm_cell_66/MatMul:product:0lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_66/addі
#lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#lstm_cell_66/BiasAdd/ReadVariableOp≠
lstm_cell_66/BiasAddBiasAddlstm_cell_66/add:z:0+lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_66/BiasAdd~
lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_66/split/split_dimу
lstm_cell_66/splitSplit%lstm_cell_66/split/split_dim:output:0lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split2
lstm_cell_66/splitЖ
lstm_cell_66/SigmoidSigmoidlstm_cell_66/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/SigmoidК
lstm_cell_66/Sigmoid_1Sigmoidlstm_cell_66/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Sigmoid_1Л
lstm_cell_66/mulMullstm_cell_66/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/mulК
lstm_cell_66/Sigmoid_2Sigmoidlstm_cell_66/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Sigmoid_2Ъ
lstm_cell_66/mul_1Mullstm_cell_66/split:output:2lstm_cell_66/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/mul_1Д
lstm_cell_66/IdentityIdentitylstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Identityк
lstm_cell_66/IdentityN	IdentityNlstm_cell_66/mul_1:z:0lstm_cell_66/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1550070*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
lstm_cell_66/IdentityNЬ
lstm_cell_66/mul_2Mullstm_cell_66/Sigmoid:y:0lstm_cell_66/IdentityN:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/mul_2С
lstm_cell_66/add_1AddV2lstm_cell_66/mul:z:0lstm_cell_66/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/add_1К
lstm_cell_66/Sigmoid_3Sigmoidlstm_cell_66/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Sigmoid_3Е
lstm_cell_66/Sigmoid_4Sigmoidlstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Sigmoid_4Х
lstm_cell_66/mul_3Mullstm_cell_66/add_1:z:0lstm_cell_66/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/mul_3И
lstm_cell_66/Identity_1Identitylstm_cell_66/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Identity_1й
lstm_cell_66/IdentityN_1	IdentityNlstm_cell_66/mul_3:z:0lstm_cell_66/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1550079*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
lstm_cell_66/IdentityN_1†
lstm_cell_66/mul_4Mullstm_cell_66/Sigmoid_3:y:0!lstm_cell_66/IdentityN_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/mul_4П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterр
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_66_matmul_readvariableop_resource-lstm_cell_66_matmul_1_readvariableop_resource,lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€@:€€€€€€€€€@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1550090*
condR
while_cond_1550089*K
output_shapes:
8: : : : :€€€€€€€€€@:€€€€€€€€€@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
:€€€€€€€€€@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeк
IdentityIdentitytranspose_1:y:0$^lstm_cell_66/BiasAdd/ReadVariableOp#^lstm_cell_66/MatMul/ReadVariableOp%^lstm_cell_66/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€€€€€€€€€€А: : : 2J
#lstm_cell_66/BiasAdd/ReadVariableOp#lstm_cell_66/BiasAdd/ReadVariableOp2H
"lstm_cell_66/MatMul/ReadVariableOp"lstm_cell_66/MatMul/ReadVariableOp2L
$lstm_cell_66/MatMul_1/ReadVariableOp$lstm_cell_66/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
"
_user_specified_name
inputs/0
…"
И
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_1546540

inputs

states
states_12
matmul_readvariableop_resource:
АА3
 matmul_1_readvariableop_resource:	@А.
biasadd_readvariableop_resource:	А

identity_2

identity_3

identity_4ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€@2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€@2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€@2
	Sigmoid_2f
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
mul_1]
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2

Identityґ
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1546521*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
	IdentityNh
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
mul_2]
add_1AddV2mul:z:0	mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€@2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
	Sigmoid_4a
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
mul_3a

Identity_1Identity	mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity_1µ
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1546530*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
IdentityN_1l
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
mul_4ђ

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity_2ђ

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity_3ђ

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:€€€€€€€€€А:€€€€€€€€€@:€€€€€€€€€@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_namestates
≠&
м
while_body_1545968
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_65_1545992_0:	А0
while_lstm_cell_65_1545994_0:
АА+
while_lstm_cell_65_1545996_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_65_1545992:	А.
while_lstm_cell_65_1545994:
АА)
while_lstm_cell_65_1545996:	АИҐ*while/lstm_cell_65/StatefulPartitionedCall√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemи
*while/lstm_cell_65/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_65_1545992_0while_lstm_cell_65_1545994_0while_lstm_cell_65_1545996_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_lstm_cell_65_layer_call_and_return_conditional_losses_15458902,
*while/lstm_cell_65/StatefulPartitionedCallч
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_65/StatefulPartitionedCall:output:0*
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
while/add_1Л
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_65/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/IdentityЮ
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_65/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Н
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_65/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2Ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_65/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3≈
while/Identity_4Identity3while/lstm_cell_65/StatefulPartitionedCall:output:1+^while/lstm_cell_65/StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_4≈
while/Identity_5Identity3while/lstm_cell_65/StatefulPartitionedCall:output:2+^while/lstm_cell_65/StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_65_1545992while_lstm_cell_65_1545992_0":
while_lstm_cell_65_1545994while_lstm_cell_65_1545994_0":
while_lstm_cell_65_1545996while_lstm_cell_65_1545996_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2X
*while/lstm_cell_65/StatefulPartitionedCall*while/lstm_cell_65/StatefulPartitionedCall: 

_output_shapes
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
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
√L
”
while_body_1550432
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_66_matmul_readvariableop_resource_0:
ААH
5while_lstm_cell_66_matmul_1_readvariableop_resource_0:	@АC
4while_lstm_cell_66_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_66_matmul_readvariableop_resource:
ААF
3while_lstm_cell_66_matmul_1_readvariableop_resource:	@АA
2while_lstm_cell_66_biasadd_readvariableop_resource:	АИҐ)while/lstm_cell_66/BiasAdd/ReadVariableOpҐ(while/lstm_cell_66/MatMul/ReadVariableOpҐ*while/lstm_cell_66/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape‘
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem 
(while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_66_matmul_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02*
(while/lstm_cell_66/MatMul/ReadVariableOp„
while/lstm_cell_66/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_66/MatMulѕ
*while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_66_matmul_1_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02,
*while/lstm_cell_66/MatMul_1/ReadVariableOpј
while/lstm_cell_66/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_66/MatMul_1Є
while/lstm_cell_66/addAddV2#while/lstm_cell_66/MatMul:product:0%while/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_66/add»
)while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02+
)while/lstm_cell_66/BiasAdd/ReadVariableOp≈
while/lstm_cell_66/BiasAddBiasAddwhile/lstm_cell_66/add:z:01while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_66/BiasAddК
"while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_66/split/split_dimЛ
while/lstm_cell_66/splitSplit+while/lstm_cell_66/split/split_dim:output:0#while/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split2
while/lstm_cell_66/splitШ
while/lstm_cell_66/SigmoidSigmoid!while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/SigmoidЬ
while/lstm_cell_66/Sigmoid_1Sigmoid!while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/Sigmoid_1†
while/lstm_cell_66/mulMul while/lstm_cell_66/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/mulЬ
while/lstm_cell_66/Sigmoid_2Sigmoid!while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/Sigmoid_2≤
while/lstm_cell_66/mul_1Mul!while/lstm_cell_66/split:output:2 while/lstm_cell_66/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/mul_1Ц
while/lstm_cell_66/IdentityIdentitywhile/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/IdentityВ
while/lstm_cell_66/IdentityN	IdentityNwhile/lstm_cell_66/mul_1:z:0!while/lstm_cell_66/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1550474*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
while/lstm_cell_66/IdentityNі
while/lstm_cell_66/mul_2Mulwhile/lstm_cell_66/Sigmoid:y:0%while/lstm_cell_66/IdentityN:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/mul_2©
while/lstm_cell_66/add_1AddV2while/lstm_cell_66/mul:z:0while/lstm_cell_66/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/add_1Ь
while/lstm_cell_66/Sigmoid_3Sigmoid!while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/Sigmoid_3Ч
while/lstm_cell_66/Sigmoid_4Sigmoidwhile/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/Sigmoid_4≠
while/lstm_cell_66/mul_3Mulwhile/lstm_cell_66/add_1:z:0 while/lstm_cell_66/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/mul_3Ъ
while/lstm_cell_66/Identity_1Identitywhile/lstm_cell_66/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/Identity_1Б
while/lstm_cell_66/IdentityN_1	IdentityNwhile/lstm_cell_66/mul_3:z:0while/lstm_cell_66/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1550483*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2 
while/lstm_cell_66/IdentityN_1Є
while/lstm_cell_66/mul_4Mul while/lstm_cell_66/Sigmoid_3:y:0'while/lstm_cell_66/IdentityN_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/mul_4а
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_66/mul_4:z:0*
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
while/add_1в
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityх
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1д
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2С
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Д
while/Identity_4Identitywhile/lstm_cell_66/mul_4:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2
while/Identity_4Д
while/Identity_5Identitywhile/lstm_cell_66/add_1:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_66_biasadd_readvariableop_resource4while_lstm_cell_66_biasadd_readvariableop_resource_0"l
3while_lstm_cell_66_matmul_1_readvariableop_resource5while_lstm_cell_66_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_66_matmul_readvariableop_resource3while_lstm_cell_66_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€@:€€€€€€€€€@: : : : : 2V
)while/lstm_cell_66/BiasAdd/ReadVariableOp)while/lstm_cell_66/BiasAdd/ReadVariableOp2T
(while/lstm_cell_66/MatMul/ReadVariableOp(while/lstm_cell_66/MatMul/ReadVariableOp2X
*while/lstm_cell_66/MatMul_1/ReadVariableOp*while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
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
:€€€€€€€€€@:-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
: 
≠c
Ь
C__inference_lstm_2_layer_call_and_return_conditional_losses_1550526

inputs?
+lstm_cell_66_matmul_readvariableop_resource:
АА@
-lstm_cell_66_matmul_1_readvariableop_resource:	@А;
,lstm_cell_66_biasadd_readvariableop_resource:	А
identityИҐ#lstm_cell_66/BiasAdd/ReadVariableOpҐ"lstm_cell_66/MatMul/ReadVariableOpҐ$lstm_cell_66/MatMul_1/ReadVariableOpҐwhileD
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
strided_slice/stack_2в
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
B :и2
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
:€€€€€€€€€@2
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
B :и2
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
:€€€€€€€€€@2	
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
:€€€€€€€€€А2
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
strided_slice_1/stack_2о
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
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2э
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_2ґ
"lstm_cell_66/MatMul/ReadVariableOpReadVariableOp+lstm_cell_66_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02$
"lstm_cell_66/MatMul/ReadVariableOp≠
lstm_cell_66/MatMulMatMulstrided_slice_2:output:0*lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_66/MatMulї
$lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_66_matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02&
$lstm_cell_66/MatMul_1/ReadVariableOp©
lstm_cell_66/MatMul_1MatMulzeros:output:0,lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_66/MatMul_1†
lstm_cell_66/addAddV2lstm_cell_66/MatMul:product:0lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_66/addі
#lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#lstm_cell_66/BiasAdd/ReadVariableOp≠
lstm_cell_66/BiasAddBiasAddlstm_cell_66/add:z:0+lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_66/BiasAdd~
lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_66/split/split_dimу
lstm_cell_66/splitSplit%lstm_cell_66/split/split_dim:output:0lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split2
lstm_cell_66/splitЖ
lstm_cell_66/SigmoidSigmoidlstm_cell_66/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/SigmoidК
lstm_cell_66/Sigmoid_1Sigmoidlstm_cell_66/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Sigmoid_1Л
lstm_cell_66/mulMullstm_cell_66/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/mulК
lstm_cell_66/Sigmoid_2Sigmoidlstm_cell_66/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Sigmoid_2Ъ
lstm_cell_66/mul_1Mullstm_cell_66/split:output:2lstm_cell_66/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/mul_1Д
lstm_cell_66/IdentityIdentitylstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Identityк
lstm_cell_66/IdentityN	IdentityNlstm_cell_66/mul_1:z:0lstm_cell_66/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1550412*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
lstm_cell_66/IdentityNЬ
lstm_cell_66/mul_2Mullstm_cell_66/Sigmoid:y:0lstm_cell_66/IdentityN:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/mul_2С
lstm_cell_66/add_1AddV2lstm_cell_66/mul:z:0lstm_cell_66/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/add_1К
lstm_cell_66/Sigmoid_3Sigmoidlstm_cell_66/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Sigmoid_3Е
lstm_cell_66/Sigmoid_4Sigmoidlstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Sigmoid_4Х
lstm_cell_66/mul_3Mullstm_cell_66/add_1:z:0lstm_cell_66/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/mul_3И
lstm_cell_66/Identity_1Identitylstm_cell_66/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Identity_1й
lstm_cell_66/IdentityN_1	IdentityNlstm_cell_66/mul_3:z:0lstm_cell_66/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1550421*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
lstm_cell_66/IdentityN_1†
lstm_cell_66/mul_4Mullstm_cell_66/Sigmoid_3:y:0!lstm_cell_66/IdentityN_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/mul_4П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterр
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_66_matmul_readvariableop_resource-lstm_cell_66_matmul_1_readvariableop_resource,lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€@:€€€€€€€€€@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1550432*
condR
while_cond_1550431*K
output_shapes:
8: : : : :€€€€€€€€€@:€€€€€€€€€@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€@*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
:€€€€€€€€€@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeб
IdentityIdentitytranspose_1:y:0$^lstm_cell_66/BiasAdd/ReadVariableOp#^lstm_cell_66/MatMul/ReadVariableOp%^lstm_cell_66/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:€€€€€€€€€А: : : 2J
#lstm_cell_66/BiasAdd/ReadVariableOp#lstm_cell_66/BiasAdd/ReadVariableOp2H
"lstm_cell_66/MatMul/ReadVariableOp"lstm_cell_66/MatMul/ReadVariableOp2L
$lstm_cell_66/MatMul_1/ReadVariableOp$lstm_cell_66/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Х
†
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_1550756

inputs8
&dense_3_matmul_readvariableop_resource:@5
'dense_3_biasadd_readvariableop_resource:
identityИҐdense_3/BiasAdd/ReadVariableOpҐdense_3/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
Reshape•
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_3/MatMul/ReadVariableOpХ
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_3/MatMul§
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp°
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_3/BiasAddw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€      2
Reshape_1/shapeЛ
	Reshape_1Reshapedense_3/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
	Reshape_1Ђ
IdentityIdentityReshape_1:output:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
‘
–
M__inference_time_distributed_layer_call_and_return_conditional_losses_1547038

inputs!
dense_2_1547028:@@
dense_2_1547030:@
identityИҐdense_2/StatefulPartitionedCallD
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
strided_slice/stack_2в
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
valueB"€€€€@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
ReshapeЬ
dense_2/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_2_1547028dense_2_1547030*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_15469792!
dense_2/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2
Reshape_1/shape/2®
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape§
	Reshape_1Reshape(dense_2/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2
	Reshape_1Х
IdentityIdentityReshape_1:output:0 ^dense_2/StatefulPartitionedCall*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€@: : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
Х
†
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_1550770

inputs8
&dense_3_matmul_readvariableop_resource:@5
'dense_3_biasadd_readvariableop_resource:
identityИҐdense_3/BiasAdd/ReadVariableOpҐdense_3/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
Reshape•
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_3/MatMul/ReadVariableOpХ
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_3/MatMul§
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp°
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_3/BiasAddw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€      2
Reshape_1/shapeЛ
	Reshape_1Reshapedense_3/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
	Reshape_1Ђ
IdentityIdentityReshape_1:output:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
√L
”
while_body_1550261
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_66_matmul_readvariableop_resource_0:
ААH
5while_lstm_cell_66_matmul_1_readvariableop_resource_0:	@АC
4while_lstm_cell_66_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_66_matmul_readvariableop_resource:
ААF
3while_lstm_cell_66_matmul_1_readvariableop_resource:	@АA
2while_lstm_cell_66_biasadd_readvariableop_resource:	АИҐ)while/lstm_cell_66/BiasAdd/ReadVariableOpҐ(while/lstm_cell_66/MatMul/ReadVariableOpҐ*while/lstm_cell_66/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape‘
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem 
(while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_66_matmul_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02*
(while/lstm_cell_66/MatMul/ReadVariableOp„
while/lstm_cell_66/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_66/MatMulѕ
*while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_66_matmul_1_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02,
*while/lstm_cell_66/MatMul_1/ReadVariableOpј
while/lstm_cell_66/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_66/MatMul_1Є
while/lstm_cell_66/addAddV2#while/lstm_cell_66/MatMul:product:0%while/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_66/add»
)while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02+
)while/lstm_cell_66/BiasAdd/ReadVariableOp≈
while/lstm_cell_66/BiasAddBiasAddwhile/lstm_cell_66/add:z:01while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_66/BiasAddК
"while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_66/split/split_dimЛ
while/lstm_cell_66/splitSplit+while/lstm_cell_66/split/split_dim:output:0#while/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split2
while/lstm_cell_66/splitШ
while/lstm_cell_66/SigmoidSigmoid!while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/SigmoidЬ
while/lstm_cell_66/Sigmoid_1Sigmoid!while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/Sigmoid_1†
while/lstm_cell_66/mulMul while/lstm_cell_66/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/mulЬ
while/lstm_cell_66/Sigmoid_2Sigmoid!while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/Sigmoid_2≤
while/lstm_cell_66/mul_1Mul!while/lstm_cell_66/split:output:2 while/lstm_cell_66/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/mul_1Ц
while/lstm_cell_66/IdentityIdentitywhile/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/IdentityВ
while/lstm_cell_66/IdentityN	IdentityNwhile/lstm_cell_66/mul_1:z:0!while/lstm_cell_66/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1550303*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
while/lstm_cell_66/IdentityNі
while/lstm_cell_66/mul_2Mulwhile/lstm_cell_66/Sigmoid:y:0%while/lstm_cell_66/IdentityN:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/mul_2©
while/lstm_cell_66/add_1AddV2while/lstm_cell_66/mul:z:0while/lstm_cell_66/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/add_1Ь
while/lstm_cell_66/Sigmoid_3Sigmoid!while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/Sigmoid_3Ч
while/lstm_cell_66/Sigmoid_4Sigmoidwhile/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/Sigmoid_4≠
while/lstm_cell_66/mul_3Mulwhile/lstm_cell_66/add_1:z:0 while/lstm_cell_66/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/mul_3Ъ
while/lstm_cell_66/Identity_1Identitywhile/lstm_cell_66/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/Identity_1Б
while/lstm_cell_66/IdentityN_1	IdentityNwhile/lstm_cell_66/mul_3:z:0while/lstm_cell_66/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1550312*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2 
while/lstm_cell_66/IdentityN_1Є
while/lstm_cell_66/mul_4Mul while/lstm_cell_66/Sigmoid_3:y:0'while/lstm_cell_66/IdentityN_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/mul_4а
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_66/mul_4:z:0*
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
while/add_1в
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityх
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1д
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2С
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Д
while/Identity_4Identitywhile/lstm_cell_66/mul_4:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2
while/Identity_4Д
while/Identity_5Identitywhile/lstm_cell_66/add_1:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_66_biasadd_readvariableop_resource4while_lstm_cell_66_biasadd_readvariableop_resource_0"l
3while_lstm_cell_66_matmul_1_readvariableop_resource5while_lstm_cell_66_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_66_matmul_readvariableop_resource3while_lstm_cell_66_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€@:€€€€€€€€€@: : : : : 2V
)while/lstm_cell_66/BiasAdd/ReadVariableOp)while/lstm_cell_66/BiasAdd/ReadVariableOp2T
(while/lstm_cell_66/MatMul/ReadVariableOp(while/lstm_cell_66/MatMul/ReadVariableOp2X
*while/lstm_cell_66/MatMul_1/ReadVariableOp*while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
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
:€€€€€€€€€@:-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
: 
е
°
4__inference_time_distributed_1_layer_call_fn_1550779

inputs
unknown:@
	unknown_0:
identityИҐStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_15471292
StatefulPartitionedCallЫ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
§X
≥

lstm_1_while_body_1548773*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3)
%lstm_1_while_lstm_1_strided_slice_1_0e
alstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_1_while_lstm_cell_65_matmul_readvariableop_resource_0:	АP
<lstm_1_while_lstm_cell_65_matmul_1_readvariableop_resource_0:
ААJ
;lstm_1_while_lstm_cell_65_biasadd_readvariableop_resource_0:	А
lstm_1_while_identity
lstm_1_while_identity_1
lstm_1_while_identity_2
lstm_1_while_identity_3
lstm_1_while_identity_4
lstm_1_while_identity_5'
#lstm_1_while_lstm_1_strided_slice_1c
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensorK
8lstm_1_while_lstm_cell_65_matmul_readvariableop_resource:	АN
:lstm_1_while_lstm_cell_65_matmul_1_readvariableop_resource:
ААH
9lstm_1_while_lstm_cell_65_biasadd_readvariableop_resource:	АИҐ0lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOpҐ/lstm_1/while/lstm_cell_65/MatMul/ReadVariableOpҐ1lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOp—
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2@
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeэ
0lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0lstm_1_while_placeholderGlstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype022
0lstm_1/while/TensorArrayV2Read/TensorListGetItemё
/lstm_1/while/lstm_cell_65/MatMul/ReadVariableOpReadVariableOp:lstm_1_while_lstm_cell_65_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype021
/lstm_1/while/lstm_cell_65/MatMul/ReadVariableOpу
 lstm_1/while/lstm_cell_65/MatMulMatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_1/while/lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2"
 lstm_1/while/lstm_cell_65/MatMulе
1lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOp<lstm_1_while_lstm_cell_65_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype023
1lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOp№
"lstm_1/while/lstm_cell_65/MatMul_1MatMullstm_1_while_placeholder_29lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2$
"lstm_1/while/lstm_cell_65/MatMul_1‘
lstm_1/while/lstm_cell_65/addAddV2*lstm_1/while/lstm_cell_65/MatMul:product:0,lstm_1/while/lstm_cell_65/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/while/lstm_cell_65/addЁ
0lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOp;lstm_1_while_lstm_cell_65_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype022
0lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOpб
!lstm_1/while/lstm_cell_65/BiasAddBiasAdd!lstm_1/while/lstm_cell_65/add:z:08lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2#
!lstm_1/while/lstm_cell_65/BiasAddШ
)lstm_1/while/lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2+
)lstm_1/while/lstm_cell_65/split/split_dimЂ
lstm_1/while/lstm_cell_65/splitSplit2lstm_1/while/lstm_cell_65/split/split_dim:output:0*lstm_1/while/lstm_cell_65/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_split2!
lstm_1/while/lstm_cell_65/splitЃ
!lstm_1/while/lstm_cell_65/SigmoidSigmoid(lstm_1/while/lstm_cell_65/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2#
!lstm_1/while/lstm_cell_65/Sigmoid≤
#lstm_1/while/lstm_cell_65/Sigmoid_1Sigmoid(lstm_1/while/lstm_cell_65/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€А2%
#lstm_1/while/lstm_cell_65/Sigmoid_1љ
lstm_1/while/lstm_cell_65/mulMul'lstm_1/while/lstm_cell_65/Sigmoid_1:y:0lstm_1_while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/while/lstm_cell_65/mul≤
#lstm_1/while/lstm_cell_65/Sigmoid_2Sigmoid(lstm_1/while/lstm_cell_65/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€А2%
#lstm_1/while/lstm_cell_65/Sigmoid_2ѕ
lstm_1/while/lstm_cell_65/mul_1Mul(lstm_1/while/lstm_cell_65/split:output:2'lstm_1/while/lstm_cell_65/Sigmoid_2:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
lstm_1/while/lstm_cell_65/mul_1ђ
"lstm_1/while/lstm_cell_65/IdentityIdentity#lstm_1/while/lstm_cell_65/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2$
"lstm_1/while/lstm_cell_65/Identity†
#lstm_1/while/lstm_cell_65/IdentityN	IdentityN#lstm_1/while/lstm_cell_65/mul_1:z:0(lstm_1/while/lstm_cell_65/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1548815*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2%
#lstm_1/while/lstm_cell_65/IdentityN—
lstm_1/while/lstm_cell_65/mul_2Mul%lstm_1/while/lstm_cell_65/Sigmoid:y:0,lstm_1/while/lstm_cell_65/IdentityN:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
lstm_1/while/lstm_cell_65/mul_2∆
lstm_1/while/lstm_cell_65/add_1AddV2!lstm_1/while/lstm_cell_65/mul:z:0#lstm_1/while/lstm_cell_65/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
lstm_1/while/lstm_cell_65/add_1≤
#lstm_1/while/lstm_cell_65/Sigmoid_3Sigmoid(lstm_1/while/lstm_cell_65/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А2%
#lstm_1/while/lstm_cell_65/Sigmoid_3≠
#lstm_1/while/lstm_cell_65/Sigmoid_4Sigmoid#lstm_1/while/lstm_cell_65/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2%
#lstm_1/while/lstm_cell_65/Sigmoid_4 
lstm_1/while/lstm_cell_65/mul_3Mul#lstm_1/while/lstm_cell_65/add_1:z:0'lstm_1/while/lstm_cell_65/Sigmoid_4:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
lstm_1/while/lstm_cell_65/mul_3∞
$lstm_1/while/lstm_cell_65/Identity_1Identity#lstm_1/while/lstm_cell_65/mul_3:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2&
$lstm_1/while/lstm_cell_65/Identity_1Я
%lstm_1/while/lstm_cell_65/IdentityN_1	IdentityN#lstm_1/while/lstm_cell_65/mul_3:z:0#lstm_1/while/lstm_cell_65/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1548824*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2'
%lstm_1/while/lstm_cell_65/IdentityN_1’
lstm_1/while/lstm_cell_65/mul_4Mul'lstm_1/while/lstm_cell_65/Sigmoid_3:y:0.lstm_1/while/lstm_cell_65/IdentityN_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
lstm_1/while/lstm_cell_65/mul_4Г
1lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_1_while_placeholder_1lstm_1_while_placeholder#lstm_1/while/lstm_cell_65/mul_4:z:0*
_output_shapes
: *
element_dtype023
1lstm_1/while/TensorArrayV2Write/TensorListSetItemj
lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/while/add/yЕ
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
lstm_1/while/add_1/yЩ
lstm_1/while/add_1AddV2&lstm_1_while_lstm_1_while_loop_counterlstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_1/while/add_1М
lstm_1/while/IdentityIdentitylstm_1/while/add_1:z:01^lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_65/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity¶
lstm_1/while/Identity_1Identity,lstm_1_while_lstm_1_while_maximum_iterations1^lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_65/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_1О
lstm_1/while/Identity_2Identitylstm_1/while/add:z:01^lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_65/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_2ї
lstm_1/while/Identity_3IdentityAlstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:01^lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_65/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_3ѓ
lstm_1/while/Identity_4Identity#lstm_1/while/lstm_cell_65/mul_4:z:01^lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_65/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/while/Identity_4ѓ
lstm_1/while/Identity_5Identity#lstm_1/while/lstm_cell_65/add_1:z:01^lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_65/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/while/Identity_5"7
lstm_1_while_identitylstm_1/while/Identity:output:0";
lstm_1_while_identity_1 lstm_1/while/Identity_1:output:0";
lstm_1_while_identity_2 lstm_1/while/Identity_2:output:0";
lstm_1_while_identity_3 lstm_1/while/Identity_3:output:0";
lstm_1_while_identity_4 lstm_1/while/Identity_4:output:0";
lstm_1_while_identity_5 lstm_1/while/Identity_5:output:0"L
#lstm_1_while_lstm_1_strided_slice_1%lstm_1_while_lstm_1_strided_slice_1_0"x
9lstm_1_while_lstm_cell_65_biasadd_readvariableop_resource;lstm_1_while_lstm_cell_65_biasadd_readvariableop_resource_0"z
:lstm_1_while_lstm_cell_65_matmul_1_readvariableop_resource<lstm_1_while_lstm_cell_65_matmul_1_readvariableop_resource_0"v
8lstm_1_while_lstm_cell_65_matmul_readvariableop_resource:lstm_1_while_lstm_cell_65_matmul_readvariableop_resource_0"ƒ
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensoralstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2d
0lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOp0lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOp2b
/lstm_1/while/lstm_cell_65/MatMul/ReadVariableOp/lstm_1/while/lstm_cell_65/MatMul/ReadVariableOp2f
1lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOp1lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOp: 

_output_shapes
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
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
Лd
Ю
C__inference_lstm_1_layer_call_and_return_conditional_losses_1549456
inputs_0>
+lstm_cell_65_matmul_readvariableop_resource:	АA
-lstm_cell_65_matmul_1_readvariableop_resource:
АА;
,lstm_cell_65_biasadd_readvariableop_resource:	А
identityИҐ#lstm_cell_65/BiasAdd/ReadVariableOpҐ"lstm_cell_65/MatMul/ReadVariableOpҐ$lstm_cell_65/MatMul_1/ReadVariableOpҐwhileF
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
strided_slice/stack_2в
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
B :и2
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
:€€€€€€€€€А2
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
B :и2
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
:€€€€€€€€€А2	
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
 :€€€€€€€€€€€€€€€€€€2
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
strided_slice_1/stack_2о
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
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2µ
"lstm_cell_65/MatMul/ReadVariableOpReadVariableOp+lstm_cell_65_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02$
"lstm_cell_65/MatMul/ReadVariableOp≠
lstm_cell_65/MatMulMatMulstrided_slice_2:output:0*lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/MatMulЉ
$lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_65_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02&
$lstm_cell_65/MatMul_1/ReadVariableOp©
lstm_cell_65/MatMul_1MatMulzeros:output:0,lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/MatMul_1†
lstm_cell_65/addAddV2lstm_cell_65/MatMul:product:0lstm_cell_65/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/addі
#lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_65_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#lstm_cell_65/BiasAdd/ReadVariableOp≠
lstm_cell_65/BiasAddBiasAddlstm_cell_65/add:z:0+lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/BiasAdd~
lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_65/split/split_dimч
lstm_cell_65/splitSplit%lstm_cell_65/split/split_dim:output:0lstm_cell_65/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_split2
lstm_cell_65/splitЗ
lstm_cell_65/SigmoidSigmoidlstm_cell_65/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/SigmoidЛ
lstm_cell_65/Sigmoid_1Sigmoidlstm_cell_65/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Sigmoid_1М
lstm_cell_65/mulMullstm_cell_65/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/mulЛ
lstm_cell_65/Sigmoid_2Sigmoidlstm_cell_65/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Sigmoid_2Ы
lstm_cell_65/mul_1Mullstm_cell_65/split:output:2lstm_cell_65/Sigmoid_2:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/mul_1Е
lstm_cell_65/IdentityIdentitylstm_cell_65/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Identityм
lstm_cell_65/IdentityN	IdentityNlstm_cell_65/mul_1:z:0lstm_cell_65/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1549342*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2
lstm_cell_65/IdentityNЭ
lstm_cell_65/mul_2Mullstm_cell_65/Sigmoid:y:0lstm_cell_65/IdentityN:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/mul_2Т
lstm_cell_65/add_1AddV2lstm_cell_65/mul:z:0lstm_cell_65/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/add_1Л
lstm_cell_65/Sigmoid_3Sigmoidlstm_cell_65/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Sigmoid_3Ж
lstm_cell_65/Sigmoid_4Sigmoidlstm_cell_65/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Sigmoid_4Ц
lstm_cell_65/mul_3Mullstm_cell_65/add_1:z:0lstm_cell_65/Sigmoid_4:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/mul_3Й
lstm_cell_65/Identity_1Identitylstm_cell_65/mul_3:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Identity_1л
lstm_cell_65/IdentityN_1	IdentityNlstm_cell_65/mul_3:z:0lstm_cell_65/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1549351*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2
lstm_cell_65/IdentityN_1°
lstm_cell_65/mul_4Mullstm_cell_65/Sigmoid_3:y:0!lstm_cell_65/IdentityN_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/mul_4П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterф
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_65_matmul_readvariableop_resource-lstm_cell_65_matmul_1_readvariableop_resource,lstm_cell_65_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1549362*
condR
while_cond_1549361*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   22
0TensorArrayV2Stack/TensorListStack/element_shapeт
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permѓ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeл
IdentityIdentitytranspose_1:y:0$^lstm_cell_65/BiasAdd/ReadVariableOp#^lstm_cell_65/MatMul/ReadVariableOp%^lstm_cell_65/MatMul_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2J
#lstm_cell_65/BiasAdd/ReadVariableOp#lstm_cell_65/BiasAdd/ReadVariableOp2H
"lstm_cell_65/MatMul/ReadVariableOp"lstm_cell_65/MatMul/ReadVariableOp2L
$lstm_cell_65/MatMul_1/ReadVariableOp$lstm_cell_65/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs/0
Џ
»
while_cond_1547493
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1547493___redundant_placeholder05
1while_while_cond_1547493___redundant_placeholder15
1while_while_cond_1547493___redundant_placeholder25
1while_while_cond_1547493___redundant_placeholder3
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
@: : : : :€€€€€€€€€@:€€€€€€€€€@: ::::: 

_output_shapes
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
:€€€€€€€€€@:-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
:
г
Ю
M__inference_time_distributed_layer_call_and_return_conditional_losses_1547731

inputs8
&dense_2_matmul_readvariableop_resource:@@5
'dense_2_biasadd_readvariableop_resource:@
identityИҐdense_2/BiasAdd/ReadVariableOpҐdense_2/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
Reshape•
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_2/MatMul/ReadVariableOpХ
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_2/MatMul§
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_2/BiasAdd/ReadVariableOp°
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_2/BiasAddy
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_2/SigmoidВ
dense_2/mulMuldense_2/BiasAdd:output:0dense_2/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_2/muls
dense_2/IdentityIdentitydense_2/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_2/Identity÷
dense_2/IdentityN	IdentityNdense_2/mul:z:0dense_2/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1547722*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
dense_2/IdentityNw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€   @   2
Reshape_1/shapeН
	Reshape_1Reshapedense_2/IdentityN:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€@2
	Reshape_1Ђ
IdentityIdentityReshape_1:output:0^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
 E
Й
C__inference_lstm_1_layer_call_and_return_conditional_losses_1545817

inputs'
lstm_cell_65_1545735:	А(
lstm_cell_65_1545737:
АА#
lstm_cell_65_1545739:	А
identityИҐ$lstm_cell_65/StatefulPartitionedCallҐwhileD
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
strided_slice/stack_2в
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
B :и2
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
:€€€€€€€€€А2
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
B :и2
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
:€€€€€€€€€А2	
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
 :€€€€€€€€€€€€€€€€€€2
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
strided_slice_1/stack_2о
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
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2§
$lstm_cell_65/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_65_1545735lstm_cell_65_1545737lstm_cell_65_1545739*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_lstm_cell_65_layer_call_and_return_conditional_losses_15457342&
$lstm_cell_65/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterђ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_65_1545735lstm_cell_65_1545737lstm_cell_65_1545739*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1545748*
condR
while_cond_1545747*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   22
0TensorArrayV2Stack/TensorListStack/element_shapeт
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permѓ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime†
IdentityIdentitytranspose_1:y:0%^lstm_cell_65/StatefulPartitionedCall^while*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2L
$lstm_cell_65/StatefulPartitionedCall$lstm_cell_65/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
»m
”
&sequential_1_lstm_2_while_body_1545525D
@sequential_1_lstm_2_while_sequential_1_lstm_2_while_loop_counterJ
Fsequential_1_lstm_2_while_sequential_1_lstm_2_while_maximum_iterations)
%sequential_1_lstm_2_while_placeholder+
'sequential_1_lstm_2_while_placeholder_1+
'sequential_1_lstm_2_while_placeholder_2+
'sequential_1_lstm_2_while_placeholder_3C
?sequential_1_lstm_2_while_sequential_1_lstm_2_strided_slice_1_0
{sequential_1_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_2_tensorarrayunstack_tensorlistfromtensor_0[
Gsequential_1_lstm_2_while_lstm_cell_66_matmul_readvariableop_resource_0:
АА\
Isequential_1_lstm_2_while_lstm_cell_66_matmul_1_readvariableop_resource_0:	@АW
Hsequential_1_lstm_2_while_lstm_cell_66_biasadd_readvariableop_resource_0:	А&
"sequential_1_lstm_2_while_identity(
$sequential_1_lstm_2_while_identity_1(
$sequential_1_lstm_2_while_identity_2(
$sequential_1_lstm_2_while_identity_3(
$sequential_1_lstm_2_while_identity_4(
$sequential_1_lstm_2_while_identity_5A
=sequential_1_lstm_2_while_sequential_1_lstm_2_strided_slice_1}
ysequential_1_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_2_tensorarrayunstack_tensorlistfromtensorY
Esequential_1_lstm_2_while_lstm_cell_66_matmul_readvariableop_resource:
ААZ
Gsequential_1_lstm_2_while_lstm_cell_66_matmul_1_readvariableop_resource:	@АU
Fsequential_1_lstm_2_while_lstm_cell_66_biasadd_readvariableop_resource:	АИҐ=sequential_1/lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOpҐ<sequential_1/lstm_2/while/lstm_cell_66/MatMul/ReadVariableOpҐ>sequential_1/lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOpл
Ksequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2M
Ksequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeћ
=sequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_1_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_2_tensorarrayunstack_tensorlistfromtensor_0%sequential_1_lstm_2_while_placeholderTsequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€А*
element_dtype02?
=sequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItemЖ
<sequential_1/lstm_2/while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOpGsequential_1_lstm_2_while_lstm_cell_66_matmul_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02>
<sequential_1/lstm_2/while/lstm_cell_66/MatMul/ReadVariableOpІ
-sequential_1/lstm_2/while/lstm_cell_66/MatMulMatMulDsequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:0Dsequential_1/lstm_2/while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2/
-sequential_1/lstm_2/while/lstm_cell_66/MatMulЛ
>sequential_1/lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOpIsequential_1_lstm_2_while_lstm_cell_66_matmul_1_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02@
>sequential_1/lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOpР
/sequential_1/lstm_2/while/lstm_cell_66/MatMul_1MatMul'sequential_1_lstm_2_while_placeholder_2Fsequential_1/lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А21
/sequential_1/lstm_2/while/lstm_cell_66/MatMul_1И
*sequential_1/lstm_2/while/lstm_cell_66/addAddV27sequential_1/lstm_2/while/lstm_cell_66/MatMul:product:09sequential_1/lstm_2/while/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2,
*sequential_1/lstm_2/while/lstm_cell_66/addД
=sequential_1/lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOpHsequential_1_lstm_2_while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02?
=sequential_1/lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOpХ
.sequential_1/lstm_2/while/lstm_cell_66/BiasAddBiasAdd.sequential_1/lstm_2/while/lstm_cell_66/add:z:0Esequential_1/lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А20
.sequential_1/lstm_2/while/lstm_cell_66/BiasAdd≤
6sequential_1/lstm_2/while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :28
6sequential_1/lstm_2/while/lstm_cell_66/split/split_dimџ
,sequential_1/lstm_2/while/lstm_cell_66/splitSplit?sequential_1/lstm_2/while/lstm_cell_66/split/split_dim:output:07sequential_1/lstm_2/while/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split2.
,sequential_1/lstm_2/while/lstm_cell_66/split‘
.sequential_1/lstm_2/while/lstm_cell_66/SigmoidSigmoid5sequential_1/lstm_2/while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€@20
.sequential_1/lstm_2/while/lstm_cell_66/SigmoidЎ
0sequential_1/lstm_2/while/lstm_cell_66/Sigmoid_1Sigmoid5sequential_1/lstm_2/while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€@22
0sequential_1/lstm_2/while/lstm_cell_66/Sigmoid_1р
*sequential_1/lstm_2/while/lstm_cell_66/mulMul4sequential_1/lstm_2/while/lstm_cell_66/Sigmoid_1:y:0'sequential_1_lstm_2_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€@2,
*sequential_1/lstm_2/while/lstm_cell_66/mulЎ
0sequential_1/lstm_2/while/lstm_cell_66/Sigmoid_2Sigmoid5sequential_1/lstm_2/while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€@22
0sequential_1/lstm_2/while/lstm_cell_66/Sigmoid_2В
,sequential_1/lstm_2/while/lstm_cell_66/mul_1Mul5sequential_1/lstm_2/while/lstm_cell_66/split:output:24sequential_1/lstm_2/while/lstm_cell_66/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2.
,sequential_1/lstm_2/while/lstm_cell_66/mul_1“
/sequential_1/lstm_2/while/lstm_cell_66/IdentityIdentity0sequential_1/lstm_2/while/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@21
/sequential_1/lstm_2/while/lstm_cell_66/Identity“
0sequential_1/lstm_2/while/lstm_cell_66/IdentityN	IdentityN0sequential_1/lstm_2/while/lstm_cell_66/mul_1:z:05sequential_1/lstm_2/while/lstm_cell_66/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1545567*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@22
0sequential_1/lstm_2/while/lstm_cell_66/IdentityNД
,sequential_1/lstm_2/while/lstm_cell_66/mul_2Mul2sequential_1/lstm_2/while/lstm_cell_66/Sigmoid:y:09sequential_1/lstm_2/while/lstm_cell_66/IdentityN:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2.
,sequential_1/lstm_2/while/lstm_cell_66/mul_2щ
,sequential_1/lstm_2/while/lstm_cell_66/add_1AddV2.sequential_1/lstm_2/while/lstm_cell_66/mul:z:00sequential_1/lstm_2/while/lstm_cell_66/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2.
,sequential_1/lstm_2/while/lstm_cell_66/add_1Ў
0sequential_1/lstm_2/while/lstm_cell_66/Sigmoid_3Sigmoid5sequential_1/lstm_2/while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€@22
0sequential_1/lstm_2/while/lstm_cell_66/Sigmoid_3”
0sequential_1/lstm_2/while/lstm_cell_66/Sigmoid_4Sigmoid0sequential_1/lstm_2/while/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@22
0sequential_1/lstm_2/while/lstm_cell_66/Sigmoid_4э
,sequential_1/lstm_2/while/lstm_cell_66/mul_3Mul0sequential_1/lstm_2/while/lstm_cell_66/add_1:z:04sequential_1/lstm_2/while/lstm_cell_66/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2.
,sequential_1/lstm_2/while/lstm_cell_66/mul_3÷
1sequential_1/lstm_2/while/lstm_cell_66/Identity_1Identity0sequential_1/lstm_2/while/lstm_cell_66/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€@23
1sequential_1/lstm_2/while/lstm_cell_66/Identity_1—
2sequential_1/lstm_2/while/lstm_cell_66/IdentityN_1	IdentityN0sequential_1/lstm_2/while/lstm_cell_66/mul_3:z:00sequential_1/lstm_2/while/lstm_cell_66/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1545576*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@24
2sequential_1/lstm_2/while/lstm_cell_66/IdentityN_1И
,sequential_1/lstm_2/while/lstm_cell_66/mul_4Mul4sequential_1/lstm_2/while/lstm_cell_66/Sigmoid_3:y:0;sequential_1/lstm_2/while/lstm_cell_66/IdentityN_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2.
,sequential_1/lstm_2/while/lstm_cell_66/mul_4ƒ
>sequential_1/lstm_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_1_lstm_2_while_placeholder_1%sequential_1_lstm_2_while_placeholder0sequential_1/lstm_2/while/lstm_cell_66/mul_4:z:0*
_output_shapes
: *
element_dtype02@
>sequential_1/lstm_2/while/TensorArrayV2Write/TensorListSetItemД
sequential_1/lstm_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_1/lstm_2/while/add/yє
sequential_1/lstm_2/while/addAddV2%sequential_1_lstm_2_while_placeholder(sequential_1/lstm_2/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_1/lstm_2/while/addИ
!sequential_1/lstm_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_1/lstm_2/while/add_1/yЏ
sequential_1/lstm_2/while/add_1AddV2@sequential_1_lstm_2_while_sequential_1_lstm_2_while_loop_counter*sequential_1/lstm_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
sequential_1/lstm_2/while/add_1Џ
"sequential_1/lstm_2/while/IdentityIdentity#sequential_1/lstm_2/while/add_1:z:0>^sequential_1/lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOp=^sequential_1/lstm_2/while/lstm_cell_66/MatMul/ReadVariableOp?^sequential_1/lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2$
"sequential_1/lstm_2/while/IdentityБ
$sequential_1/lstm_2/while/Identity_1IdentityFsequential_1_lstm_2_while_sequential_1_lstm_2_while_maximum_iterations>^sequential_1/lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOp=^sequential_1/lstm_2/while/lstm_cell_66/MatMul/ReadVariableOp?^sequential_1/lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_2/while/Identity_1№
$sequential_1/lstm_2/while/Identity_2Identity!sequential_1/lstm_2/while/add:z:0>^sequential_1/lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOp=^sequential_1/lstm_2/while/lstm_cell_66/MatMul/ReadVariableOp?^sequential_1/lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_2/while/Identity_2Й
$sequential_1/lstm_2/while/Identity_3IdentityNsequential_1/lstm_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^sequential_1/lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOp=^sequential_1/lstm_2/while/lstm_cell_66/MatMul/ReadVariableOp?^sequential_1/lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_2/while/Identity_3ь
$sequential_1/lstm_2/while/Identity_4Identity0sequential_1/lstm_2/while/lstm_cell_66/mul_4:z:0>^sequential_1/lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOp=^sequential_1/lstm_2/while/lstm_cell_66/MatMul/ReadVariableOp?^sequential_1/lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2&
$sequential_1/lstm_2/while/Identity_4ь
$sequential_1/lstm_2/while/Identity_5Identity0sequential_1/lstm_2/while/lstm_cell_66/add_1:z:0>^sequential_1/lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOp=^sequential_1/lstm_2/while/lstm_cell_66/MatMul/ReadVariableOp?^sequential_1/lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2&
$sequential_1/lstm_2/while/Identity_5"Q
"sequential_1_lstm_2_while_identity+sequential_1/lstm_2/while/Identity:output:0"U
$sequential_1_lstm_2_while_identity_1-sequential_1/lstm_2/while/Identity_1:output:0"U
$sequential_1_lstm_2_while_identity_2-sequential_1/lstm_2/while/Identity_2:output:0"U
$sequential_1_lstm_2_while_identity_3-sequential_1/lstm_2/while/Identity_3:output:0"U
$sequential_1_lstm_2_while_identity_4-sequential_1/lstm_2/while/Identity_4:output:0"U
$sequential_1_lstm_2_while_identity_5-sequential_1/lstm_2/while/Identity_5:output:0"Т
Fsequential_1_lstm_2_while_lstm_cell_66_biasadd_readvariableop_resourceHsequential_1_lstm_2_while_lstm_cell_66_biasadd_readvariableop_resource_0"Ф
Gsequential_1_lstm_2_while_lstm_cell_66_matmul_1_readvariableop_resourceIsequential_1_lstm_2_while_lstm_cell_66_matmul_1_readvariableop_resource_0"Р
Esequential_1_lstm_2_while_lstm_cell_66_matmul_readvariableop_resourceGsequential_1_lstm_2_while_lstm_cell_66_matmul_readvariableop_resource_0"А
=sequential_1_lstm_2_while_sequential_1_lstm_2_strided_slice_1?sequential_1_lstm_2_while_sequential_1_lstm_2_strided_slice_1_0"ш
ysequential_1_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_2_tensorarrayunstack_tensorlistfromtensor{sequential_1_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€@:€€€€€€€€€@: : : : : 2~
=sequential_1/lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOp=sequential_1/lstm_2/while/lstm_cell_66/BiasAdd/ReadVariableOp2|
<sequential_1/lstm_2/while/lstm_cell_66/MatMul/ReadVariableOp<sequential_1/lstm_2/while/lstm_cell_66/MatMul/ReadVariableOp2А
>sequential_1/lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOp>sequential_1/lstm_2/while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
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
:€€€€€€€€€@:-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
: 
вm
”
&sequential_1_lstm_1_while_body_1545358D
@sequential_1_lstm_1_while_sequential_1_lstm_1_while_loop_counterJ
Fsequential_1_lstm_1_while_sequential_1_lstm_1_while_maximum_iterations)
%sequential_1_lstm_1_while_placeholder+
'sequential_1_lstm_1_while_placeholder_1+
'sequential_1_lstm_1_while_placeholder_2+
'sequential_1_lstm_1_while_placeholder_3C
?sequential_1_lstm_1_while_sequential_1_lstm_1_strided_slice_1_0
{sequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensor_0Z
Gsequential_1_lstm_1_while_lstm_cell_65_matmul_readvariableop_resource_0:	А]
Isequential_1_lstm_1_while_lstm_cell_65_matmul_1_readvariableop_resource_0:
ААW
Hsequential_1_lstm_1_while_lstm_cell_65_biasadd_readvariableop_resource_0:	А&
"sequential_1_lstm_1_while_identity(
$sequential_1_lstm_1_while_identity_1(
$sequential_1_lstm_1_while_identity_2(
$sequential_1_lstm_1_while_identity_3(
$sequential_1_lstm_1_while_identity_4(
$sequential_1_lstm_1_while_identity_5A
=sequential_1_lstm_1_while_sequential_1_lstm_1_strided_slice_1}
ysequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensorX
Esequential_1_lstm_1_while_lstm_cell_65_matmul_readvariableop_resource:	А[
Gsequential_1_lstm_1_while_lstm_cell_65_matmul_1_readvariableop_resource:
ААU
Fsequential_1_lstm_1_while_lstm_cell_65_biasadd_readvariableop_resource:	АИҐ=sequential_1/lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOpҐ<sequential_1/lstm_1/while/lstm_cell_65/MatMul/ReadVariableOpҐ>sequential_1/lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOpл
Ksequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2M
Ksequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeЋ
=sequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensor_0%sequential_1_lstm_1_while_placeholderTsequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02?
=sequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItemЕ
<sequential_1/lstm_1/while/lstm_cell_65/MatMul/ReadVariableOpReadVariableOpGsequential_1_lstm_1_while_lstm_cell_65_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02>
<sequential_1/lstm_1/while/lstm_cell_65/MatMul/ReadVariableOpІ
-sequential_1/lstm_1/while/lstm_cell_65/MatMulMatMulDsequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0Dsequential_1/lstm_1/while/lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2/
-sequential_1/lstm_1/while/lstm_cell_65/MatMulМ
>sequential_1/lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOpIsequential_1_lstm_1_while_lstm_cell_65_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02@
>sequential_1/lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOpР
/sequential_1/lstm_1/while/lstm_cell_65/MatMul_1MatMul'sequential_1_lstm_1_while_placeholder_2Fsequential_1/lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А21
/sequential_1/lstm_1/while/lstm_cell_65/MatMul_1И
*sequential_1/lstm_1/while/lstm_cell_65/addAddV27sequential_1/lstm_1/while/lstm_cell_65/MatMul:product:09sequential_1/lstm_1/while/lstm_cell_65/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2,
*sequential_1/lstm_1/while/lstm_cell_65/addД
=sequential_1/lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOpHsequential_1_lstm_1_while_lstm_cell_65_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02?
=sequential_1/lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOpХ
.sequential_1/lstm_1/while/lstm_cell_65/BiasAddBiasAdd.sequential_1/lstm_1/while/lstm_cell_65/add:z:0Esequential_1/lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А20
.sequential_1/lstm_1/while/lstm_cell_65/BiasAdd≤
6sequential_1/lstm_1/while/lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :28
6sequential_1/lstm_1/while/lstm_cell_65/split/split_dimя
,sequential_1/lstm_1/while/lstm_cell_65/splitSplit?sequential_1/lstm_1/while/lstm_cell_65/split/split_dim:output:07sequential_1/lstm_1/while/lstm_cell_65/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_split2.
,sequential_1/lstm_1/while/lstm_cell_65/split’
.sequential_1/lstm_1/while/lstm_cell_65/SigmoidSigmoid5sequential_1/lstm_1/while/lstm_cell_65/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€А20
.sequential_1/lstm_1/while/lstm_cell_65/Sigmoidў
0sequential_1/lstm_1/while/lstm_cell_65/Sigmoid_1Sigmoid5sequential_1/lstm_1/while/lstm_cell_65/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€А22
0sequential_1/lstm_1/while/lstm_cell_65/Sigmoid_1с
*sequential_1/lstm_1/while/lstm_cell_65/mulMul4sequential_1/lstm_1/while/lstm_cell_65/Sigmoid_1:y:0'sequential_1_lstm_1_while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€А2,
*sequential_1/lstm_1/while/lstm_cell_65/mulў
0sequential_1/lstm_1/while/lstm_cell_65/Sigmoid_2Sigmoid5sequential_1/lstm_1/while/lstm_cell_65/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€А22
0sequential_1/lstm_1/while/lstm_cell_65/Sigmoid_2Г
,sequential_1/lstm_1/while/lstm_cell_65/mul_1Mul5sequential_1/lstm_1/while/lstm_cell_65/split:output:24sequential_1/lstm_1/while/lstm_cell_65/Sigmoid_2:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2.
,sequential_1/lstm_1/while/lstm_cell_65/mul_1”
/sequential_1/lstm_1/while/lstm_cell_65/IdentityIdentity0sequential_1/lstm_1/while/lstm_cell_65/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А21
/sequential_1/lstm_1/while/lstm_cell_65/Identity‘
0sequential_1/lstm_1/while/lstm_cell_65/IdentityN	IdentityN0sequential_1/lstm_1/while/lstm_cell_65/mul_1:z:05sequential_1/lstm_1/while/lstm_cell_65/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1545400*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А22
0sequential_1/lstm_1/while/lstm_cell_65/IdentityNЕ
,sequential_1/lstm_1/while/lstm_cell_65/mul_2Mul2sequential_1/lstm_1/while/lstm_cell_65/Sigmoid:y:09sequential_1/lstm_1/while/lstm_cell_65/IdentityN:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2.
,sequential_1/lstm_1/while/lstm_cell_65/mul_2ъ
,sequential_1/lstm_1/while/lstm_cell_65/add_1AddV2.sequential_1/lstm_1/while/lstm_cell_65/mul:z:00sequential_1/lstm_1/while/lstm_cell_65/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2.
,sequential_1/lstm_1/while/lstm_cell_65/add_1ў
0sequential_1/lstm_1/while/lstm_cell_65/Sigmoid_3Sigmoid5sequential_1/lstm_1/while/lstm_cell_65/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А22
0sequential_1/lstm_1/while/lstm_cell_65/Sigmoid_3‘
0sequential_1/lstm_1/while/lstm_cell_65/Sigmoid_4Sigmoid0sequential_1/lstm_1/while/lstm_cell_65/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А22
0sequential_1/lstm_1/while/lstm_cell_65/Sigmoid_4ю
,sequential_1/lstm_1/while/lstm_cell_65/mul_3Mul0sequential_1/lstm_1/while/lstm_cell_65/add_1:z:04sequential_1/lstm_1/while/lstm_cell_65/Sigmoid_4:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2.
,sequential_1/lstm_1/while/lstm_cell_65/mul_3„
1sequential_1/lstm_1/while/lstm_cell_65/Identity_1Identity0sequential_1/lstm_1/while/lstm_cell_65/mul_3:z:0*
T0*(
_output_shapes
:€€€€€€€€€А23
1sequential_1/lstm_1/while/lstm_cell_65/Identity_1”
2sequential_1/lstm_1/while/lstm_cell_65/IdentityN_1	IdentityN0sequential_1/lstm_1/while/lstm_cell_65/mul_3:z:00sequential_1/lstm_1/while/lstm_cell_65/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1545409*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А24
2sequential_1/lstm_1/while/lstm_cell_65/IdentityN_1Й
,sequential_1/lstm_1/while/lstm_cell_65/mul_4Mul4sequential_1/lstm_1/while/lstm_cell_65/Sigmoid_3:y:0;sequential_1/lstm_1/while/lstm_cell_65/IdentityN_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2.
,sequential_1/lstm_1/while/lstm_cell_65/mul_4ƒ
>sequential_1/lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_1_lstm_1_while_placeholder_1%sequential_1_lstm_1_while_placeholder0sequential_1/lstm_1/while/lstm_cell_65/mul_4:z:0*
_output_shapes
: *
element_dtype02@
>sequential_1/lstm_1/while/TensorArrayV2Write/TensorListSetItemД
sequential_1/lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_1/lstm_1/while/add/yє
sequential_1/lstm_1/while/addAddV2%sequential_1_lstm_1_while_placeholder(sequential_1/lstm_1/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_1/lstm_1/while/addИ
!sequential_1/lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_1/lstm_1/while/add_1/yЏ
sequential_1/lstm_1/while/add_1AddV2@sequential_1_lstm_1_while_sequential_1_lstm_1_while_loop_counter*sequential_1/lstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
sequential_1/lstm_1/while/add_1Џ
"sequential_1/lstm_1/while/IdentityIdentity#sequential_1/lstm_1/while/add_1:z:0>^sequential_1/lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_65/MatMul/ReadVariableOp?^sequential_1/lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2$
"sequential_1/lstm_1/while/IdentityБ
$sequential_1/lstm_1/while/Identity_1IdentityFsequential_1_lstm_1_while_sequential_1_lstm_1_while_maximum_iterations>^sequential_1/lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_65/MatMul/ReadVariableOp?^sequential_1/lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_1/while/Identity_1№
$sequential_1/lstm_1/while/Identity_2Identity!sequential_1/lstm_1/while/add:z:0>^sequential_1/lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_65/MatMul/ReadVariableOp?^sequential_1/lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_1/while/Identity_2Й
$sequential_1/lstm_1/while/Identity_3IdentityNsequential_1/lstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^sequential_1/lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_65/MatMul/ReadVariableOp?^sequential_1/lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_1/while/Identity_3э
$sequential_1/lstm_1/while/Identity_4Identity0sequential_1/lstm_1/while/lstm_cell_65/mul_4:z:0>^sequential_1/lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_65/MatMul/ReadVariableOp?^sequential_1/lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2&
$sequential_1/lstm_1/while/Identity_4э
$sequential_1/lstm_1/while/Identity_5Identity0sequential_1/lstm_1/while/lstm_cell_65/add_1:z:0>^sequential_1/lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_65/MatMul/ReadVariableOp?^sequential_1/lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2&
$sequential_1/lstm_1/while/Identity_5"Q
"sequential_1_lstm_1_while_identity+sequential_1/lstm_1/while/Identity:output:0"U
$sequential_1_lstm_1_while_identity_1-sequential_1/lstm_1/while/Identity_1:output:0"U
$sequential_1_lstm_1_while_identity_2-sequential_1/lstm_1/while/Identity_2:output:0"U
$sequential_1_lstm_1_while_identity_3-sequential_1/lstm_1/while/Identity_3:output:0"U
$sequential_1_lstm_1_while_identity_4-sequential_1/lstm_1/while/Identity_4:output:0"U
$sequential_1_lstm_1_while_identity_5-sequential_1/lstm_1/while/Identity_5:output:0"Т
Fsequential_1_lstm_1_while_lstm_cell_65_biasadd_readvariableop_resourceHsequential_1_lstm_1_while_lstm_cell_65_biasadd_readvariableop_resource_0"Ф
Gsequential_1_lstm_1_while_lstm_cell_65_matmul_1_readvariableop_resourceIsequential_1_lstm_1_while_lstm_cell_65_matmul_1_readvariableop_resource_0"Р
Esequential_1_lstm_1_while_lstm_cell_65_matmul_readvariableop_resourceGsequential_1_lstm_1_while_lstm_cell_65_matmul_readvariableop_resource_0"А
=sequential_1_lstm_1_while_sequential_1_lstm_1_strided_slice_1?sequential_1_lstm_1_while_sequential_1_lstm_1_strided_slice_1_0"ш
ysequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensor{sequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2~
=sequential_1/lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOp=sequential_1/lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOp2|
<sequential_1/lstm_1/while/lstm_cell_65/MatMul/ReadVariableOp<sequential_1/lstm_1/while/lstm_cell_65/MatMul/ReadVariableOp2А
>sequential_1/lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOp>sequential_1/lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOp: 

_output_shapes
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
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
г
Ю
M__inference_time_distributed_layer_call_and_return_conditional_losses_1547615

inputs8
&dense_2_matmul_readvariableop_resource:@@5
'dense_2_biasadd_readvariableop_resource:@
identityИҐdense_2/BiasAdd/ReadVariableOpҐdense_2/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
Reshape•
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_2/MatMul/ReadVariableOpХ
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_2/MatMul§
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_2/BiasAdd/ReadVariableOp°
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_2/BiasAddy
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_2/SigmoidВ
dense_2/mulMuldense_2/BiasAdd:output:0dense_2/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_2/muls
dense_2/IdentityIdentitydense_2/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_2/Identity÷
dense_2/IdentityN	IdentityNdense_2/mul:z:0dense_2/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1547606*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
dense_2/IdentityNw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€   @   2
Reshape_1/shapeН
	Reshape_1Reshapedense_2/IdentityN:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€@2
	Reshape_1Ђ
IdentityIdentityReshape_1:output:0^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
§X
≥

lstm_1_while_body_1548405*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3)
%lstm_1_while_lstm_1_strided_slice_1_0e
alstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_1_while_lstm_cell_65_matmul_readvariableop_resource_0:	АP
<lstm_1_while_lstm_cell_65_matmul_1_readvariableop_resource_0:
ААJ
;lstm_1_while_lstm_cell_65_biasadd_readvariableop_resource_0:	А
lstm_1_while_identity
lstm_1_while_identity_1
lstm_1_while_identity_2
lstm_1_while_identity_3
lstm_1_while_identity_4
lstm_1_while_identity_5'
#lstm_1_while_lstm_1_strided_slice_1c
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensorK
8lstm_1_while_lstm_cell_65_matmul_readvariableop_resource:	АN
:lstm_1_while_lstm_cell_65_matmul_1_readvariableop_resource:
ААH
9lstm_1_while_lstm_cell_65_biasadd_readvariableop_resource:	АИҐ0lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOpҐ/lstm_1/while/lstm_cell_65/MatMul/ReadVariableOpҐ1lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOp—
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2@
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeэ
0lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0lstm_1_while_placeholderGlstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype022
0lstm_1/while/TensorArrayV2Read/TensorListGetItemё
/lstm_1/while/lstm_cell_65/MatMul/ReadVariableOpReadVariableOp:lstm_1_while_lstm_cell_65_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype021
/lstm_1/while/lstm_cell_65/MatMul/ReadVariableOpу
 lstm_1/while/lstm_cell_65/MatMulMatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_1/while/lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2"
 lstm_1/while/lstm_cell_65/MatMulе
1lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOp<lstm_1_while_lstm_cell_65_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype023
1lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOp№
"lstm_1/while/lstm_cell_65/MatMul_1MatMullstm_1_while_placeholder_29lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2$
"lstm_1/while/lstm_cell_65/MatMul_1‘
lstm_1/while/lstm_cell_65/addAddV2*lstm_1/while/lstm_cell_65/MatMul:product:0,lstm_1/while/lstm_cell_65/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/while/lstm_cell_65/addЁ
0lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOp;lstm_1_while_lstm_cell_65_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype022
0lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOpб
!lstm_1/while/lstm_cell_65/BiasAddBiasAdd!lstm_1/while/lstm_cell_65/add:z:08lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2#
!lstm_1/while/lstm_cell_65/BiasAddШ
)lstm_1/while/lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2+
)lstm_1/while/lstm_cell_65/split/split_dimЂ
lstm_1/while/lstm_cell_65/splitSplit2lstm_1/while/lstm_cell_65/split/split_dim:output:0*lstm_1/while/lstm_cell_65/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_split2!
lstm_1/while/lstm_cell_65/splitЃ
!lstm_1/while/lstm_cell_65/SigmoidSigmoid(lstm_1/while/lstm_cell_65/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2#
!lstm_1/while/lstm_cell_65/Sigmoid≤
#lstm_1/while/lstm_cell_65/Sigmoid_1Sigmoid(lstm_1/while/lstm_cell_65/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€А2%
#lstm_1/while/lstm_cell_65/Sigmoid_1љ
lstm_1/while/lstm_cell_65/mulMul'lstm_1/while/lstm_cell_65/Sigmoid_1:y:0lstm_1_while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/while/lstm_cell_65/mul≤
#lstm_1/while/lstm_cell_65/Sigmoid_2Sigmoid(lstm_1/while/lstm_cell_65/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€А2%
#lstm_1/while/lstm_cell_65/Sigmoid_2ѕ
lstm_1/while/lstm_cell_65/mul_1Mul(lstm_1/while/lstm_cell_65/split:output:2'lstm_1/while/lstm_cell_65/Sigmoid_2:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
lstm_1/while/lstm_cell_65/mul_1ђ
"lstm_1/while/lstm_cell_65/IdentityIdentity#lstm_1/while/lstm_cell_65/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2$
"lstm_1/while/lstm_cell_65/Identity†
#lstm_1/while/lstm_cell_65/IdentityN	IdentityN#lstm_1/while/lstm_cell_65/mul_1:z:0(lstm_1/while/lstm_cell_65/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1548447*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2%
#lstm_1/while/lstm_cell_65/IdentityN—
lstm_1/while/lstm_cell_65/mul_2Mul%lstm_1/while/lstm_cell_65/Sigmoid:y:0,lstm_1/while/lstm_cell_65/IdentityN:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
lstm_1/while/lstm_cell_65/mul_2∆
lstm_1/while/lstm_cell_65/add_1AddV2!lstm_1/while/lstm_cell_65/mul:z:0#lstm_1/while/lstm_cell_65/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
lstm_1/while/lstm_cell_65/add_1≤
#lstm_1/while/lstm_cell_65/Sigmoid_3Sigmoid(lstm_1/while/lstm_cell_65/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А2%
#lstm_1/while/lstm_cell_65/Sigmoid_3≠
#lstm_1/while/lstm_cell_65/Sigmoid_4Sigmoid#lstm_1/while/lstm_cell_65/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2%
#lstm_1/while/lstm_cell_65/Sigmoid_4 
lstm_1/while/lstm_cell_65/mul_3Mul#lstm_1/while/lstm_cell_65/add_1:z:0'lstm_1/while/lstm_cell_65/Sigmoid_4:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
lstm_1/while/lstm_cell_65/mul_3∞
$lstm_1/while/lstm_cell_65/Identity_1Identity#lstm_1/while/lstm_cell_65/mul_3:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2&
$lstm_1/while/lstm_cell_65/Identity_1Я
%lstm_1/while/lstm_cell_65/IdentityN_1	IdentityN#lstm_1/while/lstm_cell_65/mul_3:z:0#lstm_1/while/lstm_cell_65/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1548456*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2'
%lstm_1/while/lstm_cell_65/IdentityN_1’
lstm_1/while/lstm_cell_65/mul_4Mul'lstm_1/while/lstm_cell_65/Sigmoid_3:y:0.lstm_1/while/lstm_cell_65/IdentityN_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
lstm_1/while/lstm_cell_65/mul_4Г
1lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_1_while_placeholder_1lstm_1_while_placeholder#lstm_1/while/lstm_cell_65/mul_4:z:0*
_output_shapes
: *
element_dtype023
1lstm_1/while/TensorArrayV2Write/TensorListSetItemj
lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/while/add/yЕ
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
lstm_1/while/add_1/yЩ
lstm_1/while/add_1AddV2&lstm_1_while_lstm_1_while_loop_counterlstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_1/while/add_1М
lstm_1/while/IdentityIdentitylstm_1/while/add_1:z:01^lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_65/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity¶
lstm_1/while/Identity_1Identity,lstm_1_while_lstm_1_while_maximum_iterations1^lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_65/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_1О
lstm_1/while/Identity_2Identitylstm_1/while/add:z:01^lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_65/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_2ї
lstm_1/while/Identity_3IdentityAlstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:01^lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_65/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_3ѓ
lstm_1/while/Identity_4Identity#lstm_1/while/lstm_cell_65/mul_4:z:01^lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_65/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/while/Identity_4ѓ
lstm_1/while/Identity_5Identity#lstm_1/while/lstm_cell_65/add_1:z:01^lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOp0^lstm_1/while/lstm_cell_65/MatMul/ReadVariableOp2^lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/while/Identity_5"7
lstm_1_while_identitylstm_1/while/Identity:output:0";
lstm_1_while_identity_1 lstm_1/while/Identity_1:output:0";
lstm_1_while_identity_2 lstm_1/while/Identity_2:output:0";
lstm_1_while_identity_3 lstm_1/while/Identity_3:output:0";
lstm_1_while_identity_4 lstm_1/while/Identity_4:output:0";
lstm_1_while_identity_5 lstm_1/while/Identity_5:output:0"L
#lstm_1_while_lstm_1_strided_slice_1%lstm_1_while_lstm_1_strided_slice_1_0"x
9lstm_1_while_lstm_cell_65_biasadd_readvariableop_resource;lstm_1_while_lstm_cell_65_biasadd_readvariableop_resource_0"z
:lstm_1_while_lstm_cell_65_matmul_1_readvariableop_resource<lstm_1_while_lstm_cell_65_matmul_1_readvariableop_resource_0"v
8lstm_1_while_lstm_cell_65_matmul_readvariableop_resource:lstm_1_while_lstm_cell_65_matmul_readvariableop_resource_0"ƒ
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensoralstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2d
0lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOp0lstm_1/while/lstm_cell_65/BiasAdd/ReadVariableOp2b
/lstm_1/while/lstm_cell_65/MatMul/ReadVariableOp/lstm_1/while/lstm_cell_65/MatMul/ReadVariableOp2f
1lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOp1lstm_1/while/lstm_cell_65/MatMul_1/ReadVariableOp: 

_output_shapes
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
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
Х
†
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_1547693

inputs8
&dense_3_matmul_readvariableop_resource:@5
'dense_3_biasadd_readvariableop_resource:
identityИҐdense_3/BiasAdd/ReadVariableOpҐdense_3/MatMul/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
Reshape•
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_3/MatMul/ReadVariableOpХ
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_3/MatMul§
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp°
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_3/BiasAddw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€      2
Reshape_1/shapeЛ
	Reshape_1Reshapedense_3/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
	Reshape_1Ђ
IdentityIdentityReshape_1:output:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
џ
ґ
(__inference_lstm_2_layer_call_fn_1550559

inputs
unknown:
АА
	unknown_0:	@А
	unknown_1:	А
identityИҐStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_2_layer_call_and_return_conditional_losses_15475882
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:€€€€€€€€€А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ЁL
”
while_body_1549362
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_65_matmul_readvariableop_resource_0:	АI
5while_lstm_cell_65_matmul_1_readvariableop_resource_0:
ААC
4while_lstm_cell_65_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_65_matmul_readvariableop_resource:	АG
3while_lstm_cell_65_matmul_1_readvariableop_resource:
ААA
2while_lstm_cell_65_biasadd_readvariableop_resource:	АИҐ)while/lstm_cell_65/BiasAdd/ReadVariableOpҐ(while/lstm_cell_65/MatMul/ReadVariableOpҐ*while/lstm_cell_65/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem…
(while/lstm_cell_65/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_65_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02*
(while/lstm_cell_65/MatMul/ReadVariableOp„
while/lstm_cell_65/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/MatMul–
*while/lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_65_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02,
*while/lstm_cell_65/MatMul_1/ReadVariableOpј
while/lstm_cell_65/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/MatMul_1Є
while/lstm_cell_65/addAddV2#while/lstm_cell_65/MatMul:product:0%while/lstm_cell_65/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/add»
)while/lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_65_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02+
)while/lstm_cell_65/BiasAdd/ReadVariableOp≈
while/lstm_cell_65/BiasAddBiasAddwhile/lstm_cell_65/add:z:01while/lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/BiasAddК
"while/lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_65/split/split_dimП
while/lstm_cell_65/splitSplit+while/lstm_cell_65/split/split_dim:output:0#while/lstm_cell_65/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_split2
while/lstm_cell_65/splitЩ
while/lstm_cell_65/SigmoidSigmoid!while/lstm_cell_65/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/SigmoidЭ
while/lstm_cell_65/Sigmoid_1Sigmoid!while/lstm_cell_65/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/Sigmoid_1°
while/lstm_cell_65/mulMul while/lstm_cell_65/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/mulЭ
while/lstm_cell_65/Sigmoid_2Sigmoid!while/lstm_cell_65/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/Sigmoid_2≥
while/lstm_cell_65/mul_1Mul!while/lstm_cell_65/split:output:2 while/lstm_cell_65/Sigmoid_2:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/mul_1Ч
while/lstm_cell_65/IdentityIdentitywhile/lstm_cell_65/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/IdentityД
while/lstm_cell_65/IdentityN	IdentityNwhile/lstm_cell_65/mul_1:z:0!while/lstm_cell_65/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1549404*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2
while/lstm_cell_65/IdentityNµ
while/lstm_cell_65/mul_2Mulwhile/lstm_cell_65/Sigmoid:y:0%while/lstm_cell_65/IdentityN:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/mul_2™
while/lstm_cell_65/add_1AddV2while/lstm_cell_65/mul:z:0while/lstm_cell_65/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/add_1Э
while/lstm_cell_65/Sigmoid_3Sigmoid!while/lstm_cell_65/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/Sigmoid_3Ш
while/lstm_cell_65/Sigmoid_4Sigmoidwhile/lstm_cell_65/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/Sigmoid_4Ѓ
while/lstm_cell_65/mul_3Mulwhile/lstm_cell_65/add_1:z:0 while/lstm_cell_65/Sigmoid_4:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/mul_3Ы
while/lstm_cell_65/Identity_1Identitywhile/lstm_cell_65/mul_3:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/Identity_1Г
while/lstm_cell_65/IdentityN_1	IdentityNwhile/lstm_cell_65/mul_3:z:0while/lstm_cell_65/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1549413*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2 
while/lstm_cell_65/IdentityN_1є
while/lstm_cell_65/mul_4Mul while/lstm_cell_65/Sigmoid_3:y:0'while/lstm_cell_65/IdentityN_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/mul_4а
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_65/mul_4:z:0*
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
while/add_1в
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityх
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1д
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2С
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Е
while/Identity_4Identitywhile/lstm_cell_65/mul_4:z:0*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_4Е
while/Identity_5Identitywhile/lstm_cell_65/add_1:z:0*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_65_biasadd_readvariableop_resource4while_lstm_cell_65_biasadd_readvariableop_resource_0"l
3while_lstm_cell_65_matmul_1_readvariableop_resource5while_lstm_cell_65_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_65_matmul_readvariableop_resource3while_lstm_cell_65_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2V
)while/lstm_cell_65/BiasAdd/ReadVariableOp)while/lstm_cell_65/BiasAdd/ReadVariableOp2T
(while/lstm_cell_65/MatMul/ReadVariableOp(while/lstm_cell_65/MatMul/ReadVariableOp2X
*while/lstm_cell_65/MatMul_1/ReadVariableOp*while/lstm_cell_65/MatMul_1/ReadVariableOp: 

_output_shapes
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
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
љE
Й
C__inference_lstm_2_layer_call_and_return_conditional_losses_1546467

inputs(
lstm_cell_66_1546385:
АА'
lstm_cell_66_1546387:	@А#
lstm_cell_66_1546389:	А
identityИҐ$lstm_cell_66/StatefulPartitionedCallҐwhileD
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
strided_slice/stack_2в
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
B :и2
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
:€€€€€€€€€@2
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
B :и2
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
:€€€€€€€€€@2	
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
!:€€€€€€€€€€€€€€€€€€А2
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
strided_slice_1/stack_2о
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
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2э
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_2°
$lstm_cell_66/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_66_1546385lstm_cell_66_1546387lstm_cell_66_1546389*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_15463842&
$lstm_cell_66/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter®
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_66_1546385lstm_cell_66_1546387lstm_cell_66_1546389*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€@:€€€€€€€€€@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1546398*
condR
while_cond_1546397*K
output_shapes:
8: : : : :€€€€€€€€€@:€€€€€€€€€@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
:€€€€€€€€€@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeЯ
IdentityIdentitytranspose_1:y:0%^lstm_cell_66/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€€€€€€€€€€А: : : 2L
$lstm_cell_66/StatefulPartitionedCall$lstm_cell_66/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
є
ч
D__inference_dense_2_layer_call_and_return_conditional_losses_1551058

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
Sigmoidb
mulMulBiasAdd:output:0Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
mul[
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2

Identityґ
	IdentityN	IdentityNmul:z:0BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1551051*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
	IdentityNЫ

Identity_1IdentityIdentityN:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ЁL
”
while_body_1549191
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_65_matmul_readvariableop_resource_0:	АI
5while_lstm_cell_65_matmul_1_readvariableop_resource_0:
ААC
4while_lstm_cell_65_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_65_matmul_readvariableop_resource:	АG
3while_lstm_cell_65_matmul_1_readvariableop_resource:
ААA
2while_lstm_cell_65_biasadd_readvariableop_resource:	АИҐ)while/lstm_cell_65/BiasAdd/ReadVariableOpҐ(while/lstm_cell_65/MatMul/ReadVariableOpҐ*while/lstm_cell_65/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem…
(while/lstm_cell_65/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_65_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02*
(while/lstm_cell_65/MatMul/ReadVariableOp„
while/lstm_cell_65/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/MatMul–
*while/lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_65_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02,
*while/lstm_cell_65/MatMul_1/ReadVariableOpј
while/lstm_cell_65/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/MatMul_1Є
while/lstm_cell_65/addAddV2#while/lstm_cell_65/MatMul:product:0%while/lstm_cell_65/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/add»
)while/lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_65_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02+
)while/lstm_cell_65/BiasAdd/ReadVariableOp≈
while/lstm_cell_65/BiasAddBiasAddwhile/lstm_cell_65/add:z:01while/lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/BiasAddК
"while/lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_65/split/split_dimП
while/lstm_cell_65/splitSplit+while/lstm_cell_65/split/split_dim:output:0#while/lstm_cell_65/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_split2
while/lstm_cell_65/splitЩ
while/lstm_cell_65/SigmoidSigmoid!while/lstm_cell_65/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/SigmoidЭ
while/lstm_cell_65/Sigmoid_1Sigmoid!while/lstm_cell_65/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/Sigmoid_1°
while/lstm_cell_65/mulMul while/lstm_cell_65/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/mulЭ
while/lstm_cell_65/Sigmoid_2Sigmoid!while/lstm_cell_65/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/Sigmoid_2≥
while/lstm_cell_65/mul_1Mul!while/lstm_cell_65/split:output:2 while/lstm_cell_65/Sigmoid_2:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/mul_1Ч
while/lstm_cell_65/IdentityIdentitywhile/lstm_cell_65/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/IdentityД
while/lstm_cell_65/IdentityN	IdentityNwhile/lstm_cell_65/mul_1:z:0!while/lstm_cell_65/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1549233*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2
while/lstm_cell_65/IdentityNµ
while/lstm_cell_65/mul_2Mulwhile/lstm_cell_65/Sigmoid:y:0%while/lstm_cell_65/IdentityN:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/mul_2™
while/lstm_cell_65/add_1AddV2while/lstm_cell_65/mul:z:0while/lstm_cell_65/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/add_1Э
while/lstm_cell_65/Sigmoid_3Sigmoid!while/lstm_cell_65/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/Sigmoid_3Ш
while/lstm_cell_65/Sigmoid_4Sigmoidwhile/lstm_cell_65/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/Sigmoid_4Ѓ
while/lstm_cell_65/mul_3Mulwhile/lstm_cell_65/add_1:z:0 while/lstm_cell_65/Sigmoid_4:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/mul_3Ы
while/lstm_cell_65/Identity_1Identitywhile/lstm_cell_65/mul_3:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/Identity_1Г
while/lstm_cell_65/IdentityN_1	IdentityNwhile/lstm_cell_65/mul_3:z:0while/lstm_cell_65/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1549242*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2 
while/lstm_cell_65/IdentityN_1є
while/lstm_cell_65/mul_4Mul while/lstm_cell_65/Sigmoid_3:y:0'while/lstm_cell_65/IdentityN_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/mul_4а
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_65/mul_4:z:0*
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
while/add_1в
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityх
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1д
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2С
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Е
while/Identity_4Identitywhile/lstm_cell_65/mul_4:z:0*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_4Е
while/Identity_5Identitywhile/lstm_cell_65/add_1:z:0*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_65_biasadd_readvariableop_resource4while_lstm_cell_65_biasadd_readvariableop_resource_0"l
3while_lstm_cell_65_matmul_1_readvariableop_resource5while_lstm_cell_65_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_65_matmul_readvariableop_resource3while_lstm_cell_65_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2V
)while/lstm_cell_65/BiasAdd/ReadVariableOp)while/lstm_cell_65/BiasAdd/ReadVariableOp2T
(while/lstm_cell_65/MatMul/ReadVariableOp(while/lstm_cell_65/MatMul/ReadVariableOp2X
*while/lstm_cell_65/MatMul_1/ReadVariableOp*while/lstm_cell_65/MatMul_1/ReadVariableOp: 

_output_shapes
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
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
мc
Ю
C__inference_lstm_2_layer_call_and_return_conditional_losses_1550013
inputs_0?
+lstm_cell_66_matmul_readvariableop_resource:
АА@
-lstm_cell_66_matmul_1_readvariableop_resource:	@А;
,lstm_cell_66_biasadd_readvariableop_resource:	А
identityИҐ#lstm_cell_66/BiasAdd/ReadVariableOpҐ"lstm_cell_66/MatMul/ReadVariableOpҐ$lstm_cell_66/MatMul_1/ReadVariableOpҐwhileF
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
strided_slice/stack_2в
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
B :и2
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
:€€€€€€€€€@2
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
B :и2
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
:€€€€€€€€€@2	
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
!:€€€€€€€€€€€€€€€€€€А2
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
strided_slice_1/stack_2о
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
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2э
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_2ґ
"lstm_cell_66/MatMul/ReadVariableOpReadVariableOp+lstm_cell_66_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02$
"lstm_cell_66/MatMul/ReadVariableOp≠
lstm_cell_66/MatMulMatMulstrided_slice_2:output:0*lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_66/MatMulї
$lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_66_matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02&
$lstm_cell_66/MatMul_1/ReadVariableOp©
lstm_cell_66/MatMul_1MatMulzeros:output:0,lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_66/MatMul_1†
lstm_cell_66/addAddV2lstm_cell_66/MatMul:product:0lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_66/addі
#lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#lstm_cell_66/BiasAdd/ReadVariableOp≠
lstm_cell_66/BiasAddBiasAddlstm_cell_66/add:z:0+lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_66/BiasAdd~
lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_66/split/split_dimу
lstm_cell_66/splitSplit%lstm_cell_66/split/split_dim:output:0lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split2
lstm_cell_66/splitЖ
lstm_cell_66/SigmoidSigmoidlstm_cell_66/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/SigmoidК
lstm_cell_66/Sigmoid_1Sigmoidlstm_cell_66/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Sigmoid_1Л
lstm_cell_66/mulMullstm_cell_66/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/mulК
lstm_cell_66/Sigmoid_2Sigmoidlstm_cell_66/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Sigmoid_2Ъ
lstm_cell_66/mul_1Mullstm_cell_66/split:output:2lstm_cell_66/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/mul_1Д
lstm_cell_66/IdentityIdentitylstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Identityк
lstm_cell_66/IdentityN	IdentityNlstm_cell_66/mul_1:z:0lstm_cell_66/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1549899*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
lstm_cell_66/IdentityNЬ
lstm_cell_66/mul_2Mullstm_cell_66/Sigmoid:y:0lstm_cell_66/IdentityN:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/mul_2С
lstm_cell_66/add_1AddV2lstm_cell_66/mul:z:0lstm_cell_66/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/add_1К
lstm_cell_66/Sigmoid_3Sigmoidlstm_cell_66/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Sigmoid_3Е
lstm_cell_66/Sigmoid_4Sigmoidlstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Sigmoid_4Х
lstm_cell_66/mul_3Mullstm_cell_66/add_1:z:0lstm_cell_66/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/mul_3И
lstm_cell_66/Identity_1Identitylstm_cell_66/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Identity_1й
lstm_cell_66/IdentityN_1	IdentityNlstm_cell_66/mul_3:z:0lstm_cell_66/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1549908*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
lstm_cell_66/IdentityN_1†
lstm_cell_66/mul_4Mullstm_cell_66/Sigmoid_3:y:0!lstm_cell_66/IdentityN_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/mul_4П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterр
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_66_matmul_readvariableop_resource-lstm_cell_66_matmul_1_readvariableop_resource,lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€@:€€€€€€€€€@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1549919*
condR
while_cond_1549918*K
output_shapes:
8: : : : :€€€€€€€€€@:€€€€€€€€€@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
:€€€€€€€€€@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeк
IdentityIdentitytranspose_1:y:0$^lstm_cell_66/BiasAdd/ReadVariableOp#^lstm_cell_66/MatMul/ReadVariableOp%^lstm_cell_66/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€€€€€€€€€€А: : : 2J
#lstm_cell_66/BiasAdd/ReadVariableOp#lstm_cell_66/BiasAdd/ReadVariableOp2H
"lstm_cell_66/MatMul/ReadVariableOp"lstm_cell_66/MatMul/ReadVariableOp2L
$lstm_cell_66/MatMul_1/ReadVariableOp$lstm_cell_66/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
"
_user_specified_name
inputs/0
Лd
Ю
C__inference_lstm_1_layer_call_and_return_conditional_losses_1549285
inputs_0>
+lstm_cell_65_matmul_readvariableop_resource:	АA
-lstm_cell_65_matmul_1_readvariableop_resource:
АА;
,lstm_cell_65_biasadd_readvariableop_resource:	А
identityИҐ#lstm_cell_65/BiasAdd/ReadVariableOpҐ"lstm_cell_65/MatMul/ReadVariableOpҐ$lstm_cell_65/MatMul_1/ReadVariableOpҐwhileF
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
strided_slice/stack_2в
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
B :и2
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
:€€€€€€€€€А2
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
B :и2
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
:€€€€€€€€€А2	
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
 :€€€€€€€€€€€€€€€€€€2
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
strided_slice_1/stack_2о
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
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2µ
"lstm_cell_65/MatMul/ReadVariableOpReadVariableOp+lstm_cell_65_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02$
"lstm_cell_65/MatMul/ReadVariableOp≠
lstm_cell_65/MatMulMatMulstrided_slice_2:output:0*lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/MatMulЉ
$lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_65_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02&
$lstm_cell_65/MatMul_1/ReadVariableOp©
lstm_cell_65/MatMul_1MatMulzeros:output:0,lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/MatMul_1†
lstm_cell_65/addAddV2lstm_cell_65/MatMul:product:0lstm_cell_65/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/addі
#lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_65_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#lstm_cell_65/BiasAdd/ReadVariableOp≠
lstm_cell_65/BiasAddBiasAddlstm_cell_65/add:z:0+lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/BiasAdd~
lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_65/split/split_dimч
lstm_cell_65/splitSplit%lstm_cell_65/split/split_dim:output:0lstm_cell_65/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_split2
lstm_cell_65/splitЗ
lstm_cell_65/SigmoidSigmoidlstm_cell_65/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/SigmoidЛ
lstm_cell_65/Sigmoid_1Sigmoidlstm_cell_65/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Sigmoid_1М
lstm_cell_65/mulMullstm_cell_65/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/mulЛ
lstm_cell_65/Sigmoid_2Sigmoidlstm_cell_65/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Sigmoid_2Ы
lstm_cell_65/mul_1Mullstm_cell_65/split:output:2lstm_cell_65/Sigmoid_2:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/mul_1Е
lstm_cell_65/IdentityIdentitylstm_cell_65/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Identityм
lstm_cell_65/IdentityN	IdentityNlstm_cell_65/mul_1:z:0lstm_cell_65/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1549171*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2
lstm_cell_65/IdentityNЭ
lstm_cell_65/mul_2Mullstm_cell_65/Sigmoid:y:0lstm_cell_65/IdentityN:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/mul_2Т
lstm_cell_65/add_1AddV2lstm_cell_65/mul:z:0lstm_cell_65/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/add_1Л
lstm_cell_65/Sigmoid_3Sigmoidlstm_cell_65/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Sigmoid_3Ж
lstm_cell_65/Sigmoid_4Sigmoidlstm_cell_65/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Sigmoid_4Ц
lstm_cell_65/mul_3Mullstm_cell_65/add_1:z:0lstm_cell_65/Sigmoid_4:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/mul_3Й
lstm_cell_65/Identity_1Identitylstm_cell_65/mul_3:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Identity_1л
lstm_cell_65/IdentityN_1	IdentityNlstm_cell_65/mul_3:z:0lstm_cell_65/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1549180*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2
lstm_cell_65/IdentityN_1°
lstm_cell_65/mul_4Mullstm_cell_65/Sigmoid_3:y:0!lstm_cell_65/IdentityN_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/mul_4П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterф
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_65_matmul_readvariableop_resource-lstm_cell_65_matmul_1_readvariableop_resource,lstm_cell_65_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1549191*
condR
while_cond_1549190*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   22
0TensorArrayV2Stack/TensorListStack/element_shapeт
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permѓ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeл
IdentityIdentitytranspose_1:y:0$^lstm_cell_65/BiasAdd/ReadVariableOp#^lstm_cell_65/MatMul/ReadVariableOp%^lstm_cell_65/MatMul_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2J
#lstm_cell_65/BiasAdd/ReadVariableOp#lstm_cell_65/BiasAdd/ReadVariableOp2H
"lstm_cell_65/MatMul/ReadVariableOp"lstm_cell_65/MatMul/ReadVariableOp2L
$lstm_cell_65/MatMul_1/ReadVariableOp$lstm_cell_65/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs/0
Є
Ў
&sequential_1_lstm_1_while_cond_1545357D
@sequential_1_lstm_1_while_sequential_1_lstm_1_while_loop_counterJ
Fsequential_1_lstm_1_while_sequential_1_lstm_1_while_maximum_iterations)
%sequential_1_lstm_1_while_placeholder+
'sequential_1_lstm_1_while_placeholder_1+
'sequential_1_lstm_1_while_placeholder_2+
'sequential_1_lstm_1_while_placeholder_3F
Bsequential_1_lstm_1_while_less_sequential_1_lstm_1_strided_slice_1]
Ysequential_1_lstm_1_while_sequential_1_lstm_1_while_cond_1545357___redundant_placeholder0]
Ysequential_1_lstm_1_while_sequential_1_lstm_1_while_cond_1545357___redundant_placeholder1]
Ysequential_1_lstm_1_while_sequential_1_lstm_1_while_cond_1545357___redundant_placeholder2]
Ysequential_1_lstm_1_while_sequential_1_lstm_1_while_cond_1545357___redundant_placeholder3&
"sequential_1_lstm_1_while_identity
‘
sequential_1/lstm_1/while/LessLess%sequential_1_lstm_1_while_placeholderBsequential_1_lstm_1_while_less_sequential_1_lstm_1_strided_slice_1*
T0*
_output_shapes
: 2 
sequential_1/lstm_1/while/LessЩ
"sequential_1/lstm_1/while/IdentityIdentity"sequential_1/lstm_1/while/Less:z:0*
T0
*
_output_shapes
: 2$
"sequential_1/lstm_1/while/Identity"Q
"sequential_1_lstm_1_while_identity+sequential_1/lstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€А:€€€€€€€€€А: ::::: 

_output_shapes
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
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
Ѕ
°
4__inference_time_distributed_1_layer_call_fn_1550806

inputs
unknown:@
	unknown_0:
identityИҐStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_15476932
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Џ
»
while_cond_1546617
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1546617___redundant_placeholder05
1while_while_cond_1546617___redundant_placeholder15
1while_while_cond_1546617___redundant_placeholder25
1while_while_cond_1546617___redundant_placeholder3
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
@: : : : :€€€€€€€€€@:€€€€€€€€€@: ::::: 

_output_shapes
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
:€€€€€€€€€@:-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
:
√L
”
while_body_1549919
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_66_matmul_readvariableop_resource_0:
ААH
5while_lstm_cell_66_matmul_1_readvariableop_resource_0:	@АC
4while_lstm_cell_66_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_66_matmul_readvariableop_resource:
ААF
3while_lstm_cell_66_matmul_1_readvariableop_resource:	@АA
2while_lstm_cell_66_biasadd_readvariableop_resource:	АИҐ)while/lstm_cell_66/BiasAdd/ReadVariableOpҐ(while/lstm_cell_66/MatMul/ReadVariableOpҐ*while/lstm_cell_66/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape‘
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem 
(while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_66_matmul_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02*
(while/lstm_cell_66/MatMul/ReadVariableOp„
while/lstm_cell_66/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_66/MatMulѕ
*while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_66_matmul_1_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02,
*while/lstm_cell_66/MatMul_1/ReadVariableOpј
while/lstm_cell_66/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_66/MatMul_1Є
while/lstm_cell_66/addAddV2#while/lstm_cell_66/MatMul:product:0%while/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_66/add»
)while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02+
)while/lstm_cell_66/BiasAdd/ReadVariableOp≈
while/lstm_cell_66/BiasAddBiasAddwhile/lstm_cell_66/add:z:01while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_66/BiasAddК
"while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_66/split/split_dimЛ
while/lstm_cell_66/splitSplit+while/lstm_cell_66/split/split_dim:output:0#while/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split2
while/lstm_cell_66/splitШ
while/lstm_cell_66/SigmoidSigmoid!while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/SigmoidЬ
while/lstm_cell_66/Sigmoid_1Sigmoid!while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/Sigmoid_1†
while/lstm_cell_66/mulMul while/lstm_cell_66/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/mulЬ
while/lstm_cell_66/Sigmoid_2Sigmoid!while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/Sigmoid_2≤
while/lstm_cell_66/mul_1Mul!while/lstm_cell_66/split:output:2 while/lstm_cell_66/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/mul_1Ц
while/lstm_cell_66/IdentityIdentitywhile/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/IdentityВ
while/lstm_cell_66/IdentityN	IdentityNwhile/lstm_cell_66/mul_1:z:0!while/lstm_cell_66/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1549961*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
while/lstm_cell_66/IdentityNі
while/lstm_cell_66/mul_2Mulwhile/lstm_cell_66/Sigmoid:y:0%while/lstm_cell_66/IdentityN:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/mul_2©
while/lstm_cell_66/add_1AddV2while/lstm_cell_66/mul:z:0while/lstm_cell_66/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/add_1Ь
while/lstm_cell_66/Sigmoid_3Sigmoid!while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/Sigmoid_3Ч
while/lstm_cell_66/Sigmoid_4Sigmoidwhile/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/Sigmoid_4≠
while/lstm_cell_66/mul_3Mulwhile/lstm_cell_66/add_1:z:0 while/lstm_cell_66/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/mul_3Ъ
while/lstm_cell_66/Identity_1Identitywhile/lstm_cell_66/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/Identity_1Б
while/lstm_cell_66/IdentityN_1	IdentityNwhile/lstm_cell_66/mul_3:z:0while/lstm_cell_66/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1549970*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2 
while/lstm_cell_66/IdentityN_1Є
while/lstm_cell_66/mul_4Mul while/lstm_cell_66/Sigmoid_3:y:0'while/lstm_cell_66/IdentityN_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/mul_4а
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_66/mul_4:z:0*
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
while/add_1в
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityх
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1д
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2С
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Д
while/Identity_4Identitywhile/lstm_cell_66/mul_4:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2
while/Identity_4Д
while/Identity_5Identitywhile/lstm_cell_66/add_1:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_66_biasadd_readvariableop_resource4while_lstm_cell_66_biasadd_readvariableop_resource_0"l
3while_lstm_cell_66_matmul_1_readvariableop_resource5while_lstm_cell_66_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_66_matmul_readvariableop_resource3while_lstm_cell_66_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€@:€€€€€€€€€@: : : : : 2V
)while/lstm_cell_66/BiasAdd/ReadVariableOp)while/lstm_cell_66/BiasAdd/ReadVariableOp2T
(while/lstm_cell_66/MatMul/ReadVariableOp(while/lstm_cell_66/MatMul/ReadVariableOp2X
*while/lstm_cell_66/MatMul_1/ReadVariableOp*while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
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
:€€€€€€€€€@:-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
: 
£

Е
.__inference_sequential_1_layer_call_fn_1548231
lstm_1_input
unknown:	А
	unknown_0:
АА
	unknown_1:	А
	unknown_2:
АА
	unknown_3:	@А
	unknown_4:	А
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:
identityИҐStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCalllstm_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*,
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
I__inference_sequential_1_layer_call_and_return_conditional_losses_15481832
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:€€€€€€€€€
&
_user_specified_namelstm_1_input
Џ
»
while_cond_1550260
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1550260___redundant_placeholder05
1while_while_cond_1550260___redundant_placeholder15
1while_while_cond_1550260___redundant_placeholder25
1while_while_cond_1550260___redundant_placeholder3
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
@: : : : :€€€€€€€€€@:€€€€€€€€€@: ::::: 

_output_shapes
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
:€€€€€€€€€@:-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
:
‘
–
M__inference_time_distributed_layer_call_and_return_conditional_losses_1546990

inputs!
dense_2_1546980:@@
dense_2_1546982:@
identityИҐdense_2/StatefulPartitionedCallD
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
strided_slice/stack_2в
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
valueB"€€€€@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
ReshapeЬ
dense_2/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_2_1546980dense_2_1546982*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_15469792!
dense_2/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2
Reshape_1/shape/2®
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape§
	Reshape_1Reshape(dense_2/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2
	Reshape_1Х
IdentityIdentityReshape_1:output:0 ^dense_2/StatefulPartitionedCall*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€@: : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
ё
»
while_cond_1545747
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1545747___redundant_placeholder05
1while_while_cond_1545747___redundant_placeholder15
1while_while_cond_1545747___redundant_placeholder25
1while_while_cond_1545747___redundant_placeholder3
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
B: : : : :€€€€€€€€€А:€€€€€€€€€А: ::::: 

_output_shapes
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
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
–	
х
D__inference_dense_3_layer_call_and_return_conditional_losses_1551077

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
≠c
Ь
C__inference_lstm_2_layer_call_and_return_conditional_losses_1547922

inputs?
+lstm_cell_66_matmul_readvariableop_resource:
АА@
-lstm_cell_66_matmul_1_readvariableop_resource:	@А;
,lstm_cell_66_biasadd_readvariableop_resource:	А
identityИҐ#lstm_cell_66/BiasAdd/ReadVariableOpҐ"lstm_cell_66/MatMul/ReadVariableOpҐ$lstm_cell_66/MatMul_1/ReadVariableOpҐwhileD
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
strided_slice/stack_2в
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
B :и2
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
:€€€€€€€€€@2
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
B :и2
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
:€€€€€€€€€@2	
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
:€€€€€€€€€А2
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
strided_slice_1/stack_2о
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
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2э
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_2ґ
"lstm_cell_66/MatMul/ReadVariableOpReadVariableOp+lstm_cell_66_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02$
"lstm_cell_66/MatMul/ReadVariableOp≠
lstm_cell_66/MatMulMatMulstrided_slice_2:output:0*lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_66/MatMulї
$lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_66_matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02&
$lstm_cell_66/MatMul_1/ReadVariableOp©
lstm_cell_66/MatMul_1MatMulzeros:output:0,lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_66/MatMul_1†
lstm_cell_66/addAddV2lstm_cell_66/MatMul:product:0lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_66/addі
#lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#lstm_cell_66/BiasAdd/ReadVariableOp≠
lstm_cell_66/BiasAddBiasAddlstm_cell_66/add:z:0+lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_66/BiasAdd~
lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_66/split/split_dimу
lstm_cell_66/splitSplit%lstm_cell_66/split/split_dim:output:0lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split2
lstm_cell_66/splitЖ
lstm_cell_66/SigmoidSigmoidlstm_cell_66/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/SigmoidК
lstm_cell_66/Sigmoid_1Sigmoidlstm_cell_66/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Sigmoid_1Л
lstm_cell_66/mulMullstm_cell_66/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/mulК
lstm_cell_66/Sigmoid_2Sigmoidlstm_cell_66/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Sigmoid_2Ъ
lstm_cell_66/mul_1Mullstm_cell_66/split:output:2lstm_cell_66/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/mul_1Д
lstm_cell_66/IdentityIdentitylstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Identityк
lstm_cell_66/IdentityN	IdentityNlstm_cell_66/mul_1:z:0lstm_cell_66/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1547808*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
lstm_cell_66/IdentityNЬ
lstm_cell_66/mul_2Mullstm_cell_66/Sigmoid:y:0lstm_cell_66/IdentityN:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/mul_2С
lstm_cell_66/add_1AddV2lstm_cell_66/mul:z:0lstm_cell_66/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/add_1К
lstm_cell_66/Sigmoid_3Sigmoidlstm_cell_66/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Sigmoid_3Е
lstm_cell_66/Sigmoid_4Sigmoidlstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Sigmoid_4Х
lstm_cell_66/mul_3Mullstm_cell_66/add_1:z:0lstm_cell_66/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/mul_3И
lstm_cell_66/Identity_1Identitylstm_cell_66/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Identity_1й
lstm_cell_66/IdentityN_1	IdentityNlstm_cell_66/mul_3:z:0lstm_cell_66/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1547817*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
lstm_cell_66/IdentityN_1†
lstm_cell_66/mul_4Mullstm_cell_66/Sigmoid_3:y:0!lstm_cell_66/IdentityN_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/mul_4П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterр
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_66_matmul_readvariableop_resource-lstm_cell_66_matmul_1_readvariableop_resource,lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€@:€€€€€€€€€@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1547828*
condR
while_cond_1547827*K
output_shapes:
8: : : : :€€€€€€€€€@:€€€€€€€€€@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€@*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
:€€€€€€€€€@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeб
IdentityIdentitytranspose_1:y:0$^lstm_cell_66/BiasAdd/ReadVariableOp#^lstm_cell_66/MatMul/ReadVariableOp%^lstm_cell_66/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:€€€€€€€€€А: : : 2J
#lstm_cell_66/BiasAdd/ReadVariableOp#lstm_cell_66/BiasAdd/ReadVariableOp2H
"lstm_cell_66/MatMul/ReadVariableOp"lstm_cell_66/MatMul/ReadVariableOp2L
$lstm_cell_66/MatMul_1/ReadVariableOp$lstm_cell_66/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ЁL
”
while_body_1549533
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_65_matmul_readvariableop_resource_0:	АI
5while_lstm_cell_65_matmul_1_readvariableop_resource_0:
ААC
4while_lstm_cell_65_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_65_matmul_readvariableop_resource:	АG
3while_lstm_cell_65_matmul_1_readvariableop_resource:
ААA
2while_lstm_cell_65_biasadd_readvariableop_resource:	АИҐ)while/lstm_cell_65/BiasAdd/ReadVariableOpҐ(while/lstm_cell_65/MatMul/ReadVariableOpҐ*while/lstm_cell_65/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem…
(while/lstm_cell_65/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_65_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02*
(while/lstm_cell_65/MatMul/ReadVariableOp„
while/lstm_cell_65/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/MatMul–
*while/lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_65_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02,
*while/lstm_cell_65/MatMul_1/ReadVariableOpј
while/lstm_cell_65/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/MatMul_1Є
while/lstm_cell_65/addAddV2#while/lstm_cell_65/MatMul:product:0%while/lstm_cell_65/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/add»
)while/lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_65_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02+
)while/lstm_cell_65/BiasAdd/ReadVariableOp≈
while/lstm_cell_65/BiasAddBiasAddwhile/lstm_cell_65/add:z:01while/lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/BiasAddК
"while/lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_65/split/split_dimП
while/lstm_cell_65/splitSplit+while/lstm_cell_65/split/split_dim:output:0#while/lstm_cell_65/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_split2
while/lstm_cell_65/splitЩ
while/lstm_cell_65/SigmoidSigmoid!while/lstm_cell_65/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/SigmoidЭ
while/lstm_cell_65/Sigmoid_1Sigmoid!while/lstm_cell_65/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/Sigmoid_1°
while/lstm_cell_65/mulMul while/lstm_cell_65/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/mulЭ
while/lstm_cell_65/Sigmoid_2Sigmoid!while/lstm_cell_65/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/Sigmoid_2≥
while/lstm_cell_65/mul_1Mul!while/lstm_cell_65/split:output:2 while/lstm_cell_65/Sigmoid_2:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/mul_1Ч
while/lstm_cell_65/IdentityIdentitywhile/lstm_cell_65/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/IdentityД
while/lstm_cell_65/IdentityN	IdentityNwhile/lstm_cell_65/mul_1:z:0!while/lstm_cell_65/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1549575*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2
while/lstm_cell_65/IdentityNµ
while/lstm_cell_65/mul_2Mulwhile/lstm_cell_65/Sigmoid:y:0%while/lstm_cell_65/IdentityN:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/mul_2™
while/lstm_cell_65/add_1AddV2while/lstm_cell_65/mul:z:0while/lstm_cell_65/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/add_1Э
while/lstm_cell_65/Sigmoid_3Sigmoid!while/lstm_cell_65/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/Sigmoid_3Ш
while/lstm_cell_65/Sigmoid_4Sigmoidwhile/lstm_cell_65/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/Sigmoid_4Ѓ
while/lstm_cell_65/mul_3Mulwhile/lstm_cell_65/add_1:z:0 while/lstm_cell_65/Sigmoid_4:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/mul_3Ы
while/lstm_cell_65/Identity_1Identitywhile/lstm_cell_65/mul_3:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/Identity_1Г
while/lstm_cell_65/IdentityN_1	IdentityNwhile/lstm_cell_65/mul_3:z:0while/lstm_cell_65/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1549584*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2 
while/lstm_cell_65/IdentityN_1є
while/lstm_cell_65/mul_4Mul while/lstm_cell_65/Sigmoid_3:y:0'while/lstm_cell_65/IdentityN_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_65/mul_4а
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_65/mul_4:z:0*
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
while/add_1в
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityх
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1д
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2С
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Е
while/Identity_4Identitywhile/lstm_cell_65/mul_4:z:0*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_4Е
while/Identity_5Identitywhile/lstm_cell_65/add_1:z:0*^while/lstm_cell_65/BiasAdd/ReadVariableOp)^while/lstm_cell_65/MatMul/ReadVariableOp+^while/lstm_cell_65/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_65_biasadd_readvariableop_resource4while_lstm_cell_65_biasadd_readvariableop_resource_0"l
3while_lstm_cell_65_matmul_1_readvariableop_resource5while_lstm_cell_65_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_65_matmul_readvariableop_resource3while_lstm_cell_65_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2V
)while/lstm_cell_65/BiasAdd/ReadVariableOp)while/lstm_cell_65/BiasAdd/ReadVariableOp2T
(while/lstm_cell_65/MatMul/ReadVariableOp(while/lstm_cell_65/MatMul/ReadVariableOp2X
*while/lstm_cell_65/MatMul_1/ReadVariableOp*while/lstm_cell_65/MatMul_1/ReadVariableOp: 

_output_shapes
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
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
≠

‘
lstm_2_while_cond_1548939*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3,
(lstm_2_while_less_lstm_2_strided_slice_1C
?lstm_2_while_lstm_2_while_cond_1548939___redundant_placeholder0C
?lstm_2_while_lstm_2_while_cond_1548939___redundant_placeholder1C
?lstm_2_while_lstm_2_while_cond_1548939___redundant_placeholder2C
?lstm_2_while_lstm_2_while_cond_1548939___redundant_placeholder3
lstm_2_while_identity
У
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
@: : : : :€€€€€€€€€@:€€€€€€€€€@: ::::: 

_output_shapes
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
:€€€€€€€€€@:-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
:
≠&
м
while_body_1545748
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_65_1545772_0:	А0
while_lstm_cell_65_1545774_0:
АА+
while_lstm_cell_65_1545776_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_65_1545772:	А.
while_lstm_cell_65_1545774:
АА)
while_lstm_cell_65_1545776:	АИҐ*while/lstm_cell_65/StatefulPartitionedCall√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemи
*while/lstm_cell_65/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_65_1545772_0while_lstm_cell_65_1545774_0while_lstm_cell_65_1545776_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_lstm_cell_65_layer_call_and_return_conditional_losses_15457342,
*while/lstm_cell_65/StatefulPartitionedCallч
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_65/StatefulPartitionedCall:output:0*
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
while/add_1Л
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_65/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/IdentityЮ
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_65/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Н
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_65/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2Ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_65/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3≈
while/Identity_4Identity3while/lstm_cell_65/StatefulPartitionedCall:output:1+^while/lstm_cell_65/StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_4≈
while/Identity_5Identity3while/lstm_cell_65/StatefulPartitionedCall:output:2+^while/lstm_cell_65/StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_65_1545772while_lstm_cell_65_1545772_0":
while_lstm_cell_65_1545774while_lstm_cell_65_1545774_0":
while_lstm_cell_65_1545776while_lstm_cell_65_1545776_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : 2X
*while/lstm_cell_65/StatefulPartitionedCall*while/lstm_cell_65/StatefulPartitionedCall: 

_output_shapes
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
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
Џ
»
while_cond_1546397
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1546397___redundant_placeholder05
1while_while_cond_1546397___redundant_placeholder15
1while_while_cond_1546397___redundant_placeholder25
1while_while_cond_1546397___redundant_placeholder3
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
@: : : : :€€€€€€€€€@:€€€€€€€€€@: ::::: 

_output_shapes
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
:€€€€€€€€€@:-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
:
÷
“
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_1547129

inputs!
dense_3_1547119:@
dense_3_1547121:
identityИҐdense_3/StatefulPartitionedCallD
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
strided_slice/stack_2в
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
valueB"€€€€@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
ReshapeЬ
dense_3/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_3_1547119dense_3_1547121*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_15471182!
dense_3/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2®
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape§
	Reshape_1Reshape(dense_3/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
	Reshape_1Х
IdentityIdentityReshape_1:output:0 ^dense_3/StatefulPartitionedCall*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€@: : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
ё
»
while_cond_1545967
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1545967___redundant_placeholder05
1while_while_cond_1545967___redundant_placeholder15
1while_while_cond_1545967___redundant_placeholder25
1while_while_cond_1545967___redundant_placeholder3
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
B: : : : :€€€€€€€€€А:€€€€€€€€€А: ::::: 

_output_shapes
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
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
ћc
Ь
C__inference_lstm_1_layer_call_and_return_conditional_losses_1549627

inputs>
+lstm_cell_65_matmul_readvariableop_resource:	АA
-lstm_cell_65_matmul_1_readvariableop_resource:
АА;
,lstm_cell_65_biasadd_readvariableop_resource:	А
identityИҐ#lstm_cell_65/BiasAdd/ReadVariableOpҐ"lstm_cell_65/MatMul/ReadVariableOpҐ$lstm_cell_65/MatMul_1/ReadVariableOpҐwhileD
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
strided_slice/stack_2в
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
B :и2
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
:€€€€€€€€€А2
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
B :и2
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
:€€€€€€€€€А2	
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
:€€€€€€€€€2
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
strided_slice_1/stack_2о
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
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2µ
"lstm_cell_65/MatMul/ReadVariableOpReadVariableOp+lstm_cell_65_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02$
"lstm_cell_65/MatMul/ReadVariableOp≠
lstm_cell_65/MatMulMatMulstrided_slice_2:output:0*lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/MatMulЉ
$lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_65_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02&
$lstm_cell_65/MatMul_1/ReadVariableOp©
lstm_cell_65/MatMul_1MatMulzeros:output:0,lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/MatMul_1†
lstm_cell_65/addAddV2lstm_cell_65/MatMul:product:0lstm_cell_65/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/addі
#lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_65_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#lstm_cell_65/BiasAdd/ReadVariableOp≠
lstm_cell_65/BiasAddBiasAddlstm_cell_65/add:z:0+lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/BiasAdd~
lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_65/split/split_dimч
lstm_cell_65/splitSplit%lstm_cell_65/split/split_dim:output:0lstm_cell_65/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_split2
lstm_cell_65/splitЗ
lstm_cell_65/SigmoidSigmoidlstm_cell_65/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/SigmoidЛ
lstm_cell_65/Sigmoid_1Sigmoidlstm_cell_65/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Sigmoid_1М
lstm_cell_65/mulMullstm_cell_65/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/mulЛ
lstm_cell_65/Sigmoid_2Sigmoidlstm_cell_65/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Sigmoid_2Ы
lstm_cell_65/mul_1Mullstm_cell_65/split:output:2lstm_cell_65/Sigmoid_2:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/mul_1Е
lstm_cell_65/IdentityIdentitylstm_cell_65/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Identityм
lstm_cell_65/IdentityN	IdentityNlstm_cell_65/mul_1:z:0lstm_cell_65/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1549513*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2
lstm_cell_65/IdentityNЭ
lstm_cell_65/mul_2Mullstm_cell_65/Sigmoid:y:0lstm_cell_65/IdentityN:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/mul_2Т
lstm_cell_65/add_1AddV2lstm_cell_65/mul:z:0lstm_cell_65/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/add_1Л
lstm_cell_65/Sigmoid_3Sigmoidlstm_cell_65/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Sigmoid_3Ж
lstm_cell_65/Sigmoid_4Sigmoidlstm_cell_65/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Sigmoid_4Ц
lstm_cell_65/mul_3Mullstm_cell_65/add_1:z:0lstm_cell_65/Sigmoid_4:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/mul_3Й
lstm_cell_65/Identity_1Identitylstm_cell_65/mul_3:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Identity_1л
lstm_cell_65/IdentityN_1	IdentityNlstm_cell_65/mul_3:z:0lstm_cell_65/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1549522*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2
lstm_cell_65/IdentityN_1°
lstm_cell_65/mul_4Mullstm_cell_65/Sigmoid_3:y:0!lstm_cell_65/IdentityN_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/mul_4П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterф
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_65_matmul_readvariableop_resource-lstm_cell_65_matmul_1_readvariableop_resource,lstm_cell_65_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1549533*
condR
while_cond_1549532*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   22
0TensorArrayV2Stack/TensorListStack/element_shapeй
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¶
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeв
IdentityIdentitytranspose_1:y:0$^lstm_cell_65/BiasAdd/ReadVariableOp#^lstm_cell_65/MatMul/ReadVariableOp%^lstm_cell_65/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2J
#lstm_cell_65/BiasAdd/ReadVariableOp#lstm_cell_65/BiasAdd/ReadVariableOp2H
"lstm_cell_65/MatMul/ReadVariableOp"lstm_cell_65/MatMul/ReadVariableOp2L
$lstm_cell_65/MatMul_1/ReadVariableOp$lstm_cell_65/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Н
ш
.__inference_lstm_cell_66_layer_call_fn_1551042

inputs
states_0
states_1
unknown:
АА
	unknown_0:	@А
	unknown_1:	А
identity

identity_1

identity_2ИҐStatefulPartitionedCallƒ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_15465402
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€@2

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity_1Т

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:€€€€€€€€€А:€€€€€€€€€@:€€€€€€€€€@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€@
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€@
"
_user_specified_name
states/1
л"
К
I__inference_lstm_cell_65_layer_call_and_return_conditional_losses_1550890

inputs
states_0
states_11
matmul_readvariableop_resource:	А4
 matmul_1_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А

identity_2

identity_3

identity_4ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
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
:€€€€€€€€€А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim√
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:€€€€€€€€€А2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:€€€€€€€€€А2
muld
	Sigmoid_2Sigmoidsplit:output:2*
T0*(
_output_shapes
:€€€€€€€€€А2
	Sigmoid_2g
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
mul_1^
IdentityIdentity	mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2

IdentityЄ
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1550871*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2
	IdentityNi
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
mul_2^
add_1AddV2mul:z:0	mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
add_1d
	Sigmoid_3Sigmoidsplit:output:3*
T0*(
_output_shapes
:€€€€€€€€€А2
	Sigmoid_3_
	Sigmoid_4Sigmoid	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
	Sigmoid_4b
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
mul_3b

Identity_1Identity	mul_3:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_1Ј
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1550880*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2
IdentityN_1m
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
mul_4≠

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_2≠

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_3≠

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€А:€€€€€€€€€А: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states/0:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states/1
£

Е
.__inference_sequential_1_layer_call_fn_1547668
lstm_1_input
unknown:	А
	unknown_0:
АА
	unknown_1:	А
	unknown_2:
АА
	unknown_3:	@А
	unknown_4:	А
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:
identityИҐStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCalllstm_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*,
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
I__inference_sequential_1_layer_call_and_return_conditional_losses_15476452
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:€€€€€€€€€
&
_user_specified_namelstm_1_input
≠c
Ь
C__inference_lstm_2_layer_call_and_return_conditional_losses_1547588

inputs?
+lstm_cell_66_matmul_readvariableop_resource:
АА@
-lstm_cell_66_matmul_1_readvariableop_resource:	@А;
,lstm_cell_66_biasadd_readvariableop_resource:	А
identityИҐ#lstm_cell_66/BiasAdd/ReadVariableOpҐ"lstm_cell_66/MatMul/ReadVariableOpҐ$lstm_cell_66/MatMul_1/ReadVariableOpҐwhileD
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
strided_slice/stack_2в
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
B :и2
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
:€€€€€€€€€@2
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
B :и2
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
:€€€€€€€€€@2	
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
:€€€€€€€€€А2
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
strided_slice_1/stack_2о
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
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2э
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_2ґ
"lstm_cell_66/MatMul/ReadVariableOpReadVariableOp+lstm_cell_66_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02$
"lstm_cell_66/MatMul/ReadVariableOp≠
lstm_cell_66/MatMulMatMulstrided_slice_2:output:0*lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_66/MatMulї
$lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_66_matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02&
$lstm_cell_66/MatMul_1/ReadVariableOp©
lstm_cell_66/MatMul_1MatMulzeros:output:0,lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_66/MatMul_1†
lstm_cell_66/addAddV2lstm_cell_66/MatMul:product:0lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_66/addі
#lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#lstm_cell_66/BiasAdd/ReadVariableOp≠
lstm_cell_66/BiasAddBiasAddlstm_cell_66/add:z:0+lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_66/BiasAdd~
lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_66/split/split_dimу
lstm_cell_66/splitSplit%lstm_cell_66/split/split_dim:output:0lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split2
lstm_cell_66/splitЖ
lstm_cell_66/SigmoidSigmoidlstm_cell_66/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/SigmoidК
lstm_cell_66/Sigmoid_1Sigmoidlstm_cell_66/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Sigmoid_1Л
lstm_cell_66/mulMullstm_cell_66/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/mulК
lstm_cell_66/Sigmoid_2Sigmoidlstm_cell_66/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Sigmoid_2Ъ
lstm_cell_66/mul_1Mullstm_cell_66/split:output:2lstm_cell_66/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/mul_1Д
lstm_cell_66/IdentityIdentitylstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Identityк
lstm_cell_66/IdentityN	IdentityNlstm_cell_66/mul_1:z:0lstm_cell_66/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1547474*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
lstm_cell_66/IdentityNЬ
lstm_cell_66/mul_2Mullstm_cell_66/Sigmoid:y:0lstm_cell_66/IdentityN:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/mul_2С
lstm_cell_66/add_1AddV2lstm_cell_66/mul:z:0lstm_cell_66/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/add_1К
lstm_cell_66/Sigmoid_3Sigmoidlstm_cell_66/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Sigmoid_3Е
lstm_cell_66/Sigmoid_4Sigmoidlstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Sigmoid_4Х
lstm_cell_66/mul_3Mullstm_cell_66/add_1:z:0lstm_cell_66/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/mul_3И
lstm_cell_66/Identity_1Identitylstm_cell_66/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Identity_1й
lstm_cell_66/IdentityN_1	IdentityNlstm_cell_66/mul_3:z:0lstm_cell_66/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1547483*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
lstm_cell_66/IdentityN_1†
lstm_cell_66/mul_4Mullstm_cell_66/Sigmoid_3:y:0!lstm_cell_66/IdentityN_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/mul_4П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterр
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_66_matmul_readvariableop_resource-lstm_cell_66_matmul_1_readvariableop_resource,lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€@:€€€€€€€€€@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1547494*
condR
while_cond_1547493*K
output_shapes:
8: : : : :€€€€€€€€€@:€€€€€€€€€@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€@*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
:€€€€€€€€€@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeб
IdentityIdentitytranspose_1:y:0$^lstm_cell_66/BiasAdd/ReadVariableOp#^lstm_cell_66/MatMul/ReadVariableOp%^lstm_cell_66/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:€€€€€€€€€А: : : 2J
#lstm_cell_66/BiasAdd/ReadVariableOp#lstm_cell_66/BiasAdd/ReadVariableOp2H
"lstm_cell_66/MatMul/ReadVariableOp"lstm_cell_66/MatMul/ReadVariableOp2L
$lstm_cell_66/MatMul_1/ReadVariableOp$lstm_cell_66/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ё
»
while_cond_1549703
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1549703___redundant_placeholder05
1while_while_cond_1549703___redundant_placeholder15
1while_while_cond_1549703___redundant_placeholder25
1while_while_cond_1549703___redundant_placeholder3
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
B: : : : :€€€€€€€€€А:€€€€€€€€€А: ::::: 

_output_shapes
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
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
љ
Я
2__inference_time_distributed_layer_call_fn_1550691

inputs
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_layer_call_and_return_conditional_losses_15476152
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
г"
И
I__inference_lstm_cell_65_layer_call_and_return_conditional_losses_1545890

inputs

states
states_11
matmul_readvariableop_resource:	А4
 matmul_1_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А

identity_2

identity_3

identity_4ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
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
:€€€€€€€€€А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim√
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:€€€€€€€€€А2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:€€€€€€€€€А2
muld
	Sigmoid_2Sigmoidsplit:output:2*
T0*(
_output_shapes
:€€€€€€€€€А2
	Sigmoid_2g
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
mul_1^
IdentityIdentity	mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2

IdentityЄ
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1545871*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2
	IdentityNi
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
mul_2^
add_1AddV2mul:z:0	mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
add_1d
	Sigmoid_3Sigmoidsplit:output:3*
T0*(
_output_shapes
:€€€€€€€€€А2
	Sigmoid_3_
	Sigmoid_4Sigmoid	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
	Sigmoid_4b
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
mul_3b

Identity_1Identity	mul_3:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_1Ј
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1545880*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2
IdentityN_1m
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
mul_4≠

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_2≠

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_3≠

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€:€€€€€€€€€А:€€€€€€€€€А: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_namestates:PL
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_namestates
√L
”
while_body_1547828
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_66_matmul_readvariableop_resource_0:
ААH
5while_lstm_cell_66_matmul_1_readvariableop_resource_0:	@АC
4while_lstm_cell_66_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_66_matmul_readvariableop_resource:
ААF
3while_lstm_cell_66_matmul_1_readvariableop_resource:	@АA
2while_lstm_cell_66_biasadd_readvariableop_resource:	АИҐ)while/lstm_cell_66/BiasAdd/ReadVariableOpҐ(while/lstm_cell_66/MatMul/ReadVariableOpҐ*while/lstm_cell_66/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape‘
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem 
(while/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_66_matmul_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02*
(while/lstm_cell_66/MatMul/ReadVariableOp„
while/lstm_cell_66/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_66/MatMulѕ
*while/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_66_matmul_1_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02,
*while/lstm_cell_66/MatMul_1/ReadVariableOpј
while/lstm_cell_66/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_66/MatMul_1Є
while/lstm_cell_66/addAddV2#while/lstm_cell_66/MatMul:product:0%while/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_66/add»
)while/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_66_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02+
)while/lstm_cell_66/BiasAdd/ReadVariableOp≈
while/lstm_cell_66/BiasAddBiasAddwhile/lstm_cell_66/add:z:01while/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/lstm_cell_66/BiasAddК
"while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_66/split/split_dimЛ
while/lstm_cell_66/splitSplit+while/lstm_cell_66/split/split_dim:output:0#while/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split2
while/lstm_cell_66/splitШ
while/lstm_cell_66/SigmoidSigmoid!while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/SigmoidЬ
while/lstm_cell_66/Sigmoid_1Sigmoid!while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/Sigmoid_1†
while/lstm_cell_66/mulMul while/lstm_cell_66/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/mulЬ
while/lstm_cell_66/Sigmoid_2Sigmoid!while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/Sigmoid_2≤
while/lstm_cell_66/mul_1Mul!while/lstm_cell_66/split:output:2 while/lstm_cell_66/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/mul_1Ц
while/lstm_cell_66/IdentityIdentitywhile/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/IdentityВ
while/lstm_cell_66/IdentityN	IdentityNwhile/lstm_cell_66/mul_1:z:0!while/lstm_cell_66/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1547870*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
while/lstm_cell_66/IdentityNі
while/lstm_cell_66/mul_2Mulwhile/lstm_cell_66/Sigmoid:y:0%while/lstm_cell_66/IdentityN:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/mul_2©
while/lstm_cell_66/add_1AddV2while/lstm_cell_66/mul:z:0while/lstm_cell_66/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/add_1Ь
while/lstm_cell_66/Sigmoid_3Sigmoid!while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/Sigmoid_3Ч
while/lstm_cell_66/Sigmoid_4Sigmoidwhile/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/Sigmoid_4≠
while/lstm_cell_66/mul_3Mulwhile/lstm_cell_66/add_1:z:0 while/lstm_cell_66/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/mul_3Ъ
while/lstm_cell_66/Identity_1Identitywhile/lstm_cell_66/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/Identity_1Б
while/lstm_cell_66/IdentityN_1	IdentityNwhile/lstm_cell_66/mul_3:z:0while/lstm_cell_66/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1547879*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2 
while/lstm_cell_66/IdentityN_1Є
while/lstm_cell_66/mul_4Mul while/lstm_cell_66/Sigmoid_3:y:0'while/lstm_cell_66/IdentityN_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
while/lstm_cell_66/mul_4а
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_66/mul_4:z:0*
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
while/add_1в
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityх
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1д
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2С
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Д
while/Identity_4Identitywhile/lstm_cell_66/mul_4:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2
while/Identity_4Д
while/Identity_5Identitywhile/lstm_cell_66/add_1:z:0*^while/lstm_cell_66/BiasAdd/ReadVariableOp)^while/lstm_cell_66/MatMul/ReadVariableOp+^while/lstm_cell_66/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_66_biasadd_readvariableop_resource4while_lstm_cell_66_biasadd_readvariableop_resource_0"l
3while_lstm_cell_66_matmul_1_readvariableop_resource5while_lstm_cell_66_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_66_matmul_readvariableop_resource3while_lstm_cell_66_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€@:€€€€€€€€€@: : : : : 2V
)while/lstm_cell_66/BiasAdd/ReadVariableOp)while/lstm_cell_66/BiasAdd/ReadVariableOp2T
(while/lstm_cell_66/MatMul/ReadVariableOp(while/lstm_cell_66/MatMul/ReadVariableOp2X
*while/lstm_cell_66/MatMul_1/ReadVariableOp*while/lstm_cell_66/MatMul_1/ReadVariableOp: 

_output_shapes
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
:€€€€€€€€€@:-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
: 
С

€
.__inference_sequential_1_layer_call_fn_1549089

inputs
unknown:	А
	unknown_0:
АА
	unknown_1:	А
	unknown_2:
АА
	unknown_3:	@А
	unknown_4:	А
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:
identityИҐStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*,
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
I__inference_sequential_1_layer_call_and_return_conditional_losses_15476452
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
≠c
Ь
C__inference_lstm_2_layer_call_and_return_conditional_losses_1550355

inputs?
+lstm_cell_66_matmul_readvariableop_resource:
АА@
-lstm_cell_66_matmul_1_readvariableop_resource:	@А;
,lstm_cell_66_biasadd_readvariableop_resource:	А
identityИҐ#lstm_cell_66/BiasAdd/ReadVariableOpҐ"lstm_cell_66/MatMul/ReadVariableOpҐ$lstm_cell_66/MatMul_1/ReadVariableOpҐwhileD
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
strided_slice/stack_2в
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
B :и2
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
:€€€€€€€€€@2
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
B :и2
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
:€€€€€€€€€@2	
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
:€€€€€€€€€А2
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
strided_slice_1/stack_2о
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
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2э
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_2ґ
"lstm_cell_66/MatMul/ReadVariableOpReadVariableOp+lstm_cell_66_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02$
"lstm_cell_66/MatMul/ReadVariableOp≠
lstm_cell_66/MatMulMatMulstrided_slice_2:output:0*lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_66/MatMulї
$lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_66_matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02&
$lstm_cell_66/MatMul_1/ReadVariableOp©
lstm_cell_66/MatMul_1MatMulzeros:output:0,lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_66/MatMul_1†
lstm_cell_66/addAddV2lstm_cell_66/MatMul:product:0lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_66/addі
#lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#lstm_cell_66/BiasAdd/ReadVariableOp≠
lstm_cell_66/BiasAddBiasAddlstm_cell_66/add:z:0+lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_66/BiasAdd~
lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_66/split/split_dimу
lstm_cell_66/splitSplit%lstm_cell_66/split/split_dim:output:0lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split2
lstm_cell_66/splitЖ
lstm_cell_66/SigmoidSigmoidlstm_cell_66/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/SigmoidК
lstm_cell_66/Sigmoid_1Sigmoidlstm_cell_66/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Sigmoid_1Л
lstm_cell_66/mulMullstm_cell_66/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/mulК
lstm_cell_66/Sigmoid_2Sigmoidlstm_cell_66/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Sigmoid_2Ъ
lstm_cell_66/mul_1Mullstm_cell_66/split:output:2lstm_cell_66/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/mul_1Д
lstm_cell_66/IdentityIdentitylstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Identityк
lstm_cell_66/IdentityN	IdentityNlstm_cell_66/mul_1:z:0lstm_cell_66/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1550241*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
lstm_cell_66/IdentityNЬ
lstm_cell_66/mul_2Mullstm_cell_66/Sigmoid:y:0lstm_cell_66/IdentityN:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/mul_2С
lstm_cell_66/add_1AddV2lstm_cell_66/mul:z:0lstm_cell_66/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/add_1К
lstm_cell_66/Sigmoid_3Sigmoidlstm_cell_66/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Sigmoid_3Е
lstm_cell_66/Sigmoid_4Sigmoidlstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Sigmoid_4Х
lstm_cell_66/mul_3Mullstm_cell_66/add_1:z:0lstm_cell_66/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/mul_3И
lstm_cell_66/Identity_1Identitylstm_cell_66/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/Identity_1й
lstm_cell_66/IdentityN_1	IdentityNlstm_cell_66/mul_3:z:0lstm_cell_66/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1550250*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
lstm_cell_66/IdentityN_1†
lstm_cell_66/mul_4Mullstm_cell_66/Sigmoid_3:y:0!lstm_cell_66/IdentityN_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_cell_66/mul_4П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterр
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_66_matmul_readvariableop_resource-lstm_cell_66_matmul_1_readvariableop_resource,lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€@:€€€€€€€€€@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1550261*
condR
while_cond_1550260*K
output_shapes:
8: : : : :€€€€€€€€€@:€€€€€€€€€@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€@*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
:€€€€€€€€€@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeб
IdentityIdentitytranspose_1:y:0$^lstm_cell_66/BiasAdd/ReadVariableOp#^lstm_cell_66/MatMul/ReadVariableOp%^lstm_cell_66/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:€€€€€€€€€А: : : 2J
#lstm_cell_66/BiasAdd/ReadVariableOp#lstm_cell_66/BiasAdd/ReadVariableOp2H
"lstm_cell_66/MatMul/ReadVariableOp"lstm_cell_66/MatMul/ReadVariableOp2L
$lstm_cell_66/MatMul_1/ReadVariableOp$lstm_cell_66/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
б
А
I__inference_sequential_1_layer_call_and_return_conditional_losses_1548263
lstm_1_input!
lstm_1_1548234:	А"
lstm_1_1548236:
АА
lstm_1_1548238:	А"
lstm_2_1548241:
АА!
lstm_2_1548243:	@А
lstm_2_1548245:	А*
time_distributed_1548248:@@&
time_distributed_1548250:@,
time_distributed_1_1548255:@(
time_distributed_1_1548257:
identityИҐlstm_1/StatefulPartitionedCallҐlstm_2/StatefulPartitionedCallҐ(time_distributed/StatefulPartitionedCallҐ*time_distributed_1/StatefulPartitionedCall™
lstm_1/StatefulPartitionedCallStatefulPartitionedCalllstm_1_inputlstm_1_1548234lstm_1_1548236lstm_1_1548238*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_1_layer_call_and_return_conditional_losses_15474102 
lstm_1/StatefulPartitionedCallƒ
lstm_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0lstm_2_1548241lstm_2_1548243lstm_2_1548245*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_2_layer_call_and_return_conditional_losses_15475882 
lstm_2/StatefulPartitionedCallд
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0time_distributed_1548248time_distributed_1548250*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_layer_call_and_return_conditional_losses_15476152*
(time_distributed/StatefulPartitionedCallС
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2 
time_distributed/Reshape/shape√
time_distributed/ReshapeReshape'lstm_2/StatefulPartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
time_distributed/Reshapeш
*time_distributed_1/StatefulPartitionedCallStatefulPartitionedCall1time_distributed/StatefulPartitionedCall:output:0time_distributed_1_1548255time_distributed_1_1548257*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_15476362,
*time_distributed_1/StatefulPartitionedCallХ
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2"
 time_distributed_1/Reshape/shape”
time_distributed_1/ReshapeReshape1time_distributed/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
time_distributed_1/Reshape•
IdentityIdentity3time_distributed_1/StatefulPartitionedCall:output:0^lstm_1/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_1/StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€: : : : : : : : : : 2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_1/StatefulPartitionedCall*time_distributed_1/StatefulPartitionedCall:Y U
+
_output_shapes
:€€€€€€€€€
&
_user_specified_namelstm_1_input
•&
м
while_body_1546618
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_66_1546642_0:
АА/
while_lstm_cell_66_1546644_0:	@А+
while_lstm_cell_66_1546646_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_66_1546642:
АА-
while_lstm_cell_66_1546644:	@А)
while_lstm_cell_66_1546646:	АИҐ*while/lstm_cell_66/StatefulPartitionedCall√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape‘
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemе
*while/lstm_cell_66/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_66_1546642_0while_lstm_cell_66_1546644_0while_lstm_cell_66_1546646_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_15465402,
*while/lstm_cell_66/StatefulPartitionedCallч
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_66/StatefulPartitionedCall:output:0*
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
while/add_1Л
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_66/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/IdentityЮ
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_66/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Н
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_66/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2Ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_66/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3ƒ
while/Identity_4Identity3while/lstm_cell_66/StatefulPartitionedCall:output:1+^while/lstm_cell_66/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€@2
while/Identity_4ƒ
while/Identity_5Identity3while/lstm_cell_66/StatefulPartitionedCall:output:2+^while/lstm_cell_66/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_66_1546642while_lstm_cell_66_1546642_0":
while_lstm_cell_66_1546644while_lstm_cell_66_1546644_0":
while_lstm_cell_66_1546646while_lstm_cell_66_1546646_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€@:€€€€€€€€€@: : : : : 2X
*while/lstm_cell_66/StatefulPartitionedCall*while/lstm_cell_66/StatefulPartitionedCall: 

_output_shapes
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
:€€€€€€€€€@:-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
: 
Е
Є
(__inference_lstm_2_layer_call_fn_1550537
inputs_0
unknown:
АА
	unknown_0:	@А
	unknown_1:	А
identityИҐStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_2_layer_call_and_return_conditional_losses_15464672
StatefulPartitionedCallЫ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€€€€€€€€€€А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
"
_user_specified_name
inputs/0
…"
И
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_1546384

inputs

states
states_12
matmul_readvariableop_resource:
АА3
 matmul_1_readvariableop_resource:	@А.
biasadd_readvariableop_resource:	А

identity_2

identity_3

identity_4ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€@2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€@2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€@2
	Sigmoid_2f
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
mul_1]
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2

Identityґ
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1546365*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
	IdentityNh
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
mul_2]
add_1AddV2mul:z:0	mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€@2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
	Sigmoid_4a
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
mul_3a

Identity_1Identity	mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity_1µ
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1546374*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
IdentityN_1l
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
mul_4ђ

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity_2ђ

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity_3ђ

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:€€€€€€€€€А:€€€€€€€€€@:€€€€€€€€€@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_namestates
б
Я
2__inference_time_distributed_layer_call_fn_1550673

inputs
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_layer_call_and_return_conditional_losses_15469902
StatefulPartitionedCallЫ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
Џ
»
while_cond_1550089
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1550089___redundant_placeholder05
1while_while_cond_1550089___redundant_placeholder15
1while_while_cond_1550089___redundant_placeholder25
1while_while_cond_1550089___redundant_placeholder3
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
@: : : : :€€€€€€€€€@:€€€€€€€€€@: ::::: 

_output_shapes
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
:€€€€€€€€€@:-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
:
Ё
†
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_1550721

inputs8
&dense_3_matmul_readvariableop_resource:@5
'dense_3_biasadd_readvariableop_resource:
identityИҐdense_3/BiasAdd/ReadVariableOpҐdense_3/MatMul/ReadVariableOpD
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
strided_slice/stack_2в
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
valueB"€€€€@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
Reshape•
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_3/MatMul/ReadVariableOpХ
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_3/MatMul§
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp°
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_3/BiasAddq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2®
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shapeФ
	Reshape_1Reshapedense_3/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
	Reshape_1і
IdentityIdentityReshape_1:output:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€@: : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
ё
»
while_cond_1549532
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1549532___redundant_placeholder05
1while_while_cond_1549532___redundant_placeholder15
1while_while_cond_1549532___redundant_placeholder25
1while_while_cond_1549532___redundant_placeholder3
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
B: : : : :€€€€€€€€€А:€€€€€€€€€А: ::::: 

_output_shapes
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
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
—"
К
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_1551008

inputs
states_0
states_12
matmul_readvariableop_resource:
АА3
 matmul_1_readvariableop_resource:	@А.
biasadd_readvariableop_resource:	А

identity_2

identity_3

identity_4ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€@2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€@2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€@2
	Sigmoid_2f
mul_1Mulsplit:output:2Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
mul_1]
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2

Identityґ
	IdentityN	IdentityN	mul_1:z:0split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1550989*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
	IdentityNh
mul_2MulSigmoid:y:0IdentityN:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
mul_2]
add_1AddV2mul:z:0	mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€@2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
	Sigmoid_4a
mul_3Mul	add_1:z:0Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
mul_3a

Identity_1Identity	mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity_1µ
IdentityN_1	IdentityN	mul_3:z:0	add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1550998*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
IdentityN_1l
mul_4MulSigmoid_3:y:0IdentityN_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
mul_4ђ

Identity_2Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity_2ђ

Identity_3Identity	mul_4:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity_3ђ

Identity_4Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity_4"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:€€€€€€€€€А:€€€€€€€€€@:€€€€€€€€€@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€@
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€@
"
_user_specified_name
states/1
ПП
≤

I__inference_sequential_1_layer_call_and_return_conditional_losses_1548696

inputsE
2lstm_1_lstm_cell_65_matmul_readvariableop_resource:	АH
4lstm_1_lstm_cell_65_matmul_1_readvariableop_resource:
ААB
3lstm_1_lstm_cell_65_biasadd_readvariableop_resource:	АF
2lstm_2_lstm_cell_66_matmul_readvariableop_resource:
ААG
4lstm_2_lstm_cell_66_matmul_1_readvariableop_resource:	@АB
3lstm_2_lstm_cell_66_biasadd_readvariableop_resource:	АI
7time_distributed_dense_2_matmul_readvariableop_resource:@@F
8time_distributed_dense_2_biasadd_readvariableop_resource:@K
9time_distributed_1_dense_3_matmul_readvariableop_resource:@H
:time_distributed_1_dense_3_biasadd_readvariableop_resource:
identityИҐ*lstm_1/lstm_cell_65/BiasAdd/ReadVariableOpҐ)lstm_1/lstm_cell_65/MatMul/ReadVariableOpҐ+lstm_1/lstm_cell_65/MatMul_1/ReadVariableOpҐlstm_1/whileҐ*lstm_2/lstm_cell_66/BiasAdd/ReadVariableOpҐ)lstm_2/lstm_cell_66/MatMul/ReadVariableOpҐ+lstm_2/lstm_cell_66/MatMul_1/ReadVariableOpҐlstm_2/whileҐ/time_distributed/dense_2/BiasAdd/ReadVariableOpҐ.time_distributed/dense_2/MatMul/ReadVariableOpҐ1time_distributed_1/dense_3/BiasAdd/ReadVariableOpҐ0time_distributed_1/dense_3/MatMul/ReadVariableOpR
lstm_1/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_1/ShapeВ
lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice/stackЖ
lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_1/strided_slice/stack_1Ж
lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_1/strided_slice/stack_2М
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
B :А2
lstm_1/zeros/mul/yИ
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
B :и2
lstm_1/zeros/Less/yГ
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
B :А2
lstm_1/zeros/packed/1Я
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
lstm_1/zeros/ConstТ
lstm_1/zerosFilllstm_1/zeros/packed:output:0lstm_1/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/zeroso
lstm_1/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
lstm_1/zeros_1/mul/yО
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
B :и2
lstm_1/zeros_1/Less/yЛ
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
B :А2
lstm_1/zeros_1/packed/1•
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
lstm_1/zeros_1/ConstЪ
lstm_1/zeros_1Filllstm_1/zeros_1/packed:output:0lstm_1/zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/zeros_1Г
lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_1/transpose/permП
lstm_1/transpose	Transposeinputslstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
lstm_1/transposed
lstm_1/Shape_1Shapelstm_1/transpose:y:0*
T0*
_output_shapes
:2
lstm_1/Shape_1Ж
lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice_1/stackК
lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_1/stack_1К
lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_1/stack_2Ш
lstm_1/strided_slice_1StridedSlicelstm_1/Shape_1:output:0%lstm_1/strided_slice_1/stack:output:0'lstm_1/strided_slice_1/stack_1:output:0'lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_1/strided_slice_1У
"lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2$
"lstm_1/TensorArrayV2/element_shapeќ
lstm_1/TensorArrayV2TensorListReserve+lstm_1/TensorArrayV2/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_1/TensorArrayV2Ќ
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2>
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeФ
.lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_1/transpose:y:0Elstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_1/TensorArrayUnstack/TensorListFromTensorЖ
lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice_2/stackК
lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_2/stack_1К
lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_2/stack_2¶
lstm_1/strided_slice_2StridedSlicelstm_1/transpose:y:0%lstm_1/strided_slice_2/stack:output:0'lstm_1/strided_slice_2/stack_1:output:0'lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
lstm_1/strided_slice_2 
)lstm_1/lstm_cell_65/MatMul/ReadVariableOpReadVariableOp2lstm_1_lstm_cell_65_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02+
)lstm_1/lstm_cell_65/MatMul/ReadVariableOp…
lstm_1/lstm_cell_65/MatMulMatMullstm_1/strided_slice_2:output:01lstm_1/lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/lstm_cell_65/MatMul—
+lstm_1/lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOp4lstm_1_lstm_cell_65_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02-
+lstm_1/lstm_cell_65/MatMul_1/ReadVariableOp≈
lstm_1/lstm_cell_65/MatMul_1MatMullstm_1/zeros:output:03lstm_1/lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/lstm_cell_65/MatMul_1Љ
lstm_1/lstm_cell_65/addAddV2$lstm_1/lstm_cell_65/MatMul:product:0&lstm_1/lstm_cell_65/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/lstm_cell_65/add…
*lstm_1/lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOp3lstm_1_lstm_cell_65_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*lstm_1/lstm_cell_65/BiasAdd/ReadVariableOp…
lstm_1/lstm_cell_65/BiasAddBiasAddlstm_1/lstm_cell_65/add:z:02lstm_1/lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/lstm_cell_65/BiasAddМ
#lstm_1/lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#lstm_1/lstm_cell_65/split/split_dimУ
lstm_1/lstm_cell_65/splitSplit,lstm_1/lstm_cell_65/split/split_dim:output:0$lstm_1/lstm_cell_65/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_split2
lstm_1/lstm_cell_65/splitЬ
lstm_1/lstm_cell_65/SigmoidSigmoid"lstm_1/lstm_cell_65/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/lstm_cell_65/Sigmoid†
lstm_1/lstm_cell_65/Sigmoid_1Sigmoid"lstm_1/lstm_cell_65/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/lstm_cell_65/Sigmoid_1®
lstm_1/lstm_cell_65/mulMul!lstm_1/lstm_cell_65/Sigmoid_1:y:0lstm_1/zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/lstm_cell_65/mul†
lstm_1/lstm_cell_65/Sigmoid_2Sigmoid"lstm_1/lstm_cell_65/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/lstm_cell_65/Sigmoid_2Ј
lstm_1/lstm_cell_65/mul_1Mul"lstm_1/lstm_cell_65/split:output:2!lstm_1/lstm_cell_65/Sigmoid_2:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/lstm_cell_65/mul_1Ъ
lstm_1/lstm_cell_65/IdentityIdentitylstm_1/lstm_cell_65/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/lstm_cell_65/IdentityИ
lstm_1/lstm_cell_65/IdentityN	IdentityNlstm_1/lstm_cell_65/mul_1:z:0"lstm_1/lstm_cell_65/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1548385*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2
lstm_1/lstm_cell_65/IdentityNє
lstm_1/lstm_cell_65/mul_2Mullstm_1/lstm_cell_65/Sigmoid:y:0&lstm_1/lstm_cell_65/IdentityN:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/lstm_cell_65/mul_2Ѓ
lstm_1/lstm_cell_65/add_1AddV2lstm_1/lstm_cell_65/mul:z:0lstm_1/lstm_cell_65/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/lstm_cell_65/add_1†
lstm_1/lstm_cell_65/Sigmoid_3Sigmoid"lstm_1/lstm_cell_65/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/lstm_cell_65/Sigmoid_3Ы
lstm_1/lstm_cell_65/Sigmoid_4Sigmoidlstm_1/lstm_cell_65/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/lstm_cell_65/Sigmoid_4≤
lstm_1/lstm_cell_65/mul_3Mullstm_1/lstm_cell_65/add_1:z:0!lstm_1/lstm_cell_65/Sigmoid_4:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/lstm_cell_65/mul_3Ю
lstm_1/lstm_cell_65/Identity_1Identitylstm_1/lstm_cell_65/mul_3:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2 
lstm_1/lstm_cell_65/Identity_1З
lstm_1/lstm_cell_65/IdentityN_1	IdentityNlstm_1/lstm_cell_65/mul_3:z:0lstm_1/lstm_cell_65/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1548394*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2!
lstm_1/lstm_cell_65/IdentityN_1љ
lstm_1/lstm_cell_65/mul_4Mul!lstm_1/lstm_cell_65/Sigmoid_3:y:0(lstm_1/lstm_cell_65/IdentityN_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_1/lstm_cell_65/mul_4Э
$lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2&
$lstm_1/TensorArrayV2_1/element_shape‘
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
lstm_1/timeН
lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2!
lstm_1/while/maximum_iterationsx
lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_1/while/loop_counterЁ
lstm_1/whileWhile"lstm_1/while/loop_counter:output:0(lstm_1/while/maximum_iterations:output:0lstm_1/time:output:0lstm_1/TensorArrayV2_1:handle:0lstm_1/zeros:output:0lstm_1/zeros_1:output:0lstm_1/strided_slice_1:output:0>lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_1_lstm_cell_65_matmul_readvariableop_resource4lstm_1_lstm_cell_65_matmul_1_readvariableop_resource3lstm_1_lstm_cell_65_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*%
bodyR
lstm_1_while_body_1548405*%
condR
lstm_1_while_cond_1548404*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations 2
lstm_1/while√
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   29
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeЕ
)lstm_1/TensorArrayV2Stack/TensorListStackTensorListStacklstm_1/while:output:3@lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype02+
)lstm_1/TensorArrayV2Stack/TensorListStackП
lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
lstm_1/strided_slice_3/stackК
lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_1/strided_slice_3/stack_1К
lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_3/stack_2≈
lstm_1/strided_slice_3StridedSlice2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_1/strided_slice_3/stack:output:0'lstm_1/strided_slice_3/stack_1:output:0'lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
lstm_1/strided_slice_3З
lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_1/transpose_1/perm¬
lstm_1/transpose_1	Transpose2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А2
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
lstm_2/ShapeВ
lstm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice/stackЖ
lstm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_2/strided_slice/stack_1Ж
lstm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_2/strided_slice/stack_2М
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
lstm_2/zeros/mul/yИ
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
B :и2
lstm_2/zeros/Less/yГ
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
lstm_2/zeros/packed/1Я
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
lstm_2/zeros/ConstС
lstm_2/zerosFilllstm_2/zeros/packed:output:0lstm_2/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_2/zerosn
lstm_2/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_2/zeros_1/mul/yО
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
B :и2
lstm_2/zeros_1/Less/yЛ
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
lstm_2/zeros_1/packed/1•
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
lstm_2/zeros_1/ConstЩ
lstm_2/zeros_1Filllstm_2/zeros_1/packed:output:0lstm_2/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_2/zeros_1Г
lstm_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_2/transpose/perm†
lstm_2/transpose	Transposelstm_1/transpose_1:y:0lstm_2/transpose/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А2
lstm_2/transposed
lstm_2/Shape_1Shapelstm_2/transpose:y:0*
T0*
_output_shapes
:2
lstm_2/Shape_1Ж
lstm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice_1/stackК
lstm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_1/stack_1К
lstm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_1/stack_2Ш
lstm_2/strided_slice_1StridedSlicelstm_2/Shape_1:output:0%lstm_2/strided_slice_1/stack:output:0'lstm_2/strided_slice_1/stack_1:output:0'lstm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_2/strided_slice_1У
"lstm_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2$
"lstm_2/TensorArrayV2/element_shapeќ
lstm_2/TensorArrayV2TensorListReserve+lstm_2/TensorArrayV2/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_2/TensorArrayV2Ќ
<lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2>
<lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeФ
.lstm_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_2/transpose:y:0Elstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_2/TensorArrayUnstack/TensorListFromTensorЖ
lstm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice_2/stackК
lstm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_2/stack_1К
lstm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_2/stack_2І
lstm_2/strided_slice_2StridedSlicelstm_2/transpose:y:0%lstm_2/strided_slice_2/stack:output:0'lstm_2/strided_slice_2/stack_1:output:0'lstm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
lstm_2/strided_slice_2Ћ
)lstm_2/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp2lstm_2_lstm_cell_66_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02+
)lstm_2/lstm_cell_66/MatMul/ReadVariableOp…
lstm_2/lstm_cell_66/MatMulMatMullstm_2/strided_slice_2:output:01lstm_2/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_2/lstm_cell_66/MatMul–
+lstm_2/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOp4lstm_2_lstm_cell_66_matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02-
+lstm_2/lstm_cell_66/MatMul_1/ReadVariableOp≈
lstm_2/lstm_cell_66/MatMul_1MatMullstm_2/zeros:output:03lstm_2/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_2/lstm_cell_66/MatMul_1Љ
lstm_2/lstm_cell_66/addAddV2$lstm_2/lstm_cell_66/MatMul:product:0&lstm_2/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_2/lstm_cell_66/add…
*lstm_2/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp3lstm_2_lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*lstm_2/lstm_cell_66/BiasAdd/ReadVariableOp…
lstm_2/lstm_cell_66/BiasAddBiasAddlstm_2/lstm_cell_66/add:z:02lstm_2/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_2/lstm_cell_66/BiasAddМ
#lstm_2/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#lstm_2/lstm_cell_66/split/split_dimП
lstm_2/lstm_cell_66/splitSplit,lstm_2/lstm_cell_66/split/split_dim:output:0$lstm_2/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split2
lstm_2/lstm_cell_66/splitЫ
lstm_2/lstm_cell_66/SigmoidSigmoid"lstm_2/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_2/lstm_cell_66/SigmoidЯ
lstm_2/lstm_cell_66/Sigmoid_1Sigmoid"lstm_2/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_2/lstm_cell_66/Sigmoid_1І
lstm_2/lstm_cell_66/mulMul!lstm_2/lstm_cell_66/Sigmoid_1:y:0lstm_2/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_2/lstm_cell_66/mulЯ
lstm_2/lstm_cell_66/Sigmoid_2Sigmoid"lstm_2/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_2/lstm_cell_66/Sigmoid_2ґ
lstm_2/lstm_cell_66/mul_1Mul"lstm_2/lstm_cell_66/split:output:2!lstm_2/lstm_cell_66/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_2/lstm_cell_66/mul_1Щ
lstm_2/lstm_cell_66/IdentityIdentitylstm_2/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_2/lstm_cell_66/IdentityЖ
lstm_2/lstm_cell_66/IdentityN	IdentityNlstm_2/lstm_cell_66/mul_1:z:0"lstm_2/lstm_cell_66/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1548552*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
lstm_2/lstm_cell_66/IdentityNЄ
lstm_2/lstm_cell_66/mul_2Mullstm_2/lstm_cell_66/Sigmoid:y:0&lstm_2/lstm_cell_66/IdentityN:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_2/lstm_cell_66/mul_2≠
lstm_2/lstm_cell_66/add_1AddV2lstm_2/lstm_cell_66/mul:z:0lstm_2/lstm_cell_66/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_2/lstm_cell_66/add_1Я
lstm_2/lstm_cell_66/Sigmoid_3Sigmoid"lstm_2/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_2/lstm_cell_66/Sigmoid_3Ъ
lstm_2/lstm_cell_66/Sigmoid_4Sigmoidlstm_2/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_2/lstm_cell_66/Sigmoid_4±
lstm_2/lstm_cell_66/mul_3Mullstm_2/lstm_cell_66/add_1:z:0!lstm_2/lstm_cell_66/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_2/lstm_cell_66/mul_3Э
lstm_2/lstm_cell_66/Identity_1Identitylstm_2/lstm_cell_66/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2 
lstm_2/lstm_cell_66/Identity_1Е
lstm_2/lstm_cell_66/IdentityN_1	IdentityNlstm_2/lstm_cell_66/mul_3:z:0lstm_2/lstm_cell_66/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1548561*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2!
lstm_2/lstm_cell_66/IdentityN_1Љ
lstm_2/lstm_cell_66/mul_4Mul!lstm_2/lstm_cell_66/Sigmoid_3:y:0(lstm_2/lstm_cell_66/IdentityN_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
lstm_2/lstm_cell_66/mul_4Э
$lstm_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2&
$lstm_2/TensorArrayV2_1/element_shape‘
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
lstm_2/timeН
lstm_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2!
lstm_2/while/maximum_iterationsx
lstm_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_2/while/loop_counterў
lstm_2/whileWhile"lstm_2/while/loop_counter:output:0(lstm_2/while/maximum_iterations:output:0lstm_2/time:output:0lstm_2/TensorArrayV2_1:handle:0lstm_2/zeros:output:0lstm_2/zeros_1:output:0lstm_2/strided_slice_1:output:0>lstm_2/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_2_lstm_cell_66_matmul_readvariableop_resource4lstm_2_lstm_cell_66_matmul_1_readvariableop_resource3lstm_2_lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€@:€€€€€€€€€@: : : : : *%
_read_only_resource_inputs
	
*%
bodyR
lstm_2_while_body_1548572*%
condR
lstm_2_while_cond_1548571*K
output_shapes:
8: : : : :€€€€€€€€€@:€€€€€€€€€@: : : : : *
parallel_iterations 2
lstm_2/while√
7lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   29
7lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeД
)lstm_2/TensorArrayV2Stack/TensorListStackTensorListStacklstm_2/while:output:3@lstm_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€@*
element_dtype02+
)lstm_2/TensorArrayV2Stack/TensorListStackП
lstm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
lstm_2/strided_slice_3/stackК
lstm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_2/strided_slice_3/stack_1К
lstm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_3/stack_2ƒ
lstm_2/strided_slice_3StridedSlice2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_2/strided_slice_3/stack:output:0'lstm_2/strided_slice_3/stack_1:output:0'lstm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2
lstm_2/strided_slice_3З
lstm_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_2/transpose_1/permЅ
lstm_2/transpose_1	Transpose2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€@2
lstm_2/transpose_1t
lstm_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_2/runtimeС
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2 
time_distributed/Reshape/shape≤
time_distributed/ReshapeReshapelstm_2/transpose_1:y:0'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
time_distributed/ReshapeЎ
.time_distributed/dense_2/MatMul/ReadVariableOpReadVariableOp7time_distributed_dense_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype020
.time_distributed/dense_2/MatMul/ReadVariableOpў
time_distributed/dense_2/MatMulMatMul!time_distributed/Reshape:output:06time_distributed/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2!
time_distributed/dense_2/MatMul„
/time_distributed/dense_2/BiasAdd/ReadVariableOpReadVariableOp8time_distributed_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype021
/time_distributed/dense_2/BiasAdd/ReadVariableOpе
 time_distributed/dense_2/BiasAddBiasAdd)time_distributed/dense_2/MatMul:product:07time_distributed/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2"
 time_distributed/dense_2/BiasAddђ
 time_distributed/dense_2/SigmoidSigmoid)time_distributed/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2"
 time_distributed/dense_2/Sigmoid∆
time_distributed/dense_2/mulMul)time_distributed/dense_2/BiasAdd:output:0$time_distributed/dense_2/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
time_distributed/dense_2/mul¶
!time_distributed/dense_2/IdentityIdentity time_distributed/dense_2/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2#
!time_distributed/dense_2/IdentityЪ
"time_distributed/dense_2/IdentityN	IdentityN time_distributed/dense_2/mul:z:0)time_distributed/dense_2/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1548673*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2$
"time_distributed/dense_2/IdentityNЩ
 time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€   @   2"
 time_distributed/Reshape_1/shape—
time_distributed/Reshape_1Reshape+time_distributed/dense_2/IdentityN:output:0)time_distributed/Reshape_1/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€@2
time_distributed/Reshape_1Х
 time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2"
 time_distributed/Reshape_2/shapeЄ
time_distributed/Reshape_2Reshapelstm_2/transpose_1:y:0)time_distributed/Reshape_2/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
time_distributed/Reshape_2Х
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2"
 time_distributed_1/Reshape/shape≈
time_distributed_1/ReshapeReshape#time_distributed/Reshape_1:output:0)time_distributed_1/Reshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
time_distributed_1/Reshapeё
0time_distributed_1/dense_3/MatMul/ReadVariableOpReadVariableOp9time_distributed_1_dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype022
0time_distributed_1/dense_3/MatMul/ReadVariableOpб
!time_distributed_1/dense_3/MatMulMatMul#time_distributed_1/Reshape:output:08time_distributed_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2#
!time_distributed_1/dense_3/MatMulЁ
1time_distributed_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp:time_distributed_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype023
1time_distributed_1/dense_3/BiasAdd/ReadVariableOpн
"time_distributed_1/dense_3/BiasAddBiasAdd+time_distributed_1/dense_3/MatMul:product:09time_distributed_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2$
"time_distributed_1/dense_3/BiasAddЭ
"time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€      2$
"time_distributed_1/Reshape_1/shape„
time_distributed_1/Reshape_1Reshape+time_distributed_1/dense_3/BiasAdd:output:0+time_distributed_1/Reshape_1/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
time_distributed_1/Reshape_1Щ
"time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2$
"time_distributed_1/Reshape_2/shapeЋ
time_distributed_1/Reshape_2Reshape#time_distributed/Reshape_1:output:0+time_distributed_1/Reshape_2/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
time_distributed_1/Reshape_2у
IdentityIdentity%time_distributed_1/Reshape_1:output:0+^lstm_1/lstm_cell_65/BiasAdd/ReadVariableOp*^lstm_1/lstm_cell_65/MatMul/ReadVariableOp,^lstm_1/lstm_cell_65/MatMul_1/ReadVariableOp^lstm_1/while+^lstm_2/lstm_cell_66/BiasAdd/ReadVariableOp*^lstm_2/lstm_cell_66/MatMul/ReadVariableOp,^lstm_2/lstm_cell_66/MatMul_1/ReadVariableOp^lstm_2/while0^time_distributed/dense_2/BiasAdd/ReadVariableOp/^time_distributed/dense_2/MatMul/ReadVariableOp2^time_distributed_1/dense_3/BiasAdd/ReadVariableOp1^time_distributed_1/dense_3/MatMul/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€: : : : : : : : : : 2X
*lstm_1/lstm_cell_65/BiasAdd/ReadVariableOp*lstm_1/lstm_cell_65/BiasAdd/ReadVariableOp2V
)lstm_1/lstm_cell_65/MatMul/ReadVariableOp)lstm_1/lstm_cell_65/MatMul/ReadVariableOp2Z
+lstm_1/lstm_cell_65/MatMul_1/ReadVariableOp+lstm_1/lstm_cell_65/MatMul_1/ReadVariableOp2
lstm_1/whilelstm_1/while2X
*lstm_2/lstm_cell_66/BiasAdd/ReadVariableOp*lstm_2/lstm_cell_66/BiasAdd/ReadVariableOp2V
)lstm_2/lstm_cell_66/MatMul/ReadVariableOp)lstm_2/lstm_cell_66/MatMul/ReadVariableOp2Z
+lstm_2/lstm_cell_66/MatMul_1/ReadVariableOp+lstm_2/lstm_cell_66/MatMul_1/ReadVariableOp2
lstm_2/whilelstm_2/while2b
/time_distributed/dense_2/BiasAdd/ReadVariableOp/time_distributed/dense_2/BiasAdd/ReadVariableOp2`
.time_distributed/dense_2/MatMul/ReadVariableOp.time_distributed/dense_2/MatMul/ReadVariableOp2f
1time_distributed_1/dense_3/BiasAdd/ReadVariableOp1time_distributed_1/dense_3/BiasAdd/ReadVariableOp2d
0time_distributed_1/dense_3/MatMul/ReadVariableOp0time_distributed_1/dense_3/MatMul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
џ
ґ
(__inference_lstm_1_layer_call_fn_1549842

inputs
unknown:	А
	unknown_0:
АА
	unknown_1:	А
identityИҐStatefulPartitionedCallЕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_1_layer_call_and_return_conditional_losses_15481152
StatefulPartitionedCallУ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
љE
Й
C__inference_lstm_2_layer_call_and_return_conditional_losses_1546687

inputs(
lstm_cell_66_1546605:
АА'
lstm_cell_66_1546607:	@А#
lstm_cell_66_1546609:	А
identityИҐ$lstm_cell_66/StatefulPartitionedCallҐwhileD
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
strided_slice/stack_2в
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
B :и2
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
:€€€€€€€€€@2
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
B :и2
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
:€€€€€€€€€@2	
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
!:€€€€€€€€€€€€€€€€€€А2
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
strided_slice_1/stack_2о
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
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2э
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_2°
$lstm_cell_66/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_66_1546605lstm_cell_66_1546607lstm_cell_66_1546609*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_15465402&
$lstm_cell_66/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter®
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_66_1546605lstm_cell_66_1546607lstm_cell_66_1546609*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€@:€€€€€€€€€@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1546618*
condR
while_cond_1546617*K
output_shapes:
8: : : : :€€€€€€€€€@:€€€€€€€€€@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
:€€€€€€€€€@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeЯ
IdentityIdentitytranspose_1:y:0%^lstm_cell_66/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€€€€€€€€€€А: : : 2L
$lstm_cell_66/StatefulPartitionedCall$lstm_cell_66/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
Ѕ
°
4__inference_time_distributed_1_layer_call_fn_1550797

inputs
unknown:@
	unknown_0:
identityИҐStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_15476362
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ё
»
while_cond_1549190
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1549190___redundant_placeholder05
1while_while_cond_1549190___redundant_placeholder15
1while_while_cond_1549190___redundant_placeholder25
1while_while_cond_1549190___redundant_placeholder3
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
B: : : : :€€€€€€€€€А:€€€€€€€€€А: ::::: 

_output_shapes
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
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
•&
м
while_body_1546398
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_66_1546422_0:
АА/
while_lstm_cell_66_1546424_0:	@А+
while_lstm_cell_66_1546426_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_66_1546422:
АА-
while_lstm_cell_66_1546424:	@А)
while_lstm_cell_66_1546426:	АИҐ*while/lstm_cell_66/StatefulPartitionedCall√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape‘
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:€€€€€€€€€А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemе
*while/lstm_cell_66/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_66_1546422_0while_lstm_cell_66_1546424_0while_lstm_cell_66_1546426_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_15463842,
*while/lstm_cell_66/StatefulPartitionedCallч
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_66/StatefulPartitionedCall:output:0*
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
while/add_1Л
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_66/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/IdentityЮ
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_66/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Н
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_66/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2Ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_66/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3ƒ
while/Identity_4Identity3while/lstm_cell_66/StatefulPartitionedCall:output:1+^while/lstm_cell_66/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€@2
while/Identity_4ƒ
while/Identity_5Identity3while/lstm_cell_66/StatefulPartitionedCall:output:2+^while/lstm_cell_66/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_66_1546422while_lstm_cell_66_1546422_0":
while_lstm_cell_66_1546424while_lstm_cell_66_1546424_0":
while_lstm_cell_66_1546426while_lstm_cell_66_1546426_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€@:€€€€€€€€€@: : : : : 2X
*while/lstm_cell_66/StatefulPartitionedCall*while/lstm_cell_66/StatefulPartitionedCall: 

_output_shapes
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
:€€€€€€€€€@:-)
'
_output_shapes
:€€€€€€€€€@:

_output_shapes
: :

_output_shapes
: 
Е
Є
(__inference_lstm_1_layer_call_fn_1549820
inputs_0
unknown:	А
	unknown_0:
АА
	unknown_1:	А
identityИҐStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_1_layer_call_and_return_conditional_losses_15460372
StatefulPartitionedCallЬ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs/0
б
А
I__inference_sequential_1_layer_call_and_return_conditional_losses_1548295
lstm_1_input!
lstm_1_1548266:	А"
lstm_1_1548268:
АА
lstm_1_1548270:	А"
lstm_2_1548273:
АА!
lstm_2_1548275:	@А
lstm_2_1548277:	А*
time_distributed_1548280:@@&
time_distributed_1548282:@,
time_distributed_1_1548287:@(
time_distributed_1_1548289:
identityИҐlstm_1/StatefulPartitionedCallҐlstm_2/StatefulPartitionedCallҐ(time_distributed/StatefulPartitionedCallҐ*time_distributed_1/StatefulPartitionedCall™
lstm_1/StatefulPartitionedCallStatefulPartitionedCalllstm_1_inputlstm_1_1548266lstm_1_1548268lstm_1_1548270*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_1_layer_call_and_return_conditional_losses_15481152 
lstm_1/StatefulPartitionedCallƒ
lstm_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0lstm_2_1548273lstm_2_1548275lstm_2_1548277*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_2_layer_call_and_return_conditional_losses_15479222 
lstm_2/StatefulPartitionedCallд
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0time_distributed_1548280time_distributed_1548282*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_layer_call_and_return_conditional_losses_15477312*
(time_distributed/StatefulPartitionedCallС
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2 
time_distributed/Reshape/shape√
time_distributed/ReshapeReshape'lstm_2/StatefulPartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
time_distributed/Reshapeш
*time_distributed_1/StatefulPartitionedCallStatefulPartitionedCall1time_distributed/StatefulPartitionedCall:output:0time_distributed_1_1548287time_distributed_1_1548289*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_15476932,
*time_distributed_1/StatefulPartitionedCallХ
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2"
 time_distributed_1/Reshape/shape”
time_distributed_1/ReshapeReshape1time_distributed/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
time_distributed_1/Reshape•
IdentityIdentity3time_distributed_1/StatefulPartitionedCall:output:0^lstm_1/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_1/StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€: : : : : : : : : : 2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_1/StatefulPartitionedCall*time_distributed_1/StatefulPartitionedCall:Y U
+
_output_shapes
:€€€€€€€€€
&
_user_specified_namelstm_1_input
÷
“
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_1547177

inputs!
dense_3_1547167:@
dense_3_1547169:
identityИҐdense_3/StatefulPartitionedCallD
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
strided_slice/stack_2в
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
valueB"€€€€@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
ReshapeЬ
dense_3/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_3_1547167dense_3_1547169*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_15471182!
dense_3/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2®
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape§
	Reshape_1Reshape(dense_3/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
	Reshape_1Х
IdentityIdentityReshape_1:output:0 ^dense_3/StatefulPartitionedCall*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€@: : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
ѕ
ъ
I__inference_sequential_1_layer_call_and_return_conditional_losses_1548183

inputs!
lstm_1_1548154:	А"
lstm_1_1548156:
АА
lstm_1_1548158:	А"
lstm_2_1548161:
АА!
lstm_2_1548163:	@А
lstm_2_1548165:	А*
time_distributed_1548168:@@&
time_distributed_1548170:@,
time_distributed_1_1548175:@(
time_distributed_1_1548177:
identityИҐlstm_1/StatefulPartitionedCallҐlstm_2/StatefulPartitionedCallҐ(time_distributed/StatefulPartitionedCallҐ*time_distributed_1/StatefulPartitionedCall§
lstm_1/StatefulPartitionedCallStatefulPartitionedCallinputslstm_1_1548154lstm_1_1548156lstm_1_1548158*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_1_layer_call_and_return_conditional_losses_15481152 
lstm_1/StatefulPartitionedCallƒ
lstm_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0lstm_2_1548161lstm_2_1548163lstm_2_1548165*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_2_layer_call_and_return_conditional_losses_15479222 
lstm_2/StatefulPartitionedCallд
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0time_distributed_1548168time_distributed_1548170*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_layer_call_and_return_conditional_losses_15477312*
(time_distributed/StatefulPartitionedCallС
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2 
time_distributed/Reshape/shape√
time_distributed/ReshapeReshape'lstm_2/StatefulPartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
time_distributed/Reshapeш
*time_distributed_1/StatefulPartitionedCallStatefulPartitionedCall1time_distributed/StatefulPartitionedCall:output:0time_distributed_1_1548175time_distributed_1_1548177*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_15476932,
*time_distributed_1/StatefulPartitionedCallХ
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2"
 time_distributed_1/Reshape/shape”
time_distributed_1/ReshapeReshape1time_distributed/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
time_distributed_1/Reshape•
IdentityIdentity3time_distributed_1/StatefulPartitionedCall:output:0^lstm_1/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_1/StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€: : : : : : : : : : 2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_1/StatefulPartitionedCall*time_distributed_1/StatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
є
ч
D__inference_dense_2_layer_call_and_return_conditional_losses_1546979

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
Sigmoidb
mulMulBiasAdd:output:0Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
mul[
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2

Identityґ
	IdentityN	IdentityNmul:z:0BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1546972*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
	IdentityNЫ

Identity_1IdentityIdentityN:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
±Y
©
 __inference__traced_save_1551232
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

identity_1ИҐMergeV2CheckpointsП
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
ShardedFilename/shard¶
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename÷
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:**
dtype0*и
valueёBџ*B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names№
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:**
dtype0*g
value^B\*B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesы
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop4savev2_lstm_1_lstm_cell_1_kernel_read_readvariableop>savev2_lstm_1_lstm_cell_1_recurrent_kernel_read_readvariableop2savev2_lstm_1_lstm_cell_1_bias_read_readvariableop4savev2_lstm_2_lstm_cell_2_kernel_read_readvariableop>savev2_lstm_2_lstm_cell_2_recurrent_kernel_read_readvariableop2savev2_lstm_2_lstm_cell_2_bias_read_readvariableop2savev2_time_distributed_kernel_read_readvariableop0savev2_time_distributed_bias_read_readvariableop4savev2_time_distributed_1_kernel_read_readvariableop2savev2_time_distributed_1_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop;savev2_adam_lstm_1_lstm_cell_1_kernel_m_read_readvariableopEsavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_1_lstm_cell_1_bias_m_read_readvariableop;savev2_adam_lstm_2_lstm_cell_2_kernel_m_read_readvariableopEsavev2_adam_lstm_2_lstm_cell_2_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_2_lstm_cell_2_bias_m_read_readvariableop9savev2_adam_time_distributed_kernel_m_read_readvariableop7savev2_adam_time_distributed_bias_m_read_readvariableop;savev2_adam_time_distributed_1_kernel_m_read_readvariableop9savev2_adam_time_distributed_1_bias_m_read_readvariableop;savev2_adam_lstm_1_lstm_cell_1_kernel_v_read_readvariableopEsavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_1_lstm_cell_1_bias_v_read_readvariableop;savev2_adam_lstm_2_lstm_cell_2_kernel_v_read_readvariableopEsavev2_adam_lstm_2_lstm_cell_2_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_2_lstm_cell_2_bias_v_read_readvariableop9savev2_adam_time_distributed_kernel_v_read_readvariableop7savev2_adam_time_distributed_bias_v_read_readvariableop;savev2_adam_time_distributed_1_kernel_v_read_readvariableop9savev2_adam_time_distributed_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *8
dtypes.
,2*	2
SaveV2Ї
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes°
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

identity_1Identity_1:output:0*√
_input_shapes±
Ѓ: : : : : : :	А:
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
Ђ
Ю
M__inference_time_distributed_layer_call_and_return_conditional_losses_1550597

inputs8
&dense_2_matmul_readvariableop_resource:@@5
'dense_2_biasadd_readvariableop_resource:@
identityИҐdense_2/BiasAdd/ReadVariableOpҐdense_2/MatMul/ReadVariableOpD
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
strided_slice/stack_2в
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
valueB"€€€€@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
Reshape•
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_2/MatMul/ReadVariableOpХ
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_2/MatMul§
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_2/BiasAdd/ReadVariableOp°
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_2/BiasAddy
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_2/SigmoidВ
dense_2/mulMuldense_2/BiasAdd:output:0dense_2/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_2/muls
dense_2/IdentityIdentitydense_2/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_2/Identity÷
dense_2/IdentityN	IdentityNdense_2/mul:z:0dense_2/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1550586*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
dense_2/IdentityNq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2
Reshape_1/shape/2®
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shapeЦ
	Reshape_1Reshapedense_2/IdentityN:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2
	Reshape_1і
IdentityIdentityReshape_1:output:0^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€@: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
Ђ
Ю
M__inference_time_distributed_layer_call_and_return_conditional_losses_1550624

inputs8
&dense_2_matmul_readvariableop_resource:@@5
'dense_2_biasadd_readvariableop_resource:@
identityИҐdense_2/BiasAdd/ReadVariableOpҐdense_2/MatMul/ReadVariableOpD
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
strided_slice/stack_2в
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
valueB"€€€€@   2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
Reshape•
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_2/MatMul/ReadVariableOpХ
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_2/MatMul§
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_2/BiasAdd/ReadVariableOp°
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_2/BiasAddy
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_2/SigmoidВ
dense_2/mulMuldense_2/BiasAdd:output:0dense_2/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_2/muls
dense_2/IdentityIdentitydense_2/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_2/Identity÷
dense_2/IdentityN	IdentityNdense_2/mul:z:0dense_2/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1550613*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2
dense_2/IdentityNq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2
Reshape_1/shape/2®
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shapeЦ
	Reshape_1Reshapedense_2/IdentityN:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2
	Reshape_1і
IdentityIdentityReshape_1:output:0^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€@: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
б
Я
2__inference_time_distributed_layer_call_fn_1550682

inputs
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_layer_call_and_return_conditional_losses_15470382
StatefulPartitionedCallЫ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
±

‘
lstm_1_while_cond_1548772*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3,
(lstm_1_while_less_lstm_1_strided_slice_1C
?lstm_1_while_lstm_1_while_cond_1548772___redundant_placeholder0C
?lstm_1_while_lstm_1_while_cond_1548772___redundant_placeholder1C
?lstm_1_while_lstm_1_while_cond_1548772___redundant_placeholder2C
?lstm_1_while_lstm_1_while_cond_1548772___redundant_placeholder3
lstm_1_while_identity
У
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
B: : : : :€€€€€€€€€А:€€€€€€€€€А: ::::: 

_output_shapes
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
:€€€€€€€€€А:.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
ћc
Ь
C__inference_lstm_1_layer_call_and_return_conditional_losses_1549798

inputs>
+lstm_cell_65_matmul_readvariableop_resource:	АA
-lstm_cell_65_matmul_1_readvariableop_resource:
АА;
,lstm_cell_65_biasadd_readvariableop_resource:	А
identityИҐ#lstm_cell_65/BiasAdd/ReadVariableOpҐ"lstm_cell_65/MatMul/ReadVariableOpҐ$lstm_cell_65/MatMul_1/ReadVariableOpҐwhileD
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
strided_slice/stack_2в
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
B :и2
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
:€€€€€€€€€А2
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
B :и2
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
:€€€€€€€€€А2	
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
:€€€€€€€€€2
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
strided_slice_1/stack_2о
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
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2µ
"lstm_cell_65/MatMul/ReadVariableOpReadVariableOp+lstm_cell_65_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02$
"lstm_cell_65/MatMul/ReadVariableOp≠
lstm_cell_65/MatMulMatMulstrided_slice_2:output:0*lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/MatMulЉ
$lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_65_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02&
$lstm_cell_65/MatMul_1/ReadVariableOp©
lstm_cell_65/MatMul_1MatMulzeros:output:0,lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/MatMul_1†
lstm_cell_65/addAddV2lstm_cell_65/MatMul:product:0lstm_cell_65/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/addі
#lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_65_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#lstm_cell_65/BiasAdd/ReadVariableOp≠
lstm_cell_65/BiasAddBiasAddlstm_cell_65/add:z:0+lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/BiasAdd~
lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_65/split/split_dimч
lstm_cell_65/splitSplit%lstm_cell_65/split/split_dim:output:0lstm_cell_65/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_split2
lstm_cell_65/splitЗ
lstm_cell_65/SigmoidSigmoidlstm_cell_65/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/SigmoidЛ
lstm_cell_65/Sigmoid_1Sigmoidlstm_cell_65/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Sigmoid_1М
lstm_cell_65/mulMullstm_cell_65/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/mulЛ
lstm_cell_65/Sigmoid_2Sigmoidlstm_cell_65/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Sigmoid_2Ы
lstm_cell_65/mul_1Mullstm_cell_65/split:output:2lstm_cell_65/Sigmoid_2:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/mul_1Е
lstm_cell_65/IdentityIdentitylstm_cell_65/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Identityм
lstm_cell_65/IdentityN	IdentityNlstm_cell_65/mul_1:z:0lstm_cell_65/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1549684*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2
lstm_cell_65/IdentityNЭ
lstm_cell_65/mul_2Mullstm_cell_65/Sigmoid:y:0lstm_cell_65/IdentityN:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/mul_2Т
lstm_cell_65/add_1AddV2lstm_cell_65/mul:z:0lstm_cell_65/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/add_1Л
lstm_cell_65/Sigmoid_3Sigmoidlstm_cell_65/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Sigmoid_3Ж
lstm_cell_65/Sigmoid_4Sigmoidlstm_cell_65/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Sigmoid_4Ц
lstm_cell_65/mul_3Mullstm_cell_65/add_1:z:0lstm_cell_65/Sigmoid_4:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/mul_3Й
lstm_cell_65/Identity_1Identitylstm_cell_65/mul_3:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/Identity_1л
lstm_cell_65/IdentityN_1	IdentityNlstm_cell_65/mul_3:z:0lstm_cell_65/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1549693*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2
lstm_cell_65/IdentityN_1°
lstm_cell_65/mul_4Mullstm_cell_65/Sigmoid_3:y:0!lstm_cell_65/IdentityN_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
lstm_cell_65/mul_4П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterф
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_65_matmul_readvariableop_resource-lstm_cell_65_matmul_1_readvariableop_resource,lstm_cell_65_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1549704*
condR
while_cond_1549703*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   22
0TensorArrayV2Stack/TensorListStack/element_shapeй
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¶
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeв
IdentityIdentitytranspose_1:y:0$^lstm_cell_65/BiasAdd/ReadVariableOp#^lstm_cell_65/MatMul/ReadVariableOp%^lstm_cell_65/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2J
#lstm_cell_65/BiasAdd/ReadVariableOp#lstm_cell_65/BiasAdd/ReadVariableOp2H
"lstm_cell_65/MatMul/ReadVariableOp"lstm_cell_65/MatMul/ReadVariableOp2L
$lstm_cell_65/MatMul_1/ReadVariableOp$lstm_cell_65/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
’ќ
ѓ
"__inference__wrapped_model_1545649
lstm_1_inputR
?sequential_1_lstm_1_lstm_cell_65_matmul_readvariableop_resource:	АU
Asequential_1_lstm_1_lstm_cell_65_matmul_1_readvariableop_resource:
ААO
@sequential_1_lstm_1_lstm_cell_65_biasadd_readvariableop_resource:	АS
?sequential_1_lstm_2_lstm_cell_66_matmul_readvariableop_resource:
ААT
Asequential_1_lstm_2_lstm_cell_66_matmul_1_readvariableop_resource:	@АO
@sequential_1_lstm_2_lstm_cell_66_biasadd_readvariableop_resource:	АV
Dsequential_1_time_distributed_dense_2_matmul_readvariableop_resource:@@S
Esequential_1_time_distributed_dense_2_biasadd_readvariableop_resource:@X
Fsequential_1_time_distributed_1_dense_3_matmul_readvariableop_resource:@U
Gsequential_1_time_distributed_1_dense_3_biasadd_readvariableop_resource:
identityИҐ7sequential_1/lstm_1/lstm_cell_65/BiasAdd/ReadVariableOpҐ6sequential_1/lstm_1/lstm_cell_65/MatMul/ReadVariableOpҐ8sequential_1/lstm_1/lstm_cell_65/MatMul_1/ReadVariableOpҐsequential_1/lstm_1/whileҐ7sequential_1/lstm_2/lstm_cell_66/BiasAdd/ReadVariableOpҐ6sequential_1/lstm_2/lstm_cell_66/MatMul/ReadVariableOpҐ8sequential_1/lstm_2/lstm_cell_66/MatMul_1/ReadVariableOpҐsequential_1/lstm_2/whileҐ<sequential_1/time_distributed/dense_2/BiasAdd/ReadVariableOpҐ;sequential_1/time_distributed/dense_2/MatMul/ReadVariableOpҐ>sequential_1/time_distributed_1/dense_3/BiasAdd/ReadVariableOpҐ=sequential_1/time_distributed_1/dense_3/MatMul/ReadVariableOpr
sequential_1/lstm_1/ShapeShapelstm_1_input*
T0*
_output_shapes
:2
sequential_1/lstm_1/ShapeЬ
'sequential_1/lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_1/lstm_1/strided_slice/stack†
)sequential_1/lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_1/lstm_1/strided_slice/stack_1†
)sequential_1/lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_1/lstm_1/strided_slice/stack_2Џ
!sequential_1/lstm_1/strided_sliceStridedSlice"sequential_1/lstm_1/Shape:output:00sequential_1/lstm_1/strided_slice/stack:output:02sequential_1/lstm_1/strided_slice/stack_1:output:02sequential_1/lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_1/lstm_1/strided_sliceЕ
sequential_1/lstm_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2!
sequential_1/lstm_1/zeros/mul/yЉ
sequential_1/lstm_1/zeros/mulMul*sequential_1/lstm_1/strided_slice:output:0(sequential_1/lstm_1/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_1/lstm_1/zeros/mulЗ
 sequential_1/lstm_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2"
 sequential_1/lstm_1/zeros/Less/yЈ
sequential_1/lstm_1/zeros/LessLess!sequential_1/lstm_1/zeros/mul:z:0)sequential_1/lstm_1/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
sequential_1/lstm_1/zeros/LessЛ
"sequential_1/lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2$
"sequential_1/lstm_1/zeros/packed/1”
 sequential_1/lstm_1/zeros/packedPack*sequential_1/lstm_1/strided_slice:output:0+sequential_1/lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_1/lstm_1/zeros/packedЗ
sequential_1/lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_1/lstm_1/zeros/Const∆
sequential_1/lstm_1/zerosFill)sequential_1/lstm_1/zeros/packed:output:0(sequential_1/lstm_1/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
sequential_1/lstm_1/zerosЙ
!sequential_1/lstm_1/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2#
!sequential_1/lstm_1/zeros_1/mul/y¬
sequential_1/lstm_1/zeros_1/mulMul*sequential_1/lstm_1/strided_slice:output:0*sequential_1/lstm_1/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_1/lstm_1/zeros_1/mulЛ
"sequential_1/lstm_1/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2$
"sequential_1/lstm_1/zeros_1/Less/yњ
 sequential_1/lstm_1/zeros_1/LessLess#sequential_1/lstm_1/zeros_1/mul:z:0+sequential_1/lstm_1/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_1/lstm_1/zeros_1/LessП
$sequential_1/lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2&
$sequential_1/lstm_1/zeros_1/packed/1ў
"sequential_1/lstm_1/zeros_1/packedPack*sequential_1/lstm_1/strided_slice:output:0-sequential_1/lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_1/lstm_1/zeros_1/packedЛ
!sequential_1/lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_1/lstm_1/zeros_1/Constќ
sequential_1/lstm_1/zeros_1Fill+sequential_1/lstm_1/zeros_1/packed:output:0*sequential_1/lstm_1/zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
sequential_1/lstm_1/zeros_1Э
"sequential_1/lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"sequential_1/lstm_1/transpose/permЉ
sequential_1/lstm_1/transpose	Transposelstm_1_input+sequential_1/lstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
sequential_1/lstm_1/transposeЛ
sequential_1/lstm_1/Shape_1Shape!sequential_1/lstm_1/transpose:y:0*
T0*
_output_shapes
:2
sequential_1/lstm_1/Shape_1†
)sequential_1/lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_1/lstm_1/strided_slice_1/stack§
+sequential_1/lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_1/strided_slice_1/stack_1§
+sequential_1/lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_1/strided_slice_1/stack_2ж
#sequential_1/lstm_1/strided_slice_1StridedSlice$sequential_1/lstm_1/Shape_1:output:02sequential_1/lstm_1/strided_slice_1/stack:output:04sequential_1/lstm_1/strided_slice_1/stack_1:output:04sequential_1/lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_1/lstm_1/strided_slice_1≠
/sequential_1/lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€21
/sequential_1/lstm_1/TensorArrayV2/element_shapeВ
!sequential_1/lstm_1/TensorArrayV2TensorListReserve8sequential_1/lstm_1/TensorArrayV2/element_shape:output:0,sequential_1/lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!sequential_1/lstm_1/TensorArrayV2з
Isequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2K
Isequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape»
;sequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_1/lstm_1/transpose:y:0Rsequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;sequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor†
)sequential_1/lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_1/lstm_1/strided_slice_2/stack§
+sequential_1/lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_1/strided_slice_2/stack_1§
+sequential_1/lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_1/strided_slice_2/stack_2ф
#sequential_1/lstm_1/strided_slice_2StridedSlice!sequential_1/lstm_1/transpose:y:02sequential_1/lstm_1/strided_slice_2/stack:output:04sequential_1/lstm_1/strided_slice_2/stack_1:output:04sequential_1/lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2%
#sequential_1/lstm_1/strided_slice_2с
6sequential_1/lstm_1/lstm_cell_65/MatMul/ReadVariableOpReadVariableOp?sequential_1_lstm_1_lstm_cell_65_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype028
6sequential_1/lstm_1/lstm_cell_65/MatMul/ReadVariableOpэ
'sequential_1/lstm_1/lstm_cell_65/MatMulMatMul,sequential_1/lstm_1/strided_slice_2:output:0>sequential_1/lstm_1/lstm_cell_65/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2)
'sequential_1/lstm_1/lstm_cell_65/MatMulш
8sequential_1/lstm_1/lstm_cell_65/MatMul_1/ReadVariableOpReadVariableOpAsequential_1_lstm_1_lstm_cell_65_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02:
8sequential_1/lstm_1/lstm_cell_65/MatMul_1/ReadVariableOpщ
)sequential_1/lstm_1/lstm_cell_65/MatMul_1MatMul"sequential_1/lstm_1/zeros:output:0@sequential_1/lstm_1/lstm_cell_65/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2+
)sequential_1/lstm_1/lstm_cell_65/MatMul_1р
$sequential_1/lstm_1/lstm_cell_65/addAddV21sequential_1/lstm_1/lstm_cell_65/MatMul:product:03sequential_1/lstm_1/lstm_cell_65/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2&
$sequential_1/lstm_1/lstm_cell_65/addр
7sequential_1/lstm_1/lstm_cell_65/BiasAdd/ReadVariableOpReadVariableOp@sequential_1_lstm_1_lstm_cell_65_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype029
7sequential_1/lstm_1/lstm_cell_65/BiasAdd/ReadVariableOpэ
(sequential_1/lstm_1/lstm_cell_65/BiasAddBiasAdd(sequential_1/lstm_1/lstm_cell_65/add:z:0?sequential_1/lstm_1/lstm_cell_65/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2*
(sequential_1/lstm_1/lstm_cell_65/BiasAdd¶
0sequential_1/lstm_1/lstm_cell_65/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :22
0sequential_1/lstm_1/lstm_cell_65/split/split_dim«
&sequential_1/lstm_1/lstm_cell_65/splitSplit9sequential_1/lstm_1/lstm_cell_65/split/split_dim:output:01sequential_1/lstm_1/lstm_cell_65/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_split2(
&sequential_1/lstm_1/lstm_cell_65/split√
(sequential_1/lstm_1/lstm_cell_65/SigmoidSigmoid/sequential_1/lstm_1/lstm_cell_65/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2*
(sequential_1/lstm_1/lstm_cell_65/Sigmoid«
*sequential_1/lstm_1/lstm_cell_65/Sigmoid_1Sigmoid/sequential_1/lstm_1/lstm_cell_65/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€А2,
*sequential_1/lstm_1/lstm_cell_65/Sigmoid_1№
$sequential_1/lstm_1/lstm_cell_65/mulMul.sequential_1/lstm_1/lstm_cell_65/Sigmoid_1:y:0$sequential_1/lstm_1/zeros_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2&
$sequential_1/lstm_1/lstm_cell_65/mul«
*sequential_1/lstm_1/lstm_cell_65/Sigmoid_2Sigmoid/sequential_1/lstm_1/lstm_cell_65/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€А2,
*sequential_1/lstm_1/lstm_cell_65/Sigmoid_2л
&sequential_1/lstm_1/lstm_cell_65/mul_1Mul/sequential_1/lstm_1/lstm_cell_65/split:output:2.sequential_1/lstm_1/lstm_cell_65/Sigmoid_2:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2(
&sequential_1/lstm_1/lstm_cell_65/mul_1Ѕ
)sequential_1/lstm_1/lstm_cell_65/IdentityIdentity*sequential_1/lstm_1/lstm_cell_65/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2+
)sequential_1/lstm_1/lstm_cell_65/IdentityЉ
*sequential_1/lstm_1/lstm_cell_65/IdentityN	IdentityN*sequential_1/lstm_1/lstm_cell_65/mul_1:z:0/sequential_1/lstm_1/lstm_cell_65/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1545338*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2,
*sequential_1/lstm_1/lstm_cell_65/IdentityNн
&sequential_1/lstm_1/lstm_cell_65/mul_2Mul,sequential_1/lstm_1/lstm_cell_65/Sigmoid:y:03sequential_1/lstm_1/lstm_cell_65/IdentityN:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2(
&sequential_1/lstm_1/lstm_cell_65/mul_2в
&sequential_1/lstm_1/lstm_cell_65/add_1AddV2(sequential_1/lstm_1/lstm_cell_65/mul:z:0*sequential_1/lstm_1/lstm_cell_65/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2(
&sequential_1/lstm_1/lstm_cell_65/add_1«
*sequential_1/lstm_1/lstm_cell_65/Sigmoid_3Sigmoid/sequential_1/lstm_1/lstm_cell_65/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€А2,
*sequential_1/lstm_1/lstm_cell_65/Sigmoid_3¬
*sequential_1/lstm_1/lstm_cell_65/Sigmoid_4Sigmoid*sequential_1/lstm_1/lstm_cell_65/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2,
*sequential_1/lstm_1/lstm_cell_65/Sigmoid_4ж
&sequential_1/lstm_1/lstm_cell_65/mul_3Mul*sequential_1/lstm_1/lstm_cell_65/add_1:z:0.sequential_1/lstm_1/lstm_cell_65/Sigmoid_4:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2(
&sequential_1/lstm_1/lstm_cell_65/mul_3≈
+sequential_1/lstm_1/lstm_cell_65/Identity_1Identity*sequential_1/lstm_1/lstm_cell_65/mul_3:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2-
+sequential_1/lstm_1/lstm_cell_65/Identity_1ї
,sequential_1/lstm_1/lstm_cell_65/IdentityN_1	IdentityN*sequential_1/lstm_1/lstm_cell_65/mul_3:z:0*sequential_1/lstm_1/lstm_cell_65/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1545347*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А2.
,sequential_1/lstm_1/lstm_cell_65/IdentityN_1с
&sequential_1/lstm_1/lstm_cell_65/mul_4Mul.sequential_1/lstm_1/lstm_cell_65/Sigmoid_3:y:05sequential_1/lstm_1/lstm_cell_65/IdentityN_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2(
&sequential_1/lstm_1/lstm_cell_65/mul_4Ј
1sequential_1/lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   23
1sequential_1/lstm_1/TensorArrayV2_1/element_shapeИ
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
sequential_1/lstm_1/timeІ
,sequential_1/lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2.
,sequential_1/lstm_1/while/maximum_iterationsТ
&sequential_1/lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_1/lstm_1/while/loop_counter†
sequential_1/lstm_1/whileWhile/sequential_1/lstm_1/while/loop_counter:output:05sequential_1/lstm_1/while/maximum_iterations:output:0!sequential_1/lstm_1/time:output:0,sequential_1/lstm_1/TensorArrayV2_1:handle:0"sequential_1/lstm_1/zeros:output:0$sequential_1/lstm_1/zeros_1:output:0,sequential_1/lstm_1/strided_slice_1:output:0Ksequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0?sequential_1_lstm_1_lstm_cell_65_matmul_readvariableop_resourceAsequential_1_lstm_1_lstm_cell_65_matmul_1_readvariableop_resource@sequential_1_lstm_1_lstm_cell_65_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*2
body*R(
&sequential_1_lstm_1_while_body_1545358*2
cond*R(
&sequential_1_lstm_1_while_cond_1545357*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations 2
sequential_1/lstm_1/whileЁ
Dsequential_1/lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2F
Dsequential_1/lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeє
6sequential_1/lstm_1/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_1/lstm_1/while:output:3Msequential_1/lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€А*
element_dtype028
6sequential_1/lstm_1/TensorArrayV2Stack/TensorListStack©
)sequential_1/lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2+
)sequential_1/lstm_1/strided_slice_3/stack§
+sequential_1/lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_1/lstm_1/strided_slice_3/stack_1§
+sequential_1/lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_1/strided_slice_3/stack_2У
#sequential_1/lstm_1/strided_slice_3StridedSlice?sequential_1/lstm_1/TensorArrayV2Stack/TensorListStack:tensor:02sequential_1/lstm_1/strided_slice_3/stack:output:04sequential_1/lstm_1/strided_slice_3/stack_1:output:04sequential_1/lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2%
#sequential_1/lstm_1/strided_slice_3°
$sequential_1/lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_1/lstm_1/transpose_1/permц
sequential_1/lstm_1/transpose_1	Transpose?sequential_1/lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_1/lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А2!
sequential_1/lstm_1/transpose_1О
sequential_1/lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_1/lstm_1/runtimeЙ
sequential_1/lstm_2/ShapeShape#sequential_1/lstm_1/transpose_1:y:0*
T0*
_output_shapes
:2
sequential_1/lstm_2/ShapeЬ
'sequential_1/lstm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_1/lstm_2/strided_slice/stack†
)sequential_1/lstm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_1/lstm_2/strided_slice/stack_1†
)sequential_1/lstm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_1/lstm_2/strided_slice/stack_2Џ
!sequential_1/lstm_2/strided_sliceStridedSlice"sequential_1/lstm_2/Shape:output:00sequential_1/lstm_2/strided_slice/stack:output:02sequential_1/lstm_2/strided_slice/stack_1:output:02sequential_1/lstm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_1/lstm_2/strided_sliceД
sequential_1/lstm_2/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2!
sequential_1/lstm_2/zeros/mul/yЉ
sequential_1/lstm_2/zeros/mulMul*sequential_1/lstm_2/strided_slice:output:0(sequential_1/lstm_2/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_1/lstm_2/zeros/mulЗ
 sequential_1/lstm_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2"
 sequential_1/lstm_2/zeros/Less/yЈ
sequential_1/lstm_2/zeros/LessLess!sequential_1/lstm_2/zeros/mul:z:0)sequential_1/lstm_2/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
sequential_1/lstm_2/zeros/LessК
"sequential_1/lstm_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2$
"sequential_1/lstm_2/zeros/packed/1”
 sequential_1/lstm_2/zeros/packedPack*sequential_1/lstm_2/strided_slice:output:0+sequential_1/lstm_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_1/lstm_2/zeros/packedЗ
sequential_1/lstm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_1/lstm_2/zeros/Const≈
sequential_1/lstm_2/zerosFill)sequential_1/lstm_2/zeros/packed:output:0(sequential_1/lstm_2/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
sequential_1/lstm_2/zerosИ
!sequential_1/lstm_2/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2#
!sequential_1/lstm_2/zeros_1/mul/y¬
sequential_1/lstm_2/zeros_1/mulMul*sequential_1/lstm_2/strided_slice:output:0*sequential_1/lstm_2/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_1/lstm_2/zeros_1/mulЛ
"sequential_1/lstm_2/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2$
"sequential_1/lstm_2/zeros_1/Less/yњ
 sequential_1/lstm_2/zeros_1/LessLess#sequential_1/lstm_2/zeros_1/mul:z:0+sequential_1/lstm_2/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_1/lstm_2/zeros_1/LessО
$sequential_1/lstm_2/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2&
$sequential_1/lstm_2/zeros_1/packed/1ў
"sequential_1/lstm_2/zeros_1/packedPack*sequential_1/lstm_2/strided_slice:output:0-sequential_1/lstm_2/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_1/lstm_2/zeros_1/packedЛ
!sequential_1/lstm_2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_1/lstm_2/zeros_1/ConstЌ
sequential_1/lstm_2/zeros_1Fill+sequential_1/lstm_2/zeros_1/packed:output:0*sequential_1/lstm_2/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
sequential_1/lstm_2/zeros_1Э
"sequential_1/lstm_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"sequential_1/lstm_2/transpose/perm‘
sequential_1/lstm_2/transpose	Transpose#sequential_1/lstm_1/transpose_1:y:0+sequential_1/lstm_2/transpose/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€А2
sequential_1/lstm_2/transposeЛ
sequential_1/lstm_2/Shape_1Shape!sequential_1/lstm_2/transpose:y:0*
T0*
_output_shapes
:2
sequential_1/lstm_2/Shape_1†
)sequential_1/lstm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_1/lstm_2/strided_slice_1/stack§
+sequential_1/lstm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_2/strided_slice_1/stack_1§
+sequential_1/lstm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_2/strided_slice_1/stack_2ж
#sequential_1/lstm_2/strided_slice_1StridedSlice$sequential_1/lstm_2/Shape_1:output:02sequential_1/lstm_2/strided_slice_1/stack:output:04sequential_1/lstm_2/strided_slice_1/stack_1:output:04sequential_1/lstm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_1/lstm_2/strided_slice_1≠
/sequential_1/lstm_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€21
/sequential_1/lstm_2/TensorArrayV2/element_shapeВ
!sequential_1/lstm_2/TensorArrayV2TensorListReserve8sequential_1/lstm_2/TensorArrayV2/element_shape:output:0,sequential_1/lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!sequential_1/lstm_2/TensorArrayV2з
Isequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2K
Isequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape»
;sequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_1/lstm_2/transpose:y:0Rsequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;sequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensor†
)sequential_1/lstm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_1/lstm_2/strided_slice_2/stack§
+sequential_1/lstm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_2/strided_slice_2/stack_1§
+sequential_1/lstm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_2/strided_slice_2/stack_2х
#sequential_1/lstm_2/strided_slice_2StridedSlice!sequential_1/lstm_2/transpose:y:02sequential_1/lstm_2/strided_slice_2/stack:output:04sequential_1/lstm_2/strided_slice_2/stack_1:output:04sequential_1/lstm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2%
#sequential_1/lstm_2/strided_slice_2т
6sequential_1/lstm_2/lstm_cell_66/MatMul/ReadVariableOpReadVariableOp?sequential_1_lstm_2_lstm_cell_66_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype028
6sequential_1/lstm_2/lstm_cell_66/MatMul/ReadVariableOpэ
'sequential_1/lstm_2/lstm_cell_66/MatMulMatMul,sequential_1/lstm_2/strided_slice_2:output:0>sequential_1/lstm_2/lstm_cell_66/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2)
'sequential_1/lstm_2/lstm_cell_66/MatMulч
8sequential_1/lstm_2/lstm_cell_66/MatMul_1/ReadVariableOpReadVariableOpAsequential_1_lstm_2_lstm_cell_66_matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02:
8sequential_1/lstm_2/lstm_cell_66/MatMul_1/ReadVariableOpщ
)sequential_1/lstm_2/lstm_cell_66/MatMul_1MatMul"sequential_1/lstm_2/zeros:output:0@sequential_1/lstm_2/lstm_cell_66/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2+
)sequential_1/lstm_2/lstm_cell_66/MatMul_1р
$sequential_1/lstm_2/lstm_cell_66/addAddV21sequential_1/lstm_2/lstm_cell_66/MatMul:product:03sequential_1/lstm_2/lstm_cell_66/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2&
$sequential_1/lstm_2/lstm_cell_66/addр
7sequential_1/lstm_2/lstm_cell_66/BiasAdd/ReadVariableOpReadVariableOp@sequential_1_lstm_2_lstm_cell_66_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype029
7sequential_1/lstm_2/lstm_cell_66/BiasAdd/ReadVariableOpэ
(sequential_1/lstm_2/lstm_cell_66/BiasAddBiasAdd(sequential_1/lstm_2/lstm_cell_66/add:z:0?sequential_1/lstm_2/lstm_cell_66/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2*
(sequential_1/lstm_2/lstm_cell_66/BiasAdd¶
0sequential_1/lstm_2/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :22
0sequential_1/lstm_2/lstm_cell_66/split/split_dim√
&sequential_1/lstm_2/lstm_cell_66/splitSplit9sequential_1/lstm_2/lstm_cell_66/split/split_dim:output:01sequential_1/lstm_2/lstm_cell_66/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split2(
&sequential_1/lstm_2/lstm_cell_66/split¬
(sequential_1/lstm_2/lstm_cell_66/SigmoidSigmoid/sequential_1/lstm_2/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2*
(sequential_1/lstm_2/lstm_cell_66/Sigmoid∆
*sequential_1/lstm_2/lstm_cell_66/Sigmoid_1Sigmoid/sequential_1/lstm_2/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€@2,
*sequential_1/lstm_2/lstm_cell_66/Sigmoid_1џ
$sequential_1/lstm_2/lstm_cell_66/mulMul.sequential_1/lstm_2/lstm_cell_66/Sigmoid_1:y:0$sequential_1/lstm_2/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2&
$sequential_1/lstm_2/lstm_cell_66/mul∆
*sequential_1/lstm_2/lstm_cell_66/Sigmoid_2Sigmoid/sequential_1/lstm_2/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€@2,
*sequential_1/lstm_2/lstm_cell_66/Sigmoid_2к
&sequential_1/lstm_2/lstm_cell_66/mul_1Mul/sequential_1/lstm_2/lstm_cell_66/split:output:2.sequential_1/lstm_2/lstm_cell_66/Sigmoid_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2(
&sequential_1/lstm_2/lstm_cell_66/mul_1ј
)sequential_1/lstm_2/lstm_cell_66/IdentityIdentity*sequential_1/lstm_2/lstm_cell_66/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2+
)sequential_1/lstm_2/lstm_cell_66/IdentityЇ
*sequential_1/lstm_2/lstm_cell_66/IdentityN	IdentityN*sequential_1/lstm_2/lstm_cell_66/mul_1:z:0/sequential_1/lstm_2/lstm_cell_66/split:output:2*
T
2*-
_gradient_op_typeCustomGradient-1545505*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2,
*sequential_1/lstm_2/lstm_cell_66/IdentityNм
&sequential_1/lstm_2/lstm_cell_66/mul_2Mul,sequential_1/lstm_2/lstm_cell_66/Sigmoid:y:03sequential_1/lstm_2/lstm_cell_66/IdentityN:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2(
&sequential_1/lstm_2/lstm_cell_66/mul_2б
&sequential_1/lstm_2/lstm_cell_66/add_1AddV2(sequential_1/lstm_2/lstm_cell_66/mul:z:0*sequential_1/lstm_2/lstm_cell_66/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2(
&sequential_1/lstm_2/lstm_cell_66/add_1∆
*sequential_1/lstm_2/lstm_cell_66/Sigmoid_3Sigmoid/sequential_1/lstm_2/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€@2,
*sequential_1/lstm_2/lstm_cell_66/Sigmoid_3Ѕ
*sequential_1/lstm_2/lstm_cell_66/Sigmoid_4Sigmoid*sequential_1/lstm_2/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2,
*sequential_1/lstm_2/lstm_cell_66/Sigmoid_4е
&sequential_1/lstm_2/lstm_cell_66/mul_3Mul*sequential_1/lstm_2/lstm_cell_66/add_1:z:0.sequential_1/lstm_2/lstm_cell_66/Sigmoid_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2(
&sequential_1/lstm_2/lstm_cell_66/mul_3ƒ
+sequential_1/lstm_2/lstm_cell_66/Identity_1Identity*sequential_1/lstm_2/lstm_cell_66/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2-
+sequential_1/lstm_2/lstm_cell_66/Identity_1є
,sequential_1/lstm_2/lstm_cell_66/IdentityN_1	IdentityN*sequential_1/lstm_2/lstm_cell_66/mul_3:z:0*sequential_1/lstm_2/lstm_cell_66/add_1:z:0*
T
2*-
_gradient_op_typeCustomGradient-1545514*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@2.
,sequential_1/lstm_2/lstm_cell_66/IdentityN_1р
&sequential_1/lstm_2/lstm_cell_66/mul_4Mul.sequential_1/lstm_2/lstm_cell_66/Sigmoid_3:y:05sequential_1/lstm_2/lstm_cell_66/IdentityN_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2(
&sequential_1/lstm_2/lstm_cell_66/mul_4Ј
1sequential_1/lstm_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   23
1sequential_1/lstm_2/TensorArrayV2_1/element_shapeИ
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
sequential_1/lstm_2/timeІ
,sequential_1/lstm_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2.
,sequential_1/lstm_2/while/maximum_iterationsТ
&sequential_1/lstm_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_1/lstm_2/while/loop_counterЬ
sequential_1/lstm_2/whileWhile/sequential_1/lstm_2/while/loop_counter:output:05sequential_1/lstm_2/while/maximum_iterations:output:0!sequential_1/lstm_2/time:output:0,sequential_1/lstm_2/TensorArrayV2_1:handle:0"sequential_1/lstm_2/zeros:output:0$sequential_1/lstm_2/zeros_1:output:0,sequential_1/lstm_2/strided_slice_1:output:0Ksequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0?sequential_1_lstm_2_lstm_cell_66_matmul_readvariableop_resourceAsequential_1_lstm_2_lstm_cell_66_matmul_1_readvariableop_resource@sequential_1_lstm_2_lstm_cell_66_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€@:€€€€€€€€€@: : : : : *%
_read_only_resource_inputs
	
*2
body*R(
&sequential_1_lstm_2_while_body_1545525*2
cond*R(
&sequential_1_lstm_2_while_cond_1545524*K
output_shapes:
8: : : : :€€€€€€€€€@:€€€€€€€€€@: : : : : *
parallel_iterations 2
sequential_1/lstm_2/whileЁ
Dsequential_1/lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2F
Dsequential_1/lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeЄ
6sequential_1/lstm_2/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_1/lstm_2/while:output:3Msequential_1/lstm_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€@*
element_dtype028
6sequential_1/lstm_2/TensorArrayV2Stack/TensorListStack©
)sequential_1/lstm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2+
)sequential_1/lstm_2/strided_slice_3/stack§
+sequential_1/lstm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_1/lstm_2/strided_slice_3/stack_1§
+sequential_1/lstm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_2/strided_slice_3/stack_2Т
#sequential_1/lstm_2/strided_slice_3StridedSlice?sequential_1/lstm_2/TensorArrayV2Stack/TensorListStack:tensor:02sequential_1/lstm_2/strided_slice_3/stack:output:04sequential_1/lstm_2/strided_slice_3/stack_1:output:04sequential_1/lstm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2%
#sequential_1/lstm_2/strided_slice_3°
$sequential_1/lstm_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_1/lstm_2/transpose_1/permх
sequential_1/lstm_2/transpose_1	Transpose?sequential_1/lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_1/lstm_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€@2!
sequential_1/lstm_2/transpose_1О
sequential_1/lstm_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_1/lstm_2/runtimeЂ
+sequential_1/time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2-
+sequential_1/time_distributed/Reshape/shapeж
%sequential_1/time_distributed/ReshapeReshape#sequential_1/lstm_2/transpose_1:y:04sequential_1/time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2'
%sequential_1/time_distributed/Reshape€
;sequential_1/time_distributed/dense_2/MatMul/ReadVariableOpReadVariableOpDsequential_1_time_distributed_dense_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02=
;sequential_1/time_distributed/dense_2/MatMul/ReadVariableOpН
,sequential_1/time_distributed/dense_2/MatMulMatMul.sequential_1/time_distributed/Reshape:output:0Csequential_1/time_distributed/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2.
,sequential_1/time_distributed/dense_2/MatMulю
<sequential_1/time_distributed/dense_2/BiasAdd/ReadVariableOpReadVariableOpEsequential_1_time_distributed_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02>
<sequential_1/time_distributed/dense_2/BiasAdd/ReadVariableOpЩ
-sequential_1/time_distributed/dense_2/BiasAddBiasAdd6sequential_1/time_distributed/dense_2/MatMul:product:0Dsequential_1/time_distributed/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2/
-sequential_1/time_distributed/dense_2/BiasAdd”
-sequential_1/time_distributed/dense_2/SigmoidSigmoid6sequential_1/time_distributed/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2/
-sequential_1/time_distributed/dense_2/Sigmoidъ
)sequential_1/time_distributed/dense_2/mulMul6sequential_1/time_distributed/dense_2/BiasAdd:output:01sequential_1/time_distributed/dense_2/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2+
)sequential_1/time_distributed/dense_2/mulЌ
.sequential_1/time_distributed/dense_2/IdentityIdentity-sequential_1/time_distributed/dense_2/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€@20
.sequential_1/time_distributed/dense_2/Identityќ
/sequential_1/time_distributed/dense_2/IdentityN	IdentityN-sequential_1/time_distributed/dense_2/mul:z:06sequential_1/time_distributed/dense_2/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1545626*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@21
/sequential_1/time_distributed/dense_2/IdentityN≥
-sequential_1/time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€   @   2/
-sequential_1/time_distributed/Reshape_1/shapeЕ
'sequential_1/time_distributed/Reshape_1Reshape8sequential_1/time_distributed/dense_2/IdentityN:output:06sequential_1/time_distributed/Reshape_1/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€@2)
'sequential_1/time_distributed/Reshape_1ѓ
-sequential_1/time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2/
-sequential_1/time_distributed/Reshape_2/shapeм
'sequential_1/time_distributed/Reshape_2Reshape#sequential_1/lstm_2/transpose_1:y:06sequential_1/time_distributed/Reshape_2/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2)
'sequential_1/time_distributed/Reshape_2ѓ
-sequential_1/time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2/
-sequential_1/time_distributed_1/Reshape/shapeщ
'sequential_1/time_distributed_1/ReshapeReshape0sequential_1/time_distributed/Reshape_1:output:06sequential_1/time_distributed_1/Reshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2)
'sequential_1/time_distributed_1/ReshapeЕ
=sequential_1/time_distributed_1/dense_3/MatMul/ReadVariableOpReadVariableOpFsequential_1_time_distributed_1_dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02?
=sequential_1/time_distributed_1/dense_3/MatMul/ReadVariableOpХ
.sequential_1/time_distributed_1/dense_3/MatMulMatMul0sequential_1/time_distributed_1/Reshape:output:0Esequential_1/time_distributed_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€20
.sequential_1/time_distributed_1/dense_3/MatMulД
>sequential_1/time_distributed_1/dense_3/BiasAdd/ReadVariableOpReadVariableOpGsequential_1_time_distributed_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02@
>sequential_1/time_distributed_1/dense_3/BiasAdd/ReadVariableOp°
/sequential_1/time_distributed_1/dense_3/BiasAddBiasAdd8sequential_1/time_distributed_1/dense_3/MatMul:product:0Fsequential_1/time_distributed_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€21
/sequential_1/time_distributed_1/dense_3/BiasAddЈ
/sequential_1/time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€      21
/sequential_1/time_distributed_1/Reshape_1/shapeЛ
)sequential_1/time_distributed_1/Reshape_1Reshape8sequential_1/time_distributed_1/dense_3/BiasAdd:output:08sequential_1/time_distributed_1/Reshape_1/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€2+
)sequential_1/time_distributed_1/Reshape_1≥
/sequential_1/time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   21
/sequential_1/time_distributed_1/Reshape_2/shape€
)sequential_1/time_distributed_1/Reshape_2Reshape0sequential_1/time_distributed/Reshape_1:output:08sequential_1/time_distributed_1/Reshape_2/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2+
)sequential_1/time_distributed_1/Reshape_2Ь
IdentityIdentity2sequential_1/time_distributed_1/Reshape_1:output:08^sequential_1/lstm_1/lstm_cell_65/BiasAdd/ReadVariableOp7^sequential_1/lstm_1/lstm_cell_65/MatMul/ReadVariableOp9^sequential_1/lstm_1/lstm_cell_65/MatMul_1/ReadVariableOp^sequential_1/lstm_1/while8^sequential_1/lstm_2/lstm_cell_66/BiasAdd/ReadVariableOp7^sequential_1/lstm_2/lstm_cell_66/MatMul/ReadVariableOp9^sequential_1/lstm_2/lstm_cell_66/MatMul_1/ReadVariableOp^sequential_1/lstm_2/while=^sequential_1/time_distributed/dense_2/BiasAdd/ReadVariableOp<^sequential_1/time_distributed/dense_2/MatMul/ReadVariableOp?^sequential_1/time_distributed_1/dense_3/BiasAdd/ReadVariableOp>^sequential_1/time_distributed_1/dense_3/MatMul/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€: : : : : : : : : : 2r
7sequential_1/lstm_1/lstm_cell_65/BiasAdd/ReadVariableOp7sequential_1/lstm_1/lstm_cell_65/BiasAdd/ReadVariableOp2p
6sequential_1/lstm_1/lstm_cell_65/MatMul/ReadVariableOp6sequential_1/lstm_1/lstm_cell_65/MatMul/ReadVariableOp2t
8sequential_1/lstm_1/lstm_cell_65/MatMul_1/ReadVariableOp8sequential_1/lstm_1/lstm_cell_65/MatMul_1/ReadVariableOp26
sequential_1/lstm_1/whilesequential_1/lstm_1/while2r
7sequential_1/lstm_2/lstm_cell_66/BiasAdd/ReadVariableOp7sequential_1/lstm_2/lstm_cell_66/BiasAdd/ReadVariableOp2p
6sequential_1/lstm_2/lstm_cell_66/MatMul/ReadVariableOp6sequential_1/lstm_2/lstm_cell_66/MatMul/ReadVariableOp2t
8sequential_1/lstm_2/lstm_cell_66/MatMul_1/ReadVariableOp8sequential_1/lstm_2/lstm_cell_66/MatMul_1/ReadVariableOp26
sequential_1/lstm_2/whilesequential_1/lstm_2/while2|
<sequential_1/time_distributed/dense_2/BiasAdd/ReadVariableOp<sequential_1/time_distributed/dense_2/BiasAdd/ReadVariableOp2z
;sequential_1/time_distributed/dense_2/MatMul/ReadVariableOp;sequential_1/time_distributed/dense_2/MatMul/ReadVariableOp2А
>sequential_1/time_distributed_1/dense_3/BiasAdd/ReadVariableOp>sequential_1/time_distributed_1/dense_3/BiasAdd/ReadVariableOp2~
=sequential_1/time_distributed_1/dense_3/MatMul/ReadVariableOp=sequential_1/time_distributed_1/dense_3/MatMul/ReadVariableOp:Y U
+
_output_shapes
:€€€€€€€€€
&
_user_specified_namelstm_1_input
у	
ь
%__inference_signature_wrapper_1548328
lstm_1_input
unknown:	А
	unknown_0:
АА
	unknown_1:	А
	unknown_2:
АА
	unknown_3:	@А
	unknown_4:	А
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:
identityИҐStatefulPartitionedCallƒ
StatefulPartitionedCallStatefulPartitionedCalllstm_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*,
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
"__inference__wrapped_model_15456492
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:€€€€€€€€€
&
_user_specified_namelstm_1_input
 E
Й
C__inference_lstm_1_layer_call_and_return_conditional_losses_1546037

inputs'
lstm_cell_65_1545955:	А(
lstm_cell_65_1545957:
АА#
lstm_cell_65_1545959:	А
identityИҐ$lstm_cell_65/StatefulPartitionedCallҐwhileD
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
strided_slice/stack_2в
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
B :и2
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
:€€€€€€€€€А2
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
B :и2
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
:€€€€€€€€€А2	
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
 :€€€€€€€€€€€€€€€€€€2
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
strided_slice_1/stack_2о
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
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2§
$lstm_cell_65/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_65_1545955lstm_cell_65_1545957lstm_cell_65_1545959*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_lstm_cell_65_layer_call_and_return_conditional_losses_15458902&
$lstm_cell_65/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2
TensorArrayV2_1/element_shapeЄ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterђ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_65_1545955lstm_cell_65_1545957lstm_cell_65_1545959*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1545968*
condR
while_cond_1545967*M
output_shapes<
:: : : : :€€€€€€€€€А:€€€€€€€€€А: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   22
0TensorArrayV2Stack/TensorListStack/element_shapeт
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permѓ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime†
IdentityIdentitytranspose_1:y:0%^lstm_cell_65/StatefulPartitionedCall^while*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2L
$lstm_cell_65/StatefulPartitionedCall$lstm_cell_65/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs"ћL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*«
serving_default≥
I
lstm_1_input9
serving_default_lstm_1_input:0€€€€€€€€€J
time_distributed_14
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:∞к
°B
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
+Я&call_and_return_all_conditional_losses
†__call__
°_default_save_signature"Т?
_tf_keras_sequentialу>{"name": "sequential_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 24, 19]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_1_input"}}, {"class_name": "LSTM", "config": {"name": "lstm_1", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "LSTM", "config": {"name": "lstm_2", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_1", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}}]}, "shared_object_id": 19, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 19]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 20}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 19]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 24, 19]}, "float32", "lstm_1_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 24, 19]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_1_input"}, "shared_object_id": 0}, {"class_name": "LSTM", "config": {"name": "lstm_1", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 5}, {"class_name": "LSTM", "config": {"name": "lstm_2", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 10}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13}}, "shared_object_id": 14}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_1", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17}}, "shared_object_id": 18}]}}, "training_config": {"loss": {"class_name": "MeanAbsoluteError", "config": {"reduction": "auto", "name": "mean_absolute_error"}, "shared_object_id": 21}, "metrics": [[{"class_name": "MeanSquaredLogarithmicError", "config": {"name": "mean_squared_logarithmic_error", "dtype": "float32"}, "shared_object_id": 22}, {"class_name": "MeanSquaredError", "config": {"name": "mean_squared_error", "dtype": "float32"}, "shared_object_id": 23}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
ў
cell

state_spec
#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api
+Ґ&call_and_return_all_conditional_losses
£__call__"Й
_tf_keras_rnn_layerл
{"name": "lstm_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTM", "config": {"name": "lstm_1", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 5, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 19]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 20}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 19]}}
џ
cell

state_spec
#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api
+§&call_and_return_all_conditional_losses
•__call__"Л
_tf_keras_rnn_layerн
{"name": "lstm_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTM", "config": {"name": "lstm_2", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 10, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 128]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 24}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 128]}}
ґ

	layer
#_self_saveable_object_factories
trainable_variables
regularization_losses
	variables
	keras_api
+¶&call_and_return_all_conditional_losses
І__call__"х
_tf_keras_layerџ{"name": "time_distributed", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "TimeDistributed", "config": {"name": "time_distributed", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13}}, "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 64]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 25}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 64]}}
ї

	 layer
#!_self_saveable_object_factories
"trainable_variables
#regularization_losses
$	variables
%	keras_api
+®&call_and_return_all_conditional_losses
©__call__"ъ
_tf_keras_layerа{"name": "time_distributed_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "TimeDistributed", "config": {"name": "time_distributed_1", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17}}, "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 64]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 26}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 64]}}
Ы
&iter

'beta_1

(beta_2
	)decay
*learning_rate+mЛ,mМ-mН.mО/mП0mР1mС2mТ3mУ4mФ+vХ,vЦ-vЧ.vШ/vЩ0vЪ1vЫ2vЬ3vЭ4vЮ"
	optimizer
-
™serving_default"
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
ќ
trainable_variables
5layer_regularization_losses

6layers
7layer_metrics
8non_trainable_variables
		variables

regularization_losses
9metrics
†__call__
°_default_save_signature
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses"
_generic_user_object
њ	
:
state_size

+kernel
,recurrent_kernel
-bias
#;_self_saveable_object_factories
<trainable_variables
=regularization_losses
>	variables
?	keras_api
+Ђ&call_and_return_all_conditional_losses
ђ__call__"Ќ
_tf_keras_layer≥{"name": "lstm_cell_65", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTMCell", "config": {"name": "lstm_cell_65", "trainable": true, "dtype": "float32", "units": 128, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 4}
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
Љ
trainable_variables

@states
Alayer_regularization_losses

Blayers
Clayer_metrics
Dnon_trainable_variables
	variables
regularization_losses
Emetrics
£__call__
+Ґ&call_and_return_all_conditional_losses
'Ґ"call_and_return_conditional_losses"
_generic_user_object
Њ	
F
state_size

.kernel
/recurrent_kernel
0bias
#G_self_saveable_object_factories
Htrainable_variables
Iregularization_losses
J	variables
K	keras_api
+≠&call_and_return_all_conditional_losses
Ѓ__call__"ћ
_tf_keras_layer≤{"name": "lstm_cell_66", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTMCell", "config": {"name": "lstm_cell_66", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 9}
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
Љ
trainable_variables

Lstates
Mlayer_regularization_losses

Nlayers
Olayer_metrics
Pnon_trainable_variables
	variables
regularization_losses
Qmetrics
•__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses"
_generic_user_object
ѓ

1kernel
2bias
#R_self_saveable_object_factories
Strainable_variables
Tregularization_losses
U	variables
V	keras_api
+ѓ&call_and_return_all_conditional_losses
∞__call__"г
_tf_keras_layer…{"name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 64, "activation": "swish", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 27}}
 "
trackable_dict_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
∞
trainable_variables
Wlayer_regularization_losses
regularization_losses
Xlayer_metrics
Ynon_trainable_variables
	variables

Zlayers
[metrics
І__call__
+¶&call_and_return_all_conditional_losses
'¶"call_and_return_conditional_losses"
_generic_user_object
∞

3kernel
4bias
#\_self_saveable_object_factories
]trainable_variables
^regularization_losses
_	variables
`	keras_api
+±&call_and_return_all_conditional_losses
≤__call__"д
_tf_keras_layer {"name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 11, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 28}}
 "
trackable_dict_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
∞
"trainable_variables
alayer_regularization_losses
#regularization_losses
blayer_metrics
cnon_trainable_variables
$	variables

dlayers
emetrics
©__call__
+®&call_and_return_all_conditional_losses
'®"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
,:*	А2lstm_1/lstm_cell_1/kernel
7:5
АА2#lstm_1/lstm_cell_1/recurrent_kernel
&:$А2lstm_1/lstm_cell_1/bias
-:+
АА2lstm_2/lstm_cell_2/kernel
6:4	@А2#lstm_2/lstm_cell_2/recurrent_kernel
&:$А2lstm_2/lstm_cell_2/bias
):'@@2time_distributed/kernel
#:!@2time_distributed/bias
+:)@2time_distributed_1/kernel
%:#2time_distributed_1/bias
 "
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
f0
g1
h2"
trackable_list_wrapper
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
∞
<trainable_variables
ilayer_regularization_losses
=regularization_losses
jlayer_metrics
knon_trainable_variables
>	variables

llayers
mmetrics
ђ__call__
+Ђ&call_and_return_all_conditional_losses
'Ђ"call_and_return_conditional_losses"
_generic_user_object
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
 "
trackable_list_wrapper
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
∞
Htrainable_variables
nlayer_regularization_losses
Iregularization_losses
olayer_metrics
pnon_trainable_variables
J	variables

qlayers
rmetrics
Ѓ__call__
+≠&call_and_return_all_conditional_losses
'≠"call_and_return_conditional_losses"
_generic_user_object
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
∞
Strainable_variables
slayer_regularization_losses
Tregularization_losses
tlayer_metrics
unon_trainable_variables
U	variables

vlayers
wmetrics
∞__call__
+ѓ&call_and_return_all_conditional_losses
'ѓ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
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
trackable_dict_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
∞
]trainable_variables
xlayer_regularization_losses
^regularization_losses
ylayer_metrics
znon_trainable_variables
_	variables

{layers
|metrics
≤__call__
+±&call_and_return_all_conditional_losses
'±"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
 0"
trackable_list_wrapper
 "
trackable_list_wrapper
’
	}total
	~count
	variables
А	keras_api"Э
_tf_keras_metricВ{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 29}
і

Бtotal

Вcount
Г
_fn_kwargs
Д	variables
Е	keras_api"и
_tf_keras_metricЌ{"class_name": "MeanSquaredLogarithmicError", "name": "mean_squared_logarithmic_error", "dtype": "float32", "config": {"name": "mean_squared_logarithmic_error", "dtype": "float32"}, "shared_object_id": 22}
С

Жtotal

Зcount
И
_fn_kwargs
Й	variables
К	keras_api"≈
_tf_keras_metric™{"class_name": "MeanSquaredError", "name": "mean_squared_error", "dtype": "float32", "config": {"name": "mean_squared_error", "dtype": "float32"}, "shared_object_id": 23}
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
Б0
В1"
trackable_list_wrapper
.
Д	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Ж0
З1"
trackable_list_wrapper
.
Й	variables"
_generic_user_object
1:/	А2 Adam/lstm_1/lstm_cell_1/kernel/m
<::
АА2*Adam/lstm_1/lstm_cell_1/recurrent_kernel/m
+:)А2Adam/lstm_1/lstm_cell_1/bias/m
2:0
АА2 Adam/lstm_2/lstm_cell_2/kernel/m
;:9	@А2*Adam/lstm_2/lstm_cell_2/recurrent_kernel/m
+:)А2Adam/lstm_2/lstm_cell_2/bias/m
.:,@@2Adam/time_distributed/kernel/m
(:&@2Adam/time_distributed/bias/m
0:.@2 Adam/time_distributed_1/kernel/m
*:(2Adam/time_distributed_1/bias/m
1:/	А2 Adam/lstm_1/lstm_cell_1/kernel/v
<::
АА2*Adam/lstm_1/lstm_cell_1/recurrent_kernel/v
+:)А2Adam/lstm_1/lstm_cell_1/bias/v
2:0
АА2 Adam/lstm_2/lstm_cell_2/kernel/v
;:9	@А2*Adam/lstm_2/lstm_cell_2/recurrent_kernel/v
+:)А2Adam/lstm_2/lstm_cell_2/bias/v
.:,@@2Adam/time_distributed/kernel/v
(:&@2Adam/time_distributed/bias/v
0:.@2 Adam/time_distributed_1/kernel/v
*:(2Adam/time_distributed_1/bias/v
т2п
I__inference_sequential_1_layer_call_and_return_conditional_losses_1548696
I__inference_sequential_1_layer_call_and_return_conditional_losses_1549064
I__inference_sequential_1_layer_call_and_return_conditional_losses_1548263
I__inference_sequential_1_layer_call_and_return_conditional_losses_1548295ј
Ј≤≥
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
kwonlydefaults™ 
annotations™ *
 
Ж2Г
.__inference_sequential_1_layer_call_fn_1547668
.__inference_sequential_1_layer_call_fn_1549089
.__inference_sequential_1_layer_call_fn_1549114
.__inference_sequential_1_layer_call_fn_1548231ј
Ј≤≥
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
kwonlydefaults™ 
annotations™ *
 
й2ж
"__inference__wrapped_model_1545649њ
Л≤З
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
annotations™ */Ґ,
*К'
lstm_1_input€€€€€€€€€
п2м
C__inference_lstm_1_layer_call_and_return_conditional_losses_1549285
C__inference_lstm_1_layer_call_and_return_conditional_losses_1549456
C__inference_lstm_1_layer_call_and_return_conditional_losses_1549627
C__inference_lstm_1_layer_call_and_return_conditional_losses_1549798’
ћ≤»
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
kwonlydefaults™ 
annotations™ *
 
Г2А
(__inference_lstm_1_layer_call_fn_1549809
(__inference_lstm_1_layer_call_fn_1549820
(__inference_lstm_1_layer_call_fn_1549831
(__inference_lstm_1_layer_call_fn_1549842’
ћ≤»
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
kwonlydefaults™ 
annotations™ *
 
п2м
C__inference_lstm_2_layer_call_and_return_conditional_losses_1550013
C__inference_lstm_2_layer_call_and_return_conditional_losses_1550184
C__inference_lstm_2_layer_call_and_return_conditional_losses_1550355
C__inference_lstm_2_layer_call_and_return_conditional_losses_1550526’
ћ≤»
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
kwonlydefaults™ 
annotations™ *
 
Г2А
(__inference_lstm_2_layer_call_fn_1550537
(__inference_lstm_2_layer_call_fn_1550548
(__inference_lstm_2_layer_call_fn_1550559
(__inference_lstm_2_layer_call_fn_1550570’
ћ≤»
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
kwonlydefaults™ 
annotations™ *
 
В2€
M__inference_time_distributed_layer_call_and_return_conditional_losses_1550597
M__inference_time_distributed_layer_call_and_return_conditional_losses_1550624
M__inference_time_distributed_layer_call_and_return_conditional_losses_1550644
M__inference_time_distributed_layer_call_and_return_conditional_losses_1550664ј
Ј≤≥
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
kwonlydefaults™ 
annotations™ *
 
Ц2У
2__inference_time_distributed_layer_call_fn_1550673
2__inference_time_distributed_layer_call_fn_1550682
2__inference_time_distributed_layer_call_fn_1550691
2__inference_time_distributed_layer_call_fn_1550700ј
Ј≤≥
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
kwonlydefaults™ 
annotations™ *
 
К2З
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_1550721
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_1550742
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_1550756
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_1550770ј
Ј≤≥
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
kwonlydefaults™ 
annotations™ *
 
Ю2Ы
4__inference_time_distributed_1_layer_call_fn_1550779
4__inference_time_distributed_1_layer_call_fn_1550788
4__inference_time_distributed_1_layer_call_fn_1550797
4__inference_time_distributed_1_layer_call_fn_1550806ј
Ј≤≥
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
kwonlydefaults™ 
annotations™ *
 
—Bќ
%__inference_signature_wrapper_1548328lstm_1_input"Ф
Н≤Й
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
annotations™ *
 
Џ2„
I__inference_lstm_cell_65_layer_call_and_return_conditional_losses_1550848
I__inference_lstm_cell_65_layer_call_and_return_conditional_losses_1550890Њ
µ≤±
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
kwonlydefaults™ 
annotations™ *
 
§2°
.__inference_lstm_cell_65_layer_call_fn_1550907
.__inference_lstm_cell_65_layer_call_fn_1550924Њ
µ≤±
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
kwonlydefaults™ 
annotations™ *
 
Џ2„
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_1550966
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_1551008Њ
µ≤±
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
kwonlydefaults™ 
annotations™ *
 
§2°
.__inference_lstm_cell_66_layer_call_fn_1551025
.__inference_lstm_cell_66_layer_call_fn_1551042Њ
µ≤±
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
kwonlydefaults™ 
annotations™ *
 
о2л
D__inference_dense_2_layer_call_and_return_conditional_losses_1551058Ґ
Щ≤Х
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
annotations™ *
 
”2–
)__inference_dense_2_layer_call_fn_1551067Ґ
Щ≤Х
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
annotations™ *
 
о2л
D__inference_dense_3_layer_call_and_return_conditional_losses_1551077Ґ
Щ≤Х
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
annotations™ *
 
”2–
)__inference_dense_3_layer_call_fn_1551086Ґ
Щ≤Х
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
annotations™ *
 ї
"__inference__wrapped_model_1545649Ф
+,-./012349Ґ6
/Ґ,
*К'
lstm_1_input€€€€€€€€€
™ "K™H
F
time_distributed_10К-
time_distributed_1€€€€€€€€€§
D__inference_dense_2_layer_call_and_return_conditional_losses_1551058\12/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "%Ґ"
К
0€€€€€€€€€@
Ъ |
)__inference_dense_2_layer_call_fn_1551067O12/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "К€€€€€€€€€@§
D__inference_dense_3_layer_call_and_return_conditional_losses_1551077\34/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "%Ґ"
К
0€€€€€€€€€
Ъ |
)__inference_dense_3_layer_call_fn_1551086O34/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "К€€€€€€€€€”
C__inference_lstm_1_layer_call_and_return_conditional_losses_1549285Л+,-OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€

 
p 

 
™ "3Ґ0
)К&
0€€€€€€€€€€€€€€€€€€А
Ъ ”
C__inference_lstm_1_layer_call_and_return_conditional_losses_1549456Л+,-OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€

 
p

 
™ "3Ґ0
)К&
0€€€€€€€€€€€€€€€€€€А
Ъ є
C__inference_lstm_1_layer_call_and_return_conditional_losses_1549627r+,-?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p 

 
™ "*Ґ'
 К
0€€€€€€€€€А
Ъ є
C__inference_lstm_1_layer_call_and_return_conditional_losses_1549798r+,-?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p

 
™ "*Ґ'
 К
0€€€€€€€€€А
Ъ ™
(__inference_lstm_1_layer_call_fn_1549809~+,-OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€

 
p 

 
™ "&К#€€€€€€€€€€€€€€€€€€А™
(__inference_lstm_1_layer_call_fn_1549820~+,-OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€

 
p

 
™ "&К#€€€€€€€€€€€€€€€€€€АС
(__inference_lstm_1_layer_call_fn_1549831e+,-?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p 

 
™ "К€€€€€€€€€АС
(__inference_lstm_1_layer_call_fn_1549842e+,-?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p

 
™ "К€€€€€€€€€А”
C__inference_lstm_2_layer_call_and_return_conditional_losses_1550013Л./0PҐM
FҐC
5Ъ2
0К-
inputs/0€€€€€€€€€€€€€€€€€€А

 
p 

 
™ "2Ґ/
(К%
0€€€€€€€€€€€€€€€€€€@
Ъ ”
C__inference_lstm_2_layer_call_and_return_conditional_losses_1550184Л./0PҐM
FҐC
5Ъ2
0К-
inputs/0€€€€€€€€€€€€€€€€€€А

 
p

 
™ "2Ґ/
(К%
0€€€€€€€€€€€€€€€€€€@
Ъ є
C__inference_lstm_2_layer_call_and_return_conditional_losses_1550355r./0@Ґ=
6Ґ3
%К"
inputs€€€€€€€€€А

 
p 

 
™ ")Ґ&
К
0€€€€€€€€€@
Ъ є
C__inference_lstm_2_layer_call_and_return_conditional_losses_1550526r./0@Ґ=
6Ґ3
%К"
inputs€€€€€€€€€А

 
p

 
™ ")Ґ&
К
0€€€€€€€€€@
Ъ ™
(__inference_lstm_2_layer_call_fn_1550537~./0PҐM
FҐC
5Ъ2
0К-
inputs/0€€€€€€€€€€€€€€€€€€А

 
p 

 
™ "%К"€€€€€€€€€€€€€€€€€€@™
(__inference_lstm_2_layer_call_fn_1550548~./0PҐM
FҐC
5Ъ2
0К-
inputs/0€€€€€€€€€€€€€€€€€€А

 
p

 
™ "%К"€€€€€€€€€€€€€€€€€€@С
(__inference_lstm_2_layer_call_fn_1550559e./0@Ґ=
6Ґ3
%К"
inputs€€€€€€€€€А

 
p 

 
™ "К€€€€€€€€€@С
(__inference_lstm_2_layer_call_fn_1550570e./0@Ґ=
6Ґ3
%К"
inputs€€€€€€€€€А

 
p

 
™ "К€€€€€€€€€@–
I__inference_lstm_cell_65_layer_call_and_return_conditional_losses_1550848В+,-ВҐ
xҐu
 К
inputs€€€€€€€€€
MҐJ
#К 
states/0€€€€€€€€€А
#К 
states/1€€€€€€€€€А
p 
™ "vҐs
lҐi
К
0/0€€€€€€€€€А
GЪD
 К
0/1/0€€€€€€€€€А
 К
0/1/1€€€€€€€€€А
Ъ –
I__inference_lstm_cell_65_layer_call_and_return_conditional_losses_1550890В+,-ВҐ
xҐu
 К
inputs€€€€€€€€€
MҐJ
#К 
states/0€€€€€€€€€А
#К 
states/1€€€€€€€€€А
p
™ "vҐs
lҐi
К
0/0€€€€€€€€€А
GЪD
 К
0/1/0€€€€€€€€€А
 К
0/1/1€€€€€€€€€А
Ъ •
.__inference_lstm_cell_65_layer_call_fn_1550907т+,-ВҐ
xҐu
 К
inputs€€€€€€€€€
MҐJ
#К 
states/0€€€€€€€€€А
#К 
states/1€€€€€€€€€А
p 
™ "fҐc
К
0€€€€€€€€€А
CЪ@
К
1/0€€€€€€€€€А
К
1/1€€€€€€€€€А•
.__inference_lstm_cell_65_layer_call_fn_1550924т+,-ВҐ
xҐu
 К
inputs€€€€€€€€€
MҐJ
#К 
states/0€€€€€€€€€А
#К 
states/1€€€€€€€€€А
p
™ "fҐc
К
0€€€€€€€€€А
CЪ@
К
1/0€€€€€€€€€А
К
1/1€€€€€€€€€Аћ
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_1550966ю./0БҐ~
wҐt
!К
inputs€€€€€€€€€А
KҐH
"К
states/0€€€€€€€€€@
"К
states/1€€€€€€€€€@
p 
™ "sҐp
iҐf
К
0/0€€€€€€€€€@
EЪB
К
0/1/0€€€€€€€€€@
К
0/1/1€€€€€€€€€@
Ъ ћ
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_1551008ю./0БҐ~
wҐt
!К
inputs€€€€€€€€€А
KҐH
"К
states/0€€€€€€€€€@
"К
states/1€€€€€€€€€@
p
™ "sҐp
iҐf
К
0/0€€€€€€€€€@
EЪB
К
0/1/0€€€€€€€€€@
К
0/1/1€€€€€€€€€@
Ъ °
.__inference_lstm_cell_66_layer_call_fn_1551025о./0БҐ~
wҐt
!К
inputs€€€€€€€€€А
KҐH
"К
states/0€€€€€€€€€@
"К
states/1€€€€€€€€€@
p 
™ "cҐ`
К
0€€€€€€€€€@
AЪ>
К
1/0€€€€€€€€€@
К
1/1€€€€€€€€€@°
.__inference_lstm_cell_66_layer_call_fn_1551042о./0БҐ~
wҐt
!К
inputs€€€€€€€€€А
KҐH
"К
states/0€€€€€€€€€@
"К
states/1€€€€€€€€€@
p
™ "cҐ`
К
0€€€€€€€€€@
AЪ>
К
1/0€€€€€€€€€@
К
1/1€€€€€€€€€@«
I__inference_sequential_1_layer_call_and_return_conditional_losses_1548263z
+,-./01234AҐ>
7Ґ4
*К'
lstm_1_input€€€€€€€€€
p 

 
™ ")Ґ&
К
0€€€€€€€€€
Ъ «
I__inference_sequential_1_layer_call_and_return_conditional_losses_1548295z
+,-./01234AҐ>
7Ґ4
*К'
lstm_1_input€€€€€€€€€
p

 
™ ")Ґ&
К
0€€€€€€€€€
Ъ Ѕ
I__inference_sequential_1_layer_call_and_return_conditional_losses_1548696t
+,-./01234;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p 

 
™ ")Ґ&
К
0€€€€€€€€€
Ъ Ѕ
I__inference_sequential_1_layer_call_and_return_conditional_losses_1549064t
+,-./01234;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p

 
™ ")Ґ&
К
0€€€€€€€€€
Ъ Я
.__inference_sequential_1_layer_call_fn_1547668m
+,-./01234AҐ>
7Ґ4
*К'
lstm_1_input€€€€€€€€€
p 

 
™ "К€€€€€€€€€Я
.__inference_sequential_1_layer_call_fn_1548231m
+,-./01234AҐ>
7Ґ4
*К'
lstm_1_input€€€€€€€€€
p

 
™ "К€€€€€€€€€Щ
.__inference_sequential_1_layer_call_fn_1549089g
+,-./01234;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p 

 
™ "К€€€€€€€€€Щ
.__inference_sequential_1_layer_call_fn_1549114g
+,-./01234;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p

 
™ "К€€€€€€€€€ќ
%__inference_signature_wrapper_1548328§
+,-./01234IҐF
Ґ 
?™<
:
lstm_1_input*К'
lstm_1_input€€€€€€€€€"K™H
F
time_distributed_10К-
time_distributed_1€€€€€€€€€—
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_1550721~34DҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€@
p 

 
™ "2Ґ/
(К%
0€€€€€€€€€€€€€€€€€€
Ъ —
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_1550742~34DҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€@
p

 
™ "2Ґ/
(К%
0€€€€€€€€€€€€€€€€€€
Ъ њ
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_1550756l34;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€@
p 

 
™ ")Ґ&
К
0€€€€€€€€€
Ъ њ
O__inference_time_distributed_1_layer_call_and_return_conditional_losses_1550770l34;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€@
p

 
™ ")Ґ&
К
0€€€€€€€€€
Ъ ©
4__inference_time_distributed_1_layer_call_fn_1550779q34DҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€@
p 

 
™ "%К"€€€€€€€€€€€€€€€€€€©
4__inference_time_distributed_1_layer_call_fn_1550788q34DҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€@
p

 
™ "%К"€€€€€€€€€€€€€€€€€€Ч
4__inference_time_distributed_1_layer_call_fn_1550797_34;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€@
p 

 
™ "К€€€€€€€€€Ч
4__inference_time_distributed_1_layer_call_fn_1550806_34;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€@
p

 
™ "К€€€€€€€€€ѕ
M__inference_time_distributed_layer_call_and_return_conditional_losses_1550597~12DҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€@
p 

 
™ "2Ґ/
(К%
0€€€€€€€€€€€€€€€€€€@
Ъ ѕ
M__inference_time_distributed_layer_call_and_return_conditional_losses_1550624~12DҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€@
p

 
™ "2Ґ/
(К%
0€€€€€€€€€€€€€€€€€€@
Ъ љ
M__inference_time_distributed_layer_call_and_return_conditional_losses_1550644l12;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€@
p 

 
™ ")Ґ&
К
0€€€€€€€€€@
Ъ љ
M__inference_time_distributed_layer_call_and_return_conditional_losses_1550664l12;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€@
p

 
™ ")Ґ&
К
0€€€€€€€€€@
Ъ І
2__inference_time_distributed_layer_call_fn_1550673q12DҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€@
p 

 
™ "%К"€€€€€€€€€€€€€€€€€€@І
2__inference_time_distributed_layer_call_fn_1550682q12DҐA
:Ґ7
-К*
inputs€€€€€€€€€€€€€€€€€€@
p

 
™ "%К"€€€€€€€€€€€€€€€€€€@Х
2__inference_time_distributed_layer_call_fn_1550691_12;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€@
p 

 
™ "К€€€€€€€€€@Х
2__inference_time_distributed_layer_call_fn_1550700_12;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€@
p

 
™ "К€€€€€€€€€@