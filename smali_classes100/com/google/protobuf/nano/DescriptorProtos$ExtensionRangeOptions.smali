.class public final Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtensionRangeOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;


# instance fields
.field public uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1281
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1282
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;->clear()Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;

    .line 1283
    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;
    .locals 2

    .prologue
    .line 1265
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;

    if-nez v0, :cond_1

    .line 1266
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1268
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;

    if-nez v0, :cond_0

    .line 1269
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;

    .line 1271
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1273
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;

    return-object v0

    .line 1271
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1368
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1362
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;
    .locals 1

    .prologue
    .line 1286
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    .line 1287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1288
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;->cachedSize:I

    .line 1289
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 1308
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 1309
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 1310
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 1311
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v0, v3, v1

    .line 1312
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v0, :cond_0

    .line 1313
    const/16 v3, 0x3e7

    .line 1314
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1310
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1318
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .end local v1    # "i":I
    :cond_1
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1326
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1327
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1331
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1332
    :sswitch_0
    return-object p0

    .line 1337
    :sswitch_1
    const/16 v5, 0x1f3a

    .line 1338
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1339
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-nez v5, :cond_2

    move v1, v4

    .line 1340
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    .line 1342
    .local v2, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v1, :cond_1

    .line 1343
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1345
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 1346
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v5, v2, v1

    .line 1347
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1348
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1345
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1339
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    :cond_2
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v1, v5

    goto :goto_1

    .line 1351
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    :cond_3
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v5, v2, v1

    .line 1352
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1353
    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    goto :goto_0

    .line 1327
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1f3a -> :sswitch_1
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
    .line 1259
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1295
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 1296
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1297
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v0, v2, v1

    .line 1298
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v0, :cond_0

    .line 1299
    const/16 v2, 0x3e7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1296
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1303
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .end local v1    # "i":I
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1304
    return-void
.end method
