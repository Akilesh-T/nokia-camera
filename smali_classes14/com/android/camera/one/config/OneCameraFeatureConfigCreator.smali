.class public Lcom/android/camera/one/config/OneCameraFeatureConfigCreator;
.super Ljava/lang/Object;
.source "OneCameraFeatureConfigCreator.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "OneCamFtrCnfgCrtr"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/config/OneCameraFeatureConfigCreator;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/camera2/CameraCharacteristics;Landroid/content/ContentResolver;)Lcom/google/common/base/Optional;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p1, "x1"    # Landroid/content/ContentResolver;

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcom/android/camera/one/config/OneCameraFeatureConfigCreator;->getCaptureSupportLevelOverride(Landroid/hardware/camera2/CameraCharacteristics;Landroid/content/ContentResolver;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/camera/one/config/OneCameraFeatureConfigCreator;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method private static buildCaptureModuleDetector(Landroid/content/ContentResolver;)Lcom/google/common/base/Function;
    .locals 1
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Lcom/google/common/base/Function",
            "<",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lcom/android/camera/one/config/OneCameraFeatureConfigCreator$1;

    invoke-direct {v0, p0}, Lcom/android/camera/one/config/OneCameraFeatureConfigCreator$1;-><init>(Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public static createDefault(Landroid/content/ContentResolver;Lcom/android/camera/app/MemoryManager;)Lcom/android/camera/one/config/OneCameraFeatureConfig;
    .locals 6
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "memoryManager"    # Lcom/android/camera/app/MemoryManager;

    .prologue
    .line 45
    sget-boolean v1, Lcom/android/camera/product_utils/ProductUtil;->USE_CAPTURE_MODULE:Z

    .line 46
    .local v1, "useCaptureModule":Z
    sget-object v0, Lcom/android/camera/one/config/OneCameraFeatureConfigCreator;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CaptureModule? "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 50
    invoke-static {p0, v1}, Lcom/android/camera/util/GcamHelper;->determineHdrPlusSupportLevel(Landroid/content/ContentResolver;Z)Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;

    move-result-object v3

    .line 51
    .local v3, "hdrPlusSupportLevel":Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;
    new-instance v0, Lcom/android/camera/one/config/OneCameraFeatureConfig;

    .line 52
    invoke-static {p0}, Lcom/android/camera/one/config/OneCameraFeatureConfigCreator;->buildCaptureModuleDetector(Landroid/content/ContentResolver;)Lcom/google/common/base/Function;

    move-result-object v2

    .line 54
    invoke-interface {p1}, Lcom/android/camera/app/MemoryManager;->getMaxAllowedNativeMemoryAllocation()I

    move-result v4

    .line 55
    invoke-static {p0}, Lcom/android/camera/util/GservicesHelper;->getMaxAllowedImageReaderCount(Landroid/content/ContentResolver;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/one/config/OneCameraFeatureConfig;-><init>(ZLcom/google/common/base/Function;Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;II)V

    .line 51
    return-object v0
.end method

.method private static getCaptureSupportLevelOverride(Landroid/hardware/camera2/CameraCharacteristics;Landroid/content/ContentResolver;)Lcom/google/common/base/Optional;
    .locals 4
    .param p0, "cameraCharacteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Landroid/content/ContentResolver;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 140
    .local v0, "facing":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 141
    sget-object v2, Lcom/android/camera/one/config/OneCameraFeatureConfigCreator;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Camera not facing anywhere."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v2

    .line 156
    :goto_0
    return-object v2

    .line 145
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 155
    sget-object v2, Lcom/android/camera/one/config/OneCameraFeatureConfigCreator;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Not sure where camera is facing to."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v2

    goto :goto_0

    .line 147
    :pswitch_0
    invoke-static {p1}, Lcom/android/camera/util/GservicesHelper;->getCaptureSupportLevelOverrideBack(Landroid/content/ContentResolver;)I

    move-result v1

    .line 148
    .local v1, "override":I
    invoke-static {v1}, Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;->fromFlag(I)Lcom/google/common/base/Optional;

    move-result-object v2

    goto :goto_0

    .line 151
    .end local v1    # "override":I
    :pswitch_1
    invoke-static {p1}, Lcom/android/camera/util/GservicesHelper;->getCaptureSupportLevelOverrideFront(Landroid/content/ContentResolver;)I

    move-result v1

    .line 152
    .restart local v1    # "override":I
    invoke-static {v1}, Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;->fromFlag(I)Lcom/google/common/base/Optional;

    move-result-object v2

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
