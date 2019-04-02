.class public final Lcom/sina/sinalivesdk/refactor/push/y;
.super Lcom/sina/sinalivesdk/refactor/push/k;


# instance fields
.field private b:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/sina/sinalivesdk/refactor/push/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/refactor/push/d;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sina/sinalivesdk/refactor/push/k;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/refactor/push/d;)V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/y;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method private a(Lcom/sina/sinalivesdk/refactor/push/b;)V
    .locals 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/sina/sinalivesdk/refactor/push/b;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    const-wide/16 v4, 0x0

    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/sinalivesdk/refactor/push/g;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/g;->f()[B

    move-result-object v7

    invoke-static {v7}, Lcom/sina/sinalivesdk/protobuf/CodedInputStream;->newInstance([B)Lcom/sina/sinalivesdk/protobuf/CodedInputStream;

    move-result-object v7

    invoke-static {v7}, Lcom/sina/sinalivesdk/protobuf/ResponseParser;->parseHeader(Lcom/sina/sinalivesdk/protobuf/CodedInputStream;)Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sina/sinalivesdk/protobuf/ResponseParser;->parseBody(Lcom/sina/sinalivesdk/protobuf/CodedInputStream;Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v9, p0, Lcom/sina/sinalivesdk/refactor/push/y;->d:Lcom/sina/sinalivesdk/WBIMLiveClient;

    invoke-virtual {v9}, Lcom/sina/sinalivesdk/WBIMLiveClient;->authProvider()Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;

    move-result-object v9

    iget-object v10, p0, Lcom/sina/sinalivesdk/refactor/push/y;->a:Lcom/sina/sinalivesdk/refactor/push/d;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/g;->c()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v9, v10, v8, v7, v0}, Lcom/sina/sinalivesdk/refactor/push/a/c;->a(Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;Lcom/sina/sinalivesdk/refactor/push/l;Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/util/HashMap;Z)Lcom/sina/sinalivesdk/refactor/push/a/f;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "PushMessageThread"

    const-string v2, "error in processMessage"

    invoke-static {v1, v2, v0}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_3
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    :try_start_3
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v4

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/sinalivesdk/refactor/push/a/f;

    invoke-interface {v0}, Lcom/sina/sinalivesdk/refactor/push/a/f;->b()V

    invoke-interface {v0}, Lcom/sina/sinalivesdk/refactor/push/a/f;->a()Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->syncVersion()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v0

    move-wide v2, v0

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_1
    move-exception v0

    :try_start_5
    const-string v1, "PushMessageThread"

    const-string v2, "error in processMessage"

    invoke-static {v1, v2, v0}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-super {p0}, Lcom/sina/sinalivesdk/refactor/push/k;->a()V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sina/sinalivesdk/refactor/push/g;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sina/sinalivesdk/refactor/push/b;

    invoke-direct {v0}, Lcom/sina/sinalivesdk/refactor/push/b;-><init>()V

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/sina/sinalivesdk/refactor/push/b;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    :try_start_0
    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/y;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PushMessageThread"

    const-string v2, "putAll message error."

    invoke-static {v1, v2, v0}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final run()V
    .locals 4

    invoke-super {p0}, Lcom/sina/sinalivesdk/refactor/push/k;->run()V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/y;->c:Ljava/lang/Thread;

    const-string v1, "PushMessageThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const-string v0, "PushMessageThread"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "push msg thread start, id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/push/y;->c:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/push/y;->c:Ljava/lang/Thread;

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
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/y;->c:Ljava/lang/Thread;

    if-ne v0, v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/y;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/sinalivesdk/refactor/push/b;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/sina/sinalivesdk/refactor/push/y;->a(Lcom/sina/sinalivesdk/refactor/push/b;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "PushMessageThread"

    const-string v1, "push msg thread interrupted."

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "PushMessageThread"

    const-string v1, "push msg thread, end......................."

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
