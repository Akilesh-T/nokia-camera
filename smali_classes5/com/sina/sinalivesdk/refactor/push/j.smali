.class public final Lcom/sina/sinalivesdk/refactor/push/j;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/sina/sinalivesdk/refactor/services/f;

.field private b:Ljava/net/Socket;

.field private c:Landroid/content/Context;

.field private d:Ljava/io/BufferedInputStream;

.field private e:Ljava/io/BufferedOutputStream;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sina/sinalivesdk/refactor/services/f;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/j;->b:Ljava/net/Socket;

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/j;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/j;->d:Ljava/io/BufferedInputStream;

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/j;->e:Ljava/io/BufferedOutputStream;

    iput-object p2, p0, Lcom/sina/sinalivesdk/refactor/push/j;->a:Lcom/sina/sinalivesdk/refactor/services/f;

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/push/j;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/j;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/j;->a:Lcom/sina/sinalivesdk/refactor/services/f;

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/refactor/post/o;->a(Landroid/content/Context;Lcom/sina/sinalivesdk/refactor/services/f;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/j;->b:Ljava/net/Socket;

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/j;->b:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/j;->b:Ljava/net/Socket;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSendBufferSize(I)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/j;->b:Ljava/net/Socket;

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/j;->b:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/j;->d:Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/j;->b:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/j;->e:Ljava/io/BufferedOutputStream;

    return-void
.end method

.method private a([B)I
    .locals 4

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/j;->b:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/j;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/j;->e:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/j;->e:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DMPushSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sina/sinalivesdk/refactor/push/j;->b:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " send failed, data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/sina/sinalivesdk/refactor/push/a/c;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "DMPushSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sina/sinalivesdk/refactor/push/j;->b:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " send failed, data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/sina/sinalivesdk/refactor/push/a/c;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private a(Ljava/io/InputStream;)[B
    .locals 6

    const/4 v5, 0x4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v0, "DMPushSocket"

    const-string v1, "readPayload stream is null.Mybe it\'s wap problem"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "readPayload stream is null.Mybe it\'s wap problem"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, v5}, Lcom/sina/sinalivesdk/refactor/push/j;->a(Ljava/io/InputStream;I)[B

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, v5, :cond_2

    aget-byte v0, v3, v1

    if-gez v0, :cond_1

    add-int/lit16 v0, v0, 0x100

    :cond_1
    shl-int/lit8 v4, v1, 0x3

    shl-int/2addr v0, v4

    or-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    if-gtz v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reported invalid total length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DMPushSocket"

    invoke-static {v1, v0}, Lcom/sina/sinalivesdk/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "hcl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "datalength:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p1, v2}, Lcom/sina/sinalivesdk/refactor/push/j;->a(Ljava/io/InputStream;I)[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " response size too large, OOM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DMPushSocket"

    invoke-static {v1, v0}, Lcom/sina/sinalivesdk/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Ljava/io/InputStream;I)[B
    .locals 6

    const/16 v5, 0x400

    const/4 v1, 0x0

    new-array v3, p2, [B

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v2, v1

    :goto_0
    if-lez v0, :cond_2

    invoke-virtual {p1, v3, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " read -1 bytes. maybe closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/2addr v2, v0

    if-lt v2, p2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    sub-int v0, p2, v2

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_2
    return-object v3
.end method


# virtual methods
.method public final a([BJ)I
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x6

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sina/sinalivesdk/refactor/push/j;->a([B)I

    move-result v0

    goto :goto_0
.end method

.method public final a()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/j;->d:Ljava/io/BufferedInputStream;

    return-object v0
.end method

.method public final b()[B
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/j;->d:Ljava/io/BufferedInputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/j;->d:Ljava/io/BufferedInputStream;

    invoke-direct {p0, v0}, Lcom/sina/sinalivesdk/refactor/push/j;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 0
    .line 1000
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/j;->d:Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/j;->d:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v4, p0, Lcom/sina/sinalivesdk/refactor/push/j;->d:Ljava/io/BufferedInputStream;

    :cond_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/j;->e:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/j;->e:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iput-object v4, p0, Lcom/sina/sinalivesdk/refactor/push/j;->e:Ljava/io/BufferedOutputStream;

    .line 0
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/j;->b:Ljava/net/Socket;

    if-eqz v0, :cond_2

    const-string v0, "DMPushSocket"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hashCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", closeSocket:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/push/j;->b:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/j;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    iput-object v4, p0, Lcom/sina/sinalivesdk/refactor/push/j;->b:Ljava/net/Socket;

    :goto_2
    return-void

    .line 1000
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 0
    :catch_2
    move-exception v0

    :try_start_3
    const-string v1, "DMPushSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hashCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", closeSocket exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput-object v4, p0, Lcom/sina/sinalivesdk/refactor/push/j;->b:Ljava/net/Socket;

    goto :goto_2

    :catchall_0
    move-exception v0

    iput-object v4, p0, Lcom/sina/sinalivesdk/refactor/push/j;->b:Ljava/net/Socket;

    throw v0
.end method
