.class Lcom/android/camera/DualSightVideoModule$13;
.super Ljava/lang/Object;
.source "DualSightVideoModule.java"

# interfaces
.implements Lcom/android/camera/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightVideoModule;->getLiveBroadcastCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
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
    .line 1414
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule$13;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    .prologue
    .line 1438
    return-void
.end method

.method public onStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 1418
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$13;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$2300(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v2, "default_scope"

    const-string v3, "pref_live_broadcast_choose_key"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1419
    .local v0, "accountType":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/DualSightVideoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

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

    .line 1421
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$13;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$2300(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0803ff

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1422
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$13;->this$0:Lcom/android/camera/DualSightVideoModule;

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->WEIBO:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule$13;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v3}, Lcom/android/camera/DualSightVideoModule;->access$4000(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/DualSightVideoModule;->access$4100(Lcom/android/camera/DualSightVideoModule;Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)V

    .line 1433
    :cond_0
    :goto_0
    return-void

    .line 1423
    :cond_1
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$13;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$2300(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0803fe

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1424
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$13;->this$0:Lcom/android/camera/DualSightVideoModule;

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->FACEBOOK:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule$13;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v3}, Lcom/android/camera/DualSightVideoModule;->access$4000(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/DualSightVideoModule;->access$4100(Lcom/android/camera/DualSightVideoModule;Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)V

    goto :goto_0

    .line 1425
    :cond_2
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$13;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$2300(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f080400

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1426
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$13;->this$0:Lcom/android/camera/DualSightVideoModule;

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->YOUTUBE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule$13;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v3}, Lcom/android/camera/DualSightVideoModule;->access$4000(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/DualSightVideoModule;->access$4100(Lcom/android/camera/DualSightVideoModule;Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)V

    goto :goto_0

    .line 1427
    :cond_3
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$13;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$2300(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f080309

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1428
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$13;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$4200(Lcom/android/camera/DualSightVideoModule;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1429
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$13;->this$0:Lcom/android/camera/DualSightVideoModule;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/DualSightVideoModule;->onReadyStateChanged(Z)V

    .line 1430
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$13;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$600(Lcom/android/camera/DualSightVideoModule;)V

    goto :goto_0
.end method
