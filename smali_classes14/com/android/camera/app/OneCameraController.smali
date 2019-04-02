.class public Lcom/android/camera/app/OneCameraController;
.super Ljava/lang/Object;
.source "OneCameraController.java"

# interfaces
.implements Lcom/android/camera/app/OneCameraProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/app/OneCameraController$OneCameraDemandChecker;
    }
.end annotation


# static fields
.field private static final EMPTY_REQUEST:I = -0x1

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mActiveCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

.field private final mActiveSubCameraDeviceTracker:Lcom/android/camera/device/ActiveSubCameraDeviceTracker;

.field private final mAppController:Lcom/android/camera/app/AppController;

.field private mCameraExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

.field private final mCameraHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private final mFatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

.field private final mFeatureConfig:Lcom/android/camera/one/config/OneCameraFeatureConfig;

.field private mForceCloseExistCamera:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mOneCamera:Lcom/android/camera/one/OneCamera;

.field private final mOneCameraDemandChecker:Lcom/android/camera/app/OneCameraController$OneCameraDemandChecker;

.field private final mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

.field private mOneCameraOpener:Lcom/android/camera/one/OneCameraOpener;

.field private mRequestingCameraId:I

.field private mRequestingSubCameraId:I

.field private mSlaveCameraHandler:Landroid/os/Handler;

.field private mSubOneCamera:Lcom/android/camera/one/OneCamera;

.field private mWarmStartCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

.field private mWarmStartId:I

