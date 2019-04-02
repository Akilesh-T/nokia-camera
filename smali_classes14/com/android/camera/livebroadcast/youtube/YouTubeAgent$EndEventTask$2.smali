.class Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask$2;
.super Ljava/lang/Object;
.source "YouTubeAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->onPostExecute(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;

    .prologue
    .line 621
    iput-object p1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask$2;->this$1:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask$2;->this$1:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$400(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask$2;->this$1:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->access$1400(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->hide(Landroid/app/Activity;)V

    .line 625
    return-void
.end method
