.class public Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;
.super Ljava/lang/Object;
.source "DualSightPreviewRender.java"

# interfaces
.implements Lcom/android/camera/opengl/PreviewRendererHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;
    }
.end annotation


# static fields
.field public static final MSG_CLEAR_RECORD_OUTPUT_SURFACE:I = 0x5

.field public static final MSG_DUAL_SIGHT_MDOE_CHANGED:I = 0x7

.field public static final MSG_EFFECT_KEY_CHANGED:I = 0xc

.field public static final MSG_EFFECT_MDOE_CHANGED:I = 0x8

.field public static final MSG_FRAME_AVAILABLE:I = 0x6

.field public static final MSG_INIT:I = 0x1

.field public static final MSG_LINE_WINDOW_DRAG_END:I = 0xf

.field public static final MSG_LINE_WINDOW_DRAG_START:I = 0xd

.field public static final MSG_LINE_WINDOW_POS_OFFSET:I = 0xe

.field public static final MSG_RELEASE:I = 0x10

.field public static final MSG_SET_PREVIEW_OUTPUT_SURFACE:I = 0x2

.field public static final MSG_SET_RECORD_CONTROLLER:I = 0x4

.field public static final MSG_SET_RECORD_OUTPUT_SURFACE:I = 0x3

.field public static final MSG_SUB_WINDOW_DRAG_END:I = 0xb

.field public static final MSG_SUB_WINDOW_DRAG_START:I = 0x9

.field public static final MSG_SUB_WINDOW_POS_OFFSET:I = 0xa

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field final DRAG_LINE_TOLERANCE:F

.field private final mAppController:Lcom/android/camera/app/AppController;

.field private final mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

.field private mCurPreviewArea:Landroid/graphics/RectF;

.field private mGestureChangedListener:Lcom/android/camera/opengl/GestureChangedListener;

.field private mHalfPreviewHeight:F

.field private mHalfPreviewWidth:F

.field private mIsMovingLineWindow:Z

.field private mIsMovingSubWindow:Z

.field private mIsTwiceShotDisableSlide:Z

.field private mLimitedPreviewRatio:F

.field private mLineWidthRatio:F

.field private final mMainCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private mPreviewArea:Landroid/graphics/RectF;

.field private final mRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mRendererHandler:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

.field private mScreenRatio:F

.field private final mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mSurfaceHeight:I

.field private final mSurfaceWidth:I

