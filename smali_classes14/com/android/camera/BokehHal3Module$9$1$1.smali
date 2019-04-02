.class Lcom/android/camera/BokehHal3Module$9$1$1;
.super Ljava/lang/Object;
.source "BokehHal3Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BokehHal3Module$9$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/BokehHal3Module$9$1;


# direct methods
.method constructor <init>(Lcom/android/camera/BokehHal3Module$9$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/BokehHal3Module$9$1;

    .prologue
    .line 760
    iput-object p1, p0, Lcom/android/camera/BokehHal3Module$9$1$1;->this$2:Lcom/android/camera/BokehHal3Module$9$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 763
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module$9$1$1;->this$2:Lcom/android/camera/BokehHal3Module$9$1;

    iget-object v1, v1, Lcom/android/camera/BokehHal3Module$9$1;->this$1:Lcom/android/camera/BokehHal3Module$9;

    iget-object v1, v1, Lcom/android/camera/BokehHal3Module$9;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v1}, Lcom/android/camera/BokehHal3Module;->access$900(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/BokehHal3Module$9$1$1;->this$2:Lcom/android/camera/BokehHal3Module$9$1;

    iget-object v2, v2, Lcom/android/camera/BokehHal3Module$9$1;->this$1:Lcom/android/camera/BokehHal3Module$9;

    iget v2, v2, Lcom/android/camera/BokehHal3Module$9;->val$orientation:I

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->getBitMapFromPreview(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 764
    .local v0, "preview":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 765
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module$9$1$1;->this$2:Lcom/android/camera/BokehHal3Module$9$1;

    iget-object v1, v1, Lcom/android/camera/BokehHal3Module$9$1;->this$1:Lcom/android/camera/BokehHal3Module$9;

    iget-object v1, v1, Lcom/android/camera/BokehHal3Module$9;->val$session:Lcom/android/camera/session/CaptureSession;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/camera/session/CaptureSession;->updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V

    .line 778
    :cond_0
    return-void
.end method
