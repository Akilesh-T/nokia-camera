.class public Lcom/android/camera/stats/profiler/Profilers;
.super Ljava/lang/Object;
.source "Profilers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/stats/profiler/Profilers$WarningWriter;,
        Lcom/android/camera/stats/profiler/Profilers$VerboseWriter;,
        Lcom/android/camera/stats/profiler/Profilers$InfoWriter;,
        Lcom/android/camera/stats/profiler/Profilers$ErrorWriter;,
        Lcom/android/camera/stats/profiler/Profilers$DebugWriter;,
        Lcom/android/camera/stats/profiler/Profilers$Singleton;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static sDebugWriter:Lcom/android/camera/stats/profiler/Writer;

.field private static sErrorWriter:Lcom/android/camera/stats/profiler/Writer;

.field private static sInfoWriter:Lcom/android/camera/stats/profiler/Writer;

.field private static sVerboseWriter:Lcom/android/camera/stats/profiler/Writer;

.field private static sWarningWriter:Lcom/android/camera/stats/profiler/Writer;


# instance fields
.field private final mDebugProfiler:Lcom/android/camera/stats/profiler/LoggingProfiler;

.field private final mErrorProfiler:Lcom/android/camera/stats/profiler/LoggingProfiler;

.field private final mGuardingProfiler:Lcom/android/camera/stats/profiler/GuardingProfiler;

.field private final mInfoProfiler:Lcom/android/camera/stats/profiler/LoggingProfiler;

.field private final mVerboseProfiler:Lcom/android/camera/stats/profiler/LoggingProfiler;

.field private final mWarningProfiler:Lcom/android/camera/stats/profiler/LoggingProfiler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Profiler"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/stats/profiler/Profilers;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 29
    new-instance v0, Lcom/android/camera/stats/profiler/Profilers$ErrorWriter;

    invoke-direct {v0, v2}, Lcom/android/camera/stats/profiler/Profilers$ErrorWriter;-><init>(Lcom/android/camera/stats/profiler/Profilers$1;)V

    sput-object v0, Lcom/android/camera/stats/profiler/Profilers;->sErrorWriter:Lcom/android/camera/stats/profiler/Writer;

    .line 30
    new-instance v0, Lcom/android/camera/stats/profiler/Profilers$WarningWriter;

    invoke-direct {v0, v2}, Lcom/android/camera/stats/profiler/Profilers$WarningWriter;-><init>(Lcom/android/camera/stats/profiler/Profilers$1;)V

    sput-object v0, Lcom/android/camera/stats/profiler/Profilers;->sWarningWriter:Lcom/android/camera/stats/profiler/Writer;

    .line 31
    new-instance v0, Lcom/android/camera/stats/profiler/Profilers$InfoWriter;

    invoke-direct {v0, v2}, Lcom/android/camera/stats/profiler/Profilers$InfoWriter;-><init>(Lcom/android/camera/stats/profiler/Profilers$1;)V

    sput-object v0, Lcom/android/camera/stats/profiler/Profilers;->sInfoWriter:Lcom/android/camera/stats/profiler/Writer;

    .line 32
    new-instance v0, Lcom/android/camera/stats/profiler/Profilers$DebugWriter;

    invoke-direct {v0, v2}, Lcom/android/camera/stats/profiler/Profilers$DebugWriter;-><init>(Lcom/android/camera/stats/profiler/Profilers$1;)V

    sput-object v0, Lcom/android/camera/stats/profiler/Profilers;->sDebugWriter:Lcom/android/camera/stats/profiler/Writer;

    .line 33
    new-instance v0, Lcom/android/camera/stats/profiler/Profilers$VerboseWriter;

    invoke-direct {v0, v2}, Lcom/android/camera/stats/profiler/Profilers$VerboseWriter;-><init>(Lcom/android/camera/stats/profiler/Profilers$1;)V

    sput-object v0, Lcom/android/camera/stats/profiler/Profilers;->sVerboseWriter:Lcom/android/camera/stats/profiler/Writer;

    return-void
