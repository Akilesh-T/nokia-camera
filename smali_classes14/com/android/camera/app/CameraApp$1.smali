.class Lcom/android/camera/app/CameraApp$1;
.super Ljava/lang/Object;
.source "CameraApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/CameraApp;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/app/CameraApp;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/camera/app/CameraApp;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/app/CameraApp;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/camera/app/CameraApp$1;->this$0:Lcom/android/camera/app/CameraApp;

    iput-object p2, p0, Lcom/android/camera/app/CameraApp$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 72
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    const-string v2, "CameraApp onCreate() - AsyncTask"

    invoke-virtual {v1, v2}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 73
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    invoke-static {}, Lcom/android/camera/app/CameraServicesImpl;->instance()Lcom/android/camera/app/CameraServicesImpl;

    .line 74
    const-string v1, "CameraServicesImpl.instance"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/android/camera/app/FirstRunDetector;->instance()Lcom/android/camera/app/FirstRunDetector;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/CameraApp$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/camera/app/FirstRunDetector;->initializeTimeOfFirstRun(Landroid/content/Context;)V

    .line 78
    const-string v1, "initializeTimeOfFirstRun"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/CameraApp$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/camera/stats/UsageStatistics;->initialize(Landroid/content/Context;)V

    .line 80
    const-string v1, "UsageStatistics.initialize"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/android/camera/app/CameraApp$1;->this$0:Lcom/android/camera/app/CameraApp;

    invoke-static {v1}, Lcom/android/camera/app/CameraApp;->access$000(Lcom/android/camera/app/CameraApp;)V

    .line 82
    const-string v1, "clearNotifications"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 83
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 84
    return-void
.end method
