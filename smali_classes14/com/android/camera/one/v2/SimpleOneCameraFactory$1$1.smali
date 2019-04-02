.class Lcom/android/camera/one/v2/SimpleOneCameraFactory$1$1;
.super Ljava/lang/Object;
.source "SimpleOneCameraFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/SimpleOneCameraFactory$1;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/one/v2/SimpleOneCameraFactory$1;

.field final synthetic val$closeSlaveCamFuture:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/SimpleOneCameraFactory$1;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/one/v2/SimpleOneCameraFactory$1;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$1$1;->this$1:Lcom/android/camera/one/v2/SimpleOneCameraFactory$1;

    iput-object p2, p0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$1$1;->val$closeSlaveCamFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 158
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    const-string v2, "close slave camera"

    invoke-virtual {v1, v2}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 160
    .local v0, "slave_guard":Lcom/android/camera/stats/profiler/Profile;
    :try_start_0
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 161
    iget-object v1, p0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$1$1;->this$1:Lcom/android/camera/one/v2/SimpleOneCameraFactory$1;

    iget-object v1, v1, Lcom/android/camera/one/v2/SimpleOneCameraFactory$1;->val$slaveCameraDevice:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    invoke-interface {v1}, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;->close()V

    .line 162
    const-string v1, "slave camera closed"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    iget-object v1, p0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$1$1;->val$closeSlaveCamFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 165
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 167
    return-void

    .line 164
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$1$1;->val$closeSlaveCamFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 165
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    throw v1
.end method
