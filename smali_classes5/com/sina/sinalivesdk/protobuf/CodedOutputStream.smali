.class public final Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field public static final LITTLE_ENDIAN_32_SIZE:I = 0x4

.field public static final LITTLE_ENDIAN_64_SIZE:I = 0x8


# instance fields
.field private final buffer:[B

.field private final limit:I

.field private final output:Ljava/io/OutputStream;

.field private position:I


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->buffer:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->position:I

    array-length v0, p2

    iput v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->limit:I

    return-void
.end method

.method private constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    iput-object p1, p0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->buffer:[B

    iput p2, p0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->position:I

    add-int v0, p2, p3

    iput v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->limit:I

    return-void
.end method

.method public static computeBoolSize(IZ)I
    .locals 2

    invoke-static {p0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeBoolSizeNoTag(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeBoolSizeNoTag(Z)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static computeByteArraySize(I[B)I
    .locals 2

    invoke-static {p0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeByteArraySizeNoTag([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeByteArraySizeNoTag([B)I
    .locals 2

    array-length v0, p0

    invoke-static {v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    array-length v1, p0

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeInt32ArraySize(I[I)I
    .locals 3

    invoke-static {p1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt32ArraySizeNoTag([I)I

    move-result v0

    invoke-static {p0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    invoke-static {v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeInt32ArraySizeNoTag([I)I
    .locals 5

    const/4 v1, 0x0

    array-length v3, p0

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, p0, v0

    invoke-static {v4}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    add-int/2addr v0, v2

    return v0
.end method

.method public static computeInt32Size(II)I
    .locals 2

    invoke-static {p0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeInt32SizeNoTag(I)I
    .locals 1

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static computeInt64ArraySize(I[J)I
    .locals 3

    invoke-static {p1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt64ArraySizeNoTag([J)I

    move-result v0

    invoke-static {p0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    invoke-static {v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeInt64ArraySizeNoTag([J)I
    .locals 6

    const/4 v1, 0x0

    array-length v3, p0

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeRawVarint64Size(J)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    add-int/2addr v0, v2

    return v0
.end method

.method public static computeInt64Size(IJ)I
    .locals 3

    invoke-static {p0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeInt64SizeNoTag(J)I
    .locals 2

    invoke-static {p0, p1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeRawVarint64Size(J)I

    move-result v0

    return v0
.end method

.method static computePreferredBufferSize(I)I
    .locals 1

    const/16 v0, 0x1000

    if-le p0, v0, :cond_0

    move p0, v0

    :cond_0
    return p0
.end method

.method public static computeRawVarint32Size(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static computeRawVarint64Size(J)I
    .locals 4

    const-wide/16 v2, 0x0

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    :cond_8
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static computeStringArraySize(I[Ljava/lang/String;)I
    .locals 3

    invoke-static {p1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeStringArraySizeNoTag([Ljava/lang/String;)I

    move-result v0

    invoke-static {p0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    invoke-static {v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeStringArraySizeNoTag([Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    invoke-static {v3}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeStringSize(ILjava/lang/String;)I
    .locals 2

    invoke-static {p0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeStringSizeNoTag(Ljava/lang/String;)I
    .locals 3

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v1

    array-length v0, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static computeTagSize(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sina/sinalivesdk/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-static {v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static newInstance(Ljava/io/OutputStream;)Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;
    .locals 1

    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/io/OutputStream;I)Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;
    .locals 2

    new-instance v0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;

    new-array v1, p1, [B

    invoke-direct {v0, p0, v1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;-><init>(Ljava/io/OutputStream;[B)V

    return-object v0
.end method

.method public static newInstance([B)Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->newInstance([BII)Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([BII)Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;
    .locals 1

    new-instance v0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;

    invoke-direct {v0, p0, p1, p2}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;-><init>([BII)V

    return-object v0
.end method

.method private refreshBuffer()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream$OutOfSpaceException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->buffer:[B

    iget v2, p0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->position:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->position:I

    return-void
.end method


# virtual methods
.method public final flush()V
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->refreshBuffer()V

    :cond_0
    return-void
.end method

.method public final writeBool(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeBoolNoTag(Z)V

    return-void
.end method

.method public final writeBoolNoTag(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeRawByte(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final writeByteArray(I[B)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeByteArrayNoTag([B)V

    return-void
.end method

.method public final writeByteArrayNoTag([B)V
    .locals 2

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeRawBytes([BII)V

    return-void
.end method

.method public final writeFixed32NoTag(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeRawLittleEndian32(I)V

    return-void
.end method

.method public final writeInt32(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    return-void
.end method

.method public final writeInt32Array(I[I)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeInt32ArrayNoTag([I)V

    return-void
.end method

.method public final writeInt32ArrayNoTag([I)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt32ArraySizeNoTag([I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    invoke-virtual {p0, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final writeInt32NoTag(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    :goto_0
    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeRawVarint64(J)V

    goto :goto_0
.end method

.method public final writeInt64(IJ)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeTag(II)V

    invoke-virtual {p0, p2, p3}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeInt64NoTag(J)V

    return-void
.end method

.method public final writeInt64Array(I[J)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeInt64ArrayNoTag([J)V

    return-void
.end method

.method public final writeInt64ArrayNoTag([J)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt64ArraySizeNoTag([J)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    invoke-virtual {p0, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-wide v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeInt64NoTag(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final writeInt64NoTag(J)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeRawVarint64(J)V

    return-void
.end method

.method public final writeRawByte(B)V
    .locals 3

    iget v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->position:I

    iget v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->limit:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->refreshBuffer()V

    :cond_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->buffer:[B

    iget v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->position:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public final writeRawByte(I)V
    .locals 1

    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeRawByte(B)V

    return-void
.end method

.method public final writeRawBytes([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeRawBytes([BII)V

    return-void
.end method

.method public final writeRawBytes([BII)V
    .locals 4

    iget v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->limit:I

    iget v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->position:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->buffer:[B

    iget v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->position:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->position:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->limit:I

    iget v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->position:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->buffer:[B

    iget v2, p0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->position:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v1, p2, v0

    sub-int v0, p3, v0

    iget v2, p0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->limit:I

    iput v2, p0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->position:I

    invoke-direct {p0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->refreshBuffer()V

    iget v2, p0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->limit:I

    if-gt v0, v2, :cond_1

    iget-object v2, p0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->buffer:[B

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->position:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public final writeRawLittleEndian32(I)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeRawByte(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeRawByte(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeRawByte(I)V

    ushr-int/lit8 v0, p1, 0x18

    invoke-virtual {p0, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeRawByte(I)V

    return-void
.end method

.method public final writeRawVarint32(I)V
    .locals 1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeRawByte(I)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeRawByte(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public final writeRawVarint64(J)V
    .locals 5

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeRawByte(I)V

    return-void

    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeRawByte(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public final writeString(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeStringNoTag(Ljava/lang/String;)V

    return-void
.end method

.method public final writeStringArray(I[Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeStringArrayNoTag([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final writeStringArrayNoTag([Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-gtz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {v5}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v1

    array-length v3, p1

    move v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, p1, v1

    invoke-static {v4}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    invoke-virtual {p0, v5}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeStringNoTag(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final writeStringNoTag(Ljava/lang/String;)V
    .locals 2

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    invoke-virtual {p0, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeRawBytes([B)V

    return-void
.end method

.method public final writeStruct(ILcom/sina/sinalivesdk/protobuf/RequestSet;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeStructNoTag(Lcom/sina/sinalivesdk/protobuf/RequestSet;)V

    return-void
.end method

.method public final writeStructArray(I[Lcom/sina/sinalivesdk/protobuf/RequestSet;)V
    .locals 1

    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeStructArrayNoTag([Lcom/sina/sinalivesdk/protobuf/RequestSet;)V

    goto :goto_0
.end method

.method public final writeStructArrayNoTag([Lcom/sina/sinalivesdk/protobuf/RequestSet;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-gtz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/protobuf/RequestSet;->getFieldCount()I

    move-result v4

    invoke-static {v6}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v1

    invoke-static {v4}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v2

    add-int/2addr v1, v2

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v3, p1, v0

    invoke-virtual {v3, v2}, Lcom/sina/sinalivesdk/protobuf/RequestSet;->getTag(I)I

    move-result v3

    invoke-static {v3}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_0

    :cond_2
    array-length v3, p1

    move v2, v1

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v5, p1, v1

    invoke-virtual {v5}, Lcom/sina/sinalivesdk/protobuf/RequestSet;->computeSizeInArray()I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    invoke-virtual {p0, v6}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    invoke-virtual {p0, v4}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    move v1, v0

    :goto_2
    if-ge v1, v4, :cond_4

    aget-object v2, p1, v0

    invoke-virtual {v2, v1}, Lcom/sina/sinalivesdk/protobuf/RequestSet;->getTag(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    array-length v1, p1

    :goto_3
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {v2, p0}, Lcom/sina/sinalivesdk/protobuf/RequestSet;->writeInArray(Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public final writeStructInArrayNoTag(Lcom/sina/sinalivesdk/protobuf/RequestSet;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/protobuf/RequestSet;->computeSizeInArray()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    invoke-virtual {p1, p0}, Lcom/sina/sinalivesdk/protobuf/RequestSet;->writeInArray(Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public final writeStructNoTag(Lcom/sina/sinalivesdk/protobuf/RequestSet;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/protobuf/RequestSet;->computeSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    invoke-virtual {p1, p0}, Lcom/sina/sinalivesdk/protobuf/RequestSet;->write(Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public final writeTag(II)V
    .locals 1

    invoke-static {p1, p2}, Lcom/sina/sinalivesdk/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sina/sinalivesdk/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    return-void
.end method
