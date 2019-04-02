.class public Lcom/android/camera/app/CameraController;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;
.implements Lcom/android/camera/app/CameraProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/app/CameraController$SubCameraOpenCallback;
    }
.end annotation


# static fields
.field private static final EMPTY_REQUEST:I = -0x1

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mActiveCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

.field private mActiveSubCameraDeviceTracker:Lcom/android/camera/device/ActiveSubCameraDeviceTracker;

.field private final mCallbackHandler:Landroid/os/Handler;

.field private mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

.field private final mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

.field private final mCameraAgentNg:Lcom/android/ex/camera2/portability/CameraAgent;

.field private mCameraExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

.field private mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field private final mContext:Landroid/content/Context;

.field private mForceCloseExistCamera:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

.field private mRequestingCameraId:I

.field private mRequestingSubCameraId:I

.field private mSubCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

.field private mSubCameraAgentNg:Lcom/android/ex/camera2/portability/CameraAgent;

.field private mSubCameraCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

.field private mSubCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field private mUsingNewApi:Z

.field private mWarmStartId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "CameraController"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/app/CameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent;Lcom/android/ex/camera2/portability/CameraAgent;Lcom/android/camera/device/ActiveCameraDeviceTracker;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "callbackReceiver"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "handler"    # Landroid/os/Handler;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4, "cameraManager"    # Lcom/android/ex/camera2/portability/CameraAgent;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p5, "cameraManagerNg"    # Lcom/android/ex/camera2/portability/CameraAgent;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "activeCameraDeviceTracker"    # Lcom/android/camera/device/ActiveCameraDeviceTracker;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput v2, p0, Lcom/android/camera/app/CameraController;->mRequestingCameraId:I

    .line 70
    iput v2, p0, Lcom/android/camera/app/CameraController;->mRequestingSubCameraId:I

    .line 72
    iput v2, p0, Lcom/android/camera/app/CameraController;->mWarmStartId:I

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/app/CameraController;->mForceCloseExistCamera:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 81
    iput-boolean v1, p0, Lcom/android/camera/app/CameraController;->mUsingNewApi:Z

    .line 106
    iput-object p1, p0, Lcom/android/camera/app/CameraController;->mContext:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Lcom/android/camera/app/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    .line 108
    iput-object p3, p0, Lcom/android/camera/app/CameraController;->mCallbackHandler:Landroid/os/Handler;

    .line 109
    iput-object p4, p0, Lcom/android/camera/app/CameraController;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    .line 112
    if-eq p5, p4, :cond_1

    .end local p5    # "cameraManagerNg":Lcom/android/ex/camera2/portability/CameraAgent;
    :goto_0
    iput-object p5, p0, Lcom/android/camera/app/CameraController;->mCameraAgentNg:Lcom/android/ex/camera2/portability/CameraAgent;

    .line 113
    iput-object p6, p0, Lcom/android/camera/app/CameraController;->mActiveCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

    .line 115
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraDeviceInfo()Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    .line 116
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    const-string v1, "GETTING_CAMERA_INFO"

    invoke-interface {v0, v2, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenFailure(ILjava/lang/String;)V

    .line 119
    :cond_0
    return-void

    .line 112
    .restart local p5    # "cameraManagerNg":Lcom/android/ex/camera2/portability/CameraAgent;
    :cond_1
    const/4 p5, 0x0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/camera/app/CameraController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/CameraController;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/camera/app/CameraController;->mRequestingSubCameraId:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/app/CameraController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/app/CameraController;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/android/camera/app/CameraController;->mRequestingSubCameraId:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/camera/app/CameraController;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/app/CameraController;
    .param p1, "x1"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/camera/app/CameraController;->mSubCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/app/CameraController;)Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/CameraController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mSubCameraCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    return-object v0
.end method

