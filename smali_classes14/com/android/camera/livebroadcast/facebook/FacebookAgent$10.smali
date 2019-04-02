.class Lcom/android/camera/livebroadcast/facebook/FacebookAgent$10;
.super Ljava/lang/Object;
.source "FacebookAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->startUpdate(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Ljava/lang/Object;Lcom/android/camera/async/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callbackCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

.field final synthetic val$isClosed:Lcom/android/camera/async/Observable;

.field final synthetic val$liveData:Lcom/android/camera/livebroadcast/facebook/LiveData;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;Lcom/android/camera/async/Observable;Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/livebroadcast/facebook/LiveData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    .prologue
    .line 702
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$10;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    iput-object p2, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$10;->val$isClosed:Lcom/android/camera/async/Observable;

    iput-object p3, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$10;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$10;->val$callbackCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    iput-object p5, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$10;->val$liveData:Lcom/android/camera/livebroadcast/facebook/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$10;->val$isClosed:Lcom/android/camera/async/Observable;

    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "startUpdate after streaming close, ignore."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 711
    :goto_0
    return-void

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$10;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    new-instance v1, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$10;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$10;->val$callbackCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    iget-object v4, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$10;->val$liveData:Lcom/android/camera/livebroadcast/facebook/LiveData;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;-><init>(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/livebroadcast/facebook/LiveData;)V

    invoke-static {v0, v1}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$1302(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;Lcom/android/camera/livebroadcast/facebook/FacebookStatus;)Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    .line 710
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$10;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$1300(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->startUpdate()V

    goto :goto_0
.end method
