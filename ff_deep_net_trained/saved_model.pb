�� 
��
B
AddV2
x"T
y"T
z"T"
Ttype:
2	��
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
�
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%��8"&
exponential_avg_factorfloat%  �?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
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
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.4.12v2.4.0-49-g85c8b2a817f8��

dense_2998/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�M*"
shared_namedense_2998/kernel
x
%dense_2998/kernel/Read/ReadVariableOpReadVariableOpdense_2998/kernel*
_output_shapes
:	�M*
dtype0
v
dense_2998/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:M* 
shared_namedense_2998/bias
o
#dense_2998/bias/Read/ReadVariableOpReadVariableOpdense_2998/bias*
_output_shapes
:M*
dtype0
�
layer_normalization_88/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*-
shared_namelayer_normalization_88/gamma
�
0layer_normalization_88/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_88/gamma*
_output_shapes
:M*
dtype0
�
layer_normalization_88/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*,
shared_namelayer_normalization_88/beta
�
/layer_normalization_88/beta/Read/ReadVariableOpReadVariableOplayer_normalization_88/beta*
_output_shapes
:M*
dtype0
~
dense_2999/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:MM*"
shared_namedense_2999/kernel
w
%dense_2999/kernel/Read/ReadVariableOpReadVariableOpdense_2999/kernel*
_output_shapes

:MM*
dtype0
v
dense_2999/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:M* 
shared_namedense_2999/bias
o
#dense_2999/bias/Read/ReadVariableOpReadVariableOpdense_2999/bias*
_output_shapes
:M*
dtype0
�
layer_normalization_89/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*-
shared_namelayer_normalization_89/gamma
�
0layer_normalization_89/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_89/gamma*
_output_shapes
:M*
dtype0
�
layer_normalization_89/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*,
shared_namelayer_normalization_89/beta
�
/layer_normalization_89/beta/Read/ReadVariableOpReadVariableOplayer_normalization_89/beta*
_output_shapes
:M*
dtype0
~
dense_3000/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:MM*"
shared_namedense_3000/kernel
w
%dense_3000/kernel/Read/ReadVariableOpReadVariableOpdense_3000/kernel*
_output_shapes

:MM*
dtype0
v
dense_3000/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:M* 
shared_namedense_3000/bias
o
#dense_3000/bias/Read/ReadVariableOpReadVariableOpdense_3000/bias*
_output_shapes
:M*
dtype0
�
layer_normalization_90/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*-
shared_namelayer_normalization_90/gamma
�
0layer_normalization_90/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_90/gamma*
_output_shapes
:M*
dtype0
�
layer_normalization_90/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*,
shared_namelayer_normalization_90/beta
�
/layer_normalization_90/beta/Read/ReadVariableOpReadVariableOplayer_normalization_90/beta*
_output_shapes
:M*
dtype0
~
dense_3001/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:MM*"
shared_namedense_3001/kernel
w
%dense_3001/kernel/Read/ReadVariableOpReadVariableOpdense_3001/kernel*
_output_shapes

:MM*
dtype0
v
dense_3001/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:M* 
shared_namedense_3001/bias
o
#dense_3001/bias/Read/ReadVariableOpReadVariableOpdense_3001/bias*
_output_shapes
:M*
dtype0
�
layer_normalization_91/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*-
shared_namelayer_normalization_91/gamma
�
0layer_normalization_91/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_91/gamma*
_output_shapes
:M*
dtype0
�
layer_normalization_91/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*,
shared_namelayer_normalization_91/beta
�
/layer_normalization_91/beta/Read/ReadVariableOpReadVariableOplayer_normalization_91/beta*
_output_shapes
:M*
dtype0
~
dense_3002/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:MM*"
shared_namedense_3002/kernel
w
%dense_3002/kernel/Read/ReadVariableOpReadVariableOpdense_3002/kernel*
_output_shapes

:MM*
dtype0
v
dense_3002/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:M* 
shared_namedense_3002/bias
o
#dense_3002/bias/Read/ReadVariableOpReadVariableOpdense_3002/bias*
_output_shapes
:M*
dtype0
�
layer_normalization_92/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*-
shared_namelayer_normalization_92/gamma
�
0layer_normalization_92/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_92/gamma*
_output_shapes
:M*
dtype0
�
layer_normalization_92/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*,
shared_namelayer_normalization_92/beta
�
/layer_normalization_92/beta/Read/ReadVariableOpReadVariableOplayer_normalization_92/beta*
_output_shapes
:M*
dtype0
~
dense_3003/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:MM*"
shared_namedense_3003/kernel
w
%dense_3003/kernel/Read/ReadVariableOpReadVariableOpdense_3003/kernel*
_output_shapes

:MM*
dtype0
v
dense_3003/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:M* 
shared_namedense_3003/bias
o
#dense_3003/bias/Read/ReadVariableOpReadVariableOpdense_3003/bias*
_output_shapes
:M*
dtype0
�
layer_normalization_93/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*-
shared_namelayer_normalization_93/gamma
�
0layer_normalization_93/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_93/gamma*
_output_shapes
:M*
dtype0
�
layer_normalization_93/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*,
shared_namelayer_normalization_93/beta
�
/layer_normalization_93/beta/Read/ReadVariableOpReadVariableOplayer_normalization_93/beta*
_output_shapes
:M*
dtype0
~
dense_3004/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:MM*"
shared_namedense_3004/kernel
w
%dense_3004/kernel/Read/ReadVariableOpReadVariableOpdense_3004/kernel*
_output_shapes

:MM*
dtype0
v
dense_3004/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:M* 
shared_namedense_3004/bias
o
#dense_3004/bias/Read/ReadVariableOpReadVariableOpdense_3004/bias*
_output_shapes
:M*
dtype0
�
layer_normalization_94/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*-
shared_namelayer_normalization_94/gamma
�
0layer_normalization_94/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_94/gamma*
_output_shapes
:M*
dtype0
�
layer_normalization_94/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*,
shared_namelayer_normalization_94/beta
�
/layer_normalization_94/beta/Read/ReadVariableOpReadVariableOplayer_normalization_94/beta*
_output_shapes
:M*
dtype0

dense_3005/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	M�@*"
shared_namedense_3005/kernel
x
%dense_3005/kernel/Read/ReadVariableOpReadVariableOpdense_3005/kernel*
_output_shapes
:	M�@*
dtype0
w
dense_3005/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�@* 
shared_namedense_3005/bias
p
#dense_3005/bias/Read/ReadVariableOpReadVariableOpdense_3005/bias*
_output_shapes	
:�@*
dtype0
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
�
Adam/dense_2998/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�M*)
shared_nameAdam/dense_2998/kernel/m
�
,Adam/dense_2998/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2998/kernel/m*
_output_shapes
:	�M*
dtype0
�
Adam/dense_2998/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*'
shared_nameAdam/dense_2998/bias/m
}
*Adam/dense_2998/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2998/bias/m*
_output_shapes
:M*
dtype0
�
#Adam/layer_normalization_88/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*4
shared_name%#Adam/layer_normalization_88/gamma/m
�
7Adam/layer_normalization_88/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/layer_normalization_88/gamma/m*
_output_shapes
:M*
dtype0
�
"Adam/layer_normalization_88/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*3
shared_name$"Adam/layer_normalization_88/beta/m
�
6Adam/layer_normalization_88/beta/m/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_88/beta/m*
_output_shapes
:M*
dtype0
�
Adam/dense_2999/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:MM*)
shared_nameAdam/dense_2999/kernel/m
�
,Adam/dense_2999/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2999/kernel/m*
_output_shapes

:MM*
dtype0
�
Adam/dense_2999/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*'
shared_nameAdam/dense_2999/bias/m
}
*Adam/dense_2999/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2999/bias/m*
_output_shapes
:M*
dtype0
�
#Adam/layer_normalization_89/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*4
shared_name%#Adam/layer_normalization_89/gamma/m
�
7Adam/layer_normalization_89/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/layer_normalization_89/gamma/m*
_output_shapes
:M*
dtype0
�
"Adam/layer_normalization_89/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*3
shared_name$"Adam/layer_normalization_89/beta/m
�
6Adam/layer_normalization_89/beta/m/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_89/beta/m*
_output_shapes
:M*
dtype0
�
Adam/dense_3000/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:MM*)
shared_nameAdam/dense_3000/kernel/m
�
,Adam/dense_3000/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3000/kernel/m*
_output_shapes

:MM*
dtype0
�
Adam/dense_3000/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*'
shared_nameAdam/dense_3000/bias/m
}
*Adam/dense_3000/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3000/bias/m*
_output_shapes
:M*
dtype0
�
#Adam/layer_normalization_90/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*4
shared_name%#Adam/layer_normalization_90/gamma/m
�
7Adam/layer_normalization_90/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/layer_normalization_90/gamma/m*
_output_shapes
:M*
dtype0
�
"Adam/layer_normalization_90/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*3
shared_name$"Adam/layer_normalization_90/beta/m
�
6Adam/layer_normalization_90/beta/m/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_90/beta/m*
_output_shapes
:M*
dtype0
�
Adam/dense_3001/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:MM*)
shared_nameAdam/dense_3001/kernel/m
�
,Adam/dense_3001/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3001/kernel/m*
_output_shapes

:MM*
dtype0
�
Adam/dense_3001/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*'
shared_nameAdam/dense_3001/bias/m
}
*Adam/dense_3001/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3001/bias/m*
_output_shapes
:M*
dtype0
�
#Adam/layer_normalization_91/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*4
shared_name%#Adam/layer_normalization_91/gamma/m
�
7Adam/layer_normalization_91/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/layer_normalization_91/gamma/m*
_output_shapes
:M*
dtype0
�
"Adam/layer_normalization_91/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*3
shared_name$"Adam/layer_normalization_91/beta/m
�
6Adam/layer_normalization_91/beta/m/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_91/beta/m*
_output_shapes
:M*
dtype0
�
Adam/dense_3002/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:MM*)
shared_nameAdam/dense_3002/kernel/m
�
,Adam/dense_3002/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3002/kernel/m*
_output_shapes

:MM*
dtype0
�
Adam/dense_3002/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*'
shared_nameAdam/dense_3002/bias/m
}
*Adam/dense_3002/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3002/bias/m*
_output_shapes
:M*
dtype0
�
#Adam/layer_normalization_92/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*4
shared_name%#Adam/layer_normalization_92/gamma/m
�
7Adam/layer_normalization_92/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/layer_normalization_92/gamma/m*
_output_shapes
:M*
dtype0
�
"Adam/layer_normalization_92/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*3
shared_name$"Adam/layer_normalization_92/beta/m
�
6Adam/layer_normalization_92/beta/m/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_92/beta/m*
_output_shapes
:M*
dtype0
�
Adam/dense_3003/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:MM*)
shared_nameAdam/dense_3003/kernel/m
�
,Adam/dense_3003/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3003/kernel/m*
_output_shapes

:MM*
dtype0
�
Adam/dense_3003/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*'
shared_nameAdam/dense_3003/bias/m
}
*Adam/dense_3003/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3003/bias/m*
_output_shapes
:M*
dtype0
�
#Adam/layer_normalization_93/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*4
shared_name%#Adam/layer_normalization_93/gamma/m
�
7Adam/layer_normalization_93/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/layer_normalization_93/gamma/m*
_output_shapes
:M*
dtype0
�
"Adam/layer_normalization_93/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*3
shared_name$"Adam/layer_normalization_93/beta/m
�
6Adam/layer_normalization_93/beta/m/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_93/beta/m*
_output_shapes
:M*
dtype0
�
Adam/dense_3004/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:MM*)
shared_nameAdam/dense_3004/kernel/m
�
,Adam/dense_3004/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3004/kernel/m*
_output_shapes

:MM*
dtype0
�
Adam/dense_3004/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*'
shared_nameAdam/dense_3004/bias/m
}
*Adam/dense_3004/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3004/bias/m*
_output_shapes
:M*
dtype0
�
#Adam/layer_normalization_94/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*4
shared_name%#Adam/layer_normalization_94/gamma/m
�
7Adam/layer_normalization_94/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/layer_normalization_94/gamma/m*
_output_shapes
:M*
dtype0
�
"Adam/layer_normalization_94/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*3
shared_name$"Adam/layer_normalization_94/beta/m
�
6Adam/layer_normalization_94/beta/m/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_94/beta/m*
_output_shapes
:M*
dtype0
�
Adam/dense_3005/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	M�@*)
shared_nameAdam/dense_3005/kernel/m
�
,Adam/dense_3005/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3005/kernel/m*
_output_shapes
:	M�@*
dtype0
�
Adam/dense_3005/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�@*'
shared_nameAdam/dense_3005/bias/m
~
*Adam/dense_3005/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3005/bias/m*
_output_shapes	
:�@*
dtype0
�
Adam/dense_2998/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�M*)
shared_nameAdam/dense_2998/kernel/v
�
,Adam/dense_2998/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2998/kernel/v*
_output_shapes
:	�M*
dtype0
�
Adam/dense_2998/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*'
shared_nameAdam/dense_2998/bias/v
}
*Adam/dense_2998/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2998/bias/v*
_output_shapes
:M*
dtype0
�
#Adam/layer_normalization_88/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*4
shared_name%#Adam/layer_normalization_88/gamma/v
�
7Adam/layer_normalization_88/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/layer_normalization_88/gamma/v*
_output_shapes
:M*
dtype0
�
"Adam/layer_normalization_88/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*3
shared_name$"Adam/layer_normalization_88/beta/v
�
6Adam/layer_normalization_88/beta/v/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_88/beta/v*
_output_shapes
:M*
dtype0
�
Adam/dense_2999/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:MM*)
shared_nameAdam/dense_2999/kernel/v
�
,Adam/dense_2999/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2999/kernel/v*
_output_shapes

:MM*
dtype0
�
Adam/dense_2999/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*'
shared_nameAdam/dense_2999/bias/v
}
*Adam/dense_2999/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2999/bias/v*
_output_shapes
:M*
dtype0
�
#Adam/layer_normalization_89/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*4
shared_name%#Adam/layer_normalization_89/gamma/v
�
7Adam/layer_normalization_89/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/layer_normalization_89/gamma/v*
_output_shapes
:M*
dtype0
�
"Adam/layer_normalization_89/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*3
shared_name$"Adam/layer_normalization_89/beta/v
�
6Adam/layer_normalization_89/beta/v/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_89/beta/v*
_output_shapes
:M*
dtype0
�
Adam/dense_3000/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:MM*)
shared_nameAdam/dense_3000/kernel/v
�
,Adam/dense_3000/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3000/kernel/v*
_output_shapes

:MM*
dtype0
�
Adam/dense_3000/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*'
shared_nameAdam/dense_3000/bias/v
}
*Adam/dense_3000/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3000/bias/v*
_output_shapes
:M*
dtype0
�
#Adam/layer_normalization_90/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*4
shared_name%#Adam/layer_normalization_90/gamma/v
�
7Adam/layer_normalization_90/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/layer_normalization_90/gamma/v*
_output_shapes
:M*
dtype0
�
"Adam/layer_normalization_90/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*3
shared_name$"Adam/layer_normalization_90/beta/v
�
6Adam/layer_normalization_90/beta/v/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_90/beta/v*
_output_shapes
:M*
dtype0
�
Adam/dense_3001/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:MM*)
shared_nameAdam/dense_3001/kernel/v
�
,Adam/dense_3001/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3001/kernel/v*
_output_shapes

:MM*
dtype0
�
Adam/dense_3001/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*'
shared_nameAdam/dense_3001/bias/v
}
*Adam/dense_3001/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3001/bias/v*
_output_shapes
:M*
dtype0
�
#Adam/layer_normalization_91/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*4
shared_name%#Adam/layer_normalization_91/gamma/v
�
7Adam/layer_normalization_91/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/layer_normalization_91/gamma/v*
_output_shapes
:M*
dtype0
�
"Adam/layer_normalization_91/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*3
shared_name$"Adam/layer_normalization_91/beta/v
�
6Adam/layer_normalization_91/beta/v/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_91/beta/v*
_output_shapes
:M*
dtype0
�
Adam/dense_3002/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:MM*)
shared_nameAdam/dense_3002/kernel/v
�
,Adam/dense_3002/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3002/kernel/v*
_output_shapes

:MM*
dtype0
�
Adam/dense_3002/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*'
shared_nameAdam/dense_3002/bias/v
}
*Adam/dense_3002/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3002/bias/v*
_output_shapes
:M*
dtype0
�
#Adam/layer_normalization_92/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*4
shared_name%#Adam/layer_normalization_92/gamma/v
�
7Adam/layer_normalization_92/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/layer_normalization_92/gamma/v*
_output_shapes
:M*
dtype0
�
"Adam/layer_normalization_92/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*3
shared_name$"Adam/layer_normalization_92/beta/v
�
6Adam/layer_normalization_92/beta/v/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_92/beta/v*
_output_shapes
:M*
dtype0
�
Adam/dense_3003/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:MM*)
shared_nameAdam/dense_3003/kernel/v
�
,Adam/dense_3003/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3003/kernel/v*
_output_shapes

:MM*
dtype0
�
Adam/dense_3003/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*'
shared_nameAdam/dense_3003/bias/v
}
*Adam/dense_3003/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3003/bias/v*
_output_shapes
:M*
dtype0
�
#Adam/layer_normalization_93/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*4
shared_name%#Adam/layer_normalization_93/gamma/v
�
7Adam/layer_normalization_93/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/layer_normalization_93/gamma/v*
_output_shapes
:M*
dtype0
�
"Adam/layer_normalization_93/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*3
shared_name$"Adam/layer_normalization_93/beta/v
�
6Adam/layer_normalization_93/beta/v/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_93/beta/v*
_output_shapes
:M*
dtype0
�
Adam/dense_3004/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:MM*)
shared_nameAdam/dense_3004/kernel/v
�
,Adam/dense_3004/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3004/kernel/v*
_output_shapes

:MM*
dtype0
�
Adam/dense_3004/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*'
shared_nameAdam/dense_3004/bias/v
}
*Adam/dense_3004/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3004/bias/v*
_output_shapes
:M*
dtype0
�
#Adam/layer_normalization_94/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*4
shared_name%#Adam/layer_normalization_94/gamma/v
�
7Adam/layer_normalization_94/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/layer_normalization_94/gamma/v*
_output_shapes
:M*
dtype0
�
"Adam/layer_normalization_94/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*3
shared_name$"Adam/layer_normalization_94/beta/v
�
6Adam/layer_normalization_94/beta/v/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_94/beta/v*
_output_shapes
:M*
dtype0
�
Adam/dense_3005/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	M�@*)
shared_nameAdam/dense_3005/kernel/v
�
,Adam/dense_3005/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3005/kernel/v*
_output_shapes
:	M�@*
dtype0
�
Adam/dense_3005/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�@*'
shared_nameAdam/dense_3005/bias/v
~
*Adam/dense_3005/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3005/bias/v*
_output_shapes	
:�@*
dtype0

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B�� B��
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
	layer_with_weights-7
	layer-8

layer_with_weights-8

layer-9
layer_with_weights-9
layer-10
layer_with_weights-10
layer-11
layer_with_weights-11
layer-12
layer_with_weights-12
layer-13
layer_with_weights-13
layer-14
layer_with_weights-14
layer-15
	optimizer

signatures
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
%
#_self_saveable_object_factories
�

kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
�
 axis
	!gamma
"beta
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
�

(kernel
)bias
#*_self_saveable_object_factories
+	variables
,trainable_variables
-regularization_losses
.	keras_api
�
/axis
	0gamma
1beta
#2_self_saveable_object_factories
3	variables
4trainable_variables
5regularization_losses
6	keras_api
�

7kernel
8bias
#9_self_saveable_object_factories
:	variables
;trainable_variables
<regularization_losses
=	keras_api
�
>axis
	?gamma
@beta
#A_self_saveable_object_factories
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
�

Fkernel
Gbias
#H_self_saveable_object_factories
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
�
Maxis
	Ngamma
Obeta
#P_self_saveable_object_factories
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
�

Ukernel
Vbias
#W_self_saveable_object_factories
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
�
\axis
	]gamma
^beta
#__self_saveable_object_factories
`	variables
atrainable_variables
bregularization_losses
c	keras_api
�

dkernel
ebias
#f_self_saveable_object_factories
g	variables
htrainable_variables
iregularization_losses
j	keras_api
�
kaxis
	lgamma
mbeta
#n_self_saveable_object_factories
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
�

skernel
tbias
#u_self_saveable_object_factories
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
�
zaxis
	{gamma
|beta
#}_self_saveable_object_factories
~	variables
trainable_variables
�regularization_losses
�	keras_api
�
�kernel
	�bias
$�_self_saveable_object_factories
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�
	�iter
�beta_1
�beta_2

�decay
�learning_ratem�m�!m�"m�(m�)m�0m�1m�7m�8m�?m�@m�Fm�Gm�Nm�Om�Um�Vm�]m�^m�dm�em�lm�mm�sm�tm�{m�|m�	�m�	�m�v�v�!v�"v�(v�)v�0v�1v�7v�8v�?v�@v�Fv�Gv�Nv�Ov�Uv�Vv�]v�^v�dv�ev�lv�mv�sv�tv�{v�|v�	�v�	�v�
 
 
�
0
1
!2
"3
(4
)5
06
17
78
89
?10
@11
F12
G13
N14
O15
U16
V17
]18
^19
d20
e21
l22
m23
s24
t25
{26
|27
�28
�29
�
0
1
!2
"3
(4
)5
06
17
78
89
?10
@11
F12
G13
N14
O15
U16
V17
]18
^19
d20
e21
l22
m23
s24
t25
{26
|27
�28
�29
 
�
�layer_metrics
 �layer_regularization_losses
	variables
�layers
�metrics
�non_trainable_variables
trainable_variables
regularization_losses
 
][
VARIABLE_VALUEdense_2998/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEdense_2998/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
 
�
�layer_metrics
�layers
 �layer_regularization_losses
	variables
�metrics
�non_trainable_variables
trainable_variables
regularization_losses
 
ge
VARIABLE_VALUElayer_normalization_88/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUElayer_normalization_88/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
 

!0
"1

!0
"1
 
�
�layer_metrics
�layers
 �layer_regularization_losses
$	variables
�metrics
�non_trainable_variables
%trainable_variables
&regularization_losses
][
VARIABLE_VALUEdense_2999/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEdense_2999/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

(0
)1

(0
)1
 
�
�layer_metrics
�layers
 �layer_regularization_losses
+	variables
�metrics
�non_trainable_variables
,trainable_variables
-regularization_losses
 
ge
VARIABLE_VALUElayer_normalization_89/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUElayer_normalization_89/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
 

00
11

00
11
 
�
�layer_metrics
�layers
 �layer_regularization_losses
3	variables
�metrics
�non_trainable_variables
4trainable_variables
5regularization_losses
][
VARIABLE_VALUEdense_3000/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEdense_3000/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

70
81

70
81
 
�
�layer_metrics
�layers
 �layer_regularization_losses
:	variables
�metrics
�non_trainable_variables
;trainable_variables
<regularization_losses
 
ge
VARIABLE_VALUElayer_normalization_90/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUElayer_normalization_90/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
 

?0
@1

?0
@1
 
�
�layer_metrics
�layers
 �layer_regularization_losses
B	variables
�metrics
�non_trainable_variables
Ctrainable_variables
Dregularization_losses
][
VARIABLE_VALUEdense_3001/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEdense_3001/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

F0
G1

F0
G1
 
�
�layer_metrics
�layers
 �layer_regularization_losses
I	variables
�metrics
�non_trainable_variables
Jtrainable_variables
Kregularization_losses
 
ge
VARIABLE_VALUElayer_normalization_91/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUElayer_normalization_91/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
 

N0
O1

N0
O1
 
�
�layer_metrics
�layers
 �layer_regularization_losses
Q	variables
�metrics
�non_trainable_variables
Rtrainable_variables
Sregularization_losses
][
VARIABLE_VALUEdense_3002/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEdense_3002/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 

U0
V1

U0
V1
 
�
�layer_metrics
�layers
 �layer_regularization_losses
X	variables
�metrics
�non_trainable_variables
Ytrainable_variables
Zregularization_losses
 
ge
VARIABLE_VALUElayer_normalization_92/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUElayer_normalization_92/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
 

]0
^1

]0
^1
 
�
�layer_metrics
�layers
 �layer_regularization_losses
`	variables
�metrics
�non_trainable_variables
atrainable_variables
bregularization_losses
^\
VARIABLE_VALUEdense_3003/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEdense_3003/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE
 

d0
e1

d0
e1
 
�
�layer_metrics
�layers
 �layer_regularization_losses
g	variables
�metrics
�non_trainable_variables
htrainable_variables
iregularization_losses
 
hf
VARIABLE_VALUElayer_normalization_93/gamma6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUElayer_normalization_93/beta5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUE
 

l0
m1

l0
m1
 
�
�layer_metrics
�layers
 �layer_regularization_losses
o	variables
�metrics
�non_trainable_variables
ptrainable_variables
qregularization_losses
^\
VARIABLE_VALUEdense_3004/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEdense_3004/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE
 

s0
t1

s0
t1
 
�
�layer_metrics
�layers
 �layer_regularization_losses
v	variables
�metrics
�non_trainable_variables
wtrainable_variables
xregularization_losses
 
hf
VARIABLE_VALUElayer_normalization_94/gamma6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUElayer_normalization_94/beta5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUE
 

