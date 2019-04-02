.class final Lcom/sina/sinalivesdk/refactor/push/ad;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/sina/sinalivesdk/refactor/push/ab;


# direct methods
.method public constructor <init>(Lcom/sina/sinalivesdk/refactor/push/ab;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/push/ad;->a:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 0
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ad;->a:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/push/ab;->b(Lcom/sina/sinalivesdk/refactor/push/ab;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "SocketPushTaskRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SocketPushTaskThread mIsRunning"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/push/ad;->a:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-static {v2}, Lcom/sina/sinalivesdk/refactor/push/ab;->b(Lcom/sina/sinalivesdk/refactor/push/ab;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ad;->a:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/push/ab;->c(Lcom/sina/sinalivesdk/refactor/push/ab;)Lcom/sina/sinalivesdk/refactor/push/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ad;->a:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/push/ab;->c(Lcom/sina/sinalivesdk/refactor/push/ab;)Lcom/sina/sinalivesdk/refactor/push/d;

    move-result-object v0

    .line 1000
    iget-object v0, v0, Lcom/sina/sinalivesdk/refactor/push/d;->c:Lcom/sina/sinalivesdk/refactor/push/m;

    invoke-interface {v0}, Lcom/sina/sinalivesdk/refactor/push/m;->a()I

    move-result v0

    .line 0
    const-string v1, "SocketPushTaskRunner"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request result = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ad;->a:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/push/ab;->c(Lcom/sina/sinalivesdk/refactor/push/ab;)Lcom/sina/sinalivesdk/refactor/push/d;

    move-result-object v0

    .line 2000
    iget-object v0, v0, Lcom/sina/sinalivesdk/refactor/push/d;->c:Lcom/sina/sinalivesdk/refactor/push/m;

    .line 0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ad;->a:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/push/ab;->c(Lcom/sina/sinalivesdk/refactor/push/ab;)Lcom/sina/sinalivesdk/refactor/push/d;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/ad;->a:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-static {v1}, Lcom/sina/sinalivesdk/refactor/push/ab;->c(Lcom/sina/sinalivesdk/refactor/push/ab;)Lcom/sina/sinalivesdk/refactor/push/d;

    move-result-object v1

    .line 3000
    iget-object v1, v1, Lcom/sina/sinalivesdk/refactor/push/d;->b:Lcom/sina/sinalivesdk/refactor/push/m;

    .line 4000
    iput-object v1, v0, Lcom/sina/sinalivesdk/refactor/push/d;->c:Lcom/sina/sinalivesdk/refactor/push/m;

    .line 0
    const-string v0, "SocketPushTaskRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SocketPushTaskThread status: running. state"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/push/ad;->a:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-static {v2}, Lcom/sina/sinalivesdk/refactor/push/ab;->c(Lcom/sina/sinalivesdk/refactor/push/ab;)Lcom/sina/sinalivesdk/refactor/push/d;

    move-result-object v2

    .line 5000
    iget-object v2, v2, Lcom/sina/sinalivesdk/refactor/push/d;->c:Lcom/sina/sinalivesdk/refactor/push/m;

    .line 0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ad;->a:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/push/ab;->c(Lcom/sina/sinalivesdk/refactor/push/ab;)Lcom/sina/sinalivesdk/refactor/push/d;

    move-result-object v0

    .line 6000
    iget-object v0, v0, Lcom/sina/sinalivesdk/refactor/push/d;->c:Lcom/sina/sinalivesdk/refactor/push/m;

    .line 0
    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/ad;->a:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-static {v1}, Lcom/sina/sinalivesdk/refactor/push/ab;->c(Lcom/sina/sinalivesdk/refactor/push/ab;)Lcom/sina/sinalivesdk/refactor/push/d;

    move-result-object v1

    .line 7000
    iget-object v1, v1, Lcom/sina/sinalivesdk/refactor/push/d;->b:Lcom/sina/sinalivesdk/refactor/push/m;

    .line 0
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ad;->a:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/push/ab;->a(Lcom/sina/sinalivesdk/refactor/push/ab;)Lcom/sina/sinalivesdk/interfaces/WBIMLiveConnListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ad;->a:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/push/ab;->a(Lcom/sina/sinalivesdk/refactor/push/ab;)Lcom/sina/sinalivesdk/interfaces/WBIMLiveConnListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sina/sinalivesdk/interfaces/WBIMLiveConnListener;->onConnected()V

    :cond_1
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ad;->a:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/push/ab;->d(Lcom/sina/sinalivesdk/refactor/push/ab;)Lcom/sina/sinalivesdk/interfaces/WBIMLiveSocketConetListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ad;->a:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/push/ab;->d(Lcom/sina/sinalivesdk/refactor/push/ab;)Lcom/sina/sinalivesdk/interfaces/WBIMLiveSocketConetListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sina/sinalivesdk/interfaces/WBIMLiveSocketConetListener;->onConnectSuccess()V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ad;->a:Lcom/sina/sinalivesdk/refactor/push/ab;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/refactor/push/ab;->a(Lcom/sina/sinalivesdk/refactor/push/ab;Lcom/sina/sinalivesdk/interfaces/WBIMLiveSocketConetListener;)Lcom/sina/sinalivesdk/interfaces/WBIMLiveSocketConetListener;

    :cond_2
    const-string v0, "SocketPushTaskRunner"

    const-string v1, "SocketPushTaskThread status: running. state is Datastate set attempts=0"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "SocketPushTaskRunner"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PushTaskRunner ex: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sina/sinalivesdk/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "SocketPushTaskRunner"

    const-string v1, "resetThreadStatus"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ad;->a:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/push/ab;->e(Lcom/sina/sinalivesdk/refactor/push/ab;)V

    :goto_1
    return-void

    :cond_3
    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    :try_start_2
    const-string v0, "SocketPushTaskRunner"

    const-string v1, "SocketPushTaskRunner: connect failed"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ad;->a:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/push/ab;->d(Lcom/sina/sinalivesdk/refactor/push/ab;)Lcom/sina/sinalivesdk/interfaces/WBIMLiveSocketConetListener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ad;->a:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/push/ab;->d(Lcom/sina/sinalivesdk/refactor/push/ab;)Lcom/sina/sinalivesdk/interfaces/WBIMLiveSocketConetListener;

    move-result-object v0

    const-string v1, "Connect Failed"

    invoke-interface {v0, v1}, Lcom/sina/sinalivesdk/interfaces/WBIMLiveSocketConetListener;->onConnectFail(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ad;->a:Lcom/sina/sinalivesdk/refactor/push/ab;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/refactor/push/ab;->a(Lcom/sina/sinalivesdk/refactor/push/ab;Lcom/sina/sinalivesdk/interfaces/WBIMLiveSocketConetListener;)Lcom/sina/sinalivesdk/interfaces/WBIMLiveSocketConetListener;

    :cond_4
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ad;->a:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/ab;->c()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SocketPushTaskRunner"

    const-string v2, "resetThreadStatus"

    invoke-static {v1, v2}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/ad;->a:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-static {v1}, Lcom/sina/sinalivesdk/refactor/push/ab;->e(Lcom/sina/sinalivesdk/refactor/push/ab;)V

    throw v0

    :cond_5
    const/16 v1, 0xc

    if-ne v0, v1, :cond_6

    :try_start_3
    const-string v0, "SocketPushTaskRunner"

    const-string v1, "SocketPushTaskRunner: IO Exception"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ad;->a:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/ab;->c()V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ad;->a:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/push/ab;->a(Lcom/sina/sinalivesdk/refactor/push/ab;)Lcom/sina/sinalivesdk/interfaces/WBIMLiveConnListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ad;->a:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/ab;->h()V

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x9

    if-ne v0, v1, :cond_7

    const-string v0, "SocketPushTaskRunner"

    const-string v1, "no user when receive msg"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x15

    if-ne v0, v1, :cond_8

    const-string v0, "SocketPushTaskRunner"

    const-string v1, "error when parsing push data"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    const-string v0, "SocketPushTaskRunner"

    const-string v1, "no address yet, sleep for a while"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_9
    const-string v0, "SocketPushTaskRunner"

    const-string v1, "resetThreadStatus"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/ad;->a:Lcom/sina/sinalivesdk/refactor/push/ab;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/push/ab;->e(Lcom/sina/sinalivesdk/refactor/push/ab;)V

    goto/16 :goto_1
.end method
