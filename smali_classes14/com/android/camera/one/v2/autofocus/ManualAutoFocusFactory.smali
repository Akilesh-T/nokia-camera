.class public Lcom/android/camera/one/v2/autofocus/ManualAutoFocusFactory;
.super Ljava/lang/Object;
.source "ManualAutoFocusFactory.java"


# static fields
.field public static final DEAFULT_AF_HOLD_SECONDS:I = 0xa

.field public static final EXPOSURE_CHANGE_AF_HOLD_SECONDS:I = 0xa


# instance fields
.field private final mAEMeteringRegion:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<[",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;"
        }
    .end annotation
.end field

.field private final mAFMeteringRegion:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<[",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;"
        }
    .end annotation
.end field

.field private final mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

.field private final mSlaveAEMeteringRegion:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<[",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;"
        }
    .end annotation
.end field

.field private final mSlaveAFMeteringRegion:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<[",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V
    .locals 0
    .param p1, "manualAutoFocus"    # Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;",
            "Lcom/google/common/base/Supplier",
            "<[",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;",
            "Lcom/google/common/base/Supplier",
            "<[",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;",
            "Lcom/google/common/base/Supplier",
            "<[",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;",
            "Lcom/google/common/base/Supplier",
            "<[",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p2, "aeMeteringRegion":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<[Landroid/hardware/camera2/params/MeteringRectangle;>;"
    .local p3, "afMeteringRegion":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<[Landroid/hardware/camera2/params/MeteringRectangle;>;"
    .local p4, "slaveAeMeteringRegion":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<[Landroid/hardware/camera2/params/MeteringRectangle;>;"
    .local p5, "slaveAfMeteringRegion":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<[Landroid/hardware/camera2/params/MeteringRectangle;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusFactory;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    .line 64
    iput-object p2, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusFactory;->mAEMeteringRegion:Lcom/google/common/base/Supplier;

    .line 65
    iput-object p3, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusFactory;->mAFMeteringRegion:Lcom/google/common/base/Supplier;

    .line 66
    iput-object p4, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusFactory;->mSlaveAEMeteringRegion:Lcom/google/common/base/Supplier;

    .line 67
    iput-object p5, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusFactory;->mSlaveAFMeteringRegion:Lcom/google/common/base/Supplier;

    .line 68
    return-void
.end method

.method public static create(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;Lcom/android/camera/one/v2/autofocus/AFMeteringRegion;Lcom/android/camera/one/v2/autofocus/AFMeteringRegion;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/async/ConcurrentState;Ljava/lang/Runnable;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;IILcom/android/camera/one/Settings3A;Lcom/android/camera/one/OneCameraCaptureSetting;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/android/camera/one/v2/autofocus/ManualAutoFocusFactory;
    .locals 28
    .param p0, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p1, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p2, "slaveCameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p4, "slaveFrameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "commandExecutor"    # Lcom/android/camera/one/v2/commands/CameraCommandExecutor;
    .param p8, "aeMeteringRegion"    # Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;
    .param p9, "slaveAeMeteringRegion"    # Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;
    .param p10, "afMeteringRegion"    # Lcom/android/camera/one/v2/autofocus/AFMeteringRegion;
    .param p11, "slaveAfMeteringRegion"    # Lcom/android/camera/one/v2/autofocus/AFMeteringRegion;
    .param p12, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .param p14, "previewRunner"    # Ljava/lang/Runnable;
    .param p15, "rootBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p16, "slaveRootBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p17, "templateType"    # I
    .param p18, "slaveTemplateType"    # I
    .param p19, "settings3A"    # Lcom/android/camera/one/Settings3A;
    .param p20, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .param p21, "threadPool"    # Ljava/util/concurrent/ScheduledExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Lifetime;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/android/camera/one/v2/commands/CameraCommandExecutor;",
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/one/v2/autofocus/MeteringParameters;",
            ">;",
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/one/v2/autofocus/MeteringParameters;",
            ">;",
            "Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;",
            "Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;",
            "Lcom/android/camera/one/v2/autofocus/AFMeteringRegion;",
            "Lcom/android/camera/one/v2/autofocus/AFMeteringRegion;",
            "Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;",
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Runnable;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "II",
            "Lcom/android/camera/one/Settings3A;",
            "Lcom/android/camera/one/OneCameraCaptureSetting;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/android/camera/one/v2/autofocus/ManualAutoFocusFactory;"
        }
    .end annotation

    .prologue
    .line 103
    .local p6, "currentMeteringParameters":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Lcom/android/camera/one/v2/autofocus/MeteringParameters;>;"
    .local p7, "slaveCurrentMeteringParameters":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Lcom/android/camera/one/v2/autofocus/MeteringParameters;>;"
    .local p13, "touchExposure":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Integer;>;"
    new-instance v7, Lcom/android/camera/one/v2/core/RequestTemplate;

    move-object/from16 v0, p15

    invoke-direct {v7, v0}, Lcom/android/camera/one/v2/core/RequestTemplate;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)V

    .line 105
    .local v7, "afScanRequestBuilder":Lcom/android/camera/one/v2/core/RequestTemplate;
    if-eqz p16, :cond_0

    new-instance v8, Lcom/android/camera/one/v2/core/RequestTemplate;

    move-object/from16 v0, p16

    invoke-direct {v8, v0}, Lcom/android/camera/one/v2/core/RequestTemplate;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)V

    .line 107
    .local v8, "slaveAfScanRequestBuilder":Lcom/android/camera/one/v2/core/RequestTemplate;
    :goto_0
    new-instance v2, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v9, p17

    move/from16 v10, p18

    move-object/from16 v11, p20

    invoke-direct/range {v2 .. v11}, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;-><init>(Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;IILcom/android/camera/one/OneCameraCaptureSetting;)V

    .line 109
    .local v2, "afScanCommand":Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;
    new-instance v9, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object v14, v7

    move-object v15, v8

    move/from16 v16, p17

    move/from16 v17, p18

    move-object/from16 v18, p13

    move-object/from16 v19, p12

    move-object/from16 v20, p20

    invoke-direct/range {v9 .. v20}, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;-><init>(Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;IILcom/android/camera/async/ConcurrentState;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCameraCaptureSetting;)V

    .line 111
    .local v9, "touchExposureCommand":Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;
    new-instance v15, Lcom/android/camera/one/v2/commands/ResettingRunnableCameraCommand;

    move-object/from16 v0, p5

    invoke-direct {v15, v0, v9}, Lcom/android/camera/one/v2/commands/ResettingRunnableCameraCommand;-><init>(Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/commands/CameraCommand;)V

    .line 114
    .local v15, "touchExposureRunner":Ljava/lang/Runnable;
    new-instance v13, Lcom/android/camera/async/ConcurrentState;

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v13, v3}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 116
    .local v13, "afHoldSeconds":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Integer;>;"
    new-instance v12, Lcom/android/camera/async/ResettingDelayedExecutor;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p21

    invoke-direct {v12, v0, v13, v3}, Lcom/android/camera/async/ResettingDelayedExecutor;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/android/camera/async/ConcurrentState;Ljava/util/concurrent/TimeUnit;)V

    .line 117
    .local v12, "afHoldDelayedExecutor":Lcom/android/camera/async/ResettingDelayedExecutor;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 119
    new-instance v3, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusFactory$1;

    invoke-direct {v3, v12}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusFactory$1;-><init>(Lcom/android/camera/async/ResettingDelayedExecutor;)V

    .line 124
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v4

    .line 119
    invoke-virtual {v13, v3, v4}, Lcom/android/camera/async/ConcurrentState;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v27

    .line 125
    .local v27, "afHoldSecondsCallback":Lcom/android/camera/async/SafeCloseable;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 127
    new-instance v10, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;

    move-object v11, v2

    move-object/from16 v14, p14

    move-object/from16 v16, p13

    move-object/from16 v17, p6

    move-object/from16 v18, p7

    invoke-direct/range {v10 .. v18}, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;-><init>(Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;Lcom/android/camera/async/ResettingDelayedExecutor;Lcom/android/camera/async/ConcurrentState;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Updatable;)V

    .line 129
    .local v10, "afScanHoldResetCommand":Lcom/android/camera/one/v2/commands/CameraCommand;
    new-instance v19, Lcom/android/camera/one/v2/commands/ResettingRunnableCameraCommand;

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v10}, Lcom/android/camera/one/v2/commands/ResettingRunnableCameraCommand;-><init>(Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/commands/CameraCommand;)V

    .line 132
    .local v19, "afRunner":Ljava/lang/Runnable;
    new-instance v16, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;

    move-object/from16 v17, p6

    move-object/from16 v18, p7

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object/from16 v22, p13

    move-object/from16 v23, p1

    move-object/from16 v24, p2

    move-object/from16 v25, p19

    move-object/from16 v26, p20

    invoke-direct/range {v16 .. v26}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;-><init>(Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/ConcurrentState;Ljava/lang/Runnable;Lcom/android/camera/async/ResettingDelayedExecutor;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/Settings3A;Lcom/android/camera/one/OneCameraCaptureSetting;)V

    .line 134
    .local v16, "manualAutoFocus":Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;
    new-instance v20, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusFactory;

    move-object/from16 v21, v16

    move-object/from16 v22, p8

    move-object/from16 v23, p10

    move-object/from16 v24, p9

    move-object/from16 v25, p11

    invoke-direct/range {v20 .. v25}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusFactory;-><init>(Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    return-object v20

    .line 105
    .end local v2    # "afScanCommand":Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;
    .end local v8    # "slaveAfScanRequestBuilder":Lcom/android/camera/one/v2/core/RequestTemplate;
    .end local v9    # "touchExposureCommand":Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;
    .end local v10    # "afScanHoldResetCommand":Lcom/android/camera/one/v2/commands/CameraCommand;
    .end local v12    # "afHoldDelayedExecutor":Lcom/android/camera/async/ResettingDelayedExecutor;
    .end local v13    # "afHoldSeconds":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Integer;>;"
    .end local v15    # "touchExposureRunner":Ljava/lang/Runnable;
    .end local v16    # "manualAutoFocus":Lcom/android/camera/one/v2/autofocus/ManualAutoFocusImpl;
    .end local v19    # "afRunner":Ljava/lang/Runnable;
    .end local v27    # "afHoldSecondsCallback":Lcom/android/camera/async/SafeCloseable;
    :cond_0
    const/4 v8, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public provideAEMeteringRegion()Lcom/google/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Supplier",
            "<[",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusFactory;->mAEMeteringRegion:Lcom/google/common/base/Supplier;

    return-object v0
.end method

.method public provideAFMeteringRegion()Lcom/google/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Supplier",
            "<[",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusFactory;->mAFMeteringRegion:Lcom/google/common/base/Supplier;

    return-object v0
.end method

.method public provideManualAutoFocus()Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusFactory;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    return-object v0
.end method

.method public provideSlaveAEMeteringRegion()Lcom/google/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Supplier",
            "<[",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusFactory;->mSlaveAEMeteringRegion:Lcom/google/common/base/Supplier;

    return-object v0
.end method

.method public provideSlaveAFMeteringRegion()Lcom/google/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Supplier",
            "<[",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusFactory;->mSlaveAFMeteringRegion:Lcom/google/common/base/Supplier;

    return-object v0
.end method
