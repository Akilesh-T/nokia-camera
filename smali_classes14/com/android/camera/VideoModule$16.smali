.class Lcom/android/camera/VideoModule$16;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;


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
    .line 2917
    iput-object p1, p0, Lcom/android/camera/VideoModule$16;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Z)V
    .locals 6
    .param p1, "type"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;
    .param p2, "isSuccess"    # Z

    .prologue
    const/4 v5, 0x1

    .line 2920
    iget-object v1, p0, Lcom/android/camera/VideoModule$16;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 2921
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    invoke-static {}, Lcom/android/camera/VideoModule;->access$1600()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoginResult("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2922
    if-eqz p2, :cond_0

    .line 2923
    sget-object v1, Lcom/android/camera/VideoModule$19;->$SwitchMap$com$android$camera$livebroadcast$LiveBroadcastManager$AccountType:[I

    invoke-virtual {p1}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2948
    :goto_0
    iget-object v1, p0, Lcom/android/camera/VideoModule$16;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$4900(Lcom/android/camera/VideoModule;)V

    .line 2949
    return-void

    .line 2925
    :pswitch_0
    const-string v1, "default_scope"

    const-string v2, "pref_live_broadcast_choose_key"

    iget-object v3, p0, Lcom/android/camera/VideoModule$16;->this$0:Lcom/android/camera/VideoModule;

    .line 2926
    invoke-static {v3}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    const v4, 0x7f0803ff

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2925
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2927
    iget-object v1, p0, Lcom/android/camera/VideoModule$16;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1, v5}, Lcom/android/camera/VideoModule;->access$4702(Lcom/android/camera/VideoModule;Z)Z

    .line 2928
    iget-object v1, p0, Lcom/android/camera/VideoModule$16;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1, v5}, Lcom/android/camera/VideoModule;->access$4802(Lcom/android/camera/VideoModule;Z)Z

    goto :goto_0

    .line 2931
    :pswitch_1
    const-string v1, "default_scope"

    const-string v2, "pref_live_broadcast_choose_key"

    iget-object v3, p0, Lcom/android/camera/VideoModule$16;->this$0:Lcom/android/camera/VideoModule;

    .line 2932
    invoke-static {v3}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    const v4, 0x7f0803fe

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2931
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2933
    iget-object v1, p0, Lcom/android/camera/VideoModule$16;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1, v5}, Lcom/android/camera/VideoModule;->access$4702(Lcom/android/camera/VideoModule;Z)Z

    .line 2934
    iget-object v1, p0, Lcom/android/camera/VideoModule$16;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1, v5}, Lcom/android/camera/VideoModule;->access$4802(Lcom/android/camera/VideoModule;Z)Z

    goto :goto_0

    .line 2937
    :pswitch_2
    const-string v1, "default_scope"

    const-string v2, "pref_live_broadcast_choose_key"

    iget-object v3, p0, Lcom/android/camera/VideoModule$16;->this$0:Lcom/android/camera/VideoModule;

    .line 2938
    invoke-static {v3}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    const v4, 0x7f080400

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2937
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2939
    iget-object v1, p0, Lcom/android/camera/VideoModule$16;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1, v5}, Lcom/android/camera/VideoModule;->access$4702(Lcom/android/camera/VideoModule;Z)Z

    .line 2940
    iget-object v1, p0, Lcom/android/camera/VideoModule$16;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1, v5}, Lcom/android/camera/VideoModule;->access$4802(Lcom/android/camera/VideoModule;Z)Z

    goto :goto_0

    .line 2944
    :cond_0
    const-string v1, "default_scope"

    const-string v2, "pref_live_broadcast_choose_key"

    iget-object v3, p0, Lcom/android/camera/VideoModule$16;->this$0:Lcom/android/camera/VideoModule;

    .line 2945
    invoke-static {v3}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    const v4, 0x7f080309

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2944
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2946
    iget-object v1, p0, Lcom/android/camera/VideoModule$16;->this$0:Lcom/android/camera/VideoModule;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/VideoModule;->access$4802(Lcom/android/camera/VideoModule;Z)Z

    goto :goto_0

    .line 2923
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
