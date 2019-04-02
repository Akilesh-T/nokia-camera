.class Lcom/android/camera/panorama/PanoFacadeImpl$1;
.super Ljava/lang/Object;
.source "PanoFacadeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/panorama/PanoFacadeImpl;-><init>(Landroid/content/Context;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/panorama/PanoReadyStateChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/panorama/PanoFacadeImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/panorama/PanoFacadeImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/panorama/PanoFacadeImpl;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/camera/panorama/PanoFacadeImpl$1;->this$0:Lcom/android/camera/panorama/PanoFacadeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 66
    iget-object v2, p0, Lcom/android/camera/panorama/PanoFacadeImpl$1;->this$0:Lcom/android/camera/panorama/PanoFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/panorama/PanoFacadeImpl;->access$000(Lcom/android/camera/panorama/PanoFacadeImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    monitor-enter v3

    .line 67
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/panorama/PanoFacadeImpl$1;->this$0:Lcom/android/camera/panorama/PanoFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/panorama/PanoFacadeImpl;->access$000(Lcom/android/camera/panorama/PanoFacadeImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/android/camera/panorama/PanoFacadeImpl$1;->this$0:Lcom/android/camera/panorama/PanoFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/panorama/PanoFacadeImpl;->access$100(Lcom/android/camera/panorama/PanoFacadeImpl;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 69
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :goto_0
    return-void

    .line 73
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/panorama/PanoFacadeImpl$1;->this$0:Lcom/android/camera/panorama/PanoFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/panorama/PanoFacadeImpl;->access$200(Lcom/android/camera/panorama/PanoFacadeImpl;)Landroid/media/MediaActionSound;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/media/MediaActionSound;->load(I)V

    .line 74
    iget-object v2, p0, Lcom/android/camera/panorama/PanoFacadeImpl$1;->this$0:Lcom/android/camera/panorama/PanoFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/panorama/PanoFacadeImpl;->access$200(Lcom/android/camera/panorama/PanoFacadeImpl;)Landroid/media/MediaActionSound;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/media/MediaActionSound;->load(I)V

    .line 75
    iget-object v2, p0, Lcom/android/camera/panorama/PanoFacadeImpl$1;->this$0:Lcom/android/camera/panorama/PanoFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/panorama/PanoFacadeImpl;->access$100(Lcom/android/camera/panorama/PanoFacadeImpl;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 76
    iget-object v2, p0, Lcom/android/camera/panorama/PanoFacadeImpl$1;->this$0:Lcom/android/camera/panorama/PanoFacadeImpl;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/camera/panorama/PanoFacadeImpl;->access$302(Lcom/android/camera/panorama/PanoFacadeImpl;Z)Z

    .line 78
    iget-object v2, p0, Lcom/android/camera/panorama/PanoFacadeImpl$1;->this$0:Lcom/android/camera/panorama/PanoFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/panorama/PanoFacadeImpl;->access$400(Lcom/android/camera/panorama/PanoFacadeImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;

    .line 79
    .local v0, "checkState":Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;
    sget-object v2, Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;->RUNNING:Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;

    if-eq v0, v2, :cond_1

    sget-object v2, Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;->STOPPING:Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;

    if-ne v0, v2, :cond_2

    .line 81
    :cond_1
    iget-object v2, p0, Lcom/android/camera/panorama/PanoFacadeImpl$1;->this$0:Lcom/android/camera/panorama/PanoFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/panorama/PanoFacadeImpl;->access$600(Lcom/android/camera/panorama/PanoFacadeImpl;)Lcom/android/camera/async/MainThread;

    move-result-object v2

    new-instance v4, Lcom/android/camera/panorama/PanoFacadeImpl$1$1;

    invoke-direct {v4, p0, v0}, Lcom/android/camera/panorama/PanoFacadeImpl$1$1;-><init>(Lcom/android/camera/panorama/PanoFacadeImpl$1;Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;)V

    invoke-virtual {v2, v4}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :cond_2
    :try_start_2
    monitor-exit v3

    goto :goto_0

    .end local v0    # "checkState":Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v2, p0, Lcom/android/camera/panorama/PanoFacadeImpl$1;->this$0:Lcom/android/camera/panorama/PanoFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/panorama/PanoFacadeImpl;->access$100(Lcom/android/camera/panorama/PanoFacadeImpl;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 98
    iget-object v2, p0, Lcom/android/camera/panorama/PanoFacadeImpl$1;->this$0:Lcom/android/camera/panorama/PanoFacadeImpl;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/camera/panorama/PanoFacadeImpl;->access$302(Lcom/android/camera/panorama/PanoFacadeImpl;Z)Z

    .line 99
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
