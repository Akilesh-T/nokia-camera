.class public final Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;


# instance fields
.field public name:Ljava/lang/String;

.field public options:Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

.field public reservedName:[Ljava/lang/String;

.field public reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

.field public value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1942
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1943
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->clear()Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    .line 1944
    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    .locals 2

    .prologue
    .line 1914
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    if-nez v0, :cond_1

    .line 1915
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1917
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    if-nez v0, :cond_0

    .line 1918
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    .line 1920
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1922
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    return-object v0

    .line 1920
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2134
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2128
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1947
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->name:Ljava/lang/String;

    .line 1948
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    .line 1949
    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    .line 1950
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    .line 1951
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedName:[Ljava/lang/String;

    .line 1952
    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1953
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->cachedSize:I

    .line 1954
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .prologue
    .line 1995
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v4

    .line 1996
    .local v4, "size":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->name:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->name:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1997
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->name:Ljava/lang/String;

    .line 1998
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2000
    :cond_0
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    array-length v5, v5

    if-lez v5, :cond_2

    .line 2001
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    array-length v5, v5

    if-ge v3, v5, :cond_2

    .line 2002
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    aget-object v2, v5, v3

    .line 2003
    .local v2, "element":Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;
    if-eqz v2, :cond_1

    .line 2004
    const/4 v5, 0x2

    .line 2005
    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2001
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2009
    .end local v2    # "element":Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;
    .end local v3    # "i":I
    :cond_2
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    if-eqz v5, :cond_3

    .line 2010
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    .line 2011
    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2013
    :cond_3
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    array-length v5, v5

    if-lez v5, :cond_5

    .line 2014
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    array-length v5, v5

    if-ge v3, v5, :cond_5

    .line 2015
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    aget-object v2, v5, v3

    .line 2016
    .local v2, "element":Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;
    if-eqz v2, :cond_4

    .line 2017
    const/4 v5, 0x4

    .line 2018
    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2014
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2022
    .end local v2    # "element":Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;
    .end local v3    # "i":I
    :cond_5
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedName:[Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedName:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_8

    .line 2023
    const/4 v0, 0x0

    .line 2024
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 2025
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedName:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_7

    .line 2026
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedName:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 2027
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 2028
    add-int/lit8 v0, v0, 0x1

    .line 2030
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 2025
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2033
    .end local v2    # "element":Ljava/lang/String;
    :cond_7
    add-int/2addr v4, v1

    .line 2034
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 2036
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_8
    return v4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2044
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 2045
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 2049
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2050
    :sswitch_0
    return-object p0

    .line 2055
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->name:Ljava/lang/String;

    goto :goto_0

    .line 2059
    :sswitch_2
    const/16 v5, 0x12

    .line 2060
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2061
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    if-nez v5, :cond_2

    move v1, v4

    .line 2062
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    .line 2064
    .local v2, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;
    if-eqz v1, :cond_1

    .line 2065
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2067
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 2068
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;-><init>()V

    aput-object v5, v2, v1

    .line 2069
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2070
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2067
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2061
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;
    :cond_2
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    array-length v1, v5

    goto :goto_1

    .line 2073
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;
    :cond_3
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;-><init>()V

    aput-object v5, v2, v1

    .line 2074
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2075
    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    goto :goto_0

    .line 2079
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;
    :sswitch_3
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    if-nez v5, :cond_4

    .line 2080
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;-><init>()V

    iput-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    .line 2082
    :cond_4
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2086
    :sswitch_4
    const/16 v5, 0x22

    .line 2087
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2088
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    if-nez v5, :cond_6

    move v1, v4

    .line 2089
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    .line 2091
    .local v2, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;
    if-eqz v1, :cond_5

    .line 2092
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2094
    :cond_5
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_7

    .line 2095
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;-><init>()V

    aput-object v5, v2, v1

    .line 2096
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2097
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2094
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2088
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;
    :cond_6
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    array-length v1, v5

    goto :goto_3

    .line 2100
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;
    :cond_7
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;-><init>()V

    aput-object v5, v2, v1

    .line 2101
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2102
    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    goto/16 :goto_0

    .line 2106
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;
    :sswitch_5
    const/16 v5, 0x2a

    .line 2107
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2108
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedName:[Ljava/lang/String;

    if-nez v5, :cond_9

    move v1, v4

    .line 2109
    .restart local v1    # "i":I
    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 2110
    .local v2, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 2111
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedName:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2113
    :cond_8
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_a

    .line 2114
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 2115
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2113
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2108
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_9
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedName:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_5

    .line 2118
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 2119
    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedName:[Ljava/lang/String;

    goto/16 :goto_0

    .line 2045
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 1806
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

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
    .line 1960
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->name:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1961
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->name:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1963
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 1964
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1965
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    aget-object v0, v2, v1

    .line 1966
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;
    if-eqz v0, :cond_1

    .line 1967
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1964
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1971
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    if-eqz v2, :cond_3

    .line 1972
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1974
    :cond_3
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 1975
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 1976
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    aget-object v0, v2, v1

    .line 1977
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;
    if-eqz v0, :cond_4

    .line 1978
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1975
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1982
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;
    .end local v1    # "i":I
    :cond_5
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedName:[Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedName:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 1983
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedName:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 1984
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->reservedName:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 1985
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 1986
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1983
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1990
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1991
    return-void
.end method
