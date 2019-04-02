.class Lcom/android/camera/CaptureModule$24$1;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/android/camera/burst/OrientationLockController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule$24;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CaptureModule$24;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule$24;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/CaptureModule$24;

    .prologue
    .line 2485
    iput-object p1, p0, Lcom/android/camera/CaptureModule$24$1;->this$1:Lcom/android/camera/CaptureModule$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lockOrientation()V
    .locals 1

    .prologue
    .line 2493
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$1;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/OrientationManager;->lockOrientation()V

    .line 2494
    return-void
.end method

.method public unlockOrientation()V
    .locals 1

    .prologue
    .line 2488
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$1;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/OrientationManager;->unlockOrientation()V

    .line 2489
    return-void
.end method