.field private final mWarmStartLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "OneCameraController"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/app/OneCameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;Lcom/android/camera/app/OneCameraController$OneCameraDemandChecker;Lcom/android/camera/one/config/OneCameraFeatureConfig;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/device/ActiveCameraDeviceTracker;Lcom/android/camera/FatalErrorHandler;)V
    .locals 6
    .param p1, "appController"    # Lcom/android/camera/app/AppController;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "oneCameraDemandChecker"    # Lcom/android/camera/app/OneCameraController$OneCameraDemandChecker;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "featureConfig"    # Lcom/android/camera/one/config/OneCameraFeatureConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "oneCameraManager"    # Lcom/android/camera/one/OneCameraManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "activeCameraDeviceTracker"    # Lcom/android/camera/device/ActiveCameraDeviceTracker;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p6, "fatalErrorHandler"    # Lcom/android/camera/FatalErrorHandler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, -0x1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput v2, p0, Lcom/android/camera/app/OneCameraController;->mRequestingCameraId:I

    .line 64
    iput v2, p0, Lcom/android/camera/app/OneCameraController;->mRequestingSubCameraId:I

    .line 65
    iput v2, p0, Lcom/android/camera/app/OneCameraController;->mWarmStartId:I

    .line 66
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/camera/app/OneCameraController;->mWarmStartLock:Ljava/lang/Object;

    .line 69
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/camera/app/OneCameraController;->mForceCloseExistCamera:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 81
    iput-object p1, p0, Lcom/android/camera/app/OneCameraController;->mAppController:Lcom/android/camera/app/AppController;

    .line 82
    invoke-interface {p1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/app/OneCameraController;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/android/camera/app/OneCameraController;->mOneCameraDemandChecker:Lcom/android/camera/app/OneCameraController$OneCameraDemandChecker;

    .line 84
    iput-object p3, p0, Lcom/android/camera/app/OneCameraController;->mFeatureConfig:Lcom/android/camera/one/config/OneCameraFeatureConfig;

    .line 85
    iput-object p4, p0, Lcom/android/camera/app/OneCameraController;->mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

    .line 86
    iput-object p5, p0, Lcom/android/camera/app/OneCameraController;->mActiveCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

    .line 87
    invoke-static {}, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->instance()Lcom/android/camera/device/ActiveSubCameraDeviceTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/app/OneCameraController;->mActiveSubCameraDeviceTracker:Lcom/android/camera/device/ActiveSubCameraDeviceTracker;

    .line 88
    iput-object p6, p0, Lcom/android/camera/app/OneCameraController;->mFatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

    .line 90
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "OneCameraController.mCameraHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 91
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 92
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/camera/app/OneCameraController;->mCameraHandler:Landroid/os/Handler;

    .line 95
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/app/OneCameraController;->mFeatureConfig:Lcom/android/camera/one/config/OneCameraFeatureConfig;

    iget-object v3, p0, Lcom/android/camera/app/OneCameraController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/camera/app/OneCameraController;->mActiveCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

    iget-object v5, p0, Lcom/android/camera/app/OneCameraController;->mContext:Landroid/content/Context;

    .line 99
    invoke-static {v5}, Lcom/android/camera/settings/ResolutionUtil;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 95
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/one/OneCameraModule;->provideOneCameraOpener(Lcom/android/camera/one/config/OneCameraFeatureConfig;Landroid/content/Context;Lcom/android/camera/device/ActiveCameraDeviceTracker;Landroid/util/DisplayMetrics;)Lcom/android/camera/one/OneCameraOpener;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/app/OneCameraController;->mOneCameraOpener:Lcom/android/camera/one/OneCameraOpener;
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Lcom/android/camera/one/OneCameraException;
    sget-object v2, Lcom/android/camera/app/OneCameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Creating mOneCameraOpener failed."

    invoke-static {v2, v3, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    iget-object v2, p0, Lcom/android/camera/app/OneCameraController;->mFatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

    invoke-interface {v2}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto :goto_0
.end method

.method static synthetic access$000()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/camera/app/OneCameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/app/OneCameraController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/OneCameraController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mWarmStartLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/app/OneCameraController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/OneCameraController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/FatalErrorHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/OneCameraController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mFatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/app/OneCameraController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/OneCameraController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mSlaveCameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCameraOpener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/OneCameraController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mOneCameraOpener:Lcom/android/camera/one/OneCameraOpener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/app/OneCameraController$OneCameraDemandChecker;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/OneCameraController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mOneCameraDemandChecker:Lcom/android/camera/app/OneCameraController$OneCameraDemandChecker;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/camera/app/OneCameraController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/app/OneCameraController;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/camera/app/OneCameraController;->mRequestingSubCameraId:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/device/ActiveSubCameraDeviceTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/OneCameraController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mActiveSubCameraDeviceTracker:Lcom/android/camera/device/ActiveSubCameraDeviceTracker;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCamera;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/OneCameraController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mSubOneCamera:Lcom/android/camera/one/OneCamera;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/camera/app/OneCameraController;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/app/OneCameraController;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/camera/app/OneCameraController;->mSubOneCamera:Lcom/android/camera/one/OneCamera;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/camera/app/OneCameraController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/app/OneCameraController;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/camera/app/OneCameraController;->mRequestingCameraId:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/camera/app/OneCameraController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/app/OneCameraController;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/camera/app/OneCameraController;->mWarmStartId:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/device/ActiveCameraDeviceTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/OneCameraController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mActiveCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCamera$OpenCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/OneCameraController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mWarmStartCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/camera/app/OneCameraController;Lcom/android/camera/one/OneCamera$OpenCallback;)Lcom/android/camera/one/OneCamera$OpenCallback;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/app/OneCameraController;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera$OpenCallback;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/camera/app/OneCameraController;->mWarmStartCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/OneCameraController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCameraManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/OneCameraController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCamera;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/OneCameraController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mOneCamera:Lcom/android/camera/one/OneCamera;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/camera/app/OneCameraController;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/app/OneCameraController;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/camera/app/OneCameraController;->mOneCamera:Lcom/android/camera/one/OneCamera;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/config/OneCameraFeatureConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/OneCameraController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mFeatureConfig:Lcom/android/camera/one/config/OneCameraFeatureConfig;

    return-object v0
.end method

.method private checkAndOpenCamera(Lcom/android/camera/device/CameraId;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$OpenCallback;)V
    .locals 9
    .param p1, "id"    # Lcom/android/camera/device/CameraId;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "slaveCameraId"    # Lcom/android/camera/device/CameraId;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "openCallback"    # Lcom/android/camera/one/OneCamera$OpenCallback;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mOneCameraOpener:Lcom/android/camera/one/OneCameraOpener;

    if-nez v0, :cond_0

    .line 619
    invoke-interface {p3}, Lcom/android/camera/one/OneCamera$OpenCallback;->onFailure()V

    .line 838
    :goto_0
    return-void

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mActiveCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

    invoke-virtual {v0, p1}, Lcom/android/camera/device/ActiveCameraDeviceTracker;->onCameraOpening(Lcom/android/camera/device/CameraId;)V

    .line 625
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v4

    .line 627
    .local v4, "openSlaveCamFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Landroid/hardware/camera2/CameraDevice;>;"
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v0

    sget-object v1, Lcom/android/camera/util/ProductModelUtil$DualCamType;->COLOR_MONO:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    if-ne v0, v1, :cond_1

    .line 628
    iget-object v1, p0, Lcom/android/camera/app/OneCameraController;->mOneCameraOpener:Lcom/android/camera/one/OneCameraOpener;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraManager;->getMonoCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v0

    if-ne p1, v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0}, Lcom/android/camera/one/OneCameraOpener;->setMonoInfo(Z)V

    .line 631
    :cond_1
    iget-object v7, p0, Lcom/android/camera/app/OneCameraController;->mOneCameraOpener:Lcom/android/camera/one/OneCameraOpener;

    iget-object v8, p0, Lcom/android/camera/app/OneCameraController;->mCameraHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/app/OneCameraController$4;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/app/OneCameraController$4;-><init>(Lcom/android/camera/app/OneCameraController;Lcom/android/camera/device/CameraId;Lcom/android/camera/device/CameraId;Lcom/google/common/util/concurrent/SettableFuture;Lcom/android/camera/one/OneCamera$OpenCallback;)V

    new-instance v1, Lcom/android/camera/app/OneCameraController$5;

    invoke-direct {v1, p0, p3}, Lcom/android/camera/app/OneCameraController$5;-><init>(Lcom/android/camera/app/OneCameraController;Lcom/android/camera/one/OneCamera$OpenCallback;)V

    invoke-interface {v7, p1, v8, v0, v1}, Lcom/android/camera/one/OneCameraOpener;->openCameraDevice(Lcom/android/camera/device/CameraId;Landroid/os/Handler;Landroid/hardware/camera2/CameraDevice$StateCallback;Lcom/android/camera/one/OneCameraOpener$OpenCameraExceptionHandler;)V

    .line 765
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 766
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 628
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 769
    :cond_4
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mSlaveCameraHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    .line 770
    new-instance v6, Landroid/os/HandlerThread;

    const-string v0, "OneCameraController.mSlaveCameraHandler"

    invoke-direct {v6, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 771
    .local v6, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 772
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/app/OneCameraController;->mSlaveCameraHandler:Landroid/os/Handler;

    .line 773
    sget-object v0, Lcom/android/camera/app/OneCameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "mSlaveCameraHandler init"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 776
    .end local v6    # "thread":Landroid/os/HandlerThread;
    :cond_5
    new-instance v0, Lcom/android/camera/app/OneCameraController$6;

    invoke-direct {v0, p0, p2, v4}, Lcom/android/camera/app/OneCameraController$6;-><init>(Lcom/android/camera/app/OneCameraController;Lcom/android/camera/device/CameraId;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private checkAndOpenSubCamera(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$OpenCallback;)V
    .locals 4
    .param p1, "id"    # Lcom/android/camera/device/CameraId;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "openCallback"    # Lcom/android/camera/one/OneCamera$OpenCallback;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mOneCameraOpener:Lcom/android/camera/one/OneCameraOpener;

    if-nez v0, :cond_0

    .line 843
    invoke-interface {p2}, Lcom/android/camera/one/OneCamera$OpenCallback;->onFailure()V

    .line 949
    :goto_0
    return-void

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mActiveSubCameraDeviceTracker:Lcom/android/camera/device/ActiveSubCameraDeviceTracker;

    invoke-virtual {v0, p1}, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->onCameraOpening(Lcom/android/camera/device/CameraId;)V

    .line 849
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mOneCameraOpener:Lcom/android/camera/one/OneCameraOpener;

    iget-object v1, p0, Lcom/android/camera/app/OneCameraController;->mCameraHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/app/OneCameraController$7;

    invoke-direct {v2, p0, p2}, Lcom/android/camera/app/OneCameraController$7;-><init>(Lcom/android/camera/app/OneCameraController;Lcom/android/camera/one/OneCamera$OpenCallback;)V

    new-instance v3, Lcom/android/camera/app/OneCameraController$8;

    invoke-direct {v3, p0, p2}, Lcom/android/camera/app/OneCameraController$8;-><init>(Lcom/android/camera/app/OneCameraController;Lcom/android/camera/one/OneCamera$OpenCallback;)V

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/android/camera/one/OneCameraOpener;->openCameraDevice(Lcom/android/camera/device/CameraId;Landroid/os/Handler;Landroid/hardware/camera2/CameraDevice$StateCallback;Lcom/android/camera/one/OneCameraOpener$OpenCameraExceptionHandler;)V

    goto :goto_0
.end method


# virtual methods
.method public closeCamera(Z)V
    .locals 5
    .param p1, "synced"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 590
    sget-object v0, Lcom/android/camera/app/OneCameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing camera : synced = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mOneCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v0, :cond_0

    .line 592
    sget-object v0, Lcom/android/camera/app/OneCameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing camera : CameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/OneCameraController;->mOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v2}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mActiveCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

    iget-object v1, p0, Lcom/android/camera/app/OneCameraController;->mOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/device/ActiveCameraDeviceTracker;->onCameraClosed(Lcom/android/camera/device/CameraId;)V

    .line 594
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera;->close()V

    .line 595
    iput-object v4, p0, Lcom/android/camera/app/OneCameraController;->mOneCamera:Lcom/android/camera/one/OneCamera;

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mSubOneCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v0, :cond_1

    .line 598
    sget-object v0, Lcom/android/camera/app/OneCameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing sub-camera : CameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/OneCameraController;->mSubOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v2}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mActiveSubCameraDeviceTracker:Lcom/android/camera/device/ActiveSubCameraDeviceTracker;

    iget-object v1, p0, Lcom/android/camera/app/OneCameraController;->mSubOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->onCameraClosed(Lcom/android/camera/device/CameraId;)V

    .line 600
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mSubOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera;->close()V

    .line 601
    iput-object v4, p0, Lcom/android/camera/app/OneCameraController;->mSubOneCamera:Lcom/android/camera/one/OneCamera;

    .line 603
    :cond_1
    iput v3, p0, Lcom/android/camera/app/OneCameraController;->mWarmStartId:I

    .line 604
    iput v3, p0, Lcom/android/camera/app/OneCameraController;->mRequestingCameraId:I

    .line 605
    iput v3, p0, Lcom/android/camera/app/OneCameraController;->mRequestingSubCameraId:I

    .line 606
    iput-object v4, p0, Lcom/android/camera/app/OneCameraController;->mWarmStartCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    .line 607
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mForceCloseExistCamera:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 608
    sget-object v0, Lcom/android/camera/app/OneCameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing camera  done : synced = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 609
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 953
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mSlaveCameraHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mSlaveCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 955
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/app/OneCameraController;->mSlaveCameraHandler:Landroid/os/Handler;

    .line 957
    :cond_0
    return-void
