.class public Lcom/android/camera/stats/profiler/LoggingProfiler;
.super Ljava/lang/Object;
.source "LoggingProfiler.java"

# interfaces
.implements Lcom/android/camera/stats/profiler/Profiler;


# instance fields
.field private final mWriter:Lcom/android/camera/stats/profiler/Writer;


# direct methods
.method public constructor <init>(Lcom/android/camera/stats/profiler/Writer;)V
    .locals 0
    .param p1, "writer"    # Lcom/android/camera/stats/profiler/Writer;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/camera/stats/profiler/LoggingProfiler;->mWriter:Lcom/android/camera/stats/profiler/Writer;

    .line 28
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v0, Lcom/android/camera/stats/profiler/LoggingProfile;

    iget-object v1, p0, Lcom/android/camera/stats/profiler/LoggingProfiler;->mWriter:Lcom/android/camera/stats/profiler/Writer;

    invoke-direct {v0, v1, p1}, Lcom/android/camera/stats/profiler/LoggingProfile;-><init>(Lcom/android/camera/stats/profiler/Writer;Ljava/lang/String;)V

    .line 33
    .local v0, "profile":Lcom/android/camera/stats/profiler/LoggingProfile;
    invoke-virtual {v0}, Lcom/android/camera/stats/profiler/LoggingProfile;->start()Lcom/android/camera/stats/profiler/Profile;

    .line 34
    return-object v0
.end method
