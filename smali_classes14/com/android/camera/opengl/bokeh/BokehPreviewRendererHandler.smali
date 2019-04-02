.class public Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;
.super Ljava/lang/Object;
.source "BokehPreviewRendererHandler.java"

# interfaces
.implements Lcom/android/camera/opengl/PreviewRendererHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;,
        Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;
    }
.end annotation


# static fields
.field private static MAX_PREVIEW_IMAGE:I = 0x0

.field public static final MSG_FRAME_AVAILABLE:I = 0x3

.field public static final MSG_INIT:I = 0x1

.field public static final MSG_RELEASE:I = 0x8

.field public static final MSG_SET_BLURINTENSITY:I = 0x4

.field public static final MSG_SET_FACE_CENTER:I = 0x6

.field public static final MSG_SET_FOCUS_CENTER:I = 0x5

.field public static final MSG_SET_OUTPUT_SURFACE:I = 0x2

.field public static final MSG_UPDATE_PREVIEW:I = 0x7

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mAppController:Lcom/android/camera/app/AppController;

.field private mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

.field private final mDCVREngine:Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;

.field private final mFaceDetectionListener:Lcom/android/camera/one/OneCamera$FaceDetectionListener;

.field private final mFocusActiveStates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/OneCamera$AutoFocusState;",
            ">;"
        }
    .end annotation
.end field

.field private final mFocusStateListener:Lcom/android/camera/one/OneCamera$FocusStateListener;

.field private mIinited:Z

.field private final mPreviewProcessor:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;

.field private final mRendererHandler:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;

.field private final mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mSurfaceHeight:I

.field private final mSurfaceWidth:I

.field private mWindowSurfaceReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "BokehPreviewRendererHandler"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 67
    const/4 v0, 0x5

    sput v0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->MAX_PREVIEW_IMAGE:I

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/Lifetime;II)V
    .locals 13
    .param p1, "appController"    # Lcom/android/camera/app/AppController;
    .param p2, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p3, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mIinited:Z

    .line 78
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mWindowSurfaceReady:Z

    .line 83
    sget-object v2, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v2, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 400
    iput-object p1, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mAppController:Lcom/android/camera/app/AppController;

    .line 401
    move/from16 v0, p4

    iput v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mSurfaceWidth:I

    .line 402
    move/from16 v0, p5

    iput v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mSurfaceHeight:I

    .line 404
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 406
    new-instance v10, Landroid/os/HandlerThread;

    const-string v2, "BokehPreview.RendererHandler"

    invoke-direct {v10, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 407
    .local v10, "previewEglThread":Landroid/os/HandlerThread;
    invoke-virtual {v10}, Landroid/os/HandlerThread;->start()V

    .line 408
    new-instance v3, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-interface {p2}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v2

    sget-object v5, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v2, v5, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-interface {p2}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v5

    invoke-direct {v3, p0, v4, v2, v5}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;-><init>(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;Landroid/os/Looper;ZI)V

    iput-object v3, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mRendererHandler:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;

    .line 409
    iget-object v2, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mRendererHandler:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 411
    new-instance v11, Landroid/os/HandlerThread;

    const-string v2, "BokehPreview.previewProcThread"

    invoke-direct {v11, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 412
    .local v11, "previewProcThread":Landroid/os/HandlerThread;
    invoke-virtual {v11}, Landroid/os/HandlerThread;->start()V

    .line 413
    new-instance v2, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mSurfaceWidth:I

    iget v7, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mSurfaceHeight:I

    move-object v3, p0

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;-><init>(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;Landroid/os/Looper;Lcom/android/camera/async/Lifetime;II)V

    iput-object v2, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mPreviewProcessor:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;

    .line 414
    iget-object v2, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mPreviewProcessor:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 416
    new-instance v3, Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;

    iget v2, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mSurfaceWidth:I

    int-to-long v4, v2

    iget v2, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mSurfaceHeight:I

    int-to-long v6, v2

    const/16 v8, 0x11

    invoke-direct/range {v3 .. v8}, Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;-><init>(JJI)V

    iput-object v3, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mDCVREngine:Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;

    .line 417
    iget-object v2, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mDCVREngine:Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;

    invoke-interface {p2}, Lcom/android/camera/one/OneCameraCharacteristics;->getCalibrationData()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;->setCalibData([B)I

    .line 419
    iget-object v2, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_livebokeh_level_key"

    iget-object v5, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f080401

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v9

    .line 420
    .local v9, "level":I
    iget-object v2, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mPreviewProcessor:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v9, v4, v5}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 422
    invoke-interface {p2}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorInfoActiveArraySize()Landroid/graphics/Rect;

    move-result-object v12

    .line 423
    .local v12, "sensorInfoActiveArraySize":Landroid/graphics/Rect;
    new-instance v2, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$1;

    invoke-direct {v2, p0, v12}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$1;-><init>(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;Landroid/graphics/Rect;)V

    iput-object v2, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mFaceDetectionListener:Lcom/android/camera/one/OneCamera$FaceDetectionListener;

    .line 451
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mFocusActiveStates:Ljava/util/Set;

    .line 452
    iget-object v2, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mFocusActiveStates:Ljava/util/Set;

    sget-object v3, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 453
    iget-object v2, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mFocusActiveStates:Ljava/util/Set;

    sget-object v3, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 455
    new-instance v2, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$2;

    invoke-direct {v2, p0}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$2;-><init>(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;)V

    iput-object v2, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mFocusStateListener:Lcom/android/camera/one/OneCamera$FocusStateListener;

    .line 491
    return-void

    .line 408
    .end local v9    # "level":I
    .end local v11    # "previewProcThread":Landroid/os/HandlerThread;
    .end local v12    # "sensorInfoActiveArraySize":Landroid/graphics/Rect;
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    .prologue
    .line 64
    iget v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    .prologue
    .line 64
    iget v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mFocusActiveStates:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mWindowSurfaceReady:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mWindowSurfaceReady:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mIinited:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mIinited:Z

    return p1
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->MAX_PREVIEW_IMAGE:I

    return v0
.end method

.method static synthetic access$500()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;)Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mDCVREngine:Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;)Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mRendererHandler:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;)Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mPreviewProcessor:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;)Lcom/android/camera/one/OneCamera$AutoFocusState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;Lcom/android/camera/one/OneCamera$AutoFocusState;)Lcom/android/camera/one/OneCamera$AutoFocusState;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera$AutoFocusState;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    return-object p1
.end method

