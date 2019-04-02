.class public Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;
.super Ljava/lang/Object;
.source "PicSelfiePreviewRendererHandler.java"

# interfaces
.implements Lcom/android/camera/opengl/PreviewRendererHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;,
        Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;
    }
.end annotation


# static fields
.field private static MAX_PREVIEW_IMAGE:I = 0x0

.field public static final MSG_FRAME_AVAILABLE:I = 0x3

.field public static final MSG_INIT:I = 0x1

.field public static final MSG_RELEASE:I = 0x6

.field public static final MSG_SET_BOKEH_LEVEL:I = 0x4

.field public static final MSG_SET_OUTPUT_SURFACE:I = 0x2

.field public static final MSG_UPDATE_PREVIEW:I = 0x5

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mAppController:Lcom/android/camera/app/AppController;

.field private mBeautyEffectEngine:Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;

.field private mEverPicSelfieVideoEngine:Lcom/thirdparty/imagelab/EverPicSelfieVideo;

.field private mFaceDetectionListener:Lcom/android/camera/one/OneCamera$FaceDetectionListener;

.field private mFaceList:[Landroid/hardware/camera2/params/Face;

.field private mIinited:Z

.field private final mPicSelfieVideoEngine:Lcom/thirdparty/arcsoft/ArcsoftPicSelfieVideo;

.field private final mPreviewProcessor:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;

.field private final mRendererHandler:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;

.field private mSensorActiveArray:Landroid/graphics/Rect;

.field private final mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mSurfaceHeight:I

.field private final mSurfaceWidth:I

.field private mWindowSurfaceReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PicSelfiePreviewRendererHandler"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 78
    const/4 v0, 0x5

    sput v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->MAX_PREVIEW_IMAGE:I

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
    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mIinited:Z

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mWindowSurfaceReady:Z

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mSensorActiveArray:Landroid/graphics/Rect;

    .line 485
    iput-object p1, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mAppController:Lcom/android/camera/app/AppController;

    .line 486
    iput p4, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mSurfaceWidth:I

    .line 487
    iput p5, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mSurfaceHeight:I

    .line 489
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 492
    invoke-interface {p2}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorInfoActiveArraySize()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mSensorActiveArray:Landroid/graphics/Rect;

    .line 495
    new-instance v8, Landroid/os/HandlerThread;

    const-string v0, "PicSelfiePreview.RendererHandler"

    invoke-direct {v8, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 496
    .local v8, "previewEglThread":Landroid/os/HandlerThread;
    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 497
    new-instance v1, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;

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

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;-><init>(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;Landroid/os/Looper;ZI)V

    iput-object v1, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mRendererHandler:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;

    .line 498
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mRendererHandler:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 500
    new-instance v9, Landroid/os/HandlerThread;

    const-string v0, "PicSelfiePreview.PreviewProcessor"

    invoke-direct {v9, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 501
    .local v9, "previewProcThread":Landroid/os/HandlerThread;
    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    .line 502
    new-instance v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget v4, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mSurfaceWidth:I

    iget v5, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mSurfaceHeight:I

    move-object v1, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;-><init>(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;Landroid/os/Looper;Lcom/android/camera/async/Lifetime;II)V

    iput-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mPreviewProcessor:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;

    .line 503
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mPreviewProcessor:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 505
    invoke-static {}, Lcom/thirdparty/imagelab/EverPicSelfieVideo;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
    new-instance v0, Lcom/thirdparty/imagelab/EverPicSelfieVideo;

    iget v1, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mSurfaceWidth:I

    iget v2, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mSurfaceHeight:I

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/thirdparty/imagelab/EverPicSelfieVideo;-><init>(III)V

    iput-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mEverPicSelfieVideoEngine:Lcom/thirdparty/imagelab/EverPicSelfieVideo;

    .line 507
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mPicSelfieVideoEngine:Lcom/thirdparty/arcsoft/ArcsoftPicSelfieVideo;

    .line 513
    :goto_1
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080412

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 514
    .local v7, "level":I
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mPreviewProcessor:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v7, v2, v3}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 517
    sget-object v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "FaceDetect listener"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 518
    new-instance v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$1;

    invoke-direct {v0, p0}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$1;-><init>(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)V

    iput-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mFaceDetectionListener:Lcom/android/camera/one/OneCamera$FaceDetectionListener;

    .line 532
    return-void

    .line 497
    .end local v7    # "level":I
    .end local v9    # "previewProcThread":Landroid/os/HandlerThread;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 509
    .restart local v9    # "previewProcThread":Landroid/os/HandlerThread;
    :cond_1
    new-instance v1, Lcom/thirdparty/arcsoft/ArcsoftPicSelfieVideo;

    iget v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mSurfaceWidth:I

    int-to-long v2, v0

    iget v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mSurfaceHeight:I

    int-to-long v4, v0

    const/16 v6, 0x11

    invoke-direct/range {v1 .. v6}, Lcom/thirdparty/arcsoft/ArcsoftPicSelfieVideo;-><init>(JJI)V

    iput-object v1, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mPicSelfieVideoEngine:Lcom/thirdparty/arcsoft/ArcsoftPicSelfieVideo;

    .line 510
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mEverPicSelfieVideoEngine:Lcom/thirdparty/imagelab/EverPicSelfieVideo;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    .prologue
    .line 75
    iget v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    .prologue
    .line 75
    iget v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Lcom/thirdparty/imagelab/EverPicSelfieVideo;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mEverPicSelfieVideoEngine:Lcom/thirdparty/imagelab/EverPicSelfieVideo;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Lcom/thirdparty/arcsoft/ArcsoftPicSelfieVideo;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mPicSelfieVideoEngine:Lcom/thirdparty/arcsoft/ArcsoftPicSelfieVideo;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mRendererHandler:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;

    return-object v0
.end method

.method static synthetic access$1300()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mPreviewProcessor:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mWindowSurfaceReady:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mWindowSurfaceReady:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mBeautyEffectEngine:Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;)Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;
    .param p1, "x1"    # Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mBeautyEffectEngine:Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mIinited:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mIinited:Z

    return p1
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->MAX_PREVIEW_IMAGE:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)[Landroid/hardware/camera2/params/Face;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mFaceList:[Landroid/hardware/camera2/params/Face;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;[Landroid/hardware/camera2/params/Face;)[Landroid/hardware/camera2/params/Face;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;
    .param p1, "x1"    # [Landroid/hardware/camera2/params/Face;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mFaceList:[Landroid/hardware/camera2/params/Face;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mSensorActiveArray:Landroid/graphics/Rect;

    return-object v0
.end method

.method private waitDone(Landroid/os/Handler;)Z
    .locals 5
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 685
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 686
    .local v2, "waitDoneLock":Ljava/lang/Object;
    new-instance v1, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$2;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$2;-><init>(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;Ljava/lang/Object;)V

    .line 694
    .local v1, "unlockRunnable":Ljava/lang/Runnable;
    monitor-enter v2

    .line 695
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 702
    :try_start_2
    monitor-exit v2

    .line 703
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 698
    :catch_0
    move-exception v0

    .line 699
    .local v0, "ex":Ljava/lang/InterruptedException;
    sget-object v3, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "waitDone interrupted"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 700
    const/4 v3, 0x0

    monitor-exit v2

    goto :goto_0

    .line 702
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
    .line 551
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 639
    iget-object v1, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 640
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mPreviewProcessor:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 642
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mPreviewProcessor:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 643
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mPreviewProcessor:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;

    invoke-direct {p0, v0}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->waitDone(Landroid/os/Handler;)Z

    .line 644
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mPreviewProcessor:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;

    invoke-virtual {v0}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 646
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mRendererHandler:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 647
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mRendererHandler:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 648
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mRendererHandler:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;

    invoke-direct {p0, v0}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->waitDone(Landroid/os/Handler;)Z

    .line 649
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mRendererHandler:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;

    invoke-virtual {v0}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 650
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mEverPicSelfieVideoEngine:Lcom/thirdparty/imagelab/EverPicSelfieVideo;

    invoke-static {}, Lcom/thirdparty/imagelab/EverPicSelfieVideo;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mEverPicSelfieVideoEngine:Lcom/thirdparty/imagelab/EverPicSelfieVideo;

    invoke-virtual {v0}, Lcom/thirdparty/imagelab/EverPicSelfieVideo;->release()V

    .line 655
    :goto_0
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mBeautyEffectEngine:Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mBeautyEffectEngine:Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;

    invoke-virtual {v0}, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->release()V

    .line 659
    :cond_0
    monitor-exit v1

    .line 660
    return-void

    .line 653
    :cond_1
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mPicSelfieVideoEngine:Lcom/thirdparty/arcsoft/ArcsoftPicSelfieVideo;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/ArcsoftPicSelfieVideo;->release()V

    goto :goto_0

    .line 659
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
    .line 609
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mFaceDetectionListener:Lcom/android/camera/one/OneCamera$FaceDetectionListener;

    return-object v0
.end method

.method public getFocusStateListener()Lcom/android/camera/one/OneCamera$FocusStateListener;
    .locals 1

    .prologue
    .line 614
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 619
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageGeneratorProvider()Lcom/android/camera/opengl/image/ImageGeneratorProvider;
    .locals 1

    .prologue
    .line 634
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMainInputSurface(Lcom/android/camera/util/Size;)Landroid/view/Surface;
    .locals 2
    .param p1, "previewSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 575
    iget-object v1, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 576
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    .line 579
    :goto_0
    return-object v0

    .line 577
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mRendererHandler:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;

    invoke-virtual {v0, p1}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->setPreviewSize(Lcom/android/camera/util/Size;)V

    .line 579
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mPreviewProcessor:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;

    invoke-virtual {v0}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->getMainInputSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0

    .line 577
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
    .line 589
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScaleGestureListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .locals 1

    .prologue
    .line 624
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSlaveInputSurface(Lcom/android/camera/util/Size;)Landroid/view/Surface;
    .locals 1
    .param p1, "previewSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 584
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSlavePreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Landroid/view/Surface;
    .locals 1
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "previewSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 594
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSurfaceHeight()I
    .locals 1

    .prologue
    .line 604
    iget v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mSurfaceHeight:I

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    .prologue
    .line 599
    iget v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mSurfaceWidth:I

    return v0
.end method

.method public getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 629
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 6
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 664
    iget-object v2, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 665
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v2

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    const-string v1, "pref_livebokeh_level_key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 669
    iget-object v1, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_livebokeh_level_key"

    iget-object v4, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080412

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    .line 670
    .local v0, "level":I
    iget-object v1, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mPreviewProcessor:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 666
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
    .line 556
    return-void
.end method

.method public setPreviewArea(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 561
    return-void
.end method

.method public setPreviewOutputSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v2, 0x0

    .line 536
    iget-object v1, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 537
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 541
    :goto_0
    return-void

    .line 538
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->mRendererHandler:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 538
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
    .line 546
    .local p2, "recordController":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public setTwiceShotDisableSlide(Z)V
    .locals 0
    .param p1, "isDisable"    # Z

    .prologue
    .line 566
    return-void
.end method

.method public setZoomParams(Lcom/android/camera/opengl/dualsight/DualSightZoomParams;)V
    .locals 0
    .param p1, "zoomParams"    # Lcom/android/camera/opengl/dualsight/DualSightZoomParams;

    .prologue
    .line 571
    return-void
.end method

.method public startRecord()V
    .locals 0

    .prologue
    .line 677
    return-void
.end method

.method public stopRecord()V
    .locals 0

    .prologue
    .line 682
    return-void
.end method