.field private mZoomParams:Lcom/android/camera/opengl/dualsight/DualSightZoomParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "DSPreviewRender"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCameraCaptureSetting;II)V
    .locals 11
    .param p1, "appController"    # Lcom/android/camera/app/AppController;
    .param p2, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p3, "slaveCameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p4, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p5, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 1435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mIsMovingSubWindow:Z

    .line 99
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mIsMovingLineWindow:Z

    .line 101
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mIsTwiceShotDisableSlide:Z

    .line 103
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mScreenRatio:F

    .line 112
    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->DRAG_LINE_TOLERANCE:F

    .line 141
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mCurPreviewArea:Landroid/graphics/RectF;

    .line 1436
    iput-object p1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mAppController:Lcom/android/camera/app/AppController;

    .line 1437
    invoke-virtual/range {p5 .. p5}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 1438
    move/from16 v0, p6

    iput v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mSurfaceWidth:I

    .line 1439
    move/from16 v0, p7

    iput v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mSurfaceHeight:I

    .line 1440
    iput-object p2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mMainCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 1441
    iput-object p3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 1443
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1444
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1446
    new-instance v10, Landroid/os/HandlerThread;

    const-string v1, "DualSightPreview.RendererHandler"

    invoke-direct {v10, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1447
    .local v10, "previewEglThread":Landroid/os/HandlerThread;
    invoke-virtual {v10}, Landroid/os/HandlerThread;->start()V

    .line 1448
    new-instance v1, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    invoke-interface {p1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v5, "default_scope"

    const-string v6, "pref_camera_screen_key"

    invoke-virtual {v2, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->getDualSightMode(I)Lcom/android/camera/opengl/dualsight/DualSightMode;

    move-result-object v5

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v6, "default_scope"

    const-string v7, "pref_camera_effect_mode_key"

    invoke-virtual {v2, v6, v7}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/opengl/effect/EffectMode;->fromValue(I)Lcom/android/camera/opengl/effect/EffectMode;

    move-result-object v6

    invoke-virtual/range {p5 .. p5}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isBeautyAllow(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v7

    move-object v2, p0

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;-><init>(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;Landroid/content/Context;Landroid/os/Looper;Lcom/android/camera/opengl/dualsight/DualSightMode;Lcom/android/camera/opengl/effect/EffectMode;ZLcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;)V

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    .line 1449
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1452
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    invoke-direct {p0, v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->waitDone(Landroid/os/Handler;)Z

    .line 1453
    return-void
.end method

.method static synthetic access$000(Landroid/content/res/Resources;I)F
    .locals 1
    .param p0, "x0"    # Landroid/content/res/Resources;
    .param p1, "x1"    # I

    .prologue
    .line 84
    invoke-static {p0, p1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->getResourcesValue(Landroid/content/res/Resources;I)F

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    .prologue
    .line 84
    iget v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mLimitedPreviewRatio:F

    return v0
.end method

.method static synthetic access$1100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/GestureChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mGestureChangedListener:Lcom/android/camera/opengl/GestureChangedListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/dualsight/DualSightZoomParams;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mZoomParams:Lcom/android/camera/opengl/dualsight/DualSightZoomParams;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;Lcom/android/camera/opengl/dualsight/DualSightZoomParams;)Lcom/android/camera/opengl/dualsight/DualSightZoomParams;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;
    .param p1, "x1"    # Lcom/android/camera/opengl/dualsight/DualSightZoomParams;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mZoomParams:Lcom/android/camera/opengl/dualsight/DualSightZoomParams;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mMainCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mIsMovingSubWindow:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mIsMovingSubWindow:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    .prologue
    .line 84
    iget v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    .prologue
    .line 84
    iget v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mHalfPreviewWidth:F

    return v0
.end method

.method static synthetic access$2400(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mIsTwiceShotDisableSlide:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    .prologue
    .line 84
    iget v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    .prologue
    .line 84
    iget v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mScreenRatio:F

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;
    .param p1, "x1"    # F

    .prologue
    .line 84
    iput p1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mScreenRatio:F

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mCurPreviewArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;
    .param p1, "x1"    # Landroid/graphics/RectF;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mCurPreviewArea:Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mPreviewArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    .prologue
    .line 84
    iget v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mHalfPreviewHeight:F

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mIsMovingLineWindow:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mIsMovingLineWindow:Z

    return p1
.end method

.method static synthetic access$900()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method private getDualSightMode(I)Lcom/android/camera/opengl/dualsight/DualSightMode;
    .locals 3
    .param p1, "curDualSightSetting"    # I

    .prologue
    .line 1968
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode;->NORMAL_MAIN:Lcom/android/camera/opengl/dualsight/DualSightMode;

    .line 1969
    .local v0, "dualSightMode":Lcom/android/camera/opengl/dualsight/DualSightMode;
    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1970
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0803c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 1971
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_UP_SLAVE_DOWN:Lcom/android/camera/opengl/dualsight/DualSightMode;

    .line 1975
    :cond_0
    :goto_0
    return-object v0

    .line 1972
    :cond_1
    const v2, 0x7f0803c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 1973
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_FULL_SLAVE_SUB:Lcom/android/camera/opengl/dualsight/DualSightMode;

    goto :goto_0
.end method

.method private static getResourcesValue(Landroid/content/res/Resources;I)F
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resourceId"    # I

    .prologue
    .line 1979
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1980
    .local v0, "typedValue":Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1981
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    return v1
.end method

.method private waitDone(Landroid/os/Handler;)Z
    .locals 5
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1946
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1947
    .local v2, "waitDoneLock":Ljava/lang/Object;
    new-instance v1, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$3;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$3;-><init>(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;Ljava/lang/Object;)V

    .line 1955
    .local v1, "unlockRunnable":Ljava/lang/Runnable;
    monitor-enter v2

    .line 1956
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1958
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1963
    :try_start_2
    monitor-exit v2

    .line 1964
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 1959
    :catch_0
    move-exception v0

    .line 1960
    .local v0, "ex":Ljava/lang/InterruptedException;
    sget-object v3, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "waitDone interrupted"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1961
    const/4 v3, 0x0

    monitor-exit v2

    goto :goto_0

    .line 1963
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
    .line 1476
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 1477
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 1480
    :goto_0
    return-void

    .line 1478
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1479
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1478
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
    .line 1844
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/stats/profiler/GuardingProfiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 1845
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 1846
    :try_start_0
    const-string v1, "sync done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1847
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1848
    const-string v1, "not stop before, stop it"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1849
    iget-boolean v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mIsMovingSubWindow:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mIsMovingLineWindow:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mGestureChangedListener:Lcom/android/camera/opengl/GestureChangedListener;

    if-eqz v1, :cond_1

    .line 1850
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mGestureChangedListener:Lcom/android/camera/opengl/GestureChangedListener;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lcom/android/camera/opengl/GestureChangedListener;->onMoveStopped(Z)V

    .line 1852
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mIsMovingSubWindow:Z

    .line 1853
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mIsMovingLineWindow:Z

    .line 1854
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1855
    const-string v1, "removeCallbacksAndMessages"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1856
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1857
    const-string v1, "MSG_RELEASE sent"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1858
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    invoke-direct {p0, v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->waitDone(Landroid/os/Handler;)Z

    .line 1859
    const-string v1, "waitDone OK"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1860
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    invoke-virtual {v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    .line 1861
    const-string v1, "quitSafely OK"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1863
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1864
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 1865
    return-void

    .line 1863
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getCurPreviewArea()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mCurPreviewArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getCurrentDualSightMode()Lcom/android/camera/opengl/dualsight/DualSightMode;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    invoke-virtual {v0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->getCurrentDualSightMode()Lcom/android/camera/opengl/dualsight/DualSightMode;

    move-result-object v0

    return-object v0
.end method

.method public getFaceDetectionListener()Lcom/android/camera/one/OneCamera$FaceDetectionListener;
    .locals 1

    .prologue
    .line 1561
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFocusStateListener()Lcom/android/camera/one/OneCamera$FocusStateListener;
    .locals 1

    .prologue
    .line 1566
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 1571
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageGeneratorProvider()Lcom/android/camera/opengl/image/ImageGeneratorProvider;
    .locals 1

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    return-object v0
.end method

.method public getMainInputSurface(Lcom/android/camera/util/Size;)Landroid/view/Surface;
    .locals 2
    .param p1, "previewSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 1519
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 1520
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    .line 1522
    :goto_0
    return-object v0

    .line 1521
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1522
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    invoke-virtual {v0, p1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->getMainInputSurface(Lcom/android/camera/util/Size;)Landroid/view/Surface;

    move-result-object v0

    goto :goto_0

    .line 1521
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getMainPreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Landroid/view/Surface;
    .locals 2
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "previewSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 1535
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 1536
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    .line 1538
    :goto_0
    return-object v0

    .line 1537
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1538
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->getMainPreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Landroid/view/Surface;

    move-result-object v0

    goto :goto_0

    .line 1537
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getScaleGestureListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .locals 1

    .prologue
    .line 1576
    new-instance v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;

    invoke-direct {v0, p0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$1;-><init>(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)V

    return-object v0
.end method

.method public getSlaveInputSurface(Lcom/android/camera/util/Size;)Landroid/view/Surface;
    .locals 2
    .param p1, "previewSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 1527
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 1528
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    .line 1530
    :goto_0
    return-object v0

    .line 1529
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1530
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    invoke-virtual {v0, p1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->getSlaveInputSurface(Lcom/android/camera/util/Size;)Landroid/view/Surface;

    move-result-object v0

    goto :goto_0

    .line 1529
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getSlavePreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Landroid/view/Surface;
    .locals 2
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "previewSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 1543
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 1544
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    .line 1546
    :goto_0
    return-object v0

    .line 1545
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1546
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->getSlavePreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Landroid/view/Surface;

    move-result-object v0

    goto :goto_0

    .line 1545
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getSurfaceHeight()I
    .locals 1

    .prologue
    .line 1556
    iget v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mSurfaceHeight:I

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    .prologue
    .line 1551
    iget v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mSurfaceWidth:I

    return v0
.end method

.method public getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 1668
    new-instance v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;

    invoke-direct {v0, p0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;-><init>(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)V

    return-object v0
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 6
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x7

    .line 1869
    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 1870
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v3

    .line 1921
    :cond_0
    :goto_0
    return-void

    .line 1871
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1873
    const-string v2, "pref_camera_screen_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1874
    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-static {v2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isDualSightMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1875
    const-string v2, "default_scope"

    invoke-virtual {p1, v2, p2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->getDualSightMode(I)Lcom/android/camera/opengl/dualsight/DualSightMode;

    move-result-object v0

    .line 1876
    .local v0, "curDualSightMode":Lcom/android/camera/opengl/dualsight/DualSightMode;
    invoke-static {v0}, Lcom/android/camera/opengl/dualsight/DualSightMode;->isSingleSight(Lcom/android/camera/opengl/dualsight/DualSightMode;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1877
    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    invoke-virtual {v2, v4}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->removeMessages(I)V

    .line 1878
    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    invoke-virtual {v2, v4, v0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1879
    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mGestureChangedListener:Lcom/android/camera/opengl/GestureChangedListener;

    if-eqz v2, :cond_0

    .line 1880
    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mGestureChangedListener:Lcom/android/camera/opengl/GestureChangedListener;

    invoke-interface {v2, v0}, Lcom/android/camera/opengl/GestureChangedListener;->onDualSightChanged(Lcom/android/camera/opengl/dualsight/DualSightMode;)V

    goto :goto_0

    .line 1871
    .end local v0    # "curDualSightMode":Lcom/android/camera/opengl/dualsight/DualSightMode;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1883
    :cond_2
    const-string v2, "pref_camera_id_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1884
    const/4 v1, 0x0

    .line 1885
    .local v1, "nextMode":Lcom/android/camera/opengl/dualsight/DualSightMode;
    sget-object v2, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$4;->$SwitchMap$com$android$camera$opengl$dualsight$DualSightMode:[I

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    invoke-virtual {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->getCurrentDualSightMode()Lcom/android/camera/opengl/dualsight/DualSightMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/opengl/dualsight/DualSightMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1907
    :goto_1
    if-eqz v1, :cond_0

    .line 1908
    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    invoke-virtual {v2, v4}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->removeMessages(I)V

    .line 1909
    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    invoke-virtual {v2, v4, v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1910
    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mGestureChangedListener:Lcom/android/camera/opengl/GestureChangedListener;

    if-eqz v2, :cond_0

    .line 1911
    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mGestureChangedListener:Lcom/android/camera/opengl/GestureChangedListener;

    invoke-interface {v2, v1}, Lcom/android/camera/opengl/GestureChangedListener;->onDualSightChanged(Lcom/android/camera/opengl/dualsight/DualSightMode;)V

    goto :goto_0

    .line 1887
    :pswitch_0
    sget-object v1, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_UP_SLAVE_DOWN:Lcom/android/camera/opengl/dualsight/DualSightMode;

    .line 1888
    goto :goto_1

    .line 1890
    :pswitch_1
    sget-object v1, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_DOWN_SLAVE_UP:Lcom/android/camera/opengl/dualsight/DualSightMode;

    .line 1891
    goto :goto_1

    .line 1893
    :pswitch_2
    sget-object v1, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_SUB_SLAVE_FULL:Lcom/android/camera/opengl/dualsight/DualSightMode;

    .line 1894
    goto :goto_1

    .line 1896
    :pswitch_3
    sget-object v1, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_FULL_SLAVE_SUB:Lcom/android/camera/opengl/dualsight/DualSightMode;

    .line 1897
    goto :goto_1

    .line 1899
    :pswitch_4
    sget-object v1, Lcom/android/camera/opengl/dualsight/DualSightMode;->NORMAL_SLAVE:Lcom/android/camera/opengl/dualsight/DualSightMode;

    .line 1900
    goto :goto_1

    .line 1902
    :pswitch_5
    sget-object v1, Lcom/android/camera/opengl/dualsight/DualSightMode;->NORMAL_MAIN:Lcom/android/camera/opengl/dualsight/DualSightMode;

    .line 1903
    goto :goto_1

    .line 1913
    .end local v1    # "nextMode":Lcom/android/camera/opengl/dualsight/DualSightMode;
    :cond_3
    const-string v2, "pref_camera_effect_mode_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1914
    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    invoke-virtual {v2, v5}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->removeMessages(I)V

    .line 1915
    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    const-string v3, "default_scope"

    const-string v4, "pref_camera_effect_mode_key"

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/opengl/effect/EffectMode;->fromValue(I)Lcom/android/camera/opengl/effect/EffectMode;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1917
    :cond_4
    const-string v2, "pref_beauty"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1918
    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    invoke-virtual {v2, v5}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->removeMessages(I)V

    .line 1919
    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    const-string v3, "default_scope"

    const-string v4, "pref_camera_effect_mode_key"

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/opengl/effect/EffectMode;->fromValue(I)Lcom/android/camera/opengl/effect/EffectMode;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1885
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setGestureChangedListener(Lcom/android/camera/opengl/GestureChangedListener;)V
    .locals 1
    .param p1, "gestureChangedListener"    # Lcom/android/camera/opengl/GestureChangedListener;

    .prologue
    .line 1484
    iput-object p1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mGestureChangedListener:Lcom/android/camera/opengl/GestureChangedListener;

    .line 1485
    if-eqz p1, :cond_0

    .line 1486
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    invoke-virtual {v0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->getCurrentDualSightMode()Lcom/android/camera/opengl/dualsight/DualSightMode;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/camera/opengl/GestureChangedListener;->onDualSightChanged(Lcom/android/camera/opengl/dualsight/DualSightMode;)V

    .line 1488
    :cond_0
    return-void
.end method

.method public setPreviewArea(Landroid/graphics/RectF;)V
    .locals 10
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    .line 1492
    iput-object p1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mPreviewArea:Landroid/graphics/RectF;

    .line 1493
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v9

    iput v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mHalfPreviewWidth:F

    .line 1494
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v9

    iput v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mHalfPreviewHeight:F

    .line 1496
    new-instance v3, Landroid/graphics/RectF;

    iget v4, p1, Landroid/graphics/RectF;->left:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    iget v6, p1, Landroid/graphics/RectF;->right:F

    iget v7, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mHalfPreviewHeight:F

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mCurPreviewArea:Landroid/graphics/RectF;

    .line 1500
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    sget-object v4, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_4x3:Lcom/android/camera/exif/Rational;

    invoke-virtual {v4}, Lcom/android/camera/exif/Rational;->toFloat()F

    move-result v4

    div-float v4, v8, v4

    mul-float/2addr v3, v4

    div-float v3, v8, v3

    mul-float/2addr v3, v9

    sub-float v2, v3, v8

    .line 1501
    .local v2, "noScaleLimit":F
    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    .line 1502
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getRealDeviceHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/app/CameraAppUI;->getBottomBarHeightByDUT()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float v1, v3, v4

    .line 1503
    .local v1, "maskHeight":F
    iget v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mHalfPreviewHeight:F

    div-float v3, v1, v3

    sub-float v0, v8, v3

    .line 1504
    .local v0, "bottomBarLimit":F
    cmpg-float v3, v0, v2

    if-gez v3, :cond_0

    .end local v0    # "bottomBarLimit":F
    :goto_0
    iput v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mLimitedPreviewRatio:F

    .line 1505
    return-void

    .restart local v0    # "bottomBarLimit":F
    :cond_0
    move v0, v2

    .line 1504
    goto :goto_0
.end method

.method public setPreviewOutputSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v2, 0x0

    .line 1457
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 1458
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 1462
    :goto_0
    return-void

    .line 1459
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1461
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1459
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

    .line 1466
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 1467
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 1472
    :cond_0
    :goto_0
    return-void

    .line 1468
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1469
    if-eqz p1, :cond_0

    .line 1470
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2, v2, p2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1471
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p3, v2, p1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1468
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
    .line 1509
    iput-boolean p1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mIsTwiceShotDisableSlide:Z

    .line 1510
    return-void
.end method

.method public setZoomParams(Lcom/android/camera/opengl/dualsight/DualSightZoomParams;)V
    .locals 0
    .param p1, "zoomParams"    # Lcom/android/camera/opengl/dualsight/DualSightZoomParams;

    .prologue
    .line 1514
    iput-object p1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mZoomParams:Lcom/android/camera/opengl/dualsight/DualSightZoomParams;

    .line 1515
    return-void
.end method

.method public startRecord()V
    .locals 3

    .prologue
    .line 1925
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 1926
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 1932
    :goto_0
    return-void

    .line 1927
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1928
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 1929
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1930
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1931
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    invoke-virtual {v0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->startRecord()V

    goto :goto_0

    .line 1927
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1930
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public stopRecord()V
    .locals 3

    .prologue
    .line 1936
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 1937
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 1943
    :goto_0
    return-void

    .line 1938
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1939
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 1940
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1941
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1942
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->mRendererHandler:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    invoke-virtual {v0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->stopRecord()V

    goto :goto_0

    .line 1938
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1941
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