.end method

.method private constructor <init>(Lcom/android/camera/stats/profiler/LoggingProfiler;Lcom/android/camera/stats/profiler/LoggingProfiler;Lcom/android/camera/stats/profiler/LoggingProfiler;Lcom/android/camera/stats/profiler/LoggingProfiler;Lcom/android/camera/stats/profiler/LoggingProfiler;Lcom/android/camera/stats/profiler/GuardingProfiler;)V
    .locals 0
    .param p1, "errorProfiler"    # Lcom/android/camera/stats/profiler/LoggingProfiler;
    .param p2, "warningProfiler"    # Lcom/android/camera/stats/profiler/LoggingProfiler;
    .param p3, "infoProfiler"    # Lcom/android/camera/stats/profiler/LoggingProfiler;
    .param p4, "debugProfiler"    # Lcom/android/camera/stats/profiler/LoggingProfiler;
    .param p5, "verboseProfiler"    # Lcom/android/camera/stats/profiler/LoggingProfiler;
    .param p6, "guardingProfiler"    # Lcom/android/camera/stats/profiler/GuardingProfiler;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/camera/stats/profiler/Profilers;->mErrorProfiler:Lcom/android/camera/stats/profiler/LoggingProfiler;

    .line 64
    iput-object p2, p0, Lcom/android/camera/stats/profiler/Profilers;->mWarningProfiler:Lcom/android/camera/stats/profiler/LoggingProfiler;

    .line 65
    iput-object p3, p0, Lcom/android/camera/stats/profiler/Profilers;->mInfoProfiler:Lcom/android/camera/stats/profiler/LoggingProfiler;

    .line 66
    iput-object p4, p0, Lcom/android/camera/stats/profiler/Profilers;->mDebugProfiler:Lcom/android/camera/stats/profiler/LoggingProfiler;

    .line 67
    iput-object p5, p0, Lcom/android/camera/stats/profiler/Profilers;->mVerboseProfiler:Lcom/android/camera/stats/profiler/LoggingProfiler;

    .line 68
    iput-object p6, p0, Lcom/android/camera/stats/profiler/Profilers;->mGuardingProfiler:Lcom/android/camera/stats/profiler/GuardingProfiler;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/stats/profiler/LoggingProfiler;Lcom/android/camera/stats/profiler/LoggingProfiler;Lcom/android/camera/stats/profiler/LoggingProfiler;Lcom/android/camera/stats/profiler/LoggingProfiler;Lcom/android/camera/stats/profiler/LoggingProfiler;Lcom/android/camera/stats/profiler/GuardingProfiler;Lcom/android/camera/stats/profiler/Profilers$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/stats/profiler/LoggingProfiler;
    .param p2, "x1"    # Lcom/android/camera/stats/profiler/LoggingProfiler;
    .param p3, "x2"    # Lcom/android/camera/stats/profiler/LoggingProfiler;
    .param p4, "x3"    # Lcom/android/camera/stats/profiler/LoggingProfiler;
    .param p5, "x4"    # Lcom/android/camera/stats/profiler/LoggingProfiler;
    .param p6, "x5"    # Lcom/android/camera/stats/profiler/GuardingProfiler;
    .param p7, "x6"    # Lcom/android/camera/stats/profiler/Profilers$1;

    .prologue
    .line 26
    invoke-direct/range {p0 .. p6}, Lcom/android/camera/stats/profiler/Profilers;-><init>(Lcom/android/camera/stats/profiler/LoggingProfiler;Lcom/android/camera/stats/profiler/LoggingProfiler;Lcom/android/camera/stats/profiler/LoggingProfiler;Lcom/android/camera/stats/profiler/LoggingProfiler;Lcom/android/camera/stats/profiler/LoggingProfiler;Lcom/android/camera/stats/profiler/GuardingProfiler;)V

    return-void