.end method

.method public forceCloseExistWhenNextOpen()V
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mForceCloseExistCamera:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 587
    return-void
.end method

.method public getCurrentCameraId()Lcom/android/camera/device/CameraId;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mActiveCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

    invoke-virtual {v0}, Lcom/android/camera/device/ActiveCameraDeviceTracker;->getActiveOrPreviousCamera()Lcom/android/camera/device/CameraId;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSubCameraId()Lcom/android/camera/device/CameraId;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mActiveSubCameraDeviceTracker:Lcom/android/camera/device/ActiveSubCameraDeviceTracker;

    invoke-virtual {v0}, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->getActiveOrPreviousCamera()Lcom/android/camera/device/CameraId;

    move-result-object v0

    return-object v0
.end method

.method public getFirstBackCameraId()Lcom/android/camera/device/CameraId;
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v0

    return-object v0
.end method

.method public getFirstFrontCameraId()Lcom/android/camera/device/CameraId;
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v0

    return-object v0
.end method

.method public getLogicCameraId(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Lcom/android/camera/device/CameraId;
    .locals 1
    .param p1, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

    invoke-interface {v0, p1}, Lcom/android/camera/one/OneCameraManager;->getLogicCameraId(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Lcom/android/camera/device/CameraId;

    move-result-object v0

    return-object v0
.end method

.method public getMonoCameraId()Lcom/android/camera/device/CameraId;
    .locals 2

    .prologue
    .line 515
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v0

    sget-object v1, Lcom/android/camera/util/ProductModelUtil$DualCamType;->COLOR_MONO:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 516
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraManager;->getMonoCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v0

    goto :goto_0
.end method

.method public getNumberOfCameras()I
    .locals 2

    .prologue
    .line 486
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/app/OneCameraController;->mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

    invoke-interface {v1}, Lcom/android/camera/one/OneCameraManager;->getNumberOfCameras()I
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 489
    :goto_0
    return v1

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Lcom/android/camera/one/OneCameraAccessException;
    iget-object v1, p0, Lcom/android/camera/app/OneCameraController;->mFatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

    invoke-interface {v1}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    .line 489
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 2
    .param p1, "cameraId"    # Lcom/android/camera/device/CameraId;

    .prologue
    .line 471
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/app/OneCameraController;->mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

    invoke-interface {v1, p1}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 474
    :goto_0
    return-object v1

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Lcom/android/camera/one/OneCameraAccessException;
    iget-object v1, p0, Lcom/android/camera/app/OneCameraController;->mFatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

    invoke-interface {v1}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    .line 474
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOneCameraOpener()Lcom/android/camera/one/OneCameraOpener;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mOneCameraOpener:Lcom/android/camera/one/OneCameraOpener;

    return-object v0
.end method

.method public getSecondBackCameraId()Lcom/android/camera/device/CameraId;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraManager;->getSecondBackCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v0

    return-object v0
.end method

.method public hasCameraWarmUp()Z
    .locals 2

    .prologue
    .line 612
    iget v0, p0, Lcom/android/camera/app/OneCameraController;->mWarmStartId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBackFacingCamera(Lcom/android/camera/device/CameraId;)Z
    .locals 2
    .param p1, "id"    # Lcom/android/camera/device/CameraId;

    .prologue
    .line 532
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/app/OneCameraController;->mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

    invoke-interface {v1, p1}, Lcom/android/camera/one/OneCameraManager;->isBackFacingCamera(Lcom/android/camera/device/CameraId;)Z
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 535
    :goto_0
    return v1

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Lcom/android/camera/one/OneCameraAccessException;
    iget-object v1, p0, Lcom/android/camera/app/OneCameraController;->mFatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

    invoke-interface {v1}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    .line 535
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFrontFacingCamera(Lcom/android/camera/device/CameraId;)Z
    .locals 2
    .param p1, "id"    # Lcom/android/camera/device/CameraId;

    .prologue
    .line 522
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/app/OneCameraController;->mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

    invoke-interface {v1, p1}, Lcom/android/camera/one/OneCameraManager;->isFrontFacingCamera(Lcom/android/camera/device/CameraId;)Z
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 525
    :goto_0
    return v1

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Lcom/android/camera/one/OneCameraAccessException;
    iget-object v1, p0, Lcom/android/camera/app/OneCameraController;->mFatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

    invoke-interface {v1}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    .line 525
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public releaseCamera(Lcom/android/camera/device/CameraId;)V
    .locals 3
    .param p1, "id"    # Lcom/android/camera/device/CameraId;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mOneCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v0, :cond_0

    .line 454
    sget-object v0, Lcom/android/camera/app/OneCameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseCamera : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/OneCameraController;->mOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v2}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mActiveCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

    iget-object v1, p0, Lcom/android/camera/app/OneCameraController;->mOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/device/ActiveCameraDeviceTracker;->onCameraClosed(Lcom/android/camera/device/CameraId;)V

    .line 456
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSessionManager;->waitCaptureFinish()V

    .line 457
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera;->reset()V

    .line 458
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/app/OneCameraController;->mRequestingCameraId:I

    .line 460
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/app/OneCameraController;->mWarmStartCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    .line 461
    return-void
.end method

.method public releaseSubCamera(Lcom/android/camera/device/CameraId;)V
    .locals 3
    .param p1, "id"    # Lcom/android/camera/device/CameraId;

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mSubOneCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v0, :cond_0

    .line 567
    sget-object v0, Lcom/android/camera/app/OneCameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseSubCamera : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/OneCameraController;->mSubOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v2}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mActiveSubCameraDeviceTracker:Lcom/android/camera/device/ActiveSubCameraDeviceTracker;

    iget-object v1, p0, Lcom/android/camera/app/OneCameraController;->mSubOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->onCameraClosed(Lcom/android/camera/device/CameraId;)V

    .line 569
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mSubOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera;->reset()V

    .line 570
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/app/OneCameraController;->mRequestingSubCameraId:I

    .line 572
    :cond_0
    return-void
