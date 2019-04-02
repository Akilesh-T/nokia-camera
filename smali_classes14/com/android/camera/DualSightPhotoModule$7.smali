.class Lcom/android/camera/DualSightPhotoModule$7;
.super Ljava/lang/Object;
.source "DualSightPhotoModule.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightPhotoModule;->takePictureNow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/DualSightPhotoModule;

.field final synthetic val$orientation:I

.field final synthetic val$session:Lcom/android/camera/session/CaptureSession;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightPhotoModule;ILcom/android/camera/session/CaptureSession;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 825
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    iput p2, p0, Lcom/android/camera/DualSightPhotoModule$7;->val$orientation:I

    iput-object p3, p0, Lcom/android/camera/DualSightPhotoModule$7;->val$session:Lcom/android/camera/session/CaptureSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureSaved(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 924
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-virtual {v0, p1}, Lcom/android/camera/DualSightPhotoModule;->onPictureSaved(Landroid/net/Uri;)V

    .line 925
    return-void
.end method

.method public onPictureTaken(Lcom/android/camera/session/CaptureSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-virtual {v0, p1}, Lcom/android/camera/DualSightPhotoModule;->onPictureTaken(Lcom/android/camera/session/CaptureSession;)V

    .line 920
    return-void
.end method

.method public onPictureTakingFailed()V
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-virtual {v0}, Lcom/android/camera/DualSightPhotoModule;->onPictureTakingFailed()V

    .line 930
    return-void
.end method

.method public onPreviewTaken(Lcom/android/camera/session/CaptureSession;)V
    .locals 5
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 938
    const/4 v1, 0x0

    .line 940
    .local v1, "needRescheduleInMainThread":Z
    :try_start_0
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 946
    :goto_0
    new-instance v2, Lcom/android/camera/DualSightPhotoModule$7$2;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/DualSightPhotoModule$7$2;-><init>(Lcom/android/camera/DualSightPhotoModule$7;Lcom/android/camera/session/CaptureSession;)V

    .line 1065
    .local v2, "runnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_0

    .line 1066
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v3}, Lcom/android/camera/DualSightPhotoModule;->access$1200(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/async/MainThread;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 1070
    :goto_1
    return-void

    .line 941
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    .line 942
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/android/camera/DualSightPhotoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    const-string v4, "Not main thread."

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 943
    const/4 v1, 0x1

    goto :goto_0

    .line 1068
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "runnable":Ljava/lang/Runnable;
    :cond_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method public onQuickExpose()V
    .locals 5

    .prologue
    .line 828
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v3}, Lcom/android/camera/DualSightPhotoModule;->access$1400(Lcom/android/camera/DualSightPhotoModule;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 910
    :goto_0
    return-void

    .line 830
    :cond_0
    const/4 v1, 0x0

    .line 832
    .local v1, "needRescheduleInMainThread":Z
    :try_start_0
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    :goto_1
    new-instance v2, Lcom/android/camera/DualSightPhotoModule$7$1;

    invoke-direct {v2, p0}, Lcom/android/camera/DualSightPhotoModule$7$1;-><init>(Lcom/android/camera/DualSightPhotoModule$7;)V

    .line 905
    .local v2, "runnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_1

    .line 906
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v3}, Lcom/android/camera/DualSightPhotoModule;->access$1200(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/async/MainThread;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 833
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    .line 834
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/android/camera/DualSightPhotoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    const-string v4, "Not main thread."

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 835
    const/4 v1, 0x1

    goto :goto_1

    .line 908
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
    .line 934
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-virtual {v0, p1}, Lcom/android/camera/DualSightPhotoModule;->onTakePictureProgress(F)V

    .line 935
    return-void
.end method

.method public onThumbnailResult([B)V
    .locals 1
    .param p1, "jpegData"    # [B

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-virtual {v0, p1}, Lcom/android/camera/DualSightPhotoModule;->onThumbnailResult([B)V

    .line 915
    return-void
.end method