.method private static checkAndOpenCamera(Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V
    .locals 4
    .param p0, "cameraManager"    # Lcom/android/ex/camera2/portability/CameraAgent;
    .param p1, "cameraId"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "cb"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    .prologue
    .line 517
    sget-object v1, Lcom/android/camera/app/CameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndOpenCamera : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 519
    :try_start_0
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->throwIfCameraDisabled()V

    .line 520
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/ex/camera2/portability/CameraAgent;->openCamera(Landroid/os/Handler;ILcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V
    :try_end_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :goto_0
    return-void

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, "ex":Lcom/android/camera/CameraDisabledException;
    new-instance v1, Lcom/android/camera/app/CameraController$1;

    invoke-direct {v1, p3, p1}, Lcom/android/camera/app/CameraController$1;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;I)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private static checkAndWarmStartCamera(Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V
    .locals 4
    .param p0, "cameraManager"    # Lcom/android/ex/camera2/portability/CameraAgent;
    .param p1, "cameraId"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "cb"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    .prologue
    .line 533
    sget-object v1, Lcom/android/camera/app/CameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndWarmStartCamera : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 535
    :try_start_0
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->throwIfCameraDisabled()V

    .line 536
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/ex/camera2/portability/CameraAgent;->warmStart(Landroid/os/Handler;ILcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V
    :try_end_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :goto_0
    return-void

    .line 537
    :catch_0
    move-exception v0

    .line 538
    .local v0, "ex":Lcom/android/camera/CameraDisabledException;
    sget-object v1, Lcom/android/camera/app/CameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndWarmCamera Error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setDualCamModeConfig(I)V
    .locals 6
    .param p1, "dualCamMode"    # I

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/android/camera/app/CameraController;->getLogicCameraBackId()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 566
    :goto_0
    return-void

    .line 553
    :cond_0
    sget-object v3, Lcom/android/camera/app/CameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDualCamModeConfig : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 554
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v3

    const-string v4, "setDualCamModeConfig"

    invoke-virtual {v3, v4}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    .line 555
    .local v2, "profile":Lcom/android/camera/stats/profiler/Profile;
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtensionCreator;->create()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v0

    .line 556
    .local v0, "cameraCapabilitiesExtension":Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->isSupportDualCamModeConfig()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 558
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->setDualCamModeConfig(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :cond_1
    :goto_1
    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 565
    const/4 v2, 0x0

    .line 566
    goto :goto_0

    .line 560
    :catch_0
    move-exception v1

    .line 561
    .local v1, "ex":Ljava/lang/IllegalStateException;
    sget-object v3, Lcom/android/camera/app/CameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDualCamModeConfig Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public closeCamera(Z)V
    .locals 7
    .param p1, "synced"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 473
    sget-object v1, Lcom/android/camera/app/CameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Closing camera"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 474
    iput v4, p0, Lcom/android/camera/app/CameraController;->mWarmStartId:I

    .line 476
    const/4 v0, -0x1

    .line 477
    .local v0, "cameraId":I
    iget-object v1, p0, Lcom/android/camera/app/CameraController;->mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v1, :cond_0

    .line 478
    iget-object v1, p0, Lcom/android/camera/app/CameraController;->mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v0

    .line 481
    :cond_0
    iput-object v6, p0, Lcom/android/camera/app/CameraController;->mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 482
    iget-boolean v1, p0, Lcom/android/camera/app/CameraController;->mUsingNewApi:Z

    if-eqz v1, :cond_4

    .line 483
    iget-object v1, p0, Lcom/android/camera/app/CameraController;->mCameraAgentNg:Lcom/android/ex/camera2/portability/CameraAgent;

    if-eqz v1, :cond_1

    .line 484
    iget-object v1, p0, Lcom/android/camera/app/CameraController;->mCameraAgentNg:Lcom/android/ex/camera2/portability/CameraAgent;

    iget-object v2, p0, Lcom/android/camera/app/CameraController;->mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1, v2, p1}, Lcom/android/ex/camera2/portability/CameraAgent;->closeCamera(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Z)V

    .line 492
    :cond_1
    :goto_0
    iput v4, p0, Lcom/android/camera/app/CameraController;->mRequestingCameraId:I

    .line 493
    iput-boolean v5, p0, Lcom/android/camera/app/CameraController;->mUsingNewApi:Z

    .line 495
    iget-object v1, p0, Lcom/android/camera/app/CameraController;->mSubCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v1, :cond_3

    .line 496
    iput-object v6, p0, Lcom/android/camera/app/CameraController;->mSubCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 497
    iget-boolean v1, p0, Lcom/android/camera/app/CameraController;->mUsingNewApi:Z

    if-eqz v1, :cond_6

    .line 498
    iget-object v1, p0, Lcom/android/camera/app/CameraController;->mSubCameraAgentNg:Lcom/android/ex/camera2/portability/CameraAgent;

    iget-object v2, p0, Lcom/android/camera/app/CameraController;->mSubCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1, v2, p1}, Lcom/android/ex/camera2/portability/CameraAgent;->closeCamera(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Z)V

    .line 504
    :cond_2
    :goto_1
    iput v4, p0, Lcom/android/camera/app/CameraController;->mRequestingSubCameraId:I

    .line 507
    :cond_3
    iget-object v1, p0, Lcom/android/camera/app/CameraController;->mForceCloseExistCamera:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 508
    return-void

    .line 487
    :cond_4
    sget-boolean v1, Lcom/android/camera/util/PIPSTBUtil;->ENABLE_PIP_STB_DUMP:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/camera/util/PIPSTBUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call CameraActions.RELEASE start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/CameraController;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 488
    :cond_5
    iget-object v1, p0, Lcom/android/camera/app/CameraController;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    iget-object v2, p0, Lcom/android/camera/app/CameraController;->mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1, v2, p1}, Lcom/android/ex/camera2/portability/CameraAgent;->closeCamera(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Z)V

    .line 489
    sget-boolean v1, Lcom/android/camera/util/PIPSTBUtil;->ENABLE_PIP_STB_DUMP:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/camera/util/PIPSTBUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call CameraActions.RELEASE end "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/CameraController;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 500
    :cond_6
    sget-boolean v1, Lcom/android/camera/util/PIPSTBUtil;->ENABLE_PIP_STB_DUMP:Z

    if-eqz v1, :cond_7

    sget-object v1, Lcom/android/camera/util/PIPSTBUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call CameraActions.RELEASE start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/CameraController;->mSubCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 501
    :cond_7
    iget-object v1, p0, Lcom/android/camera/app/CameraController;->mSubCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    iget-object v2, p0, Lcom/android/camera/app/CameraController;->mSubCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1, v2, p1}, Lcom/android/ex/camera2/portability/CameraAgent;->closeCamera(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Z)V

    .line 502
    sget-boolean v1, Lcom/android/camera/util/PIPSTBUtil;->ENABLE_PIP_STB_DUMP:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/camera/util/PIPSTBUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call CameraActions.RELEASE end "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/app/CameraController;->mSubCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public forceCloseExistWhenNextOpen()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mForceCloseExistCamera:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 301
    return-void
