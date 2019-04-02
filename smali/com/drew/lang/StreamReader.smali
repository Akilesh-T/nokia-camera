.class public Lcom/drew/lang/StreamReader;
.super Lcom/drew/lang/SequentialReader;
.source "StreamReader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private _pos:J

.field private final _stream:Ljava/io/InputStream;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/drew/lang/StreamReader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/drew/lang/StreamReader;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/drew/lang/SequentialReader;-><init>()V

    .line 50
    if-nez p1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/drew/lang/StreamReader;->_stream:Ljava/io/InputStream;

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/drew/lang/StreamReader;->_pos:J

    .line 55
    return-void
.end method

.method private skipInternal(J)J
    .locals 11
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 129
    const-wide/16 v2, 0x0

    .line 130
    .local v2, "skippedTotal":J
    :cond_0
    cmp-long v4, v2, p1

    if-eqz v4, :cond_2

    .line 131
    iget-object v4, p0, Lcom/drew/lang/StreamReader;->_stream:Ljava/io/InputStream;

    sub-long v6, p1, v2

    invoke-virtual {v4, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 132
    .local v0, "skipped":J
    sget-boolean v4, Lcom/drew/lang/StreamReader;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    cmp-long v4, v0, v8

    if-gez v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 133
    :cond_1
    add-long/2addr v2, v0

    .line 134
    cmp-long v4, v0, v8

    if-nez v4, :cond_0

    .line 137
    .end local v0    # "skipped":J
    :cond_2
    iget-wide v4, p0, Lcom/drew/lang/StreamReader;->_pos:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/drew/lang/StreamReader;->_pos:J

    .line 138
    return-wide v2
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/drew/lang/StreamReader;->_stream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 117
    :goto_0
    return v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getByte()B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v1, p0, Lcom/drew/lang/StreamReader;->_stream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 61
    .local v0, "value":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 62
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "End of data reached."

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_0
    iget-wide v2, p0, Lcom/drew/lang/StreamReader;->_pos:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/drew/lang/StreamReader;->_pos:J

    .line 64
    int-to-byte v1, v0

    return v1
.end method

.method public getBytes([BII)V
    .locals 6
    .param p1, "buffer"    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, "totalBytesRead":I
    :cond_0
    if-eq v1, p3, :cond_2

    .line 82
    iget-object v2, p0, Lcom/drew/lang/StreamReader;->_stream:Ljava/io/InputStream;

    add-int v3, p2, v1

    sub-int v4, p3, v1

    invoke-virtual {v2, p1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 83
    .local v0, "bytesRead":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 84
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "End of data reached."

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_1
    add-int/2addr v1, v0

    .line 86
    sget-boolean v2, Lcom/drew/lang/StreamReader;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-le v1, p3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 88
    .end local v0    # "bytesRead":I
    :cond_2
    iget-wide v2, p0, Lcom/drew/lang/StreamReader;->_pos:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/drew/lang/StreamReader;->_pos:J

    .line 89
    return-void
.end method

.method public getBytes(I)[B
    .locals 2
    .param p1, "count"    # I
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    new-array v0, p1, [B

    .line 72
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/drew/lang/StreamReader;->getBytes([BII)V

    .line 73
    return-object v0
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/drew/lang/StreamReader;->_pos:J

    return-wide v0
.end method

.method public skip(J)V
    .locals 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 95
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "n must be zero or greater."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/drew/lang/StreamReader;->skipInternal(J)J

    move-result-wide v0

    .line 99
    .local v0, "skippedCount":J
    cmp-long v2, v0, p1

    if-eqz v2, :cond_1

    .line 100
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "Unable to skip. Requested %d bytes but skipped %d."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 101
    :cond_1
    return-void
.end method

.method public trySkip(J)Z
    .locals 3
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n must be zero or greater."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/drew/lang/StreamReader;->skipInternal(J)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
