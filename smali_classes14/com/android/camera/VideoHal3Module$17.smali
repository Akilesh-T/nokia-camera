.class Lcom/android/camera/VideoHal3Module$17;
.super Ljava/lang/Object;
.source "VideoHal3Module.java"

# interfaces
.implements Lcom/android/camera/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoHal3Module;->getLiveBroadcastCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
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
    .line 1656
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module$17;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    .prologue
    .line 1680
    return-void
.end method

.method public onStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 1660
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module$17;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v1}, Lcom/android/camera/VideoHal3Module;->access$2800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v2, "default_scope"

    const-string v3, "pref_live_broadcast_choose_key"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1661
    .local v0, "accountType":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/VideoHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LiveBroadcastCallback : state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", accountType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1663
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module$17;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v1}, Lcom/android/camera/VideoHal3Module;->access$2800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0803ff

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1664
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module$17;->this$0:Lcom/android/camera/VideoHal3Module;

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->WEIBO:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    iget-object v3, p0, Lcom/android/camera/VideoHal3Module$17;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v3}, Lcom/android/camera/VideoHal3Module;->access$4600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/VideoHal3Module;->access$4700(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)V

    .line 1675
    :cond_0
    :goto_0
    return-void

    .line 1665
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module$17;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v1}, Lcom/android/camera/VideoHal3Module;->access$2800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0803fe

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1666
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module$17;->this$0:Lcom/android/camera/VideoHal3Module;

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->FACEBOOK:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    iget-object v3, p0, Lcom/android/camera/VideoHal3Module$17;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v3}, Lcom/android/camera/VideoHal3Module;->access$4600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/VideoHal3Module;->access$4700(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)V

    goto :goto_0

    .line 1667
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module$17;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v1}, Lcom/android/camera/VideoHal3Module;->access$2800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f080400

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1668
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module$17;->this$0:Lcom/android/camera/VideoHal3Module;

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->YOUTUBE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    iget-object v3, p0, Lcom/android/camera/VideoHal3Module$17;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v3}, Lcom/android/camera/VideoHal3Module;->access$4600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/VideoHal3Module;->access$4700(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)V

    goto :goto_0

    .line 1669
    :cond_3
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module$17;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v1}, Lcom/android/camera/VideoHal3Module;->access$2800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f080309

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1670
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module$17;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v1}, Lcom/android/camera/VideoHal3Module;->access$4100(Lcom/android/camera/VideoHal3Module;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1671
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module$17;->this$0:Lcom/android/camera/VideoHal3Module;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoHal3Module;->onReadyStateChanged(Z)V

    .line 1672
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module$17;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v1}, Lcom/android/camera/VideoHal3Module;->access$1200(Lcom/android/camera/VideoHal3Module;)V

    goto :goto_0
.end method
