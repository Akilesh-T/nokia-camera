.class public Lcom/android/camera/util/GservicesHelper;
.super Ljava/lang/Object;
.source "GservicesHelper.java"


# static fields
.field private static final PERSIST_CAMERA_MAX_IMAGE_READER_COUNT:Ljava/lang/String; = "persist.camera.max_ir_count"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBlacklistedResolutionsBack(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 29
    const-string v0, ""

    return-object v0
.end method

.method public static getBlacklistedResolutionsFront(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 33
    const-string v0, ""

    return-object v0
.end method

.method public static getCaptureSupportLevelOverrideBack(Landroid/content/ContentResolver;)I
    .locals 1
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 45
    const/4 v0, -0x1

    return v0
.end method

.method public static getCaptureSupportLevelOverrideFront(Landroid/content/ContentResolver;)I
    .locals 1
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 49
    const/4 v0, -0x1

    return v0
.end method

.method public static getMaxAllowedImageReaderCount(Landroid/content/ContentResolver;)I
    .locals 3
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 58
    const-string v1, "persist.camera.max_ir_count"

    const-string v2, "15"

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xf

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 59
    .local v0, "maxAllowedImageReaderCount":I
    return v0
.end method

.method public static getMaxAllowedNativeMemoryMb(Landroid/content/ContentResolver;)I
    .locals 1
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 53
    const/4 v0, -0x1

    return v0
.end method

.method public static isCaptureModuleDisabled(Landroid/content/ContentResolver;)Z
    .locals 1
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public static isGcamEnabled(Landroid/content/ContentResolver;)Z
    .locals 1
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public static isJankStatisticsEnabled(Landroid/content/ContentResolver;)Z
    .locals 1
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public static useCamera2ApiThroughPortabilityLayer(Landroid/content/ContentResolver;)Z
    .locals 1
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method