.end method

.method public requestCamera(Lcom/android/camera/device/CameraId;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$OpenCallback;)V
    .locals 5
    .param p1, "id"    # Lcom/android/camera/device/CameraId;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "slaveCameraId"    # Lcom/android/camera/device/CameraId;
    .param p3, "openCallback"    # Lcom/android/camera/one/OneCamera$OpenCallback;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 114
    sget-object v0, Lcom/android/camera/app/OneCameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCamera : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", slaveCameraId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mOneCameraOpener:Lcom/android/camera/one/OneCameraOpener;

    if-nez v0, :cond_1

    .line 117
    invoke-interface {p3}, Lcom/android/camera/one/OneCamera$OpenCallback;->onFailure()V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget v0, p0, Lcom/android/camera/app/OneCameraController;->mRequestingCameraId:I

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/android/camera/app/OneCameraController;->mRequestingCameraId:I

    invoke-virtual {p1}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 125
    invoke-virtual {p1}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v0

    iput v0, p0, Lcom/android/camera/app/OneCameraController;->mRequestingCameraId:I

    .line 127
    iget v0, p0, Lcom/android/camera/app/OneCameraController;->mWarmStartId:I

    if-eq v0, v3, :cond_3

    .line 128
    iput v3, p0, Lcom/android/camera/app/OneCameraController;->mWarmStartId:I

    .line 129
    iget-object v1, p0, Lcom/android/camera/app/OneCameraController;->mWarmStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mOneCamera:Lcom/android/camera/one/OneCamera;

    if-nez v0, :cond_2

    .line 131
    sget-object v0, Lcom/android/camera/app/OneCameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waiting Camera "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " warm up."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 132
    iput-object p3, p0, Lcom/android/camera/app/OneCameraController;->mWarmStartCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    .line 133
    monitor-exit v1

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    :cond_3
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mOneCamera:Lcom/android/camera/one/OneCamera;

    if-nez v0, :cond_4

    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/app/OneCameraController;->checkAndOpenCamera(Lcom/android/camera/device/CameraId;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$OpenCallback;)V

    goto :goto_0

    .line 140
    :cond_4
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mForceCloseExistCamera:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 141
    sget-object v0, Lcom/android/camera/app/OneCameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close existing camera - force : main = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/OneCameraController;->mOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v2}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", slave = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/OneCameraController;->mOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v2}, Lcom/android/camera/one/OneCamera;->getSlaveCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mActiveCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

    iget-object v1, p0, Lcom/android/camera/app/OneCameraController;->mOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/device/ActiveCameraDeviceTracker;->onCameraClosed(Lcom/android/camera/device/CameraId;)V

    .line 143
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera;->close()V

    .line 144
    iput-object v4, p0, Lcom/android/camera/app/OneCameraController;->mOneCamera:Lcom/android/camera/one/OneCamera;

    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/app/OneCameraController;->checkAndOpenCamera(Lcom/android/camera/device/CameraId;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$OpenCallback;)V

    goto/16 :goto_0

    .line 146
    :cond_5
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/device/CameraId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 147
    sget-object v0, Lcom/android/camera/app/OneCameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close existing camera : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/OneCameraController;->mOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v2}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mActiveCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

    iget-object v1, p0, Lcom/android/camera/app/OneCameraController;->mOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/device/ActiveCameraDeviceTracker;->onCameraClosed(Lcom/android/camera/device/CameraId;)V

    .line 149
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera;->close()V

    .line 150
    iput-object v4, p0, Lcom/android/camera/app/OneCameraController;->mOneCamera:Lcom/android/camera/one/OneCamera;

    .line 151
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/app/OneCameraController;->checkAndOpenCamera(Lcom/android/camera/device/CameraId;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$OpenCallback;)V

    goto/16 :goto_0

    .line 152
    :cond_6
    if-eqz p2, :cond_8

    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera;->getSlaveCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera;->getSlaveCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 153
    :cond_7
    sget-object v0, Lcom/android/camera/app/OneCameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close existing camera due to different slave cam : main = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/OneCameraController;->mOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v2}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", slave = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/OneCameraController;->mOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v2}, Lcom/android/camera/one/OneCamera;->getSlaveCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mActiveCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

    iget-object v1, p0, Lcom/android/camera/app/OneCameraController;->mOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/device/ActiveCameraDeviceTracker;->onCameraClosed(Lcom/android/camera/device/CameraId;)V

    .line 155
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera;->close()V

    .line 156
    iput-object v4, p0, Lcom/android/camera/app/OneCameraController;->mOneCamera:Lcom/android/camera/one/OneCamera;

    .line 157
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/app/OneCameraController;->checkAndOpenCamera(Lcom/android/camera/device/CameraId;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$OpenCallback;)V

    goto/16 :goto_0

    .line 152
    :cond_8
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera;->getSlaveCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v0

    if-nez v0, :cond_7

    .line 159
    :cond_9
    sget-object v0, Lcom/android/camera/app/OneCameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReconnected : device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/OneCameraController;->mOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v2}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", slave device : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/OneCameraController;->mOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v2}, Lcom/android/camera/one/OneCamera;->getSlaveCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 160
    iput v3, p0, Lcom/android/camera/app/OneCameraController;->mRequestingCameraId:I

    .line 161
    iput-object v4, p0, Lcom/android/camera/app/OneCameraController;->mWarmStartCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    .line 162
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {p3, v0}, Lcom/android/camera/one/OneCamera$OpenCallback;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V

    goto/16 :goto_0
