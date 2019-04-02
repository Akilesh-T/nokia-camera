.class public Lcom/android/ex/camera2/portability/extension/CameraExtensionCreator;
.super Ljava/lang/Object;
.source "CameraExtensionCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final create(Landroid/hardware/Camera;I)Lcom/android/ex/camera2/portability/extension/CameraExtension;
    .locals 3
    .param p0, "camera"    # Landroid/hardware/Camera;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "cameraId"    # I

    .prologue
    .line 14
    invoke-static {}, Lcom/android/ex/camera2/utils/PlatformUtil;->getPlatform()Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    move-result-object v1

    .line 16
    .local v1, "platform":Lcom/android/ex/camera2/utils/PlatformUtil$Platform;
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->QUALCOMM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v1, v2, :cond_0

    .line 17
    new-instance v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    invoke-direct {v0, p0, p1}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;-><init>(Landroid/hardware/Camera;I)V

    .line 25
    .local v0, "cameraExtension":Lcom/android/ex/camera2/portability/extension/CameraExtension;
    :goto_0
    return-object v0

    .line 18
    .end local v0    # "cameraExtension":Lcom/android/ex/camera2/portability/extension/CameraExtension;
    :cond_0
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->MTK:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v1, v2, :cond_1

    .line 19
    new-instance v0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;

    invoke-direct {v0, p0, p1}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;-><init>(Landroid/hardware/Camera;I)V

    .restart local v0    # "cameraExtension":Lcom/android/ex/camera2/portability/extension/CameraExtension;
    goto :goto_0

    .line 20
    .end local v0    # "cameraExtension":Lcom/android/ex/camera2/portability/extension/CameraExtension;
    :cond_1
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->SPREADTRUM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v1, v2, :cond_2

    .line 21
    new-instance v0, Lcom/android/ex/camera2/portability/extension/SPTCameraExtension;

    invoke-direct {v0, p0, p1}, Lcom/android/ex/camera2/portability/extension/SPTCameraExtension;-><init>(Landroid/hardware/Camera;I)V

    .restart local v0    # "cameraExtension":Lcom/android/ex/camera2/portability/extension/CameraExtension;
    goto :goto_0

    .line 23
    .end local v0    # "cameraExtension":Lcom/android/ex/camera2/portability/extension/CameraExtension;
    :cond_2
    new-instance v0, Lcom/android/ex/camera2/portability/extension/AOSPCameraExtension;

    invoke-direct {v0, p0, p1}, Lcom/android/ex/camera2/portability/extension/AOSPCameraExtension;-><init>(Landroid/hardware/Camera;I)V

    .restart local v0    # "cameraExtension":Lcom/android/ex/camera2/portability/extension/CameraExtension;
    goto :goto_0
.end method
