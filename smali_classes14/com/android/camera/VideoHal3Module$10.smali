.class Lcom/android/camera/VideoHal3Module$10;
.super Ljava/lang/Object;
.source "VideoHal3Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoHal3Module;->reopenCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 953
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module$10;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 956
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$10;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$1400(Lcom/android/camera/VideoHal3Module;)V

    .line 957
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$10;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$1800(Lcom/android/camera/VideoHal3Module;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 958
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$10;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$3200(Lcom/android/camera/VideoHal3Module;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 959
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$10;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$3300(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/stats/profiler/Profiler;

    move-result-object v2

    const-string v3, "VideoHal3Module.mCameraIdStateChanged"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 960
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$10;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2, v1}, Lcom/android/camera/VideoHal3Module;->access$3202(Lcom/android/camera/VideoHal3Module;Z)Z

    .line 961
    const-string v2, "reset camera id due to camera state changed."

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 962
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$10;->this$0:Lcom/android/camera/VideoHal3Module;

    iget-object v3, p0, Lcom/android/camera/VideoHal3Module$10;->this$0:Lcom/android/camera/VideoHal3Module;

    iget-object v4, p0, Lcom/android/camera/VideoHal3Module$10;->this$0:Lcom/android/camera/VideoHal3Module;

    .line 963
    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v5, "PhotoModule"

    invoke-static {v5}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pref_camera_id_key"

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 962
    invoke-static {v3, v4}, Lcom/android/camera/VideoHal3Module;->access$3500(Lcom/android/camera/VideoHal3Module;I)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/VideoHal3Module;->access$3402(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/one/OneCamera$Facing;

    .line 964
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$10;->this$0:Lcom/android/camera/VideoHal3Module;

    iget-object v3, p0, Lcom/android/camera/VideoHal3Module$10;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v3}, Lcom/android/camera/VideoHal3Module;->access$3400(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/VideoHal3Module;->access$3602(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/one/OneCamera$Facing;

    .line 965
    const-string v2, "get Camera Facing"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 966
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$10;->this$0:Lcom/android/camera/VideoHal3Module;

    iget-object v3, p0, Lcom/android/camera/VideoHal3Module$10;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v3}, Lcom/android/camera/VideoHal3Module;->access$3800(Lcom/android/camera/VideoHal3Module;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v1}, Lcom/android/camera/VideoHal3Module;->access$3702(Lcom/android/camera/VideoHal3Module;Z)Z

    .line 967
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module$10;->this$0:Lcom/android/camera/VideoHal3Module;

    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$10;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$3900(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/VideoHal3Module;->access$802(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/one/OneCameraCharacteristics;

    .line 968
    const-string v1, "update Camera Characteristics"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 969
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module$10;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v1}, Lcom/android/camera/VideoHal3Module;->access$3700(Lcom/android/camera/VideoHal3Module;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 970
    invoke-static {}, Lcom/android/camera/VideoHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset camera id : mShowErrorAndFinish = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoHal3Module$10;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v3}, Lcom/android/camera/VideoHal3Module;->access$3700(Lcom/android/camera/VideoHal3Module;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 971
    const-string v1, "Error when reset camera id"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 978
    .end local v0    # "guard":Lcom/android/camera/stats/profiler/Profile;
    :cond_1
    :goto_0
    return-void

    .line 974
    .restart local v0    # "guard":Lcom/android/camera/stats/profiler/Profile;
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 976
    .end local v0    # "guard":Lcom/android/camera/stats/profiler/Profile;
    :cond_3
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module$10;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v1}, Lcom/android/camera/VideoHal3Module;->access$4000(Lcom/android/camera/VideoHal3Module;)V

    goto :goto_0
.end method
