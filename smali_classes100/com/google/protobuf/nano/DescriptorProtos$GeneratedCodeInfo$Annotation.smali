.class public final Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Annotation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;


# instance fields
.field public begin:I

.field public end:I

.field public path:[I

.field public sourceFile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6449
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6450
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->clear()Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    .line 6451
    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 2

    .prologue
    .line 6424
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    if-nez v0, :cond_1

    .line 6425
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 6427
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    if-nez v0, :cond_0

    .line 6428
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    .line 6430
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6432
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    return-object v0

    .line 6430
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6600
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 6594
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6454
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    .line 6455
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile:Ljava/lang/String;

    .line 6456
    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->begin:I

    .line 6457
    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->end:I

    .line 6458
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 6459
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->cachedSize:I

    .line 6460
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    .line 6493
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v3

    .line 6494
    .local v3, "size":I
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    array-length v4, v4

    if-lez v4, :cond_1

    .line 6495
    const/4 v0, 0x0

    .line 6496
    .local v0, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 6497
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    aget v1, v4, v2

    .line 6499
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 6496
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6501
    .end local v1    # "element":I
    :cond_0
    add-int/2addr v3, v0

    .line 6502
    add-int/lit8 v3, v3, 0x1

    .line 6504
    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 6506
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 6507
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile:Ljava/lang/String;

    .line 6508
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 6510
    :cond_2
    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->begin:I

    if-eqz v4, :cond_3

    .line 6511
    const/4 v4, 0x3

    iget v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->begin:I

    .line 6512
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 6514
    :cond_3
    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->end:I

    if-eqz v4, :cond_4

    .line 6515
    const/4 v4, 0x4

    iget v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->end:I

    .line 6516
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 6518
    :cond_4
    return v3
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 9
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 6526
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 6527
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 6531
    invoke-super {p0, p1, v6}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 6532
    :sswitch_0
    return-object p0

    .line 6537
    :sswitch_1
    const/16 v8, 0x8

    .line 6538
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 6539
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    if-nez v8, :cond_2

    move v1, v7

    .line 6540
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 6541
    .local v4, "newArray":[I
    if-eqz v1, :cond_1

    .line 6542
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6544
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 6545
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 6546
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 6544
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6539
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_2
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    array-length v1, v8

    goto :goto_1

    .line 6549
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 6550
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    goto :goto_0

    .line 6554
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 6555
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 6557
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 6558
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 6559
    .local v5, "startPos":I
    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_4

    .line 6560
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 6561
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 6563
    :cond_4
    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 6564
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    if-nez v8, :cond_6

    move v1, v7

    .line 6565
    .restart local v1    # "i":I
    :goto_4
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 6566
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_5

    .line 6567
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6569
    :cond_5
    :goto_5
    array-length v8, v4

    if-ge v1, v8, :cond_7

    .line 6570
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 6569
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 6564
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_6
    iget-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    array-length v1, v8

    goto :goto_4

    .line 6572
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_7
    iput-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    .line 6573
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 6577
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile:Ljava/lang/String;

    goto/16 :goto_0

    .line 6581
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->begin:I

    goto/16 :goto_0

    .line 6585
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->end:I

    goto/16 :goto_0

    .line 6527
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x12 -> :sswitch_3
        0x18 -> :sswitch_4
        0x20 -> :sswitch_5
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
    .line 6418
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;

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
    .line 6466
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    array-length v3, v3

    if-lez v3, :cond_1

    .line 6467
    const/4 v0, 0x0

    .line 6468
    .local v0, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 6469
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    aget v1, v3, v2

    .line 6471
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 6468
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6473
    .end local v1    # "element":I
    :cond_0
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 6474
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 6475
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 6476
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->path:[I

    aget v3, v3, v2

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    .line 6475
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6479
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6480
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6482
    :cond_2
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->begin:I

    if-eqz v3, :cond_3

    .line 6483
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->begin:I

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6485
    :cond_3
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->end:I

    if-eqz v3, :cond_4

    .line 6486
    const/4 v3, 0x4

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$GeneratedCodeInfo$Annotation;->end:I

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6488
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6489
    return-void
.end method
