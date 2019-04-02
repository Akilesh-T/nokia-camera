.class Lcom/android/camera/DualSightVideoModule$14;
.super Ljava/lang/Object;
.source "DualSightVideoModule.java"

# interfaces
.implements Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/DualSightVideoModule;
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
    .line 1442
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule$14;->this$0:Lcom/android/camera/DualSightVideoModule;

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

    .line 1445
    invoke-static {}, Lcom/android/camera/DualSightVideoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

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

    .line 1446
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/GoogleAssistantManager;->setIsCheckingAccount(Z)V

    .line 1447
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$14;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$4300(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 1448
    if-eqz p2, :cond_2

    .line 1449
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$14;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$4200(Lcom/android/camera/DualSightVideoModule;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1450
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$14;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-virtual {v0, v5}, Lcom/android/camera/DualSightVideoModule;->onReadyStateChanged(Z)V

    .line 1451
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$14;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$600(Lcom/android/camera/DualSightVideoModule;)V

    .line 1463
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$14;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0, v6}, Lcom/android/camera/DualSightVideoModule;->access$4302(Lcom/android/camera/DualSightVideoModule;Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    .line 1464
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$14;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0, v6}, Lcom/android/camera/DualSightVideoModule;->access$4402(Lcom/android/camera/DualSightVideoModule;Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    .line 1466
    :cond_1
    return-void

    .line 1454
    :cond_2
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/GoogleAssistantManager;->needExecuteGoogleAssistantAction()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/GoogleAssistantManager;->finishOperation()V

    .line 1455
    :cond_3
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$14;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$2300(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$14;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$2300(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1456
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$14;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$2300(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "pref_live_broadcast_choose_key"

    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule$14;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v3}, Lcom/android/camera/DualSightVideoModule;->access$2300(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    const v4, 0x7f080309

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    :cond_4
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$14;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$4200(Lcom/android/camera/DualSightVideoModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1459
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$14;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-virtual {v0, v5}, Lcom/android/camera/DualSightVideoModule;->onReadyStateChanged(Z)V

    .line 1460
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$14;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$600(Lcom/android/camera/DualSightVideoModule;)V

    goto :goto_0
.end method
