.class Lcom/android/camera/DualSightVideoModule$11;
.super Ljava/lang/Object;
.source "DualSightVideoModule.java"

# interfaces
.implements Lcom/android/camera/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightVideoModule;->getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/DualSightVideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightVideoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule$11;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$11;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$3900(Lcom/android/camera/DualSightVideoModule;)V

    .line 1192
    return-void
.end method

.method public onStateChanged(I)V
    .locals 4
    .param p1, "cameraId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1178
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$11;->this$0:Lcom/android/camera/DualSightVideoModule;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/camera/DualSightVideoModule;->access$2902(Lcom/android/camera/DualSightVideoModule;Z)Z

    .line 1179
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$11;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1, p1}, Lcom/android/camera/DualSightVideoModule;->access$3200(Lcom/android/camera/DualSightVideoModule;I)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    .line 1181
    .local v0, "facing":Lcom/android/camera/one/OneCamera$Facing;
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$11;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/camera/app/AppController;->switchCamera(Z)V

    .line 1182
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$11;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/app/CameraAppUI;->onChangeCamera(Z)V

    .line 1183
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$11;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectChooseManager;->onCameraFacingChange(Lcom/android/camera/one/OneCamera$Facing;)V

    .line 1187
    return-void
.end method
