.class public final Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Location"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;


# instance fields
.field public leadingComments:Ljava/lang/String;

.field public leadingDetachedComments:[Ljava/lang/String;

.field public path:[I

.field public span:[I

.field public trailingComments:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6056
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6057
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->clear()Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    .line 6058
    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;
    .locals 2

    .prologue
    .line 6028
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    if-nez v0, :cond_1

    .line 6029
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 6031
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    if-nez v0, :cond_0

    .line 6032
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    .line 6034
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6036
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    return-object v0

    .line 6034
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6301
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 6295
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    .prologue
    .line 6061
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    .line 6062
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    .line 6063
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingComments:Ljava/lang/String;

    .line 6064
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->trailingComments:Ljava/lang/String;

    .line 6065
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    .line 6066
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 6067
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->cachedSize:I

    .line 6068
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .prologue
    .line 6119
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v4

    .line 6120
    .local v4, "size":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    array-length v5, v5

    if-lez v5, :cond_1

    .line 6121
    const/4 v1, 0x0

    .line 6122
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    array-length v5, v5

    if-ge v3, v5, :cond_0

    .line 6123
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    aget v2, v5, v3

    .line 6125
    .local v2, "element":I
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 6122
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6127
    .end local v2    # "element":I
    :cond_0
    add-int/2addr v4, v1

    .line 6128
    add-int/lit8 v4, v4, 0x1

    .line 6130
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 6132
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_1
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    array-length v5, v5

    if-lez v5, :cond_3

    .line 6133
    const/4 v1, 0x0

    .line 6134
    .restart local v1    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    array-length v5, v5

    if-ge v3, v5, :cond_2

    .line 6135
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    aget v2, v5, v3

    .line 6137
    .restart local v2    # "element":I
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 6134
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6139
    .end local v2    # "element":I
    :cond_2
    add-int/2addr v4, v1

    .line 6140
    add-int/lit8 v4, v4, 0x1

    .line 6142
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 6144
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_3
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingComments:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingComments:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 6145
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingComments:Ljava/lang/String;

    .line 6146
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 6148
    :cond_4
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->trailingComments:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->trailingComments:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 6149
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->trailingComments:Ljava/lang/String;

    .line 6150
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 6152
    :cond_5
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_8

    .line 6153
    const/4 v0, 0x0

    .line 6154
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 6155
    .restart local v1    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_7

    .line 6156
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 6157
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 6158
    add-int/lit8 v0, v0, 0x1

    .line 6160
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 6155
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 6163
    .end local v2    # "element":Ljava/lang/String;
    :cond_7
    add-int/2addr v4, v1

    .line 6164
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 6166
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_8
    return v4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;
    .locals 9
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 6174
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 6175
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 6179
    invoke-super {p0, p1, v6}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 6180
    :sswitch_0
    return-object p0

    .line 6185
    :sswitch_1
    const/16 v8, 0x8

    .line 6186
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 6187
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    if-nez v8, :cond_2

    move v1, v7

    .line 6188
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 6189
    .local v4, "newArray":[I
    if-eqz v1, :cond_1

    .line 6190
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6192
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 6193
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 6194
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 6192
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6187
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_2
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    array-length v1, v8

    goto :goto_1

    .line 6197
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 6198
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    goto :goto_0

    .line 6202
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 6203
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 6205
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 6206
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 6207
    .local v5, "startPos":I
    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_4

    .line 6208
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 6209
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 6211
    :cond_4
    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 6212
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    if-nez v8, :cond_6

    move v1, v7

    .line 6213
    .restart local v1    # "i":I
    :goto_4
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 6214
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_5

    .line 6215
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6217
    :cond_5
    :goto_5
    array-length v8, v4

    if-ge v1, v8, :cond_7

    .line 6218
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 6217
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 6212
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_6
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    array-length v1, v8

    goto :goto_4

    .line 6220
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_7
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    .line 6221
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 6225
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_3
    const/16 v8, 0x10

    .line 6226
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 6227
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    if-nez v8, :cond_9

    move v1, v7

    .line 6228
    .restart local v1    # "i":I
    :goto_6
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 6229
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_8

    .line 6230
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6232
    :cond_8
    :goto_7
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_a

    .line 6233
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 6234
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 6232
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 6227
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_9
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    array-length v1, v8

    goto :goto_6

    .line 6237
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 6238
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    goto/16 :goto_0

    .line 6242
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 6243
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 6245
    .restart local v3    # "limit":I
    const/4 v0, 0x0

    .line 6246
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 6247
    .restart local v5    # "startPos":I
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_b

    .line 6248
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 6249
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 6251
    :cond_b
    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 6252
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    if-nez v8, :cond_d

    move v1, v7

    .line 6253
    .restart local v1    # "i":I
    :goto_9
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 6254
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_c

    .line 6255
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6257
    :cond_c
    :goto_a
    array-length v8, v4

    if-ge v1, v8, :cond_e

    .line 6258
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 6257
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 6252
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_d
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    array-length v1, v8

    goto :goto_9

    .line 6260
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_e
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    .line 6261
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 6265
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingComments:Ljava/lang/String;

    goto/16 :goto_0

    .line 6269
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->trailingComments:Ljava/lang/String;

    goto/16 :goto_0

    .line 6273
    :sswitch_7
    const/16 v8, 0x32

    .line 6274
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 6275
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    if-nez v8, :cond_10

    move v1, v7

    .line 6276
    .restart local v1    # "i":I
    :goto_b
    add-int v8, v1, v0

    new-array v4, v8, [Ljava/lang/String;

    .line 6277
    .local v4, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_f

    .line 6278
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6280
    :cond_f
    :goto_c
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_11

    .line 6281
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v1

    .line 6282
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 6280
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 6275
    .end local v1    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :cond_10
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    array-length v1, v8

    goto :goto_b

    .line 6285
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Ljava/lang/String;
    :cond_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v1

    .line 6286
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    goto/16 :goto_0

    .line 6175
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x10 -> :sswitch_3
        0x12 -> :sswitch_4
        0x1a -> :sswitch_5
        0x22 -> :sswitch_6
        0x32 -> :sswitch_7
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6022
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6074
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    array-length v3, v3

    if-lez v3, :cond_1

    .line 6075
    const/4 v0, 0x0

    .line 6076
    .local v0, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 6077
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    aget v1, v3, v2

    .line 6079
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 6076
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6081
    .end local v1    # "element":I
    :cond_0
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 6082
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 6083
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 6084
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    aget v3, v3, v2

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    .line 6083
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6087
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    array-length v3, v3

    if-lez v3, :cond_3

    .line 6088
    const/4 v0, 0x0

    .line 6089
    .restart local v0    # "dataSize":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 6090
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    aget v1, v3, v2

    .line 6092
    .restart local v1    # "element":I
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 6089
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 6094
    .end local v1    # "element":I
    :cond_2
    const/16 v3, 0x12

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 6095
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 6096
    const/4 v2, 0x0

    :goto_3
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 6097
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    aget v3, v3, v2

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    .line 6096
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 6100
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingComments:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingComments:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 6101
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingComments:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6103
    :cond_4
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->trailingComments:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->trailingComments:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 6104
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->trailingComments:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6106
    :cond_5
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_7

    .line 6107
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_7

    .line 6108
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    aget-object v1, v3, v2

    .line 6109
    .local v1, "element":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 6110
    const/4 v3, 0x6

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6107
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 6114
    .end local v1    # "element":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6115
    return-void
.end method
