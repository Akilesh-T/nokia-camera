.class public Lcom/android/camera/one/v2/photo/extension/CameraCommandFactoryCreator;
.super Ljava/lang/Object;
.source "CameraCommandFactoryCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;
    .locals 3

    .prologue
    .line 15
    const/4 v0, 0x0

    .line 16
    .local v0, "cameraCommandFactory":Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;
    invoke-static {}, Lcom/android/ex/camera2/utils/PlatformUtil;->getPlatform()Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    move-result-object v1

    .line 17
    .local v1, "platform":Lcom/android/ex/camera2/utils/PlatformUtil$Platform;
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->QUALCOMM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v1, v2, :cond_0

    .line 18
    new-instance v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCameraCommandFactory;

    .end local v0    # "cameraCommandFactory":Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;
    invoke-direct {v0}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCameraCommandFactory;-><init>()V

    .line 26
    .restart local v0    # "cameraCommandFactory":Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;
    :goto_0
    return-object v0

    .line 19
    :cond_0
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->MTK:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v1, v2, :cond_1

    .line 20
    new-instance v0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCameraCommandFactory;

    .end local v0    # "cameraCommandFactory":Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;
    invoke-direct {v0}, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCameraCommandFactory;-><init>()V

    .restart local v0    # "cameraCommandFactory":Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;
    goto :goto_0

    .line 21
    :cond_1
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->SPREADTRUM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v1, v2, :cond_2

    .line 22
    new-instance v0, Lcom/android/camera/one/v2/photo/extension/spreadtrum/SPTCameraCommandFactory;

    .end local v0    # "cameraCommandFactory":Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;
    invoke-direct {v0}, Lcom/android/camera/one/v2/photo/extension/spreadtrum/SPTCameraCommandFactory;-><init>()V

    .restart local v0    # "cameraCommandFactory":Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;
    goto :goto_0

    .line 24
    :cond_2
    new-instance v0, Lcom/android/camera/one/v2/photo/extension/aosp/AOSPCameraCommandFactory;

    .end local v0    # "cameraCommandFactory":Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;
    invoke-direct {v0}, Lcom/android/camera/one/v2/photo/extension/aosp/AOSPCameraCommandFactory;-><init>()V

    .restart local v0    # "cameraCommandFactory":Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;
    goto :goto_0
.end method
