.class Lcom/android/camera/video/DualSightVideoFacadeImpl$2$3;
.super Ljava/lang/Object;
.source "DualSightVideoFacadeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->onBurstStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/video/DualSightVideoFacadeImpl$2;


# direct methods
.method constructor <init>(Lcom/android/camera/video/DualSightVideoFacadeImpl$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/video/DualSightVideoFacadeImpl$2;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$3;->this$1:Lcom/android/camera/video/DualSightVideoFacadeImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 392
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$3;->this$1:Lcom/android/camera/video/DualSightVideoFacadeImpl$2;

    iget-object v0, v0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$000(Lcom/android/camera/video/DualSightVideoFacadeImpl;)Lcom/android/camera/video/RecordReadyStateChangeListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/video/RecordReadyStateChangeListener;->onRecordingStarted(I)V

    .line 393
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$3;->this$1:Lcom/android/camera/video/DualSightVideoFacadeImpl$2;

    iget-object v0, v0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$1400(Lcom/android/camera/video/DualSightVideoFacadeImpl;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 394
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$3;->this$1:Lcom/android/camera/video/DualSightVideoFacadeImpl$2;

    iget-object v0, v0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$1400(Lcom/android/camera/video/DualSightVideoFacadeImpl;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 395
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$3;->this$1:Lcom/android/camera/video/DualSightVideoFacadeImpl$2;

    iget-object v0, v0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$1500(Lcom/android/camera/video/DualSightVideoFacadeImpl;)V

    .line 396
    return-void
.end method
