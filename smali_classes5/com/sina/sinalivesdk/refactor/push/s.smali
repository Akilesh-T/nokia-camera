.class public final Lcom/sina/sinalivesdk/refactor/push/s;
.super Lcom/sina/sinalivesdk/refactor/push/k;


# instance fields
.field private final b:Lcom/sina/sinalivesdk/refactor/push/i;


# direct methods
.method public constructor <init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/refactor/push/d;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sina/sinalivesdk/refactor/push/k;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/refactor/push/d;)V

    new-instance v0, Lcom/sina/sinalivesdk/refactor/push/i;

    invoke-direct {v0, p2}, Lcom/sina/sinalivesdk/refactor/push/i;-><init>(Lcom/sina/sinalivesdk/refactor/push/d;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/s;->b:Lcom/sina/sinalivesdk/refactor/push/i;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/s;->b:Lcom/sina/sinalivesdk/refactor/push/i;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/i;->a()V

    invoke-super {p0}, Lcom/sina/sinalivesdk/refactor/push/k;->a()V

    return-void
.end method

.method public final a(Lcom/sina/sinalivesdk/refactor/push/b;)V
    .locals 10

    .prologue
    .line 0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/s;->b:Lcom/sina/sinalivesdk/refactor/push/i;

    invoke-virtual {v0, p1}, Lcom/sina/sinalivesdk/refactor/push/i;->a(Lcom/sina/sinalivesdk/refactor/push/b;)Ljava/util/List;

    move-result-object v1

    .line 1000
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "PushBufferThread"

    const-string v2, "PushBuffer receiveSequenceMessage >>1"

    invoke-static {v0, v2}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "ACK: {"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/sinalivesdk/refactor/push/g;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/g;->c()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/g;->b()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "hcl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "msg tid:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/g;->a()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/g;->e()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    new-instance v5, Lcom/sina/sinalivesdk/refactor/messages/AckMessage$AckInfo;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/g;->a()J

    move-result-wide v8

    invoke-direct {v5, v8, v9, v6, v7}, Lcom/sina/sinalivesdk/refactor/messages/AckMessage$AckInfo;-><init>(JJ)V

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/g;->d()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sina/sinalivesdk/refactor/messages/AckMessage$AckInfo;->setIsSpread(Z)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/g;->g()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/g;->a()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sina/sinalivesdk/refactor/push/g;->a(Z)V

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    const-string v0, "PushBufferThread"

    const-string v4, "PushBuffer receiveSequenceMessage >>2"

    invoke-static {v0, v4}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/16 v4, 0x7d

    invoke-virtual {v3, v0, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const-string v0, "PushBufferThread"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ACK Str--------------->"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/s;->a:Lcom/sina/sinalivesdk/refactor/push/d;

    invoke-virtual {v0, v2}, Lcom/sina/sinalivesdk/refactor/push/d;->a(Ljava/util/List;)I

    :cond_4
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/s;->a:Lcom/sina/sinalivesdk/refactor/push/d;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/d;->f()Lcom/sina/sinalivesdk/refactor/push/y;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/push/y;->a(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public final run()V
    .locals 0

    invoke-super {p0}, Lcom/sina/sinalivesdk/refactor/push/k;->run()V

    return-void
.end method
