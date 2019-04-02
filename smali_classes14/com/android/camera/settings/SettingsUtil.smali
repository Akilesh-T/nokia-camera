.class public Lcom/android/camera/settings/SettingsUtil;
.super Ljava/lang/Object;
.source "SettingsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;,
        Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;,
        Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;
    }
.end annotation


# static fields
.field public static final ACTION_FIH_FEEDBACK_PROBLEM:Ljava/lang/String; = "com.fihtdc.customerfeedback.appFeedback"

.field public static final ACTION_FIH_FEEDBACK_RATE:Ljava/lang/String; = "com.fihtdc.customerfeedback.appComment"

.field public static final CAMERA_FACING_BACK:Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;

.field public static final CAMERA_FACING_FRONT:Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;

.field private static final DEBUG:Z = false

.field private static final MEDIUM_RELATIVE_PICTURE_SIZE:F = 0.5f

.field public static final SIZE_LARGE:Ljava/lang/String; = "large"

.field public static final SIZE_MEDIUM:Ljava/lang/String; = "medium"

.field private static final SIZE_SETTING_STRING_DIMENSION_DELIMITER:Ljava/lang/String; = "x"

.field public static final SIZE_SMALL:Ljava/lang/String; = "small"

.field private static final SMALL_RELATIVE_PICTURE_SIZE:F = 0.25f

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field public static sCachedSelectedHFRVideoQualities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;",
            ">;"
        }
    .end annotation
.end field

.field public static sCachedSelectedPictureSizes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;",
            ">;"
        }
    .end annotation
.end field

.field public static sCachedSelectedVideoQualities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;",
            ">;"
        }
    .end annotation
.end field

