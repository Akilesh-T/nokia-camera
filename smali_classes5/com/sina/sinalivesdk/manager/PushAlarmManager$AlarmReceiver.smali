.class Lcom/sina/sinalivesdk/manager/PushAlarmManager$AlarmReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/sina/sinalivesdk/manager/PushAlarmManager;


# direct methods
.method private constructor <init>(Lcom/sina/sinalivesdk/manager/PushAlarmManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager$AlarmReceiver;->a:Lcom/sina/sinalivesdk/manager/PushAlarmManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sina/sinalivesdk/manager/PushAlarmManager;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sina/sinalivesdk/manager/PushAlarmManager$AlarmReceiver;-><init>(Lcom/sina/sinalivesdk/manager/PushAlarmManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    :try_start_0
    const-string v0, "PushAlarmManager"

    const-string v1, "AlarmReceiver onReceive"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.sina.sinalivesdk.action.heartbeat."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sina/sinalivesdk/util/Constants;->CURRENT_APP_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager$AlarmReceiver;->a:Lcom/sina/sinalivesdk/manager/PushAlarmManager;

    invoke-static {v0}, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->a(Lcom/sina/sinalivesdk/manager/PushAlarmManager;)Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getPushEngine()Lcom/sina/sinalivesdk/refactor/push/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/d;->j()J

    move-result-wide v2

    iget-object v0, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager$AlarmReceiver;->a:Lcom/sina/sinalivesdk/manager/PushAlarmManager;

    invoke-static {v0}, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->a(Lcom/sina/sinalivesdk/manager/PushAlarmManager;)Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getPushEngine()Lcom/sina/sinalivesdk/refactor/push/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/d;->k()V

    iget-object v0, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager$AlarmReceiver;->a:Lcom/sina/sinalivesdk/manager/PushAlarmManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->cancleAlarm(I)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager$AlarmReceiver;->a:Lcom/sina/sinalivesdk/manager/PushAlarmManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->containAlarm(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long v4, v0, v2

    iget-object v0, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager$AlarmReceiver;->a:Lcom/sina/sinalivesdk/manager/PushAlarmManager;

    const/4 v1, 0x3

    invoke-virtual/range {v0 .. v5}, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->registerAlarm(IJJ)V

    const-string v0, "PushAlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "no ALARM_TYPE_HEARTBEAT, add it! heartBeatActiveInteval:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PushAlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AlarmReceiver onReceive err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "action: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sina/sinalivesdk/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
