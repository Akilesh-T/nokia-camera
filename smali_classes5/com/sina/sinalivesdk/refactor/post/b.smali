.class final Lcom/sina/sinalivesdk/refactor/post/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/sina/sinalivesdk/refactor/post/a;


# direct methods
.method constructor <init>(Lcom/sina/sinalivesdk/refactor/post/a;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/post/b;->a:Lcom/sina/sinalivesdk/refactor/post/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/b;->a:Lcom/sina/sinalivesdk/refactor/post/a;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/post/a;->a(Lcom/sina/sinalivesdk/refactor/post/a;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/b;->a:Lcom/sina/sinalivesdk/refactor/post/a;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/post/a;->b(Lcom/sina/sinalivesdk/refactor/post/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/sinalivesdk/refactor/post/l;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sina/sinalivesdk/refactor/post/l;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/b;->a:Lcom/sina/sinalivesdk/refactor/post/a;

    invoke-static {v1}, Lcom/sina/sinalivesdk/refactor/post/a;->a(Lcom/sina/sinalivesdk/refactor/post/a;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/b;->a:Lcom/sina/sinalivesdk/refactor/post/a;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/post/a;->a(Lcom/sina/sinalivesdk/refactor/post/a;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