.method private waitDone(Landroid/os/Handler;)Z
    .locals 5
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 643
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 644
    .local v2, "waitDoneLock":Ljava/lang/Object;
    new-instance v1, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$3;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$3;-><init>(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;Ljava/lang/Object;)V

    .line 652
    .local v1, "unlockRunnable":Ljava/lang/Runnable;
    monitor-enter v2

    .line 653
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 660
    :try_start_2
    monitor-exit v2

    .line 661
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 656
    :catch_0
    move-exception v0

    .line 657
    .local v0, "ex":Ljava/lang/InterruptedException;
    sget-object v3, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "waitDone interrupted"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 658
    const/4 v3, 0x0

    monitor-exit v2

    goto :goto_0

    .line 660
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
    .line 510
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 600
    iget-object v1, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 601
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mPreviewProcessor:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 603
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mPreviewProcessor:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 604
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mPreviewProcessor:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;

    invoke-direct {p0, v0}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->waitDone(Landroid/os/Handler;)Z

    .line 605
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mPreviewProcessor:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;

    invoke-virtual {v0}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 607
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mRendererHandler:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 608
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mRendererHandler:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 609
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mRendererHandler:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;

    invoke-direct {p0, v0}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->waitDone(Landroid/os/Handler;)Z

    .line 610
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mRendererHandler:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;

    invoke-virtual {v0}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 612
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mDCVREngine:Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;->release()V

    .line 614
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mFocusActiveStates:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 616
    :cond_0
    monitor-exit v1

    .line 617
    return-void

    .line 616
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
    .line 570
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mFaceDetectionListener:Lcom/android/camera/one/OneCamera$FaceDetectionListener;

    return-object v0
.end method

.method public getFocusStateListener()Lcom/android/camera/one/OneCamera$FocusStateListener;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mFocusStateListener:Lcom/android/camera/one/OneCamera$FocusStateListener;

    return-object v0
.end method

.method public getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 580
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageGeneratorProvider()Lcom/android/camera/opengl/image/ImageGeneratorProvider;
    .locals 1

    .prologue
    .line 595
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMainInputSurface(Lcom/android/camera/util/Size;)Landroid/view/Surface;
    .locals 2
    .param p1, "previewSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 534
    iget-object v1, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 535
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    .line 537
    :goto_0
    return-object v0

    .line 536
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mPreviewProcessor:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;

    invoke-virtual {v0}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->getMainInputSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0

    .line 536
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
    .line 550
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScaleGestureListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .locals 1

    .prologue
    .line 585
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSlaveInputSurface(Lcom/android/camera/util/Size;)Landroid/view/Surface;
    .locals 2
    .param p1, "previewSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 542
    iget-object v1, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 543
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    .line 545
    :goto_0
    return-object v0

    .line 544
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mPreviewProcessor:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;

    invoke-virtual {v0}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->getSlaveInputSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0

    .line 544
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getSlavePreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Landroid/view/Surface;
    .locals 1
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "previewSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 555
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSurfaceHeight()I
    .locals 1

    .prologue
    .line 565
    iget v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mSurfaceHeight:I

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mSurfaceWidth:I

    return v0
.end method

.method public getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 590
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 5
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 621
    iget-object v2, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 622
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v2

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    const-string v1, "pref_livebokeh_level_key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 626
    iget-object v1, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_livebokeh_level_key"

    iget-object v3, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mAppController:Lcom/android/camera/app/AppController;

    .line 627
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080401

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 626
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    .line 628
    .local v0, "level":I
    iget-object v1, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mPreviewProcessor:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 623
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
    .line 515
    return-void
.end method

.method public setPreviewArea(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 520
    return-void
.end method

.method public setPreviewOutputSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v2, 0x0

    .line 495
    iget-object v1, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 496
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 500
    :goto_0
    return-void

    .line 497
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->mRendererHandler:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 497
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
    .line 505
    .local p2, "recordController":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public setTwiceShotDisableSlide(Z)V
    .locals 0
    .param p1, "isDisable"    # Z

    .prologue
    .line 525
    return-void
.end method

.method public setZoomParams(Lcom/android/camera/opengl/dualsight/DualSightZoomParams;)V
    .locals 0
    .param p1, "zoomParams"    # Lcom/android/camera/opengl/dualsight/DualSightZoomParams;

    .prologue
    .line 530
    return-void
.end method

.method public startRecord()V
    .locals 0

    .prologue
    .line 635
    return-void
.end method

.method public stopRecord()V
    .locals 0

    .prologue
    .line 640
    return-void
.end method
