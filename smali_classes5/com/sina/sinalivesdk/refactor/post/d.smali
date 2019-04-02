.class public final Lcom/sina/sinalivesdk/refactor/post/d;
.super Lcom/sina/sinalivesdk/refactor/post/i;


# instance fields
.field private e:Lcom/sina/sinalivesdk/refactor/post/e;

.field private f:I


# direct methods
.method public constructor <init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/refactor/post/g;Lcom/sina/sinalivesdk/refactor/post/f;Lcom/sina/sinalivesdk/refactor/post/e;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/WBIMLiveClient;",
            "Lcom/sina/sinalivesdk/refactor/post/g",
            "<*>;",
            "Lcom/sina/sinalivesdk/refactor/post/f;",
            "Lcom/sina/sinalivesdk/refactor/post/e;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/sina/sinalivesdk/refactor/post/i;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/refactor/post/g;Lcom/sina/sinalivesdk/refactor/post/f;)V

    iput-object p4, p0, Lcom/sina/sinalivesdk/refactor/post/d;->e:Lcom/sina/sinalivesdk/refactor/post/e;

    iput p5, p0, Lcom/sina/sinalivesdk/refactor/post/d;->f:I

    const-string v0, "DMMultiPostDataThread"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "multi send thread["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sina/sinalivesdk/refactor/post/d;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], mQueue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/post/d;->b:Lcom/sina/sinalivesdk/refactor/post/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 0
    invoke-super {p0}, Lcom/sina/sinalivesdk/refactor/post/i;->run()V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/d;->c:Ljava/lang/Thread;

    const-string v1, "DMMultiPostDataThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const-string v0, "DMMultiPostDataThread"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "multi send thread["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sina/sinalivesdk/refactor/post/d;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] start, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/post/d;->c:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/post/d;->c:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/d;->c:Ljava/lang/Thread;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/d;->b:Lcom/sina/sinalivesdk/refactor/post/g;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/post/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/sinalivesdk/refactor/messages/PostData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/messages/PostData;->getRequest()Lcom/sina/sinalivesdk/refactor/messages/PostMessage;

    move-result-object v2

    sget-boolean v3, Lcom/sina/sinalivesdk/util/e;->a:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/messages/PostData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    :cond_1
    const-string v2, "DMMultiPostDataThread"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "multi send thread["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/sina/sinalivesdk/refactor/post/d;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], postMessage, tid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->tid:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    sget-object v2, Lcom/sina/sinalivesdk/refactor/post/c;->a:Lcom/sina/sinalivesdk/refactor/post/a;

    .line 1000
    iget-wide v4, v0, Lcom/sina/sinalivesdk/refactor/messages/PostData;->tid:J

    invoke-virtual {v2, v4, v5}, Lcom/sina/sinalivesdk/refactor/post/a;->a(J)Lcom/sina/sinalivesdk/refactor/post/l;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sina/sinalivesdk/refactor/post/l;->a(Lcom/sina/sinalivesdk/refactor/messages/PostData;)I

    .line 0
    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/messages/PostData;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/d;->e:Lcom/sina/sinalivesdk/refactor/post/e;

    iget v2, p0, Lcom/sina/sinalivesdk/refactor/post/d;->f:I

    invoke-virtual {v0, v2}, Lcom/sina/sinalivesdk/refactor/post/e;->a(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/d;->e:Lcom/sina/sinalivesdk/refactor/post/e;

    iget v1, p0, Lcom/sina/sinalivesdk/refactor/post/d;->f:I

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/post/e;->c(I)V

    const-string v0, "DMMultiPostDataThread"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "multi send thread["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sina/sinalivesdk/refactor/post/d;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], end......................."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/d;->e:Lcom/sina/sinalivesdk/refactor/post/e;

    iget v1, p0, Lcom/sina/sinalivesdk/refactor/post/d;->f:I

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/post/e;->b(I)V

    return-void
.end method
