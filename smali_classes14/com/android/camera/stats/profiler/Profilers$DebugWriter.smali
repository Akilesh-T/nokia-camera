.class Lcom/android/camera/stats/profiler/Profilers$DebugWriter;
.super Ljava/lang/Object;
.source "Profilers.java"

# interfaces
.implements Lcom/android/camera/stats/profiler/Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/stats/profiler/Profilers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DebugWriter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/stats/profiler/Profilers$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/stats/profiler/Profilers$1;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/camera/stats/profiler/Profilers$DebugWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->access$1200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 127
    return-void
.end method
