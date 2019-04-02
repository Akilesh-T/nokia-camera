.class public Lcom/jmatio/types/MLArray;
.super Ljava/lang/Object;


# static fields
.field public static final mtFLAG_COMPLEX:I = 0x800

.field public static final mtFLAG_GLOBAL:I = 0x400

.field public static final mtFLAG_LOGICAL:I = 0x200

.field public static final mtFLAG_TYPE:I = 0xff

.field public static final mxCELL_CLASS:I = 0x1

.field public static final mxCHAR_CLASS:I = 0x4

.field public static final mxDOUBLE_CLASS:I = 0x6

.field public static final mxFUNCTION_CLASS:I = 0x10

.field public static final mxINT16_CLASS:I = 0xa

.field public static final mxINT32_CLASS:I = 0xc

.field public static final mxINT64_CLASS:I = 0xe

.field public static final mxINT8_CLASS:I = 0x8

.field public static final mxOBJECT_CLASS:I = 0x3

.field public static final mxOPAQUE_CLASS:I = 0x11

.field public static final mxSINGLE_CLASS:I = 0x7

.field public static final mxSPARSE_CLASS:I = 0x5

.field public static final mxSTRUCT_CLASS:I = 0x2

.field public static final mxUINT16_CLASS:I = 0xb

.field public static final mxUINT32_CLASS:I = 0xd

.field public static final mxUINT64_CLASS:I = 0xf

.field public static final mxUINT8_CLASS:I = 0x9

.field public static final mxUNKNOWN_CLASS:I


# instance fields
.field protected attributes:I

