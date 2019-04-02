.class public Lcom/android/camera/one/v2/photo/extension/VideoUtilExtensionCreator;
.super Ljava/lang/Object;
.source "VideoUtilExtensionCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/photo/extension/VideoUtilExtensionCreator$VideoUtilExtensionStub;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/camera/one/v2/photo/extension/VideoUtilExtension;
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x0

    .line 21
    .local v0, "exifUtilExtention":Lcom/android/camera/one/v2/photo/extension/VideoUtilExtension;
    invoke-static {}, Lcom/android/ex/camera2/utils/PlatformUtil;->getPlatform()Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    move-result-object v1

    .line 22
    .local v1, "platform":Lcom/android/ex/camera2/utils/PlatformUtil$Platform;
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->QUALCOMM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v1, v2, :cond_0

    .line 23
    new-instance v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCVideoUtilExtension;

    .end local v0    # "exifUtilExtention":Lcom/android/camera/one/v2/photo/extension/VideoUtilExtension;
    invoke-direct {v0}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCVideoUtilExtension;-><init>()V

    .line 31
    .restart local v0    # "exifUtilExtention":Lcom/android/camera/one/v2/photo/extension/VideoUtilExtension;
    :goto_0
    return-object v0

    .line 24
    :cond_0
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->MTK:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v1, v2, :cond_1

    .line 25
    new-instance v0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKVideoUtilExtension;

    .end local v0    # "exifUtilExtention":Lcom/android/camera/one/v2/photo/extension/VideoUtilExtension;
    invoke-direct {v0}, Lcom/android/camera/one/v2/photo/extension/mtk/MTKVideoUtilExtension;-><init>()V

    .restart local v0    # "exifUtilExtention":Lcom/android/camera/one/v2/photo/extension/VideoUtilExtension;
    goto :goto_0

    .line 26
    :cond_1
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->SPREADTRUM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v1, v2, :cond_2

    .line 27
    new-instance v0, Lcom/android/camera/one/v2/photo/extension/VideoUtilExtensionCreator$VideoUtilExtensionStub;

    .end local v0    # "exifUtilExtention":Lcom/android/camera/one/v2/photo/extension/VideoUtilExtension;
    invoke-direct {v0}, Lcom/android/camera/one/v2/photo/extension/VideoUtilExtensionCreator$VideoUtilExtensionStub;-><init>()V

    .restart local v0    # "exifUtilExtention":Lcom/android/camera/one/v2/photo/extension/VideoUtilExtension;
    goto :goto_0

    .line 29
    :cond_2
    new-instance v0, Lcom/android/camera/one/v2/photo/extension/VideoUtilExtensionCreator$VideoUtilExtensionStub;

    .end local v0    # "exifUtilExtention":Lcom/android/camera/one/v2/photo/extension/VideoUtilExtension;
    invoke-direct {v0}, Lcom/android/camera/one/v2/photo/extension/VideoUtilExtensionCreator$VideoUtilExtensionStub;-><init>()V

    .restart local v0    # "exifUtilExtention":Lcom/android/camera/one/v2/photo/extension/VideoUtilExtension;
    goto :goto_0
.end method
