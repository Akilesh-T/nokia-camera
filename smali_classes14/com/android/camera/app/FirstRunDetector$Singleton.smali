.class Lcom/android/camera/app/FirstRunDetector$Singleton;
.super Ljava/lang/Object;
.source "FirstRunDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/FirstRunDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/camera/app/FirstRunDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lcom/android/camera/app/FirstRunDetector;

    .line 34
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/app/FirstRunDetector;-><init>(Lcom/android/camera/stats/profiler/Profiler;Lcom/android/camera/app/FirstRunDetector$1;)V

    sput-object v0, Lcom/android/camera/app/FirstRunDetector$Singleton;->INSTANCE:Lcom/android/camera/app/FirstRunDetector;

    .line 33
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/camera/app/FirstRunDetector;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/camera/app/FirstRunDetector$Singleton;->INSTANCE:Lcom/android/camera/app/FirstRunDetector;

    return-object v0
.end method
