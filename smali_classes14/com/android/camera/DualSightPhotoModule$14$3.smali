.class Lcom/android/camera/DualSightPhotoModule$14$3;
.super Ljava/lang/Object;
.source "DualSightPhotoModule.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$CaptureReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightPhotoModule$14;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/DualSightPhotoModule$14;

.field final synthetic val$camera:Lcom/android/camera/one/OneCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightPhotoModule$14;Lcom/android/camera/one/OneCamera;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/DualSightPhotoModule$14;

    .prologue
    .line 2234
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iput-object p2, p0, Lcom/android/camera/DualSightPhotoModule$14$3;->val$camera:Lcom/android/camera/one/OneCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadyForCapture()V
    .locals 6

    .prologue
    .line 2263
    invoke-static {}, Lcom/android/camera/DualSightPhotoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onReadyForCapture"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2264
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onReadyForCapture"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2266
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1400(Lcom/android/camera/DualSightPhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2267
    invoke-static {}, Lcom/android/camera/DualSightPhotoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onReadyForCapture - ignore, module is paused"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2268
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onReadyForCapture - ignore, module is paused"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2269
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4300(Lcom/android/camera/DualSightPhotoModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2374
    :cond_0
    :goto_0
    return-void

    .line 2273
    :cond_1
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/opengl/PreviewRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v1, v1, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/opengl/PreviewRenderer;->setPreviewOutputSurface(Landroid/graphics/SurfaceTexture;)V

    .line 2274
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v1, v1, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightPhotoModule;->access$4600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/opengl/PreviewRenderer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/settings/SettingsManager;->addListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 2275
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v1, v1, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightPhotoModule;->access$4600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/opengl/PreviewRenderer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 2276
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/opengl/PreviewRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v1, v1, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    iget-object v1, v1, Lcom/android/camera/DualSightPhotoModule;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/android/camera/opengl/PreviewRenderer;->setPreviewArea(Landroid/graphics/RectF;)V

    .line 2277
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/opengl/PreviewRenderer;

    move-result-object v0

    new-instance v1, Lcom/android/camera/opengl/dualsight/DualSightZoomParams;

    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v2, v2, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v2}, Lcom/android/camera/DualSightPhotoModule;->access$4400(Lcom/android/camera/DualSightPhotoModule;)F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v3, v3, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v3}, Lcom/android/camera/DualSightPhotoModule;->access$4200(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/one/OneCamera;->getMaxZoom()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v4, v4, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    .line 2278
    invoke-static {v4}, Lcom/android/camera/DualSightPhotoModule;->access$4400(Lcom/android/camera/DualSightPhotoModule;)F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v5, v5, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v5}, Lcom/android/camera/DualSightPhotoModule;->access$4200(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/one/OneCamera;->getSlaveMaxZoom()F

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/opengl/dualsight/DualSightZoomParams;-><init>(FFFF)V

    .line 2277
    invoke-virtual {v0, v1}, Lcom/android/camera/opengl/PreviewRenderer;->setZoomParams(Lcom/android/camera/opengl/dualsight/DualSightZoomParams;)V

    .line 2279
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    new-instance v1, Lcom/android/camera/DualSightPhotoModule$14$3$2;

    invoke-direct {v1, p0}, Lcom/android/camera/DualSightPhotoModule$14$3$2;-><init>(Lcom/android/camera/DualSightPhotoModule$14$3;)V

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V

    .line 2341
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4200(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v1, v1, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera;->setReadyStateChangedListener(Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;)V

    .line 2343
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4200(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v1, v1, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera;->setFocusStateListener(Lcom/android/camera/one/OneCamera$FocusStateListener;)V

    .line 2345
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4300(Lcom/android/camera/DualSightPhotoModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2346
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1200(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/DualSightPhotoModule$14$3$3;

    invoke-direct {v1, p0}, Lcom/android/camera/DualSightPhotoModule$14$3$3;-><init>(Lcom/android/camera/DualSightPhotoModule$14$3;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 2370
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/GoogleAssistantManager;->needExecuteGoogleAssistantAction()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/GoogleAssistantManager;->showTakePicture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2371
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1200(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v1, v1, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightPhotoModule;->access$6000(Lcom/android/camera/DualSightPhotoModule;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;J)V

    goto/16 :goto_0
.end method

.method public onSetupFailed()V
    .locals 3

    .prologue
    .line 2237
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onSetupFailed"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2238
    invoke-static {}, Lcom/android/camera/DualSightPhotoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetupFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule$14$3;->val$camera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v2}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2243
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4300(Lcom/android/camera/DualSightPhotoModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2244
    invoke-static {}, Lcom/android/camera/DualSightPhotoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Could not set up preview."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2245
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1200(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/DualSightPhotoModule$14$3$1;

    invoke-direct {v1, p0}, Lcom/android/camera/DualSightPhotoModule$14$3$1;-><init>(Lcom/android/camera/DualSightPhotoModule$14$3;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 2259
    return-void
.end method
