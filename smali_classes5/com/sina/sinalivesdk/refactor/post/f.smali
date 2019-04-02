.class public final Lcom/sina/sinalivesdk/refactor/post/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/sina/sinalivesdk/WBIMLiveClient;

.field private b:Lcom/sina/sinalivesdk/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sina/sinalivesdk/a/a",
            "<",
            "Lcom/sina/sinalivesdk/refactor/messages/PostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/sina/sinalivesdk/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sina/sinalivesdk/a/a",
            "<",
            "Lcom/sina/sinalivesdk/refactor/messages/PostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/sina/sinalivesdk/refactor/post/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sina/sinalivesdk/refactor/post/g",
            "<",
            "Lcom/sina/sinalivesdk/refactor/messages/PostData;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/sina/sinalivesdk/refactor/post/j;

.field private f:Lcom/sina/sinalivesdk/refactor/post/e;


# direct methods
.method public constructor <init>(Lcom/sina/sinalivesdk/WBIMLiveClient;)V
    .locals 3

    const/16 v1, 0x40

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/post/f;->a:Lcom/sina/sinalivesdk/WBIMLiveClient;

    new-instance v0, Lcom/sina/sinalivesdk/a/b;

    invoke-direct {v0}, Lcom/sina/sinalivesdk/a/b;-><init>()V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/f;->b:Lcom/sina/sinalivesdk/a/a;

    new-instance v0, Lcom/sina/sinalivesdk/a/b;

    invoke-direct {v0, v1}, Lcom/sina/sinalivesdk/a/b;-><init>(I)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/f;->c:Lcom/sina/sinalivesdk/a/a;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/post/g;

    invoke-direct {v0, v1}, Lcom/sina/sinalivesdk/refactor/post/g;-><init>(I)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/f;->d:Lcom/sina/sinalivesdk/refactor/post/g;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/post/j;

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/f;->a:Lcom/sina/sinalivesdk/WBIMLiveClient;

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/post/f;->b:Lcom/sina/sinalivesdk/a/a;

    invoke-direct {v0, v1, v2, p0}, Lcom/sina/sinalivesdk/refactor/post/j;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/a/a;Lcom/sina/sinalivesdk/refactor/post/f;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/f;->e:Lcom/sina/sinalivesdk/refactor/post/j;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/post/e;

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/f;->a:Lcom/sina/sinalivesdk/WBIMLiveClient;

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/post/f;->c:Lcom/sina/sinalivesdk/a/a;

    invoke-direct {v0, v1, v2, p0}, Lcom/sina/sinalivesdk/refactor/post/e;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/a/a;Lcom/sina/sinalivesdk/refactor/post/f;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/f;->f:Lcom/sina/sinalivesdk/refactor/post/e;

    return-void
.end method


# virtual methods
.method public final a(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)V
    .locals 3

    .prologue
    .line 0
    .line 2000
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->getPreference()Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;

    move-result-object v0

    sget-object v1, Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;->MultiQueuePreferred:Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;->MultiQueueOnly:Lcom/sina/sinalivesdk/refactor/messages/PostMessage$QueuePreference;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 0
    :goto_0
    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/f;->c:Lcom/sina/sinalivesdk/a/a;

    invoke-interface {v0, p1}, Lcom/sina/sinalivesdk/a/a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    .line 2000
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 0
    :catch_0
    move-exception v0

    const-string v1, "DMPostEngine"

    const-string v2, "put to single queue interrupted."

    invoke-static {v1, v2, v0}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/f;->b:Lcom/sina/sinalivesdk/a/a;

    invoke-interface {v0, p1}, Lcom/sina/sinalivesdk/a/a;->a(Ljava/lang/Object;)V

    const-string v0, "DMPostEngine"

    const-string v1, "put to multi queue interrupted."

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "DMPostEngine"

    const-string v2, "put to multi queue interrupted."

    invoke-static {v1, v2, v0}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/f;->e:Lcom/sina/sinalivesdk/refactor/post/j;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/post/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/f;->f:Lcom/sina/sinalivesdk/refactor/post/e;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/post/e;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    const-string v0, "DMPostEngine"

    const-string v1, "post engine start ---------------"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/f;->a:Lcom/sina/sinalivesdk/WBIMLiveClient;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getThreadPool()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/f;->e:Lcom/sina/sinalivesdk/refactor/post/j;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/f;->a:Lcom/sina/sinalivesdk/WBIMLiveClient;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getThreadPool()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/f;->f:Lcom/sina/sinalivesdk/refactor/post/e;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 0
    const-string v0, "DMPostEngine"

    const-string v1, "post engine stop ---------------"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/f;->e:Lcom/sina/sinalivesdk/refactor/post/j;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/post/j;->a()V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/f;->f:Lcom/sina/sinalivesdk/refactor/post/e;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/post/e;->a()V

    .line 1000
    sget-object v0, Lcom/sina/sinalivesdk/refactor/post/c;->a:Lcom/sina/sinalivesdk/refactor/post/a;

    .line 0
    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/post/a;->a()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/f;->c:Lcom/sina/sinalivesdk/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/f;->c:Lcom/sina/sinalivesdk/a/a;

    invoke-interface {v0}, Lcom/sina/sinalivesdk/a/a;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/f;->b:Lcom/sina/sinalivesdk/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/f;->b:Lcom/sina/sinalivesdk/a/a;

    invoke-interface {v0}, Lcom/sina/sinalivesdk/a/a;->clear()V

    :cond_1
    return-void
.end method

.method public final e()Lcom/sina/sinalivesdk/refactor/post/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sina/sinalivesdk/refactor/post/g",
            "<",
            "Lcom/sina/sinalivesdk/refactor/messages/PostData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/f;->d:Lcom/sina/sinalivesdk/refactor/post/g;

    return-object v0
.end method
