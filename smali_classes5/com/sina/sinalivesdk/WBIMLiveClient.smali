.class public Lcom/sina/sinalivesdk/WBIMLiveClient;
.super Ljava/lang/Object;


# static fields
.field private static b:I


# instance fields
.field private volatile a:Z

.field private c:Landroid/content/Context;

.field private d:Ljava/util/concurrent/ThreadPoolExecutor;

.field private e:Lcom/sina/sinalivesdk/refactor/push/d;

.field private f:Lcom/sina/sinalivesdk/refactor/post/f;

.field private g:Lcom/sina/sinalivesdk/refactor/services/a;

.field private h:Lcom/sina/sinalivesdk/manager/UserManager;

.field private i:Lcom/sina/sinalivesdk/manager/MsgManager;

.field private j:Lcom/sina/sinalivesdk/manager/ChatRoomManager;

.field private k:Lcom/sina/sinalivesdk/manager/ConnectorManager;

.field private l:Lcom/sina/sinalivesdk/refactor/push/a/c;

.field private m:Lcom/sina/sinalivesdk/refactor/push/a/c;

.field private n:Landroid/net/ConnectivityManager;

.field private o:Lcom/sina/sinalivesdk/manager/PushAlarmManager;

.field private p:Lcom/sina/sinalivesdk/models/UserModel;

.field private q:J

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sina/sinalivesdk/interfaces/WBIMLiveListener;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/sina/sinalivesdk/interfaces/WBIMChatMsgListener;

.field private t:Lcom/sina/sinalivesdk/interfaces/WBIMLiveConnListener;

.field private u:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2710

    sput v0, Lcom/sina/sinalivesdk/WBIMLiveClient;->b:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->g:Lcom/sina/sinalivesdk/refactor/services/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->r:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/sina/sinalivesdk/WBIMLiveClient;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_0
    return-void
.end method

