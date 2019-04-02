.class public abstract Lcom/android/camera/stats/profiler/ProfileBase;
.super Ljava/lang/Object;
.source "ProfileBase.java"

# interfaces
.implements Lcom/android/camera/stats/profiler/Profile;


# static fields
.field private static final ENABLE:Z


# instance fields
.field private mLastMark:J

.field private final mName:Ljava/lang/String;

.field private mStartNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-string v0, "persist.camera.enable_profile"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/stats/profiler/ProfileBase;->ENABLE:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/camera/stats/profiler/ProfileBase;->mName:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private getTimeFromLastMillis(J)D
    .locals 3
    .param p1, "timeNanos"    # J

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/android/camera/stats/profiler/ProfileBase;->mLastMark:J

    sub-long v0, p1, v0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/stats/profiler/ProfileBase;->nanoToMillis(J)D

    move-result-wide v0

    return-wide v0
.end method

.method private getTotalMillis(J)D
    .locals 3
    .param p1, "timeNanos"    # J

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/android/camera/stats/profiler/ProfileBase;->mStartNanos:J

    sub-long v0, p1, v0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/stats/profiler/ProfileBase;->nanoToMillis(J)D

    move-result-wide v0

    return-wide v0
.end method

.method private nanoToMillis(J)D
    .locals 5
    .param p1, "timeNanos"    # J

    .prologue
    .line 152
    long-to-double v0, p1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method protected final format(DLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "totalMillis"    # D
    .param p3, "event"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 86
    const-string v1, "[%7sms]%s %-6s %s"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const-string v0, "%.3f"

    new-array v3, v6, [Ljava/lang/Object;

    .line 87
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    .line 88
    invoke-static {}, Lcom/android/camera/async/MainThread;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[ui]"

    :goto_0
    aput-object v0, v2, v6

    const/4 v0, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/android/camera/stats/profiler/ProfileBase;->mName:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 86
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 88
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected final format(DLjava/lang/String;DLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "totalMillis"    # D
    .param p3, "event"    # Ljava/lang/String;
    .param p4, "lastMillis"    # D
    .param p6, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 111
    const-string v1, "[%7sms]%s %-6s %s - [%6sms] %s"

    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/Object;

    const-string v0, "%.3f"

    new-array v3, v5, [Ljava/lang/Object;

    .line 112
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    .line 113
    invoke-static {}, Lcom/android/camera/async/MainThread;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[ui]"

    :goto_0
    aput-object v0, v2, v5

    const/4 v0, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/android/camera/stats/profiler/ProfileBase;->mName:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "%.3f"

    new-array v4, v5, [Ljava/lang/Object;

    .line 116
    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x5

    aput-object p6, v2, v0

    .line 111
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected final format(DLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "totalMillis"    # D
    .param p3, "event"    # Ljava/lang/String;
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 98
    const-string v1, "[%7sms]%s %-6s %s - %s"

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    const-string v0, "%.3f"

    new-array v3, v6, [Ljava/lang/Object;

    .line 99
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    .line 100
    invoke-static {}, Lcom/android/camera/async/MainThread;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[ui]"

    :goto_0
    aput-object v0, v2, v6

    const/4 v0, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/android/camera/stats/profiler/ProfileBase;->mName:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x4

    aput-object p4, v2, v0

    .line 98
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 100
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final mark()V
    .locals 2

    .prologue
    .line 53
    sget-boolean v0, Lcom/android/camera/stats/profiler/ProfileBase;->ENABLE:Z

    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/stats/profiler/ProfileBase;->mLastMark:J

    goto :goto_0
.end method

.method public final mark(Ljava/lang/String;)V
    .locals 10
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 60
    sget-boolean v0, Lcom/android/camera/stats/profiler/ProfileBase;->ENABLE:Z

    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 62
    .local v8, "time":J
    invoke-direct {p0, v8, v9}, Lcom/android/camera/stats/profiler/ProfileBase;->getTotalMillis(J)D

    move-result-wide v2

    invoke-direct {p0, v8, v9}, Lcom/android/camera/stats/profiler/ProfileBase;->getTimeFromLastMillis(J)D

    move-result-wide v4

    move-object v1, p0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/stats/profiler/ProfileBase;->onMark(DDLjava/lang/String;)V

    .line 63
    iput-wide v8, p0, Lcom/android/camera/stats/profiler/ProfileBase;->mLastMark:J

    goto :goto_0
.end method

.method protected onMark(DDLjava/lang/String;)V
    .locals 0
    .param p1, "totalMillis"    # D
    .param p3, "lastMillis"    # D
    .param p5, "reason"    # Ljava/lang/String;

    .prologue
    .line 129
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method protected onStop(DD)V
    .locals 0
    .param p1, "totalMillis"    # D
    .param p3, "lastMillis"    # D

    .prologue
    .line 135
    return-void
.end method

.method protected onStop(DDLjava/lang/String;)V
    .locals 0
    .param p1, "totalMillis"    # D
    .param p3, "lastMillis"    # D
    .param p5, "reason"    # Ljava/lang/String;

    .prologue
    .line 141
    return-void
.end method

.method public final start()Lcom/android/camera/stats/profiler/Profile;
    .locals 2

    .prologue
    .line 43
    sget-boolean v0, Lcom/android/camera/stats/profiler/ProfileBase;->ENABLE:Z

    if-nez v0, :cond_0

    .line 48
    :goto_0
    return-object p0

    .line 44
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/stats/profiler/ProfileBase;->mStartNanos:J

    .line 45
    iget-wide v0, p0, Lcom/android/camera/stats/profiler/ProfileBase;->mStartNanos:J

    iput-wide v0, p0, Lcom/android/camera/stats/profiler/ProfileBase;->mLastMark:J

    .line 46
    invoke-virtual {p0}, Lcom/android/camera/stats/profiler/ProfileBase;->onStart()V

    goto :goto_0
.end method

.method public final stop()V
    .locals 6

    .prologue
    .line 68
    sget-boolean v2, Lcom/android/camera/stats/profiler/ProfileBase;->ENABLE:Z

    if-nez v2, :cond_0

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 70
    .local v0, "time":J
    invoke-direct {p0, v0, v1}, Lcom/android/camera/stats/profiler/ProfileBase;->getTotalMillis(J)D

    move-result-wide v2

    invoke-direct {p0, v0, v1}, Lcom/android/camera/stats/profiler/ProfileBase;->getTimeFromLastMillis(J)D

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/camera/stats/profiler/ProfileBase;->onStop(DD)V

    .line 71
    iput-wide v0, p0, Lcom/android/camera/stats/profiler/ProfileBase;->mLastMark:J

    goto :goto_0
.end method

.method public final stop(Ljava/lang/String;)V
    .locals 10
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 76
    sget-boolean v0, Lcom/android/camera/stats/profiler/ProfileBase;->ENABLE:Z

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 78
    .local v8, "time":J
    invoke-direct {p0, v8, v9}, Lcom/android/camera/stats/profiler/ProfileBase;->getTotalMillis(J)D

    move-result-wide v2

    invoke-direct {p0, v8, v9}, Lcom/android/camera/stats/profiler/ProfileBase;->getTimeFromLastMillis(J)D

    move-result-wide v4

    move-object v1, p0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/stats/profiler/ProfileBase;->onStop(DDLjava/lang/String;)V

    .line 79
    iput-wide v8, p0, Lcom/android/camera/stats/profiler/ProfileBase;->mLastMark:J

    goto :goto_0
.end method
