.class public final Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;


# instance fields
.field public clientMessageType:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public options:Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

.field public serverMessageType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2641
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2642
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->clear()Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    .line 2643
    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;
    .locals 2

    .prologue
    .line 2616
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    if-nez v0, :cond_1

    .line 2617
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2619
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    if-nez v0, :cond_0

    .line 2620
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    .line 2622
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2624
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    return-object v0

    .line 2622
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2741
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2735
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2646
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->name:Ljava/lang/String;

    .line 2647
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->clientMessageType:Ljava/lang/String;

    .line 2648
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->serverMessageType:Ljava/lang/String;

    .line 2649
    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    .line 2650
    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 2651
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->cachedSize:I

    .line 2652
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 2675
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2676
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2677
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->name:Ljava/lang/String;

    .line 2678
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2680
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->clientMessageType:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->clientMessageType:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2681
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->clientMessageType:Ljava/lang/String;

    .line 2682
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2684
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->serverMessageType:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->serverMessageType:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2685
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->serverMessageType:Ljava/lang/String;

    .line 2686
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2688
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    if-eqz v1, :cond_3

    .line 2689
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    .line 2690
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2692
    :cond_3
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2700
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2701
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2705
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2706
    :sswitch_0
    return-object p0

    .line 2711
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->name:Ljava/lang/String;

    goto :goto_0

    .line 2715
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->clientMessageType:Ljava/lang/String;

    goto :goto_0

    .line 2719
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->serverMessageType:Ljava/lang/String;

    goto :goto_0

    .line 2723
    :sswitch_4
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    if-nez v1, :cond_1

    .line 2724
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;-><init>()V

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    .line 2726
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2701
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
    .line 2610
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2658
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2659
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2661
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->clientMessageType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->clientMessageType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2662
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->clientMessageType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2664
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->serverMessageType:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->serverMessageType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2665
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->serverMessageType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2667
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    if-eqz v0, :cond_3

    .line 2668
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2670
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2671
    return-void
.end method
