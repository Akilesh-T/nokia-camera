.class Lcom/android/camera/PIPVideoModule$12;
.super Ljava/lang/Object;
.source "PIPVideoModule.java"

# interfaces
.implements Lcom/android/camera/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PIPVideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PIPVideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PIPVideoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 2694
    iput-object p1, p0, Lcom/android/camera/PIPVideoModule$12;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    .prologue
    .line 2720
    return-void
.end method

.method public onStateChanged(I)V
    .locals 8
    .param p1, "state"    # I

    .prologue
    const v7, 0x7f080400

    const v6, 0x7f0803ff

    const v5, 0x7f0803fe

    .line 2697
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule$12;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v2}, Lcom/android/camera/PIPVideoModule;->access$300(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 2698
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v2, "default_scope"

    const-string v3, "pref_live_broadcast_choose_key"

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/camera/settings/SettingsManager;->getValueOfCurrentIndex(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2699
    .local v0, "accountType":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule$12;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v2}, Lcom/android/camera/PIPVideoModule;->access$300(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule$12;->this$0:Lcom/android/camera/PIPVideoModule;

    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->WEIBO:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    iget-object v4, p0, Lcom/android/camera/PIPVideoModule$12;->this$0:Lcom/android/camera/PIPVideoModule;

    .line 2700
    invoke-static {v4}, Lcom/android/camera/PIPVideoModule;->access$2600(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/camera/PIPVideoModule;->access$2700(Lcom/android/camera/PIPVideoModule;Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2701
    const-string v2, "default_scope"

    const-string v3, "pref_live_broadcast_choose_key"

    iget-object v4, p0, Lcom/android/camera/PIPVideoModule$12;->this$0:Lcom/android/camera/PIPVideoModule;

    .line 2702
    invoke-static {v4}, Lcom/android/camera/PIPVideoModule;->access$300(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2701
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2715
    :goto_0
    return-void

    .line 2703
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule$12;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v2}, Lcom/android/camera/PIPVideoModule;->access$300(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule$12;->this$0:Lcom/android/camera/PIPVideoModule;

    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->FACEBOOK:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    iget-object v4, p0, Lcom/android/camera/PIPVideoModule$12;->this$0:Lcom/android/camera/PIPVideoModule;

    .line 2704
    invoke-static {v4}, Lcom/android/camera/PIPVideoModule;->access$2600(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/camera/PIPVideoModule;->access$2700(Lcom/android/camera/PIPVideoModule;Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2705
    const-string v2, "default_scope"

    const-string v3, "pref_live_broadcast_choose_key"

    iget-object v4, p0, Lcom/android/camera/PIPVideoModule$12;->this$0:Lcom/android/camera/PIPVideoModule;

    .line 2706
    invoke-static {v4}, Lcom/android/camera/PIPVideoModule;->access$300(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2705
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2707
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule$12;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v2}, Lcom/android/camera/PIPVideoModule;->access$300(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule$12;->this$0:Lcom/android/camera/PIPVideoModule;

    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->YOUTUBE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    iget-object v4, p0, Lcom/android/camera/PIPVideoModule$12;->this$0:Lcom/android/camera/PIPVideoModule;

    .line 2708
    invoke-static {v4}, Lcom/android/camera/PIPVideoModule;->access$2600(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/camera/PIPVideoModule;->access$2700(Lcom/android/camera/PIPVideoModule;Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2709
    const-string v2, "default_scope"

    const-string v3, "pref_live_broadcast_choose_key"

    iget-object v4, p0, Lcom/android/camera/PIPVideoModule$12;->this$0:Lcom/android/camera/PIPVideoModule;

    .line 2710
    invoke-static {v4}, Lcom/android/camera/PIPVideoModule;->access$300(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2709
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2712
    :cond_2
    const-string v2, "default_scope"

    const-string v3, "pref_live_broadcast_choose_key"

    iget-object v4, p0, Lcom/android/camera/PIPVideoModule$12;->this$0:Lcom/android/camera/PIPVideoModule;

    .line 2713
    invoke-static {v4}, Lcom/android/camera/PIPVideoModule;->access$300(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    const v5, 0x7f080309

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2712
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
