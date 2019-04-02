.class public Lcom/sina/sinalivesdk/manager/SocketManager;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/sina/sinalivesdk/manager/SocketManager;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;II)Ljava/net/Socket;
    .locals 5

    :try_start_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    const-string v2, "SocketManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wesyncmanager tcp \u975e\u4ee3\u7406\u521d\u59cb\u5316 timeout:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    const-string v1, "SocketManager"

    const-string v2, "wesyncmanager tcp \u521d\u59cb\u5316\u6210\u529f"

    invoke-static {v1, v2}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SocketManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init tcp socket exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "SocketManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init tcp socket exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/lang/String;I[Ljavax/net/ssl/TrustManager;)Ljava/net/Socket;
    .locals 4

    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, p2, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    const-string v1, "SocketManager"

    const-string v2, "wesyncmanager ssl \u975e\u4ee3\u7406\u521d\u59cb\u5316"

    invoke-static {v1, v2}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    const-string v1, "SocketManager"

    const-string v2, "wesyncmanager ssl \u521d\u59cb\u5316\u6210\u529f"

    invoke-static {v1, v2}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SocketManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init ssl socket exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static instance()Lcom/sina/sinalivesdk/manager/SocketManager;
    .locals 1

    sget-object v0, Lcom/sina/sinalivesdk/manager/SocketManager$LazyHolder;->a:Lcom/sina/sinalivesdk/manager/SocketManager;

    return-object v0
.end method


# virtual methods
.method public getSinaLiveSdkSocket(Landroid/content/Context;Ljava/lang/String;I[Ljavax/net/ssl/TrustManager;I)Ljava/net/Socket;
    .locals 1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-eqz p4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {p2, p3, p4}, Lcom/sina/sinalivesdk/manager/SocketManager;->a(Ljava/lang/String;I[Ljavax/net/ssl/TrustManager;)Ljava/net/Socket;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {p2, p3, p5}, Lcom/sina/sinalivesdk/manager/SocketManager;->a(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object v0

    goto :goto_0
.end method
