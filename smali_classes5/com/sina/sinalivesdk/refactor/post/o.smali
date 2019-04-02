.class public final Lcom/sina/sinalivesdk/refactor/post/o;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/sina/sinalivesdk/refactor/post/o;->a:I

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/sina/sinalivesdk/refactor/services/f;)Ljava/net/Socket;
    .locals 11

    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    sget v6, Lcom/sina/sinalivesdk/refactor/post/o;->a:I

    add-int/lit8 v0, v6, 0x1

    sput v0, Lcom/sina/sinalivesdk/refactor/post/o;->a:I

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/refactor/services/f;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/refactor/services/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/refactor/services/f;->b()I

    move-result v3

    if-eq v0, v1, :cond_0

    if-eq v0, v10, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid host:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    if-nez v3, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid host:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v7, "SocketFactory"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "caller index "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " trying to connect to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v0, v10, :cond_5

    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    new-instance v7, Lcom/sina/sinalivesdk/refactor/post/p;

    invoke-direct {v7}, Lcom/sina/sinalivesdk/refactor/post/p;-><init>()V

    if-eqz v0, :cond_4

    new-array v4, v1, [Ljavax/net/ssl/TrustManager;

    aput-object v7, v4, v5

    :cond_4
    invoke-static {}, Lcom/sina/sinalivesdk/manager/SocketManager;->instance()Lcom/sina/sinalivesdk/manager/SocketManager;

    move-result-object v0

    const/16 v5, 0x2710

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sina/sinalivesdk/manager/SocketManager;->getSinaLiveSdkSocket(Landroid/content/Context;Ljava/lang/String;I[Ljavax/net/ssl/TrustManager;I)Ljava/net/Socket;

    move-result-object v4

    const-string v0, "SocketFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "caller index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " got socket:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v4

    :cond_5
    move v0, v5

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SocketFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " init ssl socket error."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
