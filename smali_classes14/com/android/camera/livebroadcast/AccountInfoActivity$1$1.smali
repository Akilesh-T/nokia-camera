.class Lcom/android/camera/livebroadcast/AccountInfoActivity$1$1;
.super Ljava/lang/Object;
.source "AccountInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/AccountInfoActivity$1;->onLogout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/livebroadcast/AccountInfoActivity$1;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/AccountInfoActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/livebroadcast/AccountInfoActivity$1;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/camera/livebroadcast/AccountInfoActivity$1$1;->this$1:Lcom/android/camera/livebroadcast/AccountInfoActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 116
    invoke-static {}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "logout Runnable run = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/livebroadcast/AccountInfoActivity$1$1;->this$1:Lcom/android/camera/livebroadcast/AccountInfoActivity$1;

    iget-object v5, v5, Lcom/android/camera/livebroadcast/AccountInfoActivity$1;->this$0:Lcom/android/camera/livebroadcast/AccountInfoActivity;

    invoke-static {v5}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->access$100(Lcom/android/camera/livebroadcast/AccountInfoActivity;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/android/camera/app/CameraServicesImpl;->instance()Lcom/android/camera/app/CameraServicesImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraServicesImpl;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    .line 118
    .local v2, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v3, "default_scope"

    const-string v4, "pref_live_broadcast_choose_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "accountType":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current account setting = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 120
    const/4 v1, -0x1

    .line 121
    .local v1, "account_type_res_id":I
    sget-object v3, Lcom/android/camera/livebroadcast/AccountInfoActivity$2;->$SwitchMap$com$android$camera$livebroadcast$LiveBroadcastManager$AccountType:[I

    iget-object v4, p0, Lcom/android/camera/livebroadcast/AccountInfoActivity$1$1;->this$1:Lcom/android/camera/livebroadcast/AccountInfoActivity$1;

    iget-object v4, v4, Lcom/android/camera/livebroadcast/AccountInfoActivity$1;->this$0:Lcom/android/camera/livebroadcast/AccountInfoActivity;

    invoke-static {v4}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->access$100(Lcom/android/camera/livebroadcast/AccountInfoActivity;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 132
    const/4 v1, -0x1

    .line 135
    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/livebroadcast/AccountInfoActivity$1$1;->this$1:Lcom/android/camera/livebroadcast/AccountInfoActivity$1;

    iget-object v3, v3, Lcom/android/camera/livebroadcast/AccountInfoActivity$1;->this$0:Lcom/android/camera/livebroadcast/AccountInfoActivity;

    invoke-virtual {v3, v1}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    invoke-static {}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    const-string v4, "reset account setting to off"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 137
    const-string v3, "default_scope"

    const-string v4, "pref_live_broadcast_choose_key"

    iget-object v5, p0, Lcom/android/camera/livebroadcast/AccountInfoActivity$1$1;->this$1:Lcom/android/camera/livebroadcast/AccountInfoActivity$1;

    iget-object v5, v5, Lcom/android/camera/livebroadcast/AccountInfoActivity$1;->this$0:Lcom/android/camera/livebroadcast/AccountInfoActivity;

    const v6, 0x7f080309

    invoke-virtual {v5, v6}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_0
    iget-object v3, p0, Lcom/android/camera/livebroadcast/AccountInfoActivity$1$1;->this$1:Lcom/android/camera/livebroadcast/AccountInfoActivity$1;

    iget-object v3, v3, Lcom/android/camera/livebroadcast/AccountInfoActivity$1;->this$0:Lcom/android/camera/livebroadcast/AccountInfoActivity;

    invoke-virtual {v3}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->finish()V

    .line 140
    return-void

    .line 123
    :pswitch_0
    const v1, 0x7f0803ff

    .line 124
    goto :goto_0

    .line 126
    :pswitch_1
    const v1, 0x7f0803fe

    .line 127
    goto :goto_0

    .line 129
    :pswitch_2
    const v1, 0x7f080400

    .line 130
    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
