.class Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1$1;
.super Ljava/lang/Object;
.source "FacebookAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;

    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1$1;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1$1;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$400(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1$1;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->hide(Landroid/app/Activity;)V

    .line 528
    return-void
.end method
