.class Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$5;
.super Ljava/lang/Object;
.source "YouTubeAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->startUpdate(Landroid/app/Activity;Lcom/google/api/services/youtube/YouTube;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

.field final synthetic val$callbackCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

.field final synthetic val$eventData:Lcom/android/camera/livebroadcast/youtube/EventData;

.field final synthetic val$youtube:Lcom/google/api/services/youtube/YouTube;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/google/api/services/youtube/YouTube;Lcom/android/camera/livebroadcast/youtube/EventData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    .prologue
    .line 660
    iput-object p1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$5;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    iput-object p2, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$5;->val$callbackCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    iput-object p3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$5;->val$youtube:Lcom/google/api/services/youtube/YouTube;

    iput-object p4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$5;->val$eventData:Lcom/android/camera/livebroadcast/youtube/EventData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$5;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    new-instance v1, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$5;->val$callbackCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$5;->val$youtube:Lcom/google/api/services/youtube/YouTube;

    iget-object v4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$5;->val$eventData:Lcom/android/camera/livebroadcast/youtube/EventData;

    .line 664
    invoke-virtual {v4}, Lcom/android/camera/livebroadcast/youtube/EventData;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$5;->val$eventData:Lcom/android/camera/livebroadcast/youtube/EventData;

    invoke-virtual {v5}, Lcom/android/camera/livebroadcast/youtube/EventData;->getLiveChatId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;-><init>(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    invoke-static {v0, v1}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$1502(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;)Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    .line 665
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$5;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$1500(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->startUpdate()V

    .line 666
    return-void
.end method
