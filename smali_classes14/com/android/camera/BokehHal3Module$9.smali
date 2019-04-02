.class Lcom/android/camera/BokehHal3Module$9;
.super Ljava/lang/Object;
.source "BokehHal3Module.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BokehHal3Module;->takePictureNow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BokehHal3Module;

.field final synthetic val$orientation:I

.field final synthetic val$session:Lcom/android/camera/session/CaptureSession;


# direct methods
.method constructor <init>(Lcom/android/camera/BokehHal3Module;ILcom/android/camera/session/CaptureSession;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 742
    iput-object p1, p0, Lcom/android/camera/BokehHal3Module$9;->this$0:Lcom/android/camera/BokehHal3Module;

    iput p2, p0, Lcom/android/camera/BokehHal3Module$9;->val$orientation:I

    iput-object p3, p0, Lcom/android/camera/BokehHal3Module$9;->val$session:Lcom/android/camera/session/CaptureSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureSaved(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$9;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-virtual {v0, p1}, Lcom/android/camera/BokehHal3Module;->onPictureSaved(Landroid/net/Uri;)V

    .line 837
    return-void
.end method

.method public onPictureTaken(Lcom/android/camera/session/CaptureSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$9;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-virtual {v0, p1}, Lcom/android/camera/BokehHal3Module;->onPictureTaken(Lcom/android/camera/session/CaptureSession;)V

    .line 832
    return-void
.end method

.method public onPictureTakingFailed()V
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$9;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-virtual {v0}, Lcom/android/camera/BokehHal3Module;->onPictureTakingFailed()V

    .line 842
    return-void
.end method

.method public onPreviewTaken(Lcom/android/camera/session/CaptureSession;)V
    .locals 0
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 852
    return-void
.end method

.method public onQuickExpose()V
    .locals 5

    .prologue
    .line 745
    iget-object v3, p0, Lcom/android/camera/BokehHal3Module$9;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v3}, Lcom/android/camera/BokehHal3Module;->access$200(Lcom/android/camera/BokehHal3Module;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 822
    :goto_0
    return-void

    .line 747
    :cond_0
    const/4 v1, 0x0

    .line 749
    .local v1, "needRescheduleInMainThread":Z
    :try_start_0
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    :goto_1
    new-instance v2, Lcom/android/camera/BokehHal3Module$9$1;

    invoke-direct {v2, p0}, Lcom/android/camera/BokehHal3Module$9$1;-><init>(Lcom/android/camera/BokehHal3Module$9;)V

    .line 817
    .local v2, "runnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_1

    .line 818
    iget-object v3, p0, Lcom/android/camera/BokehHal3Module$9;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v3}, Lcom/android/camera/BokehHal3Module;->access$1700(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/async/MainThread;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 750
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    .line 751
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/android/camera/BokehHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    const-string v4, "Not main thread."

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 752
    const/4 v1, 0x1

    goto :goto_1

    .line 820
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "runnable":Ljava/lang/Runnable;
    :cond_1
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public onTakePictureProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$9;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-virtual {v0, p1}, Lcom/android/camera/BokehHal3Module;->onTakePictureProgress(F)V

    .line 847
    return-void
.end method

.method public onThumbnailResult([B)V
    .locals 1
    .param p1, "jpegData"    # [B

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$9;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-virtual {v0, p1}, Lcom/android/camera/BokehHal3Module;->onThumbnailResult([B)V

    .line 827
    return-void
.end method
