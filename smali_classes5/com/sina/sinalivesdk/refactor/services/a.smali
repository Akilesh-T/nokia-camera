.class public final Lcom/sina/sinalivesdk/refactor/services/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;


# instance fields
.field private a:I

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private final k:Lcom/sina/sinalivesdk/refactor/services/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 4

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/sina/sinalivesdk/refactor/services/a;->a:I

    new-instance v0, Lcom/sina/sinalivesdk/refactor/services/b;

    invoke-direct {v0, p0}, Lcom/sina/sinalivesdk/refactor/services/b;-><init>(Lcom/sina/sinalivesdk/refactor/services/a;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/a;->k:Lcom/sina/sinalivesdk/refactor/services/c;

    iput-wide p2, p0, Lcom/sina/sinalivesdk/refactor/services/a;->b:J

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/services/a;->f:Landroid/content/Context;

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/a;->k:Lcom/sina/sinalivesdk/refactor/services/c;

    invoke-virtual {v0, p1}, Lcom/sina/sinalivesdk/refactor/services/c;->a(Landroid/content/Context;)V

    .line 2000
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/a;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/push/a/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1000
    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/a;->c:Ljava/lang/String;

    const-string v0, "DST"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/services/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 0
    return-void
.end method

.method static synthetic a(Lcom/sina/sinalivesdk/refactor/services/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/sina/sinalivesdk/refactor/services/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/sina/sinalivesdk/refactor/services/a;)I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/refactor/services/a;->a:I

    return v0
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/refactor/services/a;->b:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/services/a;->d:Ljava/lang/String;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    const-string v0, "zh_CN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "zh_HK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/sina/sinalivesdk/refactor/services/a;->e:I

    :goto_0
    return-void

    :cond_0
    const-string v0, "zh_TW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/sina/sinalivesdk/refactor/services/a;->e:I

    goto :goto_0

    :cond_1
    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lcom/sina/sinalivesdk/refactor/services/a;->e:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/sina/sinalivesdk/refactor/services/a;->e:I

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/services/a;->g:Ljava/lang/String;

    return-void
.end method

.method public final context()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/a;->f:Landroid/content/Context;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/services/a;->h:Ljava/lang/String;

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/services/a;->i:Ljava/lang/String;

    return-void
.end method

.method public final getAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getAccess_token_type()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthorization()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sina/sinalivesdk/refactor/services/a;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, ""

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sina/sinalivesdk/util/b;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppSignAuth appkey="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "param="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "sign="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public final getConstant()Lcom/sina/sinalivesdk/refactor/services/g;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/a;->k:Lcom/sina/sinalivesdk/refactor/services/c;

    return-object v0
.end method

.method public final declared-synchronized getGdid()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/a;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getLanguage()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/refactor/services/a;->e:I

    return v0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/a;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final getUid()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/refactor/services/a;->b:J

    return-wide v0
.end method
