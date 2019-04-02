.class public Lcom/android/camera/one/v2/photo/extension/BokehResultDetectorExtCreator;
.super Ljava/lang/Object;
.source "BokehResultDetectorExtCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/camera/one/v2/photo/extension/BokehResultDetectExtension;
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "bokehResultDetectExtension":Lcom/android/camera/one/v2/photo/extension/BokehResultDetectExtension;
    invoke-static {}, Lcom/android/ex/camera2/utils/PlatformUtil;->getPlatform()Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    move-result-object v1

    .line 23
    .local v1, "platform":Lcom/android/ex/camera2/utils/PlatformUtil$Platform;
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->QUALCOMM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v1, v2, :cond_0

    .line 24
    new-instance v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCBokehResultDetectExtension;

    .end local v0    # "bokehResultDetectExtension":Lcom/android/camera/one/v2/photo/extension/BokehResultDetectExtension;
    invoke-direct {v0}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCBokehResultDetectExtension;-><init>()V

    .line 35
    .restart local v0    # "bokehResultDetectExtension":Lcom/android/camera/one/v2/photo/extension/BokehResultDetectExtension;
    :goto_0
    return-object v0

    .line 25
    :cond_0
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->MTK:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v1, v2, :cond_1

    .line 26
    new-instance v0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKBokehResultDetectExtension;

    .end local v0    # "bokehResultDetectExtension":Lcom/android/camera/one/v2/photo/extension/BokehResultDetectExtension;
    invoke-direct {v0}, Lcom/android/camera/one/v2/photo/extension/mtk/MTKBokehResultDetectExtension;-><init>()V

    .restart local v0    # "bokehResultDetectExtension":Lcom/android/camera/one/v2/photo/extension/BokehResultDetectExtension;
    goto :goto_0

    .line 28
    :cond_1
    new-instance v0, Lcom/android/camera/one/v2/photo/extension/BokehResultDetectorExtCreator$1;

    .end local v0    # "bokehResultDetectExtension":Lcom/android/camera/one/v2/photo/extension/BokehResultDetectExtension;
    invoke-direct {v0}, Lcom/android/camera/one/v2/photo/extension/BokehResultDetectorExtCreator$1;-><init>()V

    .restart local v0    # "bokehResultDetectExtension":Lcom/android/camera/one/v2/photo/extension/BokehResultDetectExtension;
    goto :goto_0
.end method
