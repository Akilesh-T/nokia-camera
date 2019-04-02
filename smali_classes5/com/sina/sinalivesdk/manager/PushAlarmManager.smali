.class public Lcom/sina/sinalivesdk/manager/PushAlarmManager;
.super Ljava/lang/Object;


# static fields
.field public static final ALARM_TYPE_LIVE_HEARTBEAT:I = 0x3

.field public static final HEARTBEAT_ALARM_ACTION_PREFIX:Ljava/lang/String; = "com.sina.sinalivesdk.action.heartbeat."


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/sina/sinalivesdk/WBIMLiveClient;

.field private c:Landroid/app/AlarmManager;

.field private d:Lcom/sina/sinalivesdk/manager/PushAlarmManager$AlarmReceiver;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->e:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->f:Landroid/util/SparseArray;

    iput-boolean v2, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->g:Z

    iput-object p2, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->b:Lcom/sina/sinalivesdk/WBIMLiveClient;

    iget-object v0, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->c:Landroid/app/AlarmManager;

    .line 1000
    new-instance v0, Lcom/sina/sinalivesdk/manager/PushAlarmManager$AlarmReceiver;

    invoke-direct {v0, p0, v2}, Lcom/sina/sinalivesdk/manager/PushAlarmManager$AlarmReceiver;-><init>(Lcom/sina/sinalivesdk/manager/PushAlarmManager;B)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->d:Lcom/sina/sinalivesdk/manager/PushAlarmManager$AlarmReceiver;

    .line 0
    return-void
.end method

.method static synthetic a(Lcom/sina/sinalivesdk/manager/PushAlarmManager;)Lcom/sina/sinalivesdk/WBIMLiveClient;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->b:Lcom/sina/sinalivesdk/WBIMLiveClient;

    return-object v0
.end method

.method private a()V
    .locals 6

    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Alarm:[all="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->e:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->e:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->e:Ljava/util/HashMap;

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "PushAlarmManager"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancleAlarm(I)V
    .locals 4

    iget-object v1, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->e:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->c:Landroid/app/AlarmManager;

    invoke-virtual {v2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :goto_0
    invoke-direct {p0}, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->a()V

    monitor-exit v1

    return-void

    :cond_1
    const-string v0, "PushAlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cancleAlarm[type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] not get PendingIntent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancleAllAlarm()V
    .locals 4

    iget-object v1, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->e:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->c:Landroid/app/AlarmManager;

    invoke-virtual {v3, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->a()V

    iget-object v0, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public containAlarm(I)Z
    .locals 5

    iget-object v1, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->e:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->a()V

    iget-object v0, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "PushAlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "containAlarm function is invoked! result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "PushAlarmManager"

    const-string v2, "containAlarm function is invoked! result:false"

    invoke-static {v0, v2}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIntervalByType(I)J
    .locals 3

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->f:Landroid/util/SparseArray;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public registerAlarm(IJJ)V
    .locals 6

    iget-object v1, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->e:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->f:Landroid/util/SparseArray;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->a:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v2, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->a()V

    :cond_0
    iget-object v2, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->c:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p4, p5, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    monitor-exit v1

    :goto_1
    return-void

    :pswitch_0
    const-string v0, "PushAlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "register alarm: action = com.sina.sinalivesdk.action.heartbeat."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/sina/sinalivesdk/util/Constants;->CURRENT_APP_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "com.sina.sinalivesdk.action.heartbeat."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/sina/sinalivesdk/util/Constants;->CURRENT_APP_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public registerAlarmReceiver(Ljava/lang/String;)V
    .locals 3

    const-string v0, "PushAlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "register alarmReceiver: action = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->g:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->d:Lcom/sina/sinalivesdk/manager/PushAlarmManager$AlarmReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v1, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->e:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Alarm:[all="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->e:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";type="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->e:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unRegisterAlarmReceiver()V
    .locals 2

    const-string v0, "PushAlarmManager"

    const-string v1, "unregister alarmReceiver"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->d:Lcom/sina/sinalivesdk/manager/PushAlarmManager$AlarmReceiver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->g:Z

    iget-object v0, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->d:Lcom/sina/sinalivesdk/manager/PushAlarmManager$AlarmReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
