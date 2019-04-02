.class Lcom/android/camera/DualSightPhotoModule$7$1$1;
.super Ljava/lang/Object;
.source "DualSightPhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightPhotoModule$7$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/DualSightPhotoModule$7$1;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightPhotoModule$7$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/DualSightPhotoModule$7$1;

    .prologue
    .line 843
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModule$7$1$1;->this$2:Lcom/android/camera/DualSightPhotoModule$7$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 846
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$7$1$1;->this$2:Lcom/android/camera/DualSightPhotoModule$7$1;

    iget-object v1, v1, Lcom/android/camera/DualSightPhotoModule$7$1;->this$1:Lcom/android/camera/DualSightPhotoModule$7;

    iget-object v1, v1, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule$7$1$1;->this$2:Lcom/android/camera/DualSightPhotoModule$7$1;

    iget-object v2, v2, Lcom/android/camera/DualSightPhotoModule$7$1;->this$1:Lcom/android/camera/DualSightPhotoModule$7;

    iget v2, v2, Lcom/android/camera/DualSightPhotoModule$7;->val$orientation:I

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->getBitMapFromPreview(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 847
    .local v0, "preview":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 849
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$7$1$1;->this$2:Lcom/android/camera/DualSightPhotoModule$7$1;

    iget-object v1, v1, Lcom/android/camera/DualSightPhotoModule$7$1;->this$1:Lcom/android/camera/DualSightPhotoModule$7;

    iget-object v1, v1, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightPhotoModule;->access$2800(Lcom/android/camera/DualSightPhotoModule;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 850
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$7$1$1;->this$2:Lcom/android/camera/DualSightPhotoModule$7$1;

    iget-object v1, v1, Lcom/android/camera/DualSightPhotoModule$7$1;->this$1:Lcom/android/camera/DualSightPhotoModule$7;

    iget-object v1, v1, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v1, v0}, Lcom/android/camera/DualSightPhotoModule;->access$2900(Lcom/android/camera/DualSightPhotoModule;Landroid/graphics/Bitmap;)V

    .line 853
    :cond_0
    invoke-static {}, Lcom/android/camera/DualSightPhotoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TS] onQuickExpose mIsTSFirstShot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule$7$1$1;->this$2:Lcom/android/camera/DualSightPhotoModule$7$1;

    iget-object v3, v3, Lcom/android/camera/DualSightPhotoModule$7$1;->this$1:Lcom/android/camera/DualSightPhotoModule$7;

    iget-object v3, v3, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v3}, Lcom/android/camera/DualSightPhotoModule;->access$3000(Lcom/android/camera/DualSightPhotoModule;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 854
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$7$1$1;->this$2:Lcom/android/camera/DualSightPhotoModule$7$1;

    iget-object v1, v1, Lcom/android/camera/DualSightPhotoModule$7$1;->this$1:Lcom/android/camera/DualSightPhotoModule$7;

    iget-object v1, v1, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightPhotoModule;->access$3100(Lcom/android/camera/DualSightPhotoModule;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 857
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$7$1$1;->this$2:Lcom/android/camera/DualSightPhotoModule$7$1;

    iget-object v1, v1, Lcom/android/camera/DualSightPhotoModule$7$1;->this$1:Lcom/android/camera/DualSightPhotoModule$7;

    iget-object v1, v1, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightPhotoModule;->access$2800(Lcom/android/camera/DualSightPhotoModule;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 858
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$7$1$1;->this$2:Lcom/android/camera/DualSightPhotoModule$7$1;

    iget-object v1, v1, Lcom/android/camera/DualSightPhotoModule$7$1;->this$1:Lcom/android/camera/DualSightPhotoModule$7;

    iget-object v1, v1, Lcom/android/camera/DualSightPhotoModule$7;->val$session:Lcom/android/camera/session/CaptureSession;

    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule$7$1$1;->this$2:Lcom/android/camera/DualSightPhotoModule$7$1;

    iget-object v2, v2, Lcom/android/camera/DualSightPhotoModule$7$1;->this$1:Lcom/android/camera/DualSightPhotoModule$7;

    iget-object v2, v2, Lcom/android/camera/DualSightPhotoModule$7;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v2}, Lcom/android/camera/DualSightPhotoModule;->access$3200(Lcom/android/camera/DualSightPhotoModule;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lcom/android/camera/session/CaptureSession;->updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V

    .line 864
    :goto_0
    new-instance v1, Lcom/android/camera/DualSightPhotoModule$7$1$1$1;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/DualSightPhotoModule$7$1$1$1;-><init>(Lcom/android/camera/DualSightPhotoModule$7$1$1;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 893
    :cond_1
    return-void

    .line 860
    :cond_2
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$7$1$1;->this$2:Lcom/android/camera/DualSightPhotoModule$7$1;

    iget-object v1, v1, Lcom/android/camera/DualSightPhotoModule$7$1;->this$1:Lcom/android/camera/DualSightPhotoModule$7;

    iget-object v1, v1, Lcom/android/camera/DualSightPhotoModule$7;->val$session:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v1, v0, v4}, Lcom/android/camera/session/CaptureSession;->updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method
