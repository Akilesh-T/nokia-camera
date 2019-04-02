.class public Lcom/android/camera/one/v2/stats/PreviewFpsListener;
.super Lcom/android/camera/one/v2/core/ResponseListener;
.source "PreviewFpsListener.java"


# static fields
.field private static final EXISTING_VALUE_WEIGHT:F = 0.9f

.field private static final NANO_TO_SECOND_DENOMINATOR:D = 1.0E9

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final WARNING_THRESHOLD_SECONDS:F = 0.1f


# instance fields
.field private final mFpsListener:Lcom/android/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Updatable",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mFpsValue:D

.field private mFrameDuration:D

.field private mLastFrameTimeNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PreviewFPS"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/stats/PreviewFpsListener;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/android/camera/async/Updatables;->getNoOp()Lcom/android/camera/async/Updatable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/one/v2/stats/PreviewFpsListener;-><init>(Lcom/android/camera/async/Updatable;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/async/Updatable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "fpsListener":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Float;>;"
    invoke-direct {p0}, Lcom/android/camera/one/v2/core/ResponseListener;-><init>()V

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/one/v2/stats/PreviewFpsListener;->mLastFrameTimeNanos:J

    .line 37
    const-wide v0, 0x3fa1111111111111L    # 0.03333333333333333

    iput-wide v0, p0, Lcom/android/camera/one/v2/stats/PreviewFpsListener;->mFrameDuration:D

    .line 38
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    iput-wide v0, p0, Lcom/android/camera/one/v2/stats/PreviewFpsListener;->mFpsValue:D

    .line 45
    iput-object p1, p0, Lcom/android/camera/one/v2/stats/PreviewFpsListener;->mFpsListener:Lcom/android/camera/async/Updatable;

    .line 46
    return-void
.end method


# virtual methods
.method public onStarted(J)V
    .locals 11
    .param p1, "timestampNanos"    # J

    .prologue
    .line 50
    iget-wide v4, p0, Lcom/android/camera/one/v2/stats/PreviewFpsListener;->mLastFrameTimeNanos:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 51
    iput-wide p1, p0, Lcom/android/camera/one/v2/stats/PreviewFpsListener;->mLastFrameTimeNanos:J

    .line 76
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-wide v4, p0, Lcom/android/camera/one/v2/stats/PreviewFpsListener;->mLastFrameTimeNanos:J

    sub-long v0, p1, v4

    .line 56
    .local v0, "elapsedNanos":J
    long-to-double v4, v0

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    div-double v2, v4, v6

    .line 60
    .local v2, "elapsedSeconds":D
    const-wide v4, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpl-double v4, v2, v4

    if-lez v4, :cond_1

    .line 61
    sget-object v4, Lcom/android/camera/one/v2/stats/PreviewFpsListener;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Elapsed time from previous start was over %.2f millis. %.2f millis total, %.4f avg fps."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/high16 v8, 0x42c80000    # 100.0f

    .line 64
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v8, v2

    .line 65
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-wide v8, p0, Lcom/android/camera/one/v2/stats/PreviewFpsListener;->mFpsValue:D

    .line 66
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    .line 61
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 69
    :cond_1
    iget-wide v4, p0, Lcom/android/camera/one/v2/stats/PreviewFpsListener;->mFrameDuration:D

    const-wide v6, 0x3fecccccc0000000L    # 0.8999999761581421

    mul-double/2addr v4, v6

    const-wide v6, 0x3fb9999a00000000L    # 0.10000002384185791

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/android/camera/one/v2/stats/PreviewFpsListener;->mFrameDuration:D

    .line 72
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget-wide v6, p0, Lcom/android/camera/one/v2/stats/PreviewFpsListener;->mFrameDuration:D

    div-double/2addr v4, v6

    iput-wide v4, p0, Lcom/android/camera/one/v2/stats/PreviewFpsListener;->mFpsValue:D

    .line 73
    iput-wide p1, p0, Lcom/android/camera/one/v2/stats/PreviewFpsListener;->mLastFrameTimeNanos:J

    .line 75
    iget-object v4, p0, Lcom/android/camera/one/v2/stats/PreviewFpsListener;->mFpsListener:Lcom/android/camera/async/Updatable;

    iget-wide v6, p0, Lcom/android/camera/one/v2/stats/PreviewFpsListener;->mFpsValue:D

    double-to-float v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/camera/async/Updatable;->update(Ljava/lang/Object;)V

    goto :goto_0
.end method
