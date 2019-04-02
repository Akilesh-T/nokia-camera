.class public final Lcom/android/camera/one/v2/errorhandling/RepeatFailureHandlerComponent;
.super Ljava/lang/Object;
.source "RepeatFailureHandlerComponent.java"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mRepeatFailureHandler:Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;)V
    .locals 0
    .param p1, "repeatFailureHandler"    # Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureHandlerComponent;->mRepeatFailureHandler:Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;

    .line 42
    return-void
.end method

.method public static create(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/FatalErrorHandler;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Ljava/lang/Runnable;Lcom/android/camera/stats/UsageStatistics;I)Lcom/android/camera/one/v2/errorhandling/RepeatFailureHandlerComponent;
    .locals 11
    .param p0, "logFactory"    # Lcom/android/camera/debug/Logger$Factory;
    .param p1, "fatalErrorHandler"    # Lcom/android/camera/FatalErrorHandler;
    .param p2, "captureSession"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;
    .param p3, "commandExecutor"    # Lcom/android/camera/one/v2/commands/CameraCommandExecutor;
    .param p4, "previewStarter"    # Ljava/lang/Runnable;
    .param p5, "usageStats"    # Lcom/android/camera/stats/UsageStatistics;
    .param p6, "consecutiveFailureThreshold"    # I

    .prologue
    .line 52
    new-instance v1, Lcom/android/camera/one/v2/errorhandling/FastCameraReset;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/one/v2/errorhandling/FastCameraReset;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Ljava/lang/Runnable;Lcom/android/camera/stats/UsageStatistics;)V

    .line 54
    .local v1, "fastCameraReset":Lcom/android/camera/one/v2/errorhandling/FastCameraReset;
    new-instance v8, Lcom/android/camera/one/v2/errorhandling/FatalErrorDialogFailureHandler;

    move-object/from16 v0, p5

    invoke-direct {v8, p1, v0}, Lcom/android/camera/one/v2/errorhandling/FatalErrorDialogFailureHandler;-><init>(Lcom/android/camera/FatalErrorHandler;Lcom/android/camera/stats/UsageStatistics;)V

    .line 57
    .local v8, "fatalErrorDialog":Lcom/android/camera/one/v2/errorhandling/FatalErrorDialogFailureHandler;
    new-instance v10, Lcom/android/camera/one/v2/errorhandling/RecoverySuccessCallback;

    move-object/from16 v0, p5

    invoke-direct {v10, v0}, Lcom/android/camera/one/v2/errorhandling/RecoverySuccessCallback;-><init>(Lcom/android/camera/stats/UsageStatistics;)V

    .line 59
    .local v10, "recoverySuccessCallback":Lcom/android/camera/one/v2/errorhandling/RecoverySuccessCallback;
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/camera/one/v2/errorhandling/FailureHandler;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v8, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 60
    .local v9, "recoveryStrategies":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/errorhandling/FailureHandler;>;"
    new-instance v7, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;

    move/from16 v0, p6

    invoke-direct {v7, p0, v0, v9, v10}, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;-><init>(Lcom/android/camera/debug/Logger$Factory;ILjava/util/List;Lcom/android/camera/util/Callback;)V

    .line 64
    .local v7, "failureDetector":Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;
    new-instance v2, Lcom/android/camera/one/v2/errorhandling/RepeatFailureHandlerComponent;

    invoke-direct {v2, v7}, Lcom/android/camera/one/v2/errorhandling/RepeatFailureHandlerComponent;-><init>(Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;)V

    return-object v2
.end method


# virtual methods
.method public provideResponseListener()Lcom/android/camera/one/v2/core/ResponseListener;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureHandlerComponent;->mRepeatFailureHandler:Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;

    return-object v0
.end method
