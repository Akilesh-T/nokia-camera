.class public Lcom/thirdparty/arcsoft/engine/AdbConfigParameterDenoisePostProcessUnit;
.super Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;
.source "AdbConfigParameterDenoisePostProcessUnit.java"


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field private final KEY_SDN_COLOR:Ljava/lang/String;

.field private final KEY_SDN_LUMIN:Ljava/lang/String;

.field private final KEY_SDN_RING:Ljava/lang/String;

.field private final KEY_SDN_SHARP:Ljava/lang/String;

.field private final KEY_SDN_TYPE:Ljava/lang/String;

.field private final PREFERENCES_CAMERA_SDN_LOWLIGHT_CONFIG:Ljava/lang/String;

.field private mSettingsManager:Lcom/android/camera/settings/SettingsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "AdbConfigParameterDenoisePostProcessUnit"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterDenoisePostProcessUnit;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(ZIIII)V
    .locals 1
    .param p1, "isBackCam"    # Z
    .param p2, "imgWidth"    # I
    .param p3, "imgHeight"    # I
    .param p4, "imgFormat"    # I
    .param p5, "isoValue"    # I

    .prologue
    .line 30
    invoke-direct/range {p0 .. p5}, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;-><init>(ZIIII)V

    .line 19
    const-string v0, "_preferences_camera_sdn_lowlight_config"

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterDenoisePostProcessUnit;->PREFERENCES_CAMERA_SDN_LOWLIGHT_CONFIG:Ljava/lang/String;

    .line 21
    const-string v0, "sdn_type"

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterDenoisePostProcessUnit;->KEY_SDN_TYPE:Ljava/lang/String;

    .line 22
    const-string v0, "sdn_color"

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterDenoisePostProcessUnit;->KEY_SDN_COLOR:Ljava/lang/String;

    .line 23
    const-string v0, "sdn_lumin"

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterDenoisePostProcessUnit;->KEY_SDN_LUMIN:Ljava/lang/String;

    .line 24
    const-string v0, "sdn_sharp"

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterDenoisePostProcessUnit;->KEY_SDN_SHARP:Ljava/lang/String;

    .line 25
    const-string v0, "sdn_ring"

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterDenoisePostProcessUnit;->KEY_SDN_RING:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/android/camera/app/CameraServicesImpl;->instance()Lcom/android/camera/app/CameraServicesImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraServicesImpl;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterDenoisePostProcessUnit;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    .line 32
    return-void
.end method


