.class public final Lcom/sina/sinalivesdk/refactor/push/w;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/concurrent/locks/Lock;

.field private b:Lcom/sina/sinalivesdk/refactor/push/j;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/w;->a:Ljava/util/concurrent/locks/Lock;

    iput-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/w;->b:Lcom/sina/sinalivesdk/refactor/push/j;

    iput-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/w;->c:Landroid/content/Context;

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/push/w;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/sina/sinalivesdk/refactor/messages/PostData;)I
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/w;->b:Lcom/sina/sinalivesdk/refactor/push/j;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/w;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p1}, Lcom/sina/sinalivesdk/refactor/messages/PostData;->getBuffer()[B

    move-result-object v1

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/push/w;->b:Lcom/sina/sinalivesdk/refactor/push/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/w;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/w;->b:Lcom/sina/sinalivesdk/refactor/push/j;

    iget-wide v2, p1, Lcom/sina/sinalivesdk/refactor/messages/PostData;->tid:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/sina/sinalivesdk/refactor/push/j;->a([BJ)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/w;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/w;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final a(Lcom/sina/sinalivesdk/refactor/services/f;)V
    .locals 2

    new-instance v0, Lcom/sina/sinalivesdk/refactor/push/j;

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/w;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/sina/sinalivesdk/refactor/push/j;-><init>(Landroid/content/Context;Lcom/sina/sinalivesdk/refactor/services/f;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/w;->b:Lcom/sina/sinalivesdk/refactor/push/j;

    return-void
.end method

.method public final a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/w;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/w;->b:Lcom/sina/sinalivesdk/refactor/push/j;

    if-eqz v0, :cond_0

    const-string v0, "PushConnection"

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

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/w;->b:Lcom/sina/sinalivesdk/refactor/push/j;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/j;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/w;->b:Lcom/sina/sinalivesdk/refactor/push/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/w;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/w;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final a()[B
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/w;->b:Lcom/sina/sinalivesdk/refactor/push/j;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/j;->a()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/w;->b:Lcom/sina/sinalivesdk/refactor/push/j;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/j;->b()[B

    move-result-object v0

    return-object v0
.end method
