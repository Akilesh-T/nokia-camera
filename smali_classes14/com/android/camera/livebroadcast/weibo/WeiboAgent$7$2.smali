.class Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7$2;
.super Ljava/lang/Object;
.source "WeiboAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7$2;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7$2;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$500(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7$2;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->hide(Landroid/app/Activity;)V

    .line 439
    return-void
.end method