{0
|1

{0
|1
 
�
�layer_metrics
�layers
 �layer_regularization_losses
~	variables
�metrics
�non_trainable_variables
trainable_variables
�regularization_losses
^\
VARIABLE_VALUEdense_3005/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEdense_3005/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE
 

�0
�1

�0
�1
 
�
�layer_metrics
�layers
 �layer_regularization_losses
�	variables
�metrics
�non_trainable_variables
�trainable_variables
�regularization_losses
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
 
 
v
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15

�0
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
8

�total

�count
�	variables
�	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

�0
�1

�	variables
�~
VARIABLE_VALUEAdam/dense_2998/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense_2998/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE#Adam/layer_normalization_88/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/layer_normalization_88/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/dense_2999/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense_2999/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE#Adam/layer_normalization_89/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/layer_normalization_89/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/dense_3000/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense_3000/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE#Adam/layer_normalization_90/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/layer_normalization_90/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/dense_3001/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense_3001/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE#Adam/layer_normalization_91/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/layer_normalization_91/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/dense_3002/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense_3002/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE#Adam/layer_normalization_92/gamma/mQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/layer_normalization_92/beta/mPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUEAdam/dense_3003/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3003/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE#Adam/layer_normalization_93/gamma/mRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/layer_normalization_93/beta/mQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUEAdam/dense_3004/kernel/mSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3004/bias/mQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE#Adam/layer_normalization_94/gamma/mRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/layer_normalization_94/beta/mQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUEAdam/dense_3005/kernel/mSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3005/bias/mQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/dense_2998/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense_2998/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE#Adam/layer_normalization_88/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/layer_normalization_88/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/dense_2999/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense_2999/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE#Adam/layer_normalization_89/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/layer_normalization_89/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/dense_3000/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense_3000/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE#Adam/layer_normalization_90/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/layer_normalization_90/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/dense_3001/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense_3001/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE#Adam/layer_normalization_91/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/layer_normalization_91/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/dense_3002/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense_3002/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE#Adam/layer_normalization_92/gamma/vQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/layer_normalization_92/beta/vPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUEAdam/dense_3003/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3003/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE#Adam/layer_normalization_93/gamma/vRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/layer_normalization_93/beta/vQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUEAdam/dense_3004/kernel/vSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3004/bias/vQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE#Adam/layer_normalization_94/gamma/vRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/layer_normalization_94/beta/vQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUEAdam/dense_3005/kernel/vSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3005/bias/vQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
serving_default_input_144Placeholder*(
_output_shapes
:����������*
dtype0*
shape:����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_144dense_2998/kerneldense_2998/biaslayer_normalization_88/gammalayer_normalization_88/betadense_2999/kerneldense_2999/biaslayer_normalization_89/gammalayer_normalization_89/betadense_3000/kerneldense_3000/biaslayer_normalization_90/gammalayer_normalization_90/betadense_3001/kerneldense_3001/biaslayer_normalization_91/gammalayer_normalization_91/betadense_3002/kerneldense_3002/biaslayer_normalization_92/gammalayer_normalization_92/betadense_3003/kerneldense_3003/biaslayer_normalization_93/gammalayer_normalization_93/betadense_3004/kerneldense_3004/biaslayer_normalization_94/gammalayer_normalization_94/betadense_3005/kerneldense_3005/bias**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������@*@
_read_only_resource_inputs"
 	
*0
config_proto 

CPU

GPU2*0J 8� */
f*R(
&__inference_signature_wrapper_10178637
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�&
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%dense_2998/kernel/Read/ReadVariableOp#dense_2998/bias/Read/ReadVariableOp0layer_normalization_88/gamma/Read/ReadVariableOp/layer_normalization_88/beta/Read/ReadVariableOp%dense_2999/kernel/Read/ReadVariableOp#dense_2999/bias/Read/ReadVariableOp0layer_normalization_89/gamma/Read/ReadVariableOp/layer_normalization_89/beta/Read/ReadVariableOp%dense_3000/kernel/Read/ReadVariableOp#dense_3000/bias/Read/ReadVariableOp0layer_normalization_90/gamma/Read/ReadVariableOp/layer_normalization_90/beta/Read/ReadVariableOp%dense_3001/kernel/Read/ReadVariableOp#dense_3001/bias/Read/ReadVariableOp0layer_normalization_91/gamma/Read/ReadVariableOp/layer_normalization_91/beta/Read/ReadVariableOp%dense_3002/kernel/Read/ReadVariableOp#dense_3002/bias/Read/ReadVariableOp0layer_normalization_92/gamma/Read/ReadVariableOp/layer_normalization_92/beta/Read/ReadVariableOp%dense_3003/kernel/Read/ReadVariableOp#dense_3003/bias/Read/ReadVariableOp0layer_normalization_93/gamma/Read/ReadVariableOp/layer_normalization_93/beta/Read/ReadVariableOp%dense_3004/kernel/Read/ReadVariableOp#dense_3004/bias/Read/ReadVariableOp0layer_normalization_94/gamma/Read/ReadVariableOp/layer_normalization_94/beta/Read/ReadVariableOp%dense_3005/kernel/Read/ReadVariableOp#dense_3005/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,Adam/dense_2998/kernel/m/Read/ReadVariableOp*Adam/dense_2998/bias/m/Read/ReadVariableOp7Adam/layer_normalization_88/gamma/m/Read/ReadVariableOp6Adam/layer_normalization_88/beta/m/Read/ReadVariableOp,Adam/dense_2999/kernel/m/Read/ReadVariableOp*Adam/dense_2999/bias/m/Read/ReadVariableOp7Adam/layer_normalization_89/gamma/m/Read/ReadVariableOp6Adam/layer_normalization_89/beta/m/Read/ReadVariableOp,Adam/dense_3000/kernel/m/Read/ReadVariableOp*Adam/dense_3000/bias/m/Read/ReadVariableOp7Adam/layer_normalization_90/gamma/m/Read/ReadVariableOp6Adam/layer_normalization_90/beta/m/Read/ReadVariableOp,Adam/dense_3001/kernel/m/Read/ReadVariableOp*Adam/dense_3001/bias/m/Read/ReadVariableOp7Adam/layer_normalization_91/gamma/m/Read/ReadVariableOp6Adam/layer_normalization_91/beta/m/Read/ReadVariableOp,Adam/dense_3002/kernel/m/Read/ReadVariableOp*Adam/dense_3002/bias/m/Read/ReadVariableOp7Adam/layer_normalization_92/gamma/m/Read/ReadVariableOp6Adam/layer_normalization_92/beta/m/Read/ReadVariableOp,Adam/dense_3003/kernel/m/Read/ReadVariableOp*Adam/dense_3003/bias/m/Read/ReadVariableOp7Adam/layer_normalization_93/gamma/m/Read/ReadVariableOp6Adam/layer_normalization_93/beta/m/Read/ReadVariableOp,Adam/dense_3004/kernel/m/Read/ReadVariableOp*Adam/dense_3004/bias/m/Read/ReadVariableOp7Adam/layer_normalization_94/gamma/m/Read/ReadVariableOp6Adam/layer_normalization_94/beta/m/Read/ReadVariableOp,Adam/dense_3005/kernel/m/Read/ReadVariableOp*Adam/dense_3005/bias/m/Read/ReadVariableOp,Adam/dense_2998/kernel/v/Read/ReadVariableOp*Adam/dense_2998/bias/v/Read/ReadVariableOp7Adam/layer_normalization_88/gamma/v/Read/ReadVariableOp6Adam/layer_normalization_88/beta/v/Read/ReadVariableOp,Adam/dense_2999/kernel/v/Read/ReadVariableOp*Adam/dense_2999/bias/v/Read/ReadVariableOp7Adam/layer_normalization_89/gamma/v/Read/ReadVariableOp6Adam/layer_normalization_89/beta/v/Read/ReadVariableOp,Adam/dense_3000/kernel/v/Read/ReadVariableOp*Adam/dense_3000/bias/v/Read/ReadVariableOp7Adam/layer_normalization_90/gamma/v/Read/ReadVariableOp6Adam/layer_normalization_90/beta/v/Read/ReadVariableOp,Adam/dense_3001/kernel/v/Read/ReadVariableOp*Adam/dense_3001/bias/v/Read/ReadVariableOp7Adam/layer_normalization_91/gamma/v/Read/ReadVariableOp6Adam/layer_normalization_91/beta/v/Read/ReadVariableOp,Adam/dense_3002/kernel/v/Read/ReadVariableOp*Adam/dense_3002/bias/v/Read/ReadVariableOp7Adam/layer_normalization_92/gamma/v/Read/ReadVariableOp6Adam/layer_normalization_92/beta/v/Read/ReadVariableOp,Adam/dense_3003/kernel/v/Read/ReadVariableOp*Adam/dense_3003/bias/v/Read/ReadVariableOp7Adam/layer_normalization_93/gamma/v/Read/ReadVariableOp6Adam/layer_normalization_93/beta/v/Read/ReadVariableOp,Adam/dense_3004/kernel/v/Read/ReadVariableOp*Adam/dense_3004/bias/v/Read/ReadVariableOp7Adam/layer_normalization_94/gamma/v/Read/ReadVariableOp6Adam/layer_normalization_94/beta/v/Read/ReadVariableOp,Adam/dense_3005/kernel/v/Read/ReadVariableOp*Adam/dense_3005/bias/v/Read/ReadVariableOpConst*n
Ting
e2c	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__traced_save_10180226
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_2998/kerneldense_2998/biaslayer_normalization_88/gammalayer_normalization_88/betadense_2999/kerneldense_2999/biaslayer_normalization_89/gammalayer_normalization_89/betadense_3000/kerneldense_3000/biaslayer_normalization_90/gammalayer_normalization_90/betadense_3001/kerneldense_3001/biaslayer_normalization_91/gammalayer_normalization_91/betadense_3002/kerneldense_3002/biaslayer_normalization_92/gammalayer_normalization_92/betadense_3003/kerneldense_3003/biaslayer_normalization_93/gammalayer_normalization_93/betadense_3004/kerneldense_3004/biaslayer_normalization_94/gammalayer_normalization_94/betadense_3005/kerneldense_3005/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/dense_2998/kernel/mAdam/dense_2998/bias/m#Adam/layer_normalization_88/gamma/m"Adam/layer_normalization_88/beta/mAdam/dense_2999/kernel/mAdam/dense_2999/bias/m#Adam/layer_normalization_89/gamma/m"Adam/layer_normalization_89/beta/mAdam/dense_3000/kernel/mAdam/dense_3000/bias/m#Adam/layer_normalization_90/gamma/m"Adam/layer_normalization_90/beta/mAdam/dense_3001/kernel/mAdam/dense_3001/bias/m#Adam/layer_normalization_91/gamma/m"Adam/layer_normalization_91/beta/mAdam/dense_3002/kernel/mAdam/dense_3002/bias/m#Adam/layer_normalization_92/gamma/m"Adam/layer_normalization_92/beta/mAdam/dense_3003/kernel/mAdam/dense_3003/bias/m#Adam/layer_normalization_93/gamma/m"Adam/layer_normalization_93/beta/mAdam/dense_3004/kernel/mAdam/dense_3004/bias/m#Adam/layer_normalization_94/gamma/m"Adam/layer_normalization_94/beta/mAdam/dense_3005/kernel/mAdam/dense_3005/bias/mAdam/dense_2998/kernel/vAdam/dense_2998/bias/v#Adam/layer_normalization_88/gamma/v"Adam/layer_normalization_88/beta/vAdam/dense_2999/kernel/vAdam/dense_2999/bias/v#Adam/layer_normalization_89/gamma/v"Adam/layer_normalization_89/beta/vAdam/dense_3000/kernel/vAdam/dense_3000/bias/v#Adam/layer_normalization_90/gamma/v"Adam/layer_normalization_90/beta/vAdam/dense_3001/kernel/vAdam/dense_3001/bias/v#Adam/layer_normalization_91/gamma/v"Adam/layer_normalization_91/beta/vAdam/dense_3002/kernel/vAdam/dense_3002/bias/v#Adam/layer_normalization_92/gamma/v"Adam/layer_normalization_92/beta/vAdam/dense_3003/kernel/vAdam/dense_3003/bias/v#Adam/layer_normalization_93/gamma/v"Adam/layer_normalization_93/beta/vAdam/dense_3004/kernel/vAdam/dense_3004/bias/v#Adam/layer_normalization_94/gamma/v"Adam/layer_normalization_94/beta/vAdam/dense_3005/kernel/vAdam/dense_3005/bias/v*m
Tinf
d2b*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *-
f(R&
$__inference__traced_restore_10180527��
�"
�
T__inference_layer_normalization_89_layer_call_and_return_conditional_losses_10177731

inputs!
mul_2_readvariableop_resource
add_readvariableop_resource
identity��add/ReadVariableOp�mul_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_sliceP
mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
mul/xZ
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: 2
mulx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1T
mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/xb
mul_1Mulmul_1/x:output:0strided_slice_1:output:0*
T0*
_output_shapes
: 2
mul_1d
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/0d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3�
Reshape/shapePackReshape/shape/0:output:0mul:z:0	mul_1:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape�
ReshapeReshapeinputsReshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2	
ReshapeS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ConstU
	Fill/dimsPackmul:z:0*
N*
T0*
_output_shapes
:2
	Fill/dimsf
FillFillFill/dims:output:0Const:output:0*
T0*#
_output_shapes
:���������2
FillW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2	
Const_1Y
Fill_1/dimsPackmul:z:0*
N*
T0*
_output_shapes
:2
Fill_1/dimsn
Fill_1FillFill_1/dims:output:0Const_1:output:0*
T0*#
_output_shapes
:���������2
Fill_1U
Const_2Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_2U
Const_3Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_3�
FusedBatchNormV3FusedBatchNormV3Reshape:output:0Fill:output:0Fill_1:output:0Const_2:output:0Const_3:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2
FusedBatchNormV3y
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*'
_output_shapes
:���������M2
	Reshape_1�
mul_2/ReadVariableOpReadVariableOpmul_2_readvariableop_resource*
_output_shapes
:M*
dtype02
mul_2/ReadVariableOpy
mul_2MulReshape_1:output:0mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
mul_2�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:M*
dtype02
add/ReadVariableOpl
addAddV2	mul_2:z:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
add�
IdentityIdentityadd:z:0^add/ReadVariableOp^mul_2/ReadVariableOp*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�
�
,__inference_model_138_layer_call_fn_10178562
	input_144
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	input_144unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������@*@
_read_only_resource_inputs"
 	
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_model_138_layer_call_and_return_conditional_losses_101784992
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:����������::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
(
_output_shapes
:����������
#
_user_specified_name	input_144
�"
�
T__inference_layer_normalization_91_layer_call_and_return_conditional_losses_10179674

inputs!
mul_2_readvariableop_resource
add_readvariableop_resource
identity��add/ReadVariableOp�mul_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_sliceP
mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
mul/xZ
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: 2
mulx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1T
mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/xb
mul_1Mulmul_1/x:output:0strided_slice_1:output:0*
T0*
_output_shapes
: 2
mul_1d
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/0d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3�
Reshape/shapePackReshape/shape/0:output:0mul:z:0	mul_1:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape�
ReshapeReshapeinputsReshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2	
ReshapeS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ConstU
	Fill/dimsPackmul:z:0*
N*
T0*
_output_shapes
:2
	Fill/dimsf
FillFillFill/dims:output:0Const:output:0*
T0*#
_output_shapes
:���������2
FillW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2	
Const_1Y
Fill_1/dimsPackmul:z:0*
N*
T0*
_output_shapes
:2
Fill_1/dimsn
Fill_1FillFill_1/dims:output:0Const_1:output:0*
T0*#
_output_shapes
:���������2
Fill_1U
Const_2Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_2U
Const_3Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_3�
FusedBatchNormV3FusedBatchNormV3Reshape:output:0Fill:output:0Fill_1:output:0Const_2:output:0Const_3:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2
FusedBatchNormV3y
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*'
_output_shapes
:���������M2
	Reshape_1�
mul_2/ReadVariableOpReadVariableOpmul_2_readvariableop_resource*
_output_shapes
:M*
dtype02
mul_2/ReadVariableOpy
mul_2MulReshape_1:output:0mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
mul_2�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:M*
dtype02
add/ReadVariableOpl
addAddV2	mul_2:z:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
add�
IdentityIdentityadd:z:0^add/ReadVariableOp^mul_2/ReadVariableOp*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�	
�
H__inference_dense_3001_layer_call_and_return_conditional_losses_10177841

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:MM*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:M*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�
�
,__inference_model_138_layer_call_fn_10178418
	input_144
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	input_144unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������@*@
_read_only_resource_inputs"
 	
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_model_138_layer_call_and_return_conditional_losses_101783552
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:����������::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
(
_output_shapes
:����������
#
_user_specified_name	input_144
��
�
#__inference__wrapped_model_10177575
	input_1447
3model_138_dense_2998_matmul_readvariableop_resource8
4model_138_dense_2998_biasadd_readvariableop_resourceB
>model_138_layer_normalization_88_mul_2_readvariableop_resource@
<model_138_layer_normalization_88_add_readvariableop_resource7
3model_138_dense_2999_matmul_readvariableop_resource8
4model_138_dense_2999_biasadd_readvariableop_resourceB
>model_138_layer_normalization_89_mul_2_readvariableop_resource@
<model_138_layer_normalization_89_add_readvariableop_resource7
3model_138_dense_3000_matmul_readvariableop_resource8
4model_138_dense_3000_biasadd_readvariableop_resourceB
>model_138_layer_normalization_90_mul_2_readvariableop_resource@
<model_138_layer_normalization_90_add_readvariableop_resource7
3model_138_dense_3001_matmul_readvariableop_resource8
4model_138_dense_3001_biasadd_readvariableop_resourceB
>model_138_layer_normalization_91_mul_2_readvariableop_resource@
<model_138_layer_normalization_91_add_readvariableop_resource7
3model_138_dense_3002_matmul_readvariableop_resource8
4model_138_dense_3002_biasadd_readvariableop_resourceB
>model_138_layer_normalization_92_mul_2_readvariableop_resource@
<model_138_layer_normalization_92_add_readvariableop_resource7
3model_138_dense_3003_matmul_readvariableop_resource8
4model_138_dense_3003_biasadd_readvariableop_resourceB
>model_138_layer_normalization_93_mul_2_readvariableop_resource@
<model_138_layer_normalization_93_add_readvariableop_resource7
3model_138_dense_3004_matmul_readvariableop_resource8
4model_138_dense_3004_biasadd_readvariableop_resourceB
>model_138_layer_normalization_94_mul_2_readvariableop_resource@
<model_138_layer_normalization_94_add_readvariableop_resource7
3model_138_dense_3005_matmul_readvariableop_resource8
4model_138_dense_3005_biasadd_readvariableop_resource
identity��+model_138/dense_2998/BiasAdd/ReadVariableOp�*model_138/dense_2998/MatMul/ReadVariableOp�+model_138/dense_2999/BiasAdd/ReadVariableOp�*model_138/dense_2999/MatMul/ReadVariableOp�+model_138/dense_3000/BiasAdd/ReadVariableOp�*model_138/dense_3000/MatMul/ReadVariableOp�+model_138/dense_3001/BiasAdd/ReadVariableOp�*model_138/dense_3001/MatMul/ReadVariableOp�+model_138/dense_3002/BiasAdd/ReadVariableOp�*model_138/dense_3002/MatMul/ReadVariableOp�+model_138/dense_3003/BiasAdd/ReadVariableOp�*model_138/dense_3003/MatMul/ReadVariableOp�+model_138/dense_3004/BiasAdd/ReadVariableOp�*model_138/dense_3004/MatMul/ReadVariableOp�+model_138/dense_3005/BiasAdd/ReadVariableOp�*model_138/dense_3005/MatMul/ReadVariableOp�3model_138/layer_normalization_88/add/ReadVariableOp�5model_138/layer_normalization_88/mul_2/ReadVariableOp�3model_138/layer_normalization_89/add/ReadVariableOp�5model_138/layer_normalization_89/mul_2/ReadVariableOp�3model_138/layer_normalization_90/add/ReadVariableOp�5model_138/layer_normalization_90/mul_2/ReadVariableOp�3model_138/layer_normalization_91/add/ReadVariableOp�5model_138/layer_normalization_91/mul_2/ReadVariableOp�3model_138/layer_normalization_92/add/ReadVariableOp�5model_138/layer_normalization_92/mul_2/ReadVariableOp�3model_138/layer_normalization_93/add/ReadVariableOp�5model_138/layer_normalization_93/mul_2/ReadVariableOp�3model_138/layer_normalization_94/add/ReadVariableOp�5model_138/layer_normalization_94/mul_2/ReadVariableOp�
*model_138/dense_2998/MatMul/ReadVariableOpReadVariableOp3model_138_dense_2998_matmul_readvariableop_resource*
_output_shapes
:	�M*
dtype02,
*model_138/dense_2998/MatMul/ReadVariableOp�
model_138/dense_2998/MatMulMatMul	input_1442model_138/dense_2998/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
model_138/dense_2998/MatMul�
+model_138/dense_2998/BiasAdd/ReadVariableOpReadVariableOp4model_138_dense_2998_biasadd_readvariableop_resource*
_output_shapes
:M*
dtype02-
+model_138/dense_2998/BiasAdd/ReadVariableOp�
model_138/dense_2998/BiasAddBiasAdd%model_138/dense_2998/MatMul:product:03model_138/dense_2998/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
model_138/dense_2998/BiasAdd�
&model_138/layer_normalization_88/ShapeShape%model_138/dense_2998/BiasAdd:output:0*
T0*
_output_shapes
:2(
&model_138/layer_normalization_88/Shape�
4model_138/layer_normalization_88/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4model_138/layer_normalization_88/strided_slice/stack�
6model_138/layer_normalization_88/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6model_138/layer_normalization_88/strided_slice/stack_1�
6model_138/layer_normalization_88/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6model_138/layer_normalization_88/strided_slice/stack_2�
.model_138/layer_normalization_88/strided_sliceStridedSlice/model_138/layer_normalization_88/Shape:output:0=model_138/layer_normalization_88/strided_slice/stack:output:0?model_138/layer_normalization_88/strided_slice/stack_1:output:0?model_138/layer_normalization_88/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.model_138/layer_normalization_88/strided_slice�
&model_138/layer_normalization_88/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2(
&model_138/layer_normalization_88/mul/x�
$model_138/layer_normalization_88/mulMul/model_138/layer_normalization_88/mul/x:output:07model_138/layer_normalization_88/strided_slice:output:0*
T0*
_output_shapes
: 2&
$model_138/layer_normalization_88/mul�
6model_138/layer_normalization_88/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:28
6model_138/layer_normalization_88/strided_slice_1/stack�
8model_138/layer_normalization_88/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8model_138/layer_normalization_88/strided_slice_1/stack_1�
8model_138/layer_normalization_88/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8model_138/layer_normalization_88/strided_slice_1/stack_2�
0model_138/layer_normalization_88/strided_slice_1StridedSlice/model_138/layer_normalization_88/Shape:output:0?model_138/layer_normalization_88/strided_slice_1/stack:output:0Amodel_138/layer_normalization_88/strided_slice_1/stack_1:output:0Amodel_138/layer_normalization_88/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0model_138/layer_normalization_88/strided_slice_1�
(model_138/layer_normalization_88/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2*
(model_138/layer_normalization_88/mul_1/x�
&model_138/layer_normalization_88/mul_1Mul1model_138/layer_normalization_88/mul_1/x:output:09model_138/layer_normalization_88/strided_slice_1:output:0*
T0*
_output_shapes
: 2(
&model_138/layer_normalization_88/mul_1�
0model_138/layer_normalization_88/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :22
0model_138/layer_normalization_88/Reshape/shape/0�
0model_138/layer_normalization_88/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :22
0model_138/layer_normalization_88/Reshape/shape/3�
.model_138/layer_normalization_88/Reshape/shapePack9model_138/layer_normalization_88/Reshape/shape/0:output:0(model_138/layer_normalization_88/mul:z:0*model_138/layer_normalization_88/mul_1:z:09model_138/layer_normalization_88/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:20
.model_138/layer_normalization_88/Reshape/shape�
(model_138/layer_normalization_88/ReshapeReshape%model_138/dense_2998/BiasAdd:output:07model_138/layer_normalization_88/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2*
(model_138/layer_normalization_88/Reshape�
&model_138/layer_normalization_88/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2(
&model_138/layer_normalization_88/Const�
*model_138/layer_normalization_88/Fill/dimsPack(model_138/layer_normalization_88/mul:z:0*
N*
T0*
_output_shapes
:2,
*model_138/layer_normalization_88/Fill/dims�
%model_138/layer_normalization_88/FillFill3model_138/layer_normalization_88/Fill/dims:output:0/model_138/layer_normalization_88/Const:output:0*
T0*#
_output_shapes
:���������2'
%model_138/layer_normalization_88/Fill�
(model_138/layer_normalization_88/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2*
(model_138/layer_normalization_88/Const_1�
,model_138/layer_normalization_88/Fill_1/dimsPack(model_138/layer_normalization_88/mul:z:0*
N*
T0*
_output_shapes
:2.
,model_138/layer_normalization_88/Fill_1/dims�
'model_138/layer_normalization_88/Fill_1Fill5model_138/layer_normalization_88/Fill_1/dims:output:01model_138/layer_normalization_88/Const_1:output:0*
T0*#
_output_shapes
:���������2)
'model_138/layer_normalization_88/Fill_1�
(model_138/layer_normalization_88/Const_2Const*
_output_shapes
: *
dtype0*
valueB 2*
(model_138/layer_normalization_88/Const_2�
(model_138/layer_normalization_88/Const_3Const*
_output_shapes
: *
dtype0*
valueB 2*
(model_138/layer_normalization_88/Const_3�
1model_138/layer_normalization_88/FusedBatchNormV3FusedBatchNormV31model_138/layer_normalization_88/Reshape:output:0.model_138/layer_normalization_88/Fill:output:00model_138/layer_normalization_88/Fill_1:output:01model_138/layer_normalization_88/Const_2:output:01model_138/layer_normalization_88/Const_3:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:23
1model_138/layer_normalization_88/FusedBatchNormV3�
*model_138/layer_normalization_88/Reshape_1Reshape5model_138/layer_normalization_88/FusedBatchNormV3:y:0/model_138/layer_normalization_88/Shape:output:0*
T0*'
_output_shapes
:���������M2,
*model_138/layer_normalization_88/Reshape_1�
5model_138/layer_normalization_88/mul_2/ReadVariableOpReadVariableOp>model_138_layer_normalization_88_mul_2_readvariableop_resource*
_output_shapes
:M*
dtype027
5model_138/layer_normalization_88/mul_2/ReadVariableOp�
&model_138/layer_normalization_88/mul_2Mul3model_138/layer_normalization_88/Reshape_1:output:0=model_138/layer_normalization_88/mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2(
&model_138/layer_normalization_88/mul_2�
3model_138/layer_normalization_88/add/ReadVariableOpReadVariableOp<model_138_layer_normalization_88_add_readvariableop_resource*
_output_shapes
:M*
dtype025
3model_138/layer_normalization_88/add/ReadVariableOp�
$model_138/layer_normalization_88/addAddV2*model_138/layer_normalization_88/mul_2:z:0;model_138/layer_normalization_88/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2&
$model_138/layer_normalization_88/add�
*model_138/dense_2999/MatMul/ReadVariableOpReadVariableOp3model_138_dense_2999_matmul_readvariableop_resource*
_output_shapes

:MM*
dtype02,
*model_138/dense_2999/MatMul/ReadVariableOp�
model_138/dense_2999/MatMulMatMul(model_138/layer_normalization_88/add:z:02model_138/dense_2999/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
model_138/dense_2999/MatMul�
+model_138/dense_2999/BiasAdd/ReadVariableOpReadVariableOp4model_138_dense_2999_biasadd_readvariableop_resource*
_output_shapes
:M*
dtype02-
+model_138/dense_2999/BiasAdd/ReadVariableOp�
model_138/dense_2999/BiasAddBiasAdd%model_138/dense_2999/MatMul:product:03model_138/dense_2999/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
model_138/dense_2999/BiasAdd�
&model_138/layer_normalization_89/ShapeShape%model_138/dense_2999/BiasAdd:output:0*
T0*
_output_shapes
:2(
&model_138/layer_normalization_89/Shape�
4model_138/layer_normalization_89/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4model_138/layer_normalization_89/strided_slice/stack�
6model_138/layer_normalization_89/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6model_138/layer_normalization_89/strided_slice/stack_1�
6model_138/layer_normalization_89/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6model_138/layer_normalization_89/strided_slice/stack_2�
.model_138/layer_normalization_89/strided_sliceStridedSlice/model_138/layer_normalization_89/Shape:output:0=model_138/layer_normalization_89/strided_slice/stack:output:0?model_138/layer_normalization_89/strided_slice/stack_1:output:0?model_138/layer_normalization_89/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.model_138/layer_normalization_89/strided_slice�
&model_138/layer_normalization_89/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2(
&model_138/layer_normalization_89/mul/x�
$model_138/layer_normalization_89/mulMul/model_138/layer_normalization_89/mul/x:output:07model_138/layer_normalization_89/strided_slice:output:0*
T0*
_output_shapes
: 2&
$model_138/layer_normalization_89/mul�
6model_138/layer_normalization_89/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:28
6model_138/layer_normalization_89/strided_slice_1/stack�
8model_138/layer_normalization_89/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8model_138/layer_normalization_89/strided_slice_1/stack_1�
8model_138/layer_normalization_89/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8model_138/layer_normalization_89/strided_slice_1/stack_2�
0model_138/layer_normalization_89/strided_slice_1StridedSlice/model_138/layer_normalization_89/Shape:output:0?model_138/layer_normalization_89/strided_slice_1/stack:output:0Amodel_138/layer_normalization_89/strided_slice_1/stack_1:output:0Amodel_138/layer_normalization_89/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0model_138/layer_normalization_89/strided_slice_1�
(model_138/layer_normalization_89/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2*
(model_138/layer_normalization_89/mul_1/x�
&model_138/layer_normalization_89/mul_1Mul1model_138/layer_normalization_89/mul_1/x:output:09model_138/layer_normalization_89/strided_slice_1:output:0*
T0*
_output_shapes
: 2(
&model_138/layer_normalization_89/mul_1�
0model_138/layer_normalization_89/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :22
0model_138/layer_normalization_89/Reshape/shape/0�
0model_138/layer_normalization_89/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :22
0model_138/layer_normalization_89/Reshape/shape/3�
.model_138/layer_normalization_89/Reshape/shapePack9model_138/layer_normalization_89/Reshape/shape/0:output:0(model_138/layer_normalization_89/mul:z:0*model_138/layer_normalization_89/mul_1:z:09model_138/layer_normalization_89/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:20
.model_138/layer_normalization_89/Reshape/shape�
(model_138/layer_normalization_89/ReshapeReshape%model_138/dense_2999/BiasAdd:output:07model_138/layer_normalization_89/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2*
(model_138/layer_normalization_89/Reshape�
&model_138/layer_normalization_89/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2(
&model_138/layer_normalization_89/Const�
*model_138/layer_normalization_89/Fill/dimsPack(model_138/layer_normalization_89/mul:z:0*
N*
T0*
_output_shapes
:2,
*model_138/layer_normalization_89/Fill/dims�
%model_138/layer_normalization_89/FillFill3model_138/layer_normalization_89/Fill/dims:output:0/model_138/layer_normalization_89/Const:output:0*
T0*#
_output_shapes
:���������2'
%model_138/layer_normalization_89/Fill�
(model_138/layer_normalization_89/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2*
(model_138/layer_normalization_89/Const_1�
,model_138/layer_normalization_89/Fill_1/dimsPack(model_138/layer_normalization_89/mul:z:0*
N*
T0*
_output_shapes
:2.
,model_138/layer_normalization_89/Fill_1/dims�
'model_138/layer_normalization_89/Fill_1Fill5model_138/layer_normalization_89/Fill_1/dims:output:01model_138/layer_normalization_89/Const_1:output:0*
T0*#
_output_shapes
:���������2)
'model_138/layer_normalization_89/Fill_1�
(model_138/layer_normalization_89/Const_2Const*
_output_shapes
: *
dtype0*
valueB 2*
(model_138/layer_normalization_89/Const_2�
(model_138/layer_normalization_89/Const_3Const*
_output_shapes
: *
dtype0*
valueB 2*
(model_138/layer_normalization_89/Const_3�
1model_138/layer_normalization_89/FusedBatchNormV3FusedBatchNormV31model_138/layer_normalization_89/Reshape:output:0.model_138/layer_normalization_89/Fill:output:00model_138/layer_normalization_89/Fill_1:output:01model_138/layer_normalization_89/Const_2:output:01model_138/layer_normalization_89/Const_3:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:23
1model_138/layer_normalization_89/FusedBatchNormV3�
*model_138/layer_normalization_89/Reshape_1Reshape5model_138/layer_normalization_89/FusedBatchNormV3:y:0/model_138/layer_normalization_89/Shape:output:0*
T0*'
_output_shapes
:���������M2,
*model_138/layer_normalization_89/Reshape_1�
5model_138/layer_normalization_89/mul_2/ReadVariableOpReadVariableOp>model_138_layer_normalization_89_mul_2_readvariableop_resource*
_output_shapes
:M*
dtype027
5model_138/layer_normalization_89/mul_2/ReadVariableOp�
&model_138/layer_normalization_89/mul_2Mul3model_138/layer_normalization_89/Reshape_1:output:0=model_138/layer_normalization_89/mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2(
&model_138/layer_normalization_89/mul_2�
3model_138/layer_normalization_89/add/ReadVariableOpReadVariableOp<model_138_layer_normalization_89_add_readvariableop_resource*
_output_shapes
:M*
dtype025
3model_138/layer_normalization_89/add/ReadVariableOp�
$model_138/layer_normalization_89/addAddV2*model_138/layer_normalization_89/mul_2:z:0;model_138/layer_normalization_89/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2&
$model_138/layer_normalization_89/add�
*model_138/dense_3000/MatMul/ReadVariableOpReadVariableOp3model_138_dense_3000_matmul_readvariableop_resource*
_output_shapes

:MM*
dtype02,
*model_138/dense_3000/MatMul/ReadVariableOp�
model_138/dense_3000/MatMulMatMul(model_138/layer_normalization_89/add:z:02model_138/dense_3000/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
model_138/dense_3000/MatMul�
+model_138/dense_3000/BiasAdd/ReadVariableOpReadVariableOp4model_138_dense_3000_biasadd_readvariableop_resource*
_output_shapes
:M*
dtype02-
+model_138/dense_3000/BiasAdd/ReadVariableOp�
model_138/dense_3000/BiasAddBiasAdd%model_138/dense_3000/MatMul:product:03model_138/dense_3000/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
model_138/dense_3000/BiasAdd�
&model_138/layer_normalization_90/ShapeShape%model_138/dense_3000/BiasAdd:output:0*
T0*
_output_shapes
:2(
&model_138/layer_normalization_90/Shape�
4model_138/layer_normalization_90/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4model_138/layer_normalization_90/strided_slice/stack�
6model_138/layer_normalization_90/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6model_138/layer_normalization_90/strided_slice/stack_1�
6model_138/layer_normalization_90/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6model_138/layer_normalization_90/strided_slice/stack_2�
.model_138/layer_normalization_90/strided_sliceStridedSlice/model_138/layer_normalization_90/Shape:output:0=model_138/layer_normalization_90/strided_slice/stack:output:0?model_138/layer_normalization_90/strided_slice/stack_1:output:0?model_138/layer_normalization_90/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.model_138/layer_normalization_90/strided_slice�
&model_138/layer_normalization_90/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2(
&model_138/layer_normalization_90/mul/x�
$model_138/layer_normalization_90/mulMul/model_138/layer_normalization_90/mul/x:output:07model_138/layer_normalization_90/strided_slice:output:0*
T0*
_output_shapes
: 2&
$model_138/layer_normalization_90/mul�
6model_138/layer_normalization_90/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:28
6model_138/layer_normalization_90/strided_slice_1/stack�
8model_138/layer_normalization_90/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8model_138/layer_normalization_90/strided_slice_1/stack_1�
8model_138/layer_normalization_90/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8model_138/layer_normalization_90/strided_slice_1/stack_2�
0model_138/layer_normalization_90/strided_slice_1StridedSlice/model_138/layer_normalization_90/Shape:output:0?model_138/layer_normalization_90/strided_slice_1/stack:output:0Amodel_138/layer_normalization_90/strided_slice_1/stack_1:output:0Amodel_138/layer_normalization_90/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0model_138/layer_normalization_90/strided_slice_1�
(model_138/layer_normalization_90/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2*
(model_138/layer_normalization_90/mul_1/x�
&model_138/layer_normalization_90/mul_1Mul1model_138/layer_normalization_90/mul_1/x:output:09model_138/layer_normalization_90/strided_slice_1:output:0*
T0*
_output_shapes
: 2(
&model_138/layer_normalization_90/mul_1�
0model_138/layer_normalization_90/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :22
0model_138/layer_normalization_90/Reshape/shape/0�
0model_138/layer_normalization_90/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :22
0model_138/layer_normalization_90/Reshape/shape/3�
.model_138/layer_normalization_90/Reshape/shapePack9model_138/layer_normalization_90/Reshape/shape/0:output:0(model_138/layer_normalization_90/mul:z:0*model_138/layer_normalization_90/mul_1:z:09model_138/layer_normalization_90/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:20
.model_138/layer_normalization_90/Reshape/shape�
(model_138/layer_normalization_90/ReshapeReshape%model_138/dense_3000/BiasAdd:output:07model_138/layer_normalization_90/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2*
(model_138/layer_normalization_90/Reshape�
&model_138/layer_normalization_90/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2(
&model_138/layer_normalization_90/Const�
*model_138/layer_normalization_90/Fill/dimsPack(model_138/layer_normalization_90/mul:z:0*
N*
T0*
_output_shapes
:2,
*model_138/layer_normalization_90/Fill/dims�
%model_138/layer_normalization_90/FillFill3model_138/layer_normalization_90/Fill/dims:output:0/model_138/layer_normalization_90/Const:output:0*
T0*#
_output_shapes
:���������2'
%model_138/layer_normalization_90/Fill�
(model_138/layer_normalization_90/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2*
(model_138/layer_normalization_90/Const_1�
,model_138/layer_normalization_90/Fill_1/dimsPack(model_138/layer_normalization_90/mul:z:0*
N*
T0*
_output_shapes
:2.
,model_138/layer_normalization_90/Fill_1/dims�
'model_138/layer_normalization_90/Fill_1Fill5model_138/layer_normalization_90/Fill_1/dims:output:01model_138/layer_normalization_90/Const_1:output:0*
T0*#
_output_shapes
:���������2)
'model_138/layer_normalization_90/Fill_1�
(model_138/layer_normalization_90/Const_2Const*
_output_shapes
: *
dtype0*
valueB 2*
(model_138/layer_normalization_90/Const_2�
(model_138/layer_normalization_90/Const_3Const*
_output_shapes
: *
dtype0*
valueB 2*
(model_138/layer_normalization_90/Const_3�
1model_138/layer_normalization_90/FusedBatchNormV3FusedBatchNormV31model_138/layer_normalization_90/Reshape:output:0.model_138/layer_normalization_90/Fill:output:00model_138/layer_normalization_90/Fill_1:output:01model_138/layer_normalization_90/Const_2:output:01model_138/layer_normalization_90/Const_3:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:23
1model_138/layer_normalization_90/FusedBatchNormV3�
*model_138/layer_normalization_90/Reshape_1Reshape5model_138/layer_normalization_90/FusedBatchNormV3:y:0/model_138/layer_normalization_90/Shape:output:0*
T0*'
_output_shapes
:���������M2,
*model_138/layer_normalization_90/Reshape_1�
5model_138/layer_normalization_90/mul_2/ReadVariableOpReadVariableOp>model_138_layer_normalization_90_mul_2_readvariableop_resource*
_output_shapes
:M*
dtype027
5model_138/layer_normalization_90/mul_2/ReadVariableOp�
&model_138/layer_normalization_90/mul_2Mul3model_138/layer_normalization_90/Reshape_1:output:0=model_138/layer_normalization_90/mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2(
&model_138/layer_normalization_90/mul_2�
3model_138/layer_normalization_90/add/ReadVariableOpReadVariableOp<model_138_layer_normalization_90_add_readvariableop_resource*
_output_shapes
:M*
dtype025
3model_138/layer_normalization_90/add/ReadVariableOp�
$model_138/layer_normalization_90/addAddV2*model_138/layer_normalization_90/mul_2:z:0;model_138/layer_normalization_90/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2&
$model_138/layer_normalization_90/add�
*model_138/dense_3001/MatMul/ReadVariableOpReadVariableOp3model_138_dense_3001_matmul_readvariableop_resource*
_output_shapes

:MM*
dtype02,
*model_138/dense_3001/MatMul/ReadVariableOp�
model_138/dense_3001/MatMulMatMul(model_138/layer_normalization_90/add:z:02model_138/dense_3001/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
model_138/dense_3001/MatMul�
+model_138/dense_3001/BiasAdd/ReadVariableOpReadVariableOp4model_138_dense_3001_biasadd_readvariableop_resource*
_output_shapes
:M*
dtype02-
+model_138/dense_3001/BiasAdd/ReadVariableOp�
model_138/dense_3001/BiasAddBiasAdd%model_138/dense_3001/MatMul:product:03model_138/dense_3001/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
model_138/dense_3001/BiasAdd�
&model_138/layer_normalization_91/ShapeShape%model_138/dense_3001/BiasAdd:output:0*
T0*
_output_shapes
:2(
&model_138/layer_normalization_91/Shape�
4model_138/layer_normalization_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4model_138/layer_normalization_91/strided_slice/stack�
6model_138/layer_normalization_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6model_138/layer_normalization_91/strided_slice/stack_1�
6model_138/layer_normalization_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6model_138/layer_normalization_91/strided_slice/stack_2�
.model_138/layer_normalization_91/strided_sliceStridedSlice/model_138/layer_normalization_91/Shape:output:0=model_138/layer_normalization_91/strided_slice/stack:output:0?model_138/layer_normalization_91/strided_slice/stack_1:output:0?model_138/layer_normalization_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.model_138/layer_normalization_91/strided_slice�
&model_138/layer_normalization_91/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2(
&model_138/layer_normalization_91/mul/x�
$model_138/layer_normalization_91/mulMul/model_138/layer_normalization_91/mul/x:output:07model_138/layer_normalization_91/strided_slice:output:0*
T0*
_output_shapes
: 2&
$model_138/layer_normalization_91/mul�
6model_138/layer_normalization_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:28
6model_138/layer_normalization_91/strided_slice_1/stack�
8model_138/layer_normalization_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8model_138/layer_normalization_91/strided_slice_1/stack_1�
8model_138/layer_normalization_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8model_138/layer_normalization_91/strided_slice_1/stack_2�
0model_138/layer_normalization_91/strided_slice_1StridedSlice/model_138/layer_normalization_91/Shape:output:0?model_138/layer_normalization_91/strided_slice_1/stack:output:0Amodel_138/layer_normalization_91/strided_slice_1/stack_1:output:0Amodel_138/layer_normalization_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0model_138/layer_normalization_91/strided_slice_1�
(model_138/layer_normalization_91/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2*
(model_138/layer_normalization_91/mul_1/x�
&model_138/layer_normalization_91/mul_1Mul1model_138/layer_normalization_91/mul_1/x:output:09model_138/layer_normalization_91/strided_slice_1:output:0*
T0*
_output_shapes
: 2(
&model_138/layer_normalization_91/mul_1�
0model_138/layer_normalization_91/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :22
0model_138/layer_normalization_91/Reshape/shape/0�
0model_138/layer_normalization_91/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :22
0model_138/layer_normalization_91/Reshape/shape/3�
.model_138/layer_normalization_91/Reshape/shapePack9model_138/layer_normalization_91/Reshape/shape/0:output:0(model_138/layer_normalization_91/mul:z:0*model_138/layer_normalization_91/mul_1:z:09model_138/layer_normalization_91/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:20
.model_138/layer_normalization_91/Reshape/shape�
(model_138/layer_normalization_91/ReshapeReshape%model_138/dense_3001/BiasAdd:output:07model_138/layer_normalization_91/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2*
(model_138/layer_normalization_91/Reshape�
&model_138/layer_normalization_91/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2(
&model_138/layer_normalization_91/Const�
*model_138/layer_normalization_91/Fill/dimsPack(model_138/layer_normalization_91/mul:z:0*
N*
T0*
_output_shapes
:2,
*model_138/layer_normalization_91/Fill/dims�
%model_138/layer_normalization_91/FillFill3model_138/layer_normalization_91/Fill/dims:output:0/model_138/layer_normalization_91/Const:output:0*
T0*#
_output_shapes
:���������2'
%model_138/layer_normalization_91/Fill�
(model_138/layer_normalization_91/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2*
(model_138/layer_normalization_91/Const_1�
,model_138/layer_normalization_91/Fill_1/dimsPack(model_138/layer_normalization_91/mul:z:0*
N*
T0*
_output_shapes
:2.
,model_138/layer_normalization_91/Fill_1/dims�
'model_138/layer_normalization_91/Fill_1Fill5model_138/layer_normalization_91/Fill_1/dims:output:01model_138/layer_normalization_91/Const_1:output:0*
T0*#
_output_shapes
:���������2)
'model_138/layer_normalization_91/Fill_1�
(model_138/layer_normalization_91/Const_2Const*
_output_shapes
: *
dtype0*
valueB 2*
(model_138/layer_normalization_91/Const_2�
(model_138/layer_normalization_91/Const_3Const*
_output_shapes
: *
dtype0*
valueB 2*
(model_138/layer_normalization_91/Const_3�
1model_138/layer_normalization_91/FusedBatchNormV3FusedBatchNormV31model_138/layer_normalization_91/Reshape:output:0.model_138/layer_normalization_91/Fill:output:00model_138/layer_normalization_91/Fill_1:output:01model_138/layer_normalization_91/Const_2:output:01model_138/layer_normalization_91/Const_3:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:23
1model_138/layer_normalization_91/FusedBatchNormV3�
*model_138/layer_normalization_91/Reshape_1Reshape5model_138/layer_normalization_91/FusedBatchNormV3:y:0/model_138/layer_normalization_91/Shape:output:0*
T0*'
_output_shapes
:���������M2,
*model_138/layer_normalization_91/Reshape_1�
5model_138/layer_normalization_91/mul_2/ReadVariableOpReadVariableOp>model_138_layer_normalization_91_mul_2_readvariableop_resource*
_output_shapes
:M*
dtype027
5model_138/layer_normalization_91/mul_2/ReadVariableOp�
&model_138/layer_normalization_91/mul_2Mul3model_138/layer_normalization_91/Reshape_1:output:0=model_138/layer_normalization_91/mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2(
&model_138/layer_normalization_91/mul_2�
3model_138/layer_normalization_91/add/ReadVariableOpReadVariableOp<model_138_layer_normalization_91_add_readvariableop_resource*
_output_shapes
:M*
dtype025
3model_138/layer_normalization_91/add/ReadVariableOp�
$model_138/layer_normalization_91/addAddV2*model_138/layer_normalization_91/mul_2:z:0;model_138/layer_normalization_91/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2&
$model_138/layer_normalization_91/add�
*model_138/dense_3002/MatMul/ReadVariableOpReadVariableOp3model_138_dense_3002_matmul_readvariableop_resource*
_output_shapes

:MM*
dtype02,
*model_138/dense_3002/MatMul/ReadVariableOp�
model_138/dense_3002/MatMulMatMul(model_138/layer_normalization_91/add:z:02model_138/dense_3002/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
model_138/dense_3002/MatMul�
+model_138/dense_3002/BiasAdd/ReadVariableOpReadVariableOp4model_138_dense_3002_biasadd_readvariableop_resource*
_output_shapes
:M*
dtype02-
+model_138/dense_3002/BiasAdd/ReadVariableOp�
model_138/dense_3002/BiasAddBiasAdd%model_138/dense_3002/MatMul:product:03model_138/dense_3002/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
model_138/dense_3002/BiasAdd�
&model_138/layer_normalization_92/ShapeShape%model_138/dense_3002/BiasAdd:output:0*
T0*
_output_shapes
:2(
&model_138/layer_normalization_92/Shape�
4model_138/layer_normalization_92/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4model_138/layer_normalization_92/strided_slice/stack�
6model_138/layer_normalization_92/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6model_138/layer_normalization_92/strided_slice/stack_1�
6model_138/layer_normalization_92/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6model_138/layer_normalization_92/strided_slice/stack_2�
.model_138/layer_normalization_92/strided_sliceStridedSlice/model_138/layer_normalization_92/Shape:output:0=model_138/layer_normalization_92/strided_slice/stack:output:0?model_138/layer_normalization_92/strided_slice/stack_1:output:0?model_138/layer_normalization_92/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.model_138/layer_normalization_92/strided_slice�
&model_138/layer_normalization_92/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2(
&model_138/layer_normalization_92/mul/x�
$model_138/layer_normalization_92/mulMul/model_138/layer_normalization_92/mul/x:output:07model_138/layer_normalization_92/strided_slice:output:0*
T0*
_output_shapes
: 2&
$model_138/layer_normalization_92/mul�
6model_138/layer_normalization_92/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:28
6model_138/layer_normalization_92/strided_slice_1/stack�
8model_138/layer_normalization_92/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8model_138/layer_normalization_92/strided_slice_1/stack_1�
8model_138/layer_normalization_92/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8model_138/layer_normalization_92/strided_slice_1/stack_2�
0model_138/layer_normalization_92/strided_slice_1StridedSlice/model_138/layer_normalization_92/Shape:output:0?model_138/layer_normalization_92/strided_slice_1/stack:output:0Amodel_138/layer_normalization_92/strided_slice_1/stack_1:output:0Amodel_138/layer_normalization_92/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0model_138/layer_normalization_92/strided_slice_1�
(model_138/layer_normalization_92/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2*
(model_138/layer_normalization_92/mul_1/x�
&model_138/layer_normalization_92/mul_1Mul1model_138/layer_normalization_92/mul_1/x:output:09model_138/layer_normalization_92/strided_slice_1:output:0*
T0*
_output_shapes
: 2(
&model_138/layer_normalization_92/mul_1�
0model_138/layer_normalization_92/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :22
0model_138/layer_normalization_92/Reshape/shape/0�
0model_138/layer_normalization_92/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :22
0model_138/layer_normalization_92/Reshape/shape/3�
.model_138/layer_normalization_92/Reshape/shapePack9model_138/layer_normalization_92/Reshape/shape/0:output:0(model_138/layer_normalization_92/mul:z:0*model_138/layer_normalization_92/mul_1:z:09model_138/layer_normalization_92/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:20
.model_138/layer_normalization_92/Reshape/shape�
(model_138/layer_normalization_92/ReshapeReshape%model_138/dense_3002/BiasAdd:output:07model_138/layer_normalization_92/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2*
(model_138/layer_normalization_92/Reshape�
&model_138/layer_normalization_92/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2(
&model_138/layer_normalization_92/Const�
*model_138/layer_normalization_92/Fill/dimsPack(model_138/layer_normalization_92/mul:z:0*
N*
T0*
_output_shapes
:2,
*model_138/layer_normalization_92/Fill/dims�
%model_138/layer_normalization_92/FillFill3model_138/layer_normalization_92/Fill/dims:output:0/model_138/layer_normalization_92/Const:output:0*
T0*#
_output_shapes
:���������2'
%model_138/layer_normalization_92/Fill�
(model_138/layer_normalization_92/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2*
(model_138/layer_normalization_92/Const_1�
,model_138/layer_normalization_92/Fill_1/dimsPack(model_138/layer_normalization_92/mul:z:0*
N*
T0*
_output_shapes
:2.
,model_138/layer_normalization_92/Fill_1/dims�
'model_138/layer_normalization_92/Fill_1Fill5model_138/layer_normalization_92/Fill_1/dims:output:01model_138/layer_normalization_92/Const_1:output:0*
T0*#
_output_shapes
:���������2)
'model_138/layer_normalization_92/Fill_1�
(model_138/layer_normalization_92/Const_2Const*
_output_shapes
: *
dtype0*
valueB 2*
(model_138/layer_normalization_92/Const_2�
(model_138/layer_normalization_92/Const_3Const*
_output_shapes
: *
dtype0*
valueB 2*
(model_138/layer_normalization_92/Const_3�
1model_138/layer_normalization_92/FusedBatchNormV3FusedBatchNormV31model_138/layer_normalization_92/Reshape:output:0.model_138/layer_normalization_92/Fill:output:00model_138/layer_normalization_92/Fill_1:output:01model_138/layer_normalization_92/Const_2:output:01model_138/layer_normalization_92/Const_3:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:23
1model_138/layer_normalization_92/FusedBatchNormV3�
*model_138/layer_normalization_92/Reshape_1Reshape5model_138/layer_normalization_92/FusedBatchNormV3:y:0/model_138/layer_normalization_92/Shape:output:0*
T0*'
_output_shapes
:���������M2,
*model_138/layer_normalization_92/Reshape_1�
5model_138/layer_normalization_92/mul_2/ReadVariableOpReadVariableOp>model_138_layer_normalization_92_mul_2_readvariableop_resource*
_output_shapes
:M*
dtype027
5model_138/layer_normalization_92/mul_2/ReadVariableOp�
&model_138/layer_normalization_92/mul_2Mul3model_138/layer_normalization_92/Reshape_1:output:0=model_138/layer_normalization_92/mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2(
&model_138/layer_normalization_92/mul_2�
3model_138/layer_normalization_92/add/ReadVariableOpReadVariableOp<model_138_layer_normalization_92_add_readvariableop_resource*
_output_shapes
:M*
dtype025
3model_138/layer_normalization_92/add/ReadVariableOp�
$model_138/layer_normalization_92/addAddV2*model_138/layer_normalization_92/mul_2:z:0;model_138/layer_normalization_92/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2&
$model_138/layer_normalization_92/add�
*model_138/dense_3003/MatMul/ReadVariableOpReadVariableOp3model_138_dense_3003_matmul_readvariableop_resource*
_output_shapes

:MM*
dtype02,
*model_138/dense_3003/MatMul/ReadVariableOp�
model_138/dense_3003/MatMulMatMul(model_138/layer_normalization_92/add:z:02model_138/dense_3003/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
model_138/dense_3003/MatMul�
+model_138/dense_3003/BiasAdd/ReadVariableOpReadVariableOp4model_138_dense_3003_biasadd_readvariableop_resource*
_output_shapes
:M*
dtype02-
+model_138/dense_3003/BiasAdd/ReadVariableOp�
model_138/dense_3003/BiasAddBiasAdd%model_138/dense_3003/MatMul:product:03model_138/dense_3003/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
model_138/dense_3003/BiasAdd�
&model_138/layer_normalization_93/ShapeShape%model_138/dense_3003/BiasAdd:output:0*
T0*
_output_shapes
:2(
&model_138/layer_normalization_93/Shape�
4model_138/layer_normalization_93/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4model_138/layer_normalization_93/strided_slice/stack�
6model_138/layer_normalization_93/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6model_138/layer_normalization_93/strided_slice/stack_1�
6model_138/layer_normalization_93/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6model_138/layer_normalization_93/strided_slice/stack_2�
.model_138/layer_normalization_93/strided_sliceStridedSlice/model_138/layer_normalization_93/Shape:output:0=model_138/layer_normalization_93/strided_slice/stack:output:0?model_138/layer_normalization_93/strided_slice/stack_1:output:0?model_138/layer_normalization_93/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.model_138/layer_normalization_93/strided_slice�
&model_138/layer_normalization_93/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2(
&model_138/layer_normalization_93/mul/x�
$model_138/layer_normalization_93/mulMul/model_138/layer_normalization_93/mul/x:output:07model_138/layer_normalization_93/strided_slice:output:0*
T0*
_output_shapes
: 2&
$model_138/layer_normalization_93/mul�
6model_138/layer_normalization_93/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:28
6model_138/layer_normalization_93/strided_slice_1/stack�
8model_138/layer_normalization_93/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8model_138/layer_normalization_93/strided_slice_1/stack_1�
8model_138/layer_normalization_93/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8model_138/layer_normalization_93/strided_slice_1/stack_2�
0model_138/layer_normalization_93/strided_slice_1StridedSlice/model_138/layer_normalization_93/Shape:output:0?model_138/layer_normalization_93/strided_slice_1/stack:output:0Amodel_138/layer_normalization_93/strided_slice_1/stack_1:output:0Amodel_138/layer_normalization_93/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0model_138/layer_normalization_93/strided_slice_1�
(model_138/layer_normalization_93/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2*
(model_138/layer_normalization_93/mul_1/x�
&model_138/layer_normalization_93/mul_1Mul1model_138/layer_normalization_93/mul_1/x:output:09model_138/layer_normalization_93/strided_slice_1:output:0*
T0*
_output_shapes
: 2(
&model_138/layer_normalization_93/mul_1�
0model_138/layer_normalization_93/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :22
0model_138/layer_normalization_93/Reshape/shape/0�
0model_138/layer_normalization_93/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :22
0model_138/layer_normalization_93/Reshape/shape/3�
.model_138/layer_normalization_93/Reshape/shapePack9model_138/layer_normalization_93/Reshape/shape/0:output:0(model_138/layer_normalization_93/mul:z:0*model_138/layer_normalization_93/mul_1:z:09model_138/layer_normalization_93/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:20
.model_138/layer_normalization_93/Reshape/shape�
(model_138/layer_normalization_93/ReshapeReshape%model_138/dense_3003/BiasAdd:output:07model_138/layer_normalization_93/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2*
(model_138/layer_normalization_93/Reshape�
&model_138/layer_normalization_93/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2(
&model_138/layer_normalization_93/Const�
*model_138/layer_normalization_93/Fill/dimsPack(model_138/layer_normalization_93/mul:z:0*
N*
T0*
_output_shapes
:2,
*model_138/layer_normalization_93/Fill/dims�
%model_138/layer_normalization_93/FillFill3model_138/layer_normalization_93/Fill/dims:output:0/model_138/layer_normalization_93/Const:output:0*
T0*#
_output_shapes
:���������2'
%model_138/layer_normalization_93/Fill�
(model_138/layer_normalization_93/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2*
(model_138/layer_normalization_93/Const_1�
,model_138/layer_normalization_93/Fill_1/dimsPack(model_138/layer_normalization_93/mul:z:0*
N*
T0*
_output_shapes
:2.
,model_138/layer_normalization_93/Fill_1/dims�
'model_138/layer_normalization_93/Fill_1Fill5model_138/layer_normalization_93/Fill_1/dims:output:01model_138/layer_normalization_93/Const_1:output:0*
T0*#
_output_shapes
:���������2)
'model_138/layer_normalization_93/Fill_1�
(model_138/layer_normalization_93/Const_2Const*
_output_shapes
: *
dtype0*
valueB 2*
(model_138/layer_normalization_93/Const_2�
(model_138/layer_normalization_93/Const_3Const*
_output_shapes
: *
dtype0*
valueB 2*
(model_138/layer_normalization_93/Const_3�
1model_138/layer_normalization_93/FusedBatchNormV3FusedBatchNormV31model_138/layer_normalization_93/Reshape:output:0.model_138/layer_normalization_93/Fill:output:00model_138/layer_normalization_93/Fill_1:output:01model_138/layer_normalization_93/Const_2:output:01model_138/layer_normalization_93/Const_3:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:23
1model_138/layer_normalization_93/FusedBatchNormV3�
*model_138/layer_normalization_93/Reshape_1Reshape5model_138/layer_normalization_93/FusedBatchNormV3:y:0/model_138/layer_normalization_93/Shape:output:0*
T0*'
_output_shapes
:���������M2,
*model_138/layer_normalization_93/Reshape_1�
5model_138/layer_normalization_93/mul_2/ReadVariableOpReadVariableOp>model_138_layer_normalization_93_mul_2_readvariableop_resource*
_output_shapes
:M*
dtype027
5model_138/layer_normalization_93/mul_2/ReadVariableOp�
&model_138/layer_normalization_93/mul_2Mul3model_138/layer_normalization_93/Reshape_1:output:0=model_138/layer_normalization_93/mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2(
&model_138/layer_normalization_93/mul_2�
3model_138/layer_normalization_93/add/ReadVariableOpReadVariableOp<model_138_layer_normalization_93_add_readvariableop_resource*
_output_shapes
:M*
dtype025
3model_138/layer_normalization_93/add/ReadVariableOp�
$model_138/layer_normalization_93/addAddV2*model_138/layer_normalization_93/mul_2:z:0;model_138/layer_normalization_93/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2&
$model_138/layer_normalization_93/add�
*model_138/dense_3004/MatMul/ReadVariableOpReadVariableOp3model_138_dense_3004_matmul_readvariableop_resource*
_output_shapes

:MM*
dtype02,
*model_138/dense_3004/MatMul/ReadVariableOp�
model_138/dense_3004/MatMulMatMul(model_138/layer_normalization_93/add:z:02model_138/dense_3004/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
model_138/dense_3004/MatMul�
+model_138/dense_3004/BiasAdd/ReadVariableOpReadVariableOp4model_138_dense_3004_biasadd_readvariableop_resource*
_output_shapes
:M*
dtype02-
+model_138/dense_3004/BiasAdd/ReadVariableOp�
model_138/dense_3004/BiasAddBiasAdd%model_138/dense_3004/MatMul:product:03model_138/dense_3004/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
model_138/dense_3004/BiasAdd�
&model_138/layer_normalization_94/ShapeShape%model_138/dense_3004/BiasAdd:output:0*
T0*
_output_shapes
:2(
&model_138/layer_normalization_94/Shape�
4model_138/layer_normalization_94/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4model_138/layer_normalization_94/strided_slice/stack�
6model_138/layer_normalization_94/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6model_138/layer_normalization_94/strided_slice/stack_1�
6model_138/layer_normalization_94/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6model_138/layer_normalization_94/strided_slice/stack_2�
.model_138/layer_normalization_94/strided_sliceStridedSlice/model_138/layer_normalization_94/Shape:output:0=model_138/layer_normalization_94/strided_slice/stack:output:0?model_138/layer_normalization_94/strided_slice/stack_1:output:0?model_138/layer_normalization_94/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.model_138/layer_normalization_94/strided_slice�
&model_138/layer_normalization_94/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2(
&model_138/layer_normalization_94/mul/x�
$model_138/layer_normalization_94/mulMul/model_138/layer_normalization_94/mul/x:output:07model_138/layer_normalization_94/strided_slice:output:0*
T0*
_output_shapes
: 2&
$model_138/layer_normalization_94/mul�
6model_138/layer_normalization_94/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:28
6model_138/layer_normalization_94/strided_slice_1/stack�
8model_138/layer_normalization_94/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8model_138/layer_normalization_94/strided_slice_1/stack_1�
8model_138/layer_normalization_94/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8model_138/layer_normalization_94/strided_slice_1/stack_2�
0model_138/layer_normalization_94/strided_slice_1StridedSlice/model_138/layer_normalization_94/Shape:output:0?model_138/layer_normalization_94/strided_slice_1/stack:output:0Amodel_138/layer_normalization_94/strided_slice_1/stack_1:output:0Amodel_138/layer_normalization_94/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0model_138/layer_normalization_94/strided_slice_1�
(model_138/layer_normalization_94/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2*
(model_138/layer_normalization_94/mul_1/x�
&model_138/layer_normalization_94/mul_1Mul1model_138/layer_normalization_94/mul_1/x:output:09model_138/layer_normalization_94/strided_slice_1:output:0*
T0*
_output_shapes
: 2(
&model_138/layer_normalization_94/mul_1�
0model_138/layer_normalization_94/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :22
0model_138/layer_normalization_94/Reshape/shape/0�
0model_138/layer_normalization_94/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :22
0model_138/layer_normalization_94/Reshape/shape/3�
.model_138/layer_normalization_94/Reshape/shapePack9model_138/layer_normalization_94/Reshape/shape/0:output:0(model_138/layer_normalization_94/mul:z:0*model_138/layer_normalization_94/mul_1:z:09model_138/layer_normalization_94/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:20
.model_138/layer_normalization_94/Reshape/shape�
(model_138/layer_normalization_94/ReshapeReshape%model_138/dense_3004/BiasAdd:output:07model_138/layer_normalization_94/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2*
(model_138/layer_normalization_94/Reshape�
&model_138/layer_normalization_94/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2(
&model_138/layer_normalization_94/Const�
*model_138/layer_normalization_94/Fill/dimsPack(model_138/layer_normalization_94/mul:z:0*
N*
T0*
_output_shapes
:2,
*model_138/layer_normalization_94/Fill/dims�
%model_138/layer_normalization_94/FillFill3model_138/layer_normalization_94/Fill/dims:output:0/model_138/layer_normalization_94/Const:output:0*
T0*#
_output_shapes
:���������2'
%model_138/layer_normalization_94/Fill�
(model_138/layer_normalization_94/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2*
(model_138/layer_normalization_94/Const_1�
,model_138/layer_normalization_94/Fill_1/dimsPack(model_138/layer_normalization_94/mul:z:0*
N*
T0*
_output_shapes
:2.
,model_138/layer_normalization_94/Fill_1/dims�
'model_138/layer_normalization_94/Fill_1Fill5model_138/layer_normalization_94/Fill_1/dims:output:01model_138/layer_normalization_94/Const_1:output:0*
T0*#
_output_shapes
:���������2)
'model_138/layer_normalization_94/Fill_1�
(model_138/layer_normalization_94/Const_2Const*
_output_shapes
: *
dtype0*
valueB 2*
(model_138/layer_normalization_94/Const_2�
(model_138/layer_normalization_94/Const_3Const*
_output_shapes
: *
dtype0*
valueB 2*
(model_138/layer_normalization_94/Const_3�
1model_138/layer_normalization_94/FusedBatchNormV3FusedBatchNormV31model_138/layer_normalization_94/Reshape:output:0.model_138/layer_normalization_94/Fill:output:00model_138/layer_normalization_94/Fill_1:output:01model_138/layer_normalization_94/Const_2:output:01model_138/layer_normalization_94/Const_3:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:23
1model_138/layer_normalization_94/FusedBatchNormV3�
*model_138/layer_normalization_94/Reshape_1Reshape5model_138/layer_normalization_94/FusedBatchNormV3:y:0/model_138/layer_normalization_94/Shape:output:0*
T0*'
_output_shapes
:���������M2,
*model_138/layer_normalization_94/Reshape_1�
5model_138/layer_normalization_94/mul_2/ReadVariableOpReadVariableOp>model_138_layer_normalization_94_mul_2_readvariableop_resource*
_output_shapes
:M*
dtype027
5model_138/layer_normalization_94/mul_2/ReadVariableOp�
&model_138/layer_normalization_94/mul_2Mul3model_138/layer_normalization_94/Reshape_1:output:0=model_138/layer_normalization_94/mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2(
&model_138/layer_normalization_94/mul_2�
3model_138/layer_normalization_94/add/ReadVariableOpReadVariableOp<model_138_layer_normalization_94_add_readvariableop_resource*
_output_shapes
:M*
dtype025
3model_138/layer_normalization_94/add/ReadVariableOp�
$model_138/layer_normalization_94/addAddV2*model_138/layer_normalization_94/mul_2:z:0;model_138/layer_normalization_94/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2&
$model_138/layer_normalization_94/add�
*model_138/dense_3005/MatMul/ReadVariableOpReadVariableOp3model_138_dense_3005_matmul_readvariableop_resource*
_output_shapes
:	M�@*
dtype02,
*model_138/dense_3005/MatMul/ReadVariableOp�
model_138/dense_3005/MatMulMatMul(model_138/layer_normalization_94/add:z:02model_138/dense_3005/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������@2
model_138/dense_3005/MatMul�
+model_138/dense_3005/BiasAdd/ReadVariableOpReadVariableOp4model_138_dense_3005_biasadd_readvariableop_resource*
_output_shapes	
:�@*
dtype02-
+model_138/dense_3005/BiasAdd/ReadVariableOp�
model_138/dense_3005/BiasAddBiasAdd%model_138/dense_3005/MatMul:product:03model_138/dense_3005/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������@2
model_138/dense_3005/BiasAdd�
IdentityIdentity%model_138/dense_3005/BiasAdd:output:0,^model_138/dense_2998/BiasAdd/ReadVariableOp+^model_138/dense_2998/MatMul/ReadVariableOp,^model_138/dense_2999/BiasAdd/ReadVariableOp+^model_138/dense_2999/MatMul/ReadVariableOp,^model_138/dense_3000/BiasAdd/ReadVariableOp+^model_138/dense_3000/MatMul/ReadVariableOp,^model_138/dense_3001/BiasAdd/ReadVariableOp+^model_138/dense_3001/MatMul/ReadVariableOp,^model_138/dense_3002/BiasAdd/ReadVariableOp+^model_138/dense_3002/MatMul/ReadVariableOp,^model_138/dense_3003/BiasAdd/ReadVariableOp+^model_138/dense_3003/MatMul/ReadVariableOp,^model_138/dense_3004/BiasAdd/ReadVariableOp+^model_138/dense_3004/MatMul/ReadVariableOp,^model_138/dense_3005/BiasAdd/ReadVariableOp+^model_138/dense_3005/MatMul/ReadVariableOp4^model_138/layer_normalization_88/add/ReadVariableOp6^model_138/layer_normalization_88/mul_2/ReadVariableOp4^model_138/layer_normalization_89/add/ReadVariableOp6^model_138/layer_normalization_89/mul_2/ReadVariableOp4^model_138/layer_normalization_90/add/ReadVariableOp6^model_138/layer_normalization_90/mul_2/ReadVariableOp4^model_138/layer_normalization_91/add/ReadVariableOp6^model_138/layer_normalization_91/mul_2/ReadVariableOp4^model_138/layer_normalization_92/add/ReadVariableOp6^model_138/layer_normalization_92/mul_2/ReadVariableOp4^model_138/layer_normalization_93/add/ReadVariableOp6^model_138/layer_normalization_93/mul_2/ReadVariableOp4^model_138/layer_normalization_94/add/ReadVariableOp6^model_138/layer_normalization_94/mul_2/ReadVariableOp*
T0*(
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:����������::::::::::::::::::::::::::::::2Z
+model_138/dense_2998/BiasAdd/ReadVariableOp+model_138/dense_2998/BiasAdd/ReadVariableOp2X
*model_138/dense_2998/MatMul/ReadVariableOp*model_138/dense_2998/MatMul/ReadVariableOp2Z
+model_138/dense_2999/BiasAdd/ReadVariableOp+model_138/dense_2999/BiasAdd/ReadVariableOp2X
*model_138/dense_2999/MatMul/ReadVariableOp*model_138/dense_2999/MatMul/ReadVariableOp2Z
+model_138/dense_3000/BiasAdd/ReadVariableOp+model_138/dense_3000/BiasAdd/ReadVariableOp2X
*model_138/dense_3000/MatMul/ReadVariableOp*model_138/dense_3000/MatMul/ReadVariableOp2Z
+model_138/dense_3001/BiasAdd/ReadVariableOp+model_138/dense_3001/BiasAdd/ReadVariableOp2X
*model_138/dense_3001/MatMul/ReadVariableOp*model_138/dense_3001/MatMul/ReadVariableOp2Z
+model_138/dense_3002/BiasAdd/ReadVariableOp+model_138/dense_3002/BiasAdd/ReadVariableOp2X
*model_138/dense_3002/MatMul/ReadVariableOp*model_138/dense_3002/MatMul/ReadVariableOp2Z
+model_138/dense_3003/BiasAdd/ReadVariableOp+model_138/dense_3003/BiasAdd/ReadVariableOp2X
*model_138/dense_3003/MatMul/ReadVariableOp*model_138/dense_3003/MatMul/ReadVariableOp2Z
+model_138/dense_3004/BiasAdd/ReadVariableOp+model_138/dense_3004/BiasAdd/ReadVariableOp2X
*model_138/dense_3004/MatMul/ReadVariableOp*model_138/dense_3004/MatMul/ReadVariableOp2Z
+model_138/dense_3005/BiasAdd/ReadVariableOp+model_138/dense_3005/BiasAdd/ReadVariableOp2X
*model_138/dense_3005/MatMul/ReadVariableOp*model_138/dense_3005/MatMul/ReadVariableOp2j
3model_138/layer_normalization_88/add/ReadVariableOp3model_138/layer_normalization_88/add/ReadVariableOp2n
5model_138/layer_normalization_88/mul_2/ReadVariableOp5model_138/layer_normalization_88/mul_2/ReadVariableOp2j
3model_138/layer_normalization_89/add/ReadVariableOp3model_138/layer_normalization_89/add/ReadVariableOp2n
5model_138/layer_normalization_89/mul_2/ReadVariableOp5model_138/layer_normalization_89/mul_2/ReadVariableOp2j
3model_138/layer_normalization_90/add/ReadVariableOp3model_138/layer_normalization_90/add/ReadVariableOp2n
5model_138/layer_normalization_90/mul_2/ReadVariableOp5model_138/layer_normalization_90/mul_2/ReadVariableOp2j
3model_138/layer_normalization_91/add/ReadVariableOp3model_138/layer_normalization_91/add/ReadVariableOp2n
5model_138/layer_normalization_91/mul_2/ReadVariableOp5model_138/layer_normalization_91/mul_2/ReadVariableOp2j
3model_138/layer_normalization_92/add/ReadVariableOp3model_138/layer_normalization_92/add/ReadVariableOp2n
5model_138/layer_normalization_92/mul_2/ReadVariableOp5model_138/layer_normalization_92/mul_2/ReadVariableOp2j
3model_138/layer_normalization_93/add/ReadVariableOp3model_138/layer_normalization_93/add/ReadVariableOp2n
5model_138/layer_normalization_93/mul_2/ReadVariableOp5model_138/layer_normalization_93/mul_2/ReadVariableOp2j
3model_138/layer_normalization_94/add/ReadVariableOp3model_138/layer_normalization_94/add/ReadVariableOp2n
5model_138/layer_normalization_94/mul_2/ReadVariableOp5model_138/layer_normalization_94/mul_2/ReadVariableOp:S O
(
_output_shapes
:����������
#
_user_specified_name	input_144
�	
�
H__inference_dense_3003_layer_call_and_return_conditional_losses_10178009

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:MM*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:M*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
��
�7
$__inference__traced_restore_10180527
file_prefix&
"assignvariableop_dense_2998_kernel&
"assignvariableop_1_dense_2998_bias3
/assignvariableop_2_layer_normalization_88_gamma2
.assignvariableop_3_layer_normalization_88_beta(
$assignvariableop_4_dense_2999_kernel&
"assignvariableop_5_dense_2999_bias3
/assignvariableop_6_layer_normalization_89_gamma2
.assignvariableop_7_layer_normalization_89_beta(
$assignvariableop_8_dense_3000_kernel&
"assignvariableop_9_dense_3000_bias4
0assignvariableop_10_layer_normalization_90_gamma3
/assignvariableop_11_layer_normalization_90_beta)
%assignvariableop_12_dense_3001_kernel'
#assignvariableop_13_dense_3001_bias4
0assignvariableop_14_layer_normalization_91_gamma3
/assignvariableop_15_layer_normalization_91_beta)
%assignvariableop_16_dense_3002_kernel'
#assignvariableop_17_dense_3002_bias4
0assignvariableop_18_layer_normalization_92_gamma3
/assignvariableop_19_layer_normalization_92_beta)
%assignvariableop_20_dense_3003_kernel'
#assignvariableop_21_dense_3003_bias4
0assignvariableop_22_layer_normalization_93_gamma3
/assignvariableop_23_layer_normalization_93_beta)
%assignvariableop_24_dense_3004_kernel'
#assignvariableop_25_dense_3004_bias4
0assignvariableop_26_layer_normalization_94_gamma3
/assignvariableop_27_layer_normalization_94_beta)
%assignvariableop_28_dense_3005_kernel'
#assignvariableop_29_dense_3005_bias!
assignvariableop_30_adam_iter#
assignvariableop_31_adam_beta_1#
assignvariableop_32_adam_beta_2"
assignvariableop_33_adam_decay*
&assignvariableop_34_adam_learning_rate
assignvariableop_35_total
assignvariableop_36_count0
,assignvariableop_37_adam_dense_2998_kernel_m.
*assignvariableop_38_adam_dense_2998_bias_m;
7assignvariableop_39_adam_layer_normalization_88_gamma_m:
6assignvariableop_40_adam_layer_normalization_88_beta_m0
,assignvariableop_41_adam_dense_2999_kernel_m.
*assignvariableop_42_adam_dense_2999_bias_m;
7assignvariableop_43_adam_layer_normalization_89_gamma_m:
6assignvariableop_44_adam_layer_normalization_89_beta_m0
,assignvariableop_45_adam_dense_3000_kernel_m.
*assignvariableop_46_adam_dense_3000_bias_m;
7assignvariableop_47_adam_layer_normalization_90_gamma_m:
6assignvariableop_48_adam_layer_normalization_90_beta_m0
,assignvariableop_49_adam_dense_3001_kernel_m.
*assignvariableop_50_adam_dense_3001_bias_m;
7assignvariableop_51_adam_layer_normalization_91_gamma_m:
6assignvariableop_52_adam_layer_normalization_91_beta_m0
,assignvariableop_53_adam_dense_3002_kernel_m.
*assignvariableop_54_adam_dense_3002_bias_m;
7assignvariableop_55_adam_layer_normalization_92_gamma_m:
6assignvariableop_56_adam_layer_normalization_92_beta_m0
,assignvariableop_57_adam_dense_3003_kernel_m.
*assignvariableop_58_adam_dense_3003_bias_m;
7assignvariableop_59_adam_layer_normalization_93_gamma_m:
6assignvariableop_60_adam_layer_normalization_93_beta_m0
,assignvariableop_61_adam_dense_3004_kernel_m.
*assignvariableop_62_adam_dense_3004_bias_m;
7assignvariableop_63_adam_layer_normalization_94_gamma_m:
6assignvariableop_64_adam_layer_normalization_94_beta_m0
,assignvariableop_65_adam_dense_3005_kernel_m.
*assignvariableop_66_adam_dense_3005_bias_m0
,assignvariableop_67_adam_dense_2998_kernel_v.
*assignvariableop_68_adam_dense_2998_bias_v;
7assignvariableop_69_adam_layer_normalization_88_gamma_v:
6assignvariableop_70_adam_layer_normalization_88_beta_v0
,assignvariableop_71_adam_dense_2999_kernel_v.
*assignvariableop_72_adam_dense_2999_bias_v;
7assignvariableop_73_adam_layer_normalization_89_gamma_v:
6assignvariableop_74_adam_layer_normalization_89_beta_v0
,assignvariableop_75_adam_dense_3000_kernel_v.
*assignvariableop_76_adam_dense_3000_bias_v;
7assignvariableop_77_adam_layer_normalization_90_gamma_v:
6assignvariableop_78_adam_layer_normalization_90_beta_v0
,assignvariableop_79_adam_dense_3001_kernel_v.
*assignvariableop_80_adam_dense_3001_bias_v;
7assignvariableop_81_adam_layer_normalization_91_gamma_v:
6assignvariableop_82_adam_layer_normalization_91_beta_v0
,assignvariableop_83_adam_dense_3002_kernel_v.
*assignvariableop_84_adam_dense_3002_bias_v;
7assignvariableop_85_adam_layer_normalization_92_gamma_v:
6assignvariableop_86_adam_layer_normalization_92_beta_v0
,assignvariableop_87_adam_dense_3003_kernel_v.
*assignvariableop_88_adam_dense_3003_bias_v;
7assignvariableop_89_adam_layer_normalization_93_gamma_v:
6assignvariableop_90_adam_layer_normalization_93_beta_v0
,assignvariableop_91_adam_dense_3004_kernel_v.
*assignvariableop_92_adam_dense_3004_bias_v;
7assignvariableop_93_adam_layer_normalization_94_gamma_v:
6assignvariableop_94_adam_layer_normalization_94_beta_v0
,assignvariableop_95_adam_dense_3005_kernel_v.
*assignvariableop_96_adam_dense_3005_bias_v
identity_98��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_73�AssignVariableOp_74�AssignVariableOp_75�AssignVariableOp_76�AssignVariableOp_77�AssignVariableOp_78�AssignVariableOp_79�AssignVariableOp_8�AssignVariableOp_80�AssignVariableOp_81�AssignVariableOp_82�AssignVariableOp_83�AssignVariableOp_84�AssignVariableOp_85�AssignVariableOp_86�AssignVariableOp_87�AssignVariableOp_88�AssignVariableOp_89�AssignVariableOp_9�AssignVariableOp_90�AssignVariableOp_91�AssignVariableOp_92�AssignVariableOp_93�AssignVariableOp_94�AssignVariableOp_95�AssignVariableOp_96�7
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:b*
dtype0*�6
value�6B�6bB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:b*
dtype0*�
value�B�bB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*p
dtypesf
d2b	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp"assignvariableop_dense_2998_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_2998_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp/assignvariableop_2_layer_normalization_88_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp.assignvariableop_3_layer_normalization_88_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp$assignvariableop_4_dense_2999_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp"assignvariableop_5_dense_2999_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp/assignvariableop_6_layer_normalization_89_gammaIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp.assignvariableop_7_layer_normalization_89_betaIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp$assignvariableop_8_dense_3000_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp"assignvariableop_9_dense_3000_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp0assignvariableop_10_layer_normalization_90_gammaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp/assignvariableop_11_layer_normalization_90_betaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp%assignvariableop_12_dense_3001_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp#assignvariableop_13_dense_3001_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp0assignvariableop_14_layer_normalization_91_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp/assignvariableop_15_layer_normalization_91_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOp%assignvariableop_16_dense_3002_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp#assignvariableop_17_dense_3002_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp0assignvariableop_18_layer_normalization_92_gammaIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp/assignvariableop_19_layer_normalization_92_betaIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOp%assignvariableop_20_dense_3003_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOp#assignvariableop_21_dense_3003_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOp0assignvariableop_22_layer_normalization_93_gammaIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOp/assignvariableop_23_layer_normalization_93_betaIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp%assignvariableop_24_dense_3004_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOp#assignvariableop_25_dense_3004_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp0assignvariableop_26_layer_normalization_94_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOp/assignvariableop_27_layer_normalization_94_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp%assignvariableop_28_dense_3005_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOp#assignvariableop_29_dense_3005_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOpassignvariableop_30_adam_iterIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31�
AssignVariableOp_31AssignVariableOpassignvariableop_31_adam_beta_1Identity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32�
AssignVariableOp_32AssignVariableOpassignvariableop_32_adam_beta_2Identity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33�
AssignVariableOp_33AssignVariableOpassignvariableop_33_adam_decayIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34�
AssignVariableOp_34AssignVariableOp&assignvariableop_34_adam_learning_rateIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35�
AssignVariableOp_35AssignVariableOpassignvariableop_35_totalIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36�
AssignVariableOp_36AssignVariableOpassignvariableop_36_countIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37�
AssignVariableOp_37AssignVariableOp,assignvariableop_37_adam_dense_2998_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38�
AssignVariableOp_38AssignVariableOp*assignvariableop_38_adam_dense_2998_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39�
AssignVariableOp_39AssignVariableOp7assignvariableop_39_adam_layer_normalization_88_gamma_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40�
AssignVariableOp_40AssignVariableOp6assignvariableop_40_adam_layer_normalization_88_beta_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41�
AssignVariableOp_41AssignVariableOp,assignvariableop_41_adam_dense_2999_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42�
AssignVariableOp_42AssignVariableOp*assignvariableop_42_adam_dense_2999_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43�
AssignVariableOp_43AssignVariableOp7assignvariableop_43_adam_layer_normalization_89_gamma_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44�
AssignVariableOp_44AssignVariableOp6assignvariableop_44_adam_layer_normalization_89_beta_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45�
AssignVariableOp_45AssignVariableOp,assignvariableop_45_adam_dense_3000_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46�
AssignVariableOp_46AssignVariableOp*assignvariableop_46_adam_dense_3000_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47�
AssignVariableOp_47AssignVariableOp7assignvariableop_47_adam_layer_normalization_90_gamma_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48�
AssignVariableOp_48AssignVariableOp6assignvariableop_48_adam_layer_normalization_90_beta_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49�
AssignVariableOp_49AssignVariableOp,assignvariableop_49_adam_dense_3001_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50�
AssignVariableOp_50AssignVariableOp*assignvariableop_50_adam_dense_3001_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51�
AssignVariableOp_51AssignVariableOp7assignvariableop_51_adam_layer_normalization_91_gamma_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52�
AssignVariableOp_52AssignVariableOp6assignvariableop_52_adam_layer_normalization_91_beta_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53�
AssignVariableOp_53AssignVariableOp,assignvariableop_53_adam_dense_3002_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54�
AssignVariableOp_54AssignVariableOp*assignvariableop_54_adam_dense_3002_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55�
AssignVariableOp_55AssignVariableOp7assignvariableop_55_adam_layer_normalization_92_gamma_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56�
AssignVariableOp_56AssignVariableOp6assignvariableop_56_adam_layer_normalization_92_beta_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57�
AssignVariableOp_57AssignVariableOp,assignvariableop_57_adam_dense_3003_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58�
AssignVariableOp_58AssignVariableOp*assignvariableop_58_adam_dense_3003_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59�
AssignVariableOp_59AssignVariableOp7assignvariableop_59_adam_layer_normalization_93_gamma_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60�
AssignVariableOp_60AssignVariableOp6assignvariableop_60_adam_layer_normalization_93_beta_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61�
AssignVariableOp_61AssignVariableOp,assignvariableop_61_adam_dense_3004_kernel_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62�
AssignVariableOp_62AssignVariableOp*assignvariableop_62_adam_dense_3004_bias_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63�
AssignVariableOp_63AssignVariableOp7assignvariableop_63_adam_layer_normalization_94_gamma_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64�
AssignVariableOp_64AssignVariableOp6assignvariableop_64_adam_layer_normalization_94_beta_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65�
AssignVariableOp_65AssignVariableOp,assignvariableop_65_adam_dense_3005_kernel_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66�
AssignVariableOp_66AssignVariableOp*assignvariableop_66_adam_dense_3005_bias_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67�
AssignVariableOp_67AssignVariableOp,assignvariableop_67_adam_dense_2998_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68�
AssignVariableOp_68AssignVariableOp*assignvariableop_68_adam_dense_2998_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69�
AssignVariableOp_69AssignVariableOp7assignvariableop_69_adam_layer_normalization_88_gamma_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70�
AssignVariableOp_70AssignVariableOp6assignvariableop_70_adam_layer_normalization_88_beta_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71�
AssignVariableOp_71AssignVariableOp,assignvariableop_71_adam_dense_2999_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72�
AssignVariableOp_72AssignVariableOp*assignvariableop_72_adam_dense_2999_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73�
AssignVariableOp_73AssignVariableOp7assignvariableop_73_adam_layer_normalization_89_gamma_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74�
AssignVariableOp_74AssignVariableOp6assignvariableop_74_adam_layer_normalization_89_beta_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75�
AssignVariableOp_75AssignVariableOp,assignvariableop_75_adam_dense_3000_kernel_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76�
AssignVariableOp_76AssignVariableOp*assignvariableop_76_adam_dense_3000_bias_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77�
AssignVariableOp_77AssignVariableOp7assignvariableop_77_adam_layer_normalization_90_gamma_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78�
AssignVariableOp_78AssignVariableOp6assignvariableop_78_adam_layer_normalization_90_beta_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79�
AssignVariableOp_79AssignVariableOp,assignvariableop_79_adam_dense_3001_kernel_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80�
AssignVariableOp_80AssignVariableOp*assignvariableop_80_adam_dense_3001_bias_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81�
AssignVariableOp_81AssignVariableOp7assignvariableop_81_adam_layer_normalization_91_gamma_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82�
AssignVariableOp_82AssignVariableOp6assignvariableop_82_adam_layer_normalization_91_beta_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83�
AssignVariableOp_83AssignVariableOp,assignvariableop_83_adam_dense_3002_kernel_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_83n
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:2
Identity_84�
AssignVariableOp_84AssignVariableOp*assignvariableop_84_adam_dense_3002_bias_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_84n
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:2
Identity_85�
AssignVariableOp_85AssignVariableOp7assignvariableop_85_adam_layer_normalization_92_gamma_vIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_85n
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:2
Identity_86�
AssignVariableOp_86AssignVariableOp6assignvariableop_86_adam_layer_normalization_92_beta_vIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_86n
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:2
Identity_87�
AssignVariableOp_87AssignVariableOp,assignvariableop_87_adam_dense_3003_kernel_vIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_87n
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:2
Identity_88�
AssignVariableOp_88AssignVariableOp*assignvariableop_88_adam_dense_3003_bias_vIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_88n
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:2
Identity_89�
AssignVariableOp_89AssignVariableOp7assignvariableop_89_adam_layer_normalization_93_gamma_vIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_89n
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:2
Identity_90�
AssignVariableOp_90AssignVariableOp6assignvariableop_90_adam_layer_normalization_93_beta_vIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_90n
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:2
Identity_91�
AssignVariableOp_91AssignVariableOp,assignvariableop_91_adam_dense_3004_kernel_vIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_91n
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:2
Identity_92�
AssignVariableOp_92AssignVariableOp*assignvariableop_92_adam_dense_3004_bias_vIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_92n
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:2
Identity_93�
AssignVariableOp_93AssignVariableOp7assignvariableop_93_adam_layer_normalization_94_gamma_vIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_93n
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:2
Identity_94�
AssignVariableOp_94AssignVariableOp6assignvariableop_94_adam_layer_normalization_94_beta_vIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_94n
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:2
Identity_95�
AssignVariableOp_95AssignVariableOp,assignvariableop_95_adam_dense_3005_kernel_vIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_95n
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:2
Identity_96�
AssignVariableOp_96AssignVariableOp*assignvariableop_96_adam_dense_3005_bias_vIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_969
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_97Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_97�
Identity_98IdentityIdentity_97:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96*
T0*
_output_shapes
: 2
Identity_98"#
identity_98Identity_98:output:0*�
_input_shapes�
�: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_96:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
-__inference_dense_3004_layer_call_fn_10179842

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_3004_layer_call_and_return_conditional_losses_101780932
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�
�
9__inference_layer_normalization_89_layer_call_fn_10179543

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_normalization_89_layer_call_and_return_conditional_losses_101777312
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�"
�
T__inference_layer_normalization_88_layer_call_and_return_conditional_losses_10177647

inputs!
mul_2_readvariableop_resource
add_readvariableop_resource
identity��add/ReadVariableOp�mul_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_sliceP
mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
mul/xZ
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: 2
mulx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1T
mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/xb
mul_1Mulmul_1/x:output:0strided_slice_1:output:0*
T0*
_output_shapes
: 2
mul_1d
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/0d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3�
Reshape/shapePackReshape/shape/0:output:0mul:z:0	mul_1:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape�
ReshapeReshapeinputsReshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2	
ReshapeS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ConstU
	Fill/dimsPackmul:z:0*
N*
T0*
_output_shapes
:2
	Fill/dimsf
FillFillFill/dims:output:0Const:output:0*
T0*#
_output_shapes
:���������2
FillW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2	
Const_1Y
Fill_1/dimsPackmul:z:0*
N*
T0*
_output_shapes
:2
Fill_1/dimsn
Fill_1FillFill_1/dims:output:0Const_1:output:0*
T0*#
_output_shapes
:���������2
Fill_1U
Const_2Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_2U
Const_3Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_3�
FusedBatchNormV3FusedBatchNormV3Reshape:output:0Fill:output:0Fill_1:output:0Const_2:output:0Const_3:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2
FusedBatchNormV3y
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*'
_output_shapes
:���������M2
	Reshape_1�
mul_2/ReadVariableOpReadVariableOpmul_2_readvariableop_resource*
_output_shapes
:M*
dtype02
mul_2/ReadVariableOpy
mul_2MulReshape_1:output:0mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
mul_2�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:M*
dtype02
add/ReadVariableOpl
addAddV2	mul_2:z:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
add�
IdentityIdentityadd:z:0^add/ReadVariableOp^mul_2/ReadVariableOp*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�	
�
H__inference_dense_2999_layer_call_and_return_conditional_losses_10177673

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:MM*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:M*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�"
�
T__inference_layer_normalization_94_layer_call_and_return_conditional_losses_10179884

inputs!
mul_2_readvariableop_resource
add_readvariableop_resource
identity��add/ReadVariableOp�mul_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_sliceP
mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
mul/xZ
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: 2
mulx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1T
mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/xb
mul_1Mulmul_1/x:output:0strided_slice_1:output:0*
T0*
_output_shapes
: 2
mul_1d
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/0d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3�
Reshape/shapePackReshape/shape/0:output:0mul:z:0	mul_1:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape�
ReshapeReshapeinputsReshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2	
ReshapeS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ConstU
	Fill/dimsPackmul:z:0*
N*
T0*
_output_shapes
:2
	Fill/dimsf
FillFillFill/dims:output:0Const:output:0*
T0*#
_output_shapes
:���������2
FillW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2	
Const_1Y
Fill_1/dimsPackmul:z:0*
N*
T0*
_output_shapes
:2
Fill_1/dimsn
Fill_1FillFill_1/dims:output:0Const_1:output:0*
T0*#
_output_shapes
:���������2
Fill_1U
Const_2Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_2U
Const_3Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_3�
FusedBatchNormV3FusedBatchNormV3Reshape:output:0Fill:output:0Fill_1:output:0Const_2:output:0Const_3:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2
FusedBatchNormV3y
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*'
_output_shapes
:���������M2
	Reshape_1�
mul_2/ReadVariableOpReadVariableOpmul_2_readvariableop_resource*
_output_shapes
:M*
dtype02
mul_2/ReadVariableOpy
mul_2MulReshape_1:output:0mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
mul_2�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:M*
dtype02
add/ReadVariableOpl
addAddV2	mul_2:z:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
add�
IdentityIdentityadd:z:0^add/ReadVariableOp^mul_2/ReadVariableOp*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�"
�
T__inference_layer_normalization_91_layer_call_and_return_conditional_losses_10177899

inputs!
mul_2_readvariableop_resource
add_readvariableop_resource
identity��add/ReadVariableOp�mul_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_sliceP
mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
mul/xZ
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: 2
mulx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1T
mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/xb
mul_1Mulmul_1/x:output:0strided_slice_1:output:0*
T0*
_output_shapes
: 2
mul_1d
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/0d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3�
Reshape/shapePackReshape/shape/0:output:0mul:z:0	mul_1:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape�
ReshapeReshapeinputsReshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2	
ReshapeS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ConstU
	Fill/dimsPackmul:z:0*
N*
T0*
_output_shapes
:2
	Fill/dimsf
FillFillFill/dims:output:0Const:output:0*
T0*#
_output_shapes
:���������2
FillW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2	
Const_1Y
Fill_1/dimsPackmul:z:0*
N*
T0*
_output_shapes
:2
Fill_1/dimsn
Fill_1FillFill_1/dims:output:0Const_1:output:0*
T0*#
_output_shapes
:���������2
Fill_1U
Const_2Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_2U
Const_3Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_3�
FusedBatchNormV3FusedBatchNormV3Reshape:output:0Fill:output:0Fill_1:output:0Const_2:output:0Const_3:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2
FusedBatchNormV3y
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*'
_output_shapes
:���������M2
	Reshape_1�
mul_2/ReadVariableOpReadVariableOpmul_2_readvariableop_resource*
_output_shapes
:M*
dtype02
mul_2/ReadVariableOpy
mul_2MulReshape_1:output:0mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
mul_2�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:M*
dtype02
add/ReadVariableOpl
addAddV2	mul_2:z:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
add�
IdentityIdentityadd:z:0^add/ReadVariableOp^mul_2/ReadVariableOp*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�	
�
H__inference_dense_3005_layer_call_and_return_conditional_losses_10179903

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	M�@*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������@2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������@2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�"
�
T__inference_layer_normalization_90_layer_call_and_return_conditional_losses_10177815

inputs!
mul_2_readvariableop_resource
add_readvariableop_resource
identity��add/ReadVariableOp�mul_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_sliceP
mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
mul/xZ
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: 2
mulx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1T
mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/xb
mul_1Mulmul_1/x:output:0strided_slice_1:output:0*
T0*
_output_shapes
: 2
mul_1d
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/0d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3�
Reshape/shapePackReshape/shape/0:output:0mul:z:0	mul_1:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape�
ReshapeReshapeinputsReshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2	
ReshapeS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ConstU
	Fill/dimsPackmul:z:0*
N*
T0*
_output_shapes
:2
	Fill/dimsf
FillFillFill/dims:output:0Const:output:0*
T0*#
_output_shapes
:���������2
FillW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2	
Const_1Y
Fill_1/dimsPackmul:z:0*
N*
T0*
_output_shapes
:2
Fill_1/dimsn
Fill_1FillFill_1/dims:output:0Const_1:output:0*
T0*#
_output_shapes
:���������2
Fill_1U
Const_2Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_2U
Const_3Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_3�
FusedBatchNormV3FusedBatchNormV3Reshape:output:0Fill:output:0Fill_1:output:0Const_2:output:0Const_3:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2
FusedBatchNormV3y
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*'
_output_shapes
:���������M2
	Reshape_1�
mul_2/ReadVariableOpReadVariableOpmul_2_readvariableop_resource*
_output_shapes
:M*
dtype02
mul_2/ReadVariableOpy
mul_2MulReshape_1:output:0mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
mul_2�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:M*
dtype02
add/ReadVariableOpl
addAddV2	mul_2:z:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
add�
IdentityIdentityadd:z:0^add/ReadVariableOp^mul_2/ReadVariableOp*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�
�
-__inference_dense_3001_layer_call_fn_10179632

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_3001_layer_call_and_return_conditional_losses_101778412
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�
�
-__inference_dense_2998_layer_call_fn_10179422

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_2998_layer_call_and_return_conditional_losses_101775892
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�"
�
T__inference_layer_normalization_89_layer_call_and_return_conditional_losses_10179534

inputs!
mul_2_readvariableop_resource
add_readvariableop_resource
identity��add/ReadVariableOp�mul_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_sliceP
mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
mul/xZ
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: 2
mulx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1T
mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/xb
mul_1Mulmul_1/x:output:0strided_slice_1:output:0*
T0*
_output_shapes
: 2
mul_1d
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/0d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3�
Reshape/shapePackReshape/shape/0:output:0mul:z:0	mul_1:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape�
ReshapeReshapeinputsReshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2	
ReshapeS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ConstU
	Fill/dimsPackmul:z:0*
N*
T0*
_output_shapes
:2
	Fill/dimsf
FillFillFill/dims:output:0Const:output:0*
T0*#
_output_shapes
:���������2
FillW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2	
Const_1Y
Fill_1/dimsPackmul:z:0*
N*
T0*
_output_shapes
:2
Fill_1/dimsn
Fill_1FillFill_1/dims:output:0Const_1:output:0*
T0*#
_output_shapes
:���������2
Fill_1U
Const_2Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_2U
Const_3Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_3�
FusedBatchNormV3FusedBatchNormV3Reshape:output:0Fill:output:0Fill_1:output:0Const_2:output:0Const_3:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2
FusedBatchNormV3y
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*'
_output_shapes
:���������M2
	Reshape_1�
mul_2/ReadVariableOpReadVariableOpmul_2_readvariableop_resource*
_output_shapes
:M*
dtype02
mul_2/ReadVariableOpy
mul_2MulReshape_1:output:0mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
mul_2�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:M*
dtype02
add/ReadVariableOpl
addAddV2	mul_2:z:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
add�
IdentityIdentityadd:z:0^add/ReadVariableOp^mul_2/ReadVariableOp*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�	
�
H__inference_dense_3004_layer_call_and_return_conditional_losses_10178093

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:MM*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:M*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�
�
&__inference_signature_wrapper_10178637
	input_144
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	input_144unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������@*@
_read_only_resource_inputs"
 	
*0
config_proto 

CPU

GPU2*0J 8� *,
f'R%
#__inference__wrapped_model_101775752
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:����������::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
(
_output_shapes
:����������
#
_user_specified_name	input_144
�	
�
H__inference_dense_2999_layer_call_and_return_conditional_losses_10179483

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:MM*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:M*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�	
�
H__inference_dense_3000_layer_call_and_return_conditional_losses_10179553

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:MM*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:M*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�
�
9__inference_layer_normalization_93_layer_call_fn_10179823

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_normalization_93_layer_call_and_return_conditional_losses_101780672
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�"
�
T__inference_layer_normalization_94_layer_call_and_return_conditional_losses_10178151

inputs!
mul_2_readvariableop_resource
add_readvariableop_resource
identity��add/ReadVariableOp�mul_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_sliceP
mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
mul/xZ
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: 2
mulx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1T
mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/xb
mul_1Mulmul_1/x:output:0strided_slice_1:output:0*
T0*
_output_shapes
: 2
mul_1d
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/0d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3�
Reshape/shapePackReshape/shape/0:output:0mul:z:0	mul_1:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape�
ReshapeReshapeinputsReshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2	
ReshapeS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ConstU
	Fill/dimsPackmul:z:0*
N*
T0*
_output_shapes
:2
	Fill/dimsf
FillFillFill/dims:output:0Const:output:0*
T0*#
_output_shapes
:���������2
FillW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2	
Const_1Y
Fill_1/dimsPackmul:z:0*
N*
T0*
_output_shapes
:2
Fill_1/dimsn
Fill_1FillFill_1/dims:output:0Const_1:output:0*
T0*#
_output_shapes
:���������2
Fill_1U
Const_2Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_2U
Const_3Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_3�
FusedBatchNormV3FusedBatchNormV3Reshape:output:0Fill:output:0Fill_1:output:0Const_2:output:0Const_3:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2
FusedBatchNormV3y
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*'
_output_shapes
:���������M2
	Reshape_1�
mul_2/ReadVariableOpReadVariableOpmul_2_readvariableop_resource*
_output_shapes
:M*
dtype02
mul_2/ReadVariableOpy
mul_2MulReshape_1:output:0mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
mul_2�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:M*
dtype02
add/ReadVariableOpl
addAddV2	mul_2:z:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
add�
IdentityIdentityadd:z:0^add/ReadVariableOp^mul_2/ReadVariableOp*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�	
�
H__inference_dense_3004_layer_call_and_return_conditional_losses_10179833

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:MM*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:M*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�
�
,__inference_model_138_layer_call_fn_10179403

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
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������@*@
_read_only_resource_inputs"
 	
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_model_138_layer_call_and_return_conditional_losses_101784992
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:����������::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�Y
�
G__inference_model_138_layer_call_and_return_conditional_losses_10178355

inputs
dense_2998_10178279
dense_2998_10178281#
layer_normalization_88_10178284#
layer_normalization_88_10178286
dense_2999_10178289
dense_2999_10178291#
layer_normalization_89_10178294#
layer_normalization_89_10178296
dense_3000_10178299
dense_3000_10178301#
layer_normalization_90_10178304#
layer_normalization_90_10178306
dense_3001_10178309
dense_3001_10178311#
layer_normalization_91_10178314#
layer_normalization_91_10178316
dense_3002_10178319
dense_3002_10178321#
layer_normalization_92_10178324#
layer_normalization_92_10178326
dense_3003_10178329
dense_3003_10178331#
layer_normalization_93_10178334#
layer_normalization_93_10178336
dense_3004_10178339
dense_3004_10178341#
layer_normalization_94_10178344#
layer_normalization_94_10178346
dense_3005_10178349
dense_3005_10178351
identity��"dense_2998/StatefulPartitionedCall�"dense_2999/StatefulPartitionedCall�"dense_3000/StatefulPartitionedCall�"dense_3001/StatefulPartitionedCall�"dense_3002/StatefulPartitionedCall�"dense_3003/StatefulPartitionedCall�"dense_3004/StatefulPartitionedCall�"dense_3005/StatefulPartitionedCall�.layer_normalization_88/StatefulPartitionedCall�.layer_normalization_89/StatefulPartitionedCall�.layer_normalization_90/StatefulPartitionedCall�.layer_normalization_91/StatefulPartitionedCall�.layer_normalization_92/StatefulPartitionedCall�.layer_normalization_93/StatefulPartitionedCall�.layer_normalization_94/StatefulPartitionedCall�
"dense_2998/StatefulPartitionedCallStatefulPartitionedCallinputsdense_2998_10178279dense_2998_10178281*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_2998_layer_call_and_return_conditional_losses_101775892$
"dense_2998/StatefulPartitionedCall�
.layer_normalization_88/StatefulPartitionedCallStatefulPartitionedCall+dense_2998/StatefulPartitionedCall:output:0layer_normalization_88_10178284layer_normalization_88_10178286*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_normalization_88_layer_call_and_return_conditional_losses_1017764720
.layer_normalization_88/StatefulPartitionedCall�
"dense_2999/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_88/StatefulPartitionedCall:output:0dense_2999_10178289dense_2999_10178291*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_2999_layer_call_and_return_conditional_losses_101776732$
"dense_2999/StatefulPartitionedCall�
.layer_normalization_89/StatefulPartitionedCallStatefulPartitionedCall+dense_2999/StatefulPartitionedCall:output:0layer_normalization_89_10178294layer_normalization_89_10178296*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_normalization_89_layer_call_and_return_conditional_losses_1017773120
.layer_normalization_89/StatefulPartitionedCall�
"dense_3000/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_89/StatefulPartitionedCall:output:0dense_3000_10178299dense_3000_10178301*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_3000_layer_call_and_return_conditional_losses_101777572$
"dense_3000/StatefulPartitionedCall�
.layer_normalization_90/StatefulPartitionedCallStatefulPartitionedCall+dense_3000/StatefulPartitionedCall:output:0layer_normalization_90_10178304layer_normalization_90_10178306*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_normalization_90_layer_call_and_return_conditional_losses_1017781520
.layer_normalization_90/StatefulPartitionedCall�
"dense_3001/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_90/StatefulPartitionedCall:output:0dense_3001_10178309dense_3001_10178311*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_3001_layer_call_and_return_conditional_losses_101778412$
"dense_3001/StatefulPartitionedCall�
.layer_normalization_91/StatefulPartitionedCallStatefulPartitionedCall+dense_3001/StatefulPartitionedCall:output:0layer_normalization_91_10178314layer_normalization_91_10178316*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_normalization_91_layer_call_and_return_conditional_losses_1017789920
.layer_normalization_91/StatefulPartitionedCall�
"dense_3002/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_91/StatefulPartitionedCall:output:0dense_3002_10178319dense_3002_10178321*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_3002_layer_call_and_return_conditional_losses_101779252$
"dense_3002/StatefulPartitionedCall�
.layer_normalization_92/StatefulPartitionedCallStatefulPartitionedCall+dense_3002/StatefulPartitionedCall:output:0layer_normalization_92_10178324layer_normalization_92_10178326*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_normalization_92_layer_call_and_return_conditional_losses_1017798320
.layer_normalization_92/StatefulPartitionedCall�
"dense_3003/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_92/StatefulPartitionedCall:output:0dense_3003_10178329dense_3003_10178331*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_3003_layer_call_and_return_conditional_losses_101780092$
"dense_3003/StatefulPartitionedCall�
.layer_normalization_93/StatefulPartitionedCallStatefulPartitionedCall+dense_3003/StatefulPartitionedCall:output:0layer_normalization_93_10178334layer_normalization_93_10178336*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_normalization_93_layer_call_and_return_conditional_losses_1017806720
.layer_normalization_93/StatefulPartitionedCall�
"dense_3004/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_93/StatefulPartitionedCall:output:0dense_3004_10178339dense_3004_10178341*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_3004_layer_call_and_return_conditional_losses_101780932$
"dense_3004/StatefulPartitionedCall�
.layer_normalization_94/StatefulPartitionedCallStatefulPartitionedCall+dense_3004/StatefulPartitionedCall:output:0layer_normalization_94_10178344layer_normalization_94_10178346*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_normalization_94_layer_call_and_return_conditional_losses_1017815120
.layer_normalization_94/StatefulPartitionedCall�
"dense_3005/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_94/StatefulPartitionedCall:output:0dense_3005_10178349dense_3005_10178351*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_3005_layer_call_and_return_conditional_losses_101781772$
"dense_3005/StatefulPartitionedCall�
IdentityIdentity+dense_3005/StatefulPartitionedCall:output:0#^dense_2998/StatefulPartitionedCall#^dense_2999/StatefulPartitionedCall#^dense_3000/StatefulPartitionedCall#^dense_3001/StatefulPartitionedCall#^dense_3002/StatefulPartitionedCall#^dense_3003/StatefulPartitionedCall#^dense_3004/StatefulPartitionedCall#^dense_3005/StatefulPartitionedCall/^layer_normalization_88/StatefulPartitionedCall/^layer_normalization_89/StatefulPartitionedCall/^layer_normalization_90/StatefulPartitionedCall/^layer_normalization_91/StatefulPartitionedCall/^layer_normalization_92/StatefulPartitionedCall/^layer_normalization_93/StatefulPartitionedCall/^layer_normalization_94/StatefulPartitionedCall*
T0*(
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:����������::::::::::::::::::::::::::::::2H
"dense_2998/StatefulPartitionedCall"dense_2998/StatefulPartitionedCall2H
"dense_2999/StatefulPartitionedCall"dense_2999/StatefulPartitionedCall2H
"dense_3000/StatefulPartitionedCall"dense_3000/StatefulPartitionedCall2H
"dense_3001/StatefulPartitionedCall"dense_3001/StatefulPartitionedCall2H
"dense_3002/StatefulPartitionedCall"dense_3002/StatefulPartitionedCall2H
"dense_3003/StatefulPartitionedCall"dense_3003/StatefulPartitionedCall2H
"dense_3004/StatefulPartitionedCall"dense_3004/StatefulPartitionedCall2H
"dense_3005/StatefulPartitionedCall"dense_3005/StatefulPartitionedCall2`
.layer_normalization_88/StatefulPartitionedCall.layer_normalization_88/StatefulPartitionedCall2`
.layer_normalization_89/StatefulPartitionedCall.layer_normalization_89/StatefulPartitionedCall2`
.layer_normalization_90/StatefulPartitionedCall.layer_normalization_90/StatefulPartitionedCall2`
.layer_normalization_91/StatefulPartitionedCall.layer_normalization_91/StatefulPartitionedCall2`
.layer_normalization_92/StatefulPartitionedCall.layer_normalization_92/StatefulPartitionedCall2`
.layer_normalization_93/StatefulPartitionedCall.layer_normalization_93/StatefulPartitionedCall2`
.layer_normalization_94/StatefulPartitionedCall.layer_normalization_94/StatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
ܿ
�,
!__inference__traced_save_10180226
file_prefix0
,savev2_dense_2998_kernel_read_readvariableop.
*savev2_dense_2998_bias_read_readvariableop;
7savev2_layer_normalization_88_gamma_read_readvariableop:
6savev2_layer_normalization_88_beta_read_readvariableop0
,savev2_dense_2999_kernel_read_readvariableop.
*savev2_dense_2999_bias_read_readvariableop;
7savev2_layer_normalization_89_gamma_read_readvariableop:
6savev2_layer_normalization_89_beta_read_readvariableop0
,savev2_dense_3000_kernel_read_readvariableop.
*savev2_dense_3000_bias_read_readvariableop;
7savev2_layer_normalization_90_gamma_read_readvariableop:
6savev2_layer_normalization_90_beta_read_readvariableop0
,savev2_dense_3001_kernel_read_readvariableop.
*savev2_dense_3001_bias_read_readvariableop;
7savev2_layer_normalization_91_gamma_read_readvariableop:
6savev2_layer_normalization_91_beta_read_readvariableop0
,savev2_dense_3002_kernel_read_readvariableop.
*savev2_dense_3002_bias_read_readvariableop;
7savev2_layer_normalization_92_gamma_read_readvariableop:
6savev2_layer_normalization_92_beta_read_readvariableop0
,savev2_dense_3003_kernel_read_readvariableop.
*savev2_dense_3003_bias_read_readvariableop;
7savev2_layer_normalization_93_gamma_read_readvariableop:
6savev2_layer_normalization_93_beta_read_readvariableop0
,savev2_dense_3004_kernel_read_readvariableop.
*savev2_dense_3004_bias_read_readvariableop;
7savev2_layer_normalization_94_gamma_read_readvariableop:
6savev2_layer_normalization_94_beta_read_readvariableop0
,savev2_dense_3005_kernel_read_readvariableop.
*savev2_dense_3005_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop7
3savev2_adam_dense_2998_kernel_m_read_readvariableop5
1savev2_adam_dense_2998_bias_m_read_readvariableopB
>savev2_adam_layer_normalization_88_gamma_m_read_readvariableopA
=savev2_adam_layer_normalization_88_beta_m_read_readvariableop7
3savev2_adam_dense_2999_kernel_m_read_readvariableop5
1savev2_adam_dense_2999_bias_m_read_readvariableopB
>savev2_adam_layer_normalization_89_gamma_m_read_readvariableopA
=savev2_adam_layer_normalization_89_beta_m_read_readvariableop7
3savev2_adam_dense_3000_kernel_m_read_readvariableop5
1savev2_adam_dense_3000_bias_m_read_readvariableopB
>savev2_adam_layer_normalization_90_gamma_m_read_readvariableopA
=savev2_adam_layer_normalization_90_beta_m_read_readvariableop7
3savev2_adam_dense_3001_kernel_m_read_readvariableop5
1savev2_adam_dense_3001_bias_m_read_readvariableopB
>savev2_adam_layer_normalization_91_gamma_m_read_readvariableopA
=savev2_adam_layer_normalization_91_beta_m_read_readvariableop7
3savev2_adam_dense_3002_kernel_m_read_readvariableop5
1savev2_adam_dense_3002_bias_m_read_readvariableopB
>savev2_adam_layer_normalization_92_gamma_m_read_readvariableopA
=savev2_adam_layer_normalization_92_beta_m_read_readvariableop7
3savev2_adam_dense_3003_kernel_m_read_readvariableop5
1savev2_adam_dense_3003_bias_m_read_readvariableopB
>savev2_adam_layer_normalization_93_gamma_m_read_readvariableopA
=savev2_adam_layer_normalization_93_beta_m_read_readvariableop7
3savev2_adam_dense_3004_kernel_m_read_readvariableop5
1savev2_adam_dense_3004_bias_m_read_readvariableopB
>savev2_adam_layer_normalization_94_gamma_m_read_readvariableopA
=savev2_adam_layer_normalization_94_beta_m_read_readvariableop7
3savev2_adam_dense_3005_kernel_m_read_readvariableop5
1savev2_adam_dense_3005_bias_m_read_readvariableop7
3savev2_adam_dense_2998_kernel_v_read_readvariableop5
1savev2_adam_dense_2998_bias_v_read_readvariableopB
>savev2_adam_layer_normalization_88_gamma_v_read_readvariableopA
=savev2_adam_layer_normalization_88_beta_v_read_readvariableop7
3savev2_adam_dense_2999_kernel_v_read_readvariableop5
1savev2_adam_dense_2999_bias_v_read_readvariableopB
>savev2_adam_layer_normalization_89_gamma_v_read_readvariableopA
=savev2_adam_layer_normalization_89_beta_v_read_readvariableop7
3savev2_adam_dense_3000_kernel_v_read_readvariableop5
1savev2_adam_dense_3000_bias_v_read_readvariableopB
>savev2_adam_layer_normalization_90_gamma_v_read_readvariableopA
=savev2_adam_layer_normalization_90_beta_v_read_readvariableop7
3savev2_adam_dense_3001_kernel_v_read_readvariableop5
1savev2_adam_dense_3001_bias_v_read_readvariableopB
>savev2_adam_layer_normalization_91_gamma_v_read_readvariableopA
=savev2_adam_layer_normalization_91_beta_v_read_readvariableop7
3savev2_adam_dense_3002_kernel_v_read_readvariableop5
1savev2_adam_dense_3002_bias_v_read_readvariableopB
>savev2_adam_layer_normalization_92_gamma_v_read_readvariableopA
=savev2_adam_layer_normalization_92_beta_v_read_readvariableop7
3savev2_adam_dense_3003_kernel_v_read_readvariableop5
1savev2_adam_dense_3003_bias_v_read_readvariableopB
>savev2_adam_layer_normalization_93_gamma_v_read_readvariableopA
=savev2_adam_layer_normalization_93_beta_v_read_readvariableop7
3savev2_adam_dense_3004_kernel_v_read_readvariableop5
1savev2_adam_dense_3004_bias_v_read_readvariableopB
>savev2_adam_layer_normalization_94_gamma_v_read_readvariableopA
=savev2_adam_layer_normalization_94_beta_v_read_readvariableop7
3savev2_adam_dense_3005_kernel_v_read_readvariableop5
1savev2_adam_dense_3005_bias_v_read_readvariableop
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
ShardedFilename�7
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:b*
dtype0*�6
value�6B�6bB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:b*
dtype0*�
value�B�bB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�+
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_dense_2998_kernel_read_readvariableop*savev2_dense_2998_bias_read_readvariableop7savev2_layer_normalization_88_gamma_read_readvariableop6savev2_layer_normalization_88_beta_read_readvariableop,savev2_dense_2999_kernel_read_readvariableop*savev2_dense_2999_bias_read_readvariableop7savev2_layer_normalization_89_gamma_read_readvariableop6savev2_layer_normalization_89_beta_read_readvariableop,savev2_dense_3000_kernel_read_readvariableop*savev2_dense_3000_bias_read_readvariableop7savev2_layer_normalization_90_gamma_read_readvariableop6savev2_layer_normalization_90_beta_read_readvariableop,savev2_dense_3001_kernel_read_readvariableop*savev2_dense_3001_bias_read_readvariableop7savev2_layer_normalization_91_gamma_read_readvariableop6savev2_layer_normalization_91_beta_read_readvariableop,savev2_dense_3002_kernel_read_readvariableop*savev2_dense_3002_bias_read_readvariableop7savev2_layer_normalization_92_gamma_read_readvariableop6savev2_layer_normalization_92_beta_read_readvariableop,savev2_dense_3003_kernel_read_readvariableop*savev2_dense_3003_bias_read_readvariableop7savev2_layer_normalization_93_gamma_read_readvariableop6savev2_layer_normalization_93_beta_read_readvariableop,savev2_dense_3004_kernel_read_readvariableop*savev2_dense_3004_bias_read_readvariableop7savev2_layer_normalization_94_gamma_read_readvariableop6savev2_layer_normalization_94_beta_read_readvariableop,savev2_dense_3005_kernel_read_readvariableop*savev2_dense_3005_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_adam_dense_2998_kernel_m_read_readvariableop1savev2_adam_dense_2998_bias_m_read_readvariableop>savev2_adam_layer_normalization_88_gamma_m_read_readvariableop=savev2_adam_layer_normalization_88_beta_m_read_readvariableop3savev2_adam_dense_2999_kernel_m_read_readvariableop1savev2_adam_dense_2999_bias_m_read_readvariableop>savev2_adam_layer_normalization_89_gamma_m_read_readvariableop=savev2_adam_layer_normalization_89_beta_m_read_readvariableop3savev2_adam_dense_3000_kernel_m_read_readvariableop1savev2_adam_dense_3000_bias_m_read_readvariableop>savev2_adam_layer_normalization_90_gamma_m_read_readvariableop=savev2_adam_layer_normalization_90_beta_m_read_readvariableop3savev2_adam_dense_3001_kernel_m_read_readvariableop1savev2_adam_dense_3001_bias_m_read_readvariableop>savev2_adam_layer_normalization_91_gamma_m_read_readvariableop=savev2_adam_layer_normalization_91_beta_m_read_readvariableop3savev2_adam_dense_3002_kernel_m_read_readvariableop1savev2_adam_dense_3002_bias_m_read_readvariableop>savev2_adam_layer_normalization_92_gamma_m_read_readvariableop=savev2_adam_layer_normalization_92_beta_m_read_readvariableop3savev2_adam_dense_3003_kernel_m_read_readvariableop1savev2_adam_dense_3003_bias_m_read_readvariableop>savev2_adam_layer_normalization_93_gamma_m_read_readvariableop=savev2_adam_layer_normalization_93_beta_m_read_readvariableop3savev2_adam_dense_3004_kernel_m_read_readvariableop1savev2_adam_dense_3004_bias_m_read_readvariableop>savev2_adam_layer_normalization_94_gamma_m_read_readvariableop=savev2_adam_layer_normalization_94_beta_m_read_readvariableop3savev2_adam_dense_3005_kernel_m_read_readvariableop1savev2_adam_dense_3005_bias_m_read_readvariableop3savev2_adam_dense_2998_kernel_v_read_readvariableop1savev2_adam_dense_2998_bias_v_read_readvariableop>savev2_adam_layer_normalization_88_gamma_v_read_readvariableop=savev2_adam_layer_normalization_88_beta_v_read_readvariableop3savev2_adam_dense_2999_kernel_v_read_readvariableop1savev2_adam_dense_2999_bias_v_read_readvariableop>savev2_adam_layer_normalization_89_gamma_v_read_readvariableop=savev2_adam_layer_normalization_89_beta_v_read_readvariableop3savev2_adam_dense_3000_kernel_v_read_readvariableop1savev2_adam_dense_3000_bias_v_read_readvariableop>savev2_adam_layer_normalization_90_gamma_v_read_readvariableop=savev2_adam_layer_normalization_90_beta_v_read_readvariableop3savev2_adam_dense_3001_kernel_v_read_readvariableop1savev2_adam_dense_3001_bias_v_read_readvariableop>savev2_adam_layer_normalization_91_gamma_v_read_readvariableop=savev2_adam_layer_normalization_91_beta_v_read_readvariableop3savev2_adam_dense_3002_kernel_v_read_readvariableop1savev2_adam_dense_3002_bias_v_read_readvariableop>savev2_adam_layer_normalization_92_gamma_v_read_readvariableop=savev2_adam_layer_normalization_92_beta_v_read_readvariableop3savev2_adam_dense_3003_kernel_v_read_readvariableop1savev2_adam_dense_3003_bias_v_read_readvariableop>savev2_adam_layer_normalization_93_gamma_v_read_readvariableop=savev2_adam_layer_normalization_93_beta_v_read_readvariableop3savev2_adam_dense_3004_kernel_v_read_readvariableop1savev2_adam_dense_3004_bias_v_read_readvariableop>savev2_adam_layer_normalization_94_gamma_v_read_readvariableop=savev2_adam_layer_normalization_94_beta_v_read_readvariableop3savev2_adam_dense_3005_kernel_v_read_readvariableop1savev2_adam_dense_3005_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *p
dtypesf
d2b	2
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :	�M:M:M:M:MM:M:M:M:MM:M:M:M:MM:M:M:M:MM:M:M:M:MM:M:M:M:MM:M:M:M:	M�@:�@: : : : : : : :	�M:M:M:M:MM:M:M:M:MM:M:M:M:MM:M:M:M:MM:M:M:M:MM:M:M:M:MM:M:M:M:	M�@:�@:	�M:M:M:M:MM:M:M:M:MM:M:M:M:MM:M:M:M:MM:M:M:M:MM:M:M:M:MM:M:M:M:	M�@:�@: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	�M: 

_output_shapes
:M: 

_output_shapes
:M: 

_output_shapes
:M:$ 

_output_shapes

:MM: 

_output_shapes
:M: 

_output_shapes
:M: 

_output_shapes
:M:$	 

_output_shapes

:MM: 


_output_shapes
:M: 

_output_shapes
:M: 

_output_shapes
:M:$ 

_output_shapes

:MM: 

_output_shapes
:M: 

_output_shapes
:M: 

_output_shapes
:M:$ 

_output_shapes

:MM: 

_output_shapes
:M: 

_output_shapes
:M: 

_output_shapes
:M:$ 

_output_shapes

:MM: 

_output_shapes
:M: 

_output_shapes
:M: 

_output_shapes
:M:$ 

_output_shapes

:MM: 

_output_shapes
:M: 

_output_shapes
:M: 

_output_shapes
:M:%!

_output_shapes
:	M�@:!

_output_shapes	
:�@:

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :%&!

_output_shapes
:	�M: '

_output_shapes
:M: (

_output_shapes
:M: )

_output_shapes
:M:$* 

_output_shapes

:MM: +

_output_shapes
:M: ,

_output_shapes
:M: -

_output_shapes
:M:$. 

_output_shapes

:MM: /

_output_shapes
:M: 0

_output_shapes
:M: 1

_output_shapes
:M:$2 

_output_shapes

:MM: 3

_output_shapes
:M: 4

_output_shapes
:M: 5

_output_shapes
:M:$6 

_output_shapes

:MM: 7

_output_shapes
:M: 8

_output_shapes
:M: 9

_output_shapes
:M:$: 

_output_shapes

:MM: ;

_output_shapes
:M: <

_output_shapes
:M: =

_output_shapes
:M:$> 

_output_shapes

:MM: ?

_output_shapes
:M: @

_output_shapes
:M: A

_output_shapes
:M:%B!

_output_shapes
:	M�@:!C

_output_shapes	
:�@:%D!

_output_shapes
:	�M: E

_output_shapes
:M: F

_output_shapes
:M: G

_output_shapes
:M:$H 

_output_shapes

:MM: I

_output_shapes
:M: J

_output_shapes
:M: K

_output_shapes
:M:$L 

_output_shapes

:MM: M

_output_shapes
:M: N

_output_shapes
:M: O

_output_shapes
:M:$P 

_output_shapes

:MM: Q

_output_shapes
:M: R

_output_shapes
:M: S

_output_shapes
:M:$T 

_output_shapes

:MM: U

_output_shapes
:M: V

_output_shapes
:M: W

_output_shapes
:M:$X 

_output_shapes

:MM: Y

_output_shapes
:M: Z

_output_shapes
:M: [

_output_shapes
:M:$\ 

_output_shapes

:MM: ]

_output_shapes
:M: ^

_output_shapes
:M: _

_output_shapes
:M:%`!

_output_shapes
:	M�@:!a

_output_shapes	
:�@:b

_output_shapes
: 
�
�
9__inference_layer_normalization_88_layer_call_fn_10179473

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_normalization_88_layer_call_and_return_conditional_losses_101776472
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�"
�
T__inference_layer_normalization_92_layer_call_and_return_conditional_losses_10177983

inputs!
mul_2_readvariableop_resource
add_readvariableop_resource
identity��add/ReadVariableOp�mul_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_sliceP
mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
mul/xZ
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: 2
mulx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1T
mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/xb
mul_1Mulmul_1/x:output:0strided_slice_1:output:0*
T0*
_output_shapes
: 2
mul_1d
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/0d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3�
Reshape/shapePackReshape/shape/0:output:0mul:z:0	mul_1:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape�
ReshapeReshapeinputsReshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2	
ReshapeS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ConstU
	Fill/dimsPackmul:z:0*
N*
T0*
_output_shapes
:2
	Fill/dimsf
FillFillFill/dims:output:0Const:output:0*
T0*#
_output_shapes
:���������2
FillW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2	
Const_1Y
Fill_1/dimsPackmul:z:0*
N*
T0*
_output_shapes
:2
Fill_1/dimsn
Fill_1FillFill_1/dims:output:0Const_1:output:0*
T0*#
_output_shapes
:���������2
Fill_1U
Const_2Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_2U
Const_3Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_3�
FusedBatchNormV3FusedBatchNormV3Reshape:output:0Fill:output:0Fill_1:output:0Const_2:output:0Const_3:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2
FusedBatchNormV3y
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*'
_output_shapes
:���������M2
	Reshape_1�
mul_2/ReadVariableOpReadVariableOpmul_2_readvariableop_resource*
_output_shapes
:M*
dtype02
mul_2/ReadVariableOpy
mul_2MulReshape_1:output:0mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
mul_2�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:M*
dtype02
add/ReadVariableOpl
addAddV2	mul_2:z:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
add�
IdentityIdentityadd:z:0^add/ReadVariableOp^mul_2/ReadVariableOp*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�
�
9__inference_layer_normalization_91_layer_call_fn_10179683

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_normalization_91_layer_call_and_return_conditional_losses_101778992
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�
�
-__inference_dense_2999_layer_call_fn_10179492

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_2999_layer_call_and_return_conditional_losses_101776732
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�
�
9__inference_layer_normalization_94_layer_call_fn_10179893

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_normalization_94_layer_call_and_return_conditional_losses_101781512
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�
�
-__inference_dense_3000_layer_call_fn_10179562

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_3000_layer_call_and_return_conditional_losses_101777572
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�
�
9__inference_layer_normalization_90_layer_call_fn_10179613

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_normalization_90_layer_call_and_return_conditional_losses_101778152
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
��
�
G__inference_model_138_layer_call_and_return_conditional_losses_10179273

inputs-
)dense_2998_matmul_readvariableop_resource.
*dense_2998_biasadd_readvariableop_resource8
4layer_normalization_88_mul_2_readvariableop_resource6
2layer_normalization_88_add_readvariableop_resource-
)dense_2999_matmul_readvariableop_resource.
*dense_2999_biasadd_readvariableop_resource8
4layer_normalization_89_mul_2_readvariableop_resource6
2layer_normalization_89_add_readvariableop_resource-
)dense_3000_matmul_readvariableop_resource.
*dense_3000_biasadd_readvariableop_resource8
4layer_normalization_90_mul_2_readvariableop_resource6
2layer_normalization_90_add_readvariableop_resource-
)dense_3001_matmul_readvariableop_resource.
*dense_3001_biasadd_readvariableop_resource8
4layer_normalization_91_mul_2_readvariableop_resource6
2layer_normalization_91_add_readvariableop_resource-
)dense_3002_matmul_readvariableop_resource.
*dense_3002_biasadd_readvariableop_resource8
4layer_normalization_92_mul_2_readvariableop_resource6
2layer_normalization_92_add_readvariableop_resource-
)dense_3003_matmul_readvariableop_resource.
*dense_3003_biasadd_readvariableop_resource8
4layer_normalization_93_mul_2_readvariableop_resource6
2layer_normalization_93_add_readvariableop_resource-
)dense_3004_matmul_readvariableop_resource.
*dense_3004_biasadd_readvariableop_resource8
4layer_normalization_94_mul_2_readvariableop_resource6
2layer_normalization_94_add_readvariableop_resource-
)dense_3005_matmul_readvariableop_resource.
*dense_3005_biasadd_readvariableop_resource
identity��!dense_2998/BiasAdd/ReadVariableOp� dense_2998/MatMul/ReadVariableOp�!dense_2999/BiasAdd/ReadVariableOp� dense_2999/MatMul/ReadVariableOp�!dense_3000/BiasAdd/ReadVariableOp� dense_3000/MatMul/ReadVariableOp�!dense_3001/BiasAdd/ReadVariableOp� dense_3001/MatMul/ReadVariableOp�!dense_3002/BiasAdd/ReadVariableOp� dense_3002/MatMul/ReadVariableOp�!dense_3003/BiasAdd/ReadVariableOp� dense_3003/MatMul/ReadVariableOp�!dense_3004/BiasAdd/ReadVariableOp� dense_3004/MatMul/ReadVariableOp�!dense_3005/BiasAdd/ReadVariableOp� dense_3005/MatMul/ReadVariableOp�)layer_normalization_88/add/ReadVariableOp�+layer_normalization_88/mul_2/ReadVariableOp�)layer_normalization_89/add/ReadVariableOp�+layer_normalization_89/mul_2/ReadVariableOp�)layer_normalization_90/add/ReadVariableOp�+layer_normalization_90/mul_2/ReadVariableOp�)layer_normalization_91/add/ReadVariableOp�+layer_normalization_91/mul_2/ReadVariableOp�)layer_normalization_92/add/ReadVariableOp�+layer_normalization_92/mul_2/ReadVariableOp�)layer_normalization_93/add/ReadVariableOp�+layer_normalization_93/mul_2/ReadVariableOp�)layer_normalization_94/add/ReadVariableOp�+layer_normalization_94/mul_2/ReadVariableOp�
 dense_2998/MatMul/ReadVariableOpReadVariableOp)dense_2998_matmul_readvariableop_resource*
_output_shapes
:	�M*
dtype02"
 dense_2998/MatMul/ReadVariableOp�
dense_2998/MatMulMatMulinputs(dense_2998/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
dense_2998/MatMul�
!dense_2998/BiasAdd/ReadVariableOpReadVariableOp*dense_2998_biasadd_readvariableop_resource*
_output_shapes
:M*
dtype02#
!dense_2998/BiasAdd/ReadVariableOp�
dense_2998/BiasAddBiasAdddense_2998/MatMul:product:0)dense_2998/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
dense_2998/BiasAdd�
layer_normalization_88/ShapeShapedense_2998/BiasAdd:output:0*
T0*
_output_shapes
:2
layer_normalization_88/Shape�
*layer_normalization_88/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*layer_normalization_88/strided_slice/stack�
,layer_normalization_88/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_88/strided_slice/stack_1�
,layer_normalization_88/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_88/strided_slice/stack_2�
$layer_normalization_88/strided_sliceStridedSlice%layer_normalization_88/Shape:output:03layer_normalization_88/strided_slice/stack:output:05layer_normalization_88/strided_slice/stack_1:output:05layer_normalization_88/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$layer_normalization_88/strided_slice~
layer_normalization_88/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization_88/mul/x�
layer_normalization_88/mulMul%layer_normalization_88/mul/x:output:0-layer_normalization_88/strided_slice:output:0*
T0*
_output_shapes
: 2
layer_normalization_88/mul�
,layer_normalization_88/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_88/strided_slice_1/stack�
.layer_normalization_88/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.layer_normalization_88/strided_slice_1/stack_1�
.layer_normalization_88/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.layer_normalization_88/strided_slice_1/stack_2�
&layer_normalization_88/strided_slice_1StridedSlice%layer_normalization_88/Shape:output:05layer_normalization_88/strided_slice_1/stack:output:07layer_normalization_88/strided_slice_1/stack_1:output:07layer_normalization_88/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&layer_normalization_88/strided_slice_1�
layer_normalization_88/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2 
layer_normalization_88/mul_1/x�
layer_normalization_88/mul_1Mul'layer_normalization_88/mul_1/x:output:0/layer_normalization_88/strided_slice_1:output:0*
T0*
_output_shapes
: 2
layer_normalization_88/mul_1�
&layer_normalization_88/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2(
&layer_normalization_88/Reshape/shape/0�
&layer_normalization_88/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2(
&layer_normalization_88/Reshape/shape/3�
$layer_normalization_88/Reshape/shapePack/layer_normalization_88/Reshape/shape/0:output:0layer_normalization_88/mul:z:0 layer_normalization_88/mul_1:z:0/layer_normalization_88/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2&
$layer_normalization_88/Reshape/shape�
layer_normalization_88/ReshapeReshapedense_2998/BiasAdd:output:0-layer_normalization_88/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2 
layer_normalization_88/Reshape�
layer_normalization_88/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
layer_normalization_88/Const�
 layer_normalization_88/Fill/dimsPacklayer_normalization_88/mul:z:0*
N*
T0*
_output_shapes
:2"
 layer_normalization_88/Fill/dims�
layer_normalization_88/FillFill)layer_normalization_88/Fill/dims:output:0%layer_normalization_88/Const:output:0*
T0*#
_output_shapes
:���������2
layer_normalization_88/Fill�
layer_normalization_88/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2 
layer_normalization_88/Const_1�
"layer_normalization_88/Fill_1/dimsPacklayer_normalization_88/mul:z:0*
N*
T0*
_output_shapes
:2$
"layer_normalization_88/Fill_1/dims�
layer_normalization_88/Fill_1Fill+layer_normalization_88/Fill_1/dims:output:0'layer_normalization_88/Const_1:output:0*
T0*#
_output_shapes
:���������2
layer_normalization_88/Fill_1�
layer_normalization_88/Const_2Const*
_output_shapes
: *
dtype0*
valueB 2 
layer_normalization_88/Const_2�
layer_normalization_88/Const_3Const*
_output_shapes
: *
dtype0*
valueB 2 
layer_normalization_88/Const_3�
'layer_normalization_88/FusedBatchNormV3FusedBatchNormV3'layer_normalization_88/Reshape:output:0$layer_normalization_88/Fill:output:0&layer_normalization_88/Fill_1:output:0'layer_normalization_88/Const_2:output:0'layer_normalization_88/Const_3:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2)
'layer_normalization_88/FusedBatchNormV3�
 layer_normalization_88/Reshape_1Reshape+layer_normalization_88/FusedBatchNormV3:y:0%layer_normalization_88/Shape:output:0*
T0*'
_output_shapes
:���������M2"
 layer_normalization_88/Reshape_1�
+layer_normalization_88/mul_2/ReadVariableOpReadVariableOp4layer_normalization_88_mul_2_readvariableop_resource*
_output_shapes
:M*
dtype02-
+layer_normalization_88/mul_2/ReadVariableOp�
layer_normalization_88/mul_2Mul)layer_normalization_88/Reshape_1:output:03layer_normalization_88/mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
layer_normalization_88/mul_2�
)layer_normalization_88/add/ReadVariableOpReadVariableOp2layer_normalization_88_add_readvariableop_resource*
_output_shapes
:M*
dtype02+
)layer_normalization_88/add/ReadVariableOp�
layer_normalization_88/addAddV2 layer_normalization_88/mul_2:z:01layer_normalization_88/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
layer_normalization_88/add�
 dense_2999/MatMul/ReadVariableOpReadVariableOp)dense_2999_matmul_readvariableop_resource*
_output_shapes

:MM*
dtype02"
 dense_2999/MatMul/ReadVariableOp�
dense_2999/MatMulMatMullayer_normalization_88/add:z:0(dense_2999/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
dense_2999/MatMul�
!dense_2999/BiasAdd/ReadVariableOpReadVariableOp*dense_2999_biasadd_readvariableop_resource*
_output_shapes
:M*
dtype02#
!dense_2999/BiasAdd/ReadVariableOp�
dense_2999/BiasAddBiasAdddense_2999/MatMul:product:0)dense_2999/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
dense_2999/BiasAdd�
layer_normalization_89/ShapeShapedense_2999/BiasAdd:output:0*
T0*
_output_shapes
:2
layer_normalization_89/Shape�
*layer_normalization_89/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*layer_normalization_89/strided_slice/stack�
,layer_normalization_89/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_89/strided_slice/stack_1�
,layer_normalization_89/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_89/strided_slice/stack_2�
$layer_normalization_89/strided_sliceStridedSlice%layer_normalization_89/Shape:output:03layer_normalization_89/strided_slice/stack:output:05layer_normalization_89/strided_slice/stack_1:output:05layer_normalization_89/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$layer_normalization_89/strided_slice~
layer_normalization_89/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization_89/mul/x�
layer_normalization_89/mulMul%layer_normalization_89/mul/x:output:0-layer_normalization_89/strided_slice:output:0*
T0*
_output_shapes
: 2
layer_normalization_89/mul�
,layer_normalization_89/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_89/strided_slice_1/stack�
.layer_normalization_89/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.layer_normalization_89/strided_slice_1/stack_1�
.layer_normalization_89/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.layer_normalization_89/strided_slice_1/stack_2�
&layer_normalization_89/strided_slice_1StridedSlice%layer_normalization_89/Shape:output:05layer_normalization_89/strided_slice_1/stack:output:07layer_normalization_89/strided_slice_1/stack_1:output:07layer_normalization_89/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&layer_normalization_89/strided_slice_1�
layer_normalization_89/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2 
layer_normalization_89/mul_1/x�
layer_normalization_89/mul_1Mul'layer_normalization_89/mul_1/x:output:0/layer_normalization_89/strided_slice_1:output:0*
T0*
_output_shapes
: 2
layer_normalization_89/mul_1�
&layer_normalization_89/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2(
&layer_normalization_89/Reshape/shape/0�
&layer_normalization_89/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2(
&layer_normalization_89/Reshape/shape/3�
$layer_normalization_89/Reshape/shapePack/layer_normalization_89/Reshape/shape/0:output:0layer_normalization_89/mul:z:0 layer_normalization_89/mul_1:z:0/layer_normalization_89/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2&
$layer_normalization_89/Reshape/shape�
layer_normalization_89/ReshapeReshapedense_2999/BiasAdd:output:0-layer_normalization_89/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2 
layer_normalization_89/Reshape�
layer_normalization_89/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
layer_normalization_89/Const�
 layer_normalization_89/Fill/dimsPacklayer_normalization_89/mul:z:0*
N*
T0*
_output_shapes
:2"
 layer_normalization_89/Fill/dims�
layer_normalization_89/FillFill)layer_normalization_89/Fill/dims:output:0%layer_normalization_89/Const:output:0*
T0*#
_output_shapes
:���������2
layer_normalization_89/Fill�
layer_normalization_89/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2 
layer_normalization_89/Const_1�
"layer_normalization_89/Fill_1/dimsPacklayer_normalization_89/mul:z:0*
N*
T0*
_output_shapes
:2$
"layer_normalization_89/Fill_1/dims�
layer_normalization_89/Fill_1Fill+layer_normalization_89/Fill_1/dims:output:0'layer_normalization_89/Const_1:output:0*
T0*#
_output_shapes
:���������2
layer_normalization_89/Fill_1�
layer_normalization_89/Const_2Const*
_output_shapes
: *
dtype0*
valueB 2 
layer_normalization_89/Const_2�
layer_normalization_89/Const_3Const*
_output_shapes
: *
dtype0*
valueB 2 
layer_normalization_89/Const_3�
'layer_normalization_89/FusedBatchNormV3FusedBatchNormV3'layer_normalization_89/Reshape:output:0$layer_normalization_89/Fill:output:0&layer_normalization_89/Fill_1:output:0'layer_normalization_89/Const_2:output:0'layer_normalization_89/Const_3:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2)
'layer_normalization_89/FusedBatchNormV3�
 layer_normalization_89/Reshape_1Reshape+layer_normalization_89/FusedBatchNormV3:y:0%layer_normalization_89/Shape:output:0*
T0*'
_output_shapes
:���������M2"
 layer_normalization_89/Reshape_1�
+layer_normalization_89/mul_2/ReadVariableOpReadVariableOp4layer_normalization_89_mul_2_readvariableop_resource*
_output_shapes
:M*
dtype02-
+layer_normalization_89/mul_2/ReadVariableOp�
layer_normalization_89/mul_2Mul)layer_normalization_89/Reshape_1:output:03layer_normalization_89/mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
layer_normalization_89/mul_2�
)layer_normalization_89/add/ReadVariableOpReadVariableOp2layer_normalization_89_add_readvariableop_resource*
_output_shapes
:M*
dtype02+
)layer_normalization_89/add/ReadVariableOp�
layer_normalization_89/addAddV2 layer_normalization_89/mul_2:z:01layer_normalization_89/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
layer_normalization_89/add�
 dense_3000/MatMul/ReadVariableOpReadVariableOp)dense_3000_matmul_readvariableop_resource*
_output_shapes

:MM*
dtype02"
 dense_3000/MatMul/ReadVariableOp�
dense_3000/MatMulMatMullayer_normalization_89/add:z:0(dense_3000/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
dense_3000/MatMul�
!dense_3000/BiasAdd/ReadVariableOpReadVariableOp*dense_3000_biasadd_readvariableop_resource*
_output_shapes
:M*
dtype02#
!dense_3000/BiasAdd/ReadVariableOp�
dense_3000/BiasAddBiasAdddense_3000/MatMul:product:0)dense_3000/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
dense_3000/BiasAdd�
layer_normalization_90/ShapeShapedense_3000/BiasAdd:output:0*
T0*
_output_shapes
:2
layer_normalization_90/Shape�
*layer_normalization_90/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*layer_normalization_90/strided_slice/stack�
,layer_normalization_90/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_90/strided_slice/stack_1�
,layer_normalization_90/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_90/strided_slice/stack_2�
$layer_normalization_90/strided_sliceStridedSlice%layer_normalization_90/Shape:output:03layer_normalization_90/strided_slice/stack:output:05layer_normalization_90/strided_slice/stack_1:output:05layer_normalization_90/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$layer_normalization_90/strided_slice~
layer_normalization_90/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization_90/mul/x�
layer_normalization_90/mulMul%layer_normalization_90/mul/x:output:0-layer_normalization_90/strided_slice:output:0*
T0*
_output_shapes
: 2
layer_normalization_90/mul�
,layer_normalization_90/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_90/strided_slice_1/stack�
.layer_normalization_90/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.layer_normalization_90/strided_slice_1/stack_1�
.layer_normalization_90/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.layer_normalization_90/strided_slice_1/stack_2�
&layer_normalization_90/strided_slice_1StridedSlice%layer_normalization_90/Shape:output:05layer_normalization_90/strided_slice_1/stack:output:07layer_normalization_90/strided_slice_1/stack_1:output:07layer_normalization_90/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&layer_normalization_90/strided_slice_1�
layer_normalization_90/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2 
layer_normalization_90/mul_1/x�
layer_normalization_90/mul_1Mul'layer_normalization_90/mul_1/x:output:0/layer_normalization_90/strided_slice_1:output:0*
T0*
_output_shapes
: 2
layer_normalization_90/mul_1�
&layer_normalization_90/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2(
&layer_normalization_90/Reshape/shape/0�
&layer_normalization_90/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2(
&layer_normalization_90/Reshape/shape/3�
$layer_normalization_90/Reshape/shapePack/layer_normalization_90/Reshape/shape/0:output:0layer_normalization_90/mul:z:0 layer_normalization_90/mul_1:z:0/layer_normalization_90/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2&
$layer_normalization_90/Reshape/shape�
layer_normalization_90/ReshapeReshapedense_3000/BiasAdd:output:0-layer_normalization_90/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2 
layer_normalization_90/Reshape�
layer_normalization_90/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
layer_normalization_90/Const�
 layer_normalization_90/Fill/dimsPacklayer_normalization_90/mul:z:0*
N*
T0*
_output_shapes
:2"
 layer_normalization_90/Fill/dims�
layer_normalization_90/FillFill)layer_normalization_90/Fill/dims:output:0%layer_normalization_90/Const:output:0*
T0*#
_output_shapes
:���������2
layer_normalization_90/Fill�
layer_normalization_90/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2 
layer_normalization_90/Const_1�
"layer_normalization_90/Fill_1/dimsPacklayer_normalization_90/mul:z:0*
N*
T0*
_output_shapes
:2$
"layer_normalization_90/Fill_1/dims�
layer_normalization_90/Fill_1Fill+layer_normalization_90/Fill_1/dims:output:0'layer_normalization_90/Const_1:output:0*
T0*#
_output_shapes
:���������2
layer_normalization_90/Fill_1�
layer_normalization_90/Const_2Const*
_output_shapes
: *
dtype0*
valueB 2 
layer_normalization_90/Const_2�
layer_normalization_90/Const_3Const*
_output_shapes
: *
dtype0*
valueB 2 
layer_normalization_90/Const_3�
'layer_normalization_90/FusedBatchNormV3FusedBatchNormV3'layer_normalization_90/Reshape:output:0$layer_normalization_90/Fill:output:0&layer_normalization_90/Fill_1:output:0'layer_normalization_90/Const_2:output:0'layer_normalization_90/Const_3:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2)
'layer_normalization_90/FusedBatchNormV3�
 layer_normalization_90/Reshape_1Reshape+layer_normalization_90/FusedBatchNormV3:y:0%layer_normalization_90/Shape:output:0*
T0*'
_output_shapes
:���������M2"
 layer_normalization_90/Reshape_1�
+layer_normalization_90/mul_2/ReadVariableOpReadVariableOp4layer_normalization_90_mul_2_readvariableop_resource*
_output_shapes
:M*
dtype02-
+layer_normalization_90/mul_2/ReadVariableOp�
layer_normalization_90/mul_2Mul)layer_normalization_90/Reshape_1:output:03layer_normalization_90/mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
layer_normalization_90/mul_2�
)layer_normalization_90/add/ReadVariableOpReadVariableOp2layer_normalization_90_add_readvariableop_resource*
_output_shapes
:M*
dtype02+
)layer_normalization_90/add/ReadVariableOp�
layer_normalization_90/addAddV2 layer_normalization_90/mul_2:z:01layer_normalization_90/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
layer_normalization_90/add�
 dense_3001/MatMul/ReadVariableOpReadVariableOp)dense_3001_matmul_readvariableop_resource*
_output_shapes

:MM*
dtype02"
 dense_3001/MatMul/ReadVariableOp�
dense_3001/MatMulMatMullayer_normalization_90/add:z:0(dense_3001/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
dense_3001/MatMul�
!dense_3001/BiasAdd/ReadVariableOpReadVariableOp*dense_3001_biasadd_readvariableop_resource*
_output_shapes
:M*
dtype02#
!dense_3001/BiasAdd/ReadVariableOp�
dense_3001/BiasAddBiasAdddense_3001/MatMul:product:0)dense_3001/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
dense_3001/BiasAdd�
layer_normalization_91/ShapeShapedense_3001/BiasAdd:output:0*
T0*
_output_shapes
:2
layer_normalization_91/Shape�
*layer_normalization_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*layer_normalization_91/strided_slice/stack�
,layer_normalization_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_91/strided_slice/stack_1�
,layer_normalization_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_91/strided_slice/stack_2�
$layer_normalization_91/strided_sliceStridedSlice%layer_normalization_91/Shape:output:03layer_normalization_91/strided_slice/stack:output:05layer_normalization_91/strided_slice/stack_1:output:05layer_normalization_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$layer_normalization_91/strided_slice~
layer_normalization_91/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization_91/mul/x�
layer_normalization_91/mulMul%layer_normalization_91/mul/x:output:0-layer_normalization_91/strided_slice:output:0*
T0*
_output_shapes
: 2
layer_normalization_91/mul�
,layer_normalization_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_91/strided_slice_1/stack�
.layer_normalization_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.layer_normalization_91/strided_slice_1/stack_1�
.layer_normalization_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.layer_normalization_91/strided_slice_1/stack_2�
&layer_normalization_91/strided_slice_1StridedSlice%layer_normalization_91/Shape:output:05layer_normalization_91/strided_slice_1/stack:output:07layer_normalization_91/strided_slice_1/stack_1:output:07layer_normalization_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&layer_normalization_91/strided_slice_1�
layer_normalization_91/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2 
layer_normalization_91/mul_1/x�
layer_normalization_91/mul_1Mul'layer_normalization_91/mul_1/x:output:0/layer_normalization_91/strided_slice_1:output:0*
T0*
_output_shapes
: 2
layer_normalization_91/mul_1�
&layer_normalization_91/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2(
&layer_normalization_91/Reshape/shape/0�
&layer_normalization_91/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2(
&layer_normalization_91/Reshape/shape/3�
$layer_normalization_91/Reshape/shapePack/layer_normalization_91/Reshape/shape/0:output:0layer_normalization_91/mul:z:0 layer_normalization_91/mul_1:z:0/layer_normalization_91/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2&
$layer_normalization_91/Reshape/shape�
layer_normalization_91/ReshapeReshapedense_3001/BiasAdd:output:0-layer_normalization_91/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2 
layer_normalization_91/Reshape�
layer_normalization_91/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
layer_normalization_91/Const�
 layer_normalization_91/Fill/dimsPacklayer_normalization_91/mul:z:0*
N*
T0*
_output_shapes
:2"
 layer_normalization_91/Fill/dims�
layer_normalization_91/FillFill)layer_normalization_91/Fill/dims:output:0%layer_normalization_91/Const:output:0*
T0*#
_output_shapes
:���������2
layer_normalization_91/Fill�
layer_normalization_91/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2 
layer_normalization_91/Const_1�
"layer_normalization_91/Fill_1/dimsPacklayer_normalization_91/mul:z:0*
N*
T0*
_output_shapes
:2$
"layer_normalization_91/Fill_1/dims�
layer_normalization_91/Fill_1Fill+layer_normalization_91/Fill_1/dims:output:0'layer_normalization_91/Const_1:output:0*
T0*#
_output_shapes
:���������2
layer_normalization_91/Fill_1�
layer_normalization_91/Const_2Const*
_output_shapes
: *
dtype0*
valueB 2 
layer_normalization_91/Const_2�
layer_normalization_91/Const_3Const*
_output_shapes
: *
dtype0*
valueB 2 
layer_normalization_91/Const_3�
'layer_normalization_91/FusedBatchNormV3FusedBatchNormV3'layer_normalization_91/Reshape:output:0$layer_normalization_91/Fill:output:0&layer_normalization_91/Fill_1:output:0'layer_normalization_91/Const_2:output:0'layer_normalization_91/Const_3:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2)
'layer_normalization_91/FusedBatchNormV3�
 layer_normalization_91/Reshape_1Reshape+layer_normalization_91/FusedBatchNormV3:y:0%layer_normalization_91/Shape:output:0*
T0*'
_output_shapes
:���������M2"
 layer_normalization_91/Reshape_1�
+layer_normalization_91/mul_2/ReadVariableOpReadVariableOp4layer_normalization_91_mul_2_readvariableop_resource*
_output_shapes
:M*
dtype02-
+layer_normalization_91/mul_2/ReadVariableOp�
layer_normalization_91/mul_2Mul)layer_normalization_91/Reshape_1:output:03layer_normalization_91/mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
layer_normalization_91/mul_2�
)layer_normalization_91/add/ReadVariableOpReadVariableOp2layer_normalization_91_add_readvariableop_resource*
_output_shapes
:M*
dtype02+
)layer_normalization_91/add/ReadVariableOp�
layer_normalization_91/addAddV2 layer_normalization_91/mul_2:z:01layer_normalization_91/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
layer_normalization_91/add�
 dense_3002/MatMul/ReadVariableOpReadVariableOp)dense_3002_matmul_readvariableop_resource*
_output_shapes

:MM*
dtype02"
 dense_3002/MatMul/ReadVariableOp�
dense_3002/MatMulMatMullayer_normalization_91/add:z:0(dense_3002/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
dense_3002/MatMul�
!dense_3002/BiasAdd/ReadVariableOpReadVariableOp*dense_3002_biasadd_readvariableop_resource*
_output_shapes
:M*
dtype02#
!dense_3002/BiasAdd/ReadVariableOp�
dense_3002/BiasAddBiasAdddense_3002/MatMul:product:0)dense_3002/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
dense_3002/BiasAdd�
layer_normalization_92/ShapeShapedense_3002/BiasAdd:output:0*
T0*
_output_shapes
:2
layer_normalization_92/Shape�
*layer_normalization_92/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*layer_normalization_92/strided_slice/stack�
,layer_normalization_92/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_92/strided_slice/stack_1�
,layer_normalization_92/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_92/strided_slice/stack_2�
$layer_normalization_92/strided_sliceStridedSlice%layer_normalization_92/Shape:output:03layer_normalization_92/strided_slice/stack:output:05layer_normalization_92/strided_slice/stack_1:output:05layer_normalization_92/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$layer_normalization_92/strided_slice~
layer_normalization_92/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization_92/mul/x�
layer_normalization_92/mulMul%layer_normalization_92/mul/x:output:0-layer_normalization_92/strided_slice:output:0*
T0*
_output_shapes
: 2
layer_normalization_92/mul�
,layer_normalization_92/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_92/strided_slice_1/stack�
.layer_normalization_92/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.layer_normalization_92/strided_slice_1/stack_1�
.layer_normalization_92/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.layer_normalization_92/strided_slice_1/stack_2�
&layer_normalization_92/strided_slice_1StridedSlice%layer_normalization_92/Shape:output:05layer_normalization_92/strided_slice_1/stack:output:07layer_normalization_92/strided_slice_1/stack_1:output:07layer_normalization_92/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&layer_normalization_92/strided_slice_1�
layer_normalization_92/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2 
layer_normalization_92/mul_1/x�
layer_normalization_92/mul_1Mul'layer_normalization_92/mul_1/x:output:0/layer_normalization_92/strided_slice_1:output:0*
T0*
_output_shapes
: 2
layer_normalization_92/mul_1�
&layer_normalization_92/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2(
&layer_normalization_92/Reshape/shape/0�
&layer_normalization_92/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2(
&layer_normalization_92/Reshape/shape/3�
$layer_normalization_92/Reshape/shapePack/layer_normalization_92/Reshape/shape/0:output:0layer_normalization_92/mul:z:0 layer_normalization_92/mul_1:z:0/layer_normalization_92/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2&
$layer_normalization_92/Reshape/shape�
layer_normalization_92/ReshapeReshapedense_3002/BiasAdd:output:0-layer_normalization_92/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2 
layer_normalization_92/Reshape�
layer_normalization_92/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
layer_normalization_92/Const�
 layer_normalization_92/Fill/dimsPacklayer_normalization_92/mul:z:0*
N*
T0*
_output_shapes
:2"
 layer_normalization_92/Fill/dims�
layer_normalization_92/FillFill)layer_normalization_92/Fill/dims:output:0%layer_normalization_92/Const:output:0*
T0*#
_output_shapes
:���������2
layer_normalization_92/Fill�
layer_normalization_92/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2 
layer_normalization_92/Const_1�
"layer_normalization_92/Fill_1/dimsPacklayer_normalization_92/mul:z:0*
N*
T0*
_output_shapes
:2$
"layer_normalization_92/Fill_1/dims�
layer_normalization_92/Fill_1Fill+layer_normalization_92/Fill_1/dims:output:0'layer_normalization_92/Const_1:output:0*
T0*#
_output_shapes
:���������2
layer_normalization_92/Fill_1�
layer_normalization_92/Const_2Const*
_output_shapes
: *
dtype0*
valueB 2 
layer_normalization_92/Const_2�
layer_normalization_92/Const_3Const*
_output_shapes
: *
dtype0*
valueB 2 
layer_normalization_92/Const_3�
'layer_normalization_92/FusedBatchNormV3FusedBatchNormV3'layer_normalization_92/Reshape:output:0$layer_normalization_92/Fill:output:0&layer_normalization_92/Fill_1:output:0'layer_normalization_92/Const_2:output:0'layer_normalization_92/Const_3:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2)
'layer_normalization_92/FusedBatchNormV3�
 layer_normalization_92/Reshape_1Reshape+layer_normalization_92/FusedBatchNormV3:y:0%layer_normalization_92/Shape:output:0*
T0*'
_output_shapes
:���������M2"
 layer_normalization_92/Reshape_1�
+layer_normalization_92/mul_2/ReadVariableOpReadVariableOp4layer_normalization_92_mul_2_readvariableop_resource*
_output_shapes
:M*
dtype02-
+layer_normalization_92/mul_2/ReadVariableOp�
layer_normalization_92/mul_2Mul)layer_normalization_92/Reshape_1:output:03layer_normalization_92/mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
layer_normalization_92/mul_2�
)layer_normalization_92/add/ReadVariableOpReadVariableOp2layer_normalization_92_add_readvariableop_resource*
_output_shapes
:M*
dtype02+
)layer_normalization_92/add/ReadVariableOp�
layer_normalization_92/addAddV2 layer_normalization_92/mul_2:z:01layer_normalization_92/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
layer_normalization_92/add�
 dense_3003/MatMul/ReadVariableOpReadVariableOp)dense_3003_matmul_readvariableop_resource*
_output_shapes

:MM*
dtype02"
 dense_3003/MatMul/ReadVariableOp�
dense_3003/MatMulMatMullayer_normalization_92/add:z:0(dense_3003/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
dense_3003/MatMul�
!dense_3003/BiasAdd/ReadVariableOpReadVariableOp*dense_3003_biasadd_readvariableop_resource*
_output_shapes
:M*
dtype02#
!dense_3003/BiasAdd/ReadVariableOp�
dense_3003/BiasAddBiasAdddense_3003/MatMul:product:0)dense_3003/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
dense_3003/BiasAdd�
layer_normalization_93/ShapeShapedense_3003/BiasAdd:output:0*
T0*
_output_shapes
:2
layer_normalization_93/Shape�
*layer_normalization_93/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*layer_normalization_93/strided_slice/stack�
,layer_normalization_93/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_93/strided_slice/stack_1�
,layer_normalization_93/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_93/strided_slice/stack_2�
$layer_normalization_93/strided_sliceStridedSlice%layer_normalization_93/Shape:output:03layer_normalization_93/strided_slice/stack:output:05layer_normalization_93/strided_slice/stack_1:output:05layer_normalization_93/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$layer_normalization_93/strided_slice~
layer_normalization_93/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization_93/mul/x�
layer_normalization_93/mulMul%layer_normalization_93/mul/x:output:0-layer_normalization_93/strided_slice:output:0*
T0*
_output_shapes
: 2
layer_normalization_93/mul�
,layer_normalization_93/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_93/strided_slice_1/stack�
.layer_normalization_93/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.layer_normalization_93/strided_slice_1/stack_1�
.layer_normalization_93/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.layer_normalization_93/strided_slice_1/stack_2�
&layer_normalization_93/strided_slice_1StridedSlice%layer_normalization_93/Shape:output:05layer_normalization_93/strided_slice_1/stack:output:07layer_normalization_93/strided_slice_1/stack_1:output:07layer_normalization_93/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&layer_normalization_93/strided_slice_1�
layer_normalization_93/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2 
layer_normalization_93/mul_1/x�
layer_normalization_93/mul_1Mul'layer_normalization_93/mul_1/x:output:0/layer_normalization_93/strided_slice_1:output:0*
T0*
_output_shapes
: 2
layer_normalization_93/mul_1�
&layer_normalization_93/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2(
&layer_normalization_93/Reshape/shape/0�
&layer_normalization_93/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2(
&layer_normalization_93/Reshape/shape/3�
$layer_normalization_93/Reshape/shapePack/layer_normalization_93/Reshape/shape/0:output:0layer_normalization_93/mul:z:0 layer_normalization_93/mul_1:z:0/layer_normalization_93/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2&
$layer_normalization_93/Reshape/shape�
layer_normalization_93/ReshapeReshapedense_3003/BiasAdd:output:0-layer_normalization_93/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2 
layer_normalization_93/Reshape�
layer_normalization_93/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
layer_normalization_93/Const�
 layer_normalization_93/Fill/dimsPacklayer_normalization_93/mul:z:0*
N*
T0*
_output_shapes
:2"
 layer_normalization_93/Fill/dims�
layer_normalization_93/FillFill)layer_normalization_93/Fill/dims:output:0%layer_normalization_93/Const:output:0*
T0*#
_output_shapes
:���������2
layer_normalization_93/Fill�
layer_normalization_93/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2 
layer_normalization_93/Const_1�
"layer_normalization_93/Fill_1/dimsPacklayer_normalization_93/mul:z:0*
N*
T0*
_output_shapes
:2$
"layer_normalization_93/Fill_1/dims�
layer_normalization_93/Fill_1Fill+layer_normalization_93/Fill_1/dims:output:0'layer_normalization_93/Const_1:output:0*
T0*#
_output_shapes
:���������2
layer_normalization_93/Fill_1�
layer_normalization_93/Const_2Const*
_output_shapes
: *
dtype0*
valueB 2 
layer_normalization_93/Const_2�
layer_normalization_93/Const_3Const*
_output_shapes
: *
dtype0*
valueB 2 
layer_normalization_93/Const_3�
'layer_normalization_93/FusedBatchNormV3FusedBatchNormV3'layer_normalization_93/Reshape:output:0$layer_normalization_93/Fill:output:0&layer_normalization_93/Fill_1:output:0'layer_normalization_93/Const_2:output:0'layer_normalization_93/Const_3:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2)
'layer_normalization_93/FusedBatchNormV3�
 layer_normalization_93/Reshape_1Reshape+layer_normalization_93/FusedBatchNormV3:y:0%layer_normalization_93/Shape:output:0*
T0*'
_output_shapes
:���������M2"
 layer_normalization_93/Reshape_1�
+layer_normalization_93/mul_2/ReadVariableOpReadVariableOp4layer_normalization_93_mul_2_readvariableop_resource*
_output_shapes
:M*
dtype02-
+layer_normalization_93/mul_2/ReadVariableOp�
layer_normalization_93/mul_2Mul)layer_normalization_93/Reshape_1:output:03layer_normalization_93/mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
layer_normalization_93/mul_2�
)layer_normalization_93/add/ReadVariableOpReadVariableOp2layer_normalization_93_add_readvariableop_resource*
_output_shapes
:M*
dtype02+
)layer_normalization_93/add/ReadVariableOp�
layer_normalization_93/addAddV2 layer_normalization_93/mul_2:z:01layer_normalization_93/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
layer_normalization_93/add�
 dense_3004/MatMul/ReadVariableOpReadVariableOp)dense_3004_matmul_readvariableop_resource*
_output_shapes

:MM*
dtype02"
 dense_3004/MatMul/ReadVariableOp�
dense_3004/MatMulMatMullayer_normalization_93/add:z:0(dense_3004/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
dense_3004/MatMul�
!dense_3004/BiasAdd/ReadVariableOpReadVariableOp*dense_3004_biasadd_readvariableop_resource*
_output_shapes
:M*
dtype02#
!dense_3004/BiasAdd/ReadVariableOp�
dense_3004/BiasAddBiasAdddense_3004/MatMul:product:0)dense_3004/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
dense_3004/BiasAdd�
layer_normalization_94/ShapeShapedense_3004/BiasAdd:output:0*
T0*
_output_shapes
:2
layer_normalization_94/Shape�
*layer_normalization_94/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*layer_normalization_94/strided_slice/stack�
,layer_normalization_94/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_94/strided_slice/stack_1�
,layer_normalization_94/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_94/strided_slice/stack_2�
$layer_normalization_94/strided_sliceStridedSlice%layer_normalization_94/Shape:output:03layer_normalization_94/strided_slice/stack:output:05layer_normalization_94/strided_slice/stack_1:output:05layer_normalization_94/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$layer_normalization_94/strided_slice~
layer_normalization_94/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization_94/mul/x�
layer_normalization_94/mulMul%layer_normalization_94/mul/x:output:0-layer_normalization_94/strided_slice:output:0*
T0*
_output_shapes
: 2
layer_normalization_94/mul�
,layer_normalization_94/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_94/strided_slice_1/stack�
.layer_normalization_94/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.layer_normalization_94/strided_slice_1/stack_1�
.layer_normalization_94/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.layer_normalization_94/strided_slice_1/stack_2�
&layer_normalization_94/strided_slice_1StridedSlice%layer_normalization_94/Shape:output:05layer_normalization_94/strided_slice_1/stack:output:07layer_normalization_94/strided_slice_1/stack_1:output:07layer_normalization_94/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&layer_normalization_94/strided_slice_1�
layer_normalization_94/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2 
layer_normalization_94/mul_1/x�
layer_normalization_94/mul_1Mul'layer_normalization_94/mul_1/x:output:0/layer_normalization_94/strided_slice_1:output:0*
T0*
_output_shapes
: 2
layer_normalization_94/mul_1�
&layer_normalization_94/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2(
&layer_normalization_94/Reshape/shape/0�
&layer_normalization_94/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2(
&layer_normalization_94/Reshape/shape/3�
$layer_normalization_94/Reshape/shapePack/layer_normalization_94/Reshape/shape/0:output:0layer_normalization_94/mul:z:0 layer_normalization_94/mul_1:z:0/layer_normalization_94/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2&
$layer_normalization_94/Reshape/shape�
layer_normalization_94/ReshapeReshapedense_3004/BiasAdd:output:0-layer_normalization_94/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2 
layer_normalization_94/Reshape�
layer_normalization_94/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
layer_normalization_94/Const�
 layer_normalization_94/Fill/dimsPacklayer_normalization_94/mul:z:0*
N*
T0*
_output_shapes
:2"
 layer_normalization_94/Fill/dims�
layer_normalization_94/FillFill)layer_normalization_94/Fill/dims:output:0%layer_normalization_94/Const:output:0*
T0*#
_output_shapes
:���������2
layer_normalization_94/Fill�
layer_normalization_94/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2 
layer_normalization_94/Const_1�
"layer_normalization_94/Fill_1/dimsPacklayer_normalization_94/mul:z:0*
N*
T0*
_output_shapes
:2$
"layer_normalization_94/Fill_1/dims�
layer_normalization_94/Fill_1Fill+layer_normalization_94/Fill_1/dims:output:0'layer_normalization_94/Const_1:output:0*
T0*#
_output_shapes
:���������2
layer_normalization_94/Fill_1�
layer_normalization_94/Const_2Const*
_output_shapes
: *
dtype0*
valueB 2 
layer_normalization_94/Const_2�
layer_normalization_94/Const_3Const*
_output_shapes
: *
dtype0*
valueB 2 
layer_normalization_94/Const_3�
'layer_normalization_94/FusedBatchNormV3FusedBatchNormV3'layer_normalization_94/Reshape:output:0$layer_normalization_94/Fill:output:0&layer_normalization_94/Fill_1:output:0'layer_normalization_94/Const_2:output:0'layer_normalization_94/Const_3:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2)
'layer_normalization_94/FusedBatchNormV3�
 layer_normalization_94/Reshape_1Reshape+layer_normalization_94/FusedBatchNormV3:y:0%layer_normalization_94/Shape:output:0*
T0*'
_output_shapes
:���������M2"
 layer_normalization_94/Reshape_1�
+layer_normalization_94/mul_2/ReadVariableOpReadVariableOp4layer_normalization_94_mul_2_readvariableop_resource*
_output_shapes
:M*
dtype02-
+layer_normalization_94/mul_2/ReadVariableOp�
layer_normalization_94/mul_2Mul)layer_normalization_94/Reshape_1:output:03layer_normalization_94/mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
layer_normalization_94/mul_2�
)layer_normalization_94/add/ReadVariableOpReadVariableOp2layer_normalization_94_add_readvariableop_resource*
_output_shapes
:M*
dtype02+
)layer_normalization_94/add/ReadVariableOp�
layer_normalization_94/addAddV2 layer_normalization_94/mul_2:z:01layer_normalization_94/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
layer_normalization_94/add�
 dense_3005/MatMul/ReadVariableOpReadVariableOp)dense_3005_matmul_readvariableop_resource*
_output_shapes
:	M�@*
dtype02"
 dense_3005/MatMul/ReadVariableOp�
dense_3005/MatMulMatMullayer_normalization_94/add:z:0(dense_3005/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������@2
dense_3005/MatMul�
!dense_3005/BiasAdd/ReadVariableOpReadVariableOp*dense_3005_biasadd_readvariableop_resource*
_output_shapes	
:�@*
dtype02#
!dense_3005/BiasAdd/ReadVariableOp�
dense_3005/BiasAddBiasAdddense_3005/MatMul:product:0)dense_3005/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������@2
dense_3005/BiasAdd�

IdentityIdentitydense_3005/BiasAdd:output:0"^dense_2998/BiasAdd/ReadVariableOp!^dense_2998/MatMul/ReadVariableOp"^dense_2999/BiasAdd/ReadVariableOp!^dense_2999/MatMul/ReadVariableOp"^dense_3000/BiasAdd/ReadVariableOp!^dense_3000/MatMul/ReadVariableOp"^dense_3001/BiasAdd/ReadVariableOp!^dense_3001/MatMul/ReadVariableOp"^dense_3002/BiasAdd/ReadVariableOp!^dense_3002/MatMul/ReadVariableOp"^dense_3003/BiasAdd/ReadVariableOp!^dense_3003/MatMul/ReadVariableOp"^dense_3004/BiasAdd/ReadVariableOp!^dense_3004/MatMul/ReadVariableOp"^dense_3005/BiasAdd/ReadVariableOp!^dense_3005/MatMul/ReadVariableOp*^layer_normalization_88/add/ReadVariableOp,^layer_normalization_88/mul_2/ReadVariableOp*^layer_normalization_89/add/ReadVariableOp,^layer_normalization_89/mul_2/ReadVariableOp*^layer_normalization_90/add/ReadVariableOp,^layer_normalization_90/mul_2/ReadVariableOp*^layer_normalization_91/add/ReadVariableOp,^layer_normalization_91/mul_2/ReadVariableOp*^layer_normalization_92/add/ReadVariableOp,^layer_normalization_92/mul_2/ReadVariableOp*^layer_normalization_93/add/ReadVariableOp,^layer_normalization_93/mul_2/ReadVariableOp*^layer_normalization_94/add/ReadVariableOp,^layer_normalization_94/mul_2/ReadVariableOp*
T0*(
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:����������::::::::::::::::::::::::::::::2F
!dense_2998/BiasAdd/ReadVariableOp!dense_2998/BiasAdd/ReadVariableOp2D
 dense_2998/MatMul/ReadVariableOp dense_2998/MatMul/ReadVariableOp2F
!dense_2999/BiasAdd/ReadVariableOp!dense_2999/BiasAdd/ReadVariableOp2D
 dense_2999/MatMul/ReadVariableOp dense_2999/MatMul/ReadVariableOp2F
!dense_3000/BiasAdd/ReadVariableOp!dense_3000/BiasAdd/ReadVariableOp2D
 dense_3000/MatMul/ReadVariableOp dense_3000/MatMul/ReadVariableOp2F
!dense_3001/BiasAdd/ReadVariableOp!dense_3001/BiasAdd/ReadVariableOp2D
 dense_3001/MatMul/ReadVariableOp dense_3001/MatMul/ReadVariableOp2F
!dense_3002/BiasAdd/ReadVariableOp!dense_3002/BiasAdd/ReadVariableOp2D
 dense_3002/MatMul/ReadVariableOp dense_3002/MatMul/ReadVariableOp2F
!dense_3003/BiasAdd/ReadVariableOp!dense_3003/BiasAdd/ReadVariableOp2D
 dense_3003/MatMul/ReadVariableOp dense_3003/MatMul/ReadVariableOp2F
!dense_3004/BiasAdd/ReadVariableOp!dense_3004/BiasAdd/ReadVariableOp2D
 dense_3004/MatMul/ReadVariableOp dense_3004/MatMul/ReadVariableOp2F
!dense_3005/BiasAdd/ReadVariableOp!dense_3005/BiasAdd/ReadVariableOp2D
 dense_3005/MatMul/ReadVariableOp dense_3005/MatMul/ReadVariableOp2V
)layer_normalization_88/add/ReadVariableOp)layer_normalization_88/add/ReadVariableOp2Z
+layer_normalization_88/mul_2/ReadVariableOp+layer_normalization_88/mul_2/ReadVariableOp2V
)layer_normalization_89/add/ReadVariableOp)layer_normalization_89/add/ReadVariableOp2Z
+layer_normalization_89/mul_2/ReadVariableOp+layer_normalization_89/mul_2/ReadVariableOp2V
)layer_normalization_90/add/ReadVariableOp)layer_normalization_90/add/ReadVariableOp2Z
+layer_normalization_90/mul_2/ReadVariableOp+layer_normalization_90/mul_2/ReadVariableOp2V
)layer_normalization_91/add/ReadVariableOp)layer_normalization_91/add/ReadVariableOp2Z
+layer_normalization_91/mul_2/ReadVariableOp+layer_normalization_91/mul_2/ReadVariableOp2V
)layer_normalization_92/add/ReadVariableOp)layer_normalization_92/add/ReadVariableOp2Z
+layer_normalization_92/mul_2/ReadVariableOp+layer_normalization_92/mul_2/ReadVariableOp2V
)layer_normalization_93/add/ReadVariableOp)layer_normalization_93/add/ReadVariableOp2Z
+layer_normalization_93/mul_2/ReadVariableOp+layer_normalization_93/mul_2/ReadVariableOp2V
)layer_normalization_94/add/ReadVariableOp)layer_normalization_94/add/ReadVariableOp2Z
+layer_normalization_94/mul_2/ReadVariableOp+layer_normalization_94/mul_2/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
H__inference_dense_3002_layer_call_and_return_conditional_losses_10177925

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:MM*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:M*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�	
�
H__inference_dense_3005_layer_call_and_return_conditional_losses_10178177

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	M�@*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������@2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������@2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�
�
9__inference_layer_normalization_92_layer_call_fn_10179753

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_normalization_92_layer_call_and_return_conditional_losses_101779832
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�	
�
H__inference_dense_3001_layer_call_and_return_conditional_losses_10179623

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:MM*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:M*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�
�
-__inference_dense_3003_layer_call_fn_10179772

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_3003_layer_call_and_return_conditional_losses_101780092
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�"
�
T__inference_layer_normalization_90_layer_call_and_return_conditional_losses_10179604

inputs!
mul_2_readvariableop_resource
add_readvariableop_resource
identity��add/ReadVariableOp�mul_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_sliceP
mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
mul/xZ
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: 2
mulx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1T
mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/xb
mul_1Mulmul_1/x:output:0strided_slice_1:output:0*
T0*
_output_shapes
: 2
mul_1d
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/0d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3�
Reshape/shapePackReshape/shape/0:output:0mul:z:0	mul_1:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape�
ReshapeReshapeinputsReshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2	
ReshapeS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ConstU
	Fill/dimsPackmul:z:0*
N*
T0*
_output_shapes
:2
	Fill/dimsf
FillFillFill/dims:output:0Const:output:0*
T0*#
_output_shapes
:���������2
FillW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2	
Const_1Y
Fill_1/dimsPackmul:z:0*
N*
T0*
_output_shapes
:2
Fill_1/dimsn
Fill_1FillFill_1/dims:output:0Const_1:output:0*
T0*#
_output_shapes
:���������2
Fill_1U
Const_2Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_2U
Const_3Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_3�
FusedBatchNormV3FusedBatchNormV3Reshape:output:0Fill:output:0Fill_1:output:0Const_2:output:0Const_3:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2
FusedBatchNormV3y
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*'
_output_shapes
:���������M2
	Reshape_1�
mul_2/ReadVariableOpReadVariableOpmul_2_readvariableop_resource*
_output_shapes
:M*
dtype02
mul_2/ReadVariableOpy
mul_2MulReshape_1:output:0mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
mul_2�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:M*
dtype02
add/ReadVariableOpl
addAddV2	mul_2:z:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
add�
IdentityIdentityadd:z:0^add/ReadVariableOp^mul_2/ReadVariableOp*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�	
�
H__inference_dense_2998_layer_call_and_return_conditional_losses_10177589

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�M*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:M*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
H__inference_dense_3003_layer_call_and_return_conditional_losses_10179763

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:MM*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:M*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�"
�
T__inference_layer_normalization_88_layer_call_and_return_conditional_losses_10179464

inputs!
mul_2_readvariableop_resource
add_readvariableop_resource
identity��add/ReadVariableOp�mul_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_sliceP
mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
mul/xZ
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: 2
mulx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1T
mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/xb
mul_1Mulmul_1/x:output:0strided_slice_1:output:0*
T0*
_output_shapes
: 2
mul_1d
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/0d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3�
Reshape/shapePackReshape/shape/0:output:0mul:z:0	mul_1:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape�
ReshapeReshapeinputsReshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2	
ReshapeS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ConstU
	Fill/dimsPackmul:z:0*
N*
T0*
_output_shapes
:2
	Fill/dimsf
FillFillFill/dims:output:0Const:output:0*
T0*#
_output_shapes
:���������2
FillW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2	
Const_1Y
Fill_1/dimsPackmul:z:0*
N*
T0*
_output_shapes
:2
Fill_1/dimsn
Fill_1FillFill_1/dims:output:0Const_1:output:0*
T0*#
_output_shapes
:���������2
Fill_1U
Const_2Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_2U
Const_3Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_3�
FusedBatchNormV3FusedBatchNormV3Reshape:output:0Fill:output:0Fill_1:output:0Const_2:output:0Const_3:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2
FusedBatchNormV3y
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*'
_output_shapes
:���������M2
	Reshape_1�
mul_2/ReadVariableOpReadVariableOpmul_2_readvariableop_resource*
_output_shapes
:M*
dtype02
mul_2/ReadVariableOpy
mul_2MulReshape_1:output:0mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
mul_2�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:M*
dtype02
add/ReadVariableOpl
addAddV2	mul_2:z:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
add�
IdentityIdentityadd:z:0^add/ReadVariableOp^mul_2/ReadVariableOp*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�
�
-__inference_dense_3005_layer_call_fn_10179912

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_3005_layer_call_and_return_conditional_losses_101781772
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�
�
,__inference_model_138_layer_call_fn_10179338

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
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������@*@
_read_only_resource_inputs"
 	
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_model_138_layer_call_and_return_conditional_losses_101783552
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:����������::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
G__inference_model_138_layer_call_and_return_conditional_losses_10178955

inputs-
)dense_2998_matmul_readvariableop_resource.
*dense_2998_biasadd_readvariableop_resource8
4layer_normalization_88_mul_2_readvariableop_resource6
2layer_normalization_88_add_readvariableop_resource-
)dense_2999_matmul_readvariableop_resource.
*dense_2999_biasadd_readvariableop_resource8
4layer_normalization_89_mul_2_readvariableop_resource6
2layer_normalization_89_add_readvariableop_resource-
)dense_3000_matmul_readvariableop_resource.
*dense_3000_biasadd_readvariableop_resource8
4layer_normalization_90_mul_2_readvariableop_resource6
2layer_normalization_90_add_readvariableop_resource-
)dense_3001_matmul_readvariableop_resource.
*dense_3001_biasadd_readvariableop_resource8
4layer_normalization_91_mul_2_readvariableop_resource6
2layer_normalization_91_add_readvariableop_resource-
)dense_3002_matmul_readvariableop_resource.
*dense_3002_biasadd_readvariableop_resource8
4layer_normalization_92_mul_2_readvariableop_resource6
2layer_normalization_92_add_readvariableop_resource-
)dense_3003_matmul_readvariableop_resource.
*dense_3003_biasadd_readvariableop_resource8
4layer_normalization_93_mul_2_readvariableop_resource6
2layer_normalization_93_add_readvariableop_resource-
)dense_3004_matmul_readvariableop_resource.
*dense_3004_biasadd_readvariableop_resource8
4layer_normalization_94_mul_2_readvariableop_resource6
2layer_normalization_94_add_readvariableop_resource-
)dense_3005_matmul_readvariableop_resource.
*dense_3005_biasadd_readvariableop_resource
identity��!dense_2998/BiasAdd/ReadVariableOp� dense_2998/MatMul/ReadVariableOp�!dense_2999/BiasAdd/ReadVariableOp� dense_2999/MatMul/ReadVariableOp�!dense_3000/BiasAdd/ReadVariableOp� dense_3000/MatMul/ReadVariableOp�!dense_3001/BiasAdd/ReadVariableOp� dense_3001/MatMul/ReadVariableOp�!dense_3002/BiasAdd/ReadVariableOp� dense_3002/MatMul/ReadVariableOp�!dense_3003/BiasAdd/ReadVariableOp� dense_3003/MatMul/ReadVariableOp�!dense_3004/BiasAdd/ReadVariableOp� dense_3004/MatMul/ReadVariableOp�!dense_3005/BiasAdd/ReadVariableOp� dense_3005/MatMul/ReadVariableOp�)layer_normalization_88/add/ReadVariableOp�+layer_normalization_88/mul_2/ReadVariableOp�)layer_normalization_89/add/ReadVariableOp�+layer_normalization_89/mul_2/ReadVariableOp�)layer_normalization_90/add/ReadVariableOp�+layer_normalization_90/mul_2/ReadVariableOp�)layer_normalization_91/add/ReadVariableOp�+layer_normalization_91/mul_2/ReadVariableOp�)layer_normalization_92/add/ReadVariableOp�+layer_normalization_92/mul_2/ReadVariableOp�)layer_normalization_93/add/ReadVariableOp�+layer_normalization_93/mul_2/ReadVariableOp�)layer_normalization_94/add/ReadVariableOp�+layer_normalization_94/mul_2/ReadVariableOp�
 dense_2998/MatMul/ReadVariableOpReadVariableOp)dense_2998_matmul_readvariableop_resource*
_output_shapes
:	�M*
dtype02"
 dense_2998/MatMul/ReadVariableOp�
dense_2998/MatMulMatMulinputs(dense_2998/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
dense_2998/MatMul�
!dense_2998/BiasAdd/ReadVariableOpReadVariableOp*dense_2998_biasadd_readvariableop_resource*
_output_shapes
:M*
dtype02#
!dense_2998/BiasAdd/ReadVariableOp�
dense_2998/BiasAddBiasAdddense_2998/MatMul:product:0)dense_2998/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
dense_2998/BiasAdd�
layer_normalization_88/ShapeShapedense_2998/BiasAdd:output:0*
T0*
_output_shapes
:2
layer_normalization_88/Shape�
*layer_normalization_88/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*layer_normalization_88/strided_slice/stack�
,layer_normalization_88/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_88/strided_slice/stack_1�
,layer_normalization_88/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_88/strided_slice/stack_2�
$layer_normalization_88/strided_sliceStridedSlice%layer_normalization_88/Shape:output:03layer_normalization_88/strided_slice/stack:output:05layer_normalization_88/strided_slice/stack_1:output:05layer_normalization_88/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$layer_normalization_88/strided_slice~
layer_normalization_88/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization_88/mul/x�
layer_normalization_88/mulMul%layer_normalization_88/mul/x:output:0-layer_normalization_88/strided_slice:output:0*
T0*
_output_shapes
: 2
layer_normalization_88/mul�
,layer_normalization_88/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_88/strided_slice_1/stack�
.layer_normalization_88/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.layer_normalization_88/strided_slice_1/stack_1�
.layer_normalization_88/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.layer_normalization_88/strided_slice_1/stack_2�
&layer_normalization_88/strided_slice_1StridedSlice%layer_normalization_88/Shape:output:05layer_normalization_88/strided_slice_1/stack:output:07layer_normalization_88/strided_slice_1/stack_1:output:07layer_normalization_88/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&layer_normalization_88/strided_slice_1�
layer_normalization_88/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2 
layer_normalization_88/mul_1/x�
layer_normalization_88/mul_1Mul'layer_normalization_88/mul_1/x:output:0/layer_normalization_88/strided_slice_1:output:0*
T0*
_output_shapes
: 2
layer_normalization_88/mul_1�
&layer_normalization_88/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2(
&layer_normalization_88/Reshape/shape/0�
&layer_normalization_88/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2(
&layer_normalization_88/Reshape/shape/3�
$layer_normalization_88/Reshape/shapePack/layer_normalization_88/Reshape/shape/0:output:0layer_normalization_88/mul:z:0 layer_normalization_88/mul_1:z:0/layer_normalization_88/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2&
$layer_normalization_88/Reshape/shape�
layer_normalization_88/ReshapeReshapedense_2998/BiasAdd:output:0-layer_normalization_88/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2 
layer_normalization_88/Reshape�
layer_normalization_88/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
layer_normalization_88/Const�
 layer_normalization_88/Fill/dimsPacklayer_normalization_88/mul:z:0*
N*
T0*
_output_shapes
:2"
 layer_normalization_88/Fill/dims�
layer_normalization_88/FillFill)layer_normalization_88/Fill/dims:output:0%layer_normalization_88/Const:output:0*
T0*#
_output_shapes
:���������2
layer_normalization_88/Fill�
layer_normalization_88/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2 
layer_normalization_88/Const_1�
"layer_normalization_88/Fill_1/dimsPacklayer_normalization_88/mul:z:0*
N*
T0*
_output_shapes
:2$
"layer_normalization_88/Fill_1/dims�
layer_normalization_88/Fill_1Fill+layer_normalization_88/Fill_1/dims:output:0'layer_normalization_88/Const_1:output:0*
T0*#
_output_shapes
:���������2
layer_normalization_88/Fill_1�
layer_normalization_88/Const_2Const*
_output_shapes
: *
dtype0*
valueB 2 
layer_normalization_88/Const_2�
layer_normalization_88/Const_3Const*
_output_shapes
: *
dtype0*
valueB 2 
layer_normalization_88/Const_3�
'layer_normalization_88/FusedBatchNormV3FusedBatchNormV3'layer_normalization_88/Reshape:output:0$layer_normalization_88/Fill:output:0&layer_normalization_88/Fill_1:output:0'layer_normalization_88/Const_2:output:0'layer_normalization_88/Const_3:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2)
'layer_normalization_88/FusedBatchNormV3�
 layer_normalization_88/Reshape_1Reshape+layer_normalization_88/FusedBatchNormV3:y:0%layer_normalization_88/Shape:output:0*
T0*'
_output_shapes
:���������M2"
 layer_normalization_88/Reshape_1�
+layer_normalization_88/mul_2/ReadVariableOpReadVariableOp4layer_normalization_88_mul_2_readvariableop_resource*
_output_shapes
:M*
dtype02-
+layer_normalization_88/mul_2/ReadVariableOp�
layer_normalization_88/mul_2Mul)layer_normalization_88/Reshape_1:output:03layer_normalization_88/mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
layer_normalization_88/mul_2�
)layer_normalization_88/add/ReadVariableOpReadVariableOp2layer_normalization_88_add_readvariableop_resource*
_output_shapes
:M*
dtype02+
)layer_normalization_88/add/ReadVariableOp�
layer_normalization_88/addAddV2 layer_normalization_88/mul_2:z:01layer_normalization_88/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
layer_normalization_88/add�
 dense_2999/MatMul/ReadVariableOpReadVariableOp)dense_2999_matmul_readvariableop_resource*
_output_shapes

:MM*
dtype02"
 dense_2999/MatMul/ReadVariableOp�
dense_2999/MatMulMatMullayer_normalization_88/add:z:0(dense_2999/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
dense_2999/MatMul�
!dense_2999/BiasAdd/ReadVariableOpReadVariableOp*dense_2999_biasadd_readvariableop_resource*
_output_shapes
:M*
dtype02#
!dense_2999/BiasAdd/ReadVariableOp�
dense_2999/BiasAddBiasAdddense_2999/MatMul:product:0)dense_2999/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
dense_2999/BiasAdd�
layer_normalization_89/ShapeShapedense_2999/BiasAdd:output:0*
T0*
_output_shapes
:2
layer_normalization_89/Shape�
*layer_normalization_89/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*layer_normalization_89/strided_slice/stack�
,layer_normalization_89/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_89/strided_slice/stack_1�
,layer_normalization_89/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_89/strided_slice/stack_2�
$layer_normalization_89/strided_sliceStridedSlice%layer_normalization_89/Shape:output:03layer_normalization_89/strided_slice/stack:output:05layer_normalization_89/strided_slice/stack_1:output:05layer_normalization_89/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$layer_normalization_89/strided_slice~
layer_normalization_89/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization_89/mul/x�
layer_normalization_89/mulMul%layer_normalization_89/mul/x:output:0-layer_normalization_89/strided_slice:output:0*
T0*
_output_shapes
: 2
layer_normalization_89/mul�
,layer_normalization_89/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_89/strided_slice_1/stack�
.layer_normalization_89/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.layer_normalization_89/strided_slice_1/stack_1�
.layer_normalization_89/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.layer_normalization_89/strided_slice_1/stack_2�
&layer_normalization_89/strided_slice_1StridedSlice%layer_normalization_89/Shape:output:05layer_normalization_89/strided_slice_1/stack:output:07layer_normalization_89/strided_slice_1/stack_1:output:07layer_normalization_89/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&layer_normalization_89/strided_slice_1�
layer_normalization_89/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2 
layer_normalization_89/mul_1/x�
layer_normalization_89/mul_1Mul'layer_normalization_89/mul_1/x:output:0/layer_normalization_89/strided_slice_1:output:0*
T0*
_output_shapes
: 2
layer_normalization_89/mul_1�
&layer_normalization_89/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2(
&layer_normalization_89/Reshape/shape/0�
&layer_normalization_89/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2(
&layer_normalization_89/Reshape/shape/3�
$layer_normalization_89/Reshape/shapePack/layer_normalization_89/Reshape/shape/0:output:0layer_normalization_89/mul:z:0 layer_normalization_89/mul_1:z:0/layer_normalization_89/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2&
$layer_normalization_89/Reshape/shape�
layer_normalization_89/ReshapeReshapedense_2999/BiasAdd:output:0-layer_normalization_89/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2 
layer_normalization_89/Reshape�
layer_normalization_89/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
layer_normalization_89/Const�
 layer_normalization_89/Fill/dimsPacklayer_normalization_89/mul:z:0*
N*
T0*
_output_shapes
:2"
 layer_normalization_89/Fill/dims�
layer_normalization_89/FillFill)layer_normalization_89/Fill/dims:output:0%layer_normalization_89/Const:output:0*
T0*#
_output_shapes
:���������2
layer_normalization_89/Fill�
layer_normalization_89/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2 
layer_normalization_89/Const_1�
"layer_normalization_89/Fill_1/dimsPacklayer_normalization_89/mul:z:0*
N*
T0*
_output_shapes
:2$
"layer_normalization_89/Fill_1/dims�
layer_normalization_89/Fill_1Fill+layer_normalization_89/Fill_1/dims:output:0'layer_normalization_89/Const_1:output:0*
T0*#
_output_shapes
:���������2
layer_normalization_89/Fill_1�
layer_normalization_89/Const_2Const*
_output_shapes
: *
dtype0*
valueB 2 
layer_normalization_89/Const_2�
layer_normalization_89/Const_3Const*
_output_shapes
: *
dtype0*
valueB 2 
layer_normalization_89/Const_3�
'layer_normalization_89/FusedBatchNormV3FusedBatchNormV3'layer_normalization_89/Reshape:output:0$layer_normalization_89/Fill:output:0&layer_normalization_89/Fill_1:output:0'layer_normalization_89/Const_2:output:0'layer_normalization_89/Const_3:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2)
'layer_normalization_89/FusedBatchNormV3�
 layer_normalization_89/Reshape_1Reshape+layer_normalization_89/FusedBatchNormV3:y:0%layer_normalization_89/Shape:output:0*
T0*'
_output_shapes
:���������M2"
 layer_normalization_89/Reshape_1�
+layer_normalization_89/mul_2/ReadVariableOpReadVariableOp4layer_normalization_89_mul_2_readvariableop_resource*
_output_shapes
:M*
dtype02-
+layer_normalization_89/mul_2/ReadVariableOp�
layer_normalization_89/mul_2Mul)layer_normalization_89/Reshape_1:output:03layer_normalization_89/mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
layer_normalization_89/mul_2�
)layer_normalization_89/add/ReadVariableOpReadVariableOp2layer_normalization_89_add_readvariableop_resource*
_output_shapes
:M*
dtype02+
)layer_normalization_89/add/ReadVariableOp�
layer_normalization_89/addAddV2 layer_normalization_89/mul_2:z:01layer_normalization_89/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
layer_normalization_89/add�
 dense_3000/MatMul/ReadVariableOpReadVariableOp)dense_3000_matmul_readvariableop_resource*
_output_shapes

:MM*
dtype02"
 dense_3000/MatMul/ReadVariableOp�
dense_3000/MatMulMatMullayer_normalization_89/add:z:0(dense_3000/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
dense_3000/MatMul�
!dense_3000/BiasAdd/ReadVariableOpReadVariableOp*dense_3000_biasadd_readvariableop_resource*
_output_shapes
:M*
dtype02#
!dense_3000/BiasAdd/ReadVariableOp�
dense_3000/BiasAddBiasAdddense_3000/MatMul:product:0)dense_3000/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
dense_3000/BiasAdd�
layer_normalization_90/ShapeShapedense_3000/BiasAdd:output:0*
T0*
_output_shapes
:2
layer_normalization_90/Shape�
*layer_normalization_90/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*layer_normalization_90/strided_slice/stack�
,layer_normalization_90/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_90/strided_slice/stack_1�
,layer_normalization_90/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_90/strided_slice/stack_2�
$layer_normalization_90/strided_sliceStridedSlice%layer_normalization_90/Shape:output:03layer_normalization_90/strided_slice/stack:output:05layer_normalization_90/strided_slice/stack_1:output:05layer_normalization_90/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$layer_normalization_90/strided_slice~
layer_normalization_90/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization_90/mul/x�
layer_normalization_90/mulMul%layer_normalization_90/mul/x:output:0-layer_normalization_90/strided_slice:output:0*
T0*
_output_shapes
: 2
layer_normalization_90/mul�
,layer_normalization_90/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_90/strided_slice_1/stack�
.layer_normalization_90/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.layer_normalization_90/strided_slice_1/stack_1�
.layer_normalization_90/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.layer_normalization_90/strided_slice_1/stack_2�
&layer_normalization_90/strided_slice_1StridedSlice%layer_normalization_90/Shape:output:05layer_normalization_90/strided_slice_1/stack:output:07layer_normalization_90/strided_slice_1/stack_1:output:07layer_normalization_90/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&layer_normalization_90/strided_slice_1�
layer_normalization_90/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2 
layer_normalization_90/mul_1/x�
layer_normalization_90/mul_1Mul'layer_normalization_90/mul_1/x:output:0/layer_normalization_90/strided_slice_1:output:0*
T0*
_output_shapes
: 2
layer_normalization_90/mul_1�
&layer_normalization_90/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2(
&layer_normalization_90/Reshape/shape/0�
&layer_normalization_90/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2(
&layer_normalization_90/Reshape/shape/3�
$layer_normalization_90/Reshape/shapePack/layer_normalization_90/Reshape/shape/0:output:0layer_normalization_90/mul:z:0 layer_normalization_90/mul_1:z:0/layer_normalization_90/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2&
$layer_normalization_90/Reshape/shape�
layer_normalization_90/ReshapeReshapedense_3000/BiasAdd:output:0-layer_normalization_90/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2 
layer_normalization_90/Reshape�
layer_normalization_90/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
layer_normalization_90/Const�
 layer_normalization_90/Fill/dimsPacklayer_normalization_90/mul:z:0*
N*
T0*
_output_shapes
:2"
 layer_normalization_90/Fill/dims�
layer_normalization_90/FillFill)layer_normalization_90/Fill/dims:output:0%layer_normalization_90/Const:output:0*
T0*#
_output_shapes
:���������2
layer_normalization_90/Fill�
layer_normalization_90/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2 
layer_normalization_90/Const_1�
"layer_normalization_90/Fill_1/dimsPacklayer_normalization_90/mul:z:0*
N*
T0*
_output_shapes
:2$
"layer_normalization_90/Fill_1/dims�
layer_normalization_90/Fill_1Fill+layer_normalization_90/Fill_1/dims:output:0'layer_normalization_90/Const_1:output:0*
T0*#
_output_shapes
:���������2
layer_normalization_90/Fill_1�
layer_normalization_90/Const_2Const*
_output_shapes
: *
dtype0*
valueB 2 
layer_normalization_90/Const_2�
layer_normalization_90/Const_3Const*
_output_shapes
: *
dtype0*
valueB 2 
layer_normalization_90/Const_3�
'layer_normalization_90/FusedBatchNormV3FusedBatchNormV3'layer_normalization_90/Reshape:output:0$layer_normalization_90/Fill:output:0&layer_normalization_90/Fill_1:output:0'layer_normalization_90/Const_2:output:0'layer_normalization_90/Const_3:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2)
'layer_normalization_90/FusedBatchNormV3�
 layer_normalization_90/Reshape_1Reshape+layer_normalization_90/FusedBatchNormV3:y:0%layer_normalization_90/Shape:output:0*
T0*'
_output_shapes
:���������M2"
 layer_normalization_90/Reshape_1�
+layer_normalization_90/mul_2/ReadVariableOpReadVariableOp4layer_normalization_90_mul_2_readvariableop_resource*
_output_shapes
:M*
dtype02-
+layer_normalization_90/mul_2/ReadVariableOp�
layer_normalization_90/mul_2Mul)layer_normalization_90/Reshape_1:output:03layer_normalization_90/mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
layer_normalization_90/mul_2�
)layer_normalization_90/add/ReadVariableOpReadVariableOp2layer_normalization_90_add_readvariableop_resource*
_output_shapes
:M*
dtype02+
)layer_normalization_90/add/ReadVariableOp�
layer_normalization_90/addAddV2 layer_normalization_90/mul_2:z:01layer_normalization_90/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
layer_normalization_90/add�
 dense_3001/MatMul/ReadVariableOpReadVariableOp)dense_3001_matmul_readvariableop_resource*
_output_shapes

:MM*
dtype02"
 dense_3001/MatMul/ReadVariableOp�
dense_3001/MatMulMatMullayer_normalization_90/add:z:0(dense_3001/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
dense_3001/MatMul�
!dense_3001/BiasAdd/ReadVariableOpReadVariableOp*dense_3001_biasadd_readvariableop_resource*
_output_shapes
:M*
dtype02#
!dense_3001/BiasAdd/ReadVariableOp�
dense_3001/BiasAddBiasAdddense_3001/MatMul:product:0)dense_3001/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
dense_3001/BiasAdd�
layer_normalization_91/ShapeShapedense_3001/BiasAdd:output:0*
T0*
_output_shapes
:2
layer_normalization_91/Shape�
*layer_normalization_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*layer_normalization_91/strided_slice/stack�
,layer_normalization_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_91/strided_slice/stack_1�
,layer_normalization_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_91/strided_slice/stack_2�
$layer_normalization_91/strided_sliceStridedSlice%layer_normalization_91/Shape:output:03layer_normalization_91/strided_slice/stack:output:05layer_normalization_91/strided_slice/stack_1:output:05layer_normalization_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$layer_normalization_91/strided_slice~
layer_normalization_91/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization_91/mul/x�
layer_normalization_91/mulMul%layer_normalization_91/mul/x:output:0-layer_normalization_91/strided_slice:output:0*
T0*
_output_shapes
: 2
layer_normalization_91/mul�
,layer_normalization_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_91/strided_slice_1/stack�
.layer_normalization_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.layer_normalization_91/strided_slice_1/stack_1�
.layer_normalization_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.layer_normalization_91/strided_slice_1/stack_2�
&layer_normalization_91/strided_slice_1StridedSlice%layer_normalization_91/Shape:output:05layer_normalization_91/strided_slice_1/stack:output:07layer_normalization_91/strided_slice_1/stack_1:output:07layer_normalization_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&layer_normalization_91/strided_slice_1�
layer_normalization_91/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2 
layer_normalization_91/mul_1/x�
layer_normalization_91/mul_1Mul'layer_normalization_91/mul_1/x:output:0/layer_normalization_91/strided_slice_1:output:0*
T0*
_output_shapes
: 2
layer_normalization_91/mul_1�
&layer_normalization_91/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2(
&layer_normalization_91/Reshape/shape/0�
&layer_normalization_91/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2(
&layer_normalization_91/Reshape/shape/3�
$layer_normalization_91/Reshape/shapePack/layer_normalization_91/Reshape/shape/0:output:0layer_normalization_91/mul:z:0 layer_normalization_91/mul_1:z:0/layer_normalization_91/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2&
$layer_normalization_91/Reshape/shape�
layer_normalization_91/ReshapeReshapedense_3001/BiasAdd:output:0-layer_normalization_91/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2 
layer_normalization_91/Reshape�
layer_normalization_91/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
layer_normalization_91/Const�
 layer_normalization_91/Fill/dimsPacklayer_normalization_91/mul:z:0*
N*
T0*
_output_shapes
:2"
 layer_normalization_91/Fill/dims�
layer_normalization_91/FillFill)layer_normalization_91/Fill/dims:output:0%layer_normalization_91/Const:output:0*
T0*#
_output_shapes
:���������2
layer_normalization_91/Fill�
layer_normalization_91/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2 
layer_normalization_91/Const_1�
"layer_normalization_91/Fill_1/dimsPacklayer_normalization_91/mul:z:0*
N*
T0*
_output_shapes
:2$
"layer_normalization_91/Fill_1/dims�
layer_normalization_91/Fill_1Fill+layer_normalization_91/Fill_1/dims:output:0'layer_normalization_91/Const_1:output:0*
T0*#
_output_shapes
:���������2
layer_normalization_91/Fill_1�
layer_normalization_91/Const_2Const*
_output_shapes
: *
dtype0*
valueB 2 
layer_normalization_91/Const_2�
layer_normalization_91/Const_3Const*
_output_shapes
: *
dtype0*
valueB 2 
layer_normalization_91/Const_3�
'layer_normalization_91/FusedBatchNormV3FusedBatchNormV3'layer_normalization_91/Reshape:output:0$layer_normalization_91/Fill:output:0&layer_normalization_91/Fill_1:output:0'layer_normalization_91/Const_2:output:0'layer_normalization_91/Const_3:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2)
'layer_normalization_91/FusedBatchNormV3�
 layer_normalization_91/Reshape_1Reshape+layer_normalization_91/FusedBatchNormV3:y:0%layer_normalization_91/Shape:output:0*
T0*'
_output_shapes
:���������M2"
 layer_normalization_91/Reshape_1�
+layer_normalization_91/mul_2/ReadVariableOpReadVariableOp4layer_normalization_91_mul_2_readvariableop_resource*
_output_shapes
:M*
dtype02-
+layer_normalization_91/mul_2/ReadVariableOp�
layer_normalization_91/mul_2Mul)layer_normalization_91/Reshape_1:output:03layer_normalization_91/mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
layer_normalization_91/mul_2�
)layer_normalization_91/add/ReadVariableOpReadVariableOp2layer_normalization_91_add_readvariableop_resource*
_output_shapes
:M*
dtype02+
)layer_normalization_91/add/ReadVariableOp�
layer_normalization_91/addAddV2 layer_normalization_91/mul_2:z:01layer_normalization_91/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
layer_normalization_91/add�
 dense_3002/MatMul/ReadVariableOpReadVariableOp)dense_3002_matmul_readvariableop_resource*
_output_shapes

:MM*
dtype02"
 dense_3002/MatMul/ReadVariableOp�
dense_3002/MatMulMatMullayer_normalization_91/add:z:0(dense_3002/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
dense_3002/MatMul�
!dense_3002/BiasAdd/ReadVariableOpReadVariableOp*dense_3002_biasadd_readvariableop_resource*
_output_shapes
:M*
dtype02#
!dense_3002/BiasAdd/ReadVariableOp�
dense_3002/BiasAddBiasAdddense_3002/MatMul:product:0)dense_3002/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
dense_3002/BiasAdd�
layer_normalization_92/ShapeShapedense_3002/BiasAdd:output:0*
T0*
_output_shapes
:2
layer_normalization_92/Shape�
*layer_normalization_92/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*layer_normalization_92/strided_slice/stack�
,layer_normalization_92/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_92/strided_slice/stack_1�
,layer_normalization_92/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_92/strided_slice/stack_2�
$layer_normalization_92/strided_sliceStridedSlice%layer_normalization_92/Shape:output:03layer_normalization_92/strided_slice/stack:output:05layer_normalization_92/strided_slice/stack_1:output:05layer_normalization_92/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$layer_normalization_92/strided_slice~
layer_normalization_92/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization_92/mul/x�
layer_normalization_92/mulMul%layer_normalization_92/mul/x:output:0-layer_normalization_92/strided_slice:output:0*
T0*
_output_shapes
: 2
layer_normalization_92/mul�
,layer_normalization_92/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_92/strided_slice_1/stack�
.layer_normalization_92/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.layer_normalization_92/strided_slice_1/stack_1�
.layer_normalization_92/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.layer_normalization_92/strided_slice_1/stack_2�
&layer_normalization_92/strided_slice_1StridedSlice%layer_normalization_92/Shape:output:05layer_normalization_92/strided_slice_1/stack:output:07layer_normalization_92/strided_slice_1/stack_1:output:07layer_normalization_92/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&layer_normalization_92/strided_slice_1�
layer_normalization_92/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2 
layer_normalization_92/mul_1/x�
layer_normalization_92/mul_1Mul'layer_normalization_92/mul_1/x:output:0/layer_normalization_92/strided_slice_1:output:0*
T0*
_output_shapes
: 2
layer_normalization_92/mul_1�
&layer_normalization_92/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2(
&layer_normalization_92/Reshape/shape/0�
&layer_normalization_92/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2(
&layer_normalization_92/Reshape/shape/3�
$layer_normalization_92/Reshape/shapePack/layer_normalization_92/Reshape/shape/0:output:0layer_normalization_92/mul:z:0 layer_normalization_92/mul_1:z:0/layer_normalization_92/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2&
$layer_normalization_92/Reshape/shape�
layer_normalization_92/ReshapeReshapedense_3002/BiasAdd:output:0-layer_normalization_92/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2 
layer_normalization_92/Reshape�
layer_normalization_92/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
layer_normalization_92/Const�
 layer_normalization_92/Fill/dimsPacklayer_normalization_92/mul:z:0*
N*
T0*
_output_shapes
:2"
 layer_normalization_92/Fill/dims�
layer_normalization_92/FillFill)layer_normalization_92/Fill/dims:output:0%layer_normalization_92/Const:output:0*
T0*#
_output_shapes
:���������2
layer_normalization_92/Fill�
layer_normalization_92/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2 
layer_normalization_92/Const_1�
"layer_normalization_92/Fill_1/dimsPacklayer_normalization_92/mul:z:0*
N*
T0*
_output_shapes
:2$
"layer_normalization_92/Fill_1/dims�
layer_normalization_92/Fill_1Fill+layer_normalization_92/Fill_1/dims:output:0'layer_normalization_92/Const_1:output:0*
T0*#
_output_shapes
:���������2
layer_normalization_92/Fill_1�
layer_normalization_92/Const_2Const*
_output_shapes
: *
dtype0*
valueB 2 
layer_normalization_92/Const_2�
layer_normalization_92/Const_3Const*
_output_shapes
: *
dtype0*
valueB 2 
layer_normalization_92/Const_3�
'layer_normalization_92/FusedBatchNormV3FusedBatchNormV3'layer_normalization_92/Reshape:output:0$layer_normalization_92/Fill:output:0&layer_normalization_92/Fill_1:output:0'layer_normalization_92/Const_2:output:0'layer_normalization_92/Const_3:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2)
'layer_normalization_92/FusedBatchNormV3�
 layer_normalization_92/Reshape_1Reshape+layer_normalization_92/FusedBatchNormV3:y:0%layer_normalization_92/Shape:output:0*
T0*'
_output_shapes
:���������M2"
 layer_normalization_92/Reshape_1�
+layer_normalization_92/mul_2/ReadVariableOpReadVariableOp4layer_normalization_92_mul_2_readvariableop_resource*
_output_shapes
:M*
dtype02-
+layer_normalization_92/mul_2/ReadVariableOp�
layer_normalization_92/mul_2Mul)layer_normalization_92/Reshape_1:output:03layer_normalization_92/mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
layer_normalization_92/mul_2�
)layer_normalization_92/add/ReadVariableOpReadVariableOp2layer_normalization_92_add_readvariableop_resource*
_output_shapes
:M*
dtype02+
)layer_normalization_92/add/ReadVariableOp�
layer_normalization_92/addAddV2 layer_normalization_92/mul_2:z:01layer_normalization_92/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
layer_normalization_92/add�
 dense_3003/MatMul/ReadVariableOpReadVariableOp)dense_3003_matmul_readvariableop_resource*
_output_shapes

:MM*
dtype02"
 dense_3003/MatMul/ReadVariableOp�
dense_3003/MatMulMatMullayer_normalization_92/add:z:0(dense_3003/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
dense_3003/MatMul�
!dense_3003/BiasAdd/ReadVariableOpReadVariableOp*dense_3003_biasadd_readvariableop_resource*
_output_shapes
:M*
dtype02#
!dense_3003/BiasAdd/ReadVariableOp�
dense_3003/BiasAddBiasAdddense_3003/MatMul:product:0)dense_3003/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
dense_3003/BiasAdd�
layer_normalization_93/ShapeShapedense_3003/BiasAdd:output:0*
T0*
_output_shapes
:2
layer_normalization_93/Shape�
*layer_normalization_93/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*layer_normalization_93/strided_slice/stack�
,layer_normalization_93/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_93/strided_slice/stack_1�
,layer_normalization_93/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_93/strided_slice/stack_2�
$layer_normalization_93/strided_sliceStridedSlice%layer_normalization_93/Shape:output:03layer_normalization_93/strided_slice/stack:output:05layer_normalization_93/strided_slice/stack_1:output:05layer_normalization_93/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$layer_normalization_93/strided_slice~
layer_normalization_93/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization_93/mul/x�
layer_normalization_93/mulMul%layer_normalization_93/mul/x:output:0-layer_normalization_93/strided_slice:output:0*
T0*
_output_shapes
: 2
layer_normalization_93/mul�
,layer_normalization_93/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_93/strided_slice_1/stack�
.layer_normalization_93/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.layer_normalization_93/strided_slice_1/stack_1�
.layer_normalization_93/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.layer_normalization_93/strided_slice_1/stack_2�
&layer_normalization_93/strided_slice_1StridedSlice%layer_normalization_93/Shape:output:05layer_normalization_93/strided_slice_1/stack:output:07layer_normalization_93/strided_slice_1/stack_1:output:07layer_normalization_93/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&layer_normalization_93/strided_slice_1�
layer_normalization_93/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2 
layer_normalization_93/mul_1/x�
layer_normalization_93/mul_1Mul'layer_normalization_93/mul_1/x:output:0/layer_normalization_93/strided_slice_1:output:0*
T0*
_output_shapes
: 2
layer_normalization_93/mul_1�
&layer_normalization_93/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2(
&layer_normalization_93/Reshape/shape/0�
&layer_normalization_93/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2(
&layer_normalization_93/Reshape/shape/3�
$layer_normalization_93/Reshape/shapePack/layer_normalization_93/Reshape/shape/0:output:0layer_normalization_93/mul:z:0 layer_normalization_93/mul_1:z:0/layer_normalization_93/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2&
$layer_normalization_93/Reshape/shape�
layer_normalization_93/ReshapeReshapedense_3003/BiasAdd:output:0-layer_normalization_93/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2 
layer_normalization_93/Reshape�
layer_normalization_93/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
layer_normalization_93/Const�
 layer_normalization_93/Fill/dimsPacklayer_normalization_93/mul:z:0*
N*
T0*
_output_shapes
:2"
 layer_normalization_93/Fill/dims�
layer_normalization_93/FillFill)layer_normalization_93/Fill/dims:output:0%layer_normalization_93/Const:output:0*
T0*#
_output_shapes
:���������2
layer_normalization_93/Fill�
layer_normalization_93/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2 
layer_normalization_93/Const_1�
"layer_normalization_93/Fill_1/dimsPacklayer_normalization_93/mul:z:0*
N*
T0*
_output_shapes
:2$
"layer_normalization_93/Fill_1/dims�
layer_normalization_93/Fill_1Fill+layer_normalization_93/Fill_1/dims:output:0'layer_normalization_93/Const_1:output:0*
T0*#
_output_shapes
:���������2
layer_normalization_93/Fill_1�
layer_normalization_93/Const_2Const*
_output_shapes
: *
dtype0*
valueB 2 
layer_normalization_93/Const_2�
layer_normalization_93/Const_3Const*
_output_shapes
: *
dtype0*
valueB 2 
layer_normalization_93/Const_3�
'layer_normalization_93/FusedBatchNormV3FusedBatchNormV3'layer_normalization_93/Reshape:output:0$layer_normalization_93/Fill:output:0&layer_normalization_93/Fill_1:output:0'layer_normalization_93/Const_2:output:0'layer_normalization_93/Const_3:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2)
'layer_normalization_93/FusedBatchNormV3�
 layer_normalization_93/Reshape_1Reshape+layer_normalization_93/FusedBatchNormV3:y:0%layer_normalization_93/Shape:output:0*
T0*'
_output_shapes
:���������M2"
 layer_normalization_93/Reshape_1�
+layer_normalization_93/mul_2/ReadVariableOpReadVariableOp4layer_normalization_93_mul_2_readvariableop_resource*
_output_shapes
:M*
dtype02-
+layer_normalization_93/mul_2/ReadVariableOp�
layer_normalization_93/mul_2Mul)layer_normalization_93/Reshape_1:output:03layer_normalization_93/mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
layer_normalization_93/mul_2�
)layer_normalization_93/add/ReadVariableOpReadVariableOp2layer_normalization_93_add_readvariableop_resource*
_output_shapes
:M*
dtype02+
)layer_normalization_93/add/ReadVariableOp�
layer_normalization_93/addAddV2 layer_normalization_93/mul_2:z:01layer_normalization_93/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
layer_normalization_93/add�
 dense_3004/MatMul/ReadVariableOpReadVariableOp)dense_3004_matmul_readvariableop_resource*
_output_shapes

:MM*
dtype02"
 dense_3004/MatMul/ReadVariableOp�
dense_3004/MatMulMatMullayer_normalization_93/add:z:0(dense_3004/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
dense_3004/MatMul�
!dense_3004/BiasAdd/ReadVariableOpReadVariableOp*dense_3004_biasadd_readvariableop_resource*
_output_shapes
:M*
dtype02#
!dense_3004/BiasAdd/ReadVariableOp�
dense_3004/BiasAddBiasAdddense_3004/MatMul:product:0)dense_3004/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
dense_3004/BiasAdd�
layer_normalization_94/ShapeShapedense_3004/BiasAdd:output:0*
T0*
_output_shapes
:2
layer_normalization_94/Shape�
*layer_normalization_94/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*layer_normalization_94/strided_slice/stack�
,layer_normalization_94/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_94/strided_slice/stack_1�
,layer_normalization_94/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_94/strided_slice/stack_2�
$layer_normalization_94/strided_sliceStridedSlice%layer_normalization_94/Shape:output:03layer_normalization_94/strided_slice/stack:output:05layer_normalization_94/strided_slice/stack_1:output:05layer_normalization_94/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$layer_normalization_94/strided_slice~
layer_normalization_94/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization_94/mul/x�
layer_normalization_94/mulMul%layer_normalization_94/mul/x:output:0-layer_normalization_94/strided_slice:output:0*
T0*
_output_shapes
: 2
layer_normalization_94/mul�
,layer_normalization_94/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2.
,layer_normalization_94/strided_slice_1/stack�
.layer_normalization_94/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.layer_normalization_94/strided_slice_1/stack_1�
.layer_normalization_94/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.layer_normalization_94/strided_slice_1/stack_2�
&layer_normalization_94/strided_slice_1StridedSlice%layer_normalization_94/Shape:output:05layer_normalization_94/strided_slice_1/stack:output:07layer_normalization_94/strided_slice_1/stack_1:output:07layer_normalization_94/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&layer_normalization_94/strided_slice_1�
layer_normalization_94/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2 
layer_normalization_94/mul_1/x�
layer_normalization_94/mul_1Mul'layer_normalization_94/mul_1/x:output:0/layer_normalization_94/strided_slice_1:output:0*
T0*
_output_shapes
: 2
layer_normalization_94/mul_1�
&layer_normalization_94/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2(
&layer_normalization_94/Reshape/shape/0�
&layer_normalization_94/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2(
&layer_normalization_94/Reshape/shape/3�
$layer_normalization_94/Reshape/shapePack/layer_normalization_94/Reshape/shape/0:output:0layer_normalization_94/mul:z:0 layer_normalization_94/mul_1:z:0/layer_normalization_94/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2&
$layer_normalization_94/Reshape/shape�
layer_normalization_94/ReshapeReshapedense_3004/BiasAdd:output:0-layer_normalization_94/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2 
layer_normalization_94/Reshape�
layer_normalization_94/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
layer_normalization_94/Const�
 layer_normalization_94/Fill/dimsPacklayer_normalization_94/mul:z:0*
N*
T0*
_output_shapes
:2"
 layer_normalization_94/Fill/dims�
layer_normalization_94/FillFill)layer_normalization_94/Fill/dims:output:0%layer_normalization_94/Const:output:0*
T0*#
_output_shapes
:���������2
layer_normalization_94/Fill�
layer_normalization_94/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2 
layer_normalization_94/Const_1�
"layer_normalization_94/Fill_1/dimsPacklayer_normalization_94/mul:z:0*
N*
T0*
_output_shapes
:2$
"layer_normalization_94/Fill_1/dims�
layer_normalization_94/Fill_1Fill+layer_normalization_94/Fill_1/dims:output:0'layer_normalization_94/Const_1:output:0*
T0*#
_output_shapes
:���������2
layer_normalization_94/Fill_1�
layer_normalization_94/Const_2Const*
_output_shapes
: *
dtype0*
valueB 2 
layer_normalization_94/Const_2�
layer_normalization_94/Const_3Const*
_output_shapes
: *
dtype0*
valueB 2 
layer_normalization_94/Const_3�
'layer_normalization_94/FusedBatchNormV3FusedBatchNormV3'layer_normalization_94/Reshape:output:0$layer_normalization_94/Fill:output:0&layer_normalization_94/Fill_1:output:0'layer_normalization_94/Const_2:output:0'layer_normalization_94/Const_3:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2)
'layer_normalization_94/FusedBatchNormV3�
 layer_normalization_94/Reshape_1Reshape+layer_normalization_94/FusedBatchNormV3:y:0%layer_normalization_94/Shape:output:0*
T0*'
_output_shapes
:���������M2"
 layer_normalization_94/Reshape_1�
+layer_normalization_94/mul_2/ReadVariableOpReadVariableOp4layer_normalization_94_mul_2_readvariableop_resource*
_output_shapes
:M*
dtype02-
+layer_normalization_94/mul_2/ReadVariableOp�
layer_normalization_94/mul_2Mul)layer_normalization_94/Reshape_1:output:03layer_normalization_94/mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
layer_normalization_94/mul_2�
)layer_normalization_94/add/ReadVariableOpReadVariableOp2layer_normalization_94_add_readvariableop_resource*
_output_shapes
:M*
dtype02+
)layer_normalization_94/add/ReadVariableOp�
layer_normalization_94/addAddV2 layer_normalization_94/mul_2:z:01layer_normalization_94/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
layer_normalization_94/add�
 dense_3005/MatMul/ReadVariableOpReadVariableOp)dense_3005_matmul_readvariableop_resource*
_output_shapes
:	M�@*
dtype02"
 dense_3005/MatMul/ReadVariableOp�
dense_3005/MatMulMatMullayer_normalization_94/add:z:0(dense_3005/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������@2
dense_3005/MatMul�
!dense_3005/BiasAdd/ReadVariableOpReadVariableOp*dense_3005_biasadd_readvariableop_resource*
_output_shapes	
:�@*
dtype02#
!dense_3005/BiasAdd/ReadVariableOp�
dense_3005/BiasAddBiasAdddense_3005/MatMul:product:0)dense_3005/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������@2
dense_3005/BiasAdd�

IdentityIdentitydense_3005/BiasAdd:output:0"^dense_2998/BiasAdd/ReadVariableOp!^dense_2998/MatMul/ReadVariableOp"^dense_2999/BiasAdd/ReadVariableOp!^dense_2999/MatMul/ReadVariableOp"^dense_3000/BiasAdd/ReadVariableOp!^dense_3000/MatMul/ReadVariableOp"^dense_3001/BiasAdd/ReadVariableOp!^dense_3001/MatMul/ReadVariableOp"^dense_3002/BiasAdd/ReadVariableOp!^dense_3002/MatMul/ReadVariableOp"^dense_3003/BiasAdd/ReadVariableOp!^dense_3003/MatMul/ReadVariableOp"^dense_3004/BiasAdd/ReadVariableOp!^dense_3004/MatMul/ReadVariableOp"^dense_3005/BiasAdd/ReadVariableOp!^dense_3005/MatMul/ReadVariableOp*^layer_normalization_88/add/ReadVariableOp,^layer_normalization_88/mul_2/ReadVariableOp*^layer_normalization_89/add/ReadVariableOp,^layer_normalization_89/mul_2/ReadVariableOp*^layer_normalization_90/add/ReadVariableOp,^layer_normalization_90/mul_2/ReadVariableOp*^layer_normalization_91/add/ReadVariableOp,^layer_normalization_91/mul_2/ReadVariableOp*^layer_normalization_92/add/ReadVariableOp,^layer_normalization_92/mul_2/ReadVariableOp*^layer_normalization_93/add/ReadVariableOp,^layer_normalization_93/mul_2/ReadVariableOp*^layer_normalization_94/add/ReadVariableOp,^layer_normalization_94/mul_2/ReadVariableOp*
T0*(
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:����������::::::::::::::::::::::::::::::2F
!dense_2998/BiasAdd/ReadVariableOp!dense_2998/BiasAdd/ReadVariableOp2D
 dense_2998/MatMul/ReadVariableOp dense_2998/MatMul/ReadVariableOp2F
!dense_2999/BiasAdd/ReadVariableOp!dense_2999/BiasAdd/ReadVariableOp2D
 dense_2999/MatMul/ReadVariableOp dense_2999/MatMul/ReadVariableOp2F
!dense_3000/BiasAdd/ReadVariableOp!dense_3000/BiasAdd/ReadVariableOp2D
 dense_3000/MatMul/ReadVariableOp dense_3000/MatMul/ReadVariableOp2F
!dense_3001/BiasAdd/ReadVariableOp!dense_3001/BiasAdd/ReadVariableOp2D
 dense_3001/MatMul/ReadVariableOp dense_3001/MatMul/ReadVariableOp2F
!dense_3002/BiasAdd/ReadVariableOp!dense_3002/BiasAdd/ReadVariableOp2D
 dense_3002/MatMul/ReadVariableOp dense_3002/MatMul/ReadVariableOp2F
!dense_3003/BiasAdd/ReadVariableOp!dense_3003/BiasAdd/ReadVariableOp2D
 dense_3003/MatMul/ReadVariableOp dense_3003/MatMul/ReadVariableOp2F
!dense_3004/BiasAdd/ReadVariableOp!dense_3004/BiasAdd/ReadVariableOp2D
 dense_3004/MatMul/ReadVariableOp dense_3004/MatMul/ReadVariableOp2F
!dense_3005/BiasAdd/ReadVariableOp!dense_3005/BiasAdd/ReadVariableOp2D
 dense_3005/MatMul/ReadVariableOp dense_3005/MatMul/ReadVariableOp2V
)layer_normalization_88/add/ReadVariableOp)layer_normalization_88/add/ReadVariableOp2Z
+layer_normalization_88/mul_2/ReadVariableOp+layer_normalization_88/mul_2/ReadVariableOp2V
)layer_normalization_89/add/ReadVariableOp)layer_normalization_89/add/ReadVariableOp2Z
+layer_normalization_89/mul_2/ReadVariableOp+layer_normalization_89/mul_2/ReadVariableOp2V
)layer_normalization_90/add/ReadVariableOp)layer_normalization_90/add/ReadVariableOp2Z
+layer_normalization_90/mul_2/ReadVariableOp+layer_normalization_90/mul_2/ReadVariableOp2V
)layer_normalization_91/add/ReadVariableOp)layer_normalization_91/add/ReadVariableOp2Z
+layer_normalization_91/mul_2/ReadVariableOp+layer_normalization_91/mul_2/ReadVariableOp2V
)layer_normalization_92/add/ReadVariableOp)layer_normalization_92/add/ReadVariableOp2Z
+layer_normalization_92/mul_2/ReadVariableOp+layer_normalization_92/mul_2/ReadVariableOp2V
)layer_normalization_93/add/ReadVariableOp)layer_normalization_93/add/ReadVariableOp2Z
+layer_normalization_93/mul_2/ReadVariableOp+layer_normalization_93/mul_2/ReadVariableOp2V
)layer_normalization_94/add/ReadVariableOp)layer_normalization_94/add/ReadVariableOp2Z
+layer_normalization_94/mul_2/ReadVariableOp+layer_normalization_94/mul_2/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
H__inference_dense_3000_layer_call_and_return_conditional_losses_10177757

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:MM*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:M*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�"
�
T__inference_layer_normalization_93_layer_call_and_return_conditional_losses_10178067

inputs!
mul_2_readvariableop_resource
add_readvariableop_resource
identity��add/ReadVariableOp�mul_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_sliceP
mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
mul/xZ
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: 2
mulx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1T
mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/xb
mul_1Mulmul_1/x:output:0strided_slice_1:output:0*
T0*
_output_shapes
: 2
mul_1d
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/0d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3�
Reshape/shapePackReshape/shape/0:output:0mul:z:0	mul_1:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape�
ReshapeReshapeinputsReshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2	
ReshapeS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ConstU
	Fill/dimsPackmul:z:0*
N*
T0*
_output_shapes
:2
	Fill/dimsf
FillFillFill/dims:output:0Const:output:0*
T0*#
_output_shapes
:���������2
FillW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2	
Const_1Y
Fill_1/dimsPackmul:z:0*
N*
T0*
_output_shapes
:2
Fill_1/dimsn
Fill_1FillFill_1/dims:output:0Const_1:output:0*
T0*#
_output_shapes
:���������2
Fill_1U
Const_2Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_2U
Const_3Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_3�
FusedBatchNormV3FusedBatchNormV3Reshape:output:0Fill:output:0Fill_1:output:0Const_2:output:0Const_3:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2
FusedBatchNormV3y
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*'
_output_shapes
:���������M2
	Reshape_1�
mul_2/ReadVariableOpReadVariableOpmul_2_readvariableop_resource*
_output_shapes
:M*
dtype02
mul_2/ReadVariableOpy
mul_2MulReshape_1:output:0mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
mul_2�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:M*
dtype02
add/ReadVariableOpl
addAddV2	mul_2:z:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
add�
IdentityIdentityadd:z:0^add/ReadVariableOp^mul_2/ReadVariableOp*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�Y
�
G__inference_model_138_layer_call_and_return_conditional_losses_10178194
	input_144
dense_2998_10177600
dense_2998_10177602#
layer_normalization_88_10177658#
layer_normalization_88_10177660
dense_2999_10177684
dense_2999_10177686#
layer_normalization_89_10177742#
layer_normalization_89_10177744
dense_3000_10177768
dense_3000_10177770#
layer_normalization_90_10177826#
layer_normalization_90_10177828
dense_3001_10177852
dense_3001_10177854#
layer_normalization_91_10177910#
layer_normalization_91_10177912
dense_3002_10177936
dense_3002_10177938#
layer_normalization_92_10177994#
layer_normalization_92_10177996
dense_3003_10178020
dense_3003_10178022#
layer_normalization_93_10178078#
layer_normalization_93_10178080
dense_3004_10178104
dense_3004_10178106#
layer_normalization_94_10178162#
layer_normalization_94_10178164
dense_3005_10178188
dense_3005_10178190
identity��"dense_2998/StatefulPartitionedCall�"dense_2999/StatefulPartitionedCall�"dense_3000/StatefulPartitionedCall�"dense_3001/StatefulPartitionedCall�"dense_3002/StatefulPartitionedCall�"dense_3003/StatefulPartitionedCall�"dense_3004/StatefulPartitionedCall�"dense_3005/StatefulPartitionedCall�.layer_normalization_88/StatefulPartitionedCall�.layer_normalization_89/StatefulPartitionedCall�.layer_normalization_90/StatefulPartitionedCall�.layer_normalization_91/StatefulPartitionedCall�.layer_normalization_92/StatefulPartitionedCall�.layer_normalization_93/StatefulPartitionedCall�.layer_normalization_94/StatefulPartitionedCall�
"dense_2998/StatefulPartitionedCallStatefulPartitionedCall	input_144dense_2998_10177600dense_2998_10177602*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_2998_layer_call_and_return_conditional_losses_101775892$
"dense_2998/StatefulPartitionedCall�
.layer_normalization_88/StatefulPartitionedCallStatefulPartitionedCall+dense_2998/StatefulPartitionedCall:output:0layer_normalization_88_10177658layer_normalization_88_10177660*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_normalization_88_layer_call_and_return_conditional_losses_1017764720
.layer_normalization_88/StatefulPartitionedCall�
"dense_2999/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_88/StatefulPartitionedCall:output:0dense_2999_10177684dense_2999_10177686*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_2999_layer_call_and_return_conditional_losses_101776732$
"dense_2999/StatefulPartitionedCall�
.layer_normalization_89/StatefulPartitionedCallStatefulPartitionedCall+dense_2999/StatefulPartitionedCall:output:0layer_normalization_89_10177742layer_normalization_89_10177744*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_normalization_89_layer_call_and_return_conditional_losses_1017773120
.layer_normalization_89/StatefulPartitionedCall�
"dense_3000/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_89/StatefulPartitionedCall:output:0dense_3000_10177768dense_3000_10177770*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_3000_layer_call_and_return_conditional_losses_101777572$
"dense_3000/StatefulPartitionedCall�
.layer_normalization_90/StatefulPartitionedCallStatefulPartitionedCall+dense_3000/StatefulPartitionedCall:output:0layer_normalization_90_10177826layer_normalization_90_10177828*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_normalization_90_layer_call_and_return_conditional_losses_1017781520
.layer_normalization_90/StatefulPartitionedCall�
"dense_3001/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_90/StatefulPartitionedCall:output:0dense_3001_10177852dense_3001_10177854*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_3001_layer_call_and_return_conditional_losses_101778412$
"dense_3001/StatefulPartitionedCall�
.layer_normalization_91/StatefulPartitionedCallStatefulPartitionedCall+dense_3001/StatefulPartitionedCall:output:0layer_normalization_91_10177910layer_normalization_91_10177912*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_normalization_91_layer_call_and_return_conditional_losses_1017789920
.layer_normalization_91/StatefulPartitionedCall�
"dense_3002/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_91/StatefulPartitionedCall:output:0dense_3002_10177936dense_3002_10177938*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_3002_layer_call_and_return_conditional_losses_101779252$
"dense_3002/StatefulPartitionedCall�
.layer_normalization_92/StatefulPartitionedCallStatefulPartitionedCall+dense_3002/StatefulPartitionedCall:output:0layer_normalization_92_10177994layer_normalization_92_10177996*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_normalization_92_layer_call_and_return_conditional_losses_1017798320
.layer_normalization_92/StatefulPartitionedCall�
"dense_3003/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_92/StatefulPartitionedCall:output:0dense_3003_10178020dense_3003_10178022*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_3003_layer_call_and_return_conditional_losses_101780092$
"dense_3003/StatefulPartitionedCall�
.layer_normalization_93/StatefulPartitionedCallStatefulPartitionedCall+dense_3003/StatefulPartitionedCall:output:0layer_normalization_93_10178078layer_normalization_93_10178080*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_normalization_93_layer_call_and_return_conditional_losses_1017806720
.layer_normalization_93/StatefulPartitionedCall�
"dense_3004/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_93/StatefulPartitionedCall:output:0dense_3004_10178104dense_3004_10178106*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_3004_layer_call_and_return_conditional_losses_101780932$
"dense_3004/StatefulPartitionedCall�
.layer_normalization_94/StatefulPartitionedCallStatefulPartitionedCall+dense_3004/StatefulPartitionedCall:output:0layer_normalization_94_10178162layer_normalization_94_10178164*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_normalization_94_layer_call_and_return_conditional_losses_1017815120
.layer_normalization_94/StatefulPartitionedCall�
"dense_3005/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_94/StatefulPartitionedCall:output:0dense_3005_10178188dense_3005_10178190*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_3005_layer_call_and_return_conditional_losses_101781772$
"dense_3005/StatefulPartitionedCall�
IdentityIdentity+dense_3005/StatefulPartitionedCall:output:0#^dense_2998/StatefulPartitionedCall#^dense_2999/StatefulPartitionedCall#^dense_3000/StatefulPartitionedCall#^dense_3001/StatefulPartitionedCall#^dense_3002/StatefulPartitionedCall#^dense_3003/StatefulPartitionedCall#^dense_3004/StatefulPartitionedCall#^dense_3005/StatefulPartitionedCall/^layer_normalization_88/StatefulPartitionedCall/^layer_normalization_89/StatefulPartitionedCall/^layer_normalization_90/StatefulPartitionedCall/^layer_normalization_91/StatefulPartitionedCall/^layer_normalization_92/StatefulPartitionedCall/^layer_normalization_93/StatefulPartitionedCall/^layer_normalization_94/StatefulPartitionedCall*
T0*(
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:����������::::::::::::::::::::::::::::::2H
"dense_2998/StatefulPartitionedCall"dense_2998/StatefulPartitionedCall2H
"dense_2999/StatefulPartitionedCall"dense_2999/StatefulPartitionedCall2H
"dense_3000/StatefulPartitionedCall"dense_3000/StatefulPartitionedCall2H
"dense_3001/StatefulPartitionedCall"dense_3001/StatefulPartitionedCall2H
"dense_3002/StatefulPartitionedCall"dense_3002/StatefulPartitionedCall2H
"dense_3003/StatefulPartitionedCall"dense_3003/StatefulPartitionedCall2H
"dense_3004/StatefulPartitionedCall"dense_3004/StatefulPartitionedCall2H
"dense_3005/StatefulPartitionedCall"dense_3005/StatefulPartitionedCall2`
.layer_normalization_88/StatefulPartitionedCall.layer_normalization_88/StatefulPartitionedCall2`
.layer_normalization_89/StatefulPartitionedCall.layer_normalization_89/StatefulPartitionedCall2`
.layer_normalization_90/StatefulPartitionedCall.layer_normalization_90/StatefulPartitionedCall2`
.layer_normalization_91/StatefulPartitionedCall.layer_normalization_91/StatefulPartitionedCall2`
.layer_normalization_92/StatefulPartitionedCall.layer_normalization_92/StatefulPartitionedCall2`
.layer_normalization_93/StatefulPartitionedCall.layer_normalization_93/StatefulPartitionedCall2`
.layer_normalization_94/StatefulPartitionedCall.layer_normalization_94/StatefulPartitionedCall:S O
(
_output_shapes
:����������
#
_user_specified_name	input_144
�"
�
T__inference_layer_normalization_92_layer_call_and_return_conditional_losses_10179744

inputs!
mul_2_readvariableop_resource
add_readvariableop_resource
identity��add/ReadVariableOp�mul_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_sliceP
mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
mul/xZ
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: 2
mulx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1T
mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/xb
mul_1Mulmul_1/x:output:0strided_slice_1:output:0*
T0*
_output_shapes
: 2
mul_1d
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/0d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3�
Reshape/shapePackReshape/shape/0:output:0mul:z:0	mul_1:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape�
ReshapeReshapeinputsReshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2	
ReshapeS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ConstU
	Fill/dimsPackmul:z:0*
N*
T0*
_output_shapes
:2
	Fill/dimsf
FillFillFill/dims:output:0Const:output:0*
T0*#
_output_shapes
:���������2
FillW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2	
Const_1Y
Fill_1/dimsPackmul:z:0*
N*
T0*
_output_shapes
:2
Fill_1/dimsn
Fill_1FillFill_1/dims:output:0Const_1:output:0*
T0*#
_output_shapes
:���������2
Fill_1U
Const_2Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_2U
Const_3Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_3�
FusedBatchNormV3FusedBatchNormV3Reshape:output:0Fill:output:0Fill_1:output:0Const_2:output:0Const_3:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2
FusedBatchNormV3y
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*'
_output_shapes
:���������M2
	Reshape_1�
mul_2/ReadVariableOpReadVariableOpmul_2_readvariableop_resource*
_output_shapes
:M*
dtype02
mul_2/ReadVariableOpy
mul_2MulReshape_1:output:0mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
mul_2�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:M*
dtype02
add/ReadVariableOpl
addAddV2	mul_2:z:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
add�
IdentityIdentityadd:z:0^add/ReadVariableOp^mul_2/ReadVariableOp*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�"
�
T__inference_layer_normalization_93_layer_call_and_return_conditional_losses_10179814

inputs!
mul_2_readvariableop_resource
add_readvariableop_resource
identity��add/ReadVariableOp�mul_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_sliceP
mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
mul/xZ
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: 2
mulx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1T
mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/xb
mul_1Mulmul_1/x:output:0strided_slice_1:output:0*
T0*
_output_shapes
: 2
mul_1d
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/0d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3�
Reshape/shapePackReshape/shape/0:output:0mul:z:0	mul_1:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape�
ReshapeReshapeinputsReshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2	
ReshapeS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ConstU
	Fill/dimsPackmul:z:0*
N*
T0*
_output_shapes
:2
	Fill/dimsf
FillFillFill/dims:output:0Const:output:0*
T0*#
_output_shapes
:���������2
FillW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    2	
Const_1Y
Fill_1/dimsPackmul:z:0*
N*
T0*
_output_shapes
:2
Fill_1/dimsn
Fill_1FillFill_1/dims:output:0Const_1:output:0*
T0*#
_output_shapes
:���������2
Fill_1U
Const_2Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_2U
Const_3Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_3�
FusedBatchNormV3FusedBatchNormV3Reshape:output:0Fill:output:0Fill_1:output:0Const_2:output:0Const_3:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2
FusedBatchNormV3y
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*'
_output_shapes
:���������M2
	Reshape_1�
mul_2/ReadVariableOpReadVariableOpmul_2_readvariableop_resource*
_output_shapes
:M*
dtype02
mul_2/ReadVariableOpy
mul_2MulReshape_1:output:0mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
mul_2�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:M*
dtype02
add/ReadVariableOpl
addAddV2	mul_2:z:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
add�
IdentityIdentityadd:z:0^add/ReadVariableOp^mul_2/ReadVariableOp*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�Y
�
G__inference_model_138_layer_call_and_return_conditional_losses_10178499

inputs
dense_2998_10178423
dense_2998_10178425#
layer_normalization_88_10178428#
layer_normalization_88_10178430
dense_2999_10178433
dense_2999_10178435#
layer_normalization_89_10178438#
layer_normalization_89_10178440
dense_3000_10178443
dense_3000_10178445#
layer_normalization_90_10178448#
layer_normalization_90_10178450
dense_3001_10178453
dense_3001_10178455#
layer_normalization_91_10178458#
layer_normalization_91_10178460
dense_3002_10178463
dense_3002_10178465#
layer_normalization_92_10178468#
layer_normalization_92_10178470
dense_3003_10178473
dense_3003_10178475#
layer_normalization_93_10178478#
layer_normalization_93_10178480
dense_3004_10178483
dense_3004_10178485#
layer_normalization_94_10178488#
layer_normalization_94_10178490
dense_3005_10178493
dense_3005_10178495
identity��"dense_2998/StatefulPartitionedCall�"dense_2999/StatefulPartitionedCall�"dense_3000/StatefulPartitionedCall�"dense_3001/StatefulPartitionedCall�"dense_3002/StatefulPartitionedCall�"dense_3003/StatefulPartitionedCall�"dense_3004/StatefulPartitionedCall�"dense_3005/StatefulPartitionedCall�.layer_normalization_88/StatefulPartitionedCall�.layer_normalization_89/StatefulPartitionedCall�.layer_normalization_90/StatefulPartitionedCall�.layer_normalization_91/StatefulPartitionedCall�.layer_normalization_92/StatefulPartitionedCall�.layer_normalization_93/StatefulPartitionedCall�.layer_normalization_94/StatefulPartitionedCall�
"dense_2998/StatefulPartitionedCallStatefulPartitionedCallinputsdense_2998_10178423dense_2998_10178425*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_2998_layer_call_and_return_conditional_losses_101775892$
"dense_2998/StatefulPartitionedCall�
.layer_normalization_88/StatefulPartitionedCallStatefulPartitionedCall+dense_2998/StatefulPartitionedCall:output:0layer_normalization_88_10178428layer_normalization_88_10178430*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_normalization_88_layer_call_and_return_conditional_losses_1017764720
.layer_normalization_88/StatefulPartitionedCall�
"dense_2999/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_88/StatefulPartitionedCall:output:0dense_2999_10178433dense_2999_10178435*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_2999_layer_call_and_return_conditional_losses_101776732$
"dense_2999/StatefulPartitionedCall�
.layer_normalization_89/StatefulPartitionedCallStatefulPartitionedCall+dense_2999/StatefulPartitionedCall:output:0layer_normalization_89_10178438layer_normalization_89_10178440*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_normalization_89_layer_call_and_return_conditional_losses_1017773120
.layer_normalization_89/StatefulPartitionedCall�
"dense_3000/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_89/StatefulPartitionedCall:output:0dense_3000_10178443dense_3000_10178445*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_3000_layer_call_and_return_conditional_losses_101777572$
"dense_3000/StatefulPartitionedCall�
.layer_normalization_90/StatefulPartitionedCallStatefulPartitionedCall+dense_3000/StatefulPartitionedCall:output:0layer_normalization_90_10178448layer_normalization_90_10178450*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_normalization_90_layer_call_and_return_conditional_losses_1017781520
.layer_normalization_90/StatefulPartitionedCall�
"dense_3001/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_90/StatefulPartitionedCall:output:0dense_3001_10178453dense_3001_10178455*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_3001_layer_call_and_return_conditional_losses_101778412$
"dense_3001/StatefulPartitionedCall�
.layer_normalization_91/StatefulPartitionedCallStatefulPartitionedCall+dense_3001/StatefulPartitionedCall:output:0layer_normalization_91_10178458layer_normalization_91_10178460*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_normalization_91_layer_call_and_return_conditional_losses_1017789920
.layer_normalization_91/StatefulPartitionedCall�
"dense_3002/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_91/StatefulPartitionedCall:output:0dense_3002_10178463dense_3002_10178465*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_3002_layer_call_and_return_conditional_losses_101779252$
"dense_3002/StatefulPartitionedCall�
.layer_normalization_92/StatefulPartitionedCallStatefulPartitionedCall+dense_3002/StatefulPartitionedCall:output:0layer_normalization_92_10178468layer_normalization_92_10178470*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_normalization_92_layer_call_and_return_conditional_losses_1017798320
.layer_normalization_92/StatefulPartitionedCall�
"dense_3003/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_92/StatefulPartitionedCall:output:0dense_3003_10178473dense_3003_10178475*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_3003_layer_call_and_return_conditional_losses_101780092$
"dense_3003/StatefulPartitionedCall�
.layer_normalization_93/StatefulPartitionedCallStatefulPartitionedCall+dense_3003/StatefulPartitionedCall:output:0layer_normalization_93_10178478layer_normalization_93_10178480*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_normalization_93_layer_call_and_return_conditional_losses_1017806720
.layer_normalization_93/StatefulPartitionedCall�
"dense_3004/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_93/StatefulPartitionedCall:output:0dense_3004_10178483dense_3004_10178485*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_3004_layer_call_and_return_conditional_losses_101780932$
"dense_3004/StatefulPartitionedCall�
.layer_normalization_94/StatefulPartitionedCallStatefulPartitionedCall+dense_3004/StatefulPartitionedCall:output:0layer_normalization_94_10178488layer_normalization_94_10178490*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_normalization_94_layer_call_and_return_conditional_losses_1017815120
.layer_normalization_94/StatefulPartitionedCall�
"dense_3005/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_94/StatefulPartitionedCall:output:0dense_3005_10178493dense_3005_10178495*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_3005_layer_call_and_return_conditional_losses_101781772$
"dense_3005/StatefulPartitionedCall�
IdentityIdentity+dense_3005/StatefulPartitionedCall:output:0#^dense_2998/StatefulPartitionedCall#^dense_2999/StatefulPartitionedCall#^dense_3000/StatefulPartitionedCall#^dense_3001/StatefulPartitionedCall#^dense_3002/StatefulPartitionedCall#^dense_3003/StatefulPartitionedCall#^dense_3004/StatefulPartitionedCall#^dense_3005/StatefulPartitionedCall/^layer_normalization_88/StatefulPartitionedCall/^layer_normalization_89/StatefulPartitionedCall/^layer_normalization_90/StatefulPartitionedCall/^layer_normalization_91/StatefulPartitionedCall/^layer_normalization_92/StatefulPartitionedCall/^layer_normalization_93/StatefulPartitionedCall/^layer_normalization_94/StatefulPartitionedCall*
T0*(
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:����������::::::::::::::::::::::::::::::2H
"dense_2998/StatefulPartitionedCall"dense_2998/StatefulPartitionedCall2H
"dense_2999/StatefulPartitionedCall"dense_2999/StatefulPartitionedCall2H
"dense_3000/StatefulPartitionedCall"dense_3000/StatefulPartitionedCall2H
"dense_3001/StatefulPartitionedCall"dense_3001/StatefulPartitionedCall2H
"dense_3002/StatefulPartitionedCall"dense_3002/StatefulPartitionedCall2H
"dense_3003/StatefulPartitionedCall"dense_3003/StatefulPartitionedCall2H
"dense_3004/StatefulPartitionedCall"dense_3004/StatefulPartitionedCall2H
"dense_3005/StatefulPartitionedCall"dense_3005/StatefulPartitionedCall2`
.layer_normalization_88/StatefulPartitionedCall.layer_normalization_88/StatefulPartitionedCall2`
.layer_normalization_89/StatefulPartitionedCall.layer_normalization_89/StatefulPartitionedCall2`
.layer_normalization_90/StatefulPartitionedCall.layer_normalization_90/StatefulPartitionedCall2`
.layer_normalization_91/StatefulPartitionedCall.layer_normalization_91/StatefulPartitionedCall2`
.layer_normalization_92/StatefulPartitionedCall.layer_normalization_92/StatefulPartitionedCall2`
.layer_normalization_93/StatefulPartitionedCall.layer_normalization_93/StatefulPartitionedCall2`
.layer_normalization_94/StatefulPartitionedCall.layer_normalization_94/StatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
-__inference_dense_3002_layer_call_fn_10179702

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_3002_layer_call_and_return_conditional_losses_101779252
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs
�Y
�
G__inference_model_138_layer_call_and_return_conditional_losses_10178273
	input_144
dense_2998_10178197
dense_2998_10178199#
layer_normalization_88_10178202#
layer_normalization_88_10178204
dense_2999_10178207
dense_2999_10178209#
layer_normalization_89_10178212#
layer_normalization_89_10178214
dense_3000_10178217
dense_3000_10178219#
layer_normalization_90_10178222#
layer_normalization_90_10178224
dense_3001_10178227
dense_3001_10178229#
layer_normalization_91_10178232#
layer_normalization_91_10178234
dense_3002_10178237
dense_3002_10178239#
layer_normalization_92_10178242#
layer_normalization_92_10178244
dense_3003_10178247
dense_3003_10178249#
layer_normalization_93_10178252#
layer_normalization_93_10178254
dense_3004_10178257
dense_3004_10178259#
layer_normalization_94_10178262#
layer_normalization_94_10178264
dense_3005_10178267
dense_3005_10178269
identity��"dense_2998/StatefulPartitionedCall�"dense_2999/StatefulPartitionedCall�"dense_3000/StatefulPartitionedCall�"dense_3001/StatefulPartitionedCall�"dense_3002/StatefulPartitionedCall�"dense_3003/StatefulPartitionedCall�"dense_3004/StatefulPartitionedCall�"dense_3005/StatefulPartitionedCall�.layer_normalization_88/StatefulPartitionedCall�.layer_normalization_89/StatefulPartitionedCall�.layer_normalization_90/StatefulPartitionedCall�.layer_normalization_91/StatefulPartitionedCall�.layer_normalization_92/StatefulPartitionedCall�.layer_normalization_93/StatefulPartitionedCall�.layer_normalization_94/StatefulPartitionedCall�
"dense_2998/StatefulPartitionedCallStatefulPartitionedCall	input_144dense_2998_10178197dense_2998_10178199*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_2998_layer_call_and_return_conditional_losses_101775892$
"dense_2998/StatefulPartitionedCall�
.layer_normalization_88/StatefulPartitionedCallStatefulPartitionedCall+dense_2998/StatefulPartitionedCall:output:0layer_normalization_88_10178202layer_normalization_88_10178204*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_normalization_88_layer_call_and_return_conditional_losses_1017764720
.layer_normalization_88/StatefulPartitionedCall�
"dense_2999/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_88/StatefulPartitionedCall:output:0dense_2999_10178207dense_2999_10178209*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_2999_layer_call_and_return_conditional_losses_101776732$
"dense_2999/StatefulPartitionedCall�
.layer_normalization_89/StatefulPartitionedCallStatefulPartitionedCall+dense_2999/StatefulPartitionedCall:output:0layer_normalization_89_10178212layer_normalization_89_10178214*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_normalization_89_layer_call_and_return_conditional_losses_1017773120
.layer_normalization_89/StatefulPartitionedCall�
"dense_3000/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_89/StatefulPartitionedCall:output:0dense_3000_10178217dense_3000_10178219*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_3000_layer_call_and_return_conditional_losses_101777572$
"dense_3000/StatefulPartitionedCall�
.layer_normalization_90/StatefulPartitionedCallStatefulPartitionedCall+dense_3000/StatefulPartitionedCall:output:0layer_normalization_90_10178222layer_normalization_90_10178224*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_normalization_90_layer_call_and_return_conditional_losses_1017781520
.layer_normalization_90/StatefulPartitionedCall�
"dense_3001/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_90/StatefulPartitionedCall:output:0dense_3001_10178227dense_3001_10178229*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_3001_layer_call_and_return_conditional_losses_101778412$
"dense_3001/StatefulPartitionedCall�
.layer_normalization_91/StatefulPartitionedCallStatefulPartitionedCall+dense_3001/StatefulPartitionedCall:output:0layer_normalization_91_10178232layer_normalization_91_10178234*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_normalization_91_layer_call_and_return_conditional_losses_1017789920
.layer_normalization_91/StatefulPartitionedCall�
"dense_3002/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_91/StatefulPartitionedCall:output:0dense_3002_10178237dense_3002_10178239*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_3002_layer_call_and_return_conditional_losses_101779252$
"dense_3002/StatefulPartitionedCall�
.layer_normalization_92/StatefulPartitionedCallStatefulPartitionedCall+dense_3002/StatefulPartitionedCall:output:0layer_normalization_92_10178242layer_normalization_92_10178244*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_normalization_92_layer_call_and_return_conditional_losses_1017798320
.layer_normalization_92/StatefulPartitionedCall�
"dense_3003/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_92/StatefulPartitionedCall:output:0dense_3003_10178247dense_3003_10178249*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_3003_layer_call_and_return_conditional_losses_101780092$
"dense_3003/StatefulPartitionedCall�
.layer_normalization_93/StatefulPartitionedCallStatefulPartitionedCall+dense_3003/StatefulPartitionedCall:output:0layer_normalization_93_10178252layer_normalization_93_10178254*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_normalization_93_layer_call_and_return_conditional_losses_1017806720
.layer_normalization_93/StatefulPartitionedCall�
"dense_3004/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_93/StatefulPartitionedCall:output:0dense_3004_10178257dense_3004_10178259*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_3004_layer_call_and_return_conditional_losses_101780932$
"dense_3004/StatefulPartitionedCall�
.layer_normalization_94/StatefulPartitionedCallStatefulPartitionedCall+dense_3004/StatefulPartitionedCall:output:0layer_normalization_94_10178262layer_normalization_94_10178264*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_normalization_94_layer_call_and_return_conditional_losses_1017815120
.layer_normalization_94/StatefulPartitionedCall�
"dense_3005/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_94/StatefulPartitionedCall:output:0dense_3005_10178267dense_3005_10178269*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dense_3005_layer_call_and_return_conditional_losses_101781772$
"dense_3005/StatefulPartitionedCall�
IdentityIdentity+dense_3005/StatefulPartitionedCall:output:0#^dense_2998/StatefulPartitionedCall#^dense_2999/StatefulPartitionedCall#^dense_3000/StatefulPartitionedCall#^dense_3001/StatefulPartitionedCall#^dense_3002/StatefulPartitionedCall#^dense_3003/StatefulPartitionedCall#^dense_3004/StatefulPartitionedCall#^dense_3005/StatefulPartitionedCall/^layer_normalization_88/StatefulPartitionedCall/^layer_normalization_89/StatefulPartitionedCall/^layer_normalization_90/StatefulPartitionedCall/^layer_normalization_91/StatefulPartitionedCall/^layer_normalization_92/StatefulPartitionedCall/^layer_normalization_93/StatefulPartitionedCall/^layer_normalization_94/StatefulPartitionedCall*
T0*(
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:����������::::::::::::::::::::::::::::::2H
"dense_2998/StatefulPartitionedCall"dense_2998/StatefulPartitionedCall2H
"dense_2999/StatefulPartitionedCall"dense_2999/StatefulPartitionedCall2H
"dense_3000/StatefulPartitionedCall"dense_3000/StatefulPartitionedCall2H
"dense_3001/StatefulPartitionedCall"dense_3001/StatefulPartitionedCall2H
"dense_3002/StatefulPartitionedCall"dense_3002/StatefulPartitionedCall2H
"dense_3003/StatefulPartitionedCall"dense_3003/StatefulPartitionedCall2H
"dense_3004/StatefulPartitionedCall"dense_3004/StatefulPartitionedCall2H
"dense_3005/StatefulPartitionedCall"dense_3005/StatefulPartitionedCall2`
.layer_normalization_88/StatefulPartitionedCall.layer_normalization_88/StatefulPartitionedCall2`
.layer_normalization_89/StatefulPartitionedCall.layer_normalization_89/StatefulPartitionedCall2`
.layer_normalization_90/StatefulPartitionedCall.layer_normalization_90/StatefulPartitionedCall2`
.layer_normalization_91/StatefulPartitionedCall.layer_normalization_91/StatefulPartitionedCall2`
.layer_normalization_92/StatefulPartitionedCall.layer_normalization_92/StatefulPartitionedCall2`
.layer_normalization_93/StatefulPartitionedCall.layer_normalization_93/StatefulPartitionedCall2`
.layer_normalization_94/StatefulPartitionedCall.layer_normalization_94/StatefulPartitionedCall:S O
(
_output_shapes
:����������
#
_user_specified_name	input_144
�	
�
H__inference_dense_2998_layer_call_and_return_conditional_losses_10179413

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�M*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:M*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
H__inference_dense_3002_layer_call_and_return_conditional_losses_10179693

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:MM*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:M*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������M2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������M2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������M::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������M
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
@
	input_1443
serving_default_input_144:0����������?

dense_30051
StatefulPartitionedCall:0����������@tensorflow/serving/predict:��
��
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
	layer_with_weights-7
	layer-8

layer_with_weights-8

layer-9
layer_with_weights-9
layer-10
layer_with_weights-10
layer-11
layer_with_weights-11
layer-12
layer_with_weights-12
layer-13
layer_with_weights-13
layer-14
layer_with_weights-14
layer-15
	optimizer

signatures
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
+�&call_and_return_all_conditional_losses
�_default_save_signature
�__call__"��
_tf_keras_network��{"class_name": "Functional", "name": "model_138", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_138", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 758]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_144"}, "name": "input_144", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_2998", "trainable": true, "dtype": "float32", "units": 77, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2998", "inbound_nodes": [[["input_144", 0, 0, {}]]]}, {"class_name": "LayerNormalization", "config": {"name": "layer_normalization_88", "trainable": true, "dtype": "float32", "axis": [1], "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "layer_normalization_88", "inbound_nodes": [[["dense_2998", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2999", "trainable": true, "dtype": "float32", "units": 77, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2999", "inbound_nodes": [[["layer_normalization_88", 0, 0, {}]]]}, {"class_name": "LayerNormalization", "config": {"name": "layer_normalization_89", "trainable": true, "dtype": "float32", "axis": [1], "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "layer_normalization_89", "inbound_nodes": [[["dense_2999", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_3000", "trainable": true, "dtype": "float32", "units": 77, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3000", "inbound_nodes": [[["layer_normalization_89", 0, 0, {}]]]}, {"class_name": "LayerNormalization", "config": {"name": "layer_normalization_90", "trainable": true, "dtype": "float32", "axis": [1], "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "layer_normalization_90", "inbound_nodes": [[["dense_3000", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_3001", "trainable": true, "dtype": "float32", "units": 77, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3001", "inbound_nodes": [[["layer_normalization_90", 0, 0, {}]]]}, {"class_name": "LayerNormalization", "config": {"name": "layer_normalization_91", "trainable": true, "dtype": "float32", "axis": [1], "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "layer_normalization_91", "inbound_nodes": [[["dense_3001", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_3002", "trainable": true, "dtype": "float32", "units": 77, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3002", "inbound_nodes": [[["layer_normalization_91", 0, 0, {}]]]}, {"class_name": "LayerNormalization", "config": {"name": "layer_normalization_92", "trainable": true, "dtype": "float32", "axis": [1], "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "layer_normalization_92", "inbound_nodes": [[["dense_3002", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_3003", "trainable": true, "dtype": "float32", "units": 77, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3003", "inbound_nodes": [[["layer_normalization_92", 0, 0, {}]]]}, {"class_name": "LayerNormalization", "config": {"name": "layer_normalization_93", "trainable": true, "dtype": "float32", "axis": [1], "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "layer_normalization_93", "inbound_nodes": [[["dense_3003", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_3004", "trainable": true, "dtype": "float32", "units": 77, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3004", "inbound_nodes": [[["layer_normalization_93", 0, 0, {}]]]}, {"class_name": "LayerNormalization", "config": {"name": "layer_normalization_94", "trainable": true, "dtype": "float32", "axis": [1], "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "layer_normalization_94", "inbound_nodes": [[["dense_3004", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_3005", "trainable": true, "dtype": "float32", "units": 8192, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3005", "inbound_nodes": [[["layer_normalization_94", 0, 0, {}]]]}], "input_layers": [["input_144", 0, 0]], "output_layers": [["dense_3005", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 758]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 758]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_138", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 758]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_144"}, "name": "input_144", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_2998", "trainable": true, "dtype": "float32", "units": 77, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2998", "inbound_nodes": [[["input_144", 0, 0, {}]]]}, {"class_name": "LayerNormalization", "config": {"name": "layer_normalization_88", "trainable": true, "dtype": "float32", "axis": [1], "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "layer_normalization_88", "inbound_nodes": [[["dense_2998", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2999", "trainable": true, "dtype": "float32", "units": 77, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2999", "inbound_nodes": [[["layer_normalization_88", 0, 0, {}]]]}, {"class_name": "LayerNormalization", "config": {"name": "layer_normalization_89", "trainable": true, "dtype": "float32", "axis": [1], "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "layer_normalization_89", "inbound_nodes": [[["dense_2999", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_3000", "trainable": true, "dtype": "float32", "units": 77, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3000", "inbound_nodes": [[["layer_normalization_89", 0, 0, {}]]]}, {"class_name": "LayerNormalization", "config": {"name": "layer_normalization_90", "trainable": true, "dtype": "float32", "axis": [1], "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "layer_normalization_90", "inbound_nodes": [[["dense_3000", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_3001", "trainable": true, "dtype": "float32", "units": 77, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3001", "inbound_nodes": [[["layer_normalization_90", 0, 0, {}]]]}, {"class_name": "LayerNormalization", "config": {"name": "layer_normalization_91", "trainable": true, "dtype": "float32", "axis": [1], "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "layer_normalization_91", "inbound_nodes": [[["dense_3001", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_3002", "trainable": true, "dtype": "float32", "units": 77, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3002", "inbound_nodes": [[["layer_normalization_91", 0, 0, {}]]]}, {"class_name": "LayerNormalization", "config": {"name": "layer_normalization_92", "trainable": true, "dtype": "float32", "axis": [1], "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "layer_normalization_92", "inbound_nodes": [[["dense_3002", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_3003", "trainable": true, "dtype": "float32", "units": 77, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3003", "inbound_nodes": [[["layer_normalization_92", 0, 0, {}]]]}, {"class_name": "LayerNormalization", "config": {"name": "layer_normalization_93", "trainable": true, "dtype": "float32", "axis": [1], "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "layer_normalization_93", "inbound_nodes": [[["dense_3003", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_3004", "trainable": true, "dtype": "float32", "units": 77, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3004", "inbound_nodes": [[["layer_normalization_93", 0, 0, {}]]]}, {"class_name": "LayerNormalization", "config": {"name": "layer_normalization_94", "trainable": true, "dtype": "float32", "axis": [1], "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "layer_normalization_94", "inbound_nodes": [[["dense_3004", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_3005", "trainable": true, "dtype": "float32", "units": 8192, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3005", "inbound_nodes": [[["layer_normalization_94", 0, 0, {}]]]}], "input_layers": [["input_144", 0, 0]], "output_layers": [["dense_3005", 0, 0]]}}, "training_config": {"loss": {"class_name": "MeanSquaredError", "config": {"reduction": "auto", "name": "mean_squared_error"}}, "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.00012271251762285829, "decay": 0.0, "beta_1": 0.9900000095367432, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
�
#_self_saveable_object_factories"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "input_144", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 758]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 758]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_144"}}
�

kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_2998", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_2998", "trainable": true, "dtype": "float32", "units": 77, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 758}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 758]}}
�
 axis
	!gamma
"beta
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "LayerNormalization", "name": "layer_normalization_88", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "layer_normalization_88", "trainable": true, "dtype": "float32", "axis": [1], "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 77]}}
�

(kernel
)bias
#*_self_saveable_object_factories
+	variables
,trainable_variables
-regularization_losses
.	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_2999", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_2999", "trainable": true, "dtype": "float32", "units": 77, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 77}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 77]}}
�
/axis
	0gamma
1beta
#2_self_saveable_object_factories
3	variables
4trainable_variables
5regularization_losses
6	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "LayerNormalization", "name": "layer_normalization_89", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "layer_normalization_89", "trainable": true, "dtype": "float32", "axis": [1], "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 77]}}
�

7kernel
8bias
#9_self_saveable_object_factories
:	variables
;trainable_variables
<regularization_losses
=	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_3000", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_3000", "trainable": true, "dtype": "float32", "units": 77, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 77}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 77]}}
�
>axis
	?gamma
@beta
#A_self_saveable_object_factories
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "LayerNormalization", "name": "layer_normalization_90", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "layer_normalization_90", "trainable": true, "dtype": "float32", "axis": [1], "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 77]}}
�

Fkernel
Gbias
#H_self_saveable_object_factories
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_3001", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_3001", "trainable": true, "dtype": "float32", "units": 77, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 77}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 77]}}
�
Maxis
	Ngamma
Obeta
#P_self_saveable_object_factories
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "LayerNormalization", "name": "layer_normalization_91", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "layer_normalization_91", "trainable": true, "dtype": "float32", "axis": [1], "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 77]}}
�

Ukernel
Vbias
#W_self_saveable_object_factories
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_3002", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_3002", "trainable": true, "dtype": "float32", "units": 77, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 77}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 77]}}
�
\axis
	]gamma
^beta
#__self_saveable_object_factories
`	variables
atrainable_variables
bregularization_losses
c	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "LayerNormalization", "name": "layer_normalization_92", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "layer_normalization_92", "trainable": true, "dtype": "float32", "axis": [1], "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 77]}}
�

dkernel
ebias
#f_self_saveable_object_factories
g	variables
htrainable_variables
iregularization_losses
j	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_3003", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_3003", "trainable": true, "dtype": "float32", "units": 77, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 77}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 77]}}
�
kaxis
	lgamma
mbeta
#n_self_saveable_object_factories
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "LayerNormalization", "name": "layer_normalization_93", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "layer_normalization_93", "trainable": true, "dtype": "float32", "axis": [1], "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 77]}}
�

skernel
tbias
#u_self_saveable_object_factories
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_3004", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_3004", "trainable": true, "dtype": "float32", "units": 77, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 77}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 77]}}
�
zaxis
	{gamma
|beta
#}_self_saveable_object_factories
~	variables
trainable_variables
�regularization_losses
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "LayerNormalization", "name": "layer_normalization_94", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "layer_normalization_94", "trainable": true, "dtype": "float32", "axis": [1], "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 77]}}
�
�kernel
	�bias
$�_self_saveable_object_factories
�	variables
�trainable_variables
�regularization_losses
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_3005", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_3005", "trainable": true, "dtype": "float32", "units": 8192, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 77}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 77]}}
�
	�iter
�beta_1
�beta_2

�decay
�learning_ratem�m�!m�"m�(m�)m�0m�1m�7m�8m�?m�@m�Fm�Gm�Nm�Om�Um�Vm�]m�^m�dm�em�lm�mm�sm�tm�{m�|m�	�m�	�m�v�v�!v�"v�(v�)v�0v�1v�7v�8v�?v�@v�Fv�Gv�Nv�Ov�Uv�Vv�]v�^v�dv�ev�lv�mv�sv�tv�{v�|v�	�v�	�v�"
	optimizer
-
�serving_default"
signature_map
 "
trackable_dict_wrapper
�
0
1
!2
"3
(4
)5
06
17
78
89
?10
@11
F12
G13
N14
O15
U16
V17
]18
^19
d20
e21
l22
m23
s24
t25
{26
|27
�28
�29"
trackable_list_wrapper
�
0
1
!2
"3
(4
)5
06
17
78
89
?10
@11
F12
G13
N14
O15
U16
V17
]18
^19
d20
e21
l22
m23
s24
t25
{26
|27
�28
�29"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layer_metrics
 �layer_regularization_losses
	variables
�layers
�metrics
�non_trainable_variables
trainable_variables
regularization_losses
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
$:"	�M2dense_2998/kernel
:M2dense_2998/bias
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layer_metrics
�layers
 �layer_regularization_losses
	variables
�metrics
�non_trainable_variables
trainable_variables
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(M2layer_normalization_88/gamma
):'M2layer_normalization_88/beta
 "
trackable_dict_wrapper
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layer_metrics
�layers
 �layer_regularization_losses
$	variables
�metrics
�non_trainable_variables
%trainable_variables
&regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
#:!MM2dense_2999/kernel
:M2dense_2999/bias
 "
trackable_dict_wrapper
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layer_metrics
�layers
 �layer_regularization_losses
+	variables
�metrics
�non_trainable_variables
,trainable_variables
-regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(M2layer_normalization_89/gamma
):'M2layer_normalization_89/beta
 "
trackable_dict_wrapper
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layer_metrics
�layers
 �layer_regularization_losses
3	variables
�metrics
�non_trainable_variables
4trainable_variables
5regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
#:!MM2dense_3000/kernel
:M2dense_3000/bias
 "
trackable_dict_wrapper
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layer_metrics
�layers
 �layer_regularization_losses
:	variables
�metrics
�non_trainable_variables
;trainable_variables
<regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(M2layer_normalization_90/gamma
):'M2layer_normalization_90/beta
 "
trackable_dict_wrapper
.
?0
@1"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layer_metrics
�layers
 �layer_regularization_losses
B	variables
�metrics
�non_trainable_variables
Ctrainable_variables
Dregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
#:!MM2dense_3001/kernel
:M2dense_3001/bias
 "
trackable_dict_wrapper
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layer_metrics
�layers
 �layer_regularization_losses
I	variables
�metrics
�non_trainable_variables
Jtrainable_variables
Kregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(M2layer_normalization_91/gamma
):'M2layer_normalization_91/beta
 "
trackable_dict_wrapper
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layer_metrics
�layers
 �layer_regularization_losses
Q	variables
�metrics
�non_trainable_variables
Rtrainable_variables
Sregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
#:!MM2dense_3002/kernel
:M2dense_3002/bias
 "
trackable_dict_wrapper
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layer_metrics
�layers
 �layer_regularization_losses
X	variables
�metrics
�non_trainable_variables
Ytrainable_variables
Zregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(M2layer_normalization_92/gamma
):'M2layer_normalization_92/beta
 "
trackable_dict_wrapper
.
]0
^1"
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layer_metrics
�layers
 �layer_regularization_losses
`	variables
�metrics
�non_trainable_variables
atrainable_variables
bregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
#:!MM2dense_3003/kernel
:M2dense_3003/bias
 "
trackable_dict_wrapper
.
d0
e1"
trackable_list_wrapper
.
d0
e1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layer_metrics
�layers
 �layer_regularization_losses
g	variables
�metrics
�non_trainable_variables
htrainable_variables
iregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(M2layer_normalization_93/gamma
):'M2layer_normalization_93/beta
 "
trackable_dict_wrapper
.
l0
m1"
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layer_metrics
�layers
 �layer_regularization_losses
o	variables
�metrics
�non_trainable_variables
ptrainable_variables
qregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
#:!MM2dense_3004/kernel
:M2dense_3004/bias
 "
trackable_dict_wrapper
.
s0
t1"
trackable_list_wrapper
.
s0
t1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layer_metrics
�layers
 �layer_regularization_losses
v	variables
�metrics
�non_trainable_variables
wtrainable_variables
xregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(M2layer_normalization_94/gamma
):'M2layer_normalization_94/beta
 "
trackable_dict_wrapper
.
{0
|1"
trackable_list_wrapper
.
{0
|1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layer_metrics
�layers
 �layer_regularization_losses
~	variables
�metrics
�non_trainable_variables
trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
$:"	M�@2dense_3005/kernel
:�@2dense_3005/bias
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layer_metrics
�layers
 �layer_regularization_losses
�	variables
�metrics
�non_trainable_variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15"
trackable_list_wrapper
(
�0"
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
�

�total

�count
�	variables
�	keras_api"�
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
):'	�M2Adam/dense_2998/kernel/m
": M2Adam/dense_2998/bias/m
/:-M2#Adam/layer_normalization_88/gamma/m
.:,M2"Adam/layer_normalization_88/beta/m
(:&MM2Adam/dense_2999/kernel/m
": M2Adam/dense_2999/bias/m
/:-M2#Adam/layer_normalization_89/gamma/m
.:,M2"Adam/layer_normalization_89/beta/m
(:&MM2Adam/dense_3000/kernel/m
": M2Adam/dense_3000/bias/m
/:-M2#Adam/layer_normalization_90/gamma/m
.:,M2"Adam/layer_normalization_90/beta/m
(:&MM2Adam/dense_3001/kernel/m
": M2Adam/dense_3001/bias/m
/:-M2#Adam/layer_normalization_91/gamma/m
.:,M2"Adam/layer_normalization_91/beta/m
(:&MM2Adam/dense_3002/kernel/m
": M2Adam/dense_3002/bias/m
/:-M2#Adam/layer_normalization_92/gamma/m
.:,M2"Adam/layer_normalization_92/beta/m
(:&MM2Adam/dense_3003/kernel/m
": M2Adam/dense_3003/bias/m
/:-M2#Adam/layer_normalization_93/gamma/m
.:,M2"Adam/layer_normalization_93/beta/m
(:&MM2Adam/dense_3004/kernel/m
": M2Adam/dense_3004/bias/m
/:-M2#Adam/layer_normalization_94/gamma/m
.:,M2"Adam/layer_normalization_94/beta/m
):'	M�@2Adam/dense_3005/kernel/m
#:!�@2Adam/dense_3005/bias/m
):'	�M2Adam/dense_2998/kernel/v
": M2Adam/dense_2998/bias/v
/:-M2#Adam/layer_normalization_88/gamma/v
.:,M2"Adam/layer_normalization_88/beta/v
(:&MM2Adam/dense_2999/kernel/v
": M2Adam/dense_2999/bias/v
/:-M2#Adam/layer_normalization_89/gamma/v
.:,M2"Adam/layer_normalization_89/beta/v
(:&MM2Adam/dense_3000/kernel/v
": M2Adam/dense_3000/bias/v
/:-M2#Adam/layer_normalization_90/gamma/v
.:,M2"Adam/layer_normalization_90/beta/v
(:&MM2Adam/dense_3001/kernel/v
": M2Adam/dense_3001/bias/v
/:-M2#Adam/layer_normalization_91/gamma/v
.:,M2"Adam/layer_normalization_91/beta/v
(:&MM2Adam/dense_3002/kernel/v
": M2Adam/dense_3002/bias/v
/:-M2#Adam/layer_normalization_92/gamma/v
.:,M2"Adam/layer_normalization_92/beta/v
(:&MM2Adam/dense_3003/kernel/v
": M2Adam/dense_3003/bias/v
/:-M2#Adam/layer_normalization_93/gamma/v
.:,M2"Adam/layer_normalization_93/beta/v
(:&MM2Adam/dense_3004/kernel/v
": M2Adam/dense_3004/bias/v
/:-M2#Adam/layer_normalization_94/gamma/v
.:,M2"Adam/layer_normalization_94/beta/v
):'	M�@2Adam/dense_3005/kernel/v
#:!�@2Adam/dense_3005/bias/v
�2�
G__inference_model_138_layer_call_and_return_conditional_losses_10178955
G__inference_model_138_layer_call_and_return_conditional_losses_10178194
G__inference_model_138_layer_call_and_return_conditional_losses_10179273
G__inference_model_138_layer_call_and_return_conditional_losses_10178273�
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
�2�
#__inference__wrapped_model_10177575�
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
annotations� *)�&
$�!
	input_144����������
�2�
,__inference_model_138_layer_call_fn_10179338
,__inference_model_138_layer_call_fn_10179403
,__inference_model_138_layer_call_fn_10178562
,__inference_model_138_layer_call_fn_10178418�
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
�2�
H__inference_dense_2998_layer_call_and_return_conditional_losses_10179413�
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
-__inference_dense_2998_layer_call_fn_10179422�
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
T__inference_layer_normalization_88_layer_call_and_return_conditional_losses_10179464�
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
9__inference_layer_normalization_88_layer_call_fn_10179473�
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
H__inference_dense_2999_layer_call_and_return_conditional_losses_10179483�
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
-__inference_dense_2999_layer_call_fn_10179492�
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
T__inference_layer_normalization_89_layer_call_and_return_conditional_losses_10179534�
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
9__inference_layer_normalization_89_layer_call_fn_10179543�
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
H__inference_dense_3000_layer_call_and_return_conditional_losses_10179553�
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
-__inference_dense_3000_layer_call_fn_10179562�
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
T__inference_layer_normalization_90_layer_call_and_return_conditional_losses_10179604�
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
9__inference_layer_normalization_90_layer_call_fn_10179613�
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
H__inference_dense_3001_layer_call_and_return_conditional_losses_10179623�
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
-__inference_dense_3001_layer_call_fn_10179632�
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
T__inference_layer_normalization_91_layer_call_and_return_conditional_losses_10179674�
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
9__inference_layer_normalization_91_layer_call_fn_10179683�
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
H__inference_dense_3002_layer_call_and_return_conditional_losses_10179693�
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
-__inference_dense_3002_layer_call_fn_10179702�
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
T__inference_layer_normalization_92_layer_call_and_return_conditional_losses_10179744�
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
9__inference_layer_normalization_92_layer_call_fn_10179753�
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
H__inference_dense_3003_layer_call_and_return_conditional_losses_10179763�
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
-__inference_dense_3003_layer_call_fn_10179772�
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
T__inference_layer_normalization_93_layer_call_and_return_conditional_losses_10179814�
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
9__inference_layer_normalization_93_layer_call_fn_10179823�
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
H__inference_dense_3004_layer_call_and_return_conditional_losses_10179833�
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
-__inference_dense_3004_layer_call_fn_10179842�
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
T__inference_layer_normalization_94_layer_call_and_return_conditional_losses_10179884�
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
9__inference_layer_normalization_94_layer_call_fn_10179893�
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
H__inference_dense_3005_layer_call_and_return_conditional_losses_10179903�
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
-__inference_dense_3005_layer_call_fn_10179912�
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
�B�
&__inference_signature_wrapper_10178637	input_144"�
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
 �
#__inference__wrapped_model_10177575� !"()0178?@FGNOUV]^delmst{|��3�0
)�&
$�!
	input_144����������
� "8�5
3

dense_3005%�"

dense_3005����������@�
H__inference_dense_2998_layer_call_and_return_conditional_losses_10179413]0�-
&�#
!�
inputs����������
� "%�"
�
0���������M
� �
-__inference_dense_2998_layer_call_fn_10179422P0�-
&�#
!�
inputs����������
� "����������M�
H__inference_dense_2999_layer_call_and_return_conditional_losses_10179483\()/�,
%�"
 �
inputs���������M
� "%�"
�
0���������M
� �
-__inference_dense_2999_layer_call_fn_10179492O()/�,
%�"
 �
inputs���������M
� "����������M�
H__inference_dense_3000_layer_call_and_return_conditional_losses_10179553\78/�,
%�"
 �
inputs���������M
� "%�"
�
0���������M
� �
-__inference_dense_3000_layer_call_fn_10179562O78/�,
%�"
 �
inputs���������M
� "����������M�
H__inference_dense_3001_layer_call_and_return_conditional_losses_10179623\FG/�,
%�"
 �
inputs���������M
� "%�"
�
0���������M
� �
-__inference_dense_3001_layer_call_fn_10179632OFG/�,
%�"
 �
inputs���������M
� "����������M�
H__inference_dense_3002_layer_call_and_return_conditional_losses_10179693\UV/�,
%�"
 �
inputs���������M
� "%�"
�
0���������M
� �
-__inference_dense_3002_layer_call_fn_10179702OUV/�,
%�"
 �
inputs���������M
� "����������M�
H__inference_dense_3003_layer_call_and_return_conditional_losses_10179763\de/�,
%�"
 �
inputs���������M
� "%�"
�
0���������M
� �
-__inference_dense_3003_layer_call_fn_10179772Ode/�,
%�"
 �
inputs���������M
� "����������M�
H__inference_dense_3004_layer_call_and_return_conditional_losses_10179833\st/�,
%�"
 �
inputs���������M
� "%�"
�
0���������M
� �
-__inference_dense_3004_layer_call_fn_10179842Ost/�,
%�"
 �
inputs���������M
� "����������M�
H__inference_dense_3005_layer_call_and_return_conditional_losses_10179903_��/�,
%�"
 �
inputs���������M
� "&�#
�
0����������@
� �
-__inference_dense_3005_layer_call_fn_10179912R��/�,
%�"
 �
inputs���������M
� "�����������@�
T__inference_layer_normalization_88_layer_call_and_return_conditional_losses_10179464\!"/�,
%�"
 �
inputs���������M
� "%�"
�
0���������M
� �
9__inference_layer_normalization_88_layer_call_fn_10179473O!"/�,
%�"
 �
inputs���������M
� "����������M�
T__inference_layer_normalization_89_layer_call_and_return_conditional_losses_10179534\01/�,
%�"
 �
inputs���������M
� "%�"
�
0���������M
� �
9__inference_layer_normalization_89_layer_call_fn_10179543O01/�,
%�"
 �
inputs���������M
� "����������M�
T__inference_layer_normalization_90_layer_call_and_return_conditional_losses_10179604\?@/�,
%�"
 �
inputs���������M
� "%�"
�
0���������M
� �
9__inference_layer_normalization_90_layer_call_fn_10179613O?@/�,
%�"
 �
inputs���������M
� "����������M�
T__inference_layer_normalization_91_layer_call_and_return_conditional_losses_10179674\NO/�,
%�"
 �
inputs���������M
� "%�"
�
0���������M
� �
9__inference_layer_normalization_91_layer_call_fn_10179683ONO/�,
%�"
 �
inputs���������M
� "����������M�
T__inference_layer_normalization_92_layer_call_and_return_conditional_losses_10179744\]^/�,
%�"
 �
inputs���������M
� "%�"
�
0���������M
� �
9__inference_layer_normalization_92_layer_call_fn_10179753O]^/�,
%�"
 �
inputs���������M
� "����������M�
T__inference_layer_normalization_93_layer_call_and_return_conditional_losses_10179814\lm/�,
%�"
 �
inputs���������M
� "%�"
�
0���������M
� �
9__inference_layer_normalization_93_layer_call_fn_10179823Olm/�,
%�"
 �
inputs���������M
� "����������M�
T__inference_layer_normalization_94_layer_call_and_return_conditional_losses_10179884\{|/�,
%�"
 �
inputs���������M
� "%�"
�
0���������M
� �
9__inference_layer_normalization_94_layer_call_fn_10179893O{|/�,
%�"
 �
inputs���������M
� "����������M�
G__inference_model_138_layer_call_and_return_conditional_losses_10178194� !"()0178?@FGNOUV]^delmst{|��;�8
1�.
$�!
	input_144����������
p

 
� "&�#
�
0����������@
� �
G__inference_model_138_layer_call_and_return_conditional_losses_10178273� !"()0178?@FGNOUV]^delmst{|��;�8
1�.
$�!
	input_144����������
p 

 
� "&�#
�
0����������@
� �
G__inference_model_138_layer_call_and_return_conditional_losses_10178955� !"()0178?@FGNOUV]^delmst{|��8�5
.�+
!�
inputs����������
p

 
� "&�#
�
0����������@
� �
G__inference_model_138_layer_call_and_return_conditional_losses_10179273� !"()0178?@FGNOUV]^delmst{|��8�5
.�+
!�
inputs����������
p 

 
� "&�#
�
0����������@
� �
,__inference_model_138_layer_call_fn_10178418z !"()0178?@FGNOUV]^delmst{|��;�8
1�.
$�!
	input_144����������
p

 
� "�����������@�
,__inference_model_138_layer_call_fn_10178562z !"()0178?@FGNOUV]^delmst{|��;�8
1�.
$�!
	input_144����������
p 

 
� "�����������@�
,__inference_model_138_layer_call_fn_10179338w !"()0178?@FGNOUV]^delmst{|��8�5
.�+
!�
inputs����������
p

 
� "�����������@�
,__inference_model_138_layer_call_fn_10179403w !"()0178?@FGNOUV]^delmst{|��8�5
.�+
!�
inputs����������
p 

 
� "�����������@�
&__inference_signature_wrapper_10178637� !"()0178?@FGNOUV]^delmst{|��@�=
� 
6�3
1
	input_144$�!
	input_144����������"8�5
3

dense_3005%�"

dense_3005����������@