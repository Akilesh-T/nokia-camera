.class Lcom/android/camera/one/v2/SimpleOneCameraFactory$1;
.super Ljava/lang/Object;
.source "SimpleOneCameraFactory.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/SimpleOneCameraFactory;->createOneCamera(Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/FatalErrorHandler;)Lcom/android/camera/one/OneCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/SimpleOneCameraFactory;

.field final synthetic val$device:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

.field final synthetic val$slaveCameraDevice:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/SimpleOneCameraFactory;Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/SimpleOneCameraFactory;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$1;->this$0:Lcom/android/camera/one/v2/SimpleOneCameraFactory;

    iput-object p2, p0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$1;->val$slaveCameraDevice:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    iput-object p3, p0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$1;->val$device:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 6

    .prologue
    .line 152
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v3

    const-string v4, "close main camera"

    invoke-virtual {v3, v4}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    .line 153
    .local v2, "guard":Lcom/android/camera/stats/profiler/Profile;
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 154
    .local v0, "closeSlaveCamFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Boolean;>;"
    iget-object v3, p0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$1;->val$slaveCameraDevice:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    if-eqz v3, :cond_0

    .line 155
    new-instance v3, Lcom/android/camera/one/v2/SimpleOneCameraFactory$1$1;

    invoke-direct {v3, p0, v0}, Lcom/android/camera/one/v2/SimpleOneCameraFactory$1$1;-><init>(Lcom/android/camera/one/v2/SimpleOneCameraFactory$1;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-static {v3}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 169
    const-string v3, "Async thread execute"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 174
    :goto_0
    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 175
    iget-object v3, p0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$1;->val$device:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    invoke-interface {v3}, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;->close()V

    .line 176
    const-string v3, "main camera closed"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 179
    :try_start_0
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    .line 180
    const-string v3, "closeSlaveCamFuture.get()"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_1
    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 185
    return-void

    .line 171
    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/camera/one/v2/SimpleOneCameraFactory;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "closeSlaveCamFuture Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1
.end method
