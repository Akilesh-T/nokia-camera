.class public final Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;


# instance fields
.field public deprecated:Z

.field public failureDetectionDelay:D

.field public multicastStub:Z

.field public uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4558
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4559
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->clear()Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    .line 4560
    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;
    .locals 2

    .prologue
    .line 4533
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    if-nez v0, :cond_1

    .line 4534
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4536
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    if-nez v0, :cond_0

    .line 4537
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    .line 4539
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4541
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    return-object v0

    .line 4539
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4683
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4677
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4563
    iput-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->multicastStub:Z

    .line 4564
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->failureDetectionDelay:D

    .line 4565
    iput-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->deprecated:Z

    .line 4566
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    .line 4567
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 4568
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->cachedSize:I

    .line 4569
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 8

    .prologue
    .line 4598
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 4599
    .local v2, "size":I
    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->failureDetectionDelay:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 4600
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 4601
    const/16 v3, 0x10

    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->failureDetectionDelay:D

    .line 4602
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v2, v3

    .line 4604
    :cond_0
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->multicastStub:Z

    if-eqz v3, :cond_1

    .line 4605
    const/16 v3, 0x14

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->multicastStub:Z

    .line 4606
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 4608
    :cond_1
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->deprecated:Z

    if-eqz v3, :cond_2

    .line 4609
    const/16 v3, 0x21

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->deprecated:Z

    .line 4610
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 4612
    :cond_2
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v3, v3

    if-lez v3, :cond_4

    .line 4613
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 4614
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v0, v3, v1

    .line 4615
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v0, :cond_3

    .line 4616
    const/16 v3, 0x3e7

    .line 4617
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4613
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4621
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .end local v1    # "i":I
    :cond_4
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;
    .locals 8
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4629
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 4630
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 4634
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4635
    :sswitch_0
    return-object p0

    .line 4640
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->failureDetectionDelay:D

    goto :goto_0

    .line 4644
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->multicastStub:Z

    goto :goto_0

    .line 4648
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->deprecated:Z

    goto :goto_0

    .line 4652
    :sswitch_4
    const/16 v5, 0x1f3a

    .line 4653
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4654
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-nez v5, :cond_2

    move v1, v4

    .line 4655
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    .line 4657
    .local v2, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v1, :cond_1

    .line 4658
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4660
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 4661
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v5, v2, v1

    .line 4662
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4663
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4660
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4654
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    :cond_2
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v1, v5

    goto :goto_1

    .line 4666
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    :cond_3
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v5, v2, v1

    .line 4667
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4668
    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    goto :goto_0

    .line 4630
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x81 -> :sswitch_1
        0xa0 -> :sswitch_2
        0x108 -> :sswitch_3
        0x1f3a -> :sswitch_4
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
    .line 4527
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4575
    iget-wide v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->failureDetectionDelay:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 4576
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 4577
    const/16 v2, 0x10

    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->failureDetectionDelay:D

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 4579
    :cond_0
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->multicastStub:Z

    if-eqz v2, :cond_1

    .line 4580
    const/16 v2, 0x14

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->multicastStub:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4582
    :cond_1
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->deprecated:Z

    if-eqz v2, :cond_2

    .line 4583
    const/16 v2, 0x21

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->deprecated:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4585
    :cond_2
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 4586
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 4587
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v0, v2, v1

    .line 4588
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v0, :cond_3

    .line 4589
    const/16 v2, 0x3e7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 4586
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4593
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .end local v1    # "i":I
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4594
    return-void
.end method
