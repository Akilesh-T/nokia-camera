.class public final Lcom/sina/sinalivesdk/protobuf/CodedInputStream;
.super Ljava/lang/Object;


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final DEFAULT_SIZE_LIMIT:I = 0x4000000

.field private static final TAG:Ljava/lang/String; = "CodedInputStream"


# instance fields
.field private final buffer:[B

.field private bufferPos:I

.field private bufferSize:I

.field private bufferSizeAfterLimit:I

.field private currentLimit:I

.field private final input:Ljava/io/InputStream;

.field private lastTag:I

.field private sizeLimit:I

.field private totalBytesRetired:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->currentLimit:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->sizeLimit:I

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->buffer:[B

    iput v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    iput v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    iput v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->totalBytesRetired:I

    iput-object p1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    return-void
.end method

.method private constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->currentLimit:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->sizeLimit:I

    iput-object p1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->buffer:[B

    add-int v0, p2, p3

    iput v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    iput p2, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    neg-int v0, p2

    iput v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->totalBytesRetired:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    return-void
.end method

.method public static decodeZigZag64(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static newInstance(Ljava/io/InputStream;)Lcom/sina/sinalivesdk/protobuf/CodedInputStream;
    .locals 1

    new-instance v0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;

    invoke-direct {v0, p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static newInstance([B)Lcom/sina/sinalivesdk/protobuf/CodedInputStream;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->newInstance([BII)Lcom/sina/sinalivesdk/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([BII)Lcom/sina/sinalivesdk/protobuf/CodedInputStream;
    .locals 2

    new-instance v0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;

    invoke-direct {v0, p0, p1, p2}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;-><init>([BII)V

    :try_start_0
    invoke-virtual {v0, p2}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->pushLimit(I)I
    :try_end_0
    .catch Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static readRawVarint32(ILjava/io/InputStream;)I
    .locals 4

    const/4 v3, -0x1

    and-int/lit16 v0, p0, 0x80

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return p0

    :cond_1
    and-int/lit8 p0, p0, 0x7f

    const/4 v0, 0x7

    :goto_1
    const/16 v1, 0x20

    if-ge v0, v1, :cond_4

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne v1, v3, :cond_2

    invoke-static {}, Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;->truncatedMessage()Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_2
    and-int/lit8 v2, v1, 0x7f

    shl-int/2addr v2, v0

    or-int/2addr p0, v2

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x7

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x7

    :cond_4
    const/16 v1, 0x40

    if-ge v0, v1, :cond_6

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne v1, v3, :cond_5

    invoke-static {}, Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;->truncatedMessage()Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_5
    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_3

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;->malformedVarint()Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method static readRawVarint32(Ljava/io/InputStream;)I
    .locals 2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;->truncatedMessage()Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-static {v0, p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readRawVarint32(ILjava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method private recomputeBufferSizeAfterLimit()V
    .locals 2

    iget v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    iget v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSizeAfterLimit:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    iget v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->currentLimit:I

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->currentLimit:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSizeAfterLimit:I

    iget v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    iget v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSizeAfterLimit:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSizeAfterLimit:I

    goto :goto_0
.end method

.method private refillBuffer(Z)Z
    .locals 4

    const/4 v1, -0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    iget v3, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    if-ge v0, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "refillBuffer() called when buffer wasn\'t empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v3, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->currentLimit:I

    if-ne v0, v3, :cond_2

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;->truncatedMessage()Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    iget v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v3, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->totalBytesRetired:I

    iput v2, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    iget-object v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    iget v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    if-ge v0, v1, :cond_5

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InputStream#read(byte[]) returned invalid result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nThe InputStream implementation is buggy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->buffer:[B

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    if-ne v0, v1, :cond_7

    iput v2, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;->truncatedMessage()Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->recomputeBufferSizeAfterLimit()V

    iget v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSizeAfterLimit:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->sizeLimit:I

    if-gt v0, v1, :cond_8

    if-gez v0, :cond_9

    :cond_8
    invoke-static {}, Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;->sizeLimitExceeded()Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final backOffset(I)V
    .locals 1

    if-gez p1, :cond_0

    invoke-static {}, Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;->negativeSize()Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    if-ge v0, p1, :cond_1

    invoke-static {}, Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;->truncatedMessage()Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_1
    iget v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    return-void
.end method

.method public final getTotalBytesRead()I
    .locals 2

    iget v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final isAtEnd()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    iget v2, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->refillBuffer(Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final pushLimit(I)I
    .locals 2

    if-gez p1, :cond_0

    invoke-static {}, Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;->negativeSize()Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->currentLimit:I

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;->truncatedMessage()Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_1
    iput v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->currentLimit:I

    invoke-direct {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->recomputeBufferSizeAfterLimit()V

    return v1
.end method

.method public final readByteArray()[B
    .locals 5

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v1

    iget v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    iget v2, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_0

    if-lez v1, :cond_0

    new-array v0, v1, [B

    iget-object v2, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->buffer:[B

    iget v3, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readRawBytes(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public final readFixed16()I
    .locals 1

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readRawLittleEndian16()I

    move-result v0

    return v0
.end method

.method public final readFixed32()I
    .locals 1

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public final readInt32()I
    .locals 1

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public final readInt64()J
    .locals 2

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public final readRawByte()B
    .locals 3

    iget v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    iget v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->refillBuffer(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->buffer:[B

    iget v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public final readRawBytes(I)[B
    .locals 11

    const/16 v10, 0x1000

    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    if-gez p1, :cond_0

    invoke-static {}, Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;->negativeSize()Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v2, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v0, v2

    add-int/2addr v0, p1

    iget v2, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->currentLimit:I

    if-le v0, v2, :cond_1

    iget v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->currentLimit:I

    iget v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->totalBytesRetired:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->skipRawBytes(I)V

    invoke-static {}, Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;->truncatedMessage()Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_1
    iget v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    iget v2, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v0, v2

    if-gt p1, v0, :cond_2

    new-array v0, p1, [B

    iget-object v2, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->buffer:[B

    iget v3, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    invoke-static {v2, v3, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    :goto_0
    return-object v0

    :cond_2
    if-ge p1, v10, :cond_4

    new-array v2, p1, [B

    iget v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    iget v3, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->buffer:[B

    iget v4, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    invoke-static {v3, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    iput v3, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    invoke-direct {p0, v5}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->refillBuffer(Z)Z

    :goto_1
    sub-int v3, p1, v0

    iget v4, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    if-le v3, v4, :cond_3

    iget-object v3, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->buffer:[B

    iget v4, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    iput v3, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    invoke-direct {p0, v5}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->refillBuffer(Z)Z

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->buffer:[B

    sub-int v4, p1, v0

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v0, p1, v0

    iput v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    move-object v0, v2

    goto :goto_0

    :cond_4
    iget v5, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    iget v6, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    iget v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v2, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->totalBytesRetired:I

    iput v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    iput v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    sub-int v0, v6, v5

    sub-int v0, p1, v0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v4, v0

    :goto_2
    if-lez v4, :cond_8

    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v8, v0, [B

    move v0, v1

    :goto_3
    array-length v2, v8

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    if-nez v2, :cond_5

    move v2, v3

    :goto_4
    if-ne v2, v3, :cond_6

    invoke-static {}, Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;->truncatedMessage()Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_5
    iget-object v2, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    array-length v9, v8

    sub-int/2addr v9, v0

    invoke-virtual {v2, v8, v0, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    goto :goto_4

    :cond_6
    iget v9, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->totalBytesRetired:I

    add-int/2addr v9, v2

    iput v9, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->totalBytesRetired:I

    add-int/2addr v0, v2

    goto :goto_3

    :cond_7
    array-length v0, v8

    sub-int v0, v4, v0

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v0

    goto :goto_2

    :cond_8
    new-array v3, p1, [B

    sub-int v0, v6, v5

    iget-object v2, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->buffer:[B

    invoke-static {v2, v5, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v5, v0

    invoke-static {v0, v1, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_5

    :cond_9
    move-object v0, v3

    goto/16 :goto_0
.end method

.method public final readRawLittleEndian16()I
    .locals 2

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readRawByte()B

    move-result v0

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readRawByte()B

    move-result v1

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public final readRawLittleEndian32()I
    .locals 4

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readRawByte()B

    move-result v0

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readRawByte()B

    move-result v1

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readRawByte()B

    move-result v2

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readRawByte()B

    move-result v3

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public final readRawVarint32()I
    .locals 3

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readRawByte()B

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_4

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_0

    :cond_4
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readRawByte()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readRawByte()B

    move-result v2

    if-gez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;->malformedVarint()Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final readRawVarint64()J
    .locals 6

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readRawByte()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;->malformedVarint()Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final readSInt64()J
    .locals 2

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final readString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v1

    iget v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    iget v2, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_0

    if-lez v1, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->buffer:[B

    iget v3, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget v2, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readRawBytes(I)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public final readTag()I
    .locals 1

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->lastTag:I

    iget v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->lastTag:I

    return v0
.end method

.method public final skipRawBytes(I)V
    .locals 4

    const/4 v3, 0x1

    if-gez p1, :cond_0

    invoke-static {}, Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;->negativeSize()Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->currentLimit:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->currentLimit:I

    iget v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->totalBytesRetired:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->skipRawBytes(I)V

    invoke-static {}, Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;->truncatedMessage()Lcom/sina/sinalivesdk/protobuf/ProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_1
    iget v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    iget v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    iget v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    iget v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    iput v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    invoke-direct {p0, v3}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->refillBuffer(Z)Z

    :goto_1
    sub-int v1, p1, v0

    iget v2, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    if-le v1, v2, :cond_3

    iget v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferSize:I

    iput v1, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    invoke-direct {p0, v3}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->refillBuffer(Z)Z

    goto :goto_1

    :cond_3
    sub-int v0, p1, v0

    iput v0, p0, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->bufferPos:I

    goto :goto_0
.end method
