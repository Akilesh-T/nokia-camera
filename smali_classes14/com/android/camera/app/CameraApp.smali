.class public Lcom/android/camera/app/CameraApp;
.super Landroid/app/Application;
.source "CameraApp.java"


# static fields
.field private static final WAIT_FOR_DEBUGGER_ON_START:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/app/CameraApp;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/app/CameraApp;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/camera/app/CameraApp;->clearNotifications()V

    return-void
.end method

.method private clearNotifications()V
    .locals 2

    .prologue
    .line 95
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/AndroidServices;->provideNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    .line 96
    .local v0, "manager":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 99
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    .line 48
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 53
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v2

    const-string v3, "CameraApp onCreate()"

    invoke-virtual {v2, v3}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    .line 60
    .local v1, "profile":Lcom/android/camera/stats/profiler/Profile;
    invoke-static {}, Lcom/android/camera/cpuboost/CpuBooster;->instance()Lcom/android/camera/cpuboost/BoostEngine;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Lcom/android/camera/cpuboost/BoostEngine;->boostInTime(I)Z

    .line 61
    const-string v2, "boost for 5s"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/camera/app/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    .local v0, "context":Landroid/content/Context;
    const-string v2, "getApplicationContext"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 66
    invoke-static {v0}, Lcom/android/camera/util/AndroidContext;->initialize(Landroid/content/Context;)V

    .line 67
    const-string v2, "AndroidContext.initialize"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 69
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/camera/app/CameraApp$1;

    invoke-direct {v3, p0, v0}, Lcom/android/camera/app/CameraApp$1;-><init>(Lcom/android/camera/app/CameraApp;Landroid/content/Context;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 86
    const-string v2, "AsyncTask execute"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 87
    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 88
    return-void
.end method
