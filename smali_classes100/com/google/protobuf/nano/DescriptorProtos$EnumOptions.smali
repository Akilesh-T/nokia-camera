.class public final Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;


# instance fields
.field public allowAlias:Z

.field public deprecated:Z

.field public proto1Name:Ljava/lang/String;

.field public uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4272
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4273
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->clear()Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    .line 4274
    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;
    .locals 2

    .prologue
    .line 4247
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    if-nez v0, :cond_1

    .line 4248
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4250
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    if-nez v0, :cond_0

    .line 4251
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    .line 4253
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4255
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    return-object v0

    .line 4253
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4395
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4389
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4277
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->proto1Name:Ljava/lang/String;

    .line 4278
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->allowAlias:Z

    .line 4279
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->deprecated:Z

    .line 4280
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    .line 4281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 4282
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->cachedSize:I

    .line 4283
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 4311
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 4312
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->proto1Name:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->proto1Name:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4313
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->proto1Name:Ljava/lang/String;

    .line 4314
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4316
    :cond_0
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->allowAlias:Z

    if-eqz v3, :cond_1

    .line 4317
    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->allowAlias:Z

    .line 4318
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 4320
    :cond_1
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->deprecated:Z

    if-eqz v3, :cond_2

    .line 4321
    const/4 v3, 0x3

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->deprecated:Z

    .line 4322
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 4324
    :cond_2
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v3, v3

    if-lez v3, :cond_4

    .line 4325
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 4326
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v0, v3, v1

    .line 4327
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v0, :cond_3

    .line 4328
    const/16 v3, 0x3e7

    .line 4329
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4325
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4333
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .end local v1    # "i":I
    :cond_4
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4341
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 4342
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 4346
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4347
    :sswitch_0
    return-object p0

    .line 4352
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->proto1Name:Ljava/lang/String;

    goto :goto_0

    .line 4356
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->allowAlias:Z

    goto :goto_0

    .line 4360
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->deprecated:Z

    goto :goto_0

    .line 4364
    :sswitch_4
    const/16 v5, 0x1f3a

    .line 4365
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4366
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-nez v5, :cond_2

    move v1, v4

    .line 4367
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    .line 4369
    .local v2, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v1, :cond_1

    .line 4370
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4372
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 4373
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v5, v2, v1

    .line 4374
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4375
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4372
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4366
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    :cond_2
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v1, v5

    goto :goto_1

    .line 4378
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    :cond_3
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v5, v2, v1

    .line 4379
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4380
    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    goto :goto_0

    .line 4342
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 4241
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4289
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->proto1Name:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->proto1Name:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4290
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->proto1Name:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4292
    :cond_0
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->allowAlias:Z

    if-eqz v2, :cond_1

    .line 4293
    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->allowAlias:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4295
    :cond_1
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->deprecated:Z

    if-eqz v2, :cond_2

    .line 4296
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->deprecated:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4298
    :cond_2
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 4299
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 4300
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v0, v2, v1

    .line 4301
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v0, :cond_3

    .line 4302
    const/16 v2, 0x3e7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 4299
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4306
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .end local v1    # "i":I
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4307
    return-void
.end method
