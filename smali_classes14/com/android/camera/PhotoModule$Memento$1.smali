.class Lcom/android/camera/PhotoModule$Memento$1;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule$Memento;->onThumbnailUpdate(ILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/PhotoModule$Memento;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$orientation:I


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule$Memento;Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/PhotoModule$Memento;

    .prologue
    .line 1322
    iput-object p1, p0, Lcom/android/camera/PhotoModule$Memento$1;->this$1:Lcom/android/camera/PhotoModule$Memento;

    iput-object p2, p0, Lcom/android/camera/PhotoModule$Memento$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/android/camera/PhotoModule$Memento$1;->val$orientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/android/camera/PhotoModule$Memento$1;->this$1:Lcom/android/camera/PhotoModule$Memento;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$Memento;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$Memento$1;->this$1:Lcom/android/camera/PhotoModule$Memento;

    iget-object v1, v1, Lcom/android/camera/PhotoModule$Memento;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule;->getPeekAccessibilityString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/app/CameraAppUI;->startCaptureIndicatorRevealAnimation(Ljava/lang/String;Z)V

    .line 1326
    iget-object v0, p0, Lcom/android/camera/PhotoModule$Memento$1;->this$1:Lcom/android/camera/PhotoModule$Memento;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$Memento;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$Memento$1;->val$bitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/camera/PhotoModule$Memento$1;->val$orientation:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/app/CameraAppUI;->updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V

    .line 1327
    const/4 v0, 0x7

    invoke-static {v0}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 1328
    return-void
.end method
