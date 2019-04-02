.class public final Lcom/sina/sinalivesdk/refactor/push/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sina/sinalivesdk/refactor/push/m;


# instance fields
.field private a:Lcom/sina/sinalivesdk/refactor/push/d;

.field private b:I

.field private c:[Ljava/lang/String;

.field private d:Lcom/sina/sinalivesdk/refactor/push/w;

.field private e:J

.field private f:J

.field private g:Ljava/util/concurrent/Semaphore;

.field private h:I


# direct methods
.method public constructor <init>(Lcom/sina/sinalivesdk/refactor/push/d;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/sina/sinalivesdk/refactor/push/t;->b:I

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/t;->c:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/t;->d:Lcom/sina/sinalivesdk/refactor/push/w;

    iput-wide v4, p0, Lcom/sina/sinalivesdk/refactor/push/t;->e:J

    iput-wide v4, p0, Lcom/sina/sinalivesdk/refactor/push/t;->f:J

    iput v1, p0, Lcom/sina/sinalivesdk/refactor/push/t;->h:I

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/push/t;->a:Lcom/sina/sinalivesdk/refactor/push/d;

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/t;->a:Lcom/sina/sinalivesdk/refactor/push/d;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/push/d;->i()Lcom/sina/sinalivesdk/refactor/push/w;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/t;->d:Lcom/sina/sinalivesdk/refactor/push/w;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sina/sinalivesdk/refactor/push/t;->e:J

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/t;->g:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method static synthetic a(Lcom/sina/sinalivesdk/refactor/push/t;I)I
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/refactor/push/t;->b:I

    return p1
.end method

.method static synthetic a(Lcom/sina/sinalivesdk/refactor/push/t;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/refactor/push/t;->f:J

    return-wide p1
.end method

.method static synthetic a(Lcom/sina/sinalivesdk/refactor/push/t;)Ljava/util/concurrent/Semaphore;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/t;->g:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic a(Lcom/sina/sinalivesdk/refactor/push/t;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/push/t;->c:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/sina/sinalivesdk/refactor/push/t;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/refactor/push/t;->e:J

    return-wide p1
.end method

.method static synthetic b(Lcom/sina/sinalivesdk/refactor/push/t;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/t;->c:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 10

    .prologue
    const/16 v1, 0xb

    const/4 v2, 0x5

    const/4 v0, 0x0

    .line 0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sina/sinalivesdk/refactor/push/t;->e:J

    iget-wide v8, p0, Lcom/sina/sinalivesdk/refactor/push/t;->f:J

    add-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    const-string v3, "PushConnectState"

    const-string v4, "need to syncAddress"

    invoke-static {v3, v4}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v3, Lcom/sina/sinalivesdk/util/Constants;->IS_CHAT_ROOM:Z

    if-eqz v3, :cond_1

    .line 1000
    new-instance v3, Lcom/sina/sinalivesdk/request/ChatDispatcherRequest;

    invoke-direct {v3}, Lcom/sina/sinalivesdk/request/ChatDispatcherRequest;-><init>()V

    sget-wide v4, Lcom/sina/sinalivesdk/util/Constants;->CURRENT_CONTAINER_ID:J

    invoke-virtual {v3, v4, v5}, Lcom/sina/sinalivesdk/request/ChatDispatcherRequest;->setContainer_id(J)V

    sget v4, Lcom/sina/sinalivesdk/util/Constants;->CURRENT_CONTAINER_TYPE:I

    invoke-virtual {v3, v4}, Lcom/sina/sinalivesdk/request/ChatDispatcherRequest;->setContainer_type(I)V

    invoke-static {}, Lcom/sina/sinalivesdk/manager/DispatchManager;->instance()Lcom/sina/sinalivesdk/manager/DispatchManager;

    move-result-object v4

    new-instance v5, Lcom/sina/sinalivesdk/refactor/push/v;

    invoke-direct {v5, p0}, Lcom/sina/sinalivesdk/refactor/push/v;-><init>(Lcom/sina/sinalivesdk/refactor/push/t;)V

    invoke-virtual {v4, v3, v5}, Lcom/sina/sinalivesdk/manager/DispatchManager;->sendChatRoomDispach(Lcom/sina/sinalivesdk/request/ChatDispatcherRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    .line 0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/sina/sinalivesdk/refactor/push/t;->g:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/sina/sinalivesdk/refactor/push/t;->c:[Ljava/lang/String;

    array-length v3, v3

    if-gtz v3, :cond_5

    iget v3, p0, Lcom/sina/sinalivesdk/refactor/push/t;->h:I

    if-ge v3, v2, :cond_3

    iget v0, p0, Lcom/sina/sinalivesdk/refactor/push/t;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sina/sinalivesdk/refactor/push/t;->h:I

    move v0, v1

    :goto_2
    return v0

    .line 2000
    :cond_1
    sget-object v3, Lcom/sina/sinalivesdk/util/Constants;->CURRENT_ROOM_ID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "PushConnectState"

    const-string v4, "roomID = null, can not sync address!!"

    invoke-static {v3, v4}, Lcom/sina/sinalivesdk/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/sina/sinalivesdk/request/DispathRequest;

    invoke-direct {v3}, Lcom/sina/sinalivesdk/request/DispathRequest;-><init>()V

    sget-object v4, Lcom/sina/sinalivesdk/util/Constants;->CURRENT_ROOM_ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sina/sinalivesdk/request/DispathRequest;->setRoom_id(Ljava/lang/String;)V

    invoke-static {}, Lcom/sina/sinalivesdk/manager/DispatchManager;->instance()Lcom/sina/sinalivesdk/manager/DispatchManager;

    move-result-object v4

    new-instance v5, Lcom/sina/sinalivesdk/refactor/push/u;

    invoke-direct {v5, p0}, Lcom/sina/sinalivesdk/refactor/push/u;-><init>(Lcom/sina/sinalivesdk/refactor/push/t;)V

    invoke-virtual {v4, v3, v5}, Lcom/sina/sinalivesdk/manager/DispatchManager;->sendDispath(Lcom/sina/sinalivesdk/request/DispathRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    goto :goto_0

    .line 0
    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_3
    iput v0, p0, Lcom/sina/sinalivesdk/refactor/push/t;->h:I

    move v0, v2

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    :cond_5
    iget v3, p0, Lcom/sina/sinalivesdk/refactor/push/t;->b:I

    if-ge v0, v3, :cond_7

    :try_start_1
    iget-object v3, p0, Lcom/sina/sinalivesdk/refactor/push/t;->c:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    const-string v3, "PushConnectState"

    const-string v4, "Address parsing error"

    invoke-static {v3, v4}, Lcom/sina/sinalivesdk/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Address parsing error"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v3

    const-string v3, "PushConnectState"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Socket Connect Failed, retry time = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/sina/sinalivesdk/refactor/push/t;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sina/sinalivesdk/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/sina/sinalivesdk/refactor/push/t;->b:I

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_4

    const-string v0, "PushConnectState"

    const-string v1, "return connect failed"

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_2

    :cond_6
    const/4 v4, 0x0

    :try_start_2
    aget-object v4, v3, v4

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v5, "PushConnectState"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Establist Socket: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/sina/sinalivesdk/refactor/services/f;

    const/4 v6, 0x1

    invoke-direct {v5, v4, v3, v6}, Lcom/sina/sinalivesdk/refactor/services/f;-><init>(Ljava/lang/String;II)V

    iget-object v3, p0, Lcom/sina/sinalivesdk/refactor/push/t;->d:Lcom/sina/sinalivesdk/refactor/push/w;

    invoke-virtual {v3, v5}, Lcom/sina/sinalivesdk/refactor/push/w;->a(Lcom/sina/sinalivesdk/refactor/services/f;)V

    const-string v3, "PushConnectState"

    const-string v4, "return connect success"

    invoke-static {v3, v4}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v0, 0x8

    goto/16 :goto_2

    :cond_7
    move v0, v1

    goto/16 :goto_2
.end method
