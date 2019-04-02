.class public Lcom/android/camera/one/v2/photo/extension/ExifUtilExtentionCreator;
.super Ljava/lang/Object;
.source "ExifUtilExtentionCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/photo/extension/ExifUtilExtentionCreator$ExifUtilExtentionStub;
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

.method public static create(Lcom/android/camera/exif/ExifInterface;)Lcom/android/camera/one/v2/photo/extension/ExifUtilExtention;
    .locals 3
    .param p0, "exif"    # Lcom/android/camera/exif/ExifInterface;

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "exifUtilExtention":Lcom/android/camera/one/v2/photo/extension/ExifUtilExtention;
    invoke-static {}, Lcom/android/ex/camera2/utils/PlatformUtil;->getPlatform()Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    move-result-object v1

    .line 21
    .local v1, "platform":Lcom/android/ex/camera2/utils/PlatformUtil$Platform;
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->QUALCOMM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v1, v2, :cond_0

    .line 22
    new-instance v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;

    .end local v0    # "exifUtilExtention":Lcom/android/camera/one/v2/photo/extension/ExifUtilExtention;
    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;-><init>(Lcom/android/camera/exif/ExifInterface;)V

    .line 30
    .restart local v0    # "exifUtilExtention":Lcom/android/camera/one/v2/photo/extension/ExifUtilExtention;
    :goto_0
    return-object v0

    .line 23
    :cond_0
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->MTK:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v1, v2, :cond_1

    .line 24
    new-instance v0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKExifUtilExtention;

    .end local v0    # "exifUtilExtention":Lcom/android/camera/one/v2/photo/extension/ExifUtilExtention;
    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/photo/extension/mtk/MTKExifUtilExtention;-><init>(Lcom/android/camera/exif/ExifInterface;)V

    .restart local v0    # "exifUtilExtention":Lcom/android/camera/one/v2/photo/extension/ExifUtilExtention;
    goto :goto_0

    .line 25
    :cond_1
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->SPREADTRUM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v1, v2, :cond_2

    .line 26
    new-instance v0, Lcom/android/camera/one/v2/photo/extension/spreadtrum/SPTExifUtilExtention;

    .end local v0    # "exifUtilExtention":Lcom/android/camera/one/v2/photo/extension/ExifUtilExtention;
    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/photo/extension/spreadtrum/SPTExifUtilExtention;-><init>(Lcom/android/camera/exif/ExifInterface;)V

    .restart local v0    # "exifUtilExtention":Lcom/android/camera/one/v2/photo/extension/ExifUtilExtention;
    goto :goto_0

    .line 28
    :cond_2
    new-instance v0, Lcom/android/camera/one/v2/photo/extension/aosp/AOSPExifUtilExtention;

    .end local v0    # "exifUtilExtention":Lcom/android/camera/one/v2/photo/extension/ExifUtilExtention;
    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/photo/extension/aosp/AOSPExifUtilExtention;-><init>(Lcom/android/camera/exif/ExifInterface;)V

    .restart local v0    # "exifUtilExtention":Lcom/android/camera/one/v2/photo/extension/ExifUtilExtention;
    goto :goto_0
.end method
