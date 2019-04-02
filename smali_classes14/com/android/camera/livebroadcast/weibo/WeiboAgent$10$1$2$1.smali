.class Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1$2$1;
.super Ljava/lang/Object;
.source "WeiboAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1$2;->onComplete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1$2;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1$2;)V
    .locals 0
    .param p1, "this$3"    # Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1$2;

    .prologue
    .line 637
    iput-object p1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1$2$1;->this$3:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1$2$1;->this$3:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1$2;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1$2;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$500(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1$2$1;->this$3:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1$2;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1$2;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->hide(Landroid/app/Activity;)V

    .line 641
    return-void
.end method
