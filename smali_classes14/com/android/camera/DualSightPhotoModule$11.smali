.class Lcom/android/camera/DualSightPhotoModule$11;
.super Ljava/lang/Object;
.source "DualSightPhotoModule.java"

# interfaces
.implements Lcom/android/camera/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightPhotoModule;->getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/DualSightPhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightPhotoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 1542
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModule$11;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    .prologue
    .line 1555
    return-void
.end method

.method public onStateChanged(I)V
    .locals 4
    .param p1, "cameraId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1545
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$11;->this$0:Lcom/android/camera/DualSightPhotoModule;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/camera/DualSightPhotoModule;->access$3702(Lcom/android/camera/DualSightPhotoModule;Z)Z

    .line 1546
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$11;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v1, p1}, Lcom/android/camera/DualSightPhotoModule;->access$3800(Lcom/android/camera/DualSightPhotoModule;I)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    .line 1548
    .local v0, "facing":Lcom/android/camera/one/OneCamera$Facing;
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$11;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/camera/app/AppController;->switchCamera(Z)V

    .line 1549
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$11;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/app/CameraAppUI;->onChangeCamera(Z)V

    .line 1550
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$11;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectChooseManager;->onCameraFacingChange(Lcom/android/camera/one/OneCamera$Facing;)V

    .line 1551
    return-void
.end method
