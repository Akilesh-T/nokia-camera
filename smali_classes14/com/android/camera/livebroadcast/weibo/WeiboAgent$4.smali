.class Lcom/android/camera/livebroadcast/weibo/WeiboAgent$4;
.super Ljava/lang/Object;
.source "WeiboAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->cancelLiveBroadcast(Lcom/android/camera/CameraActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

.field final synthetic val$activity:Lcom/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Lcom/android/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$4;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    iput-object p2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$4;->val$activity:Lcom/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$4;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$500(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$4;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$500(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$4;->val$activity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->hide(Landroid/app/Activity;)V

    .line 206
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$4;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$602(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Z)Z

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$4;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$300(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$4;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$300(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->hide()V

    .line 211
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$4;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$302(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;)Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    .line 213
    :cond_1
    return-void
.end method
