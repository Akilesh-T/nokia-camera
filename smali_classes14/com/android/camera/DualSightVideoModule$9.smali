.class Lcom/android/camera/DualSightVideoModule$9;
.super Ljava/lang/Object;
.source "DualSightVideoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightVideoModule;->reopenCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/DualSightVideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightVideoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 935
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule$9;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 938
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$9;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$800(Lcom/android/camera/DualSightVideoModule;)V

    .line 939
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$9;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$1300(Lcom/android/camera/DualSightVideoModule;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 941
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$9;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$2900(Lcom/android/camera/DualSightVideoModule;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 942
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$9;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$3000(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/stats/profiler/Profiler;

    move-result-object v1

    const-string v3, "DualSightVideoModule.mCameraIdStateChanged"

    invoke-interface {v1, v3}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 943
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$9;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1, v2}, Lcom/android/camera/DualSightVideoModule;->access$2902(Lcom/android/camera/DualSightVideoModule;Z)Z

    .line 944
    const-string v1, "reset camera id due to camera state changed."

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 945
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$9;->this$0:Lcom/android/camera/DualSightVideoModule;

    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule$9;->this$0:Lcom/android/camera/DualSightVideoModule;

    iget-object v4, p0, Lcom/android/camera/DualSightVideoModule$9;->this$0:Lcom/android/camera/DualSightVideoModule;

    .line 946
    invoke-static {v4}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v5, "PhotoModule"

    invoke-static {v5}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pref_camera_id_key"

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 945
    invoke-static {v3, v4}, Lcom/android/camera/DualSightVideoModule;->access$3200(Lcom/android/camera/DualSightVideoModule;I)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/DualSightVideoModule;->access$3102(Lcom/android/camera/DualSightVideoModule;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/one/OneCamera$Facing;

    .line 947
    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule$9;->this$0:Lcom/android/camera/DualSightVideoModule;

    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$9;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$3100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v1

    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v1, v4, :cond_1

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    :goto_0
    invoke-static {v3, v1}, Lcom/android/camera/DualSightVideoModule;->access$3302(Lcom/android/camera/DualSightVideoModule;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/one/OneCamera$Facing;

    .line 948
    const-string v1, "get Camera Facing"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 949
    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule$9;->this$0:Lcom/android/camera/DualSightVideoModule;

    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$9;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$3500(Lcom/android/camera/DualSightVideoModule;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {v3, v1}, Lcom/android/camera/DualSightVideoModule;->access$3402(Lcom/android/camera/DualSightVideoModule;Z)Z

    .line 950
    const-string v1, "update Camera Characteristics"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 951
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$9;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$3400(Lcom/android/camera/DualSightVideoModule;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 952
    invoke-static {}, Lcom/android/camera/DualSightVideoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset camera id : mShowErrorAndFinish = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule$9;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v3}, Lcom/android/camera/DualSightVideoModule;->access$3400(Lcom/android/camera/DualSightVideoModule;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 953
    const-string v1, "Error when reset camera id"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 960
    .end local v0    # "guard":Lcom/android/camera/stats/profiler/Profile;
    :cond_0
    :goto_2
    return-void

    .line 947
    .restart local v0    # "guard":Lcom/android/camera/stats/profiler/Profile;
    :cond_1
    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    goto :goto_0

    :cond_2
    move v1, v2

    .line 949
    goto :goto_1

    .line 956
    :cond_3
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 958
    .end local v0    # "guard":Lcom/android/camera/stats/profiler/Profile;
    :cond_4
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$9;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$3600(Lcom/android/camera/DualSightVideoModule;)V

    goto :goto_2
.end method
