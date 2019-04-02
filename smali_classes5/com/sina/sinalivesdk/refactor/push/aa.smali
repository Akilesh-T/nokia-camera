.class public final Lcom/sina/sinalivesdk/refactor/push/aa;
.super Lcom/sina/sinalivesdk/refactor/push/a;


# instance fields
.field private final a:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/sina/sinalivesdk/refactor/messages/PostData;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/sina/sinalivesdk/refactor/push/d;


# direct methods
.method public constructor <init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/refactor/push/d;Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/WBIMLiveClient;",
            "Lcom/sina/sinalivesdk/refactor/push/d;",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/sina/sinalivesdk/refactor/messages/PostData;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sina/sinalivesdk/refactor/push/a;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;)V

    iput-object p2, p0, Lcom/sina/sinalivesdk/refactor/push/aa;->b:Lcom/sina/sinalivesdk/refactor/push/d;

    iput-object p3, p0, Lcom/sina/sinalivesdk/refactor/push/aa;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/aa;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/aa;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 6

    .prologue
    .line 0
    invoke-super {p0}, Lcom/sina/sinalivesdk/refactor/push/a;->run()V

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/aa;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sina/sinalivesdk/refactor/messages/PostData;

    const-string v0, "PushUploader"

    const-string v1, "MPSUploader uploadQueue.take()"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/sina/sinalivesdk/util/e;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Lcom/sina/sinalivesdk/refactor/messages/PostData;->getRequest()Lcom/sina/sinalivesdk/refactor/messages/PostMessage;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lcom/sina/sinalivesdk/refactor/messages/PostData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/aa;->b:Lcom/sina/sinalivesdk/refactor/push/d;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/d;->i()Lcom/sina/sinalivesdk/refactor/push/w;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/aa;->b:Lcom/sina/sinalivesdk/refactor/push/d;

    .line 1000
    iget-object v0, v0, Lcom/sina/sinalivesdk/refactor/push/d;->c:Lcom/sina/sinalivesdk/refactor/push/m;

    .line 0
    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/aa;->b:Lcom/sina/sinalivesdk/refactor/push/d;

    .line 2000
    iget-object v1, v1, Lcom/sina/sinalivesdk/refactor/push/d;->b:Lcom/sina/sinalivesdk/refactor/push/m;

    .line 0
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/aa;->b:Lcom/sina/sinalivesdk/refactor/push/d;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/d;->i()Lcom/sina/sinalivesdk/refactor/push/w;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sina/sinalivesdk/refactor/push/w;->a(Lcom/sina/sinalivesdk/refactor/messages/PostData;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "PushUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Send Failed, sendresult = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sina/sinalivesdk/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/sina/sinalivesdk/refactor/messages/PostData;->getRequest()Lcom/sina/sinalivesdk/refactor/messages/PostMessage;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Lcom/sina/sinalivesdk/refactor/messages/PostData;->getRequest()Lcom/sina/sinalivesdk/refactor/messages/PostMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->getResponseHelper()Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Lcom/sina/sinalivesdk/refactor/messages/PostData;->getRequest()Lcom/sina/sinalivesdk/refactor/messages/PostMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->getResponseHelper()Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v4}, Lcom/sina/sinalivesdk/refactor/messages/PostData;->getRequest()Lcom/sina/sinalivesdk/refactor/messages/PostMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;->getHeader()Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->getRequestId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;->handleResponse(ILcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/util/HashMap;Lcom/sina/sinalivesdk/refactor/messages/PostData;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/aa;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PushUploader"

    const-string v2, "wait queue failed."

    invoke-static {v1, v2, v0}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
