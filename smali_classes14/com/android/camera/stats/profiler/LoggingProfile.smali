.class public Lcom/android/camera/stats/profiler/LoggingProfile;
.super Lcom/android/camera/stats/profiler/ProfileBase;
.source "LoggingProfile.java"


# instance fields
.field private final mWriter:Lcom/android/camera/stats/profiler/Writer;


# direct methods
.method public constructor <init>(Lcom/android/camera/stats/profiler/Writer;Ljava/lang/String;)V
    .locals 0
    .param p1, "writer"    # Lcom/android/camera/stats/profiler/Writer;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p2}, Lcom/android/camera/stats/profiler/ProfileBase;-><init>(Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/android/camera/stats/profiler/LoggingProfile;->mWriter:Lcom/android/camera/stats/profiler/Writer;

    .line 31
    return-void
.end method


# virtual methods
.method protected onMark(DDLjava/lang/String;)V
    .locals 9
    .param p1, "totalMillis"    # D
    .param p3, "lastMillis"    # D
    .param p5, "reason"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v7, p0, Lcom/android/camera/stats/profiler/LoggingProfile;->mWriter:Lcom/android/camera/stats/profiler/Writer;

    const-string v3, "MARK"

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/stats/profiler/LoggingProfile;->format(DLjava/lang/String;DLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/android/camera/stats/profiler/Writer;->write(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/stats/profiler/LoggingProfile;->mWriter:Lcom/android/camera/stats/profiler/Writer;

    const-wide/16 v2, 0x0

    const-string v1, "BEGIN"

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/camera/stats/profiler/LoggingProfile;->format(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Writer;->write(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method protected onStop(DD)V
    .locals 3
    .param p1, "totalMillis"    # D
    .param p3, "lastMillis"    # D

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/stats/profiler/LoggingProfile;->mWriter:Lcom/android/camera/stats/profiler/Writer;

    const-string v1, "END"

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/camera/stats/profiler/LoggingProfile;->format(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Writer;->write(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method protected onStop(DDLjava/lang/String;)V
    .locals 9
    .param p1, "totalMillis"    # D
    .param p3, "lastMillis"    # D
    .param p5, "reason"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v7, p0, Lcom/android/camera/stats/profiler/LoggingProfile;->mWriter:Lcom/android/camera/stats/profiler/Writer;

    const-string v3, "END"

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/stats/profiler/LoggingProfile;->format(DLjava/lang/String;DLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/android/camera/stats/profiler/Writer;->write(Ljava/lang/String;)V

    .line 51
    return-void
.end method
