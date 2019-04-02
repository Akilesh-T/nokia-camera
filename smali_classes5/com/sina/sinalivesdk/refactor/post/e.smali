.class public final Lcom/sina/sinalivesdk/refactor/post/e;
.super Lcom/sina/sinalivesdk/refactor/post/i;


# instance fields
.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:[Lcom/sina/sinalivesdk/refactor/post/d;

.field private g:Lcom/sina/sinalivesdk/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sina/sinalivesdk/a/a",
            "<",
            "Lcom/sina/sinalivesdk/refactor/messages/PostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/locks/Lock;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/a/a;Lcom/sina/sinalivesdk/refactor/post/f;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/WBIMLiveClient;",
            "Lcom/sina/sinalivesdk/a/a",
            "<",
            "Lcom/sina/sinalivesdk/refactor/messages/PostMessage;",
            ">;",
            "Lcom/sina/sinalivesdk/refactor/post/f;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x4

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Lcom/sina/sinalivesdk/refactor/post/i;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/refactor/post/g;Lcom/sina/sinalivesdk/refactor/post/f;)V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/e;->h:Ljava/util/concurrent/locks/Lock;

    iput-boolean v5, p0, Lcom/sina/sinalivesdk/refactor/post/e;->j:Z

    iput-object p2, p0, Lcom/sina/sinalivesdk/refactor/post/e;->g:Lcom/sina/sinalivesdk/a/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/e;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/e;->i:Ljava/util/List;

    new-array v0, v7, [Lcom/sina/sinalivesdk/refactor/post/d;

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/e;->f:[Lcom/sina/sinalivesdk/refactor/post/d;

    :goto_0
    if-ge v5, v7, :cond_0

    iget-object v6, p0, Lcom/sina/sinalivesdk/refactor/post/e;->f:[Lcom/sina/sinalivesdk/refactor/post/d;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/post/d;

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/e;->d:Lcom/sina/sinalivesdk/WBIMLiveClient;

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/post/e;->a:Lcom/sina/sinalivesdk/refactor/post/f;

    invoke-virtual {v2}, Lcom/sina/sinalivesdk/refactor/post/f;->e()Lcom/sina/sinalivesdk/refactor/post/g;

    move-result-object v2

    iget-object v3, p0, Lcom/sina/sinalivesdk/refactor/post/e;->a:Lcom/sina/sinalivesdk/refactor/post/f;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/sina/sinalivesdk/refactor/post/d;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/refactor/post/g;Lcom/sina/sinalivesdk/refactor/post/f;Lcom/sina/sinalivesdk/refactor/post/e;I)V

    aput-object v0, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)I
    .locals 7

    const/4 v6, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "can\'t post a null request"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v2, "DMMultiPostRequestThread"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "request thread, start post, request="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->requestInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->isMultiSocket()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v6}, Lcom/sina/sinalivesdk/refactor/post/e;->d(I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iput-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/post/e;->j:Z

    move v2, v1

    :goto_1
    if-ge v2, v6, :cond_4

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sina/sinalivesdk/refactor/post/e;->a(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/e;->e:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/e;->d:Lcom/sina/sinalivesdk/WBIMLiveClient;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getThreadPool()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iget-object v3, p0, Lcom/sina/sinalivesdk/refactor/post/e;->f:[Lcom/sina/sinalivesdk/refactor/post/d;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const-string v0, "DMMultiPostRequestThread"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "start thread, taskCount="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sina/sinalivesdk/refactor/post/e;->d:Lcom/sina/sinalivesdk/WBIMLiveClient;

    invoke-virtual {v4}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getThreadPool()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ThreadPoolExecutor;->getTaskCount()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", activeCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sina/sinalivesdk/refactor/post/e;->d:Lcom/sina/sinalivesdk/WBIMLiveClient;

    invoke-virtual {v4}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getThreadPool()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", poolSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sina/sinalivesdk/refactor/post/e;->d:Lcom/sina/sinalivesdk/WBIMLiveClient;

    invoke-virtual {v4}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getThreadPool()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", largestPoolSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sina/sinalivesdk/refactor/post/e;->d:Lcom/sina/sinalivesdk/WBIMLiveClient;

    invoke-virtual {v4}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getThreadPool()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ThreadPoolExecutor;->getLargestPoolSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "DMMultiPostRequestThread"

    const-string v4, "start thread exception"

    invoke-static {v3, v4, v0}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-direct {p0, v0}, Lcom/sina/sinalivesdk/refactor/post/e;->d(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lcom/sina/sinalivesdk/refactor/post/e;->j:Z

    invoke-direct {p0}, Lcom/sina/sinalivesdk/refactor/post/e;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sina/sinalivesdk/refactor/post/e;->a(Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/post/e;->e:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/post/e;->d:Lcom/sina/sinalivesdk/WBIMLiveClient;

    invoke-virtual {v2}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getThreadPool()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    iget-object v3, p0, Lcom/sina/sinalivesdk/refactor/post/e;->f:[Lcom/sina/sinalivesdk/refactor/post/d;

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/e;->a:Lcom/sina/sinalivesdk/refactor/post/f;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/post/f;->e()Lcom/sina/sinalivesdk/refactor/post/g;

    move-result-object v0

    new-instance v2, Lcom/sina/sinalivesdk/refactor/post/n;

    invoke-direct {v2, p1, v0}, Lcom/sina/sinalivesdk/refactor/post/n;-><init>(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;Lcom/sina/sinalivesdk/refactor/post/g;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/e;->d:Lcom/sina/sinalivesdk/WBIMLiveClient;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getThreadPool()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :try_start_1
    invoke-virtual {v2}, Lcom/sina/sinalivesdk/refactor/post/n;->a()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    const-string v0, "DMMultiPostRequestThread"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request thread, stop post, request="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->requestInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v0, "DMMultiPostRequestThread"

    const-string v2, "multi packing thread interrupted."

    invoke-static {v0, v2}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private a(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/e;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/e;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/e;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/e;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private b()I
    .locals 4

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/e;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/e;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/e;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/e;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    :goto_1
    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/e;->e:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/e;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/e;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private d(I)Z
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "DMMultiPostRequestThread"

    const-string v1, "multiu request thread interrupted."

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-string v0, "DMMultiPostRequestThread"

    const-string v1, "stop run."

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/e;->f:[Lcom/sina/sinalivesdk/refactor/post/d;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/refactor/post/d;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/e;->g:Lcom/sina/sinalivesdk/a/a;

    invoke-interface {v0}, Lcom/sina/sinalivesdk/a/a;->clear()V

    invoke-super {p0}, Lcom/sina/sinalivesdk/refactor/post/i;->a()V

    return-void
.end method

.method public final a(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/post/e;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/e;->f:[Lcom/sina/sinalivesdk/refactor/post/d;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/refactor/post/d;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/e;->f:[Lcom/sina/sinalivesdk/refactor/post/d;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/post/d;->a()V

    :cond_1
    return-void
.end method

.method public final b(I)V
    .locals 3

    const-string v0, "DMMultiPostRequestThread"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request thread, thread["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ended."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/e;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(I)V
    .locals 2

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/e;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/e;->i:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/e;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/e;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final run()V
    .locals 7

    .prologue
    .line 0
    invoke-super {p0}, Lcom/sina/sinalivesdk/refactor/post/i;->run()V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/e;->c:Ljava/lang/Thread;

    const-string v1, "DMMultiPostRequestThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/e;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    const-string v0, "DMMultiPostRequestThread"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "multiu request thread start, id="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    :goto_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/e;->c:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/e;->g:Lcom/sina/sinalivesdk/a/a;

    const-wide/32 v4, 0x1d4c0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v6}, Lcom/sina/sinalivesdk/a/a;->a(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, v0}, Lcom/sina/sinalivesdk/refactor/post/e;->a(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    :cond_0
    const-string v0, "DMMultiPostRequestThread"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "multiu request thread id="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end................."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/e;->g:Lcom/sina/sinalivesdk/a/a;

    invoke-interface {v0}, Lcom/sina/sinalivesdk/a/a;->b()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "DMMultiPostRequestThread"

    const-string v5, "interrupted in run."

    invoke-static {v4, v5, v0}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1000
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/e;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/e;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/e;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v4, p0, Lcom/sina/sinalivesdk/refactor/post/e;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
.end method
