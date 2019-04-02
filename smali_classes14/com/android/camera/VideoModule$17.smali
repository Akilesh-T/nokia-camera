.class Lcom/android/camera/VideoModule$17;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;


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
    .line 2988
    iput-object p1, p0, Lcom/android/camera/VideoModule$17;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1, "stage"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;
    .param p2, "errorCode"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;
    .param p3, "result"    # Ljava/lang/Object;
    .param p4, "params"    # Ljava/lang/Object;

    .prologue
    const/16 v4, 0xbb8

    const/4 v3, 0x0

    .line 2991
    iget-object v1, p0, Lcom/android/camera/VideoModule$17;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2992
    invoke-static {}, Lcom/android/camera/VideoModule;->access$1600()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "onResult is been paused. Therefore, we stop it."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3046
    .end local p3    # "result":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 2996
    .restart local p3    # "result":Ljava/lang/Object;
    :cond_1
    sget-object v1, Lcom/android/camera/VideoModule$19;->$SwitchMap$com$android$camera$livebroadcast$LiveBroadcastManager$StatusCallback$ErrorCode:[I

    invoke-virtual {p2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2998
    :pswitch_0
    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->CREATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    if-ne p1, v1, :cond_2

    .line 2999
    iget-object v1, p0, Lcom/android/camera/VideoModule$17;->this$0:Lcom/android/camera/VideoModule;

    check-cast p3, Lcom/android/camera/livebroadcast/AccountAgent;

    .end local p3    # "result":Ljava/lang/Object;
    invoke-static {v1, p3}, Lcom/android/camera/VideoModule;->access$5002(Lcom/android/camera/VideoModule;Lcom/android/camera/livebroadcast/AccountAgent;)Lcom/android/camera/livebroadcast/AccountAgent;

    .line 3000
    iget-object v1, p0, Lcom/android/camera/VideoModule$17;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$5000(Lcom/android/camera/VideoModule;)Lcom/android/camera/livebroadcast/AccountAgent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoModule$17;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$5100(Lcom/android/camera/VideoModule;)I

    move-result v2

    invoke-interface {v1, v2, v3}, Lcom/android/camera/livebroadcast/AccountAgent;->setOrientation(IZ)V

    .line 3001
    iget-object v1, p0, Lcom/android/camera/VideoModule$17;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1, p4}, Lcom/android/camera/VideoModule;->access$5202(Lcom/android/camera/VideoModule;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3003
    iget-object v1, p0, Lcom/android/camera/VideoModule$17;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$5300(Lcom/android/camera/VideoModule;)V

    goto :goto_0

    .line 3004
    .restart local p3    # "result":Ljava/lang/Object;
    :cond_2
    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->START:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    if-ne p1, v1, :cond_3

    .line 3005
    iget-object v1, p0, Lcom/android/camera/VideoModule$17;->this$0:Lcom/android/camera/VideoModule;

    check-cast p3, Lcom/android/camera/livebroadcast/AccountAgent;

    .end local p3    # "result":Ljava/lang/Object;
    invoke-static {v1, p3}, Lcom/android/camera/VideoModule;->access$5002(Lcom/android/camera/VideoModule;Lcom/android/camera/livebroadcast/AccountAgent;)Lcom/android/camera/livebroadcast/AccountAgent;

    .line 3006
    iget-object v1, p0, Lcom/android/camera/VideoModule$17;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$5000(Lcom/android/camera/VideoModule;)Lcom/android/camera/livebroadcast/AccountAgent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoModule$17;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$5100(Lcom/android/camera/VideoModule;)I

    move-result v2

    invoke-interface {v1, v2, v3}, Lcom/android/camera/livebroadcast/AccountAgent;->setOrientation(IZ)V

    .line 3007
    iget-object v1, p0, Lcom/android/camera/VideoModule$17;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1, p4}, Lcom/android/camera/VideoModule;->access$5202(Lcom/android/camera/VideoModule;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3008
    iget-object v1, p0, Lcom/android/camera/VideoModule$17;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$5400(Lcom/android/camera/VideoModule;)V

    goto :goto_0

    .line 3009
    .restart local p3    # "result":Ljava/lang/Object;
    :cond_3
    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->STOP:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    if-ne p1, v1, :cond_4

    .line 3010
    if-eqz p3, :cond_0

    instance-of v1, p3, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "result":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3011
    new-instance v1, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;

    iget-object v2, p0, Lcom/android/camera/VideoModule$17;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoModule$17;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v3}, Lcom/android/camera/VideoModule;->access$5100(Lcom/android/camera/VideoModule;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;-><init>(Landroid/app/Activity;I)V

    iget-object v2, p0, Lcom/android/camera/VideoModule$17;->this$0:Lcom/android/camera/VideoModule;

    .line 3012
    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    const v3, 0x7f0800c5

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->showInTime(Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local p3    # "result":Ljava/lang/Object;
    :cond_4
    move-object v0, p3

    .line 3015
    check-cast v0, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;

    .line 3016
    .local v0, "status":Lcom/android/camera/livebroadcast/status/AccountStatus$Status;
    iget-object v1, p0, Lcom/android/camera/VideoModule$17;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1, v0}, Lcom/android/camera/VideoModule;->access$5500(Lcom/android/camera/VideoModule;Lcom/android/camera/livebroadcast/status/AccountStatus$Status;)V

    goto/16 :goto_0

    .line 3021
    .end local v0    # "status":Lcom/android/camera/livebroadcast/status/AccountStatus$Status;
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/VideoModule$17;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$2000(Lcom/android/camera/VideoModule;)V

    .line 3022
    iget-object v1, p0, Lcom/android/camera/VideoModule$17;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$5600(Lcom/android/camera/VideoModule;)Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    move-result-object v1

    check-cast p3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    .end local p3    # "result":Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/camera/VideoModule$17;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v1, p3, v2, p2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->goToAuthorization(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Landroid/app/Activity;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3025
    .restart local p3    # "result":Ljava/lang/Object;
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/VideoModule$17;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$2000(Lcom/android/camera/VideoModule;)V

    .line 3026
    iget-object v1, p0, Lcom/android/camera/VideoModule$17;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    check-cast p3, Landroid/content/Intent;

    .end local p3    # "result":Ljava/lang/Object;
    invoke-virtual {v1, p3}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3029
    .restart local p3    # "result":Ljava/lang/Object;
    :pswitch_3
    iget-object v1, p0, Lcom/android/camera/VideoModule$17;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$2000(Lcom/android/camera/VideoModule;)V

    goto/16 :goto_0

    .line 3032
    :pswitch_4
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    iget-object v2, p0, Lcom/android/camera/VideoModule$17;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    check-cast p3, Ljava/lang/String;

    .end local p3    # "result":Ljava/lang/Object;
    iget-object v3, p0, Lcom/android/camera/VideoModule$17;->this$0:Lcom/android/camera/VideoModule;

    .line 3033
    invoke-static {v3}, Lcom/android/camera/VideoModule;->access$5100(Lcom/android/camera/VideoModule;)I

    move-result v3

    invoke-direct {v1, v2, p3, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    goto/16 :goto_0

    .line 3036
    .restart local p3    # "result":Ljava/lang/Object;
    :pswitch_5
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    iget-object v2, p0, Lcom/android/camera/VideoModule$17;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    check-cast p3, Ljava/lang/String;

    .end local p3    # "result":Ljava/lang/Object;
    iget-object v3, p0, Lcom/android/camera/VideoModule$17;->this$0:Lcom/android/camera/VideoModule;

    .line 3037
    invoke-static {v3}, Lcom/android/camera/VideoModule;->access$5100(Lcom/android/camera/VideoModule;)I

    move-result v3

    invoke-direct {v1, v2, p3, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    .line 3038
    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->STOP:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    if-eq p1, v1, :cond_0

    .line 3039
    iget-object v1, p0, Lcom/android/camera/VideoModule$17;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$1700(Lcom/android/camera/VideoModule;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3040
    iget-object v1, p0, Lcom/android/camera/VideoModule$17;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$5700(Lcom/android/camera/VideoModule;)Z

    goto/16 :goto_0

    .line 3042
    :cond_5
    iget-object v1, p0, Lcom/android/camera/VideoModule$17;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$2000(Lcom/android/camera/VideoModule;)V

    goto/16 :goto_0

    .line 2996
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
