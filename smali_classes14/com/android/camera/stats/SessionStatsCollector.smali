.class public Lcom/android/camera/stats/SessionStatsCollector;
.super Ljava/lang/Object;
.source "SessionStatsCollector.java"


# static fields
.field private static sInstance:Lcom/android/camera/stats/SessionStatsCollector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lcom/android/camera/stats/SessionStatsCollector;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/android/camera/stats/SessionStatsCollector;->sInstance:Lcom/android/camera/stats/SessionStatsCollector;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/android/camera/stats/SessionStatsCollector;

    invoke-direct {v0}, Lcom/android/camera/stats/SessionStatsCollector;-><init>()V

    sput-object v0, Lcom/android/camera/stats/SessionStatsCollector;->sInstance:Lcom/android/camera/stats/SessionStatsCollector;

    .line 12
    :cond_0
    sget-object v0, Lcom/android/camera/stats/SessionStatsCollector;->sInstance:Lcom/android/camera/stats/SessionStatsCollector;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized autofocusActive(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 25
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized autofocusManualTrigger()V
    .locals 0

    .prologue
    .line 28
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized autofocusMoving(Z)V
    .locals 0
    .param p1, "moving"    # Z

    .prologue
    .line 34
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized autofocusResult(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 31
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized faceScanActive(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 22
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    return-void
.end method

.method public declared-synchronized previewActive(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 19
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized sessionActive(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 37
    monitor-enter p0

    monitor-exit p0

    return-void
.end method