.field public static sVideoQualities:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 139
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "SettingsUtil"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/settings/SettingsUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 155
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/settings/SettingsUtil;->sVideoQualities:[I

    .line 165
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/android/camera/settings/SettingsUtil;->sCachedSelectedPictureSizes:Landroid/util/SparseArray;

    .line 167
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/android/camera/settings/SettingsUtil;->sCachedSelectedVideoQualities:Landroid/util/SparseArray;

    .line 169
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/android/camera/settings/SettingsUtil;->sCachedSelectedHFRVideoQualities:Landroid/util/SparseArray;

    .line 601
    new-instance v0, Lcom/android/camera/settings/SettingsUtil$4;

    invoke-direct {v0}, Lcom/android/camera/settings/SettingsUtil$4;-><init>()V

    sput-object v0, Lcom/android/camera/settings/SettingsUtil;->CAMERA_FACING_BACK:Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;

    .line 607
    new-instance v0, Lcom/android/camera/settings/SettingsUtil$5;

    invoke-direct {v0}, Lcom/android/camera/settings/SettingsUtil$5;-><init>()V

    sput-object v0, Lcom/android/camera/settings/SettingsUtil;->CAMERA_FACING_FRONT:Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;

    return-void

    .line 155
    :array_0
    .array-data 4
        0x8
        0x6
        0x5
        0x4
        0x3
        0x7
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findClosestSize(Ljava/util/List;I)I
    .locals 7
    .param p1, "targetPixelCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 469
    .local p0, "sortedSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    const/4 v0, 0x0

    .line 470
    .local v0, "closestMatchIndex":I
    const v1, 0x7fffffff

    .line 472
    .local v1, "closestMatchPixelCountDiff":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 473
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/util/Size;

    .line 474
    .local v4, "size":Lcom/android/camera/util/Size;
    invoke-virtual {v4}, Lcom/android/camera/util/Size;->width()I

    move-result v5

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->height()I

    move-result v6

    mul-int/2addr v5, v6

    sub-int/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 475
    .local v3, "pixelCountDiff":I
    if-ge v3, v1, :cond_0

    .line 476
    move v0, v2

    .line 477
    move v1, v3

    .line 472
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 480
    .end local v3    # "pixelCountDiff":I
    .end local v4    # "size":Lcom/android/camera/util/Size;
    :cond_1
    return v0
.end method

.method public static getCameraId(Lcom/android/ex/camera2/portability/CameraDeviceInfo;Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;)I
    .locals 5
    .param p0, "info"    # Lcom/android/ex/camera2/portability/CameraDeviceInfo;
    .param p1, "chooser"    # Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;

    .prologue
    const/4 v3, -0x1

    .line 573
    if-nez p0, :cond_0

    move v0, v3

    .line 587
    :goto_0
    return v0

    .line 576
    :cond_0
    invoke-interface {p0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getNumberOfCameras()I

    move-result v1

    .line 577
    .local v1, "numCameras":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 578
    invoke-interface {p0, v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v2

    .line 579
    .local v2, "props":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    if-nez v2, :cond_2

    .line 577
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 583
    :cond_2
    invoke-interface {p1, v2}, Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;->useCamera(Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .end local v2    # "props":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    :cond_3
    move v0, v3

    .line 587
    goto :goto_0
.end method

.method private static getCameraPictureSize(Ljava/lang/String;Ljava/util/List;I)Lcom/android/camera/util/Size;
    .locals 1
    .param p0, "sizeSetting"    # Ljava/lang/String;
    .param p2, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;I)",
            "Lcom/android/camera/util/Size;"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    invoke-static {p1, p2}, Lcom/android/camera/settings/SettingsUtil;->getSelectedCameraPictureSizes(Ljava/util/List;I)Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->getFromSetting(Ljava/lang/String;Ljava/util/List;)Lcom/android/camera/util/Size;

    move-result-object v0

    return-object v0
.end method

.method private static getExtraSupportedVideoQuality(I)Ljava/util/Map;
    .locals 7
    .param p0, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    sget-object v2, Lcom/android/camera/product_utils/ProductUtil$Video;->EXTRA_QUALITY_MAP:Ljava/util/Map;

    .line 410
    .local v2, "productSizes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 411
    const/4 v0, 0x0

    .line 421
    :cond_0
    return-object v0

    .line 413
    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 414
    .local v0, "extraSizes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 415
    .local v1, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 416
    .local v3, "quality":I
    invoke-static {v3}, Lcom/android/camera/settings/SettingsUtil;->isVideoQualitySupported(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 417
    invoke-static {p0, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 418
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getFirstTimeLocationAlertBuilder(Landroid/app/AlertDialog$Builder;Lcom/android/camera/util/Callback;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .param p0, "builder"    # Landroid/app/AlertDialog$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AlertDialog$Builder;",
            "Lcom/android/camera/util/Callback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/app/AlertDialog$Builder;"
        }
    .end annotation

    .prologue
    .line 525
    .local p1, "callback":Lcom/android/camera/util/Callback;, "Lcom/android/camera/util/Callback<Ljava/lang/Boolean;>;"
    if-nez p1, :cond_0

    .line 526
    const/4 p0, 0x0

    .line 532
    .end local p0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-object p0

    .line 529
    .restart local p0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/camera/settings/SettingsUtil;->getLocationAlertBuilder(Landroid/app/AlertDialog$Builder;Lcom/android/camera/util/Callback;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08021e

    .line 530
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public static getHFRVideoQuality(Ljava/lang/String;ILjava/util/List;)I
    .locals 1
    .param p0, "qualitySetting"    # Ljava/lang/String;
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 331
    .local p2, "supportedHFRSize":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/camera2/portability/Size;>;"
    invoke-static {p1, p2}, Lcom/android/camera/settings/SettingsUtil;->getSelectedHFRVideoQualities(ILjava/util/List;)Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->getFromSetting(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getLocationAlertBuilder(Landroid/app/AlertDialog$Builder;Lcom/android/camera/util/Callback;)Landroid/app/AlertDialog$Builder;
    .locals 3
    .param p0, "builder"    # Landroid/app/AlertDialog$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AlertDialog$Builder;",
            "Lcom/android/camera/util/Callback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/app/AlertDialog$Builder;"
        }
    .end annotation

    .prologue
    .line 541
    .local p1, "callback":Lcom/android/camera/util/Callback;, "Lcom/android/camera/util/Callback<Ljava/lang/Boolean;>;"
    if-nez p1, :cond_0

    .line 542
    const/4 p0, 0x0

    .line 561
    .end local p0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-object p0

    .line 545
    .restart local p0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    const v0, 0x7f08021f

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080220

    new-instance v2, Lcom/android/camera/settings/SettingsUtil$3;

    invoke-direct {v2, p1}, Lcom/android/camera/settings/SettingsUtil$3;-><init>(Lcom/android/camera/util/Callback;)V

    .line 546
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08021d

    new-instance v2, Lcom/android/camera/settings/SettingsUtil$2;

    invoke-direct {v2, p1}, Lcom/android/camera/settings/SettingsUtil$2;-><init>(Lcom/android/camera/util/Callback;)V

    .line 553
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public static getMaxVideoDuration(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, "duration":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 61
    :goto_0
    return v0

    .line 59
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getMinHSRFpsLimit(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/16 v0, 0x5a

    return v0
.end method

.method private static getNextSupportedHFRVideoQualityIndex(IILjava/util/List;)I
    .locals 5
    .param p0, "cameraId"    # I
    .param p1, "start"    # I
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 427
    .local p2, "supportedHFRSize":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/camera2/portability/Size;>;"
    add-int/lit8 v0, p1, 0x1

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/camera/settings/SettingsUtil;->sVideoQualities:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 428
    sget-object v2, Lcom/android/camera/settings/SettingsUtil;->sVideoQualities:[I

    aget v2, v2, v0

    invoke-static {v2}, Lcom/android/camera/settings/SettingsUtil;->isVideoQualitySupported(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/camera/settings/SettingsUtil;->sVideoQualities:[I

    aget v2, v2, v0

    .line 429
    invoke-static {p0, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 431
    sget-object v2, Lcom/android/camera/settings/SettingsUtil;->sVideoQualities:[I

    aget v2, v2, v0

    invoke-static {p0, v2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    .line 432
    .local v1, "profile":Landroid/media/CamcorderProfile;
    if-eqz v1, :cond_0

    .line 433
    new-instance v2, Lcom/android/ex/camera2/portability/Size;

    iget v3, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v4, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v2, v3, v4}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 448
    .end local v0    # "i":I
    .end local v1    # "profile":Landroid/media/CamcorderProfile;
    :goto_1
    return v0

    .line 427
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 441
    :cond_1
    if-ltz p1, :cond_2

    sget-object v2, Lcom/android/camera/settings/SettingsUtil;->sVideoQualities:[I

    array-length v2, v2

    if-lt p1, v2, :cond_3

    .line 443
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Could not find supported video qualities."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    move v0, p1

    .line 448
    goto :goto_1
.end method

.method private static getNextSupportedVideoQualityIndex(II)I
    .locals 3
    .param p0, "cameraId"    # I
    .param p1, "start"    # I

    .prologue
    .line 389
    add-int/lit8 v0, p1, 0x1

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/camera/settings/SettingsUtil;->sVideoQualities:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 390
    sget-object v1, Lcom/android/camera/settings/SettingsUtil;->sVideoQualities:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/android/camera/settings/SettingsUtil;->isVideoQualitySupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/camera/settings/SettingsUtil;->sVideoQualities:[I

    aget v1, v1, v0

    .line 391
    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 389
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    :cond_1
    if-ltz p1, :cond_2

    sget-object v1, Lcom/android/camera/settings/SettingsUtil;->sVideoQualities:[I

    array-length v1, v1

    if-lt p1, v1, :cond_3

    .line 400
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Could not find supported video qualities."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move v0, p1

    .line 405
    goto :goto_1
.end method

.method public static getPhotoSize(Ljava/lang/String;Ljava/util/List;I)Lcom/android/camera/util/Size;
    .locals 2
    .param p0, "sizeSetting"    # Ljava/lang/String;
    .param p2, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;I)",
            "Lcom/android/camera/util/Size;"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    const-string v1, "1836x3264"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    sget-object v0, Lcom/android/camera/settings/ResolutionUtil;->NEXUS_5_LARGE_16_BY_9_SIZE:Lcom/android/camera/util/Size;

    .line 187
    :goto_0
    return-object v0

    .line 186
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/camera/settings/SettingsUtil;->getCameraPictureSize(Ljava/lang/String;Ljava/util/List;I)Lcom/android/camera/util/Size;

    move-result-object v0

    .line 187
    .local v0, "selectedSize":Lcom/android/camera/util/Size;
    goto :goto_0
.end method

.method static getSelectedCameraPictureSizes(Ljava/util/List;I)Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;
    .locals 20
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;I)",
            "Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "supported":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    new-instance v12, Ljava/util/LinkedList;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 218
    .local v12, "supportedCopy":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    sget-object v14, Lcom/android/camera/settings/SettingsUtil;->sCachedSelectedPictureSizes:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 219
    sget-object v14, Lcom/android/camera/settings/SettingsUtil;->sCachedSelectedPictureSizes:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;

    .line 313
    :goto_0
    return-object v14

    .line 221
    :cond_0
    if-nez v12, :cond_1

    .line 222
    const/4 v14, 0x0

    goto :goto_0

    .line 225
    :cond_1
    new-instance v8, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;

    invoke-direct {v8}, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;-><init>()V

    .line 228
    .local v8, "selectedSizes":Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;
    new-instance v14, Lcom/android/camera/settings/SettingsUtil$1;

    invoke-direct {v14}, Lcom/android/camera/settings/SettingsUtil$1;-><init>()V

    invoke-static {v12, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 246
    const/4 v14, 0x0

    invoke-interface {v12, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/util/Size;

    iput-object v14, v8, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->large:Lcom/android/camera/util/Size;

    .line 250
    iget-object v14, v8, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->large:Lcom/android/camera/util/Size;

    invoke-virtual {v14}, Lcom/android/camera/util/Size;->width()I

    move-result v14

    int-to-float v14, v14

    iget-object v15, v8, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->large:Lcom/android/camera/util/Size;

    .line 251
    invoke-virtual {v15}, Lcom/android/camera/util/Size;->height()I

    move-result v15

    int-to-float v15, v15

    div-float v13, v14, v15

    .line 255
    .local v13, "targetAspectRatio":F
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v3, "aspectRatioMatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/util/Size;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/util/Size;

    .line 257
    .local v9, "size":Lcom/android/camera/util/Size;
    invoke-virtual {v9}, Lcom/android/camera/util/Size;->width()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v9}, Lcom/android/camera/util/Size;->height()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v2, v15, v16

    .line 259
    .local v2, "aspectRatio":F
    sub-float v15, v2, v13

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide v18, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v15, v16, v18

    if-gez v15, :cond_2

    .line 260
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 267
    .end local v2    # "aspectRatio":F
    .end local v9    # "size":Lcom/android/camera/util/Size;
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x2

    if-lt v14, v15, :cond_4

    move-object v7, v3

    .line 276
    .local v7, "searchList":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 277
    sget-object v14, Lcom/android/camera/settings/SettingsUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v15, "Only one supported resolution."

    invoke-static {v14, v15}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 278
    iget-object v14, v8, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->large:Lcom/android/camera/util/Size;

    iput-object v14, v8, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->medium:Lcom/android/camera/util/Size;

    .line 279
    iget-object v14, v8, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->large:Lcom/android/camera/util/Size;

    iput-object v14, v8, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->small:Lcom/android/camera/util/Size;

    .line 312
    :goto_3
    sget-object v14, Lcom/android/camera/settings/SettingsUtil;->sCachedSelectedPictureSizes:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v14, v0, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v14, v8

    .line 313
    goto/16 :goto_0

    .end local v7    # "searchList":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :cond_4
    move-object v7, v12

    .line 267
    goto :goto_2

    .line 280
    .restart local v7    # "searchList":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :cond_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    .line 281
    sget-object v14, Lcom/android/camera/settings/SettingsUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v15, "Only two supported resolutions."

    invoke-static {v14, v15}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 282
    const/4 v14, 0x0

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/util/Size;

    iput-object v14, v8, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->medium:Lcom/android/camera/util/Size;

    .line 283
    const/4 v14, 0x0

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/util/Size;

    iput-object v14, v8, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->small:Lcom/android/camera/util/Size;

    goto :goto_3

    .line 284
    :cond_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_7

    .line 285
    sget-object v14, Lcom/android/camera/settings/SettingsUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v15, "Exactly three supported resolutions."

    invoke-static {v14, v15}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 286
    const/4 v14, 0x0

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/util/Size;

    iput-object v14, v8, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->medium:Lcom/android/camera/util/Size;

    .line 287
    const/4 v14, 0x1

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/util/Size;

    iput-object v14, v8, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->small:Lcom/android/camera/util/Size;

    goto :goto_3

    .line 292
    :cond_7
    iget-object v14, v8, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->large:Lcom/android/camera/util/Size;

    invoke-virtual {v14}, Lcom/android/camera/util/Size;->width()I

    move-result v14

    iget-object v15, v8, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->large:Lcom/android/camera/util/Size;

    invoke-virtual {v15}, Lcom/android/camera/util/Size;->height()I

    move-result v15

    mul-int v4, v14, v15

    .line 293
    .local v4, "largePixelCount":I
    int-to-float v14, v4

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v14, v15

    float-to-int v6, v14

    .line 294
    .local v6, "mediumTargetPixelCount":I
    int-to-float v14, v4

    const/high16 v15, 0x3e800000    # 0.25f

    mul-float/2addr v14, v15

    float-to-int v11, v14

    .line 296
    .local v11, "smallTargetPixelCount":I
    invoke-static {v7, v6}, Lcom/android/camera/settings/SettingsUtil;->findClosestSize(Ljava/util/List;I)I

    move-result v5

    .line 297
    .local v5, "mediumSizeIndex":I
    invoke-static {v7, v11}, Lcom/android/camera/settings/SettingsUtil;->findClosestSize(Ljava/util/List;I)I

    move-result v10

    .line 302
    .local v10, "smallSizeIndex":I
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/util/Size;

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/camera/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 303
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-ge v10, v14, :cond_9

    .line 304
    add-int/lit8 v10, v10, 0x1

    .line 309
    :cond_8
    :goto_4
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/util/Size;

    iput-object v14, v8, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->medium:Lcom/android/camera/util/Size;

    .line 310
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/util/Size;

    iput-object v14, v8, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->small:Lcom/android/camera/util/Size;

    goto/16 :goto_3

    .line 306
    :cond_9
    add-int/lit8 v5, v5, -0x1

    goto :goto_4
.end method

.method static getSelectedHFRVideoQualities(ILjava/util/List;)Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;
    .locals 5
    .param p0, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;)",
            "Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;"
        }
    .end annotation

    .prologue
    .line 368
    .local p1, "supportedHFRSize":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/camera2/portability/Size;>;"
    sget-object v4, Lcom/android/camera/settings/SettingsUtil;->sCachedSelectedHFRVideoQualities:Landroid/util/SparseArray;

    invoke-virtual {v4, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 369
    sget-object v4, Lcom/android/camera/settings/SettingsUtil;->sCachedSelectedHFRVideoQualities:Landroid/util/SparseArray;

    invoke-virtual {v4, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;

    .line 381
    :goto_0
    return-object v4

    .line 372
    :cond_0
    const/4 v4, -0x1

    invoke-static {p0, v4, p1}, Lcom/android/camera/settings/SettingsUtil;->getNextSupportedHFRVideoQualityIndex(IILjava/util/List;)I

    move-result v0

    .line 373
    .local v0, "largeIndex":I
    invoke-static {p0, v0, p1}, Lcom/android/camera/settings/SettingsUtil;->getNextSupportedHFRVideoQualityIndex(IILjava/util/List;)I

    move-result v1

    .line 374
    .local v1, "mediumIndex":I
    invoke-static {p0, v1, p1}, Lcom/android/camera/settings/SettingsUtil;->getNextSupportedHFRVideoQualityIndex(IILjava/util/List;)I

    move-result v3

    .line 376
    .local v3, "smallIndex":I
    new-instance v2, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;

    invoke-direct {v2}, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;-><init>()V

    .line 377
    .local v2, "selectedQualities":Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;
    sget-object v4, Lcom/android/camera/settings/SettingsUtil;->sVideoQualities:[I

    aget v4, v4, v0

    iput v4, v2, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->large:I

    .line 378
    sget-object v4, Lcom/android/camera/settings/SettingsUtil;->sVideoQualities:[I

    aget v4, v4, v1

    iput v4, v2, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->medium:I

    .line 379
    sget-object v4, Lcom/android/camera/settings/SettingsUtil;->sVideoQualities:[I

    aget v4, v4, v3

    iput v4, v2, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->small:I

    .line 380
    sget-object v4, Lcom/android/camera/settings/SettingsUtil;->sCachedSelectedHFRVideoQualities:Landroid/util/SparseArray;

    invoke-virtual {v4, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v4, v2

    .line 381
    goto :goto_0
.end method

.method static getSelectedVideoQualities(I)Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;
    .locals 1
    .param p0, "cameraId"    # I

    .prologue
    .line 335
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/camera/settings/SettingsUtil;->getSelectedVideoQualities(IZ)Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;

    move-result-object v0

    return-object v0
.end method

.method static getSelectedVideoQualities(IZ)Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;
    .locals 5
    .param p0, "cameraId"    # I
    .param p1, "ifShow2Option"    # Z

    .prologue
    .line 339
    sget-object v4, Lcom/android/camera/settings/SettingsUtil;->sCachedSelectedVideoQualities:Landroid/util/SparseArray;

    invoke-virtual {v4, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 340
    sget-object v4, Lcom/android/camera/settings/SettingsUtil;->sCachedSelectedVideoQualities:Landroid/util/SparseArray;

    invoke-virtual {v4, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;

    .line 363
    :goto_0
    return-object v4

    .line 349
    :cond_0
    const/4 v4, -0x1

    invoke-static {p0, v4}, Lcom/android/camera/settings/SettingsUtil;->getNextSupportedVideoQualityIndex(II)I

    move-result v0

    .line 350
    .local v0, "largeIndex":I
    invoke-static {p0, v0}, Lcom/android/camera/settings/SettingsUtil;->getNextSupportedVideoQualityIndex(II)I

    move-result v1

    .line 351
    .local v1, "mediumIndex":I
    invoke-static {p0, v1}, Lcom/android/camera/settings/SettingsUtil;->getNextSupportedVideoQualityIndex(II)I

    move-result v3

    .line 352
    .local v3, "smallIndex":I
    new-instance v2, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;

    invoke-direct {v2}, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;-><init>()V

    .line 353
    .local v2, "selectedQualities":Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;
    sget-object v4, Lcom/android/camera/settings/SettingsUtil;->sVideoQualities:[I

    aget v4, v4, v0

    iput v4, v2, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->large:I

    .line 354
    sget-object v4, Lcom/android/camera/settings/SettingsUtil;->sVideoQualities:[I

    aget v4, v4, v1

    iput v4, v2, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->medium:I

    .line 355
    if-eqz p1, :cond_1

    .line 356
    iget v4, v2, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->medium:I

    iput v4, v2, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->small:I

    .line 360
    :goto_1
    invoke-static {p0}, Lcom/android/camera/settings/SettingsUtil;->getExtraSupportedVideoQuality(I)Ljava/util/Map;

    move-result-object v4

    iput-object v4, v2, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->extraSizes:Ljava/util/Map;

    .line 362
    sget-object v4, Lcom/android/camera/settings/SettingsUtil;->sCachedSelectedVideoQualities:Landroid/util/SparseArray;

    invoke-virtual {v4, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v4, v2

    .line 363
    goto :goto_0

    .line 358
    :cond_1
    sget-object v4, Lcom/android/camera/settings/SettingsUtil;->sVideoQualities:[I

    aget v4, v4, v3

    iput v4, v2, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->small:I

    goto :goto_1
.end method

.method public static getVideoQuality(Ljava/lang/String;I)I
    .locals 1
    .param p0, "qualitySetting"    # Ljava/lang/String;
    .param p1, "cameraId"    # I

    .prologue
    .line 327
    invoke-static {p1}, Lcom/android/camera/settings/SettingsUtil;->getSelectedVideoQualities(I)Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->getFromSetting(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static isSupportAppFeedback(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 617
    if-nez p0, :cond_1

    .line 626
    :cond_0
    :goto_0
    return v3

    .line 619
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 620
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.fihtdc.customerfeedback.appFeedback"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 622
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 623
    .local v2, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 624
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isSupportAppRate(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 630
    if-nez p0, :cond_1

    .line 639
    :cond_0
    :goto_0
    return v3

    .line 632
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 633
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.fihtdc.customerfeedback.appComment"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 635
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 636
    .local v2, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 637
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static isVideoQualitySupported(I)Z
    .locals 1
    .param p0, "videoQuality"    # I

    .prologue
    .line 458
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isLOrHigher()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    .line 459
    const/4 v0, 0x0

    .line 461
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static sizeFromSettingString(Ljava/lang/String;)Lcom/android/camera/util/Size;
    .locals 7
    .param p0, "sizeSettingString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 502
    if-nez p0, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-object v4

    .line 505
    :cond_1
    const-string v5, "x"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 506
    .local v2, "parts":[Ljava/lang/String;
    array-length v5, v2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 511
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 512
    .local v3, "width":I
    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 513
    .local v1, "height":I
    new-instance v5, Lcom/android/camera/util/Size;

    invoke-direct {v5, v3, v1}, Lcom/android/camera/util/Size;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto :goto_0

    .line 514
    .end local v1    # "height":I
    .end local v3    # "width":I
    :catch_0
    move-exception v0

    .line 515
    .local v0, "ex":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static sizeToSettingString(Lcom/android/camera/util/Size;)Ljava/lang/String;
    .locals 2
    .param p0, "size"    # Lcom/android/camera/util/Size;

    .prologue
    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/util/Size;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/util/Size;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