.end method

.method public getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 135
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    invoke-interface {v0, p1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentCameraId()Lcom/android/camera/device/CameraId;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mActiveCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

    invoke-virtual {v0}, Lcom/android/camera/device/ActiveCameraDeviceTracker;->getActiveOrPreviousCamera()Lcom/android/camera/device/CameraId;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSubCameraId()Lcom/android/camera/device/CameraId;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mActiveSubCameraDeviceTracker:Lcom/android/camera/device/ActiveSubCameraDeviceTracker;

    invoke-virtual {v0}, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->getActiveOrPreviousCamera()Lcom/android/camera/device/CameraId;

    move-result-object v0

    return-object v0
.end method

.method public getFirstBackCameraId()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    if-nez v0, :cond_0

    .line 155
    const/4 v0, -0x1

    .line 157
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    invoke-interface {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getFirstBackCameraId()I

    move-result v0

    goto :goto_0
.end method

.method public getFirstFrontCameraId()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    if-nez v0, :cond_0

    .line 163
    const/4 v0, -0x1

    .line 165
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    invoke-interface {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getFirstFrontCameraId()I

    move-result v0

    goto :goto_0
.end method

.method public getLogicCameraBackId()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    if-nez v0, :cond_0

    .line 179
    const/4 v0, -0x1

    .line 181
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    invoke-interface {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getDaulCameraBackId()I

    move-result v0

    goto :goto_0
.end method

.method public getNumberOfCameras()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x0

    .line 149
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    invoke-interface {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getNumberOfCameras()I

    move-result v0

    goto :goto_0
.end method

.method public getSecondBackCameraId()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    if-nez v0, :cond_0

    .line 171
    const/4 v0, -0x1

    .line 173
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    invoke-interface {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getSecondBackCameraId()I

    move-result v0

    goto :goto_0
.end method

.method public hasCameraWarmUp()Z
    .locals 2

    .prologue
    .line 548
    iget v0, p0, Lcom/android/camera/app/CameraController;->mWarmStartId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInitedSubCamera()Z
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mSubCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initSubCameraController(Lcom/android/ex/camera2/portability/CameraAgent;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;Lcom/android/ex/camera2/portability/CameraAgent;Lcom/android/camera/device/ActiveSubCameraDeviceTracker;)V
    .locals 2
    .param p1, "subCameraManager"    # Lcom/android/ex/camera2/portability/CameraAgent;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "subCameraCallbackReceiver"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "subCameraManagerNg"    # Lcom/android/ex/camera2/portability/CameraAgent;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "activeSubCameraDeviceTracker"    # Lcom/android/camera/device/ActiveSubCameraDeviceTracker;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 575
    iput-object p2, p0, Lcom/android/camera/app/CameraController;->mSubCameraCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    .line 576
    iput-object p1, p0, Lcom/android/camera/app/CameraController;->mSubCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    .line 577
    if-eq p3, p1, :cond_1

    .end local p3    # "subCameraManagerNg":Lcom/android/ex/camera2/portability/CameraAgent;
    :goto_0
    iput-object p3, p0, Lcom/android/camera/app/CameraController;->mSubCameraAgentNg:Lcom/android/ex/camera2/portability/CameraAgent;

    .line 578
    iput-object p4, p0, Lcom/android/camera/app/CameraController;->mActiveSubCameraDeviceTracker:Lcom/android/camera/device/ActiveSubCameraDeviceTracker;

    .line 579
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mSubCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    iget-object v1, p0, Lcom/android/camera/app/CameraController;->mCameraExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent;->setCameraExceptionHandler(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V

    .line 580
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mSubCameraAgentNg:Lcom/android/ex/camera2/portability/CameraAgent;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mSubCameraAgentNg:Lcom/android/ex/camera2/portability/CameraAgent;

    iget-object v1, p0, Lcom/android/camera/app/CameraController;->mCameraExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent;->setCameraExceptionHandler(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V

    .line 583
    :cond_0
    return-void

    .line 577
    .restart local p3    # "subCameraManagerNg":Lcom/android/ex/camera2/portability/CameraAgent;
    :cond_1
    const/4 p3, 0x0

    goto :goto_0
.end method

.method public isBackFacingCamera(I)Z
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x0

    .line 198
    iget-object v1, p0, Lcom/android/camera/app/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    if-nez v1, :cond_0

    .line 205
    :goto_0
    return v0

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/android/camera/app/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    invoke-interface {v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getNumberOfCameras()I

    move-result v1

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/app/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    invoke-interface {v1, p1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v1

    if-nez v1, :cond_2

    .line 202
    :cond_1
    sget-object v1, Lcom/android/camera/app/CameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera info not available:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    invoke-interface {v0, p1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingBack()Z

    move-result v0

    goto :goto_0
.end method

.method public isFrontFacingCamera(I)Z
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x0

    .line 186
    iget-object v1, p0, Lcom/android/camera/app/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    if-nez v1, :cond_0

    .line 193
    :goto_0
    return v0

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/android/camera/app/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    invoke-interface {v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getNumberOfCameras()I

    move-result v1

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/app/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    invoke-interface {v1, p1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v1

    if-nez v1, :cond_2

    .line 190
    :cond_1
    sget-object v1, Lcom/android/camera/app/CameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera info not available:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    invoke-interface {v0, p1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v0

    goto :goto_0
.end method

.method public onCameraDisabled(I)V
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    invoke-interface {v0, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onCameraDisabled(I)V

    .line 321
    :cond_0
    return-void
.end method

.method public onCameraOpened(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 2
    .param p1, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 305
    sget-object v0, Lcom/android/camera/app/CameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onCameraOpened"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 306
    iget v0, p0, Lcom/android/camera/app/CameraController;->mRequestingCameraId:I

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iput-object p1, p0, Lcom/android/camera/app/CameraController;->mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 310
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/app/CameraController;->mRequestingCameraId:I

    .line 311
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    invoke-interface {v0, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onCameraOpened(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    goto :goto_0
.end method

.method public onDeviceOpenFailure(ILjava/lang/String;)V
    .locals 1
    .param p1, "cameraId"    # I
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenFailure(ILjava/lang/String;)V

    .line 328
    :cond_0
    return-void
.end method

.method public onDeviceOpenedAlready(ILjava/lang/String;)V
    .locals 1
    .param p1, "cameraId"    # I
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenedAlready(ILjava/lang/String;)V

    .line 335
    :cond_0
    return-void
.end method

.method public onReconnectionFailure(Lcom/android/ex/camera2/portability/CameraAgent;Ljava/lang/String;)V
    .locals 1
    .param p1, "mgr"    # Lcom/android/ex/camera2/portability/CameraAgent;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onReconnectionFailure(Lcom/android/ex/camera2/portability/CameraAgent;Ljava/lang/String;)V

    .line 342
    :cond_0
    return-void
.end method

.method public releaseCamera(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v4, -0x1

    .line 438
    iget-object v1, p0, Lcom/android/camera/app/CameraController;->mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v1, :cond_1

    .line 439
    iget v1, p0, Lcom/android/camera/app/CameraController;->mRequestingCameraId:I

    if-ne v1, v4, :cond_0

    .line 441
    sget-object v1, Lcom/android/camera/app/CameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Trying to release the camera before requesting"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 444
    :cond_0
    iput v4, p0, Lcom/android/camera/app/CameraController;->mRequestingCameraId:I

    .line 461
    :goto_0
    return-void

    .line 447
    :cond_1
    iget-object v1, p0, Lcom/android/camera/app/CameraController;->mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v0

    .line 448
    .local v0, "currentId":I
    if-eq v0, p1, :cond_2

    .line 449
    iget v1, p0, Lcom/android/camera/app/CameraController;->mRequestingCameraId:I

    if-ne v1, p1, :cond_3

    .line 450
    sget-object v1, Lcom/android/camera/app/CameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Releasing camera which was requested but not yet opened (current:requested): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 459
    :cond_2
    iget-object v1, p0, Lcom/android/camera/app/CameraController;->mActiveCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

    invoke-static {p1}, Lcom/android/camera/device/CameraId;->fromLegacyId(I)Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/device/ActiveCameraDeviceTracker;->onCameraClosed(Lcom/android/camera/device/CameraId;)V

    .line 460
    iput v4, p0, Lcom/android/camera/app/CameraController;->mRequestingCameraId:I

    goto :goto_0

    .line 453
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to release a camera neither openednor requested (current:requested:for-release): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/app/CameraController;->mRequestingCameraId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public releaseSubCamera(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v4, -0x1

    .line 263
    iget-object v1, p0, Lcom/android/camera/app/CameraController;->mSubCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v1, :cond_1

    .line 264
    iget v1, p0, Lcom/android/camera/app/CameraController;->mRequestingSubCameraId:I

    if-ne v1, v4, :cond_0

    .line 266
    sget-object v1, Lcom/android/camera/app/CameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Trying to release the camera before requesting"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 269
    :cond_0
    iput v4, p0, Lcom/android/camera/app/CameraController;->mRequestingSubCameraId:I

    .line 286
    :goto_0
    return-void

    .line 272
    :cond_1
    iget-object v1, p0, Lcom/android/camera/app/CameraController;->mSubCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v0

    .line 273
    .local v0, "currentId":I
    if-eq v0, p1, :cond_2

    .line 274
    iget v1, p0, Lcom/android/camera/app/CameraController;->mRequestingSubCameraId:I

    if-ne v1, p1, :cond_3

    .line 275
    sget-object v1, Lcom/android/camera/app/CameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Releasing camera which was requested but not yet opened (current:requested): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 284
    :cond_2
    iget-object v1, p0, Lcom/android/camera/app/CameraController;->mActiveSubCameraDeviceTracker:Lcom/android/camera/device/ActiveSubCameraDeviceTracker;

    invoke-static {p1}, Lcom/android/camera/device/CameraId;->fromLegacyId(I)Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->onCameraClosed(Lcom/android/camera/device/CameraId;)V

    .line 285
    iput v4, p0, Lcom/android/camera/app/CameraController;->mRequestingSubCameraId:I

    goto :goto_0

    .line 278
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to release a camera neither openednor requested (current:requested:for-release): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/app/CameraController;->mRequestingCameraId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeCallbackReceiver()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 464
    iput-object v0, p0, Lcom/android/camera/app/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    .line 465
    iput-object v0, p0, Lcom/android/camera/app/CameraController;->mSubCameraCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    .line 466
    return-void
.end method

.method public requestCamera(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 346
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/app/CameraController;->requestCamera(IZ)V

    .line 347
    return-void
.end method

.method public requestCamera(IZ)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "useNewApi"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v7, -0x1

    .line 351
    sget-object v4, Lcom/android/camera/app/CameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestCamera : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 360
    iget v4, p0, Lcom/android/camera/app/CameraController;->mRequestingCameraId:I

    if-ne v4, v7, :cond_0

    iget v4, p0, Lcom/android/camera/app/CameraController;->mRequestingCameraId:I

    if-ne v4, p1, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    iget-object v4, p0, Lcom/android/camera/app/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    if-eqz v4, :cond_0

    .line 367
    iget v4, p0, Lcom/android/camera/app/CameraController;->mWarmStartId:I

    if-eq v4, v7, :cond_2

    .line 368
    iput v7, p0, Lcom/android/camera/app/CameraController;->mWarmStartId:I

    .line 371
    :cond_2
    iput p1, p0, Lcom/android/camera/app/CameraController;->mRequestingCameraId:I

    .line 372
    iget-object v4, p0, Lcom/android/camera/app/CameraController;->mActiveCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

    invoke-static {p1}, Lcom/android/camera/device/CameraId;->fromLegacyId(I)Lcom/android/camera/device/CameraId;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/device/ActiveCameraDeviceTracker;->onCameraOpening(Lcom/android/camera/device/CameraId;)V

    .line 375
    iget-object v4, p0, Lcom/android/camera/app/CameraController;->mCameraAgentNg:Lcom/android/ex/camera2/portability/CameraAgent;

    if-eqz v4, :cond_3

    if-eqz p2, :cond_3

    move p2, v2

    .line 376
    :goto_1
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mCameraAgentNg:Lcom/android/ex/camera2/portability/CameraAgent;

    .line 378
    .local v0, "cameraManager":Lcom/android/ex/camera2/portability/CameraAgent;
    :goto_2
    iget-object v4, p0, Lcom/android/camera/app/CameraController;->mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v4, :cond_5

    .line 380
    iget-object v2, p0, Lcom/android/camera/app/CameraController;->mCallbackHandler:Landroid/os/Handler;

    invoke-static {v0, p1, v2, p0}, Lcom/android/camera/app/CameraController;->checkAndOpenCamera(Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V

    .line 417
    :goto_3
    iput-boolean p2, p0, Lcom/android/camera/app/CameraController;->mUsingNewApi:Z

    .line 418
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraDeviceInfo()Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/app/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    goto :goto_0

    .end local v0    # "cameraManager":Lcom/android/ex/camera2/portability/CameraAgent;
    :cond_3
    move p2, v3

    .line 375
    goto :goto_1

    .line 376
    :cond_4
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    goto :goto_2

    .line 381
    .restart local v0    # "cameraManager":Lcom/android/ex/camera2/portability/CameraAgent;
    :cond_5
    iget-object v4, p0, Lcom/android/camera/app/CameraController;->mForceCloseExistCamera:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 382
    sget-object v3, Lcom/android/camera/app/CameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "close existing camera - force "

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 383
    iget-object v3, p0, Lcom/android/camera/app/CameraController;->mContext:Landroid/content/Context;

    .line 384
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 383
    invoke-static {v3}, Lcom/android/camera/util/GservicesHelper;->useCamera2ApiThroughPortabilityLayer(Landroid/content/ContentResolver;)Z

    move-result v1

    .line 385
    .local v1, "syncClose":Z
    sget-object v3, Lcom/android/camera/app/CameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "different camera already opened, closing then reopening"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 387
    iget-boolean v3, p0, Lcom/android/camera/app/CameraController;->mUsingNewApi:Z

    if-eqz v3, :cond_7

    .line 388
    iget-object v3, p0, Lcom/android/camera/app/CameraController;->mCameraAgentNg:Lcom/android/ex/camera2/portability/CameraAgent;

    if-eqz v3, :cond_6

    .line 389
    iget-object v3, p0, Lcom/android/camera/app/CameraController;->mCameraAgentNg:Lcom/android/ex/camera2/portability/CameraAgent;

    iget-object v4, p0, Lcom/android/camera/app/CameraController;->mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v3, v4, v2}, Lcom/android/ex/camera2/portability/CameraAgent;->closeCamera(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Z)V

    .line 395
    :cond_6
    :goto_4
    iget-object v2, p0, Lcom/android/camera/app/CameraController;->mCallbackHandler:Landroid/os/Handler;

    invoke-static {v0, p1, v2, p0}, Lcom/android/camera/app/CameraController;->checkAndOpenCamera(Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V

    goto :goto_3

    .line 393
    :cond_7
    iget-object v2, p0, Lcom/android/camera/app/CameraController;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    iget-object v3, p0, Lcom/android/camera/app/CameraController;->mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v2, v3, v1}, Lcom/android/ex/camera2/portability/CameraAgent;->closeCamera(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Z)V

    goto :goto_4

    .line 396
    .end local v1    # "syncClose":Z
    :cond_8
    iget-object v3, p0, Lcom/android/camera/app/CameraController;->mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v3

    if-ne v3, p1, :cond_9

    iget-boolean v3, p0, Lcom/android/camera/app/CameraController;->mUsingNewApi:Z

    if-eq v3, p2, :cond_c

    .line 397
    :cond_9
    iget-object v3, p0, Lcom/android/camera/app/CameraController;->mContext:Landroid/content/Context;

    .line 398
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 397
    invoke-static {v3}, Lcom/android/camera/util/GservicesHelper;->useCamera2ApiThroughPortabilityLayer(Landroid/content/ContentResolver;)Z

    move-result v1

    .line 399
    .restart local v1    # "syncClose":Z
    sget-object v3, Lcom/android/camera/app/CameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "different camera already opened, closing then reopening"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 401
    iget-boolean v3, p0, Lcom/android/camera/app/CameraController;->mUsingNewApi:Z

    if-eqz v3, :cond_b

    .line 402
    iget-object v3, p0, Lcom/android/camera/app/CameraController;->mCameraAgentNg:Lcom/android/ex/camera2/portability/CameraAgent;

    if-eqz v3, :cond_a

    .line 403
    iget-object v3, p0, Lcom/android/camera/app/CameraController;->mCameraAgentNg:Lcom/android/ex/camera2/portability/CameraAgent;

    iget-object v4, p0, Lcom/android/camera/app/CameraController;->mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v3, v4, v2}, Lcom/android/ex/camera2/portability/CameraAgent;->closeCamera(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Z)V

    .line 409
    :cond_a
    :goto_5
    iget-object v2, p0, Lcom/android/camera/app/CameraController;->mCallbackHandler:Landroid/os/Handler;

    invoke-static {v0, p1, v2, p0}, Lcom/android/camera/app/CameraController;->checkAndOpenCamera(Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V

    goto :goto_3

    .line 407
    :cond_b
    iget-object v2, p0, Lcom/android/camera/app/CameraController;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    iget-object v3, p0, Lcom/android/camera/app/CameraController;->mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v2, v3, v1}, Lcom/android/ex/camera2/portability/CameraAgent;->closeCamera(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Z)V

    goto :goto_5

    .line 412
    .end local v1    # "syncClose":Z
    :cond_c
    sget-object v2, Lcom/android/camera/app/CameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "reconnecting to use the existing camera"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 413
    iget-object v2, p0, Lcom/android/camera/app/CameraController;->mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/app/CameraController;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->reconnect(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V

    .line 414
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/app/CameraController;->mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    goto/16 :goto_3
.end method

.method public requestSubCamera(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/app/CameraController;->requestSubCamera(IZ)V

    .line 211
    return-void
.end method

.method public requestSubCamera(IZ)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "useNewApi"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 215
    sget-object v3, Lcom/android/camera/app/CameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestSubCamera : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 224
    iget v3, p0, Lcom/android/camera/app/CameraController;->mRequestingSubCameraId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/android/camera/app/CameraController;->mRequestingSubCameraId:I

    if-ne v3, p1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v3, p0, Lcom/android/camera/app/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    if-eqz v3, :cond_0

    .line 231
    iput p1, p0, Lcom/android/camera/app/CameraController;->mRequestingSubCameraId:I

    .line 232
    iget-object v3, p0, Lcom/android/camera/app/CameraController;->mActiveSubCameraDeviceTracker:Lcom/android/camera/device/ActiveSubCameraDeviceTracker;

    invoke-static {p1}, Lcom/android/camera/device/CameraId;->fromLegacyId(I)Lcom/android/camera/device/CameraId;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->onCameraOpening(Lcom/android/camera/device/CameraId;)V

    .line 235
    iget-object v3, p0, Lcom/android/camera/app/CameraController;->mSubCameraAgentNg:Lcom/android/ex/camera2/portability/CameraAgent;

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    move p2, v2

    .line 236
    :goto_1
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mSubCameraAgentNg:Lcom/android/ex/camera2/portability/CameraAgent;

    .line 238
    .local v0, "cameraManager":Lcom/android/ex/camera2/portability/CameraAgent;
    :goto_2
    iget-object v3, p0, Lcom/android/camera/app/CameraController;->mSubCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v3, :cond_4

    .line 240
    iget-object v2, p0, Lcom/android/camera/app/CameraController;->mCallbackHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/camera/app/CameraController$SubCameraOpenCallback;

    invoke-direct {v3, p0, v6}, Lcom/android/camera/app/CameraController$SubCameraOpenCallback;-><init>(Lcom/android/camera/app/CameraController;Lcom/android/camera/app/CameraController$1;)V

    invoke-static {v0, p1, v2, v3}, Lcom/android/camera/app/CameraController;->checkAndOpenCamera(Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V

    goto :goto_0

    .line 235
    .end local v0    # "cameraManager":Lcom/android/ex/camera2/portability/CameraAgent;
    :cond_2
    const/4 p2, 0x0

    goto :goto_1

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mSubCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    goto :goto_2

    .line 241
    .restart local v0    # "cameraManager":Lcom/android/ex/camera2/portability/CameraAgent;
    :cond_4
    iget-object v3, p0, Lcom/android/camera/app/CameraController;->mSubCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v3

    if-ne v3, p1, :cond_5

    iget-boolean v3, p0, Lcom/android/camera/app/CameraController;->mUsingNewApi:Z

    if-eq v3, p2, :cond_7

    .line 242
    :cond_5
    iget-object v3, p0, Lcom/android/camera/app/CameraController;->mContext:Landroid/content/Context;

    .line 243
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 242
    invoke-static {v3}, Lcom/android/camera/util/GservicesHelper;->useCamera2ApiThroughPortabilityLayer(Landroid/content/ContentResolver;)Z

    move-result v1

    .line 244
    .local v1, "syncClose":Z
    sget-object v3, Lcom/android/camera/app/CameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "different camera already opened, closing then reopening"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 246
    iget-boolean v3, p0, Lcom/android/camera/app/CameraController;->mUsingNewApi:Z

    if-eqz v3, :cond_6

    .line 247
    iget-object v3, p0, Lcom/android/camera/app/CameraController;->mSubCameraAgentNg:Lcom/android/ex/camera2/portability/CameraAgent;

    iget-object v4, p0, Lcom/android/camera/app/CameraController;->mSubCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v3, v4, v2}, Lcom/android/ex/camera2/portability/CameraAgent;->closeCamera(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Z)V

    .line 252
    :goto_3
    iget-object v2, p0, Lcom/android/camera/app/CameraController;->mCallbackHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/camera/app/CameraController$SubCameraOpenCallback;

    invoke-direct {v3, p0, v6}, Lcom/android/camera/app/CameraController$SubCameraOpenCallback;-><init>(Lcom/android/camera/app/CameraController;Lcom/android/camera/app/CameraController$1;)V

    invoke-static {v0, p1, v2, v3}, Lcom/android/camera/app/CameraController;->checkAndOpenCamera(Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V

    goto :goto_0

    .line 250
    :cond_6
    iget-object v2, p0, Lcom/android/camera/app/CameraController;->mSubCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    iget-object v3, p0, Lcom/android/camera/app/CameraController;->mSubCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v2, v3, v1}, Lcom/android/ex/camera2/portability/CameraAgent;->closeCamera(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Z)V

    goto :goto_3

    .line 255
    .end local v1    # "syncClose":Z
    :cond_7
    sget-object v2, Lcom/android/camera/app/CameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "reconnecting to use the existing camera"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 256
    iget-object v2, p0, Lcom/android/camera/app/CameraController;->mSubCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/app/CameraController;->mCallbackHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/camera/app/CameraController$SubCameraOpenCallback;

    invoke-direct {v4, p0, v6}, Lcom/android/camera/app/CameraController$SubCameraOpenCallback;-><init>(Lcom/android/camera/app/CameraController;Lcom/android/camera/app/CameraController$1;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->reconnect(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V

    .line 257
    iput-object v6, p0, Lcom/android/camera/app/CameraController;->mSubCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    goto :goto_0
.end method

.method public resyncCamera()V
    .locals 2

    .prologue
    .line 511
    sget-object v0, Lcom/android/camera/app/CameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "resyncCamera"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 512
    const/16 v0, 0x463

    invoke-direct {p0, v0}, Lcom/android/camera/app/CameraController;->setDualCamModeConfig(I)V

    .line 513
    return-void
.end method

.method public setCameraExceptionHandler(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V
    .locals 1
    .param p1, "exceptionHandler"    # Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/camera/app/CameraController;->mCameraExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    .line 124
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/CameraAgent;->setCameraExceptionHandler(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V

    .line 125
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mCameraAgentNg:Lcom/android/ex/camera2/portability/CameraAgent;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mCameraAgentNg:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/CameraAgent;->setCameraExceptionHandler(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V

    .line 128
    :cond_0
    return-void
.end method

.method public setOneShotPreviewCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "cb"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setOneShotPreviewCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V

    .line 545
    return-void
.end method

.method public waitingForCamera()Z
    .locals 2

    .prologue
    .line 433
    iget v0, p0, Lcom/android/camera/app/CameraController;->mRequestingCameraId:I

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
    .line 295
    iget v0, p0, Lcom/android/camera/app/CameraController;->mRequestingSubCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public warmStartCamera(IZ)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "useNewApi"    # Z

    .prologue
    .line 423
    sget-object v1, Lcom/android/camera/app/CameraController;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "warmStartCamera : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 424
    iget-object v1, p0, Lcom/android/camera/app/CameraController;->mCameraAgentNg:Lcom/android/ex/camera2/portability/CameraAgent;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 425
    :goto_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mCameraAgentNg:Lcom/android/ex/camera2/portability/CameraAgent;

    .line 426
    .local v0, "cameraManager":Lcom/android/ex/camera2/portability/CameraAgent;
    :goto_1
    iput p1, p0, Lcom/android/camera/app/CameraController;->mWarmStartId:I

    .line 428
    iget-object v1, p0, Lcom/android/camera/app/CameraController;->mCallbackHandler:Landroid/os/Handler;

    invoke-static {v0, p1, v1, p0}, Lcom/android/camera/app/CameraController;->checkAndWarmStartCamera(Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V

    .line 429
    return-void

    .line 424
    .end local v0    # "cameraManager":Lcom/android/ex/camera2/portability/CameraAgent;
    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/android/camera/app/CameraController;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    goto :goto_1
.end method
