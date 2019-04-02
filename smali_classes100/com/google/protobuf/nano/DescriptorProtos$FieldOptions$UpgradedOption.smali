.class public final Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpgradedOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;


# instance fields
.field public name:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3766
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3767
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->clear()Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    .line 3768
    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;
    .locals 2

    .prologue
    .line 3747
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    if-nez v0, :cond_1

    .line 3748
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3750
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    if-nez v0, :cond_0

    .line 3751
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    .line 3753
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3755
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    return-object v0

    .line 3753
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3839
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3833
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;
    .locals 1

    .prologue
    .line 3771
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->name:Ljava/lang/String;

    .line 3772
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->value:Ljava/lang/String;

    .line 3773
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3774
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->cachedSize:I

    .line 3775
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 3792
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 3793
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3794
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->name:Ljava/lang/String;

    .line 3795
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3797
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->value:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->value:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3798
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->value:Ljava/lang/String;

    .line 3799
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3801
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3809
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3810
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3814
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3815
    :sswitch_0
    return-object p0

    .line 3820
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->name:Ljava/lang/String;

    goto :goto_0

    .line 3824
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->value:Ljava/lang/String;

    goto :goto_0

    .line 3810
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 3741
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

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
    .line 3781
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3782
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3784
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->value:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->value:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3785
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->value:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3787
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3788
    return-void
.end method
