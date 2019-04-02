.class public Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;
.super Ljava/lang/Object;
.source "BeautyPreviewRendererHandler.java"

# interfaces
.implements Lcom/android/camera/opengl/PreviewRendererHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;,
        Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;
    }
.end annotation


# static fields
.field private static MAX_PREVIEW_IMAGE:I = 0x0

.field public static final MSG_FRAME_AVAILABLE:I = 0x3

.field public static final MSG_INIT:I = 0x1

.field public static final MSG_RELEASE:I = 0x6

.field public static final MSG_SET_BEAUTY_LEVEL:I = 0x4

.field public static final MSG_SET_OUTPUT_SURFACE:I = 0x2

.field public static final MSG_UPDATE_PREVIEW:I = 0x5

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mAppController:Lcom/android/camera/app/AppController;

.field private final mBeautyVideoEngine:Lcom/thirdparty/arcsoft/ArcsoftBeautyVideo;

.field private mIinited:Z

.field private final mPreviewProcessor:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;

.field private final mRendererHandler:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;

.field private final mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mSurfaceHeight:I

.field private final mSurfaceWidth:I

.field private mWindowSurfaceReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "BeautyPreviewRendererHandler"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 64
    const/4 v0, 0x5

    sput v0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->MAX_PREVIEW_IMAGE:I

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/Lifetime;II)V
    .locals 10
    .param p1, "appController"    # Lcom/android/camera/app/AppController;
    .param p2, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p3, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mIinited:Z

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mWindowSurfaceReady:Z

    .line 302
    iput-object p1, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mAppController:Lcom/android/camera/app/AppController;

    .line 303
    iput p4, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mSurfaceWidth:I

    .line 304
    iput p5, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mSurfaceHeight:I

    .line 306
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 308
    new-instance v8, Landroid/os/HandlerThread;

    const-string v0, "BeautyPreview.RendererHandler"

    invoke-direct {v8, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 309
    .local v8, "previewEglThread":Landroid/os/HandlerThread;
    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 310
    new-instance v1, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-interface {p2}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p2}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v3

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;-><init>(Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;Landroid/os/Looper;ZI)V

    iput-object v1, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mRendererHandler:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;

    .line 311
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mRendererHandler:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 313
    new-instance v9, Landroid/os/HandlerThread;

    const-string v0, "BeautyPreview.PreviewProcessor"

    invoke-direct {v9, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 314
    .local v9, "previewProcThread":Landroid/os/HandlerThread;
    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    .line 315
    new-instance v0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget v4, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mSurfaceWidth:I

    iget v5, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mSurfaceHeight:I

    move-object v1, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;-><init>(Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;Landroid/os/Looper;Lcom/android/camera/async/Lifetime;II)V

    iput-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mPreviewProcessor:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;

    .line 316
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mPreviewProcessor:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 318
    new-instance v1, Lcom/thirdparty/arcsoft/ArcsoftBeautyVideo;

    iget v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mSurfaceWidth:I

    int-to-long v2, v0

    iget v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mSurfaceHeight:I

    int-to-long v4, v0

    const/16 v6, 0x11

    invoke-direct/range {v1 .. v6}, Lcom/thirdparty/arcsoft/ArcsoftBeautyVideo;-><init>(JJI)V

    iput-object v1, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mBeautyVideoEngine:Lcom/thirdparty/arcsoft/ArcsoftBeautyVideo;

    .line 320
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_beauty_level_key"

    iget-object v3, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08035f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v7

    .line 321
    .local v7, "level":I
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mPreviewProcessor:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v7, v2, v3}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 322
    return-void

    .line 310
    .end local v7    # "level":I
    .end local v9    # "previewProcThread":Landroid/os/HandlerThread;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mWindowSurfaceReady:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mWindowSurfaceReady:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mIinited:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mIinited:Z

    return p1
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->MAX_PREVIEW_IMAGE:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;)Lcom/thirdparty/arcsoft/ArcsoftBeautyVideo;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mBeautyVideoEngine:Lcom/thirdparty/arcsoft/ArcsoftBeautyVideo;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;)Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mRendererHandler:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;

    return-object v0
.end method

.method static synthetic access$700()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;)Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mPreviewProcessor:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;

    return-object v0
.end method

