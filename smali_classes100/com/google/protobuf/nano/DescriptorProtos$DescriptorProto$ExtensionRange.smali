.class public final Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtensionRange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;


# instance fields
.field public end:I

.field public options:Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 633
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 634
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->clear()Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    .line 635
    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 2

    .prologue
    .line 611
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    if-nez v0, :cond_1

    .line 612
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 614
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    if-nez v0, :cond_0

    .line 615
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    .line 617
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    return-object v0

    .line 617
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 721
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 715
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 638
    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->start:I

    .line 639
    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->end:I

    .line 640
    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->options:Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;

    .line 641
    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 642
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->cachedSize:I

    .line 643
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 663
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 664
    .local v0, "size":I
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->start:I

    if-eqz v1, :cond_0

    .line 665
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->start:I

    .line 666
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 668
    :cond_0
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->end:I

    if-eqz v1, :cond_1

    .line 669
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->end:I

    .line 670
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 672
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->options:Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;

    if-eqz v1, :cond_2

    .line 673
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->options:Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;

    .line 674
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 676
    :cond_2
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 684
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 685
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 689
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 690
    :sswitch_0
    return-object p0

    .line 695
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->start:I

    goto :goto_0

    .line 699
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->end:I

    goto :goto_0

    .line 703
    :sswitch_3
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->options:Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;

    if-nez v1, :cond_1

    .line 704
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;-><init>()V

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->options:Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;

    .line 706
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->options:Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 685
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 605
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

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
    .line 649
    iget v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->start:I

    if-eqz v0, :cond_0

    .line 650
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->start:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 652
    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->end:I

    if-eqz v0, :cond_1

    .line 653
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->end:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->options:Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;

    if-eqz v0, :cond_2

    .line 656
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->options:Lcom/google/protobuf/nano/DescriptorProtos$ExtensionRangeOptions;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 658
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 659
    return-void
.end method
