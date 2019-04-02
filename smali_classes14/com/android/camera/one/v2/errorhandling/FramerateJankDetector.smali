.class public final Lcom/android/camera/one/v2/errorhandling/FramerateJankDetector;
.super Lcom/android/camera/one/v2/core/ResponseListener;
.source "FramerateJankDetector.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final FRACTIONAL_CHANGE_LOG_THRESHOLD:D = 1.5

.field private static final FRACTIONAL_CHANGE_STATS_THRESHOLD:D = 0.5


# instance fields
.field private mLastDeltaMillis:D

.field private mLastFrameTimestamp:J

.field private final mLog:Lcom/android/camera/debug/Logger;

.field private final mUsageStatistics:Lcom/android/camera/stats/UsageStatistics;


# direct methods
.method public constructor <init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/stats/UsageStatistics;)V
    .locals 2
    .param p1, "logFactory"    # Lcom/android/camera/debug/Logger$Factory;
    .param p2, "usageStatistics"    # Lcom/android/camera/stats/UsageStatistics;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/camera/one/v2/core/ResponseListener;-><init>()V

    .line 44
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/one/v2/errorhandling/FramerateJankDetector;->mLastFrameTimestamp:J

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/one/v2/errorhandling/FramerateJankDetector;->mLastDeltaMillis:D

    .line 53
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "FrameJank"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Lcom/android/camera/debug/Log$Tag;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/errorhandling/FramerateJankDetector;->mLog:Lcom/android/camera/debug/Logger;

    .line 54
    iput-object p2, p0, Lcom/android/camera/one/v2/errorhandling/FramerateJankDetector;->mUsageStatistics:Lcom/android/camera/stats/UsageStatistics;

    .line 55
    iget-object v0, p0, Lcom/android/camera/one/v2/errorhandling/FramerateJankDetector;->mUsageStatistics:Lcom/android/camera/stats/UsageStatistics;

    invoke-virtual {v0}, Lcom/android/camera/stats/UsageStatistics;->jankDetectionEnabled()V

    .line 56
    return-void
.end method


# virtual methods
.method public onCompleted(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 10
    .param p1, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 60
    sget-object v6, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v6}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 61
    .local v4, "timestamp":J
    iget-wide v6, p0, Lcom/android/camera/one/v2/errorhandling/FramerateJankDetector;->mLastFrameTimestamp:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_2

    .line 62
    iget-wide v6, p0, Lcom/android/camera/one/v2/errorhandling/FramerateJankDetector;->mLastFrameTimestamp:J

    sub-long v6, v4, v6

    long-to-double v6, v6

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double v0, v6, v8

    .line 64
    .local v0, "deltaMillis":D
    iget-wide v6, p0, Lcom/android/camera/one/v2/errorhandling/FramerateJankDetector;->mLastDeltaMillis:D

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    .line 65
    iget-wide v6, p0, Lcom/android/camera/one/v2/errorhandling/FramerateJankDetector;->mLastDeltaMillis:D

    sub-double v6, v0, v6

    iget-wide v8, p0, Lcom/android/camera/one/v2/errorhandling/FramerateJankDetector;->mLastDeltaMillis:D

    div-double v2, v6, v8

    .line 66
    .local v2, "fractionalChange":D
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v6, v2, v6

    if-ltz v6, :cond_0

    .line 67
    iget-object v6, p0, Lcom/android/camera/one/v2/errorhandling/FramerateJankDetector;->mUsageStatistics:Lcom/android/camera/stats/UsageStatistics;

    iget-wide v8, p0, Lcom/android/camera/one/v2/errorhandling/FramerateJankDetector;->mLastDeltaMillis:D

    invoke-virtual {v6, v0, v1, v8, v9}, Lcom/android/camera/stats/UsageStatistics;->cameraFrameDrop(DD)V

    .line 70
    :cond_0
    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    cmpl-double v6, v2, v6

    if-ltz v6, :cond_1

    .line 71
    iget-object v6, p0, Lcom/android/camera/one/v2/errorhandling/FramerateJankDetector;->mLog:Lcom/android/camera/debug/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "JANK! Time between frames ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms) increased by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "% over the last frame delta ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/camera/one/v2/errorhandling/FramerateJankDetector;->mLastDeltaMillis:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 76
    .end local v2    # "fractionalChange":D
    :cond_1
    iput-wide v0, p0, Lcom/android/camera/one/v2/errorhandling/FramerateJankDetector;->mLastDeltaMillis:D

    .line 79
    .end local v0    # "deltaMillis":D
    :cond_2
    iput-wide v4, p0, Lcom/android/camera/one/v2/errorhandling/FramerateJankDetector;->mLastFrameTimestamp:J

    .line 80
    return-void
.end method
