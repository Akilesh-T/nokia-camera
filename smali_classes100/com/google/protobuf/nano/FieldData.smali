.class Lcom/google/protobuf/nano/FieldData;
.super Ljava/lang/Object;
.source "FieldData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private cachedExtension:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<**>;"
        }
    .end annotation
.end field

.field private unknownFieldData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/nano/UnknownFieldData;",
            ">;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    .line 56
    return-void
.end method

.method constructor <init>(Lcom/google/protobuf/nano/Extension;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/nano/Extension",
            "<*TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "extension":Lcom/google/protobuf/nano/Extension;, "Lcom/google/protobuf/nano/Extension<*TT;>;"
    .local p2, "newValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    .line 51
    iput-object p2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    .line 52
    return-void
.end method

.method private toByteArray()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/google/protobuf/nano/FieldData;->computeSerializedSize()I

    move-result v2

    new-array v1, v2, [B

    .line 235
    .local v1, "result":[B
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v0

    .line 236
    .local v0, "output":Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/FieldData;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 237
    return-object v1
.end method


# virtual methods
.method addUnknownField(Lcom/google/protobuf/nano/UnknownFieldData;)V
    .locals 10
    .param p1, "unknownField"    # Lcom/google/protobuf/nano/UnknownFieldData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 60
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-eqz v7, :cond_0

    .line 61
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v7, v7, Lcom/google/protobuf/nano/MessageNano;

    if-eqz v7, :cond_2

    .line 65
    iget-object v1, p1, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    .line 66
    .local v1, "bytes":[B
    array-length v7, v1

    .line 67
    invoke-static {v1, v9, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->newInstance([BII)Lcom/google/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v2

    .line 68
    .local v2, "input":Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    invoke-virtual {v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    .line 69
    .local v3, "length":I
    array-length v7, v1

    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v8

    sub-int/2addr v7, v8

    if-eq v3, v7, :cond_1

    .line 70
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v7

    throw v7

    .line 72
    :cond_1
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v7, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {v7, v2}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v6

    .line 83
    .end local v1    # "bytes":[B
    .end local v2    # "input":Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .end local v3    # "length":I
    :goto_1
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    invoke-virtual {p0, v7, v6}, Lcom/google/protobuf/nano/FieldData;->setValue(Lcom/google/protobuf/nano/Extension;Ljava/lang/Object;)V

    goto :goto_0

    .line 73
    :cond_2
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v7, v7, [Lcom/google/protobuf/nano/MessageNano;

    if-eqz v7, :cond_3

    .line 74
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    .line 75
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/protobuf/nano/Extension;->getValueFrom(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/protobuf/nano/MessageNano;

    .line 76
    .local v5, "newElements":[Lcom/google/protobuf/nano/MessageNano;
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v0, [Lcom/google/protobuf/nano/MessageNano;

    .line 77
    .local v0, "array":[Lcom/google/protobuf/nano/MessageNano;
    array-length v7, v0

    array-length v8, v5

    add-int/2addr v7, v8

    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/protobuf/nano/MessageNano;

    .line 78
    .local v4, "newArray":[Lcom/google/protobuf/nano/MessageNano;
    array-length v7, v0

    array-length v8, v5

    invoke-static {v5, v9, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    move-object v6, v4

    .line 80
    .local v6, "newValue":[Lcom/google/protobuf/nano/MessageNano;
    goto :goto_1

    .line 81
    .end local v0    # "array":[Lcom/google/protobuf/nano/MessageNano;
    .end local v4    # "newArray":[Lcom/google/protobuf/nano/MessageNano;
    .end local v5    # "newElements":[Lcom/google/protobuf/nano/MessageNano;
    .end local v6    # "newValue":[Lcom/google/protobuf/nano/MessageNano;
    :cond_3
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/protobuf/nano/Extension;->getValueFrom(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    .local v6, "newValue":Ljava/lang/Object;
    goto :goto_1
.end method

.method public final clone()Lcom/google/protobuf/nano/FieldData;
    .locals 7

    .prologue
    .line 242
    new-instance v0, Lcom/google/protobuf/nano/FieldData;

    invoke-direct {v0}, Lcom/google/protobuf/nano/FieldData;-><init>()V

    .line 244
    .local v0, "clone":Lcom/google/protobuf/nano/FieldData;
    :try_start_0
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    iput-object v5, v0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    .line 245
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-nez v5, :cond_1

    .line 246
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    .line 254
    :goto_0
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-nez v5, :cond_2

    .line 285
    :cond_0
    :goto_1
    return-object v0

    .line 248
    :cond_1
    iget-object v5, v0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    iget-object v6, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 286
    :catch_0
    move-exception v2

    .line 287
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 256
    .end local v2    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v5, v5, Lcom/google/protobuf/nano/MessageNano;

    if-eqz v5, :cond_3

    .line 257
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v5, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {v5}, Lcom/google/protobuf/nano/MessageNano;->clone()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v5

    iput-object v5, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_1

    .line 258
    :cond_3
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v5, v5, [B

    if-eqz v5, :cond_4

    .line 259
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v5, [B

    invoke-virtual {v5}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_1

    .line 260
    :cond_4
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v5, v5, [[B

    if-eqz v5, :cond_5

    .line 261
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v4, [[B

    .line 262
    .local v4, "valueArray":[[B
    array-length v5, v4

    new-array v1, v5, [[B

    .line 263
    .local v1, "cloneArray":[[B
    iput-object v1, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    .line 264
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 265
    aget-object v5, v4, v3

    invoke-virtual {v5}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    aput-object v5, v1, v3

    .line 264
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 267
    .end local v1    # "cloneArray":[[B
    .end local v3    # "i":I
    .end local v4    # "valueArray":[[B
    :cond_5
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v5, v5, [Z

    if-eqz v5, :cond_6

    .line 268
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v5, [Z

    invoke-virtual {v5}, [Z->clone()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_1

    .line 269
    :cond_6
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v5, v5, [I

    if-eqz v5, :cond_7

    .line 270
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v5, [I

    invoke-virtual {v5}, [I->clone()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_1

    .line 271
    :cond_7
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v5, v5, [J

    if-eqz v5, :cond_8

    .line 272
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v5, [J

    invoke-virtual {v5}, [J->clone()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto/16 :goto_1

    .line 273
    :cond_8
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v5, v5, [F

    if-eqz v5, :cond_9

    .line 274
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v5, [F

    invoke-virtual {v5}, [F->clone()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto/16 :goto_1

    .line 275
    :cond_9
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v5, v5, [D

    if-eqz v5, :cond_a

    .line 276
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v5, [D

    invoke-virtual {v5}, [D->clone()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto/16 :goto_1

    .line 277
    :cond_a
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v5, v5, [Lcom/google/protobuf/nano/MessageNano;

    if-eqz v5, :cond_0

    .line 278
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v4, [Lcom/google/protobuf/nano/MessageNano;

    .line 279
    .local v4, "valueArray":[Lcom/google/protobuf/nano/MessageNano;
    array-length v5, v4

    new-array v1, v5, [Lcom/google/protobuf/nano/MessageNano;

    .line 280
    .local v1, "cloneArray":[Lcom/google/protobuf/nano/MessageNano;
    iput-object v1, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    .line 281
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 282
    aget-object v5, v4, v3

    invoke-virtual {v5}, Lcom/google/protobuf/nano/MessageNano;->clone()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v5

    aput-object v5, v1, v3
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 281
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/protobuf/nano/FieldData;->clone()Lcom/google/protobuf/nano/FieldData;

    move-result-object v0

    return-object v0
.end method

.method computeSerializedSize()I
    .locals 4

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "size":I
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 127
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    iget-object v3, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/google/protobuf/nano/Extension;->computeSerializedSize(Ljava/lang/Object;)I

    move-result v0

    .line 133
    :cond_0
    return v0

    .line 129
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/nano/UnknownFieldData;

    .line 130
    .local v1, "unknownField":Lcom/google/protobuf/nano/UnknownFieldData;
    invoke-virtual {v1}, Lcom/google/protobuf/nano/UnknownFieldData;->computeSerializedSize()I

    move-result v3

    add-int/2addr v0, v3

    .line 131
    goto :goto_0
.end method

.method computeSerializedSizeAsMessageSet()I
    .locals 4

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "size":I
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 139
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    iget-object v3, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/google/protobuf/nano/Extension;->computeSerializedSizeAsMessageSet(Ljava/lang/Object;)I

    move-result v0

    .line 145
    :cond_0
    return v0

    .line 141
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/nano/UnknownFieldData;

    .line 142
    .local v1, "unknownField":Lcom/google/protobuf/nano/UnknownFieldData;
    invoke-virtual {v1}, Lcom/google/protobuf/nano/UnknownFieldData;->computeSerializedSizeAsMessageSet()I

    move-result v3

    add-int/2addr v0, v3

    .line 143
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 172
    if-ne p1, p0, :cond_1

    .line 173
    const/4 v2, 0x1

    .line 213
    :cond_0
    :goto_0
    return v2

    .line 175
    :cond_1
    instance-of v3, p1, Lcom/google/protobuf/nano/FieldData;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 179
    check-cast v1, Lcom/google/protobuf/nano/FieldData;

    .line 180
    .local v1, "other":Lcom/google/protobuf/nano/FieldData;
    iget-object v3, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v3, :cond_9

    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v3, :cond_9

    .line 184
    iget-object v3, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    iget-object v4, v1, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    if-ne v3, v4, :cond_0

    .line 187
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    iget-object v2, v2, Lcom/google/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_2

    .line 189
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 191
    :cond_2
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v2, v2, [B

    if-eqz v2, :cond_3

    .line 192
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [B

    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v3, [B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    goto :goto_0

    .line 193
    :cond_3
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v2, v2, [I

    if-eqz v2, :cond_4

    .line 194
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [I

    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v3, [I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    goto :goto_0

    .line 195
    :cond_4
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v2, v2, [J

    if-eqz v2, :cond_5

    .line 196
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [J

    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v3, [J

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    goto :goto_0

    .line 197
    :cond_5
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v2, v2, [F

    if-eqz v2, :cond_6

    .line 198
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [F

    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v3, [F

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    goto :goto_0

    .line 199
    :cond_6
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v2, v2, [D

    if-eqz v2, :cond_7

    .line 200
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [D

    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v3, [D

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v2

    goto/16 :goto_0

    .line 201
    :cond_7
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v2, v2, [Z

    if-eqz v2, :cond_8

    .line 202
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [Z

    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v3, [Z

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v2

    goto/16 :goto_0

    .line 204
    :cond_8
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_0

    .line 207
    :cond_9
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_a

    .line 209
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_0

    .line 213
    :cond_a
    :try_start_0
    invoke-direct {p0}, Lcom/google/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1}, Lcom/google/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto/16 :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method getUnknownField(I)Lcom/google/protobuf/nano/UnknownFieldData;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 88
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-object v0

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/UnknownFieldData;

    goto :goto_0
.end method

.method getUnknownFieldSize()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method getValue(Lcom/google/protobuf/nano/Extension;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/nano/Extension",
            "<*TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "extension":Lcom/google/protobuf/nano/Extension;, "Lcom/google/protobuf/nano/Extension<*TT;>;"
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/nano/Extension;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to getExtension with a different Extension."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    .line 112
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/Extension;->getValueFrom(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 222
    const/16 v1, 0x11

    .line 225
    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/google/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int/lit16 v1, v2, 0x20f

    .line 230
    return v1

    .line 226
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method setValue(Lcom/google/protobuf/nano/Extension;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/nano/Extension",
            "<*TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "extension":Lcom/google/protobuf/nano/Extension;, "Lcom/google/protobuf/nano/Extension<*TT;>;"
    .local p2, "newValue":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    .line 120
    iput-object p2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    .line 122
    return-void
.end method

.method writeAsMessageSetTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/google/protobuf/nano/Extension;->writeAsMessageSetTo(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 167
    :cond_0
    return-void

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/UnknownFieldData;

    .line 164
    .local v0, "unknownField":Lcom/google/protobuf/nano/UnknownFieldData;
    invoke-virtual {v0, p1}, Lcom/google/protobuf/nano/UnknownFieldData;->writeAsMessageSetTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    goto :goto_0
.end method

.method writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/google/protobuf/nano/Extension;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 157
    :cond_0
    return-void

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/UnknownFieldData;

    .line 154
    .local v0, "unknownField":Lcom/google/protobuf/nano/UnknownFieldData;
    invoke-virtual {v0, p1}, Lcom/google/protobuf/nano/UnknownFieldData;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    goto :goto_0
.end method
