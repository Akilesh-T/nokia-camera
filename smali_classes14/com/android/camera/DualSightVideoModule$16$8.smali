.class Lcom/android/camera/DualSightVideoModule$16$8;
.super Ljava/lang/Object;
.source "DualSightVideoModule.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$CaptureReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightVideoModule$16;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/DualSightVideoModule$16;

.field final synthetic val$camera:Lcom/android/camera/one/OneCamera;

.field final synthetic val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightVideoModule$16;Lcom/android/camera/one/OneCamera;Lcom/android/camera/opengl/PreviewRenderer;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/DualSightVideoModule$16;

    .prologue
    .line 2119
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iput-object p2, p0, Lcom/android/camera/DualSightVideoModule$16$8;->val$camera:Lcom/android/camera/one/OneCamera;

    iput-object p3, p0, Lcom/android/camera/DualSightVideoModule$16$8;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadyForCapture()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x12c

    const/4 v10, 0x1

    const-wide/16 v8, 0x1f4

    const/4 v7, 0x0

    .line 2148
    invoke-static {}, Lcom/android/camera/DualSightVideoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "onReadyForCapture"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2149
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v1, v1, Lcom/android/camera/DualSightVideoModule$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v2, "onReadyForCapture"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2151
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v1, v1, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$1300(Lcom/android/camera/DualSightVideoModule;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2152
    invoke-static {}, Lcom/android/camera/DualSightVideoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "onReadyForCapture - ignore, module is paused"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2153
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v1, v1, Lcom/android/camera/DualSightVideoModule$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v2, "onReadyForCapture - ignore, module is paused"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2154
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v1, v1, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$4600(Lcom/android/camera/DualSightVideoModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2294
    :cond_0
    :goto_0
    return-void

    .line 2158
    :cond_1
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$16$8;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v2, v2, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v2}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/opengl/PreviewRenderer;->setPreviewOutputSurface(Landroid/graphics/SurfaceTexture;)V

    .line 2159
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v1, v1, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$4200(Lcom/android/camera/DualSightVideoModule;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2160
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v1, v1, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$700(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/video/VideoFacade;

    move-result-object v1

    new-instance v2, Lcom/android/camera/video/VideoStremingTakerImpl;

    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule$16$8;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    invoke-direct {v2, v3}, Lcom/android/camera/video/VideoStremingTakerImpl;-><init>(Lcom/android/camera/video/RenderRecorder;)V

    invoke-interface {v1, v2}, Lcom/android/camera/video/VideoFacade;->setBurstTaker(Lcom/android/camera/burst/BurstTaker;)V

    .line 2165
    :goto_1
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v1, v1, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule$16$8;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    invoke-virtual {v1, v2}, Lcom/android/camera/settings/SettingsManager;->addListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 2166
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v1, v1, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule$16$8;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 2167
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$16$8;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v2, v2, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    iget-object v2, v2, Lcom/android/camera/DualSightVideoModule;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Lcom/android/camera/opengl/PreviewRenderer;->setPreviewArea(Landroid/graphics/RectF;)V

    .line 2168
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$16$8;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    new-instance v2, Lcom/android/camera/opengl/dualsight/DualSightZoomParams;

    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v3, v3, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v3}, Lcom/android/camera/DualSightVideoModule;->access$5200(Lcom/android/camera/DualSightVideoModule;)F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v4, v4, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$4500(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/one/OneCamera;->getMaxZoom()F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v5, v5, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    .line 2169
    invoke-static {v5}, Lcom/android/camera/DualSightVideoModule;->access$5200(Lcom/android/camera/DualSightVideoModule;)F

    move-result v5

    iget-object v6, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v6, v6, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v6}, Lcom/android/camera/DualSightVideoModule;->access$4500(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/one/OneCamera;->getSlaveMaxZoom()F

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/camera/opengl/dualsight/DualSightZoomParams;-><init>(FFFF)V

    .line 2168
    invoke-virtual {v1, v2}, Lcom/android/camera/opengl/PreviewRenderer;->setZoomParams(Lcom/android/camera/opengl/dualsight/DualSightZoomParams;)V

    .line 2170
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v1, v1, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    new-instance v2, Lcom/android/camera/DualSightVideoModule$16$8$2;

    invoke-direct {v2, p0}, Lcom/android/camera/DualSightVideoModule$16$8$2;-><init>(Lcom/android/camera/DualSightVideoModule$16$8;)V

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V

    .line 2232
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v1, v1, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$4500(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v2, v2, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-interface {v1, v2}, Lcom/android/camera/one/OneCamera;->setReadyStateChangedListener(Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;)V

    .line 2234
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v1, v1, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$4500(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v2, v2, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-interface {v1, v2}, Lcom/android/camera/one/OneCamera;->setFocusStateListener(Lcom/android/camera/one/OneCamera$FocusStateListener;)V

    .line 2235
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v1, v1, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$4600(Lcom/android/camera/DualSightVideoModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2236
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v1, v1, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$1200(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/async/MainThread;

    move-result-object v1

    new-instance v2, Lcom/android/camera/DualSightVideoModule$16$8$3;

    invoke-direct {v2, p0}, Lcom/android/camera/DualSightVideoModule$16$8$3;-><init>(Lcom/android/camera/DualSightVideoModule$16$8;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 2260
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/GoogleAssistantManager;->needExecuteGoogleAssistantAction()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/GoogleAssistantManager;->showRecordVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2261
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/GoogleAssistantManager;->getStreamingState()Ljava/lang/String;

    move-result-object v0

    .line 2262
    .local v0, "state":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/DualSightVideoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GA streaming state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsLiveBroadcastEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v3, v3, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v3}, Lcom/android/camera/DualSightVideoModule;->access$4200(Lcom/android/camera/DualSightVideoModule;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2263
    if-eqz v0, :cond_6

    .line 2264
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v1, v1, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$4200(Lcom/android/camera/DualSightVideoModule;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2265
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v1, v1, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$2300(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0803fe

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v1, v1, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$2400(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    move-result-object v1

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->FACEBOOK:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-virtual {v1, v2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->isValidAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2266
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/camera/GoogleAssistantManager;->setIsCheckingAccount(Z)V

    .line 2267
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v1, v1, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$1200(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/async/MainThread;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v2, v2, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v2}, Lcom/android/camera/DualSightVideoModule;->access$2600(Lcom/android/camera/DualSightVideoModule;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v8, v9}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 2162
    .end local v0    # "state":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$16$8;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v2, v2, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v2}, Lcom/android/camera/DualSightVideoModule;->access$700(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/video/VideoFacade;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/video/VideoFacade;->getInputSurface()Landroid/view/Surface;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v7}, Lcom/android/camera/opengl/PreviewRenderer;->setRecordOutputSurface(Landroid/view/Surface;Lcom/android/camera/async/Observable;I)V

    .line 2163
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v1, v1, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$700(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/video/VideoFacade;

    move-result-object v1

    new-instance v2, Lcom/android/camera/video/DSVideoBurstTakerImpl;

    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule$16$8;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    invoke-direct {v2, v3}, Lcom/android/camera/video/DSVideoBurstTakerImpl;-><init>(Lcom/android/camera/video/RenderRecorder;)V

    invoke-interface {v1, v2}, Lcom/android/camera/video/VideoFacade;->setBurstTaker(Lcom/android/camera/burst/BurstTaker;)V

    goto/16 :goto_1

    .line 2268
    .restart local v0    # "state":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v1, v1, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$2300(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f080400

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v1, v1, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$2400(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    move-result-object v1

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->YOUTUBE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-virtual {v1, v2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->isValidAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2269
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/camera/GoogleAssistantManager;->setIsCheckingAccount(Z)V

    .line 2270
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v1, v1, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$1200(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/async/MainThread;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v2, v2, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v2}, Lcom/android/camera/DualSightVideoModule;->access$2600(Lcom/android/camera/DualSightVideoModule;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v8, v9}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 2272
    :cond_4
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/android/camera/GoogleAssistantManager;->setIsCheckingAccount(Z)V

    .line 2273
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v1, v1, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$1200(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/async/MainThread;

    move-result-object v1

    new-instance v2, Lcom/android/camera/DualSightVideoModule$16$8$4;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/DualSightVideoModule$16$8$4;-><init>(Lcom/android/camera/DualSightVideoModule$16$8;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v12, v13}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 2281
    :cond_5
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/android/camera/GoogleAssistantManager;->setIsCheckingAccount(Z)V

    .line 2282
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v1, v1, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$1200(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/async/MainThread;

    move-result-object v1

    new-instance v2, Lcom/android/camera/DualSightVideoModule$16$8$5;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/DualSightVideoModule$16$8$5;-><init>(Lcom/android/camera/DualSightVideoModule$16$8;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v12, v13}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 2290
    :cond_6
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v1, v1, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$1200(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/async/MainThread;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v2, v2, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v2}, Lcom/android/camera/DualSightVideoModule;->access$2600(Lcom/android/camera/DualSightVideoModule;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v8, v9}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;J)V

    goto/16 :goto_0
.end method

.method public onSetupFailed()V
    .locals 3

    .prologue
    .line 2122
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onSetupFailed"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2123
    invoke-static {}, Lcom/android/camera/DualSightVideoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetupFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule$16$8;->val$camera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v2}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2128
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$4600(Lcom/android/camera/DualSightVideoModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2129
    invoke-static {}, Lcom/android/camera/DualSightVideoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Could not set up preview."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2130
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1200(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/DualSightVideoModule$16$8$1;

    invoke-direct {v1, p0}, Lcom/android/camera/DualSightVideoModule$16$8$1;-><init>(Lcom/android/camera/DualSightVideoModule$16$8;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 2144
    return-void
.end method
