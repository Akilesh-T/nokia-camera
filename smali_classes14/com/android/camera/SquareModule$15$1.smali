.class Lcom/android/camera/SquareModule$15$1;
.super Ljava/lang/Object;
.source "SquareModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SquareModule$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/SquareModule$15;


# direct methods
.method constructor <init>(Lcom/android/camera/SquareModule$15;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/SquareModule$15;

    .prologue
    .line 1754
    iput-object p1, p0, Lcom/android/camera/SquareModule$15$1;->this$1:Lcom/android/camera/SquareModule$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1757
    iget-object v2, p0, Lcom/android/camera/SquareModule$15$1;->this$1:Lcom/android/camera/SquareModule$15;

    iget-object v2, v2, Lcom/android/camera/SquareModule$15;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v2}, Lcom/android/camera/SquareModule;->access$300(Lcom/android/camera/SquareModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v2

    .line 1758
    invoke-virtual {v2}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v0

    .line 1759
    .local v0, "orientation":I
    const/4 v2, 0x1

    new-array v1, v2, [Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/camera/SquareModule$15$1;->this$1:Lcom/android/camera/SquareModule$15;

    iget-object v2, v2, Lcom/android/camera/SquareModule$15;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v2}, Lcom/android/camera/SquareModule;->access$300(Lcom/android/camera/SquareModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/camera/app/AppController;->getBitMapFromPreview(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1760
    .local v1, "preview":[Landroid/graphics/Bitmap;
    aget-object v2, v1, v4

    if-eqz v2, :cond_0

    .line 1761
    iget-object v2, p0, Lcom/android/camera/SquareModule$15$1;->this$1:Lcom/android/camera/SquareModule$15;

    iget-object v2, v2, Lcom/android/camera/SquareModule$15;->val$session:Lcom/android/camera/session/CaptureSession;

    aget-object v3, v1, v4

    invoke-interface {v2, v3, v4}, Lcom/android/camera/session/CaptureSession;->updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V

    .line 1762
    new-instance v2, Lcom/android/camera/SquareModule$15$1$1;

    invoke-direct {v2, p0, v1}, Lcom/android/camera/SquareModule$15$1$1;-><init>(Lcom/android/camera/SquareModule$15$1;[Landroid/graphics/Bitmap;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 1779
    :cond_0
    return-void
.end method
