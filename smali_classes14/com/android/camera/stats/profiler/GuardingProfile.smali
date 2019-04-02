.class public Lcom/android/camera/stats/profiler/GuardingProfile;
.super Lcom/android/camera/stats/profiler/ProfileBase;
.source "GuardingProfile.java"


# instance fields
.field private final mGuardWriter:Lcom/android/camera/stats/profiler/Writer;

.field private final mMaxMillis:I

.field private final mVerboseWriter:Lcom/android/camera/stats/profiler/Writer;


# direct methods
.method public constructor <init>(Lcom/android/camera/stats/profiler/Writer;Lcom/android/camera/stats/profiler/Writer;Ljava/lang/String;I)V
    .locals 0
    .param p1, "writer"    # Lcom/android/camera/stats/profiler/Writer;
    .param p2, "verbose"    # Lcom/android/camera/stats/profiler/Writer;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "maxDuration"    # I

    .prologue
    .line 31
    invoke-direct {p0, p3}, Lcom/android/camera/stats/profiler/ProfileBase;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/android/camera/stats/profiler/GuardingProfile;->mGuardWriter:Lcom/android/camera/stats/profiler/Writer;

    .line 33
    iput-object p2, p0, Lcom/android/camera/stats/profiler/GuardingProfile;->mVerboseWriter:Lcom/android/camera/stats/profiler/Writer;

    .line 34
    iput p4, p0, Lcom/android/camera/stats/profiler/GuardingProfile;->mMaxMillis:I

    .line 35
    return-void
.end method


# virtual methods
.method protected onMark(DDLjava/lang/String;)V
    .locals 9
    .param p1, "totalMillis"    # D
    .param p3, "lastMillis"    # D
    .param p5, "reason"    # Ljava/lang/String;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/camera/stats/profiler/GuardingProfile;->mMaxMillis:I

    int-to-double v0, v0

    cmpl-double v0, p3, v0

    if-lez v0, :cond_0

    .line 45
    iget-object v7, p0, Lcom/android/camera/stats/profiler/GuardingProfile;->mGuardWriter:Lcom/android/camera/stats/profiler/Writer;

    const-string v3, "GUARD"

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/stats/profiler/GuardingProfile;->format(DLjava/lang/String;DLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/android/camera/stats/profiler/Writer;->write(Ljava/lang/String;)V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v7, p0, Lcom/android/camera/stats/profiler/GuardingProfile;->mVerboseWriter:Lcom/android/camera/stats/profiler/Writer;

    const-string v3, "GUARD"

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/stats/profiler/GuardingProfile;->format(DLjava/lang/String;DLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/android/camera/stats/profiler/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 5

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/stats/profiler/GuardingProfile;->mVerboseWriter:Lcom/android/camera/stats/profiler/Writer;

    const-wide/16 v2, 0x0

    const-string v1, "GUARD"

    const-string v4, "START"

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/android/camera/stats/profiler/GuardingProfile;->format(DLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Writer;->write(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method protected onStop(DD)V
    .locals 3
    .param p1, "totalMillis"    # D
    .param p3, "lastMillis"    # D

    .prologue
    .line 53
    iget v0, p0, Lcom/android/camera/stats/profiler/GuardingProfile;->mMaxMillis:I

    int-to-double v0, v0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/camera/stats/profiler/GuardingProfile;->mGuardWriter:Lcom/android/camera/stats/profiler/Writer;

    const-string v1, "GUARD"

    const-string v2, "STOP"

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/camera/stats/profiler/GuardingProfile;->format(DLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Writer;->write(Ljava/lang/String;)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/camera/stats/profiler/GuardingProfile;->mVerboseWriter:Lcom/android/camera/stats/profiler/Writer;

    const-string v1, "GUARD"

    const-string v2, "STOP"

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/camera/stats/profiler/GuardingProfile;->format(DLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStop(DDLjava/lang/String;)V
    .locals 1
    .param p1, "totalMillis"    # D
    .param p3, "lastMillis"    # D
    .param p5, "reason"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-virtual/range {p0 .. p5}, Lcom/android/camera/stats/profiler/GuardingProfile;->onMark(DDLjava/lang/String;)V

    .line 63
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/camera/stats/profiler/GuardingProfile;->onStop(DD)V

    .line 64
    return-void
.end method
