.class public final Lcom/sina/sinalivesdk/refactor/post/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/concurrent/locks/Lock;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sina/sinalivesdk/refactor/post/l;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/a;->a:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/a;->b:Ljava/util/List;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/post/ConnectionPool$2;

    invoke-direct {v0, p0}, Lcom/sina/sinalivesdk/refactor/post/ConnectionPool$2;-><init>(Lcom/sina/sinalivesdk/refactor/post/a;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/a;->d:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/sina/sinalivesdk/refactor/post/a;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/a;->a:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method public static b()Lcom/sina/sinalivesdk/refactor/post/a;
    .locals 1

    sget-object v0, Lcom/sina/sinalivesdk/refactor/post/c;->a:Lcom/sina/sinalivesdk/refactor/post/a;

    return-object v0
.end method

.method static synthetic b(Lcom/sina/sinalivesdk/refactor/post/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/a;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(J)Lcom/sina/sinalivesdk/refactor/post/l;
    .locals 3

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2000
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/sinalivesdk/refactor/post/l;

    invoke-interface {v0, p1, p2}, Lcom/sina/sinalivesdk/refactor/post/l;->a(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 0
    :goto_0
    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 2000
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    new-instance v0, Lcom/sina/sinalivesdk/refactor/post/m;

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/a;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/post/a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/post/m;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/sinalivesdk/refactor/post/l;

    invoke-interface {v0, p1, p2}, Lcom/sina/sinalivesdk/refactor/post/l;->a(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 0
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 0
    const-string v0, "ConnectionPool"

    const-string v1, "reset, close and remove all connections."

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3000
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sina/sinalivesdk/refactor/post/b;

    invoke-direct {v1, p0}, Lcom/sina/sinalivesdk/refactor/post/b;-><init>(Lcom/sina/sinalivesdk/refactor/post/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 0
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 0
    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/post/a;->c:Landroid/content/Context;

    .line 1000
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/post/a;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/post/a;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 0
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sina/sinalivesdk/refactor/post/a;->c:Landroid/content/Context;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/post/a;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method
