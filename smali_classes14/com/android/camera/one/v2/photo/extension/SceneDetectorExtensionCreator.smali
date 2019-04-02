.class public Lcom/android/camera/one/v2/photo/extension/SceneDetectorExtensionCreator;
.super Ljava/lang/Object;
.source "SceneDetectorExtensionCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/android/camera/one/OneCamera$Facing;Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;)Lcom/android/camera/one/v2/photo/extension/SceneDetectorExtension;
    .locals 3
    .param p0, "facing"    # Lcom/android/camera/one/OneCamera$Facing;
    .param p1, "POSTFIX"    # Ljava/lang/String;
    .param p2, "mStaticMeta"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 18
    const/4 v1, 0x0

    .line 19
    .local v1, "sceneDetectorExtension":Lcom/android/camera/one/v2/photo/extension/SceneDetectorExtension;
    invoke-static {}, Lcom/android/ex/camera2/utils/PlatformUtil;->getPlatform()Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    move-result-object v0

    .line 20
    .local v0, "platform":Lcom/android/ex/camera2/utils/PlatformUtil$Platform;
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->QUALCOMM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v0, v2, :cond_0

    .line 21
    new-instance v1, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCSceneDetectorExtension;

    .end local v1    # "sceneDetectorExtension":Lcom/android/camera/one/v2/photo/extension/SceneDetectorExtension;
    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCSceneDetectorExtension;-><init>(Lcom/android/camera/one/OneCamera$Facing;Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 29
    .restart local v1    # "sceneDetectorExtension":Lcom/android/camera/one/v2/photo/extension/SceneDetectorExtension;
    :goto_0
    return-object v1

    .line 22
    :cond_0
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->MTK:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v0, v2, :cond_1

    .line 23
    new-instance v1, Lcom/android/camera/one/v2/photo/extension/mtk/MTKSceneDetectorExtension;

    .end local v1    # "sceneDetectorExtension":Lcom/android/camera/one/v2/photo/extension/SceneDetectorExtension;
    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/one/v2/photo/extension/mtk/MTKSceneDetectorExtension;-><init>(Lcom/android/camera/one/OneCamera$Facing;Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;)V

    .restart local v1    # "sceneDetectorExtension":Lcom/android/camera/one/v2/photo/extension/SceneDetectorExtension;
    goto :goto_0

    .line 24
    :cond_1
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->SPREADTRUM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v0, v2, :cond_2

    .line 25
    new-instance v1, Lcom/android/camera/one/v2/photo/extension/spreadtrum/SPTSceneDetectorExtension;

    .end local v1    # "sceneDetectorExtension":Lcom/android/camera/one/v2/photo/extension/SceneDetectorExtension;
    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/photo/extension/spreadtrum/SPTSceneDetectorExtension;-><init>(Lcom/android/camera/one/OneCamera$Facing;)V

    .restart local v1    # "sceneDetectorExtension":Lcom/android/camera/one/v2/photo/extension/SceneDetectorExtension;
    goto :goto_0

    .line 27
    :cond_2
    new-instance v1, Lcom/android/camera/one/v2/photo/extension/aosp/AOSPSceneDetectorExtension;

    .end local v1    # "sceneDetectorExtension":Lcom/android/camera/one/v2/photo/extension/SceneDetectorExtension;
    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/photo/extension/aosp/AOSPSceneDetectorExtension;-><init>(Lcom/android/camera/one/OneCamera$Facing;)V

    .restart local v1    # "sceneDetectorExtension":Lcom/android/camera/one/v2/photo/extension/SceneDetectorExtension;
    goto :goto_0
.end method