.end method

.method public requestSubCamera(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$OpenCallback;)V
    .locals 4
    .param p1, "id"    # Lcom/android/camera/device/CameraId;
    .param p2, "openCallback"    # Lcom/android/camera/one/OneCamera$OpenCallback;

    .prologue
    const/4 v3, -0x1

    .line 541
    sget-object v0, Lcom/android/camera/app/OneCameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSubCamera : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 543
    iget v0, p0, Lcom/android/camera/app/OneCameraController;->mRequestingSubCameraId:I

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/android/camera/app/OneCameraController;->mRequestingSubCameraId:I

    invoke-virtual {p1}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v0

    iput v0, p0, Lcom/android/camera/app/OneCameraController;->mRequestingSubCameraId:I

    .line 549
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mSubOneCamera:Lcom/android/camera/one/OneCamera;

    if-nez v0, :cond_2

    .line 550
    invoke-direct {p0, p1, p2}, Lcom/android/camera/app/OneCameraController;->checkAndOpenSubCamera(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$OpenCallback;)V

    goto :goto_0

    .line 551
    :cond_2
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mSubOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/device/CameraId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 552
    sget-object v0, Lcom/android/camera/app/OneCameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close existing sub camera : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/OneCameraController;->mSubOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v2}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mActiveSubCameraDeviceTracker:Lcom/android/camera/device/ActiveSubCameraDeviceTracker;

    iget-object v1, p0, Lcom/android/camera/app/OneCameraController;->mSubOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->onCameraClosed(Lcom/android/camera/device/CameraId;)V

    .line 554
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mSubOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera;->close()V

    .line 555
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/app/OneCameraController;->mSubOneCamera:Lcom/android/camera/one/OneCamera;

    .line 556
    invoke-direct {p0, p1, p2}, Lcom/android/camera/app/OneCameraController;->checkAndOpenSubCamera(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$OpenCallback;)V

    goto :goto_0

    .line 558
    :cond_3
    sget-object v0, Lcom/android/camera/app/OneCameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReconnected : sub-camera = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/OneCameraController;->mSubOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v2}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 559
    iput v3, p0, Lcom/android/camera/app/OneCameraController;->mRequestingSubCameraId:I

    .line 560
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController;->mSubOneCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {p2, v0}, Lcom/android/camera/one/OneCamera$OpenCallback;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V

    goto :goto_0
