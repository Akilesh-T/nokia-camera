.class Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;
.super Ljava/lang/Object;
.source "TinyPlanetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/tinyplanet/TinyPlanetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;


# direct methods
.method constructor <init>(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$000(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Ljava/lang/Boolean;

    move-result-object v1

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$000(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$102(Lcom/android/camera/tinyplanet/TinyPlanetFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 145
    monitor-exit v1

    .line 180
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$002(Lcom/android/camera/tinyplanet/TinyPlanetFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 148
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    new-instance v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;

    invoke-direct {v0, p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;-><init>(Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 179
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
