.class Lcom/android/camera/VideoHal3Module$18;
.super Ljava/lang/Object;
.source "VideoHal3Module.java"

# interfaces
.implements Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoHal3Module;
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
    .line 1684
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module$18;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Z)V
    .locals 7
    .param p1, "type"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;
    .param p2, "isSuccess"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1687
    invoke-static {}, Lcom/android/camera/VideoHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoginResult : AccountType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSuccess = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1688
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$18;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$4800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 1689
    if-eqz p2, :cond_2

    .line 1690
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$18;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$4100(Lcom/android/camera/VideoHal3Module;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1691
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$18;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-virtual {v0, v5}, Lcom/android/camera/VideoHal3Module;->onReadyStateChanged(Z)V

    .line 1692
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$18;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$1200(Lcom/android/camera/VideoHal3Module;)V

    .line 1701
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$18;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0, v6}, Lcom/android/camera/VideoHal3Module;->access$4802(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    .line 1702
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$18;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0, v6}, Lcom/android/camera/VideoHal3Module;->access$4902(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    .line 1704
    :cond_1
    return-void

    .line 1695
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$18;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$2800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "pref_live_broadcast_choose_key"

    iget-object v3, p0, Lcom/android/camera/VideoHal3Module$18;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v3}, Lcom/android/camera/VideoHal3Module;->access$2800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    const v4, 0x7f080309

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$18;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$4100(Lcom/android/camera/VideoHal3Module;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1697
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$18;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-virtual {v0, v5}, Lcom/android/camera/VideoHal3Module;->onReadyStateChanged(Z)V

    .line 1698
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$18;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$1200(Lcom/android/camera/VideoHal3Module;)V

    goto :goto_0
.end method
