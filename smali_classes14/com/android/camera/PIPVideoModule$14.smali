.class Lcom/android/camera/PIPVideoModule$14;
.super Ljava/lang/Object;
.source "PIPVideoModule.java"

# interfaces
.implements Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;


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
    .line 2749
    iput-object p1, p0, Lcom/android/camera/PIPVideoModule$14;->this$0:Lcom/android/camera/PIPVideoModule;

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

    .line 2752
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$14;->this$0:Lcom/android/camera/PIPVideoModule;

    iget-boolean v1, v1, Lcom/android/camera/PIPVideoModule;->mPaused:Z

    if-eqz v1, :cond_1

    .line 2753
    invoke-static {}, Lcom/android/camera/PIPVideoModule;->access$1100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "onResult is been paused. Therefore, we stop it."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2807
    .end local p3    # "result":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 2757
    .restart local p3    # "result":Ljava/lang/Object;
    :cond_1
    sget-object v1, Lcom/android/camera/PIPVideoModule$16;->$SwitchMap$com$android$camera$livebroadcast$LiveBroadcastManager$StatusCallback$ErrorCode:[I

    invoke-virtual {p2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2759
    :pswitch_0
    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->CREATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    if-ne p1, v1, :cond_2

    .line 2760
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$14;->this$0:Lcom/android/camera/PIPVideoModule;

    check-cast p3, Lcom/android/camera/livebroadcast/AccountAgent;

    .end local p3    # "result":Ljava/lang/Object;
    invoke-static {v1, p3}, Lcom/android/camera/PIPVideoModule;->access$2802(Lcom/android/camera/PIPVideoModule;Lcom/android/camera/livebroadcast/AccountAgent;)Lcom/android/camera/livebroadcast/AccountAgent;

    .line 2761
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$14;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v1}, Lcom/android/camera/PIPVideoModule;->access$2800(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/livebroadcast/AccountAgent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule$14;->this$0:Lcom/android/camera/PIPVideoModule;

    iget v2, v2, Lcom/android/camera/PIPVideoModule;->mOrientation:I

    invoke-interface {v1, v2, v3}, Lcom/android/camera/livebroadcast/AccountAgent;->setOrientation(IZ)V

    .line 2762
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$14;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v1, p4}, Lcom/android/camera/PIPVideoModule;->access$2902(Lcom/android/camera/PIPVideoModule;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2764
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$14;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v1}, Lcom/android/camera/PIPVideoModule;->access$3000(Lcom/android/camera/PIPVideoModule;)V

    goto :goto_0

    .line 2765
    .restart local p3    # "result":Ljava/lang/Object;
    :cond_2
    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->START:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    if-ne p1, v1, :cond_3

    .line 2766
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$14;->this$0:Lcom/android/camera/PIPVideoModule;

    check-cast p3, Lcom/android/camera/livebroadcast/AccountAgent;

    .end local p3    # "result":Ljava/lang/Object;
    invoke-static {v1, p3}, Lcom/android/camera/PIPVideoModule;->access$2802(Lcom/android/camera/PIPVideoModule;Lcom/android/camera/livebroadcast/AccountAgent;)Lcom/android/camera/livebroadcast/AccountAgent;

    .line 2767
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$14;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v1}, Lcom/android/camera/PIPVideoModule;->access$2800(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/livebroadcast/AccountAgent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule$14;->this$0:Lcom/android/camera/PIPVideoModule;

    iget v2, v2, Lcom/android/camera/PIPVideoModule;->mOrientation:I

    invoke-interface {v1, v2, v3}, Lcom/android/camera/livebroadcast/AccountAgent;->setOrientation(IZ)V

    .line 2768
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$14;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v1, p4}, Lcom/android/camera/PIPVideoModule;->access$2902(Lcom/android/camera/PIPVideoModule;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2769
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$14;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v1}, Lcom/android/camera/PIPVideoModule;->access$3100(Lcom/android/camera/PIPVideoModule;)V

    goto :goto_0

    .line 2770
    .restart local p3    # "result":Ljava/lang/Object;
    :cond_3
    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->STOP:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    if-ne p1, v1, :cond_4

    .line 2771
    if-eqz p3, :cond_0

    instance-of v1, p3, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "result":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2772
    new-instance v1, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule$14;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v2}, Lcom/android/camera/PIPVideoModule;->access$300(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PIPVideoModule$14;->this$0:Lcom/android/camera/PIPVideoModule;

    iget v3, v3, Lcom/android/camera/PIPVideoModule;->mOrientation:I

    invoke-direct {v1, v2, v3}, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;-><init>(Landroid/app/Activity;I)V

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule$14;->this$0:Lcom/android/camera/PIPVideoModule;

    .line 2773
    invoke-static {v2}, Lcom/android/camera/PIPVideoModule;->access$300(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    const v3, 0x7f0800c5

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->showInTime(Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local p3    # "result":Ljava/lang/Object;
    :cond_4
    move-object v0, p3

    .line 2776
    check-cast v0, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;

    .line 2777
    .local v0, "status":Lcom/android/camera/livebroadcast/status/AccountStatus$Status;
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$14;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v1, v0}, Lcom/android/camera/PIPVideoModule;->access$3200(Lcom/android/camera/PIPVideoModule;Lcom/android/camera/livebroadcast/status/AccountStatus$Status;)V

    goto/16 :goto_0

    .line 2782
    .end local v0    # "status":Lcom/android/camera/livebroadcast/status/AccountStatus$Status;
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$14;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v1}, Lcom/android/camera/PIPVideoModule;->access$900(Lcom/android/camera/PIPVideoModule;)V

    .line 2783
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$14;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v1}, Lcom/android/camera/PIPVideoModule;->access$3300(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    move-result-object v1

    check-cast p3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    .end local p3    # "result":Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule$14;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v2}, Lcom/android/camera/PIPVideoModule;->access$300(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v1, p3, v2, p2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->goToAuthorization(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Landroid/app/Activity;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2786
    .restart local p3    # "result":Ljava/lang/Object;
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$14;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v1}, Lcom/android/camera/PIPVideoModule;->access$900(Lcom/android/camera/PIPVideoModule;)V

    .line 2787
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$14;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v1}, Lcom/android/camera/PIPVideoModule;->access$300(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    check-cast p3, Landroid/content/Intent;

    .end local p3    # "result":Ljava/lang/Object;
    invoke-virtual {v1, p3}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2790
    .restart local p3    # "result":Ljava/lang/Object;
    :pswitch_3
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$14;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v1}, Lcom/android/camera/PIPVideoModule;->access$900(Lcom/android/camera/PIPVideoModule;)V

    goto/16 :goto_0

    .line 2793
    :pswitch_4
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule$14;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v2}, Lcom/android/camera/PIPVideoModule;->access$300(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    check-cast p3, Ljava/lang/String;

    .end local p3    # "result":Ljava/lang/Object;
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule$14;->this$0:Lcom/android/camera/PIPVideoModule;

    iget v3, v3, Lcom/android/camera/PIPVideoModule;->mOrientation:I

    invoke-direct {v1, v2, p3, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 2794
    invoke-virtual {v1, v4}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    goto/16 :goto_0

    .line 2797
    .restart local p3    # "result":Ljava/lang/Object;
    :pswitch_5
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule$14;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v2}, Lcom/android/camera/PIPVideoModule;->access$300(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    check-cast p3, Ljava/lang/String;

    .end local p3    # "result":Ljava/lang/Object;
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule$14;->this$0:Lcom/android/camera/PIPVideoModule;

    iget v3, v3, Lcom/android/camera/PIPVideoModule;->mOrientation:I

    invoke-direct {v1, v2, p3, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 2798
    invoke-virtual {v1, v4}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    .line 2799
    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->STOP:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    if-eq p1, v1, :cond_0

    .line 2800
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$14;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v1}, Lcom/android/camera/PIPVideoModule;->access$3400(Lcom/android/camera/PIPVideoModule;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2801
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$14;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v1}, Lcom/android/camera/PIPVideoModule;->access$3500(Lcom/android/camera/PIPVideoModule;)Z

    goto/16 :goto_0

    .line 2803
    :cond_5
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$14;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v1}, Lcom/android/camera/PIPVideoModule;->access$900(Lcom/android/camera/PIPVideoModule;)V

    goto/16 :goto_0

    .line 2757
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
