.class public Lcom/android/camera/opengl/video/VideoPreviewRender;
.super Ljava/lang/Object;
.source "VideoPreviewRender.java"

# interfaces
.implements Lcom/android/camera/opengl/PreviewRendererHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;
    }
.end annotation


# static fields
.field public static final MSG_CLEAR_RECORD_OUTPUT_SURFACE:I = 0x5

.field public static final MSG_EFFECT_MDOE_CHANGED:I = 0x7

.field public static final MSG_FRAME_AVAILABLE:I = 0x6

.field public static final MSG_INIT:I = 0x1

.field public static final MSG_RELEASE:I = 0x8

.field public static final MSG_SET_PREVIEW_OUTPUT_SURFACE:I = 0x2

.field public static final MSG_SET_RECORD_CONTROLLER:I = 0x4

.field public static final MSG_SET_RECORD_OUTPUT_SURFACE:I = 0x3

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mAppController:Lcom/android/camera/app/AppController;

.field private final mMainCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private mOrientation:I

.field private final mRendererHandler:Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;

.field private final mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mSurfaceHeight:I

.field private final mSurfaceWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "VideoPreviewRender"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/opengl/video/VideoPreviewRender;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCameraCaptureSetting;II)V
    .locals 8
    .param p1, "appController"    # Lcom/android/camera/app/AppController;
    .param p2, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p3, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p4, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mOrientation:I

    .line 660
    iput-object p1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mAppController:Lcom/android/camera/app/AppController;

    .line 661
    iput p5, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mSurfaceWidth:I

    .line 662
    iput p6, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mSurfaceHeight:I

    .line 663
    iput-object p2, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mMainCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 664
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 666
    new-instance v7, Landroid/os/HandlerThread;

    const-string v0, "VideoPreview.RendererHandler"

    invoke-direct {v7, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 667
    .local v7, "previewEglThread":Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 668
    new-instance v0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;

    invoke-interface {p1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mAppController:Lcom/android/camera/app/AppController;

    .line 669
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v4, "default_scope"

    const-string v5, "pref_camera_effect_mode_key"

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/opengl/effect/EffectMode;->fromValue(I)Lcom/android/camera/opengl/effect/EffectMode;

    move-result-object v4

    invoke-virtual {p4}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isBeautyAllow(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v5

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;-><init>(Lcom/android/camera/opengl/video/VideoPreviewRender;Landroid/content/Context;Landroid/os/Looper;Lcom/android/camera/opengl/effect/EffectMode;ZLcom/android/camera/one/OneCameraCharacteristics;)V

    iput-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;

    .line 670
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 673
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;

    invoke-direct {p0, v0}, Lcom/android/camera/opengl/video/VideoPreviewRender;->waitDone(Landroid/os/Handler;)Z

    .line 674
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/opengl/video/VideoPreviewRender;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/video/VideoPreviewRender;

    .prologue
    .line 66
    iget v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/opengl/video/VideoPreviewRender;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/video/VideoPreviewRender;

    .prologue
    .line 66
    iget v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$200()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/camera/opengl/video/VideoPreviewRender;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/opengl/video/VideoPreviewRender;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/video/VideoPreviewRender;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method private waitDone(Landroid/os/Handler;)Z
    .locals 5
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 834
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 835
    .local v2, "waitDoneLock":Ljava/lang/Object;
    new-instance v1, Lcom/android/camera/opengl/video/VideoPreviewRender$1;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/opengl/video/VideoPreviewRender$1;-><init>(Lcom/android/camera/opengl/video/VideoPreviewRender;Ljava/lang/Object;)V

    .line 843
    .local v1, "unlockRunnable":Ljava/lang/Runnable;
    monitor-enter v2

    .line 844
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 846
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 851
    :try_start_2
    monitor-exit v2

    .line 852
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 847
    :catch_0
    move-exception v0

    .line 848
    .local v0, "ex":Ljava/lang/InterruptedException;
    sget-object v3, Lcom/android/camera/opengl/video/VideoPreviewRender;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "waitDone interrupted"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 849
    const/4 v3, 0x0

    monitor-exit v2

    goto :goto_0

    .line 851
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method


# virtual methods
.method public clearRecordOutputSurface()V
    .locals 2

    .prologue
    .line 697
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 698
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 701
    :goto_0
    return-void

    .line 699
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 699
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 787
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/opengl/video/VideoPreviewRender;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/stats/profiler/GuardingProfiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 788
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iget-object v2, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 789
    :try_start_0
    const-string v1, "sync done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 790
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 791
    const-string v1, "not stop before, stop it"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 792
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 793
    const-string v1, "removeCallbacksAndMessages"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 794
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 795
    const-string v1, "MSG_RELEASE sent"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 796
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;

    invoke-direct {p0, v1}, Lcom/android/camera/opengl/video/VideoPreviewRender;->waitDone(Landroid/os/Handler;)Z

    .line 797
    const-string v1, "waitDone OK"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 798
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;

    invoke-virtual {v1}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    .line 799
    const-string v1, "quitSafely OK"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 801
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 803
    return-void

    .line 801
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getFaceDetectionListener()Lcom/android/camera/one/OneCamera$FaceDetectionListener;
    .locals 1

    .prologue
    .line 757
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFocusStateListener()Lcom/android/camera/one/OneCamera$FocusStateListener;
    .locals 1

    .prologue
    .line 762
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 767
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageGeneratorProvider()Lcom/android/camera/opengl/image/ImageGeneratorProvider;
    .locals 1

    .prologue
    .line 782
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMainInputSurface(Lcom/android/camera/util/Size;)Landroid/view/Surface;
    .locals 2
    .param p1, "previewSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 724
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 725
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    .line 727
    :goto_0
    return-object v0

    .line 726
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 727
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;

    invoke-virtual {v0, p1}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->getMainInputSurface(Lcom/android/camera/util/Size;)Landroid/view/Surface;

    move-result-object v0

    goto :goto_0

    .line 726
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getMainPreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Landroid/view/Surface;
    .locals 1
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "previewSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->getMainPreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getScaleGestureListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .locals 1

    .prologue
    .line 772
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSlaveInputSurface(Lcom/android/camera/util/Size;)Landroid/view/Surface;
    .locals 1
    .param p1, "previewSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 732
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSlavePreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Landroid/view/Surface;
    .locals 1
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "previewSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 742
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSurfaceHeight()I
    .locals 1

    .prologue
    .line 752
    iget v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mSurfaceHeight:I

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    .prologue
    .line 747
    iget v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mSurfaceWidth:I

    return v0
.end method

.method public getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 777
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 4
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x7

    .line 807
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 808
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 809
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    const-string v0, "pref_camera_effect_mode_key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;

    invoke-virtual {v0, v3}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->removeMessages(I)V

    .line 813
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;

    const-string v1, "default_scope"

    const-string v2, "pref_camera_effect_mode_key"

    invoke-virtual {p1, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/opengl/effect/EffectMode;->fromValue(I)Lcom/android/camera/opengl/effect/EffectMode;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 809
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setGestureChangedListener(Lcom/android/camera/opengl/GestureChangedListener;)V
    .locals 0
    .param p1, "gestureChangedListener"    # Lcom/android/camera/opengl/GestureChangedListener;

    .prologue
    .line 706
    return-void
.end method

.method public setPreviewArea(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 710
    return-void
.end method

.method public setPreviewOutputSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v2, 0x0

    .line 678
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 679
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 683
    :goto_0
    return-void

    .line 680
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 680
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setRecordOutputSurface(Landroid/view/Surface;Lcom/android/camera/async/Observable;I)V
    .locals 3
    .param p1, "recordOutputSurface"    # Landroid/view/Surface;
    .param p3, "recordOrientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, "recordController":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    .line 687
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 688
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 689
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    if-eqz p1, :cond_0

    .line 691
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2, v2, p2}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 692
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p3, v2, p1}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 689
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setTwiceShotDisableSlide(Z)V
    .locals 0
    .param p1, "isDisable"    # Z

    .prologue
    .line 715
    return-void
.end method

.method public setZoomParams(Lcom/android/camera/opengl/dualsight/DualSightZoomParams;)V
    .locals 0
    .param p1, "zoomParams"    # Lcom/android/camera/opengl/dualsight/DualSightZoomParams;

    .prologue
    .line 720
    return-void
.end method

.method public startRecord()V
    .locals 2

    .prologue
    .line 819
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 820
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 823
    :goto_0
    return-void

    .line 821
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 822
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;

    invoke-virtual {v0}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->startRecord()V

    goto :goto_0

    .line 821
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stopRecord()V
    .locals 2

    .prologue
    .line 827
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 828
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 831
    :goto_0
    return-void

    .line 829
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 830
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;

    invoke-virtual {v0}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->stopRecord()V

    goto :goto_0

    .line 829
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