.method private waitDone(Landroid/os/Handler;)Z
    .locals 5
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 469
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 470
    .local v2, "waitDoneLock":Ljava/lang/Object;
    new-instance v1, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$1;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$1;-><init>(Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;Ljava/lang/Object;)V

    .line 478
    .local v1, "unlockRunnable":Ljava/lang/Runnable;
    monitor-enter v2

    .line 479
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 486
    :try_start_2
    monitor-exit v2

    .line 487
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "ex":Ljava/lang/InterruptedException;
    sget-object v3, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "waitDone interrupted"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 484
    const/4 v3, 0x0

    monitor-exit v2

    goto :goto_0

    .line 486
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
    .locals 0

    .prologue
    .line 341
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 428
    iget-object v1, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mPreviewProcessor:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 431
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mPreviewProcessor:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 432
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mPreviewProcessor:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;

    invoke-direct {p0, v0}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->waitDone(Landroid/os/Handler;)Z

    .line 433
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mPreviewProcessor:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;

    invoke-virtual {v0}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 435
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mRendererHandler:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 436
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mRendererHandler:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 437
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mRendererHandler:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;

    invoke-direct {p0, v0}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->waitDone(Landroid/os/Handler;)Z

    .line 438
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mRendererHandler:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;

    invoke-virtual {v0}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 440
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mBeautyVideoEngine:Lcom/thirdparty/arcsoft/ArcsoftBeautyVideo;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/ArcsoftBeautyVideo;->release()V

    .line 442
    :cond_0
    monitor-exit v1

    .line 443
    return-void

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFaceDetectionListener()Lcom/android/camera/one/OneCamera$FaceDetectionListener;
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFocusStateListener()Lcom/android/camera/one/OneCamera$FocusStateListener;
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageGeneratorProvider()Lcom/android/camera/opengl/image/ImageGeneratorProvider;
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMainInputSurface(Lcom/android/camera/util/Size;)Landroid/view/Surface;
    .locals 2
    .param p1, "previewSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 365
    iget-object v1, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    .line 368
    :goto_0
    return-object v0

    .line 367
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mPreviewProcessor:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;

    invoke-virtual {v0}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->getMainInputSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0

    .line 367
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
    .line 378
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScaleGestureListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSlaveInputSurface(Lcom/android/camera/util/Size;)Landroid/view/Surface;
    .locals 1
    .param p1, "previewSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 373
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSlavePreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Landroid/view/Surface;
    .locals 1
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "previewSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 383
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSurfaceHeight()I
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mSurfaceHeight:I

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    .prologue
    .line 388
    iget v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mSurfaceWidth:I

    return v0
.end method

.method public getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 5
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 447
    iget-object v2, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 448
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v2

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    const-string v1, "pref_beauty_level_key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_beauty_level_key"

    iget-object v3, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mAppController:Lcom/android/camera/app/AppController;

    .line 453
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08035f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 452
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    .line 454
    .local v0, "level":I
    iget-object v1, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mPreviewProcessor:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 449
    .end local v0    # "level":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setGestureChangedListener(Lcom/android/camera/opengl/GestureChangedListener;)V
    .locals 0
    .param p1, "gestureChangedListener"    # Lcom/android/camera/opengl/GestureChangedListener;

    .prologue
    .line 346
    return-void
.end method

.method public setPreviewArea(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 351
    return-void
.end method

.method public setPreviewOutputSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v2, 0x0

    .line 326
    iget-object v1, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 331
    :goto_0
    return-void

    .line 328
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->mRendererHandler:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 328
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setRecordOutputSurface(Landroid/view/Surface;Lcom/android/camera/async/Observable;I)V
    .locals 0
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
    .line 336
    .local p2, "recordController":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public setTwiceShotDisableSlide(Z)V
    .locals 0
    .param p1, "isDisable"    # Z

    .prologue
    .line 356
    return-void
.end method

.method public setZoomParams(Lcom/android/camera/opengl/dualsight/DualSightZoomParams;)V
    .locals 0
    .param p1, "zoomParams"    # Lcom/android/camera/opengl/dualsight/DualSightZoomParams;

    .prologue
    .line 361
    return-void
.end method

.method public startRecord()V
    .locals 0

    .prologue
    .line 461
    return-void
.end method

.method public stopRecord()V
    .locals 0

    .prologue
    .line 466
    return-void
.end method
