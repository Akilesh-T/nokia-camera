.class Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;
.super Ljava/lang/Object;
.source "FacebookAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->showListDialog(Lcom/android/camera/CameraActivity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/facebook/AccessToken;Lcom/android/camera/async/Observable;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

.field final synthetic val$accessToken:Lcom/facebook/AccessToken;

.field final synthetic val$accounts:[Ljava/lang/String;

.field final synthetic val$activity:Lcom/android/camera/CameraActivity;

.field final synthetic val$finalTargetIndex:I

.field final synthetic val$isClosed:Lcom/android/camera/async/Observable;

.field final synthetic val$orientation:I

.field final synthetic val$pages:Ljava/util/List;

.field final synthetic val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;Lcom/android/camera/CameraActivity;Lcom/android/camera/async/Observable;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;[Ljava/lang/String;ILcom/facebook/AccessToken;Ljava/util/List;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    iput-object p2, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;->val$activity:Lcom/android/camera/CameraActivity;

    iput-object p3, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;->val$isClosed:Lcom/android/camera/async/Observable;

    iput-object p4, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    iput-object p5, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;->val$accounts:[Ljava/lang/String;

    iput p6, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;->val$finalTargetIndex:I

    iput-object p7, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;->val$accessToken:Lcom/facebook/AccessToken;

    iput-object p8, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;->val$pages:Ljava/util/List;

    iput p9, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;->val$orientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$400(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;->val$activity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->hide(Landroid/app/Activity;)V

    .line 449
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$800(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$800(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->hide()V

    .line 451
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$802(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;)Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;->val$isClosed:Lcom/android/camera/async/Observable;

    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "showListDialog after streaming close, ignore."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 486
    :goto_0
    return-void

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    new-instance v1, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;->val$activity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    iget-object v4, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;->val$accounts:[Ljava/lang/String;

    iget v5, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;->val$finalTargetIndex:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;[Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$802(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;)Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    .line 460
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$800(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    move-result-object v0

    new-instance v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7$1;

    invoke-direct {v1, p0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7$1;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->show(Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$EditDialogListener;)V

    goto :goto_0
.end method
