.class Lcom/android/camera/BokehHal3Module$19$2;
.super Ljava/lang/Object;
.source "BokehHal3Module.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$CaptureReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BokehHal3Module$19;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/BokehHal3Module$19;

.field final synthetic val$camera:Lcom/android/camera/one/OneCamera;

.field final synthetic val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;


# direct methods
.method constructor <init>(Lcom/android/camera/BokehHal3Module$19;Lcom/android/camera/one/OneCamera;Lcom/android/camera/opengl/PreviewRenderer;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/BokehHal3Module$19;

    .prologue
    .line 1997
    iput-object p1, p0, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iput-object p2, p0, Lcom/android/camera/BokehHal3Module$19$2;->val$camera:Lcom/android/camera/one/OneCamera;

    iput-object p3, p0, Lcom/android/camera/BokehHal3Module$19$2;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadyForCapture()V
    .locals 2

    .prologue
    .line 2026
    invoke-static {}, Lcom/android/camera/BokehHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onReadyForCapture"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2027
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onReadyForCapture"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2029
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$200(Lcom/android/camera/BokehHal3Module;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2030
    invoke-static {}, Lcom/android/camera/BokehHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onReadyForCapture - ignore, module is paused"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2031
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onReadyForCapture - ignore, module is paused"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2032
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$4200(Lcom/android/camera/BokehHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2132
    :goto_0
    return-void

    .line 2036
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$100(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    new-instance v1, Lcom/android/camera/BokehHal3Module$19$2$2;

    invoke-direct {v1, p0}, Lcom/android/camera/BokehHal3Module$19$2$2;-><init>(Lcom/android/camera/BokehHal3Module$19$2;)V

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera;->setFaceDetectionListener(Lcom/android/camera/one/OneCamera$FaceDetectionListener;)V

    .line 2047
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$19$2;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    if-eqz v0, :cond_1

    .line 2048
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$19$2;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    iget-object v1, p0, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v1, v1, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v1}, Lcom/android/camera/BokehHal3Module;->access$900(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/opengl/PreviewRenderer;->setPreviewOutputSurface(Landroid/graphics/SurfaceTexture;)V

    .line 2049
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$900(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/BokehHal3Module$19$2;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/settings/SettingsManager;->addListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 2050
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    iget-object v1, p0, Lcom/android/camera/BokehHal3Module$19$2;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    invoke-virtual {v1}, Lcom/android/camera/opengl/PreviewRenderer;->getFocusStateListener()Lcom/android/camera/one/OneCamera$FocusStateListener;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/BokehHal3Module;->access$4602(Lcom/android/camera/BokehHal3Module;Lcom/android/camera/one/OneCamera$FocusStateListener;)Lcom/android/camera/one/OneCamera$FocusStateListener;

    .line 2053
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$3700(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v0

    sget-object v1, Lcom/android/camera/util/ProductModelUtil$DualCamType;->QC_LOGIC_CAM:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    if-ne v0, v1, :cond_2

    .line 2054
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$100(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    new-instance v1, Lcom/android/camera/BokehHal3Module$19$2$3;

    invoke-direct {v1, p0}, Lcom/android/camera/BokehHal3Module$19$2$3;-><init>(Lcom/android/camera/BokehHal3Module$19$2;)V

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera;->setBokehResultListener(Lcom/android/camera/one/v2/photo/BokehResultListener;)V

    .line 2103
    :cond_2
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$100(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v1, v1, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera;->setReadyStateChangedListener(Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;)V

    .line 2105
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$100(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v1, v1, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera;->setFocusStateListener(Lcom/android/camera/one/OneCamera$FocusStateListener;)V

    .line 2107
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$4200(Lcom/android/camera/BokehHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2108
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$1700(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/BokehHal3Module$19$2$4;

    invoke-direct {v1, p0}, Lcom/android/camera/BokehHal3Module$19$2$4;-><init>(Lcom/android/camera/BokehHal3Module$19$2;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public onSetupFailed()V
    .locals 3

    .prologue
    .line 2000
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onSetupFailed"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2001
    invoke-static {}, Lcom/android/camera/BokehHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetupFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/BokehHal3Module$19$2;->val$camera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v2}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2006
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$4200(Lcom/android/camera/BokehHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2007
    invoke-static {}, Lcom/android/camera/BokehHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Could not set up preview."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2008
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$1700(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/BokehHal3Module$19$2$1;

    invoke-direct {v1, p0}, Lcom/android/camera/BokehHal3Module$19$2$1;-><init>(Lcom/android/camera/BokehHal3Module$19$2;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 2022
    return-void
.end method
