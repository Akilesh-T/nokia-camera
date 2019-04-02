.class final Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;
.super Lcom/android/camera/one/v2/core/ResponseListener;
.source "RepeatFailureDetector.java"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private mConsecutiveErrorCount:I

.field private final mConsecutiveFailureThreshold:I

.field private mFailureFrameNumber:J

.field private mFailureLevel:I

.field private final mLog:Lcom/android/camera/debug/Logger;

.field private final mRecoveryStrategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/errorhandling/FailureHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecoverySuccessCallback:Lcom/android/camera/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/util/Callback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/debug/Logger$Factory;ILjava/util/List;Lcom/android/camera/util/Callback;)V
    .locals 3
    .param p1, "logFactory"    # Lcom/android/camera/debug/Logger$Factory;
    .param p2, "consecutiveFailureThreshold"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/debug/Logger$Factory;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/errorhandling/FailureHandler;",
            ">;",
            "Lcom/android/camera/util/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "recoveryStrategies":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/errorhandling/FailureHandler;>;"
    .local p4, "recoverySuccessCallback":Lcom/android/camera/util/Callback;, "Lcom/android/camera/util/Callback<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Lcom/android/camera/one/v2/core/ResponseListener;-><init>()V

    .line 82
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "RepeatFailureDtctr"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Lcom/android/camera/debug/Log$Tag;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;->mLog:Lcom/android/camera/debug/Logger;

    .line 84
    iput p2, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;->mConsecutiveFailureThreshold:I

    .line 85
    iput-object p3, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;->mRecoveryStrategies:Ljava/util/List;

    .line 86
    iput-object p4, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;->mRecoverySuccessCallback:Lcom/android/camera/util/Callback;

    .line 88
    iput v2, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;->mFailureLevel:I

    .line 89
    iput v2, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;->mConsecutiveErrorCount:I

    .line 90
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;->mFailureFrameNumber:J

    .line 91
    return-void
.end method


# virtual methods
.method public onCompleted(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 5
    .param p1, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    const/4 v4, 0x0

    .line 95
    iput v4, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;->mConsecutiveErrorCount:I

    .line 96
    iget v0, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;->mFailureLevel:I

    if-lez v0, :cond_0

    .line 97
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;->mFailureFrameNumber:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 100
    iget-object v1, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;->mRecoverySuccessCallback:Lcom/android/camera/util/Callback;

    iget-object v0, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;->mRecoveryStrategies:Ljava/util/List;

    iget v2, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;->mFailureLevel:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/errorhandling/FailureHandler;

    .line 101
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-interface {v1, v0}, Lcom/android/camera/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 102
    iput v4, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;->mFailureLevel:I

    .line 103
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;->mFailureFrameNumber:J

    .line 106
    :cond_0
    return-void
.end method

.method public onFailed(Landroid/hardware/camera2/CaptureFailure;)V
    .locals 7
    .param p1, "failure"    # Landroid/hardware/camera2/CaptureFailure;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 110
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v0

    if-nez v0, :cond_1

    .line 111
    iget v0, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;->mConsecutiveErrorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;->mConsecutiveErrorCount:I

    .line 112
    iget-object v0, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;->mLog:Lcom/android/camera/debug/Logger;

    const-string v1, "onCaptureFailed() REASON_ERROR:  Consecutive error count = %d x %d"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;->mConsecutiveErrorCount:I

    .line 113
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;->mFailureLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 112
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;)V

    .line 114
    iget v0, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;->mConsecutiveErrorCount:I

    iget v1, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;->mConsecutiveFailureThreshold:I

    if-lt v0, v1, :cond_1

    .line 115
    iput v4, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;->mConsecutiveErrorCount:I

    .line 116
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;->mFailureFrameNumber:J

    .line 117
    iget v0, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;->mFailureLevel:I

    iget-object v1, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;->mRecoveryStrategies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;->mLog:Lcom/android/camera/debug/Logger;

    const-string v2, "onCaptureFailed() REASON_ERROR:  Repeat failure detected (x%d).  Attempting recovery strategy:  %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget v0, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;->mConsecutiveErrorCount:I

    .line 120
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    iget-object v0, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;->mRecoveryStrategies:Ljava/util/List;

    iget v4, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;->mFailureLevel:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/errorhandling/FailureHandler;

    .line 121
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    .line 118
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;->mRecoveryStrategies:Ljava/util/List;

    iget v1, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;->mFailureLevel:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/errorhandling/FailureHandler;

    invoke-interface {v0}, Lcom/android/camera/one/v2/errorhandling/FailureHandler;->run()V

    .line 124
    :cond_0
    iget v0, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;->mFailureLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/one/v2/errorhandling/RepeatFailureDetector;->mFailureLevel:I

    .line 127
    :cond_1
    return-void
.end method