.end method

.method public setCameraExceptionHandler(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V
    .locals 0
    .param p1, "exceptionHandler"    # Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/camera/app/OneCameraController;->mCameraExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    .line 466
    return-void
.end method

.method public waitingForCamera()Z
    .locals 2

    .prologue
    .line 448
    iget v0, p0, Lcom/android/camera/app/OneCameraController;->mRequestingCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public waitingForSubCamera()Z
    .locals 2

    .prologue
    .line 581
    iget v0, p0, Lcom/android/camera/app/OneCameraController;->mRequestingSubCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public warmStartCamera(Lcom/android/camera/device/CameraId;Lcom/android/camera/device/CameraId;)V
    .locals 7
    .param p1, "id"    # Lcom/android/camera/device/CameraId;
    .param p2, "slaveCameraId"    # Lcom/android/camera/device/CameraId;

    .prologue
    const/4 v6, 0x0

    .line 168
    sget-object v2, Lcom/android/camera/app/OneCameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "warmStartCamera : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", slaveCameraId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 170
    iget-object v2, p0, Lcom/android/camera/app/OneCameraController;->mOneCameraOpener:Lcom/android/camera/one/OneCameraOpener;

    if-nez v2, :cond_1

    .line 171
    iget-object v2, p0, Lcom/android/camera/app/OneCameraController;->mWarmStartCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/app/OneCameraController;->mWarmStartCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    invoke-interface {v2}, Lcom/android/camera/one/OneCamera$OpenCallback;->onFailure()V

    .line 172
    :cond_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/app/OneCameraController;->mWarmStartId:I

    .line 444
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v2

    iput v2, p0, Lcom/android/camera/app/OneCameraController;->mWarmStartId:I

    .line 177
    iput-object v6, p0, Lcom/android/camera/app/OneCameraController;->mWarmStartCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    .line 179
    iget-object v2, p0, Lcom/android/camera/app/OneCameraController;->mActiveCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

    invoke-virtual {v2, p1}, Lcom/android/camera/device/ActiveCameraDeviceTracker;->onCameraOpening(Lcom/android/camera/device/CameraId;)V

    .line 181
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 183
    .local v0, "openSlaveCamFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Landroid/hardware/camera2/CameraDevice;>;"
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v2

    sget-object v3, Lcom/android/camera/util/ProductModelUtil$DualCamType;->COLOR_MONO:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    if-ne v2, v3, :cond_2

    .line 184
    iget-object v3, p0, Lcom/android/camera/app/OneCameraController;->mOneCameraOpener:Lcom/android/camera/one/OneCameraOpener;

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/android/camera/app/OneCameraController;->mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

    invoke-interface {v2}, Lcom/android/camera/one/OneCameraManager;->getMonoCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v2

    if-ne p1, v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v3, v2}, Lcom/android/camera/one/OneCameraOpener;->setMonoInfo(Z)V

    .line 187
    :cond_2
    iget-object v2, p0, Lcom/android/camera/app/OneCameraController;->mOneCameraOpener:Lcom/android/camera/one/OneCameraOpener;

    iget-object v3, p0, Lcom/android/camera/app/OneCameraController;->mCameraHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/camera/app/OneCameraController$1;

    invoke-direct {v4, p0, p2, p1, v0}, Lcom/android/camera/app/OneCameraController$1;-><init>(Lcom/android/camera/app/OneCameraController;Lcom/android/camera/device/CameraId;Lcom/android/camera/device/CameraId;Lcom/google/common/util/concurrent/SettableFuture;)V

    new-instance v5, Lcom/android/camera/app/OneCameraController$2;

    invoke-direct {v5, p0, p1}, Lcom/android/camera/app/OneCameraController$2;-><init>(Lcom/android/camera/app/OneCameraController;Lcom/android/camera/device/CameraId;)V

    invoke-interface {v2, p1, v3, v4, v5}, Lcom/android/camera/one/OneCameraOpener;->openCameraDevice(Lcom/android/camera/device/CameraId;Landroid/os/Handler;Landroid/hardware/camera2/CameraDevice$StateCallback;Lcom/android/camera/one/OneCameraOpener$OpenCameraExceptionHandler;)V

    .line 371
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 372
    :cond_3
    invoke-virtual {v0, v6}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 375
    :cond_5
    iget-object v2, p0, Lcom/android/camera/app/OneCameraController;->mSlaveCameraHandler:Landroid/os/Handler;

    if-nez v2, :cond_6

    .line 376
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "OneCameraController.mSlaveCameraHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 377
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 378
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/camera/app/OneCameraController;->mSlaveCameraHandler:Landroid/os/Handler;

    .line 379
    sget-object v2, Lcom/android/camera/app/OneCameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "mSlaveCameraHandler init"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 382
    .end local v1    # "thread":Landroid/os/HandlerThread;
    :cond_6
    new-instance v2, Lcom/android/camera/app/OneCameraController$3;

    invoke-direct {v2, p0, p2, v0}, Lcom/android/camera/app/OneCameraController$3;-><init>(Lcom/android/camera/app/OneCameraController;Lcom/android/camera/device/CameraId;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
