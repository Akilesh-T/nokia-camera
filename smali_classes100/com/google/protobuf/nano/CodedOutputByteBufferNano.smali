.class public final Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
.super Ljava/lang/Object;
.source "CodedOutputByteBufferNano.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;
    }
.end annotation


# static fields
.field public static final LITTLE_ENDIAN_32_SIZE:I = 0x4

.field public static final LITTLE_ENDIAN_64_SIZE:I = 0x8

.field private static final MAX_UTF8_EXPANSION:I = 0x3


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private codedOutputStream:Lcom/google/protobuf/CodedOutputStream;

.field private codedOutputStreamPosition:I


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    .line 70
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 71
    return-void
.end method

.method private constructor <init>([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 65
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;-><init>(Ljava/nio/ByteBuffer;)V

    .line 66
    return-void
.end method

.method public static computeBoolSize(IZ)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Z

    .prologue
    .line 657
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSizeNoTag(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeBoolSizeNoTag(Z)I
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 820
    const/4 v0, 0x1

    return v0
.end method

.method public static computeBytesSize(I[B)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # [B

    .prologue
    .line 689
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSizeNoTag([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeBytesSizeNoTag([B)I
    .locals 2
    .param p0, "value"    # [B

    .prologue
    .line 842
    array-length v0, p0

    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    array-length v1, p0

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeDoubleSize(ID)I
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # D

    .prologue
    .line 602
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSizeNoTag(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeDoubleSizeNoTag(D)I
    .locals 1
    .param p0, "value"    # D

    .prologue
    .line 768
    const/16 v0, 0x8

    return v0
.end method

.method public static computeEnumSize(II)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I

    .prologue
    .line 705
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeEnumSizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeEnumSizeNoTag(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 855
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static computeFixed32Size(II)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I

    .prologue
    .line 650
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeFixed32SizeNoTag(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 815
    const/4 v0, 0x4

    return v0
.end method

.method public static computeFixed64Size(IJ)I
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J

    .prologue
    .line 642
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeFixed64SizeNoTag(J)I
    .locals 1
    .param p0, "value"    # J

    .prologue
    .line 810
    const/16 v0, 0x8

    return v0
.end method

.method public static computeFloatSize(IF)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # F

    .prologue
    .line 610
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSizeNoTag(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeFloatSizeNoTag(F)I
    .locals 1
    .param p0, "value"    # F

    .prologue
    .line 776
    const/4 v0, 0x4

    return v0
.end method

.method public static computeGroupSize(ILcom/google/protobuf/nano/MessageNano;)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Lcom/google/protobuf/nano/MessageNano;

    .prologue
    .line 673
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeGroupSizeNoTag(Lcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeGroupSizeNoTag(Lcom/google/protobuf/nano/MessageNano;)I
    .locals 1
    .param p0, "value"    # Lcom/google/protobuf/nano/MessageNano;

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    return v0
.end method

.method public static computeInt32Size(II)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I

    .prologue
    .line 634
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeInt32SizeNoTag(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 800
    if-ltz p0, :cond_0

    .line 801
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    .line 804
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static computeInt64Size(IJ)I
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J

    .prologue
    .line 626
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeInt64SizeNoTag(J)I
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 792
    invoke-static {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint64Size(J)I

    move-result v0

    return v0
.end method

.method public static computeMessageSetExtensionSize(ILcom/google/protobuf/nano/MessageNano;)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Lcom/google/protobuf/nano/MessageNano;

    .prologue
    .line 745
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    .line 746
    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    .line 747
    invoke-static {v1, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 745
    return v0
.end method

.method public static computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Lcom/google/protobuf/nano/MessageNano;

    .prologue
    .line 681
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSizeNoTag(Lcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeMessageSizeNoTag(Lcom/google/protobuf/nano/MessageNano;)I
    .locals 2
    .param p0, "value"    # Lcom/google/protobuf/nano/MessageNano;

    .prologue
    .line 836
    invoke-virtual {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 837
    .local v0, "size":I
    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public static computeRawMessageSetExtensionSize(I[B)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # [B

    .prologue
    .line 755
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    .line 756
    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    .line 757
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    add-int/2addr v0, v1

    array-length v1, p1

    add-int/2addr v0, v1

    .line 755
    return v0
.end method

.method public static computeRawVarint32Size(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 996
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1000
    :goto_0
    return v0

    .line 997
    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 998
    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 999
    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 1000
    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static computeRawVarint64Size(J)I
    .locals 4
    .param p0, "value"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 1018
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1027
    :goto_0
    return v0

    .line 1019
    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 1020
    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 1021
    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 1022
    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    .line 1023
    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    .line 1024
    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    .line 1025
    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    .line 1026
    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    .line 1027
    :cond_8
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static computeSFixed32Size(II)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I

    .prologue
    .line 713
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeSFixed32SizeNoTag(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 860
    const/4 v0, 0x4

    return v0
.end method

.method public static computeSFixed64Size(IJ)I
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J

    .prologue
    .line 721
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeSFixed64SizeNoTag(J)I
    .locals 1
    .param p0, "value"    # J

    .prologue
    .line 865
    const/16 v0, 0x8

    return v0
.end method

.method public static computeSInt32Size(II)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I

    .prologue
    .line 729
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeSInt32SizeNoTag(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 870
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->encodeZigZag32(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static computeSInt64Size(IJ)I
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J

    .prologue
    .line 737
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeSInt64SizeNoTag(J)I
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 875
    invoke-static {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->encodeZigZag64(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint64Size(J)I

    move-result v0

    return v0
.end method

.method public static computeStringSize(ILjava/lang/String;)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 665
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeStringSizeNoTag(Ljava/lang/String;)I
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 825
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v0

    .line 826
    .local v0, "length":I
    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public static computeTagSize(I)I
    .locals 1
    .param p0, "fieldNumber"    # I

    .prologue
    .line 972
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static computeUInt32Size(II)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I

    .prologue
    .line 697
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeUInt32SizeNoTag(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 847
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static computeUInt64Size(IJ)I
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J

    .prologue
    .line 618
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeUInt64SizeNoTag(J)I
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 784
    invoke-static {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint64Size(J)I

    move-result v0

    return v0
.end method

.method private static encode(Ljava/lang/CharSequence;[BII)I
    .locals 12
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/16 v10, 0x80

    .line 482
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 483
    .local v7, "utf16Length":I
    move v3, p2

    .line 484
    .local v3, "j":I
    const/4 v2, 0x0

    .line 485
    .local v2, "i":I
    add-int v5, p2, p3

    .line 488
    .local v5, "limit":I
    :goto_0
    if-ge v2, v7, :cond_0

    add-int v8, v2, v3

    if-ge v8, v5, :cond_0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .local v0, "c":C
    if-ge v0, v10, :cond_0

    .line 489
    add-int v8, v3, v2

    int-to-byte v9, v0

    aput-byte v9, p1, v8

    .line 488
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 491
    .end local v0    # "c":C
    :cond_0
    if-ne v2, v7, :cond_1

    .line 492
    add-int v4, v3, v7

    .line 523
    :goto_1
    return v4

    .line 494
    :cond_1
    add-int/2addr v3, v2

    move v4, v3

    .line 495
    .end local v3    # "j":I
    .local v4, "j":I
    :goto_2
    if-ge v2, v7, :cond_9

    .line 496
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 497
    .restart local v0    # "c":C
    if-ge v0, v10, :cond_2

    if-ge v4, v5, :cond_2

    .line 498
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    int-to-byte v8, v0

    aput-byte v8, p1, v4

    .line 495
    :goto_3
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3    # "j":I
    .restart local v4    # "j":I
    goto :goto_2

    .line 499
    :cond_2
    const/16 v8, 0x800

    if-ge v0, v8, :cond_3

    add-int/lit8 v8, v5, -0x2

    if-gt v4, v8, :cond_3

    .line 500
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    ushr-int/lit8 v8, v0, 0x6

    or-int/lit16 v8, v8, 0x3c0

    int-to-byte v8, v8

    aput-byte v8, p1, v4

    .line 501
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    and-int/lit8 v8, v0, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, p1, v3

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_3

    .line 502
    .end local v3    # "j":I
    .restart local v4    # "j":I
    :cond_3
    const v8, 0xd800

    if-lt v0, v8, :cond_4

    const v8, 0xdfff

    if-ge v8, v0, :cond_5

    :cond_4
    add-int/lit8 v8, v5, -0x3

    if-gt v4, v8, :cond_5

    .line 504
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    ushr-int/lit8 v8, v0, 0xc

    or-int/lit16 v8, v8, 0x1e0

    int-to-byte v8, v8

    aput-byte v8, p1, v4

    .line 505
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    ushr-int/lit8 v8, v0, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, p1, v3

    .line 506
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    and-int/lit8 v8, v0, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, p1, v4

    goto :goto_3

    .line 507
    .end local v3    # "j":I
    .restart local v4    # "j":I
    :cond_5
    add-int/lit8 v8, v5, -0x4

    if-gt v4, v8, :cond_8

    .line 510
    add-int/lit8 v8, v2, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-eq v8, v9, :cond_6

    add-int/lit8 v2, v2, 0x1

    .line 511
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .local v6, "low":C
    invoke-static {v0, v6}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v8

    if-nez v8, :cond_7

    .line 512
    .end local v6    # "low":C
    :cond_6
    new-instance v8, Ljava/lang/IllegalArgumentException;

    add-int/lit8 v9, v2, -0x1

    const/16 v10, 0x27

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Unpaired surrogate at index "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 514
    .restart local v6    # "low":C
    :cond_7
    invoke-static {v0, v6}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    .line 515
    .local v1, "codePoint":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    ushr-int/lit8 v8, v1, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    aput-byte v8, p1, v4

    .line 516
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    ushr-int/lit8 v8, v1, 0xc

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, p1, v3

    .line 517
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    ushr-int/lit8 v8, v1, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, p1, v4

    .line 518
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    and-int/lit8 v8, v1, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, p1, v3

    move v3, v4

    .line 519
    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto/16 :goto_3

    .line 520
    .end local v1    # "codePoint":I
    .end local v3    # "j":I
    .end local v6    # "low":C
    .restart local v4    # "j":I
    :cond_8
    new-instance v8, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v9, 0x25

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Failed writing "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " at index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v8

    .end local v0    # "c":C
    :cond_9
    move v3, v4

    .line 523
    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto/16 :goto_1
.end method

.method private static encode(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 431
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 432
    new-instance v3, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v3}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v3

    .line 433
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 438
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 439
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    .line 440
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    .line 436
    invoke-static {p0, v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v2

    .line 441
    .local v2, "encoded":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    .end local v2    # "encoded":I
    :goto_0
    return-void

    .line 442
    :catch_0
    move-exception v1

    .line 443
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    .line 444
    .local v0, "boe":Ljava/nio/BufferOverflowException;
    invoke-virtual {v0, v1}, Ljava/nio/BufferOverflowException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 445
    throw v0

    .line 448
    .end local v0    # "boe":Ljava/nio/BufferOverflowException;
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    invoke-static {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->encodeDirect(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method private static encodeDirect(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 9
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 453
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 454
    .local v4, "utf16Length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_6

    .line 455
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 456
    .local v0, "c":C
    const/16 v5, 0x80

    if-ge v0, v5, :cond_0

    .line 457
    int-to-byte v5, v0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 454
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 458
    :cond_0
    const/16 v5, 0x800

    if-ge v0, v5, :cond_1

    .line 459
    ushr-int/lit8 v5, v0, 0x6

    or-int/lit16 v5, v5, 0x3c0

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 460
    and-int/lit8 v5, v0, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 461
    :cond_1
    const v5, 0xd800

    if-lt v0, v5, :cond_2

    const v5, 0xdfff

    if-ge v5, v0, :cond_3

    .line 463
    :cond_2
    ushr-int/lit8 v5, v0, 0xc

    or-int/lit16 v5, v5, 0x1e0

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 464
    ushr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 465
    and-int/lit8 v5, v0, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 468
    :cond_3
    add-int/lit8 v5, v2, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eq v5, v6, :cond_4

    add-int/lit8 v2, v2, 0x1

    .line 469
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .local v3, "low":C
    invoke-static {v0, v3}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-nez v5, :cond_5

    .line 470
    .end local v3    # "low":C
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    add-int/lit8 v6, v2, -0x1

    const/16 v7, 0x27

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Unpaired surrogate at index "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 472
    .restart local v3    # "low":C
    :cond_5
    invoke-static {v0, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    .line 473
    .local v1, "codePoint":I
    ushr-int/lit8 v5, v1, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 474
    ushr-int/lit8 v5, v1, 0xc

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 475
    ushr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 476
    and-int/lit8 v5, v1, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    .line 479
    .end local v0    # "c":C
    .end local v1    # "codePoint":I
    .end local v3    # "low":C
    :cond_6
    return-void
.end method

.method public static encodeZigZag32(I)I
    .locals 2
    .param p0, "n"    # I

    .prologue
    .line 1061
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method public static encodeZigZag64(J)J
    .locals 4
    .param p0, "n"    # J

    .prologue
    .line 1075
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private static encodedLength(Ljava/lang/CharSequence;)I
    .locals 10
    .param p0, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 363
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 364
    .local v2, "utf16Length":I
    move v3, v2

    .line 365
    .local v3, "utf8Length":I
    const/4 v1, 0x0

    .line 368
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x80

    if-ge v4, v5, :cond_0

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 373
    :cond_0
    :goto_1
    if-ge v1, v2, :cond_2

    .line 374
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 375
    .local v0, "c":C
    const/16 v4, 0x800

    if-ge v0, v4, :cond_1

    .line 376
    rsub-int/lit8 v4, v0, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v3, v4

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 378
    :cond_1
    invoke-static {p0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->encodedLengthGeneral(Ljava/lang/CharSequence;I)I

    move-result v4

    add-int/2addr v3, v4

    .line 383
    .end local v0    # "c":C
    :cond_2
    if-ge v3, v2, :cond_3

    .line 385
    new-instance v4, Ljava/lang/IllegalArgumentException;

    int-to-long v6, v3

    const-wide v8, 0x100000000L

    add-long/2addr v6, v8

    const/16 v5, 0x36

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "UTF-8 length does not fit in int: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 388
    :cond_3
    return v3
.end method

.method private static encodedLengthGeneral(Ljava/lang/CharSequence;I)I
    .locals 8
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I

    .prologue
    .line 392
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 393
    .local v3, "utf16Length":I
    const/4 v4, 0x0

    .line 394
    .local v4, "utf8Length":I
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 395
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 396
    .local v0, "c":C
    const/16 v5, 0x800

    if-ge v0, v5, :cond_1

    .line 397
    rsub-int/lit8 v5, v0, 0x7f

    ushr-int/lit8 v5, v5, 0x1f

    add-int/2addr v4, v5

    .line 394
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 399
    :cond_1
    add-int/lit8 v4, v4, 0x2

    .line 401
    const v5, 0xd800

    if-gt v5, v0, :cond_0

    const v5, 0xdfff

    if-gt v0, v5, :cond_0

    .line 403
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 404
    .local v1, "cp":I
    const/high16 v5, 0x10000

    if-ge v1, v5, :cond_2

    .line 405
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const/16 v6, 0x27

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Unpaired surrogate at index "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 407
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 411
    .end local v0    # "c":C
    .end local v1    # "cp":I
    :cond_3
    return v4
.end method

.method private getCodedOutputStream()Lcom/google/protobuf/CodedOutputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->codedOutputStream:Lcom/google/protobuf/CodedOutputStream;

    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->codedOutputStream:Lcom/google/protobuf/CodedOutputStream;

    .line 99
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->codedOutputStreamPosition:I

    .line 106
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->codedOutputStream:Lcom/google/protobuf/CodedOutputStream;

    return-object v0

    .line 100
    :cond_1
    iget v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->codedOutputStreamPosition:I

    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->codedOutputStream:Lcom/google/protobuf/CodedOutputStream;

    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    .line 103
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->codedOutputStreamPosition:I

    iget-object v3, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget v4, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->codedOutputStreamPosition:I

    sub-int/2addr v3, v4

    .line 102
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->write([BII)V

    .line 104
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->codedOutputStreamPosition:I

    goto :goto_0
.end method

.method public static newInstance([B)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .locals 2
    .param p0, "flatArray"    # [B

    .prologue
    .line 79
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([BII)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([BII)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .locals 1
    .param p0, "flatArray"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 89
    new-instance v0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public checkNoSpaceLeft()V
    .locals 5

    .prologue
    .line 895
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->spaceLeft()I

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected, %s bytes remaining."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 898
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->spaceLeft()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 897
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 900
    :cond_0
    return-void
.end method

.method public position()I
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 915
    return-void
.end method

.method public spaceLeft()I
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public writeBool(IZ)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 156
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBoolNoTag(Z)V

    .line 157
    return-void
.end method

.method public writeBoolNoTag(Z)V
    .locals 1
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    .line 316
    return-void

    .line 315
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeBytes(I[B)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 204
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytesNoTag([B)V

    .line 205
    return-void
.end method

.method public writeBytesNoTag([B)V
    .locals 1
    .param p1, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 558
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 559
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([B)V

    .line 560
    return-void
.end method

.method public writeDouble(ID)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 114
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    .line 115
    return-void
.end method

.method public writeDoubleNoTag(D)V
    .locals 3
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian64(J)V

    .line 276
    return-void
.end method

.method public writeEnum(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 219
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeEnumNoTag(I)V

    .line 220
    return-void
.end method

.method public writeEnumNoTag(I)V
    .locals 0
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 572
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 573
    return-void
.end method

.method public writeFixed32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 150
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32NoTag(I)V

    .line 151
    return-void
.end method

.method public writeFixed32NoTag(I)V
    .locals 0
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian32(I)V

    .line 311
    return-void
.end method

.method public writeFixed64(IJ)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 144
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64NoTag(J)V

    .line 145
    return-void
.end method

.method public writeFixed64NoTag(J)V
    .locals 1
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian64(J)V

    .line 306
    return-void
.end method

.method public writeFloat(IF)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 120
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    .line 121
    return-void
.end method

.method public writeFloatNoTag(F)V
    .locals 1
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian32(I)V

    .line 281
    return-void
.end method

.method public writeGroup(ILcom/google/protobuf/nano/MessageNano;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/nano/MessageNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 168
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeGroupNoTag(Lcom/google/protobuf/nano/MessageNano;)V

    .line 169
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 170
    return-void
.end method

.method public writeGroupLite(ILcom/google/protobuf/MessageLite;)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->getCodedOutputStream()Lcom/google/protobuf/CodedOutputStream;

    move-result-object v0

    .line 174
    .local v0, "codedOutputStream":Lcom/google/protobuf/CodedOutputStream;
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;)V

    .line 175
    invoke-virtual {v0}, Lcom/google/protobuf/CodedOutputStream;->flush()V

    .line 176
    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->codedOutputStreamPosition:I

    .line 177
    return-void
.end method

.method public writeGroupNoTag(Lcom/google/protobuf/MessageLite;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->getCodedOutputStream()Lcom/google/protobuf/CodedOutputStream;

    move-result-object v0

    .line 536
    .local v0, "codedOutputStream":Lcom/google/protobuf/CodedOutputStream;
    invoke-interface {p1, v0}, Lcom/google/protobuf/MessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 537
    invoke-virtual {v0}, Lcom/google/protobuf/CodedOutputStream;->flush()V

    .line 538
    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->codedOutputStreamPosition:I

    .line 539
    return-void
.end method

.method public writeGroupNoTag(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 0
    .param p1, "value"    # Lcom/google/protobuf/nano/MessageNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 530
    invoke-virtual {p1, p0}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 531
    return-void
.end method

.method public writeInt32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 138
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    .line 139
    return-void
.end method

.method public writeInt32NoTag(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    if-ltz p1, :cond_0

    .line 296
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint64(J)V

    goto :goto_0
.end method

.method public writeInt64(IJ)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 132
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64NoTag(J)V

    .line 133
    return-void
.end method

.method public writeInt64NoTag(J)V
    .locals 1
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint64(J)V

    .line 291
    return-void
.end method

.method public writeMapEntry(ILcom/google/protobuf/MapEntryLite;Ljava/util/Map$Entry;)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/google/protobuf/MapEntryLite",
            "<TK;TV;>;",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    .local p2, "defaultEntry":Lcom/google/protobuf/MapEntryLite;, "Lcom/google/protobuf/MapEntryLite<TK;TV;>;"
    .local p3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->getCodedOutputStream()Lcom/google/protobuf/CodedOutputStream;

    move-result-object v0

    .line 196
    .local v0, "codedOutputStream":Lcom/google/protobuf/CodedOutputStream;
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/google/protobuf/MapEntryLite;->serializeTo(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 197
    invoke-virtual {v0}, Lcom/google/protobuf/CodedOutputStream;->flush()V

    .line 198
    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->codedOutputStreamPosition:I

    .line 199
    return-void
.end method

.method public writeMessage(ILcom/google/protobuf/nano/MessageNano;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/nano/MessageNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 182
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessageNoTag(Lcom/google/protobuf/nano/MessageNano;)V

    .line 183
    return-void
.end method

.method public writeMessageLite(ILcom/google/protobuf/MessageLite;)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->getCodedOutputStream()Lcom/google/protobuf/CodedOutputStream;

    move-result-object v0

    .line 187
    .local v0, "codedOutputStream":Lcom/google/protobuf/CodedOutputStream;
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 188
    invoke-virtual {v0}, Lcom/google/protobuf/CodedOutputStream;->flush()V

    .line 189
    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->codedOutputStreamPosition:I

    .line 190
    return-void
.end method

.method public writeMessageNoTag(Lcom/google/protobuf/MessageLite;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 549
    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 550
    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->getCodedOutputStream()Lcom/google/protobuf/CodedOutputStream;

    move-result-object v0

    .line 551
    .local v0, "codedOutputStream":Lcom/google/protobuf/CodedOutputStream;
    invoke-interface {p1, v0}, Lcom/google/protobuf/MessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 552
    invoke-virtual {v0}, Lcom/google/protobuf/CodedOutputStream;->flush()V

    .line 553
    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->codedOutputStreamPosition:I

    .line 554
    return-void
.end method

.method public writeMessageNoTag(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/nano/MessageNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 543
    invoke-virtual {p1}, Lcom/google/protobuf/nano/MessageNano;->getCachedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 544
    invoke-virtual {p1, p0}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 545
    return-void
.end method

.method public writeMessageSetExtension(ILcom/google/protobuf/nano/MessageNano;)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/nano/MessageNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 252
    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 253
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 254
    invoke-virtual {p0, v2, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 255
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 256
    return-void
.end method

.method public writeRawByte(B)V
    .locals 3
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 937
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 939
    new-instance v0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw v0

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 943
    return-void
.end method

.method public writeRawByte(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 947
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(B)V

    .line 948
    return-void
.end method

.method public writeRawBytes([B)V
    .locals 2
    .param p1, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 952
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([BII)V

    .line 953
    return-void
.end method

.method public writeRawBytes([BII)V
    .locals 3
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 957
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, p3, :cond_0

    .line 958
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 963
    return-void

    .line 961
    :cond_0
    new-instance v0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw v0
.end method

.method public writeRawLittleEndian32(I)V
    .locals 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 1033
    new-instance v0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw v0

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1036
    return-void
.end method

.method public writeRawLittleEndian64(J)V
    .locals 3
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 1043
    new-instance v0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw v0

    .line 1045
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1046
    return-void
.end method

.method public writeRawMessageSetExtension(I[B)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 264
    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 265
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 266
    invoke-virtual {p0, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 267
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([B)V

    .line 268
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 269
    return-void
.end method

.method public writeRawVarint32(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 981
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 982
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    .line 983
    return-void

    .line 985
    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    .line 986
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public writeRawVarint64(J)V
    .locals 5
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1006
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1007
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    .line 1008
    return-void

    .line 1010
    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    .line 1011
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public writeSFixed32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 225
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32NoTag(I)V

    .line 226
    return-void
.end method

.method public writeSFixed32NoTag(I)V
    .locals 0
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 577
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian32(I)V

    .line 578
    return-void
.end method

.method public writeSFixed64(IJ)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 231
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed64NoTag(J)V

    .line 232
    return-void
.end method

.method public writeSFixed64NoTag(J)V
    .locals 1
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 582
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian64(J)V

    .line 583
    return-void
.end method

.method public writeSInt32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 237
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32NoTag(I)V

    .line 238
    return-void
.end method

.method public writeSInt32NoTag(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 587
    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->encodeZigZag32(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 588
    return-void
.end method

.method public writeSInt64(IJ)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 243
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSInt64NoTag(J)V

    .line 244
    return-void
.end method

.method public writeSInt64NoTag(J)V
    .locals 3
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 592
    invoke-static {p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->encodeZigZag64(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint64(J)V

    .line 593
    return-void
.end method

.method public writeString(ILjava/lang/String;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 162
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeStringNoTag(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public writeStringNoTag(Ljava/lang/String;)V
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v2

    .line 325
    .local v2, "minLengthVarIntSize":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    .line 326
    .local v1, "maxLengthVarIntSize":I
    if-ne v2, v1, :cond_1

    .line 327
    iget-object v6, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 331
    .local v4, "oldPosition":I
    iget-object v6, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-ge v6, v2, :cond_0

    .line 332
    new-instance v6, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    add-int v7, v4, v2

    iget-object v8, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw v6
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    .end local v1    # "maxLengthVarIntSize":I
    .end local v2    # "minLengthVarIntSize":I
    .end local v4    # "oldPosition":I
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/nio/BufferOverflowException;
    new-instance v5, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v6, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    .line 346
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    iget-object v7, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    .line 347
    .local v5, "outOfSpaceException":Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;
    invoke-virtual {v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 348
    throw v5

    .line 334
    .end local v0    # "e":Ljava/nio/BufferOverflowException;
    .end local v5    # "outOfSpaceException":Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;
    .restart local v1    # "maxLengthVarIntSize":I
    .restart local v2    # "minLengthVarIntSize":I
    .restart local v4    # "oldPosition":I
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    add-int v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 335
    iget-object v6, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->encode(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 336
    iget-object v6, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 337
    .local v3, "newPosition":I
    iget-object v6, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 338
    sub-int v6, v3, v4

    sub-int/2addr v6, v2

    invoke-virtual {p0, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 339
    iget-object v6, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 350
    .end local v3    # "newPosition":I
    .end local v4    # "oldPosition":I
    :goto_0
    return-void

    .line 341
    :cond_1
    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 342
    iget-object v6, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->encode(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/nio/BufferOverflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public writeTag(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "wireType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 967
    invoke-static {p1, p2}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 968
    return-void
.end method

.method public writeUInt32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 210
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32NoTag(I)V

    .line 211
    return-void
.end method

.method public writeUInt32NoTag(I)V
    .locals 0
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 564
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 565
    return-void
.end method

.method public writeUInt64(IJ)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 126
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64NoTag(J)V

    .line 127
    return-void
.end method

.method public writeUInt64NoTag(J)V
    .locals 1
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint64(J)V

    .line 286
    return-void
.end method
