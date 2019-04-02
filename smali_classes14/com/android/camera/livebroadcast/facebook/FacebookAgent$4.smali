.class Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;
.super Ljava/lang/Object;
.source "FacebookAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->createLiveBroadcast(Lcom/android/camera/CameraActivity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

.field final synthetic val$accessToken:Lcom/facebook/AccessToken;

.field final synthetic val$activity:Lcom/android/camera/CameraActivity;

.field final synthetic val$isClosed:Lcom/android/camera/async/Observable;

.field final synthetic val$orientation:I

.field final synthetic val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;Lcom/android/camera/CameraActivity;Lcom/android/camera/async/Observable;Lcom/facebook/AccessToken;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    iput-object p2, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;->val$activity:Lcom/android/camera/CameraActivity;

    iput-object p3, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;->val$isClosed:Lcom/android/camera/async/Observable;

    iput-object p4, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;->val$accessToken:Lcom/facebook/AccessToken;

    iput-object p5, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    iput p6, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;->val$orientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$400(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;->val$activity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$300(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800ca

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;

    invoke-direct {v3, p0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;)V

    iget-object v4, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    .line 305
    invoke-static {v4}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$700(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)I

    move-result v4

    .line 247
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->showWithAction(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;I)V

    .line 306
    return-void
.end method
