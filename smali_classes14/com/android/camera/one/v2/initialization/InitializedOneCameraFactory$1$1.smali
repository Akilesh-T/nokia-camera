.class Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$1;
.super Ljava/lang/Object;
.source "InitializedOneCameraFactory.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->onCameraCaptureSessionCreated(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

.field final synthetic val$session:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$1;->this$1:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    iput-object p2, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$1;->val$session:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 221
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    const-string v2, "close main session"

    invoke-virtual {v1, v2}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 223
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    invoke-static {}, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close main session : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$1;->val$session:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 224
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 225
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$1;->val$session:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

    invoke-interface {v1}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;->close()V

    .line 226
    const-string v1, "session.close"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$1;->this$1:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    iget-object v1, v1, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v1}, Lcom/android/camera/one/OneCameraCharacteristics;->isQCFASensor()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->useFakeQCFASolution()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->setDualCamModeConfig(I)V

    .line 230
    const-string v1, "setDualCamModeConfig(PERSIST_CAMERA_CHECK_SIZE)"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$1;->this$1:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    iget-object v1, v1, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$zoomState:Lcom/android/camera/async/ConcurrentState;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;Z)V

    .line 234
    const-string v1, "zoomState reset"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 236
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 237
    return-void
.end method
