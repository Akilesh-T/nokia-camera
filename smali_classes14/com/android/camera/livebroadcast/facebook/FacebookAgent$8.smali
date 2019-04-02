.class Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;
.super Ljava/lang/Object;
.source "FacebookAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->createEvent(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;Lcom/android/camera/livebroadcast/facebook/LiveData;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$eventName:Ljava/lang/String;

.field final synthetic val$isClosed:Lcom/android/camera/async/Observable;

.field final synthetic val$liveData:Lcom/android/camera/livebroadcast/facebook/LiveData;

.field final synthetic val$privacy:Lorg/json/JSONObject;

.field final synthetic val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;Lcom/android/camera/async/Observable;Landroid/app/Activity;Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/camera/livebroadcast/facebook/LiveData;Ljava/lang/String;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    .prologue
    .line 511
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    iput-object p2, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;->val$isClosed:Lcom/android/camera/async/Observable;

    iput-object p3, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;->val$eventName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;->val$privacy:Lorg/json/JSONObject;

    iput-object p6, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;->val$liveData:Lcom/android/camera/livebroadcast/facebook/LiveData;

    iput-object p7, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;->val$userId:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;->val$isClosed:Lcom/android/camera/async/Observable;

    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "call createEvent after streaming close, ignore"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 582
    :goto_0
    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$400(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$300(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800bd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;

    invoke-direct {v3, p0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;)V

    iget-object v4, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    .line 581
    invoke-static {v4}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$700(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)I

    move-result v4

    .line 519
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->showWithAction(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;I)V

    goto :goto_0
.end method
