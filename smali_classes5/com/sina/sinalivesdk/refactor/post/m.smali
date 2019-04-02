.class public final Lcom/sina/sinalivesdk/refactor/post/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sina/sinalivesdk/refactor/post/l;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/util/concurrent/atomic/AtomicLong;

.field private final c:Ljava/util/concurrent/locks/Lock;

.field private d:Landroid/content/Context;

.field private final e:I

.field private f:J

.field private g:J

.field private h:Lcom/sina/sinalivesdk/refactor/post/h;

.field private i:Lcom/sina/sinalivesdk/refactor/post/k;

.field private j:Lcom/sina/sinalivesdk/refactor/push/c;

.field private k:Lcom/sina/sinalivesdk/refactor/services/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->b:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->c:Ljava/util/concurrent/locks/Lock;

    iput-object v4, p0, Lcom/sina/sinalivesdk/refactor/post/m;->d:Landroid/content/Context;

    iput-wide v2, p0, Lcom/sina/sinalivesdk/refactor/post/m;->f:J

    iput-wide v2, p0, Lcom/sina/sinalivesdk/refactor/post/m;->g:J

    iput-object v4, p0, Lcom/sina/sinalivesdk/refactor/post/m;->k:Lcom/sina/sinalivesdk/refactor/services/h;

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/post/m;->d:Landroid/content/Context;

    iput p2, p0, Lcom/sina/sinalivesdk/refactor/post/m;->e:I

    const-string v0, "PostConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connection "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " created."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/io/InputStream;)[B
    .locals 6

    const/4 v5, 0x4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "readPayload stream is null.Mybe it\'s wap problem"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, v5}, Lcom/sina/sinalivesdk/refactor/post/m;->a(Ljava/io/InputStream;I)[B

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
    invoke-direct {p0, p1, v2}, Lcom/sina/sinalivesdk/refactor/post/m;->a(Ljava/io/InputStream;I)[B
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
.method public final a(Lcom/sina/sinalivesdk/refactor/messages/PostData;)I
    .locals 13

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 0
    iget-wide v0, p1, Lcom/sina/sinalivesdk/refactor/messages/PostData;->tid:J

    iget-object v6, p0, Lcom/sina/sinalivesdk/refactor/post/m;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entered invalid status, trying to send packet tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/sina/sinalivesdk/refactor/messages/PostData;->tid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->f:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-lez v0, :cond_1

    invoke-virtual {p0, v5}, Lcom/sina/sinalivesdk/refactor/post/m;->a(Z)V

    :cond_1
    invoke-virtual {p1}, Lcom/sina/sinalivesdk/refactor/messages/PostData;->getRequest()Lcom/sina/sinalivesdk/refactor/messages/PostMessage;

    move-result-object v8

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {v8}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->isHttpRequest()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "hcl"

    const-string v1, "send http branch"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->i:Lcom/sina/sinalivesdk/refactor/post/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->i:Lcom/sina/sinalivesdk/refactor/post/k;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/post/k;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->i:Lcom/sina/sinalivesdk/refactor/post/k;

    :cond_2
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->i:Lcom/sina/sinalivesdk/refactor/post/k;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sina/sinalivesdk/refactor/services/i;->a()Lcom/sina/sinalivesdk/refactor/services/i;

    .line 2000
    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "project_mode_live"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "project_live_ps_debug_enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "project_live_replay_debug_host"

    const-string v2, "barrage.im.api.weibo.com"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "project_live_replay_debug_port"

    const/16 v6, 0x1f90

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "https://"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/barrage/get_messages.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/sina/sinalivesdk/refactor/services/f;

    invoke-direct {v0, v1}, Lcom/sina/sinalivesdk/refactor/services/f;-><init>(Ljava/lang/String;)V

    .line 1000
    :goto_0
    new-instance v1, Lcom/sina/sinalivesdk/refactor/post/k;

    invoke-direct {v1, v0}, Lcom/sina/sinalivesdk/refactor/post/k;-><init>(Lcom/sina/sinalivesdk/refactor/services/f;)V

    iput-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/m;->i:Lcom/sina/sinalivesdk/refactor/post/k;

    :cond_3
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->g:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 0
    :try_start_3
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->i:Lcom/sina/sinalivesdk/refactor/post/k;

    invoke-virtual {v0, v8}, Lcom/sina/sinalivesdk/refactor/post/k;->a(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v8}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->getResponseHelper()Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v8}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->getResponseHelper()Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;->handleHttpResponse(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    move-object v0, v3

    move v1, v4

    :goto_1
    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/post/m;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/post/m;->b:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    if-nez v1, :cond_5

    invoke-virtual {v8}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->getResponseHelper()Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v8}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->getResponseHelper()Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;

    move-result-object v1

    invoke-virtual {v1, v5, v3, v0, p1}, Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;->handleResponse(ILcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/util/HashMap;Lcom/sina/sinalivesdk/refactor/messages/PostData;)I

    :cond_5
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/sina/sinalivesdk/util/c;->a(Landroid/content/Context;)Lcom/sina/sinalivesdk/util/c;

    move-result-object v0

    iget-wide v2, p1, Lcom/sina/sinalivesdk/refactor/messages/PostData;->tid:J

    invoke-virtual {v0, v2, v3}, Lcom/sina/sinalivesdk/util/c;->b(J)V

    return v5

    .line 2000
    :cond_6
    :try_start_4
    new-instance v0, Lcom/sina/sinalivesdk/refactor/services/f;

    const-string v1, "https://barrage.api.weibo.com/barrage/get_messages.json"

    invoke-direct {v0, v1}, Lcom/sina/sinalivesdk/refactor/services/f;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1000
    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/m;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 0
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/m;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/m;->b:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    throw v0

    :cond_7
    const/16 v1, 0xd

    move-object v0, v3

    move v12, v5

    move v5, v1

    move v1, v12

    goto :goto_1

    :catch_0
    move-exception v0

    const/16 v1, 0xc

    :try_start_6
    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/post/m;->i:Lcom/sina/sinalivesdk/refactor/post/k;

    invoke-virtual {v2}, Lcom/sina/sinalivesdk/refactor/post/k;->b()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v3

    move v12, v5

    move v5, v1

    move v1, v12

    goto :goto_1

    :cond_8
    instance-of v0, v8, Lcom/sina/sinalivesdk/refactor/messages/SendGiftMessage;

    if-nez v0, :cond_9

    instance-of v0, v8, Lcom/sina/sinalivesdk/refactor/messages/DMTextMessage;

    if-eqz v0, :cond_e

    :cond_9
    sget-boolean v0, Lcom/sina/sinalivesdk/util/Constants;->NEED_SSL:Z

    if-eqz v0, :cond_e

    .line 3000
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    const/4 v6, 0x4

    invoke-virtual {v0, v1, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->j:Lcom/sina/sinalivesdk/refactor/push/c;

    if-eqz v0, :cond_a

    const-string v0, "PostConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " initSender. close first."

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->j:Lcom/sina/sinalivesdk/refactor/push/c;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/c;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->j:Lcom/sina/sinalivesdk/refactor/push/c;

    :cond_a
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->j:Lcom/sina/sinalivesdk/refactor/push/c;

    if-nez v0, :cond_b

    new-instance v0, Lcom/sina/sinalivesdk/refactor/push/c;

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/m;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sina/sinalivesdk/refactor/push/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->j:Lcom/sina/sinalivesdk/refactor/push/c;

    :cond_b
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->g:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->j:Lcom/sina/sinalivesdk/refactor/push/c;

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->k:Lcom/sina/sinalivesdk/refactor/services/h;

    :goto_2
    move v7, v5

    move-object v0, v3

    move v1, v4

    :goto_3
    iget v6, p1, Lcom/sina/sinalivesdk/refactor/messages/PostData;->numberOfTimesToRetry:I

    add-int/lit8 v6, v6, 0x1

    if-ge v7, v6, :cond_16

    if-lez v7, :cond_11

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/refactor/messages/PostData;->getResendBuffer()[B

    move-result-object v1

    :goto_4
    iget-object v6, p0, Lcom/sina/sinalivesdk/refactor/post/m;->k:Lcom/sina/sinalivesdk/refactor/services/h;

    iget-wide v10, p1, Lcom/sina/sinalivesdk/refactor/messages/PostData;->tid:J

    invoke-interface {v6, v1, v10, v11}, Lcom/sina/sinalivesdk/refactor/services/h;->a([BJ)I

    move-result v1

    iget-object v6, p0, Lcom/sina/sinalivesdk/refactor/post/m;->d:Landroid/content/Context;

    invoke-static {v6}, Lcom/sina/sinalivesdk/util/c;->a(Landroid/content/Context;)Lcom/sina/sinalivesdk/util/c;

    move-result-object v6

    iget-wide v10, p1, Lcom/sina/sinalivesdk/refactor/messages/PostData;->tid:J

    invoke-virtual {v6, v10, v11}, Lcom/sina/sinalivesdk/util/c;->a(J)Lcom/sina/sinalivesdk/util/d;

    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-nez v1, :cond_15

    :try_start_9
    iget-object v6, p0, Lcom/sina/sinalivesdk/refactor/post/m;->k:Lcom/sina/sinalivesdk/refactor/services/h;

    invoke-interface {v6}, Lcom/sina/sinalivesdk/refactor/services/h;->a()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sina/sinalivesdk/refactor/post/m;->a(Ljava/io/InputStream;)[B

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/sina/sinalivesdk/refactor/post/m;->f:J

    const-string v9, "PostConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " response length "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", response: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Lcom/sina/sinalivesdk/refactor/push/a/c;->a([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->newInstance([B)Lcom/sina/sinalivesdk/protobuf/CodedInputStream;

    move-result-object v6

    invoke-static {v6}, Lcom/sina/sinalivesdk/protobuf/ResponseParser;->parseHeader(Lcom/sina/sinalivesdk/protobuf/CodedInputStream;)Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->isProtoBuf()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-static {v6, v9}, Lcom/sina/sinalivesdk/protobuf/ResponseParser;->parseBody(Lcom/sina/sinalivesdk/protobuf/CodedInputStream;Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v8}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->getResponseHelper()Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual {v8}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->getResponseHelper()Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;

    move-result-object v6

    invoke-virtual {v6, v1, v9, v0, p1}, Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;->handleResponse(ILcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/util/HashMap;Lcom/sina/sinalivesdk/refactor/messages/PostData;)I

    :cond_c
    sget-boolean v6, Lcom/sina/sinalivesdk/util/e;->a:Z

    if-eqz v6, :cond_d

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/sina/sinalivesdk/util/a;->a()Lcom/sina/sinalivesdk/util/a;

    move-result-object v10

    invoke-virtual {v10, v0, v9}, Lcom/sina/sinalivesdk/util/a;->a(Ljava/util/Map;Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_d
    :goto_5
    move v5, v1

    move v1, v4

    goto/16 :goto_1

    .line 3000
    :catchall_2
    move-exception v0

    :try_start_a
    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/m;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 4000
    :cond_e
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    const/4 v6, 0x4

    invoke-virtual {v0, v1, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->h:Lcom/sina/sinalivesdk/refactor/post/h;

    if-eqz v0, :cond_f

    const-string v0, "PostConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " initSender. close first."

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->h:Lcom/sina/sinalivesdk/refactor/post/h;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/post/h;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->h:Lcom/sina/sinalivesdk/refactor/post/h;

    :cond_f
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->h:Lcom/sina/sinalivesdk/refactor/post/h;

    if-nez v0, :cond_10

    new-instance v0, Lcom/sina/sinalivesdk/refactor/post/h;

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/m;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sina/sinalivesdk/refactor/post/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->h:Lcom/sina/sinalivesdk/refactor/post/h;

    :cond_10
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->g:J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->h:Lcom/sina/sinalivesdk/refactor/post/h;

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->k:Lcom/sina/sinalivesdk/refactor/services/h;

    goto/16 :goto_2

    .line 4000
    :catchall_3
    move-exception v0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/m;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 0
    :cond_11
    invoke-virtual {p1}, Lcom/sina/sinalivesdk/refactor/messages/PostData;->getBuffer()[B
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result-object v1

    goto/16 :goto_4

    :cond_12
    :try_start_d
    invoke-static {v6, v9}, Lcom/sina/sinalivesdk/protobuf/ResponseParser;->getJosnString(Lcom/sina/sinalivesdk/protobuf/CodedInputStream;Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->getResponseHelper()Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;

    move-result-object v10

    if-eqz v10, :cond_13

    invoke-virtual {v8}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->getResponseHelper()Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;

    move-result-object v10

    invoke-virtual {v10, v1, v9, v6, p1}, Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;->handleJsonResponse(ILcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/lang/String;Lcom/sina/sinalivesdk/refactor/messages/PostData;)I

    :cond_13
    sget-boolean v10, Lcom/sina/sinalivesdk/util/e;->a:Z

    if-eqz v10, :cond_d

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/sina/sinalivesdk/util/a;->a()Lcom/sina/sinalivesdk/util/a;

    invoke-static {v6, v9}, Lcom/sina/sinalivesdk/util/a;->a(Ljava/lang/String;Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_5

    :catch_1
    move-exception v6

    :try_start_e
    const-string v9, "PostConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " send failed, close sender."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v6}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v9, "PostConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " send failed, 123retryTimes="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", 123result is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/sina/sinalivesdk/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/m;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/sina/sinalivesdk/util/c;->a(Landroid/content/Context;)Lcom/sina/sinalivesdk/util/c;

    move-result-object v1

    iget-wide v10, p1, Lcom/sina/sinalivesdk/refactor/messages/PostData;->tid:J

    invoke-virtual {v1, v10, v11}, Lcom/sina/sinalivesdk/util/c;->a(J)Lcom/sina/sinalivesdk/util/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "recv failed: "

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/m;->k:Lcom/sina/sinalivesdk/refactor/services/h;

    invoke-interface {v1}, Lcom/sina/sinalivesdk/refactor/services/h;->b()V

    instance-of v1, v6, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_14

    move v1, v2

    :goto_6
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto/16 :goto_3

    :cond_14
    const/4 v1, 0x7

    goto :goto_6

    :cond_15
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " send failed, retryTimes="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", result is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "PostConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " send failed, retryTimes="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", result is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/sina/sinalivesdk/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    const-wide/16 v10, 0xc8

    :try_start_f
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_6

    :catch_2
    move-exception v2

    :try_start_10
    const-string v4, "PostConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " retry sleep interrupted."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v2}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move v12, v5

    move v5, v1

    move v1, v12

    goto/16 :goto_1

    :cond_16
    move v12, v5

    move v5, v1

    move v1, v12

    goto/16 :goto_1
.end method

.method public final a(Z)V
    .locals 4

    if-nez p1, :cond_0

    iget-wide v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->f:J

    const-wide/32 v2, 0x1d2cc

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->k:Lcom/sina/sinalivesdk/refactor/services/h;

    if-eqz v0, :cond_1

    const-string v0, "PostConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " close sender."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->k:Lcom/sina/sinalivesdk/refactor/services/h;

    invoke-interface {v0}, Lcom/sina/sinalivesdk/refactor/services/h;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->k:Lcom/sina/sinalivesdk/refactor/services/h;

    :cond_1
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->i:Lcom/sina/sinalivesdk/refactor/post/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->i:Lcom/sina/sinalivesdk/refactor/post/k;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/post/k;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->i:Lcom/sina/sinalivesdk/refactor/post/k;

    :cond_2
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/m;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final a(J)Z
    .locals 5

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/m;->b:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[[PostConnection, id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sina/sinalivesdk/refactor/post/m;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", occupied tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/m;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
