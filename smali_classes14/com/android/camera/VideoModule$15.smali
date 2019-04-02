.class Lcom/android/camera/VideoModule$15;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Lcom/android/camera/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 2879
    iput-object p1, p0, Lcom/android/camera/VideoModule$15;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    .prologue
    .line 2914
    return-void
.end method

.method public onStateChanged(I)V
    .locals 9
    .param p1, "state"    # I

    .prologue
    const v8, 0x7f080400

    const v7, 0x7f0803ff

    const v6, 0x7f0803fe

    const/4 v5, 0x1

    .line 2882
    iget-object v2, p0, Lcom/android/camera/VideoModule$15;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 2883
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v2, "default_scope"

    const-string v3, "pref_live_broadcast_choose_key"

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/camera/settings/SettingsManager;->getValueOfCurrentIndex(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2884
    .local v0, "accountType":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/VideoModule;->access$1600()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStateChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2885
    iget-object v2, p0, Lcom/android/camera/VideoModule$15;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/VideoModule$15;->this$0:Lcom/android/camera/VideoModule;

    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->WEIBO:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    iget-object v4, p0, Lcom/android/camera/VideoModule$15;->this$0:Lcom/android/camera/VideoModule;

    .line 2886
    invoke-static {v4}, Lcom/android/camera/VideoModule;->access$4500(Lcom/android/camera/VideoModule;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/camera/VideoModule;->access$4600(Lcom/android/camera/VideoModule;Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2887
    const-string v2, "default_scope"

    const-string v3, "pref_live_broadcast_choose_key"

    iget-object v4, p0, Lcom/android/camera/VideoModule$15;->this$0:Lcom/android/camera/VideoModule;

    .line 2888
    invoke-static {v4}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2887
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2889
    iget-object v2, p0, Lcom/android/camera/VideoModule$15;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2, v5}, Lcom/android/camera/VideoModule;->access$4702(Lcom/android/camera/VideoModule;Z)Z

    .line 2890
    iget-object v2, p0, Lcom/android/camera/VideoModule$15;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2, v5}, Lcom/android/camera/VideoModule;->access$4802(Lcom/android/camera/VideoModule;Z)Z

    .line 2908
    :goto_0
    iget-object v2, p0, Lcom/android/camera/VideoModule$15;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$4900(Lcom/android/camera/VideoModule;)V

    .line 2909
    return-void

    .line 2891
    :cond_0
    iget-object v2, p0, Lcom/android/camera/VideoModule$15;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/VideoModule$15;->this$0:Lcom/android/camera/VideoModule;

    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->FACEBOOK:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    iget-object v4, p0, Lcom/android/camera/VideoModule$15;->this$0:Lcom/android/camera/VideoModule;

    .line 2892
    invoke-static {v4}, Lcom/android/camera/VideoModule;->access$4500(Lcom/android/camera/VideoModule;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/camera/VideoModule;->access$4600(Lcom/android/camera/VideoModule;Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2893
    const-string v2, "default_scope"

    const-string v3, "pref_live_broadcast_choose_key"

    iget-object v4, p0, Lcom/android/camera/VideoModule$15;->this$0:Lcom/android/camera/VideoModule;

    .line 2894
    invoke-static {v4}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2893
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2895
    iget-object v2, p0, Lcom/android/camera/VideoModule$15;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2, v5}, Lcom/android/camera/VideoModule;->access$4702(Lcom/android/camera/VideoModule;Z)Z

    .line 2896
    iget-object v2, p0, Lcom/android/camera/VideoModule$15;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2, v5}, Lcom/android/camera/VideoModule;->access$4802(Lcom/android/camera/VideoModule;Z)Z

    goto :goto_0

    .line 2897
    :cond_1
    iget-object v2, p0, Lcom/android/camera/VideoModule$15;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/VideoModule$15;->this$0:Lcom/android/camera/VideoModule;

    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->YOUTUBE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    iget-object v4, p0, Lcom/android/camera/VideoModule$15;->this$0:Lcom/android/camera/VideoModule;

    .line 2898
    invoke-static {v4}, Lcom/android/camera/VideoModule;->access$4500(Lcom/android/camera/VideoModule;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/camera/VideoModule;->access$4600(Lcom/android/camera/VideoModule;Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2899
    const-string v2, "default_scope"

    const-string v3, "pref_live_broadcast_choose_key"

    iget-object v4, p0, Lcom/android/camera/VideoModule$15;->this$0:Lcom/android/camera/VideoModule;

    .line 2900
    invoke-static {v4}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2899
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2901
    iget-object v2, p0, Lcom/android/camera/VideoModule$15;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2, v5}, Lcom/android/camera/VideoModule;->access$4702(Lcom/android/camera/VideoModule;Z)Z

    .line 2902
    iget-object v2, p0, Lcom/android/camera/VideoModule$15;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2, v5}, Lcom/android/camera/VideoModule;->access$4802(Lcom/android/camera/VideoModule;Z)Z

    goto :goto_0

    .line 2904
    :cond_2
    const-string v2, "default_scope"

    const-string v3, "pref_live_broadcast_choose_key"

    iget-object v4, p0, Lcom/android/camera/VideoModule$15;->this$0:Lcom/android/camera/VideoModule;

    .line 2905
    invoke-static {v4}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    const v5, 0x7f080309

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2904
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2906
    iget-object v2, p0, Lcom/android/camera/VideoModule$15;->this$0:Lcom/android/camera/VideoModule;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/camera/VideoModule;->access$4802(Lcom/android/camera/VideoModule;Z)Z

    goto/16 :goto_0
.end method