# virtual methods
.method public doEnhancement(Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;)[B
    .locals 13
    .param p1, "lockableImageBuffer"    # Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;

    .prologue
    .line 36
    const/4 v2, 0x0

    .line 37
    .local v2, "res":[B
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterDenoisePostProcessUnit;->initEngineInternal()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 38
    iget-object v9, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterDenoisePostProcessUnit;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v10, "_preferences_camera_sdn_lowlight_config"

    const-string v11, "sdn_type"

    invoke-virtual {v9, v10, v11}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 39
    .local v7, "sdn_type":I
    iget-object v9, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterDenoisePostProcessUnit;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v10, "_preferences_camera_sdn_lowlight_config"

    const-string v11, "sdn_color"

    invoke-virtual {v9, v10, v11}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 40
    .local v3, "sdn_color":I
    iget-object v9, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterDenoisePostProcessUnit;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v10, "_preferences_camera_sdn_lowlight_config"

    const-string v11, "sdn_lumin"

    invoke-virtual {v9, v10, v11}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 41
    .local v4, "sdn_lumin":I
    iget-object v9, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterDenoisePostProcessUnit;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v10, "_preferences_camera_sdn_lowlight_config"

    const-string v11, "sdn_sharp"

    invoke-virtual {v9, v10, v11}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 42
    .local v6, "sdn_sharp":I
    iget-object v9, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterDenoisePostProcessUnit;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v10, "_preferences_camera_sdn_lowlight_config"

    const-string v11, "sdn_ring"

    invoke-virtual {v9, v10, v11}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 44
    .local v5, "sdn_ring":I
    sget-object v9, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterDenoisePostProcessUnit;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "type_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-color_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-lumin_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-sharp_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-ring_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 49
    iget-object v9, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterDenoisePostProcessUnit;->mDenoiseEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;

    invoke-virtual {v9, v7}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->setDenoiserType(I)I

    .line 50
    iget-object v9, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterDenoisePostProcessUnit;->mDenoiseEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;

    int-to-long v10, v3

    invoke-virtual {v9, v10, v11}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->setColorDenoiseLevel(J)I

    .line 51
    iget-object v9, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterDenoisePostProcessUnit;->mDenoiseEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;

    int-to-long v10, v4

    invoke-virtual {v9, v10, v11}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->setLuminDenoiseLevel(J)I

    .line 52
    iget-object v9, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterDenoisePostProcessUnit;->mDenoiseEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;

    int-to-long v10, v6

    invoke-virtual {v9, v10, v11}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->setSharpLevel(J)I

    .line 53
    iget-object v9, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterDenoisePostProcessUnit;->mDenoiseEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;

    int-to-long v10, v5

    invoke-virtual {v9, v10, v11}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->setRingNoiseLevel(J)I

    .line 55
    invoke-virtual {p1}, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->size()I

    move-result v8

    .line 56
    .local v8, "size":I
    sget-object v9, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterDenoisePostProcessUnit;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doEnhancement size : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 57
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v8, :cond_1

    .line 58
    invoke-virtual {p1}, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->getImage()[B

    move-result-object v0

    .line 59
    .local v0, "data":[B
    if-nez v0, :cond_0

    .line 60
    const/4 v9, 0x0

    .line 76
    .end local v0    # "data":[B
    .end local v1    # "j":I
    .end local v3    # "sdn_color":I
    .end local v4    # "sdn_lumin":I
    .end local v5    # "sdn_ring":I
    .end local v6    # "sdn_sharp":I
    .end local v7    # "sdn_type":I
    .end local v8    # "size":I
    :goto_1
    return-object v9

    .line 61
    .restart local v0    # "data":[B
    .restart local v1    # "j":I
    .restart local v3    # "sdn_color":I
    .restart local v4    # "sdn_lumin":I
    .restart local v5    # "sdn_ring":I
    .restart local v6    # "sdn_sharp":I
    .restart local v7    # "sdn_type":I
    .restart local v8    # "size":I
    :cond_0
    invoke-virtual {p0, v0}, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterDenoisePostProcessUnit;->inputImageInternal([B)Z

    .line 62
    const-string v9, "Denoise_Original_Yuv"

    iget v10, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterDenoisePostProcessUnit;->mImgWidth:I

    iget v11, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterDenoisePostProcessUnit;->mImgHeight:I

    const/16 v12, 0x11

    invoke-static {v0, v9, v10, v11, v12}, Lcom/android/camera/util/ImageDumpUtil;->dumpNV21([BLjava/lang/String;III)V

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "data":[B
    :cond_1
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterDenoisePostProcessUnit;->processReultImageInternal()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 65
    iget-object v9, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterDenoisePostProcessUnit;->mImgData:[B

    iget v10, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterDenoisePostProcessUnit;->mImgWidth:I

    iget v11, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterDenoisePostProcessUnit;->mImgHeight:I

    invoke-static {v9, v10, v11}, Lcom/android/camera/util/YuvToJpeg;->transByteData([BII)[B

    move-result-object v2

    .line 68
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "type_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-color_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-lumin_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-sharp_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-ring_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/android/camera/util/ImageDumpUtil;->dumpJpegFile([BLjava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterDenoisePostProcessUnit;->releaseEngineInternal()V

    .end local v1    # "j":I
    .end local v3    # "sdn_color":I
    .end local v4    # "sdn_lumin":I
    .end local v5    # "sdn_ring":I
    .end local v6    # "sdn_sharp":I
    .end local v7    # "sdn_type":I
    .end local v8    # "size":I
    :cond_3
    move-object v9, v2

    .line 76
    goto :goto_1
.end method
