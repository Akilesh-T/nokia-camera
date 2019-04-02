.class final Lcom/sina/sinalivesdk/refactor/push/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/sina/sinalivesdk/refactor/push/d;


# direct methods
.method constructor <init>(Lcom/sina/sinalivesdk/refactor/push/d;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/push/f;->a:Lcom/sina/sinalivesdk/refactor/push/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "DMPushEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendHeartBeat error, code = "

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

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/f;->a:Lcom/sina/sinalivesdk/refactor/push/d;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/d;->g()V

    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x3

    .line 0
    check-cast p1, Ljava/lang/String;

    .line 1000
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/f;->a:Lcom/sina/sinalivesdk/refactor/push/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sina/sinalivesdk/refactor/push/d;->b(J)V

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/f;->a:Lcom/sina/sinalivesdk/refactor/push/d;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/d;->j()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/f;->a:Lcom/sina/sinalivesdk/refactor/push/d;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/sina/sinalivesdk/refactor/push/d;->a(Lcom/sina/sinalivesdk/refactor/push/d;J)J

    :cond_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/f;->a:Lcom/sina/sinalivesdk/refactor/push/d;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/push/d;->b(Lcom/sina/sinalivesdk/refactor/push/d;)Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getAlarmManager()Lcom/sina/sinalivesdk/manager/PushAlarmManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->cancleAlarm(I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/f;->a:Lcom/sina/sinalivesdk/refactor/push/d;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/push/d;->c(Lcom/sina/sinalivesdk/refactor/push/d;)J

    move-result-wide v4

    add-long/2addr v4, v2

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/f;->a:Lcom/sina/sinalivesdk/refactor/push/d;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/push/d;->b(Lcom/sina/sinalivesdk/refactor/push/d;)Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getAlarmManager()Lcom/sina/sinalivesdk/manager/PushAlarmManager;

    move-result-object v0

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/push/f;->a:Lcom/sina/sinalivesdk/refactor/push/d;

    invoke-static {v2}, Lcom/sina/sinalivesdk/refactor/push/d;->c(Lcom/sina/sinalivesdk/refactor/push/d;)J

    move-result-wide v2

    invoke-virtual/range {v0 .. v5}, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->registerAlarm(IJJ)V

    .line 0
    return-void
.end method
