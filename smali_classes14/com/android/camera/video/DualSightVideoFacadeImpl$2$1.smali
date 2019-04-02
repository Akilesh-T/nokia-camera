.class Lcom/android/camera/video/DualSightVideoFacadeImpl$2$1;
.super Ljava/lang/Object;
.source "DualSightVideoFacadeImpl.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


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
    .line 326
    iput-object p1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$1;->this$1:Lcom/android/camera/video/DualSightVideoFacadeImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 4
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 329
    invoke-static {}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError : what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", VideoFilename = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$1;->this$1:Lcom/android/camera/video/DualSightVideoFacadeImpl$2;

    iget-object v2, v2, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->val$captureSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v2}, Lcom/android/camera/session/CaptureSession;->getVideoFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$1;->this$1:Lcom/android/camera/video/DualSightVideoFacadeImpl$2;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaRecorder error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->onBurstError(Ljava/lang/Exception;)V

    .line 331
    return-void
.end method
