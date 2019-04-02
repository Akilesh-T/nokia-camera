.class Lcom/android/camera/PIPVideoModule$13;
.super Ljava/lang/Object;
.source "PIPVideoModule.java"

# interfaces
.implements Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;


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
    .line 2723
    iput-object p1, p0, Lcom/android/camera/PIPVideoModule$13;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Z)V
    .locals 5
    .param p1, "type"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;
    .param p2, "isSuccess"    # Z

    .prologue
    .line 2726
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$13;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v1}, Lcom/android/camera/PIPVideoModule;->access$300(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 2727
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    if-eqz p2, :cond_0

    .line 2728
    sget-object v1, Lcom/android/camera/PIPVideoModule$16;->$SwitchMap$com$android$camera$livebroadcast$LiveBroadcastManager$AccountType:[I

    invoke-virtual {p1}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2746
    :goto_0
    return-void

    .line 2730
    :pswitch_0
    const-string v1, "default_scope"

    const-string v2, "pref_live_broadcast_choose_key"

    iget-object v3, p0, Lcom/android/camera/PIPVideoModule$13;->this$0:Lcom/android/camera/PIPVideoModule;

    .line 2731
    invoke-static {v3}, Lcom/android/camera/PIPVideoModule;->access$300(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    const v4, 0x7f0803ff

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2730
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2734
    :pswitch_1
    const-string v1, "default_scope"

    const-string v2, "pref_live_broadcast_choose_key"

    iget-object v3, p0, Lcom/android/camera/PIPVideoModule$13;->this$0:Lcom/android/camera/PIPVideoModule;

    .line 2735
    invoke-static {v3}, Lcom/android/camera/PIPVideoModule;->access$300(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    const v4, 0x7f0803fe

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2734
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2738
    :pswitch_2
    const-string v1, "default_scope"

    const-string v2, "pref_live_broadcast_choose_key"

    iget-object v3, p0, Lcom/android/camera/PIPVideoModule$13;->this$0:Lcom/android/camera/PIPVideoModule;

    .line 2739
    invoke-static {v3}, Lcom/android/camera/PIPVideoModule;->access$300(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    const v4, 0x7f080400

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2738
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2743
    :cond_0
    const-string v1, "default_scope"

    const-string v2, "pref_live_broadcast_choose_key"

    iget-object v3, p0, Lcom/android/camera/PIPVideoModule$13;->this$0:Lcom/android/camera/PIPVideoModule;

    .line 2744
    invoke-static {v3}, Lcom/android/camera/PIPVideoModule;->access$300(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    const v4, 0x7f080309

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2743
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2728
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
