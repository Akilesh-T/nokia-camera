.class public final Lcom/sina/sinalivesdk/refactor/push/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sina/sinalivesdk/refactor/push/m;


# instance fields
.field private a:Lcom/sina/sinalivesdk/refactor/push/d;

.field private b:Lcom/sina/sinalivesdk/manager/PushAlarmManager;


# direct methods
.method public constructor <init>(Lcom/sina/sinalivesdk/refactor/push/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/push/x;->a:Lcom/sina/sinalivesdk/refactor/push/d;

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/refactor/push/d;->h()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getContext()Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/refactor/push/d;->h()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getAlarmManager()Lcom/sina/sinalivesdk/manager/PushAlarmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/x;->b:Lcom/sina/sinalivesdk/manager/PushAlarmManager;

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/x;->a:Lcom/sina/sinalivesdk/refactor/push/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/x;->a:Lcom/sina/sinalivesdk/refactor/push/d;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/d;->l()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 8

    .prologue
    const/16 v6, 0xc

    const/4 v7, 0x3

    .line 0
    :try_start_0
    const-string v0, "DST"

    const-string v1, "onConnetct"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/x;->a:Lcom/sina/sinalivesdk/refactor/push/d;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/d;->k()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/x;->a:Lcom/sina/sinalivesdk/refactor/push/d;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/d;->j()J

    move-result-wide v2

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/x;->b:Lcom/sina/sinalivesdk/manager/PushAlarmManager;

    const/4 v1, 0x3

    add-long/2addr v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->registerAlarm(IJJ)V

    :cond_0
    const-string v0, "PushDataState"

    const-string v1, "\u5faa\u73af\u8bfb\u53d6\u957f\u8fde\u63a5\u6570\u636e\u5e76\u8fdb\u884c\u89e3\u6790"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/x;->a:Lcom/sina/sinalivesdk/refactor/push/d;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/d;->i()Lcom/sina/sinalivesdk/refactor/push/w;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "PushDataState"

    const-string v1, "\u6536\u5230\u957f\u8fde\u63a5\u6570\u636e\u524d..."

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/x;->a:Lcom/sina/sinalivesdk/refactor/push/d;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/d;->i()Lcom/sina/sinalivesdk/refactor/push/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/w;->a()[B

    move-result-object v0

    const-string v1, "PushDataState"

    const-string v2, "\u6536\u5230\u957f\u8fde\u63a5\u6570\u636e\u540e..."

    invoke-static {v1, v2}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->onMessageCome([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/x;->b:Lcom/sina/sinalivesdk/manager/PushAlarmManager;

    invoke-virtual {v1, v7}, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->cancleAlarm(I)V

    invoke-direct {p0}, Lcom/sina/sinalivesdk/refactor/push/x;->b()V

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/x;->b:Lcom/sina/sinalivesdk/manager/PushAlarmManager;

    invoke-virtual {v0, v7}, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->cancleAlarm(I)V

    invoke-direct {p0}, Lcom/sina/sinalivesdk/refactor/push/x;->b()V

    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "PushDataState"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PushDataState: IOException, Room Id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sina/sinalivesdk/util/Constants;->CURRENT_ROOM_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sina/sinalivesdk/refactor/push/x;->b()V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/x;->a:Lcom/sina/sinalivesdk/refactor/push/d;

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/x;->a:Lcom/sina/sinalivesdk/refactor/push/d;

    .line 1000
    iget-object v1, v1, Lcom/sina/sinalivesdk/refactor/push/d;->a:Lcom/sina/sinalivesdk/refactor/push/m;

    .line 2000
    iput-object v1, v0, Lcom/sina/sinalivesdk/refactor/push/d;->c:Lcom/sina/sinalivesdk/refactor/push/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/x;->b:Lcom/sina/sinalivesdk/manager/PushAlarmManager;

    invoke-virtual {v0, v7}, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->cancleAlarm(I)V

    invoke-direct {p0}, Lcom/sina/sinalivesdk/refactor/push/x;->b()V

    move v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/x;->b:Lcom/sina/sinalivesdk/manager/PushAlarmManager;

    invoke-virtual {v1, v7}, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->cancleAlarm(I)V

    invoke-direct {p0}, Lcom/sina/sinalivesdk/refactor/push/x;->b()V

    throw v0
.end method
