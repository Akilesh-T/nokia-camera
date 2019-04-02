.class public final Lcom/android/camera/FatalErrorHandlerImpl;
.super Ljava/lang/Object;
.source "FatalErrorHandlerImpl.java"

# interfaces
.implements Lcom/android/camera/FatalErrorHandler;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mOnDialogShowingListener:Lcom/android/camera/util/CameraUtil$OnDialogShowingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "FatalErrorHandler"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/FatalErrorHandlerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/camera/util/CameraUtil$OnDialogShowingListener;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/android/camera/util/CameraUtil$OnDialogShowingListener;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/camera/FatalErrorHandlerImpl;->mActivity:Landroid/app/Activity;

    .line 34
    iput-object p2, p0, Lcom/android/camera/FatalErrorHandlerImpl;->mOnDialogShowingListener:Lcom/android/camera/util/CameraUtil$OnDialogShowingListener;

    .line 35
    return-void
.end method


# virtual methods
.method public handleFatalError(Lcom/android/camera/FatalErrorHandler$Reason;)V
    .locals 6
    .param p1, "reason"    # Lcom/android/camera/FatalErrorHandler$Reason;

    .prologue
    .line 120
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    .line 122
    .local v5, "ex":Ljava/lang/Exception;
    sget-object v0, Lcom/android/camera/FatalErrorHandlerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling Fatal Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Lcom/android/camera/FatalErrorHandler$Reason;->doesFinishActivity()Z

    move-result v4

    .line 125
    .local v4, "finishActivity":Z
    iget-object v0, p0, Lcom/android/camera/FatalErrorHandlerImpl;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/camera/FatalErrorHandlerImpl;->mOnDialogShowingListener:Lcom/android/camera/util/CameraUtil$OnDialogShowingListener;

    invoke-virtual {p1}, Lcom/android/camera/FatalErrorHandler$Reason;->getDialogMsgId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/FatalErrorHandler$Reason;->getFeedbackMsgId()I

    move-result v3

    invoke-static/range {v0 .. v5}, Lcom/android/camera/util/CameraUtil;->showError(Landroid/app/Activity;Lcom/android/camera/util/CameraUtil$OnDialogShowingListener;IIZLjava/lang/Exception;)V

    .line 127
    return-void
.end method

.method public onCameraDisabledFailure()V
    .locals 7

    .prologue
    const/4 v3, -0x1

    .line 103
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    .line 105
    .local v5, "ex":Ljava/lang/Exception;
    sget-object v0, Lcom/android/camera/FatalErrorHandlerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling Camera Disabled Failure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    const/16 v1, 0x2710

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/android/camera/stats/UsageStatistics;->cameraFailure(ILjava/lang/String;II)V

    .line 112
    sget-object v6, Lcom/android/camera/FatalErrorHandler$Reason;->CAMERA_DISABLED_BY_SECURITY_POLICY:Lcom/android/camera/FatalErrorHandler$Reason;

    .line 113
    .local v6, "reason":Lcom/android/camera/FatalErrorHandler$Reason;
    invoke-virtual {v6}, Lcom/android/camera/FatalErrorHandler$Reason;->doesFinishActivity()Z

    move-result v4

    .line 114
    .local v4, "finishActivity":Z
    iget-object v0, p0, Lcom/android/camera/FatalErrorHandlerImpl;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/camera/FatalErrorHandlerImpl;->mOnDialogShowingListener:Lcom/android/camera/util/CameraUtil$OnDialogShowingListener;

    invoke-virtual {v6}, Lcom/android/camera/FatalErrorHandler$Reason;->getDialogMsgId()I

    move-result v2

    invoke-virtual {v6}, Lcom/android/camera/FatalErrorHandler$Reason;->getFeedbackMsgId()I

    move-result v3

    invoke-static/range {v0 .. v5}, Lcom/android/camera/util/CameraUtil;->showError(Landroid/app/Activity;Lcom/android/camera/util/CameraUtil$OnDialogShowingListener;IIZLjava/lang/Exception;)V

    .line 116
    return-void
.end method

.method public onCameraOpenFailure()V
    .locals 7

    .prologue
    const/4 v3, -0x1

    .line 55
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    .line 57
    .local v5, "ex":Ljava/lang/Exception;
    sget-object v0, Lcom/android/camera/FatalErrorHandlerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling Camera Open Failure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    const/16 v1, 0x2710

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/android/camera/stats/UsageStatistics;->cameraFailure(ILjava/lang/String;II)V

    .line 63
    sget-object v6, Lcom/android/camera/FatalErrorHandler$Reason;->CANNOT_CONNECT_TO_CAMERA:Lcom/android/camera/FatalErrorHandler$Reason;

    .line 64
    .local v6, "reason":Lcom/android/camera/FatalErrorHandler$Reason;
    invoke-virtual {v6}, Lcom/android/camera/FatalErrorHandler$Reason;->doesFinishActivity()Z

    move-result v4

    .line 65
    .local v4, "finishActivity":Z
    iget-object v0, p0, Lcom/android/camera/FatalErrorHandlerImpl;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/camera/FatalErrorHandlerImpl;->mOnDialogShowingListener:Lcom/android/camera/util/CameraUtil$OnDialogShowingListener;

    invoke-virtual {v6}, Lcom/android/camera/FatalErrorHandler$Reason;->getDialogMsgId()I

    move-result v2

    invoke-virtual {v6}, Lcom/android/camera/FatalErrorHandler$Reason;->getFeedbackMsgId()I

    move-result v3

    invoke-static/range {v0 .. v5}, Lcom/android/camera/util/CameraUtil;->showError(Landroid/app/Activity;Lcom/android/camera/util/CameraUtil$OnDialogShowingListener;IIZLjava/lang/Exception;)V

    .line 67
    return-void
