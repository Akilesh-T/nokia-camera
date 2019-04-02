.class public final Lcom/sina/sinalivesdk/refactor/post/j;
.super Lcom/sina/sinalivesdk/refactor/post/i;


# instance fields
.field private e:Lcom/sina/sinalivesdk/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sina/sinalivesdk/a/a",
            "<",
            "Lcom/sina/sinalivesdk/refactor/messages/PostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private volatile f:Z


# direct methods
.method public constructor <init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/a/a;Lcom/sina/sinalivesdk/refactor/post/f;)V
    .locals 1
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

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Lcom/sina/sinalivesdk/refactor/post/i;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/refactor/post/g;Lcom/sina/sinalivesdk/refactor/post/f;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/post/j;->f:Z

    iput-object p2, p0, Lcom/sina/sinalivesdk/refactor/post/j;->e:Lcom/sina/sinalivesdk/a/a;

    return-void
.end method

.method private static a(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)I
    .locals 6

    .prologue
    .line 0
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "can\'t post a null request"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->build(Z)Lcom/sina/sinalivesdk/refactor/messages/PostData;

    move-result-object v0

    sget-boolean v1, Lcom/sina/sinalivesdk/util/e;->a:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/messages/PostData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "DMSinglePostThread"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->requestInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , tid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->tid:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " started."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    sget-object v1, Lcom/sina/sinalivesdk/refactor/post/c;->a:Lcom/sina/sinalivesdk/refactor/post/a;

    .line 0
    iget-wide v2, v0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->tid:J

    invoke-virtual {v1, v2, v3}, Lcom/sina/sinalivesdk/refactor/post/a;->a(J)Lcom/sina/sinalivesdk/refactor/post/l;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sina/sinalivesdk/refactor/post/l;->a(Lcom/sina/sinalivesdk/refactor/messages/PostData;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-string v0, "DMSinglePostThread"

    const-string v1, "stop run."

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/j;->e:Lcom/sina/sinalivesdk/a/a;

    invoke-interface {v0}, Lcom/sina/sinalivesdk/a/a;->clear()V

    invoke-super {p0}, Lcom/sina/sinalivesdk/refactor/post/i;->a()V

    return-void
.end method

.method public final run()V
    .locals 8

    const/16 v2, 0x64

    invoke-super {p0}, Lcom/sina/sinalivesdk/refactor/post/i;->run()V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/j;->c:Ljava/lang/Thread;

    const-string v1, "DMSinglePostThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/j;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    const-string v0, "DMSinglePostThread"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "single post thread start, id="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/j;->c:Ljava/lang/Thread;

    if-ne v0, v3, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/j;->e:Lcom/sina/sinalivesdk/a/a;

    invoke-interface {v0}, Lcom/sina/sinalivesdk/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->isWaiting()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/post/j;->a(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)I

    move-result v1

    :cond_1
    :goto_1
    const/4 v6, 0x3

    if-ne v1, v6, :cond_4

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sina/sinalivesdk/refactor/post/j;->f:Z

    :goto_2
    iget-boolean v6, p0, Lcom/sina/sinalivesdk/refactor/post/j;->f:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v6, :cond_2

    const-wide/16 v6, 0xa

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sina/sinalivesdk/refactor/post/j;->f:Z

    move v1, v2

    goto :goto_2

    :cond_2
    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/post/j;->a(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)I

    move-result v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x6

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/j;->e:Lcom/sina/sinalivesdk/a/a;

    invoke-interface {v1}, Lcom/sina/sinalivesdk/a/a;->b()Ljava/lang/Object;

    const-string v1, "DMSinglePostThread"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "request "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->requestInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " removed from queue."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "DMSinglePostThread"

    const-string v2, "requestQueue interrupted."

    invoke-static {v1, v2, v0}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    const-string v0, "DMSinglePostThread"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "single post thread end, id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
