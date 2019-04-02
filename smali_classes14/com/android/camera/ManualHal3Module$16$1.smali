.class Lcom/android/camera/ManualHal3Module$16$1;
.super Ljava/lang/Object;
.source "ManualHal3Module.java"

# interfaces
.implements Lcom/android/camera/burst/OrientationLockController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ManualHal3Module$16;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ManualHal3Module$16;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualHal3Module$16;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ManualHal3Module$16;

    .prologue
    .line 1891
    iput-object p1, p0, Lcom/android/camera/ManualHal3Module$16$1;->this$1:Lcom/android/camera/ManualHal3Module$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lockOrientation()V
    .locals 1

    .prologue
    .line 1899
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module$16$1;->this$1:Lcom/android/camera/ManualHal3Module$16;

    iget-object v0, v0, Lcom/android/camera/ManualHal3Module$16;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-static {v0}, Lcom/android/camera/ManualHal3Module;->access$700(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/OrientationManager;->lockOrientation()V

    .line 1900
    return-void
.end method

.method public unlockOrientation()V
    .locals 1

    .prologue
    .line 1894
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module$16$1;->this$1:Lcom/android/camera/ManualHal3Module$16;

    iget-object v0, v0, Lcom/android/camera/ManualHal3Module$16;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-static {v0}, Lcom/android/camera/ManualHal3Module;->access$700(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/OrientationManager;->unlockOrientation()V

    .line 1895
    return-void
.end method
