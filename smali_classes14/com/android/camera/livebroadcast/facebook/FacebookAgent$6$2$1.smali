.class Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2$1;
.super Ljava/lang/Object;
.source "FacebookAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;->onCompleted(Lcom/facebook/GraphResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2$1;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2$1;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$400(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2$1;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;->val$activity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->hide(Landroid/app/Activity;)V

    .line 367
    return-void
.end method
