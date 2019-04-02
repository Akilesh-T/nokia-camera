.class public Lcom/android/ex/camera2/portability/extension/CameraInfoExtensionCreator;
.super Ljava/lang/Object;
.source "CameraInfoExtensionCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final create()Lcom/android/ex/camera2/portability/extension/CameraInfoExtension;
    .locals 3

    .prologue
    .line 11
    invoke-static {}, Lcom/android/ex/camera2/utils/PlatformUtil;->getPlatform()Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    move-result-object v1

    .line 13
    .local v1, "platform":Lcom/android/ex/camera2/utils/PlatformUtil$Platform;
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->QUALCOMM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v1, v2, :cond_0

    .line 14
    new-instance v0, Lcom/android/ex/camera2/portability/extension/QCCameraInfoExtension;

    invoke-direct {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraInfoExtension;-><init>()V

    .line 22
    .local v0, "cameraInfoExtension":Lcom/android/ex/camera2/portability/extension/CameraInfoExtension;
    :goto_0
    return-object v0

    .line 15
    .end local v0    # "cameraInfoExtension":Lcom/android/ex/camera2/portability/extension/CameraInfoExtension;
    :cond_0
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->MTK:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v1, v2, :cond_1

    .line 16
    new-instance v0, Lcom/android/ex/camera2/portability/extension/MTKCameraInfoExtension;

    invoke-direct {v0}, Lcom/android/ex/camera2/portability/extension/MTKCameraInfoExtension;-><init>()V

    .restart local v0    # "cameraInfoExtension":Lcom/android/ex/camera2/portability/extension/CameraInfoExtension;
    goto :goto_0

    .line 17
    .end local v0    # "cameraInfoExtension":Lcom/android/ex/camera2/portability/extension/CameraInfoExtension;
    :cond_1
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->SPREADTRUM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v1, v2, :cond_2

    .line 18
    new-instance v0, Lcom/android/ex/camera2/portability/extension/SPTCameraInfoExtension;

    invoke-direct {v0}, Lcom/android/ex/camera2/portability/extension/SPTCameraInfoExtension;-><init>()V

    .restart local v0    # "cameraInfoExtension":Lcom/android/ex/camera2/portability/extension/CameraInfoExtension;
    goto :goto_0

    .line 20
    .end local v0    # "cameraInfoExtension":Lcom/android/ex/camera2/portability/extension/CameraInfoExtension;
    :cond_2
    new-instance v0, Lcom/android/ex/camera2/portability/extension/AOSPCameraInfoExtension;

    invoke-direct {v0}, Lcom/android/ex/camera2/portability/extension/AOSPCameraInfoExtension;-><init>()V

    .restart local v0    # "cameraInfoExtension":Lcom/android/ex/camera2/portability/extension/CameraInfoExtension;
    goto :goto_0
.end method
