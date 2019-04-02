.class public final Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;,
        Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;


# instance fields
.field public enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

.field public extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

.field public extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

.field public field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

.field public name:Ljava/lang/String;

.field public nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

.field public oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

.field public options:Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

.field public reservedName:[Ljava/lang/String;

.field public reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 873
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 874
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->clear()Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    .line 875
    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    .locals 2

    .prologue
    .line 830
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    if-nez v0, :cond_1

    .line 831
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 833
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    if-nez v0, :cond_0

    .line 834
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    .line 836
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    return-object v0

    .line 836
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1255
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1249
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 878
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->name:Ljava/lang/String;

    .line 879
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    .line 880
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    .line 881
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    .line 882
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    .line 883
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    .line 884
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    .line 885
    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    .line 886
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    .line 887
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedName:[Ljava/lang/String;

    .line 888
    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 889
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->cachedSize:I

    .line 890
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .prologue
    .line 971
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v4

    .line 972
    .local v4, "size":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->name:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->name:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 973
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->name:Ljava/lang/String;

    .line 974
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 976
    :cond_0
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v5, v5

    if-lez v5, :cond_2

    .line 977
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v5, v5

    if-ge v3, v5, :cond_2

    .line 978
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    aget-object v2, v5, v3

    .line 979
    .local v2, "element":Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    if-eqz v2, :cond_1

    .line 980
    const/4 v5, 0x2

    .line 981
    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 977
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 985
    .end local v2    # "element":Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    .end local v3    # "i":I
    :cond_2
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    array-length v5, v5

    if-lez v5, :cond_4

    .line 986
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    array-length v5, v5

    if-ge v3, v5, :cond_4

    .line 987
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    aget-object v2, v5, v3

    .line 988
    .local v2, "element":Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    if-eqz v2, :cond_3

    .line 989
    const/4 v5, 0x3

    .line 990
    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 986
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 994
    .end local v2    # "element":Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    .end local v3    # "i":I
    :cond_4
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    array-length v5, v5

    if-lez v5, :cond_6

    .line 995
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    array-length v5, v5

    if-ge v3, v5, :cond_6

    .line 996
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    aget-object v2, v5, v3

    .line 997
    .local v2, "element":Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    if-eqz v2, :cond_5

    .line 998
    const/4 v5, 0x4

    .line 999
    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 995
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1003
    .end local v2    # "element":Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    .end local v3    # "i":I
    :cond_6
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    array-length v5, v5

    if-lez v5, :cond_8

    .line 1004
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    array-length v5, v5

    if-ge v3, v5, :cond_8

    .line 1005
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    aget-object v2, v5, v3

    .line 1006
    .local v2, "element":Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;
    if-eqz v2, :cond_7

    .line 1007
    const/4 v5, 0x5

    .line 1008
    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1004
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1012
    .end local v2    # "element":Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;
    .end local v3    # "i":I
    :cond_8
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v5, v5

    if-lez v5, :cond_a

    .line 1013
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v5, v5

    if-ge v3, v5, :cond_a

    .line 1014
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    aget-object v2, v5, v3

    .line 1015
    .local v2, "element":Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    if-eqz v2, :cond_9

    .line 1016
    const/4 v5, 0x6

    .line 1017
    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1013
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1021
    .end local v2    # "element":Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    .end local v3    # "i":I
    :cond_a
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    if-eqz v5, :cond_b

    .line 1022
    const/4 v5, 0x7

    iget-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    .line 1023
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1025
    :cond_b
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    array-length v5, v5

    if-lez v5, :cond_d

    .line 1026
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    array-length v5, v5

    if-ge v3, v5, :cond_d

    .line 1027
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    aget-object v2, v5, v3

    .line 1028
    .local v2, "element":Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;
    if-eqz v2, :cond_c

    .line 1029
    const/16 v5, 0x8

    .line 1030
    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1026
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1034
    .end local v2    # "element":Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;
    .end local v3    # "i":I
    :cond_d
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    array-length v5, v5

    if-lez v5, :cond_f

    .line 1035
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_6
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    array-length v5, v5

    if-ge v3, v5, :cond_f

    .line 1036
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    aget-object v2, v5, v3

    .line 1037
    .local v2, "element":Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;
    if-eqz v2, :cond_e

    .line 1038
    const/16 v5, 0x9

    .line 1039
    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1035
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1043
    .end local v2    # "element":Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;
    .end local v3    # "i":I
    :cond_f
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedName:[Ljava/lang/String;

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedName:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_12

    .line 1044
    const/4 v0, 0x0

    .line 1045
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 1046
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_7
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedName:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_11

    .line 1047
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedName:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 1048
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_10

    .line 1049
    add-int/lit8 v0, v0, 0x1

    .line 1051
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 1046
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1054
    .end local v2    # "element":Ljava/lang/String;
    :cond_11
    add-int/2addr v4, v1

    .line 1055
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 1057
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_12
    return v4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1065
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1066
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1070
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1071
    :sswitch_0
    return-object p0

    .line 1076
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->name:Ljava/lang/String;

    goto :goto_0

    .line 1080
    :sswitch_2
    const/16 v5, 0x12

    .line 1081
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1082
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-nez v5, :cond_2

    move v1, v4

    .line 1083
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    .line 1085
    .local v2, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    if-eqz v1, :cond_1

    .line 1086
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1088
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 1089
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;-><init>()V

    aput-object v5, v2, v1

    .line 1090
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1091
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1088
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1082
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    :cond_2
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v1, v5

    goto :goto_1

    .line 1094
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    :cond_3
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;-><init>()V

    aput-object v5, v2, v1

    .line 1095
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1096
    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    goto :goto_0

    .line 1100
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    :sswitch_3
    const/16 v5, 0x1a

    .line 1101
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1102
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    if-nez v5, :cond_5

    move v1, v4

    .line 1103
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    .line 1105
    .local v2, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    if-eqz v1, :cond_4

    .line 1106
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1108
    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 1109
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;-><init>()V

    aput-object v5, v2, v1

    .line 1110
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1111
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1108
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1102
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    :cond_5
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    array-length v1, v5

    goto :goto_3

    .line 1114
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    :cond_6
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;-><init>()V

    aput-object v5, v2, v1

    .line 1115
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1116
    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    goto/16 :goto_0

    .line 1120
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    :sswitch_4
    const/16 v5, 0x22

    .line 1121
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1122
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    if-nez v5, :cond_8

    move v1, v4

    .line 1123
    .restart local v1    # "i":I
    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    .line 1125
    .local v2, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    if-eqz v1, :cond_7

    .line 1126
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1128
    :cond_7
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_9

    .line 1129
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;-><init>()V

    aput-object v5, v2, v1

    .line 1130
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1131
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1128
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1122
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    :cond_8
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    array-length v1, v5

    goto :goto_5

    .line 1134
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    :cond_9
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;-><init>()V

    aput-object v5, v2, v1

    .line 1135
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1136
    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    goto/16 :goto_0

    .line 1140
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    :sswitch_5
    const/16 v5, 0x2a

    .line 1141
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1142
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    if-nez v5, :cond_b

    move v1, v4

    .line 1143
    .restart local v1    # "i":I
    :goto_7
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    .line 1145
    .local v2, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;
    if-eqz v1, :cond_a

    .line 1146
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1148
    :cond_a
    :goto_8
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_c

    .line 1149
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;-><init>()V

    aput-object v5, v2, v1

    .line 1150
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1151
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1148
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1142
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;
    :cond_b
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    array-length v1, v5

    goto :goto_7

    .line 1154
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;
    :cond_c
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;-><init>()V

    aput-object v5, v2, v1

    .line 1155
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1156
    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    goto/16 :goto_0

    .line 1160
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;
    :sswitch_6
    const/16 v5, 0x32

    .line 1161
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1162
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-nez v5, :cond_e

    move v1, v4

    .line 1163
    .restart local v1    # "i":I
    :goto_9
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    .line 1165
    .local v2, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    if-eqz v1, :cond_d

    .line 1166
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1168
    :cond_d
    :goto_a
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_f

    .line 1169
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;-><init>()V

    aput-object v5, v2, v1

    .line 1170
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1171
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1168
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1162
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    :cond_e
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v1, v5

    goto :goto_9

    .line 1174
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    :cond_f
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;-><init>()V

    aput-object v5, v2, v1

    .line 1175
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1176
    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    goto/16 :goto_0

    .line 1180
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    :sswitch_7
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    if-nez v5, :cond_10

    .line 1181
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;-><init>()V

    iput-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    .line 1183
    :cond_10
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1187
    :sswitch_8
    const/16 v5, 0x42

    .line 1188
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1189
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    if-nez v5, :cond_12

    move v1, v4

    .line 1190
    .restart local v1    # "i":I
    :goto_b
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    .line 1192
    .local v2, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;
    if-eqz v1, :cond_11

    .line 1193
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1195
    :cond_11
    :goto_c
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_13

    .line 1196
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;-><init>()V

    aput-object v5, v2, v1

    .line 1197
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1198
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1195
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1189
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;
    :cond_12
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    array-length v1, v5

    goto :goto_b

    .line 1201
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;
    :cond_13
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;-><init>()V

    aput-object v5, v2, v1

    .line 1202
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1203
    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    goto/16 :goto_0

    .line 1207
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;
    :sswitch_9
    const/16 v5, 0x4a

    .line 1208
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1209
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    if-nez v5, :cond_15

    move v1, v4

    .line 1210
    .restart local v1    # "i":I
    :goto_d
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    .line 1212
    .local v2, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;
    if-eqz v1, :cond_14

    .line 1213
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1215
    :cond_14
    :goto_e
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_16

    .line 1216
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;-><init>()V

    aput-object v5, v2, v1

    .line 1217
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1218
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1215
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1209
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;
    :cond_15
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    array-length v1, v5

    goto :goto_d

    .line 1221
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;
    :cond_16
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;-><init>()V

    aput-object v5, v2, v1

    .line 1222
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1223
    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    goto/16 :goto_0

    .line 1227
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;
    :sswitch_a
    const/16 v5, 0x52

    .line 1228
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1229
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedName:[Ljava/lang/String;

    if-nez v5, :cond_18

    move v1, v4

    .line 1230
    .restart local v1    # "i":I
    :goto_f
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 1231
    .local v2, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_17

    .line 1232
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedName:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1234
    :cond_17
    :goto_10
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_19

    .line 1235
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 1236
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1234
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1229
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_18
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedName:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_f

    .line 1239
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_19
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 1240
    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedName:[Ljava/lang/String;

    goto/16 :goto_0

    .line 1066
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
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
    .line 602
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

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
    .line 896
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->name:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 897
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->name:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 899
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 900
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 901
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    aget-object v0, v2, v1

    .line 902
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    if-eqz v0, :cond_1

    .line 903
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 900
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 907
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 908
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 909
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    aget-object v0, v2, v1

    .line 910
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    if-eqz v0, :cond_3

    .line 911
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 908
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 915
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    .end local v1    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    array-length v2, v2

    if-lez v2, :cond_6

    .line 916
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 917
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    aget-object v0, v2, v1

    .line 918
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    if-eqz v0, :cond_5

    .line 919
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 916
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 923
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    .end local v1    # "i":I
    :cond_6
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    array-length v2, v2

    if-lez v2, :cond_8

    .line 924
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 925
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    aget-object v0, v2, v1

    .line 926
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;
    if-eqz v0, :cond_7

    .line 927
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 924
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 931
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;
    .end local v1    # "i":I
    :cond_8
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v2, v2

    if-lez v2, :cond_a

    .line 932
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v2, v2

    if-ge v1, v2, :cond_a

    .line 933
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    aget-object v0, v2, v1

    .line 934
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    if-eqz v0, :cond_9

    .line 935
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 932
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 939
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    .end local v1    # "i":I
    :cond_a
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    if-eqz v2, :cond_b

    .line 940
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 942
    :cond_b
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    array-length v2, v2

    if-lez v2, :cond_d

    .line 943
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    array-length v2, v2

    if-ge v1, v2, :cond_d

    .line 944
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    aget-object v0, v2, v1

    .line 945
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;
    if-eqz v0, :cond_c

    .line 946
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 943
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 950
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;
    .end local v1    # "i":I
    :cond_d
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    array-length v2, v2

    if-lez v2, :cond_f

    .line 951
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    array-length v2, v2

    if-ge v1, v2, :cond_f

    .line 952
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    aget-object v0, v2, v1

    .line 953
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;
    if-eqz v0, :cond_e

    .line 954
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 951
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 958
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;
    .end local v1    # "i":I
    :cond_f
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedName:[Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedName:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_11

    .line 959
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedName:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_11

    .line 960
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedName:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 961
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_10

    .line 962
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 959
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 966
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_11
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 967
    return-void
.end method
