.class final Lcom/android/camera/one/v2/errorhandling/FastCameraReset;
.super Ljava/lang/Object;
.source "FastCameraReset.java"

# interfaces
.implements Lcom/android/camera/one/v2/errorhandling/FailureHandler;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mCaptureSession:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

.field private final mCommandExecutor:Lcom/android/camera/one/v2/commands/CameraCommandExecutor;

.field private final mLog:Lcom/android/camera/debug/Logger;

.field private final mPreviewStarter:Ljava/lang/Runnable;

.field private final mUsageStats:Lcom/android/camera/stats/UsageStatistics;


# direct methods
.method constructor <init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Ljava/lang/Runnable;Lcom/android/camera/stats/UsageStatistics;)V
    .locals 2
    .param p1, "logFactory"    # Lcom/android/camera/debug/Logger$Factory;
    .param p2, "captureSession"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;
    .param p3, "commandExecutor"    # Lcom/android/camera/one/v2/commands/CameraCommandExecutor;
    .param p4, "previewStarter"    # Ljava/lang/Runnable;
    .param p5, "usageStats"    # Lcom/android/camera/stats/UsageStatistics;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "FastCameraReset"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Lcom/android/camera/debug/Log$Tag;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/errorhandling/FastCameraReset;->mLog:Lcom/android/camera/debug/Logger;

    .line 49
    iput-object p2, p0, Lcom/android/camera/one/v2/errorhandling/FastCameraReset;->mCaptureSession:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

    .line 50
    iput-object p3, p0, Lcom/android/camera/one/v2/errorhandling/FastCameraReset;->mCommandExecutor:Lcom/android/camera/one/v2/commands/CameraCommandExecutor;

    .line 51
    iput-object p4, p0, Lcom/android/camera/one/v2/errorhandling/FastCameraReset;->mPreviewStarter:Ljava/lang/Runnable;

    .line 52
    iput-object p5, p0, Lcom/android/camera/one/v2/errorhandling/FastCameraReset;->mUsageStats:Lcom/android/camera/stats/UsageStatistics;

    .line 53
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 58
    iget-object v1, p0, Lcom/android/camera/one/v2/errorhandling/FastCameraReset;->mUsageStats:Lcom/android/camera/stats/UsageStatistics;

    const/16 v2, 0x2710

    const-string v3, "api2_repeated_failure"

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/android/camera/stats/UsageStatistics;->cameraFailure(ILjava/lang/String;II)V

    .line 61
    iget-object v1, p0, Lcom/android/camera/one/v2/errorhandling/FastCameraReset;->mLog:Lcom/android/camera/debug/Logger;

    const-string v2, "beginning reset()"

    invoke-interface {v1, v2}, Lcom/android/camera/debug/Logger;->w(Ljava/lang/String;)V

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/errorhandling/FastCameraReset;->mLog:Lcom/android/camera/debug/Logger;

    const-string v2, "abortCaptures()"

    invoke-interface {v1, v2}, Lcom/android/camera/debug/Logger;->w(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/android/camera/one/v2/errorhandling/FastCameraReset;->mCaptureSession:Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;

    invoke-interface {v1}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;->abortCaptures()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    :goto_0
    iget-object v1, p0, Lcom/android/camera/one/v2/errorhandling/FastCameraReset;->mLog:Lcom/android/camera/debug/Logger;

    const-string v2, "flushing existing camera commands"

    invoke-interface {v1, v2}, Lcom/android/camera/debug/Logger;->w(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/android/camera/one/v2/errorhandling/FastCameraReset;->mCommandExecutor:Lcom/android/camera/one/v2/commands/CameraCommandExecutor;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;->flush()V

    .line 72
    iget-object v1, p0, Lcom/android/camera/one/v2/errorhandling/FastCameraReset;->mLog:Lcom/android/camera/debug/Logger;

    const-string v2, "restarting the preview"

    invoke-interface {v1, v2}, Lcom/android/camera/debug/Logger;->w(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/android/camera/one/v2/errorhandling/FastCameraReset;->mPreviewStarter:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 74
    iget-object v1, p0, Lcom/android/camera/one/v2/errorhandling/FastCameraReset;->mLog:Lcom/android/camera/debug/Logger;

    const-string v2, "finished reset()"

    invoke-interface {v1, v2}, Lcom/android/camera/debug/Logger;->w(Ljava/lang/String;)V

    .line 75
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0

    .line 67
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :catch_1
    move-exception v0

    .line 68
    .local v0, "e":Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;
    invoke-virtual {v0}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;->printStackTrace()V

    goto :goto_0
.end method
