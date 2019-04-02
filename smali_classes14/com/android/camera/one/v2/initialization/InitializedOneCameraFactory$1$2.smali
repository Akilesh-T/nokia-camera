.class Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$2;
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

.field final synthetic val$slaveSession:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$2;->this$1:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    iput-object p2, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$2;->val$slaveSession:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 243
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    const-string v2, "close slave session"

    invoke-virtual {v1, v2}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 244
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    invoke-static {}, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close slave session : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$2;->val$slaveSession:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 245
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 246
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$2;->val$slaveSession:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

    invoke-interface {v1}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;->close()V

    .line 247
    const-string v1, "session.close"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$2;->this$1:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    iget-object v1, v1, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$slaveZoomState:Lcom/android/camera/async/ConcurrentState;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;Z)V

    .line 249
    const-string v1, "zoomState reset"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 250
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 251
    return-void
.end method
