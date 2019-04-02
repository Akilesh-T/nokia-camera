.class Lcom/jmatio/io/MatFileReader$ISMatTag;
.super Lcom/jmatio/io/MatTag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jmatio/io/MatFileReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ISMatTag"
.end annotation


# instance fields
.field private final compressed:Z

.field private final mfis:Lcom/jmatio/io/MatFileInputStream;

.field private final padding:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2}, Lcom/jmatio/io/MatTag;-><init>(II)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    shr-int/lit8 v1, v0, 0x10

    if-nez v1, :cond_0

    iput v0, p0, Lcom/jmatio/io/MatFileReader$ISMatTag;->type:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/jmatio/io/MatFileReader$ISMatTag;->size:I

    iput-boolean v2, p0, Lcom/jmatio/io/MatFileReader$ISMatTag;->compressed:Z

    :goto_0
    iget v0, p0, Lcom/jmatio/io/MatFileReader$ISMatTag;->size:I

    iget-boolean v1, p0, Lcom/jmatio/io/MatFileReader$ISMatTag;->compressed:Z

    invoke-virtual {p0, v0, v1}, Lcom/jmatio/io/MatFileReader$ISMatTag;->getPadding(IZ)I

    move-result v0

    iput v0, p0, Lcom/jmatio/io/MatFileReader$ISMatTag;->padding:I

    new-instance v0, Lcom/jmatio/io/MatFileInputStream;

    iget v1, p0, Lcom/jmatio/io/MatFileReader$ISMatTag;->type:I

    invoke-direct {v0, p1, v1}, Lcom/jmatio/io/MatFileInputStream;-><init>(Ljava/nio/ByteBuffer;I)V

    iput-object v0, p0, Lcom/jmatio/io/MatFileReader$ISMatTag;->mfis:Lcom/jmatio/io/MatFileInputStream;

    return-void

    :cond_0
    shr-int/lit8 v1, v0, 0x10

    iput v1, p0, Lcom/jmatio/io/MatFileReader$ISMatTag;->size:I

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/jmatio/io/MatFileReader$ISMatTag;->type:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jmatio/io/MatFileReader$ISMatTag;->compressed:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/jmatio/io/MatFileReader$ISMatTag;)I
    .locals 1

    iget v0, p0, Lcom/jmatio/io/MatFileReader$ISMatTag;->padding:I

    return v0
.end method


# virtual methods
.method public readToByteArray()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/jmatio/io/MatFileReader$ISMatTag;->size:I

    invoke-virtual {p0}, Lcom/jmatio/io/MatFileReader$ISMatTag;->sizeOf()I

    move-result v1

    div-int v1, v0, v1

    new-array v2, v1, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/jmatio/io/MatFileReader$ISMatTag;->mfis:Lcom/jmatio/io/MatFileInputStream;

    invoke-virtual {v3}, Lcom/jmatio/io/MatFileInputStream;->readByte()B

    move-result v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jmatio/io/MatFileReader$ISMatTag;->mfis:Lcom/jmatio/io/MatFileInputStream;

    iget v1, p0, Lcom/jmatio/io/MatFileReader$ISMatTag;->padding:I

    invoke-virtual {v0, v1}, Lcom/jmatio/io/MatFileInputStream;->skip(I)V

    return-object v2
.end method

.method public readToByteBuffer(Ljava/nio/ByteBuffer;Lcom/jmatio/types/ByteStorageSupport;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lcom/jmatio/types/ByteStorageSupport",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/jmatio/io/MatFileReader$ISMatTag;->size:I

    invoke-virtual {p0}, Lcom/jmatio/io/MatFileReader$ISMatTag;->sizeOf()I

    move-result v1

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/jmatio/io/MatFileReader$ISMatTag;->mfis:Lcom/jmatio/io/MatFileInputStream;

    invoke-virtual {v1, p1, v0, p2}, Lcom/jmatio/io/MatFileInputStream;->readToByteBuffer(Ljava/nio/ByteBuffer;ILcom/jmatio/types/ByteStorageSupport;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/jmatio/io/MatFileReader$ISMatTag;->mfis:Lcom/jmatio/io/MatFileInputStream;

    iget v1, p0, Lcom/jmatio/io/MatFileReader$ISMatTag;->padding:I

    invoke-virtual {v0, v1}, Lcom/jmatio/io/MatFileInputStream;->skip(I)V

    return-void
.end method

.method public readToCharArray()[C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/jmatio/io/MatFileReader$ISMatTag;->size:I

    invoke-virtual {p0}, Lcom/jmatio/io/MatFileReader$ISMatTag;->sizeOf()I

    move-result v1

    div-int v1, v0, v1

    new-array v2, v1, [C

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/jmatio/io/MatFileReader$ISMatTag;->mfis:Lcom/jmatio/io/MatFileInputStream;

    invoke-virtual {v3}, Lcom/jmatio/io/MatFileInputStream;->readChar()C

    move-result v3

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jmatio/io/MatFileReader$ISMatTag;->mfis:Lcom/jmatio/io/MatFileInputStream;

    iget v1, p0, Lcom/jmatio/io/MatFileReader$ISMatTag;->padding:I

    invoke-virtual {v0, v1}, Lcom/jmatio/io/MatFileInputStream;->skip(I)V

    return-object v2
.end method

.method public readToDoubleArray()[D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/jmatio/io/MatFileReader$ISMatTag;->size:I

    invoke-virtual {p0}, Lcom/jmatio/io/MatFileReader$ISMatTag;->sizeOf()I

    move-result v1

    div-int v1, v0, v1

    new-array v2, v1, [D

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/jmatio/io/MatFileReader$ISMatTag;->mfis:Lcom/jmatio/io/MatFileInputStream;

    invoke-virtual {v3}, Lcom/jmatio/io/MatFileInputStream;->readDouble()D

    move-result-wide v4

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jmatio/io/MatFileReader$ISMatTag;->mfis:Lcom/jmatio/io/MatFileInputStream;

    iget v1, p0, Lcom/jmatio/io/MatFileReader$ISMatTag;->padding:I

    invoke-virtual {v0, v1}, Lcom/jmatio/io/MatFileInputStream;->skip(I)V

    return-object v2
.end method

.method public readToIntArray()[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/jmatio/io/MatFileReader$ISMatTag;->size:I

    invoke-virtual {p0}, Lcom/jmatio/io/MatFileReader$ISMatTag;->sizeOf()I

    move-result v1

    div-int v1, v0, v1

    new-array v2, v1, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/jmatio/io/MatFileReader$ISMatTag;->mfis:Lcom/jmatio/io/MatFileInputStream;

    invoke-virtual {v3}, Lcom/jmatio/io/MatFileInputStream;->readInt()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jmatio/io/MatFileReader$ISMatTag;->mfis:Lcom/jmatio/io/MatFileInputStream;

    iget v1, p0, Lcom/jmatio/io/MatFileReader$ISMatTag;->padding:I

    invoke-virtual {v0, v1}, Lcom/jmatio/io/MatFileInputStream;->skip(I)V

    return-object v2
.end method

.method public readToString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/jmatio/io/MatFileReader$ISMatTag;->readToByteArray()[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method
