.class public final Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;


# instance fields
.field public method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

.field public name:Ljava/lang/String;

.field public options:Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

.field public stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2289
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2290
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->clear()Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    .line 2291
    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;
    .locals 2

    .prologue
    .line 2264
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    if-nez v0, :cond_1

    .line 2265
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2267
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    if-nez v0, :cond_0

    .line 2268
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    .line 2270
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2272
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    return-object v0

    .line 2270
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2441
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2435
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2294
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->name:Ljava/lang/String;

    .line 2295
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    .line 2296
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    .line 2297
    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    .line 2298
    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 2299
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->cachedSize:I

    .line 2300
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 2333
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 2334
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->name:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2335
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->name:Ljava/lang/String;

    .line 2336
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2338
    :cond_0
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    array-length v3, v3

    if-lez v3, :cond_2

    .line 2339
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 2340
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    aget-object v0, v3, v1

    .line 2341
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;
    if-eqz v0, :cond_1

    .line 2342
    const/4 v3, 0x2

    .line 2343
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2339
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2347
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;
    .end local v1    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    if-eqz v3, :cond_3

    .line 2348
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    .line 2349
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2351
    :cond_3
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    array-length v3, v3

    if-lez v3, :cond_5

    .line 2352
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 2353
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    aget-object v0, v3, v1

    .line 2354
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;
    if-eqz v0, :cond_4

    .line 2355
    const/4 v3, 0x4

    .line 2356
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2352
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2360
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;
    .end local v1    # "i":I
    :cond_5
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2368
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 2369
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 2373
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2374
    :sswitch_0
    return-object p0

    .line 2379
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->name:Ljava/lang/String;

    goto :goto_0

    .line 2383
    :sswitch_2
    const/16 v5, 0x12

    .line 2384
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2385
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    if-nez v5, :cond_2

    move v1, v4

    .line 2386
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    .line 2388
    .local v2, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;
    if-eqz v1, :cond_1

    .line 2389
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2391
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 2392
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;-><init>()V

    aput-object v5, v2, v1

    .line 2393
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2394
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2391
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2385
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;
    :cond_2
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    array-length v1, v5

    goto :goto_1

    .line 2397
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;
    :cond_3
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;-><init>()V

    aput-object v5, v2, v1

    .line 2398
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2399
    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    goto :goto_0

    .line 2403
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;
    :sswitch_3
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    if-nez v5, :cond_4

    .line 2404
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;-><init>()V

    iput-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    .line 2406
    :cond_4
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2410
    :sswitch_4
    const/16 v5, 0x22

    .line 2411
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2412
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    if-nez v5, :cond_6

    move v1, v4

    .line 2413
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    .line 2415
    .local v2, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;
    if-eqz v1, :cond_5

    .line 2416
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2418
    :cond_5
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_7

    .line 2419
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;-><init>()V

    aput-object v5, v2, v1

    .line 2420
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2421
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2418
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2412
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;
    :cond_6
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    array-length v1, v5

    goto :goto_3

    .line 2424
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;
    :cond_7
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;-><init>()V

    aput-object v5, v2, v1

    .line 2425
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2426
    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    goto/16 :goto_0

    .line 2369
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 2258
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

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
    .line 2306
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->name:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2307
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->name:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2309
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 2310
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 2311
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->method:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    aget-object v0, v2, v1

    .line 2312
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;
    if-eqz v0, :cond_1

    .line 2313
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2310
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2317
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    if-eqz v2, :cond_3

    .line 2318
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$ServiceOptions;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2320
    :cond_3
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 2321
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 2322
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->stream:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    aget-object v0, v2, v1

    .line 2323
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;
    if-eqz v0, :cond_4

    .line 2324
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2321
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2328
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;
    .end local v1    # "i":I
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2329
    return-void
.end method