.end method

.method public onCameraReconnectFailure()V
    .locals 7

    .prologue
    const/4 v3, -0x1

    .line 71
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    .line 73
    .local v5, "ex":Ljava/lang/Exception;
    sget-object v0, Lcom/android/camera/FatalErrorHandlerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling Camera Reconnect Failure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    const/16 v1, 0x2710

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/android/camera/stats/UsageStatistics;->cameraFailure(ILjava/lang/String;II)V

    .line 79
    sget-object v6, Lcom/android/camera/FatalErrorHandler$Reason;->CANNOT_CONNECT_TO_CAMERA:Lcom/android/camera/FatalErrorHandler$Reason;

    .line 80
    .local v6, "reason":Lcom/android/camera/FatalErrorHandler$Reason;
    invoke-virtual {v6}, Lcom/android/camera/FatalErrorHandler$Reason;->doesFinishActivity()Z

    move-result v4

    .line 81
    .local v4, "finishActivity":Z
    iget-object v0, p0, Lcom/android/camera/FatalErrorHandlerImpl;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/camera/FatalErrorHandlerImpl;->mOnDialogShowingListener:Lcom/android/camera/util/CameraUtil$OnDialogShowingListener;

    invoke-virtual {v6}, Lcom/android/camera/FatalErrorHandler$Reason;->getDialogMsgId()I

    move-result v2

    invoke-virtual {v6}, Lcom/android/camera/FatalErrorHandler$Reason;->getFeedbackMsgId()I

    move-result v3

    invoke-static/range {v0 .. v5}, Lcom/android/camera/util/CameraUtil;->showError(Landroid/app/Activity;Lcom/android/camera/util/CameraUtil$OnDialogShowingListener;IIZLjava/lang/Exception;)V

    .line 83
    return-void
.end method

.method public onGenericCameraAccessFailure()V
    .locals 7

    .prologue
    const/4 v3, -0x1

    .line 87
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    .line 89
    .local v5, "ex":Ljava/lang/Exception;
    sget-object v0, Lcom/android/camera/FatalErrorHandlerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling Camera Access Failure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    const/16 v1, 0x2710

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/android/camera/stats/UsageStatistics;->cameraFailure(ILjava/lang/String;II)V

    .line 95
    sget-object v6, Lcom/android/camera/FatalErrorHandler$Reason;->CANNOT_CONNECT_TO_CAMERA:Lcom/android/camera/FatalErrorHandler$Reason;

    .line 96
    .local v6, "reason":Lcom/android/camera/FatalErrorHandler$Reason;
    invoke-virtual {v6}, Lcom/android/camera/FatalErrorHandler$Reason;->doesFinishActivity()Z

    move-result v4

    .line 97
    .local v4, "finishActivity":Z
    iget-object v0, p0, Lcom/android/camera/FatalErrorHandlerImpl;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/camera/FatalErrorHandlerImpl;->mOnDialogShowingListener:Lcom/android/camera/util/CameraUtil$OnDialogShowingListener;

    invoke-virtual {v6}, Lcom/android/camera/FatalErrorHandler$Reason;->getDialogMsgId()I

    move-result v2

    invoke-virtual {v6}, Lcom/android/camera/FatalErrorHandler$Reason;->getFeedbackMsgId()I

    move-result v3

    invoke-static/range {v0 .. v5}, Lcom/android/camera/util/CameraUtil;->showError(Landroid/app/Activity;Lcom/android/camera/util/CameraUtil$OnDialogShowingListener;IIZLjava/lang/Exception;)V

    .line 99
    return-void
.end method

.method public onMediaStorageFailure(I)V
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    .line 39
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 41
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/android/camera/FatalErrorHandlerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handling Media Storage Failure:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v2

    const-wide/16 v4, -0x4

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/stats/UsageStatistics;->storageWarning(J)V

    .line 46
    sget-object v1, Lcom/android/camera/FatalErrorHandler$Reason;->MEDIA_STORAGE_FAILURE:Lcom/android/camera/FatalErrorHandler$Reason;

    .line 50
    .local v1, "reason":Lcom/android/camera/FatalErrorHandler$Reason;
    iget-object v2, p0, Lcom/android/camera/FatalErrorHandlerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Lcom/android/camera/FatalErrorHandler$Reason;->getDialogMsgId()I

    move-result v3

    invoke-static {v2, v3, p1}, Lcom/android/camera/util/CameraUtil;->showErrorToast(Landroid/app/Activity;II)V

    .line 51
    return-void
.end method
