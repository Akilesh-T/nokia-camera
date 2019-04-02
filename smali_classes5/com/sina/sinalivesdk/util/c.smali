.class public Lcom/sina/sinalivesdk/util/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/sina/sinalivesdk/util/c;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sina/sinalivesdk/util/d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Landroid/content/Context;

.field private f:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sina/sinalivesdk/util/c;->b:Ljava/util/Map;

    new-instance v0, Lcom/sina/sinalivesdk/util/MsgLogInfoCollect$1;

    invoke-direct {v0, p0}, Lcom/sina/sinalivesdk/util/MsgLogInfoCollect$1;-><init>(Lcom/sina/sinalivesdk/util/c;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/util/c;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/sinalivesdk/util/c;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/sina/sinalivesdk/util/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/sina/sinalivesdk/refactor/push/a/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/sinalivesdk/util/c;->c:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sina/sinalivesdk/util/c;->d:J

    iget-object v0, p0, Lcom/sina/sinalivesdk/util/c;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/sina/sinalivesdk/util/c;->f:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic a(Lcom/sina/sinalivesdk/util/c;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/util/c;->d:J

    return-wide p1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/sina/sinalivesdk/util/c;
    .locals 2

    const-class v1, Lcom/sina/sinalivesdk/util/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sina/sinalivesdk/util/c;->a:Lcom/sina/sinalivesdk/util/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sina/sinalivesdk/util/c;

    invoke-direct {v0, p0}, Lcom/sina/sinalivesdk/util/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sina/sinalivesdk/util/c;->a:Lcom/sina/sinalivesdk/util/c;

    :cond_0
    sget-object v0, Lcom/sina/sinalivesdk/util/c;->a:Lcom/sina/sinalivesdk/util/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/sina/sinalivesdk/util/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/util/c;->c:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final a(J)Lcom/sina/sinalivesdk/util/d;
    .locals 3

    iget-object v0, p0, Lcom/sina/sinalivesdk/util/c;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/util/c;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/sinalivesdk/util/d;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sina/sinalivesdk/util/d;

    invoke-direct {v0}, Lcom/sina/sinalivesdk/util/d;-><init>()V

    iget-object v1, p0, Lcom/sina/sinalivesdk/util/c;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b(J)V
    .locals 3

    iget-object v0, p0, Lcom/sina/sinalivesdk/util/c;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
