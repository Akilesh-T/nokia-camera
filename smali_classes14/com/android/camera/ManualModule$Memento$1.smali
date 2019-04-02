.class Lcom/android/camera/ManualModule$Memento$1;
.super Ljava/lang/Object;
.source "ManualModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ManualModule$Memento;->onThumbnailUpdate(ILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ManualModule$Memento;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$orientation:I


# direct methods
.method constructor <init>(Lcom/android/camera/ManualModule$Memento;Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ManualModule$Memento;

    .prologue
    .line 3437
    iput-object p1, p0, Lcom/android/camera/ManualModule$Memento$1;->this$1:Lcom/android/camera/ManualModule$Memento;

    iput-object p2, p0, Lcom/android/camera/ManualModule$Memento$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/android/camera/ManualModule$Memento$1;->val$orientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3440
    iget-object v0, p0, Lcom/android/camera/ManualModule$Memento$1;->this$1:Lcom/android/camera/ManualModule$Memento;

    iget-object v0, v0, Lcom/android/camera/ManualModule$Memento;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$600(Lcom/android/camera/ManualModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ManualModule$Memento$1;->this$1:Lcom/android/camera/ManualModule$Memento;

    iget-object v1, v1, Lcom/android/camera/ManualModule$Memento;->this$0:Lcom/android/camera/ManualModule;

    invoke-virtual {v1}, Lcom/android/camera/ManualModule;->getPeekAccessibilityString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/app/CameraAppUI;->startCaptureIndicatorRevealAnimation(Ljava/lang/String;Z)V

    .line 3441
    iget-object v0, p0, Lcom/android/camera/ManualModule$Memento$1;->this$1:Lcom/android/camera/ManualModule$Memento;

    iget-object v0, v0, Lcom/android/camera/ManualModule$Memento;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$600(Lcom/android/camera/ManualModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ManualModule$Memento$1;->val$bitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/camera/ManualModule$Memento$1;->val$orientation:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/app/CameraAppUI;->updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V

    .line 3442
    const/4 v0, 0x7

    invoke-static {v0}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 3443
    return-void
.end method