.field protected dims:[I

.field public name:Ljava/lang/String;

.field protected type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[III)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jmatio/types/MLArray;->dims:[I

    iget-object v0, p0, Lcom/jmatio/types/MLArray;->dims:[I

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/jmatio/types/MLArray;->name:Ljava/lang/String;

    :goto_0
    iput p3, p0, Lcom/jmatio/types/MLArray;->type:I

    iput p4, p0, Lcom/jmatio/types/MLArray;->attributes:I

    return-void

    :cond_0
    const-string v0, "@"

    iput-object v0, p0, Lcom/jmatio/types/MLArray;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public static final typeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "unknown"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "unknown"

    goto :goto_0

    :pswitch_1
    const-string v0, "cell"

    goto :goto_0

    :pswitch_2
    const-string v0, "struct"

    goto :goto_0

    :pswitch_3
    const-string v0, "char"

    goto :goto_0

    :pswitch_4
    const-string v0, "sparse"

    goto :goto_0

    :pswitch_5
    const-string v0, "double"

    goto :goto_0

    :pswitch_6
    const-string v0, "single"

    goto :goto_0

    :pswitch_7
    const-string v0, "int8"

    goto :goto_0

    :pswitch_8
    const-string v0, "uint8"

    goto :goto_0

    :pswitch_9
    const-string v0, "int16"

    goto :goto_0

    :pswitch_a
    const-string v0, "uint16"

    goto :goto_0

    :pswitch_b
    const-string v0, "int32"

    goto :goto_0

    :pswitch_c
    const-string v0, "uint32"

    goto :goto_0

    :pswitch_d
    const-string v0, "int64"

    goto :goto_0

    :pswitch_e
    const-string v0, "uint64"

    goto :goto_0

    :pswitch_f
    const-string v0, "function_handle"

    goto :goto_0

    :pswitch_10
    const-string v0, "opaque"

    goto :goto_0

    :pswitch_11
    const-string v0, "object"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_11
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public contentToString()Ljava/lang/String;
    .locals 1

    const-string v0, "content cannot be displayed"

    return-object v0
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public getDimensions()[I
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/jmatio/types/MLArray;->dims:[I

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/jmatio/types/MLArray;->dims:[I

    array-length v0, v0

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/jmatio/types/MLArray;->dims:[I

    iget-object v2, p0, Lcom/jmatio/types/MLArray;->dims:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method public getFlags()I
    .locals 2

    iget v0, p0, Lcom/jmatio/types/MLArray;->type:I

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/jmatio/types/MLArray;->attributes:I

    and-int/lit16 v1, v1, -0x100

    or-int/2addr v0, v1

    return v0
.end method

.method protected getIndex(II)I
    .locals 1

    invoke-virtual {p0}, Lcom/jmatio/types/MLArray;->getM()I

    move-result v0

    mul-int/2addr v0, p2

    add-int/2addr v0, p1

    return v0
.end method

.method public getM()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/jmatio/types/MLArray;->dims:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jmatio/types/MLArray;->dims:[I

    aget v0, v1, v0

    :cond_0
    return v0
.end method

.method public getN()I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jmatio/types/MLArray;->dims:[I

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/jmatio/types/MLArray;->dims:[I

    array-length v1, v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/jmatio/types/MLArray;->dims:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/jmatio/types/MLArray;->dims:[I

    aget v2, v2, v0

    mul-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/jmatio/types/MLArray;->dims:[I

    aget v1, v1, v0

    :cond_1
    return v1
.end method

.method public getNDimensions()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/jmatio/types/MLArray;->dims:[I

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/jmatio/types/MLArray;->dims:[I

    array-length v0, v0

    :cond_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jmatio/types/MLArray;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNameToByteArray()[B
    .locals 1

    iget-object v0, p0, Lcom/jmatio/types/MLArray;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 2

    invoke-virtual {p0}, Lcom/jmatio/types/MLArray;->getM()I

    move-result v0

    invoke-virtual {p0}, Lcom/jmatio/types/MLArray;->getN()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/jmatio/types/MLArray;->type:I

    return v0
.end method

.method public isCell()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/jmatio/types/MLArray;->type:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChar()Z
    .locals 2

    iget v0, p0, Lcom/jmatio/types/MLArray;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isComplex()Z
    .locals 1

    iget v0, p0, Lcom/jmatio/types/MLArray;->attributes:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDouble()Z
    .locals 2

    iget v0, p0, Lcom/jmatio/types/MLArray;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/jmatio/types/MLArray;->getN()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFunctionObject()Z
    .locals 2

    iget v0, p0, Lcom/jmatio/types/MLArray;->type:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInt16()Z
    .locals 2

    iget v0, p0, Lcom/jmatio/types/MLArray;->type:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInt32()Z
    .locals 2

    iget v0, p0, Lcom/jmatio/types/MLArray;->type:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInt64()Z
    .locals 2

    iget v0, p0, Lcom/jmatio/types/MLArray;->type:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInt8()Z
    .locals 2

    iget v0, p0, Lcom/jmatio/types/MLArray;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLogical()Z
    .locals 1

    iget v0, p0, Lcom/jmatio/types/MLArray;->attributes:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isObject()Z
    .locals 2

    iget v0, p0, Lcom/jmatio/types/MLArray;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 2

    iget v0, p0, Lcom/jmatio/types/MLArray;->type:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSingle()Z
    .locals 2

    iget v0, p0, Lcom/jmatio/types/MLArray;->type:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSparse()Z
    .locals 2

    iget v0, p0, Lcom/jmatio/types/MLArray;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStruct()Z
    .locals 2

    iget v0, p0, Lcom/jmatio/types/MLArray;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUint16()Z
    .locals 2

    iget v0, p0, Lcom/jmatio/types/MLArray;->type:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUint32()Z
    .locals 2

    iget v0, p0, Lcom/jmatio/types/MLArray;->type:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUint64()Z
    .locals 2

    iget v0, p0, Lcom/jmatio/types/MLArray;->type:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUint8()Z
    .locals 2

    iget v0, p0, Lcom/jmatio/types/MLArray;->type:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnknown()Z
    .locals 1

    iget v0, p0, Lcom/jmatio/types/MLArray;->type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x78

    const/4 v3, 0x3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/jmatio/types/MLArray;->dims:[I

    if-eqz v1, :cond_5

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/jmatio/types/MLArray;->dims:[I

    array-length v1, v1

    if-le v1, v3, :cond_3

    iget-object v1, p0, Lcom/jmatio/types/MLArray;->dims:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    :goto_0
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/jmatio/types/MLArray;->type:I

    invoke-static {v1}, Lcom/jmatio/types/MLArray;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " array"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/jmatio/types/MLArray;->isSparse()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " (sparse"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/jmatio/types/MLArray;->isComplex()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " complex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    :goto_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v1, p0, Lcom/jmatio/types/MLArray;->dims:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/jmatio/types/MLArray;->dims:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/jmatio/types/MLArray;->dims:[I

    array-length v1, v1

    if-ne v1, v3, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/jmatio/types/MLArray;->dims:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/jmatio/types/MLArray;->isComplex()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, " (complex)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    const-string v1, "[invalid]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method
