.class Lcom/android/camera/CameraActivity$17;
.super Landroid/os/AsyncTask;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity;->onCreateTasks(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final async_profile:Lcom/android/camera/stats/profiler/Profile;

.field final synthetic this$0:Lcom/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 2475
    iput-object p1, p0, Lcom/android/camera/CameraActivity$17;->this$0:Lcom/android/camera/CameraActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2476
    iget-object v0, p0, Lcom/android/camera/CameraActivity$17;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$4300(Lcom/android/camera/CameraActivity;)Lcom/android/camera/stats/profiler/Profiler;

    move-result-object v0

    const-string v1, "updateModeList"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraActivity$17;->async_profile:Lcom/android/camera/stats/profiler/Profile;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2475
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraActivity$17;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 2479
    iget-object v0, p0, Lcom/android/camera/CameraActivity$17;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$4700(Lcom/android/camera/CameraActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraActivity$17;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$5200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/app/ModuleManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraActivity$17;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$4400(Lcom/android/camera/CameraActivity;)Lcom/android/camera/one/config/OneCameraFeatureConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraActivity$17;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/module/ModulesInfo;->setupMinorModules(Landroid/content/Context;Lcom/android/camera/app/ModuleManager;Lcom/android/camera/one/config/OneCameraFeatureConfig;Lcom/android/camera/app/AppController;)V

    .line 2480
    iget-object v0, p0, Lcom/android/camera/CameraActivity$17;->async_profile:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "setupMinorModules"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2481
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2475
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraActivity$17;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 2487
    iget-object v0, p0, Lcom/android/camera/CameraActivity$17;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->buildModeList()V

    .line 2488
    iget-object v0, p0, Lcom/android/camera/CameraActivity$17;->async_profile:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "updateModeList done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2489
    return-void
.end method
