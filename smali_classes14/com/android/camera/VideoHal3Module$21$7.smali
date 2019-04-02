.class Lcom/android/camera/VideoHal3Module$21$7;
.super Ljava/lang/Object;
.source "VideoHal3Module.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$CaptureReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoHal3Module$21;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/VideoHal3Module$21;

.field final synthetic val$camera:Lcom/android/camera/one/OneCamera;

.field final synthetic val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoHal3Module$21;Lcom/android/camera/one/OneCamera;Lcom/android/camera/opengl/PreviewRenderer;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/VideoHal3Module$21;

    .prologue
    .line 2382
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iput-object p2, p0, Lcom/android/camera/VideoHal3Module$21$7;->val$camera:Lcom/android/camera/one/OneCamera;

    iput-object p3, p0, Lcom/android/camera/VideoHal3Module$21$7;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadyForCapture()V
    .locals 4

    .prologue
    .line 2411
    invoke-static {}, Lcom/android/camera/VideoHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onReadyForCapture"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2412
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onReadyForCapture"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2414
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$1800(Lcom/android/camera/VideoHal3Module;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2415
    invoke-static {}, Lcom/android/camera/VideoHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onReadyForCapture - ignore, module is paused"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2416
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onReadyForCapture - ignore, module is paused"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2417
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$5000(Lcom/android/camera/VideoHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2473
    :cond_0
    :goto_0
    return-void

    .line 2421
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$5500(Lcom/android/camera/VideoHal3Module;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2422
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    iget-object v1, p0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v1, v1, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v1}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/opengl/PreviewRenderer;->setPreviewOutputSurface(Landroid/graphics/SurfaceTexture;)V

    .line 2423
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$4100(Lcom/android/camera/VideoHal3Module;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2424
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$1300(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/video/VideoFacade;

    move-result-object v0

    new-instance v1, Lcom/android/camera/video/VideoStremingTakerImpl;

    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$21$7;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    invoke-direct {v1, v2}, Lcom/android/camera/video/VideoStremingTakerImpl;-><init>(Lcom/android/camera/video/RenderRecorder;)V

    invoke-interface {v0, v1}, Lcom/android/camera/video/VideoFacade;->setBurstTaker(Lcom/android/camera/burst/BurstTaker;)V

    .line 2429
    :goto_1
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoHal3Module$21$7;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/settings/SettingsManager;->addListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 2430
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoHal3Module$21$7;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 2431
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    iget-object v1, p0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v1, v1, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    iget-object v1, v1, Lcom/android/camera/VideoHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/android/camera/opengl/PreviewRenderer;->setPreviewArea(Landroid/graphics/RectF;)V

    .line 2439
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$100(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v1, v1, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera;->setReadyStateChangedListener(Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;)V

    .line 2441
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$100(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v1, v1, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera;->setFocusStateListener(Lcom/android/camera/one/OneCamera$FocusStateListener;)V

    .line 2442
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$5000(Lcom/android/camera/VideoHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2443
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$1700(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/VideoHal3Module$21$7$2;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoHal3Module$21$7$2;-><init>(Lcom/android/camera/VideoHal3Module$21$7;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 2469
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/GoogleAssistantManager;->needExecuteGoogleAssistantAction()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/GoogleAssistantManager;->showRecordVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2470
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$1700(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v1, v1, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v1}, Lcom/android/camera/VideoHal3Module;->access$6700(Lcom/android/camera/VideoHal3Module;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 2426
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    iget-object v1, p0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v1, v1, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v1}, Lcom/android/camera/VideoHal3Module;->access$1300(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/video/VideoFacade;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/video/VideoFacade;->getInputSurface()Landroid/view/Surface;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/opengl/PreviewRenderer;->setRecordOutputSurface(Landroid/view/Surface;Lcom/android/camera/async/Observable;I)V

    .line 2427
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$1300(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/video/VideoFacade;

    move-result-object v0

    new-instance v1, Lcom/android/camera/video/DSVideoBurstTakerImpl;

    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$21$7;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    invoke-direct {v1, v2}, Lcom/android/camera/video/DSVideoBurstTakerImpl;-><init>(Lcom/android/camera/video/RenderRecorder;)V

    invoke-interface {v0, v1}, Lcom/android/camera/video/VideoFacade;->setBurstTaker(Lcom/android/camera/burst/BurstTaker;)V

    goto/16 :goto_1
.end method

.method public onSetupFailed()V
    .locals 3

    .prologue
    .line 2385
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onSetupFailed"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2386
    invoke-static {}, Lcom/android/camera/VideoHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetupFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$21$7;->val$camera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v2}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2391
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$5000(Lcom/android/camera/VideoHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2392
    invoke-static {}, Lcom/android/camera/VideoHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Could not set up preview."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2393
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$1700(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/VideoHal3Module$21$7$1;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoHal3Module$21$7$1;-><init>(Lcom/android/camera/VideoHal3Module$21$7;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 2407
    return-void
.end method