.end method

.method static synthetic access$1200()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/camera/stats/profiler/Profilers;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$500()Lcom/android/camera/stats/profiler/Writer;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/camera/stats/profiler/Profilers;->sErrorWriter:Lcom/android/camera/stats/profiler/Writer;

    return-object v0
.end method

.method static synthetic access$600()Lcom/android/camera/stats/profiler/Writer;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/camera/stats/profiler/Profilers;->sWarningWriter:Lcom/android/camera/stats/profiler/Writer;

    return-object v0
.end method

.method static synthetic access$700()Lcom/android/camera/stats/profiler/Writer;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/camera/stats/profiler/Profilers;->sInfoWriter:Lcom/android/camera/stats/profiler/Writer;

    return-object v0
.end method

.method static synthetic access$800()Lcom/android/camera/stats/profiler/Writer;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/camera/stats/profiler/Profilers;->sDebugWriter:Lcom/android/camera/stats/profiler/Writer;

    return-object v0
.end method

.method static synthetic access$900()Lcom/android/camera/stats/profiler/Writer;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/camera/stats/profiler/Profilers;->sVerboseWriter:Lcom/android/camera/stats/profiler/Writer;

    return-object v0
.end method

.method public static instance()Lcom/android/camera/stats/profiler/Profilers;
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers$Singleton;->access$1100()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public d()Lcom/android/camera/stats/profiler/LoggingProfiler;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/camera/stats/profiler/Profilers;->mDebugProfiler:Lcom/android/camera/stats/profiler/LoggingProfiler;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/camera/stats/profiler/Profilers;->d()Lcom/android/camera/stats/profiler/LoggingProfiler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/stats/profiler/LoggingProfiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/android/camera/stats/profiler/LoggingProfiler;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/stats/profiler/Profilers;->mErrorProfiler:Lcom/android/camera/stats/profiler/LoggingProfiler;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/camera/stats/profiler/Profilers;->e()Lcom/android/camera/stats/profiler/LoggingProfiler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/stats/profiler/LoggingProfiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    return-object v0
.end method

.method public guard()Lcom/android/camera/stats/profiler/GuardingProfiler;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/camera/stats/profiler/Profilers;->mGuardingProfiler:Lcom/android/camera/stats/profiler/GuardingProfiler;

    return-object v0
.end method

.method public guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/stats/profiler/GuardingProfiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    return-object v0
.end method

.method public guard(Ljava/lang/String;I)Lcom/android/camera/stats/profiler/Profile;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "durationMillis"    # I

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/stats/profiler/GuardingProfiler;->create(Ljava/lang/String;I)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/android/camera/stats/profiler/LoggingProfiler;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/stats/profiler/Profilers;->mInfoProfiler:Lcom/android/camera/stats/profiler/LoggingProfiler;

    return-object v0
.end method

.method public i(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/camera/stats/profiler/Profilers;->i()Lcom/android/camera/stats/profiler/LoggingProfiler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/stats/profiler/LoggingProfiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    return-object v0
.end method

.method public v()Lcom/android/camera/stats/profiler/LoggingProfiler;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/stats/profiler/Profilers;->mVerboseProfiler:Lcom/android/camera/stats/profiler/LoggingProfiler;

    return-object v0
.end method

.method public v(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/camera/stats/profiler/Profilers;->v()Lcom/android/camera/stats/profiler/LoggingProfiler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/stats/profiler/LoggingProfiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    return-object v0
.end method

.method public w()Lcom/android/camera/stats/profiler/LoggingProfiler;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/camera/stats/profiler/Profilers;->mWarningProfiler:Lcom/android/camera/stats/profiler/LoggingProfiler;

    return-object v0
.end method

.method public w(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/camera/stats/profiler/Profilers;->w()Lcom/android/camera/stats/profiler/LoggingProfiler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/stats/profiler/LoggingProfiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    return-object v0
.end method
