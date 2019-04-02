.class public Lcom/android/camera/stats/profiler/GuardingProfiler;
.super Ljava/lang/Object;
.source "GuardingProfiler.java"

# interfaces
.implements Lcom/android/camera/stats/profiler/Profiler;


# static fields
.field private static final DEFAULT_GUARD_DURATION_MILLIS:I = 0xf


# instance fields
.field private final mGuardWriter:Lcom/android/camera/stats/profiler/Writer;

.field private final mMaxDurationMillis:I

.field private final mVerboseWriter:Lcom/android/camera/stats/profiler/Writer;


# direct methods
.method public constructor <init>(Lcom/android/camera/stats/profiler/Writer;Lcom/android/camera/stats/profiler/Writer;)V
    .locals 1
    .param p1, "writer"    # Lcom/android/camera/stats/profiler/Writer;
    .param p2, "verbose"    # Lcom/android/camera/stats/profiler/Writer;

    .prologue
    .line 32
    const/16 v0, 0xf

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/stats/profiler/GuardingProfiler;-><init>(Lcom/android/camera/stats/profiler/Writer;Lcom/android/camera/stats/profiler/Writer;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/stats/profiler/Writer;Lcom/android/camera/stats/profiler/Writer;I)V
    .locals 0
    .param p1, "writer"    # Lcom/android/camera/stats/profiler/Writer;
    .param p2, "verbose"    # Lcom/android/camera/stats/profiler/Writer;
    .param p3, "maxDurationMillis"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/camera/stats/profiler/GuardingProfiler;->mGuardWriter:Lcom/android/camera/stats/profiler/Writer;

    .line 38
    iput-object p2, p0, Lcom/android/camera/stats/profiler/GuardingProfiler;->mVerboseWriter:Lcom/android/camera/stats/profiler/Writer;

    .line 39
    iput p3, p0, Lcom/android/camera/stats/profiler/GuardingProfiler;->mMaxDurationMillis:I

    .line 40
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    new-instance v0, Lcom/android/camera/stats/profiler/GuardingProfile;

    iget-object v1, p0, Lcom/android/camera/stats/profiler/GuardingProfiler;->mGuardWriter:Lcom/android/camera/stats/profiler/Writer;

    iget-object v2, p0, Lcom/android/camera/stats/profiler/GuardingProfiler;->mVerboseWriter:Lcom/android/camera/stats/profiler/Writer;

    iget v3, p0, Lcom/android/camera/stats/profiler/GuardingProfiler;->mMaxDurationMillis:I

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/camera/stats/profiler/GuardingProfile;-><init>(Lcom/android/camera/stats/profiler/Writer;Lcom/android/camera/stats/profiler/Writer;Ljava/lang/String;I)V

    return-object v0
.end method

.method public create(Ljava/lang/String;I)Lcom/android/camera/stats/profiler/Profile;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "maxDurationMillis"    # I

    .prologue
    .line 50
    new-instance v0, Lcom/android/camera/stats/profiler/GuardingProfile;

    iget-object v1, p0, Lcom/android/camera/stats/profiler/GuardingProfiler;->mGuardWriter:Lcom/android/camera/stats/profiler/Writer;

    iget-object v2, p0, Lcom/android/camera/stats/profiler/GuardingProfiler;->mVerboseWriter:Lcom/android/camera/stats/profiler/Writer;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/android/camera/stats/profiler/GuardingProfile;-><init>(Lcom/android/camera/stats/profiler/Writer;Lcom/android/camera/stats/profiler/Writer;Ljava/lang/String;I)V

    return-object v0
.end method
