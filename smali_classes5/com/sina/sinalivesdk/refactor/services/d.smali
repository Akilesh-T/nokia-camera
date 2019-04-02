.class public abstract Lcom/sina/sinalivesdk/refactor/services/d;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Ljava/net/Socket;

.field private c:Ljava/io/BufferedInputStream;

.field private d:Ljava/io/BufferedOutputStream;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/d;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/d;->b:Ljava/net/Socket;

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/d;->c:Ljava/io/BufferedInputStream;

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/d;->d:Ljava/io/BufferedOutputStream;

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/services/d;->a:Landroid/content/Context;

    const-string v0, "DMSocket"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "constructor, hashCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a([BLcom/sina/sinalivesdk/refactor/services/f;J)I
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/services/d;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/sina/sinalivesdk/util/c;->a(Landroid/content/Context;)Lcom/sina/sinalivesdk/util/c;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Lcom/sina/sinalivesdk/util/c;->a(J)Lcom/sina/sinalivesdk/util/d;

    move-result-object v3

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/services/d;->b:Ljava/net/Socket;

    if-nez v2, :cond_3

    const-string v2, "DMSocket"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "hashCode="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", current socket is null, create new socket."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/services/d;->a:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/sina/sinalivesdk/refactor/post/o;->a(Landroid/content/Context;Lcom/sina/sinalivesdk/refactor/services/f;)Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lcom/sina/sinalivesdk/refactor/services/d;->b:Ljava/net/Socket;

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/services/d;->b:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sina/sinalivesdk/util/d;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/services/d;->b:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getPort()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v2, "DMSocket"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "hashCode="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", current socket="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sina/sinalivesdk/refactor/services/d;->b:Ljava/net/Socket;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/services/d;->b:Ljava/net/Socket;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/services/d;->b:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-nez v2, :cond_7

    :cond_1
    const-string v0, "N/A"

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/util/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Hostinfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sina/sinalivesdk/refactor/services/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sina/sinalivesdk/refactor/services/f;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sina/sinalivesdk/util/d;->a(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x5

    :goto_1
    return v0

    :catch_0
    move-exception v2

    const-string v4, "DMSocket"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "create socket failed:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/services/d;->b:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sina/sinalivesdk/util/d;->a(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sina/sinalivesdk/refactor/services/d;->b:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getPort()I

    iget-object v5, p0, Lcom/sina/sinalivesdk/refactor/services/d;->b:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getPort()I

    move-result v5

    invoke-virtual {p2}, Lcom/sina/sinalivesdk/refactor/services/f;->b()I

    move-result v6

    if-ne v5, v6, :cond_5

    invoke-virtual {p2}, Lcom/sina/sinalivesdk/refactor/services/f;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p2}, Lcom/sina/sinalivesdk/refactor/services/f;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const-string v2, "DMSocket"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "resuse socket "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sina/sinalivesdk/refactor/services/d;->b:Ljava/net/Socket;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    :goto_2
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/refactor/services/d;->d()V

    :try_start_1
    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/services/d;->a:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/sina/sinalivesdk/refactor/post/o;->a(Landroid/content/Context;Lcom/sina/sinalivesdk/refactor/services/f;)Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lcom/sina/sinalivesdk/refactor/services/d;->b:Ljava/net/Socket;

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/services/d;->b:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sina/sinalivesdk/util/d;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/services/d;->b:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getPort()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    const-string v4, "DMSocket"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "create socket failed:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    move v2, v1

    goto :goto_2

    :cond_6
    move v2, v1

    goto :goto_2

    :cond_7
    :try_start_2
    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/services/d;->b:Ljava/net/Socket;

    const/high16 v3, 0x10000

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSendBufferSize(I)V

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/services/d;->b:Ljava/net/Socket;

    const/16 v3, 0x4000

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/services/d;->b:Ljava/net/Socket;

    const/16 v3, 0x4e20

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lcom/sina/sinalivesdk/refactor/services/d;->b:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/sina/sinalivesdk/refactor/services/d;->c:Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Lcom/sina/sinalivesdk/refactor/services/d;->b:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/sina/sinalivesdk/refactor/services/d;->d:Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/services/d;->d:Ljava/io/BufferedOutputStream;

    const/4 v3, 0x0

    array-length v4, p1

    invoke-virtual {v2, p1, v3, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/services/d;->d:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_1

    :catch_2
    move-exception v0

    const-string v2, "DMSocket"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sina/sinalivesdk/refactor/services/d;->b:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " send failed, data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/sina/sinalivesdk/refactor/push/a/c;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/refactor/services/d;->d()V

    :goto_3
    move v0, v1

    goto/16 :goto_1

    :catch_3
    move-exception v0

    const-string v2, "DMSocket"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sina/sinalivesdk/refactor/services/d;->b:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " send failed, data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/sina/sinalivesdk/refactor/push/a/c;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/refactor/services/d;->d()V

    goto :goto_3
.end method

.method public final c()Ljava/io/BufferedInputStream;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/d;->c:Ljava/io/BufferedInputStream;

    return-object v0
.end method

.method public final declared-synchronized d()V
    .locals 4

    .prologue
    .line 0
    monitor-enter p0

    .line 1000
    :try_start_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/d;->c:Ljava/io/BufferedInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/d;->c:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/d;->c:Ljava/io/BufferedInputStream;

    :cond_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/d;->d:Ljava/io/BufferedOutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    :try_start_3
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/d;->d:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/d;->d:Ljava/io/BufferedOutputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 0
    :cond_1
    :try_start_5
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/d;->b:Ljava/net/Socket;

    if-eqz v0, :cond_2

    const-string v0, "DMSocket"

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

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/services/d;->b:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/d;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_2
    const/4 v0, 0x0

    :try_start_6
    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/d;->b:Ljava/net/Socket;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    .line 1000
    :catch_0
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1000
    :catch_1
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 0
    :catch_2
    move-exception v0

    :try_start_9
    const-string v1, "DMSocket"

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
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/4 v0, 0x0

    :try_start_a
    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/d;->b:Ljava/net/Socket;

    goto :goto_2

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sina/sinalivesdk/refactor/services/d;->b:Ljava/net/Socket;

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method
