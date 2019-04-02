.class Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$4;
.super Ljava/lang/Object;
.source "YouTubeAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->cancelLiveBroadcast(Lcom/android/camera/CameraActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

.field final synthetic val$activity:Lcom/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;Lcom/android/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$4;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    iput-object p2, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$4;->val$activity:Lcom/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$4;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$400(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$4;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$400(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$4;->val$activity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->hide(Landroid/app/Activity;)V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$4;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$000(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$4;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$000(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->hide()V

    .line 231
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$4;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->access$002(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;)Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    .line 233
    :cond_1
    return-void
.end method
