.class public final Lcom/sina/sinalivesdk/refactor/push/q;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sina/sinalivesdk/refactor/messages/PostData;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/q;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/push/q;->c:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/q;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/q;->b:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Lcom/sina/sinalivesdk/refactor/push/q;->c()V

    return-void
.end method

.method static synthetic a(Lcom/sina/sinalivesdk/refactor/push/q;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 0
    .line 1000
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/q;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    const-string v0, "PushRequestMap"

    const-string v1, "map == null when purgeTimeout, return"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "PushRequestMap"

    const-string v1, "purgeTimeoutRequest()!!!!"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    :goto_1
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/q;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/q;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "PushRequestMap"

    const-string v1, "timeout check cycle start!!"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sina/sinalivesdk/refactor/messages/PostData;

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/refactor/messages/PostData;->getRequest()Lcom/sina/sinalivesdk/refactor/messages/PostMessage;

    move-result-object v3

    const-string v1, "PushRequestMap"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "message : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->requestId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->startTime()J

    move-result-wide v8

    sub-long/2addr v4, v8

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->timeout()J

    move-result-wide v8

    cmp-long v1, v4, v8

    if-lez v1, :cond_1

    const-string v1, "PushRequestMap"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "request "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->requestInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", requestTid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " timeout."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sina/sinalivesdk/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->getResponseHelper()Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->getHeader()Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->getRequestId()Ljava/lang/String;

    move-result-object v5

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;->handleResponse(ILcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/util/HashMap;Lcom/sina/sinalivesdk/refactor/messages/PostData;Ljava/lang/String;)I

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_2

    :cond_2
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/push/q;->c:Z

    goto/16 :goto_0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/q;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sina/sinalivesdk/refactor/push/r;

    invoke-direct {v1, p0}, Lcom/sina/sinalivesdk/refactor/push/r;-><init>(Lcom/sina/sinalivesdk/refactor/push/q;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/sina/sinalivesdk/refactor/messages/PostData;
    .locals 3

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/q;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    const-string v0, "PushRequestMap"

    const-string v1, "map == null when remove, return"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "PushRequestMap"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove(long requestTid) : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/q;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/sinalivesdk/refactor/messages/PostData;

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/q;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/q;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iput-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/q;->a:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/q;->b:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/q;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iput-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/q;->b:Ljava/util/concurrent/ExecutorService;

    :cond_1
    return-void
.end method

.method public final a(Lcom/sina/sinalivesdk/refactor/messages/PostData;)V
    .locals 6

    const-string v0, "PushRequestMap"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add(final PostData data) : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/sina/sinalivesdk/refactor/messages/PostData;->tid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/refactor/messages/PostData;->getRequest()Lcom/sina/sinalivesdk/refactor/messages/PostMessage;

    move-result-object v0

    iget-wide v2, p1, Lcom/sina/sinalivesdk/refactor/messages/PostData;->tid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/q;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PushRequestMap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->requestInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", requestTid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " added to map."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/q;->b:Ljava/util/concurrent/ExecutorService;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/q;->b:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/push/q;->c:Z

    if-eqz v0, :cond_1

    const-string v0, "PushRequestMap"

    const-string v2, "Timeout check need to restart!!"

    invoke-static {v0, v2}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/push/q;->c:Z

    invoke-direct {p0}, Lcom/sina/sinalivesdk/refactor/push/q;->c()V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/q;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    const-string v0, "PushRequestMap"

    const-string v1, "map == null when clear, return"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "PushRequestMap"

    const-string v1, "clear map"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/q;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_0
.end method
