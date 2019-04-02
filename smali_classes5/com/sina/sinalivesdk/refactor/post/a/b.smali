.class public final Lcom/sina/sinalivesdk/refactor/post/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sina/sinalivesdk/refactor/post/a/b;->b:I

    iput v0, p0, Lcom/sina/sinalivesdk/refactor/post/a/b;->c:I

    return-void
.end method

.method private static a(Ljava/net/URL;Lcom/sina/sinalivesdk/refactor/post/a/k;Ljava/util/Map;J)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/sina/sinalivesdk/refactor/post/a/k;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)J"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p0, :cond_6

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {p1}, Lcom/sina/sinalivesdk/refactor/post/a/k;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HTTP/1.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    :goto_1
    if-eqz p2, :cond_5

    :try_start_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ": "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v3

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    add-int/2addr v0, v2

    int-to-long v0, v0

    add-long/2addr v0, p3

    return-wide v0

    :cond_3
    move-object v1, v0

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    :goto_5
    move v2, v0

    move v0, v3

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    move v3, v2

    goto :goto_1
.end method

.method private static a(Ljava/util/Map;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)J"
        }
    .end annotation

    const-wide/16 v2, 0x0

    if-eqz p0, :cond_4

    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    move-object v4, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, ""

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-wide v2

    :cond_1
    move-object v4, v1

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    int-to-long v0, v0

    :goto_4
    move-wide v2, v0

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    move-wide v0, v2

    goto :goto_4
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 3

    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method private static a(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    sget-object v0, Lcom/sina/sinalivesdk/refactor/post/a/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v1, "weibocn.cer"

    invoke-static {p0, v1}, Lcom/sina/sinalivesdk/refactor/post/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    const-string v2, "weibocom.cer"

    invoke-static {p0, v2}, Lcom/sina/sinalivesdk/refactor/post/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    const-string v3, "cnca"

    invoke-virtual {v0, v3, v1}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    const-string v1, "comca"

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    new-instance v1, Lcom/sina/sinalivesdk/refactor/post/a/m;

    invoke-direct {v1, v0}, Lcom/sina/sinalivesdk/refactor/post/a/m;-><init>(Ljava/security/KeyStore;)V

    sput-object v1, Lcom/sina/sinalivesdk/refactor/post/a/b;->a:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/sina/sinalivesdk/refactor/post/a/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :try_start_1
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcom/sina/sinalivesdk/refactor/post/a/b;->a:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    sput-object v0, Lcom/sina/sinalivesdk/refactor/post/a/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/sina/sinalivesdk/refactor/post/a/g;Lcom/sina/sinalivesdk/refactor/post/a/j;)Lcom/sina/sinalivesdk/refactor/post/a/i;
    .locals 15

    .prologue
    .line 0
    new-instance v9, Lcom/sina/sinalivesdk/refactor/post/a/i;

    invoke-direct {v9}, Lcom/sina/sinalivesdk/refactor/post/a/i;-><init>()V

    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/sina/sinalivesdk/refactor/post/a/g;->a:Z

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/sina/sinalivesdk/refactor/post/a/g;->b:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/sina/sinalivesdk/refactor/post/a/g;->c:Lcom/sina/sinalivesdk/refactor/post/a/k;

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    new-instance v2, Lcom/sina/sinalivesdk/refactor/post/a/c;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Lcom/sina/sinalivesdk/refactor/post/a/c;-><init>(Lcom/sina/sinalivesdk/refactor/post/a/j;)V

    move-object/from16 p2, v2

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v9, Lcom/sina/sinalivesdk/refactor/post/a/i;->k:J

    invoke-virtual {v6}, Lcom/sina/sinalivesdk/refactor/post/a/k;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/sina/sinalivesdk/refactor/post/a/i;->b:Ljava/lang/String;

    iput-object v3, v9, Lcom/sina/sinalivesdk/refactor/post/a/i;->a:Ljava/lang/String;

    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-interface/range {p2 .. p2}, Lcom/sina/sinalivesdk/refactor/post/a/j;->a()V

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v6}, Lcom/sina/sinalivesdk/refactor/post/a/k;->a()Ljava/lang/String;

    move-result-object v8

    .line 1000
    if-eqz v2, :cond_8

    invoke-virtual {v7, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    move-object v3, v2

    :goto_0
    const-string v2, "https"

    invoke-virtual {v7}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v3

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/sina/sinalivesdk/refactor/post/a/b;->a(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_2
    invoke-virtual {v3, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/16 v2, 0x7530

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v2, 0xea60

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 0
    :try_start_1
    new-instance v2, Lcom/sina/sinalivesdk/refactor/post/a/a;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/sina/sinalivesdk/refactor/post/a/a;-><init>(Ljava/util/Map;)V

    iput-object v2, v9, Lcom/sina/sinalivesdk/refactor/post/a/i;->e:Ljava/util/Map;

    sget-object v2, Lcom/sina/sinalivesdk/refactor/post/a/k;->b:Lcom/sina/sinalivesdk/refactor/post/a/k;

    invoke-virtual {v2, v6}, Lcom/sina/sinalivesdk/refactor/post/a/k;->equals(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    iget-wide v4, v9, Lcom/sina/sinalivesdk/refactor/post/a/i;->c:J

    invoke-static {v7, v6, v2, v4, v5}, Lcom/sina/sinalivesdk/refactor/post/a/b;->a(Ljava/net/URL;Lcom/sina/sinalivesdk/refactor/post/a/k;Ljava/util/Map;J)J

    move-result-wide v4

    iput-wide v4, v9, Lcom/sina/sinalivesdk/refactor/post/a/i;->d:J

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    iput v2, v9, Lcom/sina/sinalivesdk/refactor/post/a/i;->f:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v9, Lcom/sina/sinalivesdk/refactor/post/a/i;->l:J

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    new-instance v4, Lcom/sina/sinalivesdk/refactor/post/a/a;

    invoke-direct {v4, v2}, Lcom/sina/sinalivesdk/refactor/post/a/a;-><init>(Ljava/util/Map;)V

    iput-object v4, v9, Lcom/sina/sinalivesdk/refactor/post/a/i;->g:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v10

    iget-object v2, v9, Lcom/sina/sinalivesdk/refactor/post/a/i;->g:Ljava/util/Map;

    invoke-static {v2}, Lcom/sina/sinalivesdk/refactor/post/a/b;->a(Ljava/util/Map;)J

    int-to-long v4, v10

    iput-wide v4, v9, Lcom/sina/sinalivesdk/refactor/post/a/i;->j:J

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iget-object v2, v9, Lcom/sina/sinalivesdk/refactor/post/a/i;->g:Ljava/util/Map;

    const-string v5, "Content-Encoding"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_17

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_17

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "gzip"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_17

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v8, v2

    :goto_1
    if-eqz v8, :cond_f

    const-string v5, "UTF-8"

    const/4 v4, 0x0

    iget-object v2, v9, Lcom/sina/sinalivesdk/refactor/post/a/i;->g:Ljava/util/Map;

    const-string v6, "Content-Type"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_16

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    if-lez v6, :cond_16

    const/4 v6, 0x0

    :try_start_2
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v6, "charset="

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v11, -0x1

    if-eq v7, v11, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    :cond_3
    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "text"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "json"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "xml"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    if-eqz v2, :cond_9

    :cond_4
    const/4 v2, 0x1

    :goto_2
    move v6, v2

    move-object v7, v5

    :goto_3
    if-eqz v6, :cond_a

    const/4 v2, 0x1

    move v5, v2

    :goto_4
    if-eqz p2, :cond_b

    const/4 v2, 0x1

    move v4, v2

    :goto_5
    if-nez v5, :cond_5

    if-eqz v4, :cond_c

    :cond_5
    const/4 v2, 0x1

    :goto_6
    if-eqz v2, :cond_f

    const/16 v2, 0x4000

    :try_start_3
    new-array v11, v2, [B

    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v8, v11}, Ljava/io/InputStream;->read([B)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_d

    if-eqz v5, :cond_6

    const/4 v14, 0x0

    invoke-virtual {v12, v11, v14, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_6
    if-eqz v4, :cond_7

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v14, v13, v10}, Lcom/sina/sinalivesdk/refactor/post/a/j;->a([BIII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_7
    add-int/2addr v2, v13

    goto :goto_7

    .line 1000
    :cond_8
    :try_start_4
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v3, v2

    goto/16 :goto_0

    .line 0
    :cond_9
    const/4 v2, 0x0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "UTF-8"

    move v6, v4

    move-object v7, v2

    goto :goto_3

    :cond_a
    const/4 v2, 0x0

    move v5, v2

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    move v4, v2

    goto :goto_5

    :cond_c
    const/4 v2, 0x0

    goto :goto_6

    :cond_d
    int-to-long v4, v2

    iput-wide v4, v9, Lcom/sina/sinalivesdk/refactor/post/a/i;->j:J

    if-eqz v6, :cond_e

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v4, v9, Lcom/sina/sinalivesdk/refactor/post/a/i;->h:Ljava/lang/String;

    :cond_e
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v9, Lcom/sina/sinalivesdk/refactor/post/a/i;->m:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_10
    if-eqz p2, :cond_11

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Lcom/sina/sinalivesdk/refactor/post/a/j;->a(Lcom/sina/sinalivesdk/refactor/post/a/i;)V

    :cond_11
    :goto_8
    return-object v9

    :catch_1
    move-exception v2

    move-object v3, v4

    :goto_9
    :try_start_6
    iput-object v2, v9, Lcom/sina/sinalivesdk/refactor/post/a/i;->n:Ljava/lang/Throwable;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_12
    if-eqz p2, :cond_11

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Lcom/sina/sinalivesdk/refactor/post/a/j;->a(Lcom/sina/sinalivesdk/refactor/post/a/i;)V

    goto :goto_8

    :catch_2
    move-exception v2

    move-object v3, v4

    :goto_a
    :try_start_7
    iput-object v2, v9, Lcom/sina/sinalivesdk/refactor/post/a/i;->n:Ljava/lang/Throwable;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_13
    if-eqz p2, :cond_11

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Lcom/sina/sinalivesdk/refactor/post/a/j;->a(Lcom/sina/sinalivesdk/refactor/post/a/i;)V

    goto :goto_8

    :catchall_0
    move-exception v2

    move-object v3, v4

    :goto_b
    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_14
    if-eqz p2, :cond_15

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Lcom/sina/sinalivesdk/refactor/post/a/j;->a(Lcom/sina/sinalivesdk/refactor/post/a/i;)V

    :cond_15
    throw v2

    :catchall_1
    move-exception v2

    goto :goto_b

    :catch_3
    move-exception v2

    goto :goto_a

    :catch_4
    move-exception v2

    goto :goto_9

    :cond_16
    move v6, v4

    move-object v7, v5

    goto/16 :goto_3

    :cond_17
    move-object v8, v4

    goto/16 :goto_1
.end method
