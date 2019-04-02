.class final Lcom/sina/sinalivesdk/refactor/push/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack",
        "<",
        "Lcom/sina/sinalivesdk/models/DispatchModel;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/sina/sinalivesdk/refactor/push/t;


# direct methods
.method constructor <init>(Lcom/sina/sinalivesdk/refactor/push/t;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/push/u;->a:Lcom/sina/sinalivesdk/refactor/push/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "PushConnectState"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "syncConnectAddress error, code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", desc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/u;->a:Lcom/sina/sinalivesdk/refactor/push/t;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/push/t;->a(Lcom/sina/sinalivesdk/refactor/push/t;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 0
    check-cast p1, Lcom/sina/sinalivesdk/models/DispatchModel;

    .line 1000
    const-string v0, "DST"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "syncAddress success:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/models/DispatchModel;->getServer_address()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/u;->a:Lcom/sina/sinalivesdk/refactor/push/t;

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/models/DispatchModel;->getServer_address()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/refactor/push/t;->a(Lcom/sina/sinalivesdk/refactor/push/t;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/u;->a:Lcom/sina/sinalivesdk/refactor/push/t;

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/u;->a:Lcom/sina/sinalivesdk/refactor/push/t;

    invoke-static {v1}, Lcom/sina/sinalivesdk/refactor/push/t;->b(Lcom/sina/sinalivesdk/refactor/push/t;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/refactor/push/t;->a(Lcom/sina/sinalivesdk/refactor/push/t;I)I

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/u;->a:Lcom/sina/sinalivesdk/refactor/push/t;

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/models/DispatchModel;->getExpired_time()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/sina/sinalivesdk/refactor/push/t;->a(Lcom/sina/sinalivesdk/refactor/push/t;J)J

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/u;->a:Lcom/sina/sinalivesdk/refactor/push/t;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/sina/sinalivesdk/refactor/push/t;->b(Lcom/sina/sinalivesdk/refactor/push/t;J)J

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/u;->a:Lcom/sina/sinalivesdk/refactor/push/t;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/push/t;->a(Lcom/sina/sinalivesdk/refactor/push/t;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 0
    return-void
.end method
