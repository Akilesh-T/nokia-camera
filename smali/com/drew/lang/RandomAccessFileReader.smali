.class public Lcom/drew/lang/RandomAccessFileReader;
.super Lcom/drew/lang/RandomAccessReader;
.source "RandomAccessFileReader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final _baseOffset:I

.field private _currentIndex:I

.field private final _file:Ljava/io/RandomAccessFile;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation
.end field

.field private final _length:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/drew/lang/RandomAccessFileReader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/drew/lang/RandomAccessFileReader;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 1
    .param p1, "file"    # Ljava/io/RandomAccessFile;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/SuppressWarnings;
        justification = "Design intent"
        value = "EI_EXPOSE_REP2"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/drew/lang/RandomAccessFileReader;-><init>(Ljava/io/RandomAccessFile;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;I)V
    .locals 2
    .param p1, "file"    # Ljava/io/RandomAccessFile;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "baseOffset"    # I
    .annotation build Lcom/drew/lang/annotations/SuppressWarnings;
        justification = "Design intent"
        value = "EI_EXPOSE_REP2"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/drew/lang/RandomAccessReader;-><init>()V

    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/drew/lang/RandomAccessFileReader;->_file:Ljava/io/RandomAccessFile;

    .line 59
    iput p2, p0, Lcom/drew/lang/RandomAccessFileReader;->_baseOffset:I

    .line 60
    iget-object v0, p0, Lcom/drew/lang/RandomAccessFileReader;->_file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/drew/lang/RandomAccessFileReader;->_length:J

    .line 61
    return-void
.end method

.method private seek(I)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget v0, p0, Lcom/drew/lang/RandomAccessFileReader;->_currentIndex:I

    if-ne p1, v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/drew/lang/RandomAccessFileReader;->_file:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 112
    iput p1, p0, Lcom/drew/lang/RandomAccessFileReader;->_currentIndex:I

    goto :goto_0
.end method


# virtual methods
.method public getByte(I)B
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget v1, p0, Lcom/drew/lang/RandomAccessFileReader;->_currentIndex:I

    if-eq p1, v1, :cond_0

    .line 79
    invoke-direct {p0, p1}, Lcom/drew/lang/RandomAccessFileReader;->seek(I)V

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/drew/lang/RandomAccessFileReader;->_file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 82
    .local v0, "b":I
    if-gez v0, :cond_1

    .line 83
    new-instance v1, Lcom/drew/lang/BufferBoundsException;

    const-string v2, "Unexpected end of file encountered."

    invoke-direct {v1, v2}, Lcom/drew/lang/BufferBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_1
    sget-boolean v1, Lcom/drew/lang/RandomAccessFileReader;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    const/16 v1, 0xff

    if-le v0, v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 85
    :cond_2
    iget v1, p0, Lcom/drew/lang/RandomAccessFileReader;->_currentIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/drew/lang/RandomAccessFileReader;->_currentIndex:I

    .line 86
    int-to-byte v1, v0

    return v1
.end method

.method public getBytes(II)[B
    .locals 4
    .param p1, "index"    # I
    .param p2, "count"    # I
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/drew/lang/RandomAccessFileReader;->validateIndex(II)V

    .line 95
    iget v2, p0, Lcom/drew/lang/RandomAccessFileReader;->_currentIndex:I

    if-eq p1, v2, :cond_0

    .line 96
    invoke-direct {p0, p1}, Lcom/drew/lang/RandomAccessFileReader;->seek(I)V

    .line 98
    :cond_0
    new-array v0, p2, [B

    .line 99
    .local v0, "bytes":[B
    iget-object v2, p0, Lcom/drew/lang/RandomAccessFileReader;->_file:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v1

    .line 100
    .local v1, "bytesRead":I
    iget v2, p0, Lcom/drew/lang/RandomAccessFileReader;->_currentIndex:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/drew/lang/RandomAccessFileReader;->_currentIndex:I

    .line 101
    if-eq v1, p2, :cond_1

    .line 102
    new-instance v2, Lcom/drew/lang/BufferBoundsException;

    const-string v3, "Unexpected end of file encountered."

    invoke-direct {v2, v3}, Lcom/drew/lang/BufferBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    :cond_1
    return-object v0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/drew/lang/RandomAccessFileReader;->_length:J

    return-wide v0
.end method

.method protected isValidIndex(II)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "bytesRequested"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    if-ltz p2, :cond_0

    if-ltz p1, :cond_0

    int-to-long v0, p1

    int-to-long v2, p2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/drew/lang/RandomAccessFileReader;->_length:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toUnshiftedOffset(I)I
    .locals 1
    .param p1, "localOffset"    # I

    .prologue
    .line 66
    iget v0, p0, Lcom/drew/lang/RandomAccessFileReader;->_baseOffset:I

    add-int/2addr v0, p1

    return v0
.end method

.method protected validateIndex(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "bytesRequested"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p0, p1, p2}, Lcom/drew/lang/RandomAccessFileReader;->isValidIndex(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/drew/lang/BufferBoundsException;

    iget-wide v2, p0, Lcom/drew/lang/RandomAccessFileReader;->_length:J

    invoke-direct {v0, p1, p2, v2, v3}, Lcom/drew/lang/BufferBoundsException;-><init>(IIJ)V

    throw v0

    .line 128
    :cond_0
    return-void
.end method