.method private a(J)V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/16 v2, 0xe

    const/4 v8, 0x1

    .line 0
    const-string v0, "DIMClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "service start, uid="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_7

    iget-wide v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->q:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_7

    move v0, v8

    :goto_0
    if-eqz v0, :cond_4

    iput-wide p1, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->q:J

    new-instance v0, Lcom/sina/sinalivesdk/refactor/push/a/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/sina/sinalivesdk/refactor/push/a/c;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;J)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->m:Lcom/sina/sinalivesdk/refactor/push/a/c;

    invoke-direct {p0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->a()V

    .line 4000
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v0, Lcom/sina/sinalivesdk/WBIMLiveClient;->b:I

    int-to-long v4, v0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 0
    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->l:Lcom/sina/sinalivesdk/refactor/push/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->f:Lcom/sina/sinalivesdk/refactor/post/f;

    if-nez v0, :cond_2

    .line 5000
    :cond_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->l:Lcom/sina/sinalivesdk/refactor/push/a/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->f:Lcom/sina/sinalivesdk/refactor/post/f;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lcom/sina/sinalivesdk/refactor/push/a/c;

    iget-wide v2, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->q:J

    invoke-direct {v0, p0, v2, v3}, Lcom/sina/sinalivesdk/refactor/push/a/c;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;J)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->l:Lcom/sina/sinalivesdk/refactor/push/a/c;

    .line 6000
    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->c:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->n:Landroid/net/ConnectivityManager;

    .line 5000
    new-instance v0, Lcom/sina/sinalivesdk/refactor/post/f;

    invoke-direct {v0, p0}, Lcom/sina/sinalivesdk/refactor/post/f;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->f:Lcom/sina/sinalivesdk/refactor/post/f;

    .line 0
    :cond_2
    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->e:Lcom/sina/sinalivesdk/refactor/push/d;

    if-nez v0, :cond_3

    new-instance v0, Lcom/sina/sinalivesdk/refactor/push/d;

    invoke-direct {v0, p0}, Lcom/sina/sinalivesdk/refactor/push/d;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->e:Lcom/sina/sinalivesdk/refactor/push/d;

    .line 7000
    :cond_3
    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->e:Lcom/sina/sinalivesdk/refactor/push/d;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/d;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->e:Lcom/sina/sinalivesdk/refactor/push/d;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/d;->c()V

    move v0, v8

    :goto_1
    iget-object v1, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->f:Lcom/sina/sinalivesdk/refactor/post/f;

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/refactor/post/f;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->f:Lcom/sina/sinalivesdk/refactor/post/f;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/post/f;->c()V

    :goto_2
    invoke-virtual {p0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getAlarmManager()Lcom/sina/sinalivesdk/manager/PushAlarmManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->cancleAlarm(I)V

    .line 0
    if-eqz v8, :cond_4

    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8000
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->e:Lcom/sina/sinalivesdk/refactor/push/d;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/d;->a()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->e:Lcom/sina/sinalivesdk/refactor/push/d;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/d;->b()V

    :cond_5
    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->f:Lcom/sina/sinalivesdk/refactor/post/f;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/post/f;->a()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->f:Lcom/sina/sinalivesdk/refactor/post/f;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/post/f;->b()V

    .line 0
    :cond_6
    return-void

    :cond_7
    move v0, v9

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DIMClient"

    const-string v2, "onReceiveIntent, interrupt exception"

    invoke-static {v1, v2, v0}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_8
    move v8, v0

    goto :goto_2

    :cond_9
    move v0, v9

    goto :goto_1
.end method

.method public static getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;
    .locals 1

    sget-object v0, Lcom/sina/sinalivesdk/a;->a:Lcom/sina/sinalivesdk/WBIMLiveClient;

    return-object v0
.end method


# virtual methods
.method public addMessageListener(Lcom/sina/sinalivesdk/interfaces/WBIMLiveListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public authProvider()Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->g:Lcom/sina/sinalivesdk/refactor/services/a;

    return-object v0
.end method

.method public enableDebugLog(Z)V
    .locals 0

    sput-boolean p1, Lcom/sina/sinalivesdk/util/e;->a:Z

    return-void
.end method

.method public getAlarmManager()Lcom/sina/sinalivesdk/manager/PushAlarmManager;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->o:Lcom/sina/sinalivesdk/manager/PushAlarmManager;

    return-object v0
.end method

.method public getChatMsgListener()Lcom/sina/sinalivesdk/interfaces/WBIMChatMsgListener;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->s:Lcom/sina/sinalivesdk/interfaces/WBIMChatMsgListener;

    return-object v0
.end method

.method public getChatRoomManager()Lcom/sina/sinalivesdk/manager/ChatRoomManager;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->j:Lcom/sina/sinalivesdk/manager/ChatRoomManager;

    return-object v0
.end method

.method public getCommonPrefs()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->l:Lcom/sina/sinalivesdk/refactor/push/a/c;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/a/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getConnListener()Lcom/sina/sinalivesdk/interfaces/WBIMLiveConnListener;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->t:Lcom/sina/sinalivesdk/interfaces/WBIMLiveConnListener;

    return-object v0
.end method

.method public getConnType()I
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x5

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->n:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_0

    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    :goto_1
    return v0

    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getConnectorManager()Lcom/sina/sinalivesdk/manager/ConnectorManager;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->k:Lcom/sina/sinalivesdk/manager/ConnectorManager;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->c:Landroid/content/Context;

    return-object v0
.end method

.method public getMessageListeners()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sina/sinalivesdk/interfaces/WBIMLiveListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->r:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMsgManager()Lcom/sina/sinalivesdk/manager/MsgManager;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->i:Lcom/sina/sinalivesdk/manager/MsgManager;

    return-object v0
.end method

.method public getPostEngine()Lcom/sina/sinalivesdk/refactor/post/f;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->f:Lcom/sina/sinalivesdk/refactor/post/f;

    return-object v0
.end method

.method public getPushEngine()Lcom/sina/sinalivesdk/refactor/push/d;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->e:Lcom/sina/sinalivesdk/refactor/push/d;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.0"

    return-object v0
.end method

.method public getThreadPool()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->h:Lcom/sina/sinalivesdk/manager/UserManager;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/manager/UserManager;->getUid()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUserManager()Lcom/sina/sinalivesdk/manager/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->h:Lcom/sina/sinalivesdk/manager/UserManager;

    return-object v0
.end method

.method public getUserPrefs()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->m:Lcom/sina/sinalivesdk/refactor/push/a/c;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/a/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/sina/sinalivesdk/models/UserModel;Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 0
    iput-object p1, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->p:Lcom/sina/sinalivesdk/models/UserModel;

    iput-object p3, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->u:Landroid/os/Bundle;

    .line 1000
    invoke-static {}, Lcom/sina/sinalivesdk/manager/UserManager;->instance()Lcom/sina/sinalivesdk/manager/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->h:Lcom/sina/sinalivesdk/manager/UserManager;

    new-instance v0, Lcom/sina/sinalivesdk/manager/MsgManager;

    invoke-direct {v0}, Lcom/sina/sinalivesdk/manager/MsgManager;-><init>()V

    iput-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->i:Lcom/sina/sinalivesdk/manager/MsgManager;

    new-instance v0, Lcom/sina/sinalivesdk/manager/ChatRoomManager;

    invoke-direct {v0}, Lcom/sina/sinalivesdk/manager/ChatRoomManager;-><init>()V

    iput-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->j:Lcom/sina/sinalivesdk/manager/ChatRoomManager;

    new-instance v0, Lcom/sina/sinalivesdk/manager/PushAlarmManager;

    iget-object v1, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->c:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sina/sinalivesdk/manager/PushAlarmManager;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->o:Lcom/sina/sinalivesdk/manager/PushAlarmManager;

    new-instance v0, Lcom/sina/sinalivesdk/manager/ConnectorManager;

    invoke-direct {v0}, Lcom/sina/sinalivesdk/manager/ConnectorManager;-><init>()V

    iput-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->k:Lcom/sina/sinalivesdk/manager/ConnectorManager;

    .line 2000
    invoke-static {}, Lcom/sina/sinalivesdk/refactor/push/n;->a()Lcom/sina/sinalivesdk/refactor/push/n;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/push/n;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/sina/sinalivesdk/refactor/post/a;->b()Lcom/sina/sinalivesdk/refactor/post/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/post/a;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/sina/sinalivesdk/util/WBIMLiveLog;->getInstance()Lcom/sina/sinalivesdk/util/WBIMLiveLog;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/util/WBIMLiveLog;->initContext(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->p:Lcom/sina/sinalivesdk/models/UserModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->p:Lcom/sina/sinalivesdk/models/UserModel;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/models/UserModel;->getUid()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->h:Lcom/sina/sinalivesdk/manager/UserManager;

    iget-object v3, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->p:Lcom/sina/sinalivesdk/models/UserModel;

    invoke-virtual {v2, v3}, Lcom/sina/sinalivesdk/manager/UserManager;->setUser(Lcom/sina/sinalivesdk/models/UserModel;)V

    const-string v2, "DST"

    const-string v3, "init provider"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/sina/sinalivesdk/refactor/services/a;

    iget-object v3, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->c:Landroid/content/Context;

    invoke-direct {v2, v3, v0, v1}, Lcom/sina/sinalivesdk/refactor/services/a;-><init>(Landroid/content/Context;J)V

    iput-object v2, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->g:Lcom/sina/sinalivesdk/refactor/services/a;

    iget-object v2, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->g:Lcom/sina/sinalivesdk/refactor/services/a;

    iget-object v3, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sina/sinalivesdk/refactor/services/a;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->u:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->u:Landroid/os/Bundle;

    const-string v3, "wm"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->u:Landroid/os/Bundle;

    const-string v4, "from"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->u:Landroid/os/Bundle;

    const-string v5, "authorization"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->u:Landroid/os/Bundle;

    const-string v6, "appkey"

    const-string v7, "weibo_live_im_appkey"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/sina/sinalivesdk/util/Constants;->CURRENT_APP_KEY:Ljava/lang/String;

    iget-object v5, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->u:Landroid/os/Bundle;

    const-string v6, "need_ssl"

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/sina/sinalivesdk/util/Constants;->NEED_SSL:Z

    iget-object v5, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->u:Landroid/os/Bundle;

    const-string v6, "request_url"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/sina/sinalivesdk/util/Constants;->REQUEST_URL:Ljava/lang/String;

    iget-object v5, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->u:Landroid/os/Bundle;

    const-string v6, "request_port"

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/sina/sinalivesdk/util/Constants;->REQUEST_PORT:I

    iget-object v5, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->u:Landroid/os/Bundle;

    const-string v6, "is_chat_room"

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/sina/sinalivesdk/util/Constants;->IS_CHAT_ROOM:Z

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "hcl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "authorization not null: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->g:Lcom/sina/sinalivesdk/refactor/services/a;

    const-string v6, "authorization"

    invoke-virtual {v5, v6}, Lcom/sina/sinalivesdk/refactor/services/a;->e(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->g:Lcom/sina/sinalivesdk/refactor/services/a;

    invoke-virtual {v5, v4}, Lcom/sina/sinalivesdk/refactor/services/a;->a(Ljava/lang/String;)V

    :goto_0
    iget-object v4, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->g:Lcom/sina/sinalivesdk/refactor/services/a;

    invoke-virtual {v4, v2}, Lcom/sina/sinalivesdk/refactor/services/a;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->g:Lcom/sina/sinalivesdk/refactor/services/a;

    invoke-virtual {v2, v3}, Lcom/sina/sinalivesdk/refactor/services/a;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->o:Lcom/sina/sinalivesdk/manager/PushAlarmManager;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "com.sina.sinalivesdk.action.heartbeat."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/sina/sinalivesdk/util/Constants;->CURRENT_APP_KEY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->registerAlarmReceiver(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->a(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->a:Z

    .line 3000
    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->g:Lcom/sina/sinalivesdk/refactor/services/a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->g:Lcom/sina/sinalivesdk/refactor/services/a;

    invoke-virtual {v1, v0}, Lcom/sina/sinalivesdk/refactor/services/a;->b(Ljava/lang/String;)V

    .line 0
    :cond_1
    return-void

    .line 2000
    :cond_2
    iget-object v4, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->g:Lcom/sina/sinalivesdk/refactor/services/a;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/sina/sinalivesdk/refactor/services/a;->e(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->g:Lcom/sina/sinalivesdk/refactor/services/a;

    iget-object v5, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->p:Lcom/sina/sinalivesdk/models/UserModel;

    invoke-virtual {v5}, Lcom/sina/sinalivesdk/models/UserModel;->getAccess_token()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sina/sinalivesdk/refactor/services/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMessageCome([B)I
    .locals 6

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->p:Lcom/sina/sinalivesdk/models/UserModel;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->q:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->e:Lcom/sina/sinalivesdk/refactor/push/d;

    invoke-virtual {v0, p1}, Lcom/sina/sinalivesdk/refactor/push/d;->a([B)I

    move-result v0

    goto :goto_0
.end method

.method public onSwitchUser(Landroid/content/Context;Lcom/sina/sinalivesdk/models/UserModel;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->a:Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/sina/sinalivesdk/WBIMLiveClient;->init(Landroid/content/Context;Lcom/sina/sinalivesdk/models/UserModel;Landroid/os/Bundle;)V

    return-void
.end method

.method public putRequest(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)V
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->e:Lcom/sina/sinalivesdk/refactor/push/d;

    invoke-virtual {v0, p1}, Lcom/sina/sinalivesdk/refactor/push/d;->a(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)V

    return-void
.end method

.method public removeMessageListener(Lcom/sina/sinalivesdk/interfaces/WBIMLiveListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setChatMsgListener(Lcom/sina/sinalivesdk/interfaces/WBIMChatMsgListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->s:Lcom/sina/sinalivesdk/interfaces/WBIMChatMsgListener;

    return-void
.end method

.method public setChatRoomPort(I)V
    .locals 0

    sput p1, Lcom/sina/sinalivesdk/util/Constants;->REQUEST_PORT:I

    return-void
.end method

.method public setChatRoomRequestUrl(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/sina/sinalivesdk/util/Constants;->REQUEST_URL:Ljava/lang/String;

    return-void
.end method

.method public setConnListener(Lcom/sina/sinalivesdk/interfaces/WBIMLiveConnListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->t:Lcom/sina/sinalivesdk/interfaces/WBIMLiveConnListener;

    return-void
.end method

.method public setIsChatRoomRequest(Z)V
    .locals 0

    sput-boolean p1, Lcom/sina/sinalivesdk/util/Constants;->IS_CHAT_ROOM:Z

    return-void
.end method

.method public stopLiveSdk()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 0
    .line 9000
    iput-boolean v2, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->a:Z

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->f:Lcom/sina/sinalivesdk/refactor/post/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->f:Lcom/sina/sinalivesdk/refactor/post/f;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/post/f;->c()V

    :cond_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->e:Lcom/sina/sinalivesdk/refactor/push/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->e:Lcom/sina/sinalivesdk/refactor/push/d;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/d;->c()V

    :cond_1
    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->o:Lcom/sina/sinalivesdk/manager/PushAlarmManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->o:Lcom/sina/sinalivesdk/manager/PushAlarmManager;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->unRegisterAlarmReceiver()V

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->o:Lcom/sina/sinalivesdk/manager/PushAlarmManager;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->cancleAllAlarm()V

    :cond_2
    invoke-direct {p0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->a()V

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getAlarmManager()Lcom/sina/sinalivesdk/manager/PushAlarmManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->cancleAlarm(I)V

    .line 0
    invoke-static {}, Lcom/sina/sinalivesdk/refactor/post/a;->b()Lcom/sina/sinalivesdk/refactor/post/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/post/a;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/sina/sinalivesdk/refactor/push/n;->a()Lcom/sina/sinalivesdk/refactor/push/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/n;->b()V

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getMessageListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getAlarmManager()Lcom/sina/sinalivesdk/manager/PushAlarmManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->cancleAlarm(I)V

    iput-boolean v2, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->p:Lcom/sina/sinalivesdk/models/UserModel;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->q:J

    return-void
.end method

.method public updateUser(Lcom/sina/sinalivesdk/models/UserModel;)V
    .locals 4

    iput-object p1, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->p:Lcom/sina/sinalivesdk/models/UserModel;

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->h:Lcom/sina/sinalivesdk/manager/UserManager;

    iget-object v1, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->p:Lcom/sina/sinalivesdk/models/UserModel;

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/manager/UserManager;->setUser(Lcom/sina/sinalivesdk/models/UserModel;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->g:Lcom/sina/sinalivesdk/refactor/services/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->g:Lcom/sina/sinalivesdk/refactor/services/a;

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/models/UserModel;->getAccess_token()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/services/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->g:Lcom/sina/sinalivesdk/refactor/services/a;

    iget-object v1, p0, Lcom/sina/sinalivesdk/WBIMLiveClient;->p:Lcom/sina/sinalivesdk/models/UserModel;

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/models/UserModel;->getUid()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sina/sinalivesdk/refactor/services/a;->a(J)V

    :cond_0
    return-void
.end method
