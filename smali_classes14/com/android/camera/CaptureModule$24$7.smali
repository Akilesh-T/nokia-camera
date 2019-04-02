.class Lcom/android/camera/CaptureModule$24$7;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$CaptureReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule$24;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CaptureModule$24;

.field final synthetic val$camera:Lcom/android/camera/one/OneCamera;

.field final synthetic val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule$24;Lcom/android/camera/one/OneCamera;Lcom/android/camera/opengl/PreviewRenderer;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/CaptureModule$24;

    .prologue
    .line 2673
    iput-object p1, p0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iput-object p2, p0, Lcom/android/camera/CaptureModule$24$7;->val$camera:Lcom/android/camera/one/OneCamera;

    iput-object p3, p0, Lcom/android/camera/CaptureModule$24$7;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadyForCapture()V
    .locals 4

    .prologue
    .line 2702
    invoke-static {}, Lcom/android/camera/CaptureModule;->access$800()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onReadyForCapture"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2703
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onReadyForCapture"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2704
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2400(Lcom/android/camera/CaptureModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2705
    invoke-static {}, Lcom/android/camera/CaptureModule;->access$800()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onReadyForCapture - ignore, module is paused"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2706
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onReadyForCapture - ignore, module is paused"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2707
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$5000(Lcom/android/camera/CaptureModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2799
    :cond_0
    :goto_0
    return-void

    .line 2711
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$5500(Lcom/android/camera/CaptureModule;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2712
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    iget-object v1, p0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v1, v1, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/opengl/PreviewRenderer;->setPreviewOutputSurface(Landroid/graphics/SurfaceTexture;)V

    .line 2713
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CaptureModule$24$7;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/settings/SettingsManager;->addListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 2714
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CaptureModule$24$7;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 2715
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    iget-object v1, p0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v1, v1, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    iget-object v1, v1, Lcom/android/camera/CaptureModule;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/android/camera/opengl/PreviewRenderer;->setPreviewArea(Landroid/graphics/RectF;)V

    .line 2719
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$200(Lcom/android/camera/CaptureModule;)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqBarCode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$5600(Lcom/android/camera/CaptureModule;)Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2720
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    iget-object v1, p0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v1, v1, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$5600(Lcom/android/camera/CaptureModule;)Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;->getFocusStateListener()Lcom/android/camera/one/OneCamera$FocusStateListener;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/CaptureModule;->access$6002(Lcom/android/camera/CaptureModule;Lcom/android/camera/one/OneCamera$FocusStateListener;)Lcom/android/camera/one/OneCamera$FocusStateListener;

    .line 2724
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$6200(Lcom/android/camera/CaptureModule;)Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2725
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7;->val$camera:Lcom/android/camera/one/OneCamera;

    iget-object v1, p0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v1, v1, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$6200(Lcom/android/camera/CaptureModule;)Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera;->setSceneRecognitionListener(Lcom/android/camera/one/OneCamera$SceneRecognitionListener;)V

    .line 2727
    :cond_4
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->val$captureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCameraCaptureSetting;->getHdrSceneSetting()Lcom/android/camera/async/Observable;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/android/camera/one/v2/photo/SceneDetector$HDR;->OFF:Lcom/android/camera/one/v2/photo/SceneDetector$HDR;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2728
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7;->val$camera:Lcom/android/camera/one/OneCamera;

    new-instance v1, Lcom/android/camera/CaptureModule$24$7$2;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureModule$24$7$2;-><init>(Lcom/android/camera/CaptureModule$24$7;)V

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera;->setSceneModeChangeListener(Lcom/android/camera/one/OneCamera$SceneModeChangeListener;)V

    .line 2743
    :cond_5
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v1, v1, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera;->setReadyStateChangedListener(Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;)V

    .line 2745
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "setReadyStateChangedListener"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2747
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v1, v1, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera;->setFocusStateListener(Lcom/android/camera/one/OneCamera$FocusStateListener;)V

    .line 2748
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "setFocusStateListener"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2750
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$5000(Lcom/android/camera/CaptureModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2751
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "mCameraOpenCloseLock.release()"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2752
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2300(Lcom/android/camera/CaptureModule;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/CaptureModule$24$7$3;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureModule$24$7$3;-><init>(Lcom/android/camera/CaptureModule$24$7;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 2790
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/GoogleAssistantManager;->needExecuteGoogleAssistantAction()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/GoogleAssistantManager;->showTakePicture()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2791
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2300(Lcom/android/camera/CaptureModule;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v1, v1, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$7100(Lcom/android/camera/CaptureModule;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;J)V

    .line 2796
    :cond_6
    invoke-static {}, Lcom/android/camera/DebugManager;->getInstance()Lcom/android/camera/DebugManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/DebugManager;->isTakePicture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2797
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2300(Lcom/android/camera/CaptureModule;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v1, v1, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$7100(Lcom/android/camera/CaptureModule;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;J)V

    goto/16 :goto_0
.end method

.method public onSetupFailed()V
    .locals 3

    .prologue
    .line 2676
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onSetupFailed"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2677
    invoke-static {}, Lcom/android/camera/CaptureModule;->access$800()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetupFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CaptureModule$24$7;->val$camera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v2}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2682
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$5000(Lcom/android/camera/CaptureModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2683
    invoke-static {}, Lcom/android/camera/CaptureModule;->access$800()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Could not set up preview."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2684
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2300(Lcom/android/camera/CaptureModule;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/CaptureModule$24$7$1;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureModule$24$7$1;-><init>(Lcom/android/camera/CaptureModule$24$7;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 2698
    return-void
.end method
