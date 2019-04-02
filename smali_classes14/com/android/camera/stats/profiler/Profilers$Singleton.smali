.class Lcom/android/camera/stats/profiler/Profilers$Singleton;
.super Ljava/lang/Object;
.source "Profilers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/stats/profiler/Profilers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/camera/stats/profiler/Profilers;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 36
    new-instance v0, Lcom/android/camera/stats/profiler/Profilers;

    new-instance v1, Lcom/android/camera/stats/profiler/LoggingProfiler;

    .line 37
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->access$500()Lcom/android/camera/stats/profiler/Writer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/stats/profiler/LoggingProfiler;-><init>(Lcom/android/camera/stats/profiler/Writer;)V

    new-instance v2, Lcom/android/camera/stats/profiler/LoggingProfiler;

    .line 38
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->access$600()Lcom/android/camera/stats/profiler/Writer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/camera/stats/profiler/LoggingProfiler;-><init>(Lcom/android/camera/stats/profiler/Writer;)V

    new-instance v3, Lcom/android/camera/stats/profiler/LoggingProfiler;

    .line 39
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->access$700()Lcom/android/camera/stats/profiler/Writer;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/camera/stats/profiler/LoggingProfiler;-><init>(Lcom/android/camera/stats/profiler/Writer;)V

    new-instance v4, Lcom/android/camera/stats/profiler/LoggingProfiler;

    .line 40
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->access$800()Lcom/android/camera/stats/profiler/Writer;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/camera/stats/profiler/LoggingProfiler;-><init>(Lcom/android/camera/stats/profiler/Writer;)V

    new-instance v5, Lcom/android/camera/stats/profiler/LoggingProfiler;

    .line 41
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->access$900()Lcom/android/camera/stats/profiler/Writer;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/camera/stats/profiler/LoggingProfiler;-><init>(Lcom/android/camera/stats/profiler/Writer;)V

    new-instance v6, Lcom/android/camera/stats/profiler/GuardingProfiler;

    .line 42
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->access$700()Lcom/android/camera/stats/profiler/Writer;

    move-result-object v7

    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->access$900()Lcom/android/camera/stats/profiler/Writer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/camera/stats/profiler/GuardingProfiler;-><init>(Lcom/android/camera/stats/profiler/Writer;Lcom/android/camera/stats/profiler/Writer;)V

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/stats/profiler/Profilers;-><init>(Lcom/android/camera/stats/profiler/LoggingProfiler;Lcom/android/camera/stats/profiler/LoggingProfiler;Lcom/android/camera/stats/profiler/LoggingProfiler;Lcom/android/camera/stats/profiler/LoggingProfiler;Lcom/android/camera/stats/profiler/LoggingProfiler;Lcom/android/camera/stats/profiler/GuardingProfiler;Lcom/android/camera/stats/profiler/Profilers$1;)V

    sput-object v0, Lcom/android/camera/stats/profiler/Profilers$Singleton;->INSTANCE:Lcom/android/camera/stats/profiler/Profilers;

    .line 36
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1100()Lcom/android/camera/stats/profiler/Profilers;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/camera/stats/profiler/Profilers$Singleton;->INSTANCE:Lcom/android/camera/stats/profiler/Profilers;

    return-object v0
.end method
