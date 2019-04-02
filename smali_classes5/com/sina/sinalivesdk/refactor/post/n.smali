.class final Lcom/sina/sinalivesdk/refactor/post/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/sina/sinalivesdk/refactor/messages/PostMessage;

.field private b:Lcom/sina/sinalivesdk/refactor/post/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sina/sinalivesdk/refactor/post/g",
            "<",
            "Lcom/sina/sinalivesdk/refactor/messages/PostData;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;Lcom/sina/sinalivesdk/refactor/post/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/refactor/messages/PostMessage;",
            "Lcom/sina/sinalivesdk/refactor/post/g",
            "<",
            "Lcom/sina/sinalivesdk/refactor/messages/PostData;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/post/n;->a:Lcom/sina/sinalivesdk/refactor/messages/PostMessage;

    iput-object p2, p0, Lcom/sina/sinalivesdk/refactor/post/n;->b:Lcom/sina/sinalivesdk/refactor/post/g;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/n;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/n;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/n;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/n;->a:Lcom/sina/sinalivesdk/refactor/messages/PostMessage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->build(Z)Lcom/sina/sinalivesdk/refactor/messages/PostData;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/n;->b:Lcom/sina/sinalivesdk/refactor/post/g;

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/post/g;->a(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/refactor/messages/PostData;->isFinished()Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/n;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/n;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1
.end method
