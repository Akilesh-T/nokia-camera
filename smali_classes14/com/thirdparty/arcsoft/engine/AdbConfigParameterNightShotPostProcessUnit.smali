.class public Lcom/thirdparty/arcsoft/engine/AdbConfigParameterNightShotPostProcessUnit;
.super Lcom/thirdparty/arcsoft/engine/ConfigParameterNightShotPostProcessUnit;
.source "AdbConfigParameterNightShotPostProcessUnit.java"


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field private final KEY_LOWLIGHT_INTENSITY:Ljava/lang/String;

.field private final KEY_LOWLIGHT_LIGHT_INTENSITY:Ljava/lang/String;

.field private final KEY_LOWLIGHT_NEED_SHARPE:Ljava/lang/String;

.field private final KEY_LOWLIGHT_SATURATION:Ljava/lang/String;

.field private final PREFERENCES_CAMERA_SDN_LOWLIGHT_CONFIG:Ljava/lang/String;

.field private mSettingsManager:Lcom/android/camera/settings/SettingsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "AdbConfigParameterNightShotPostProcessUnit"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterNightShotPostProcessUnit;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(IZIIII)V
    .locals 1
    .param p1, "requiredFrameNum"    # I
    .param p2, "isBackCam"    # Z
    .param p3, "imgWidth"    # I
    .param p4, "imgHeight"    # I
    .param p5, "imgFormat"    # I
    .param p6, "isoValue"    # I

    .prologue
    .line 29
    invoke-direct/range {p0 .. p6}, Lcom/thirdparty/arcsoft/engine/ConfigParameterNightShotPostProcessUnit;-><init>(IZIIII)V

    .line 19
    const-string v0, "_preferences_camera_sdn_lowlight_config"

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterNightShotPostProcessUnit;->PREFERENCES_CAMERA_SDN_LOWLIGHT_CONFIG:Ljava/lang/String;

    .line 21
    const-string v0, "lowlight_need_sharpe"

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterNightShotPostProcessUnit;->KEY_LOWLIGHT_NEED_SHARPE:Ljava/lang/String;

    .line 22
    const-string v0, "lowlight_intensity"

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterNightShotPostProcessUnit;->KEY_LOWLIGHT_INTENSITY:Ljava/lang/String;

    .line 23
    const-string v0, "lowlight_light_intensity"

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterNightShotPostProcessUnit;->KEY_LOWLIGHT_LIGHT_INTENSITY:Ljava/lang/String;

    .line 24
    const-string v0, "lowlight_saturation"

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterNightShotPostProcessUnit;->KEY_LOWLIGHT_SATURATION:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/android/camera/app/CameraServicesImpl;->instance()Lcom/android/camera/app/CameraServicesImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraServicesImpl;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterNightShotPostProcessUnit;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    .line 31
    return-void
.end method


# virtual methods
.method public doEnhancement(Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;)[B
    .locals 13
    .param p1, "lockableImageBuffer"    # Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;

    .prologue
    const/4 v1, 0x1

    .line 35
    const/4 v7, 0x0

    .line 36
    .local v7, "res":[B
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterNightShotPostProcessUnit;->initEngineInternal()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 38
    iget-object v9, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterNightShotPostProcessUnit;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v10, "_preferences_camera_sdn_lowlight_config"

    const-string v11, "lowlight_need_sharpe"

    invoke-virtual {v9, v10, v11}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 39
    .local v5, "lowlight_need_sharpe":I
    iget-object v9, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterNightShotPostProcessUnit;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v10, "_preferences_camera_sdn_lowlight_config"

    const-string v11, "lowlight_intensity"

    invoke-virtual {v9, v10, v11}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 40
    .local v3, "lowlight_intensity":I
    iget-object v9, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterNightShotPostProcessUnit;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v10, "_preferences_camera_sdn_lowlight_config"

    const-string v11, "lowlight_light_intensity"

    invoke-virtual {v9, v10, v11}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 41
    .local v4, "lowlight_light_intensity":I
    iget-object v9, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterNightShotPostProcessUnit;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v10, "_preferences_camera_sdn_lowlight_config"

    const-string v11, "lowlight_saturation"

    invoke-virtual {v9, v10, v11}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 43
    .local v6, "lowlight_saturation":I
    sget-object v9, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterNightShotPostProcessUnit;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sharpe_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-intensity_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-light_intensity_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-saturation_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 48
    if-ne v5, v1, :cond_1

    .line 49
    .local v1, "flag":Z
    :goto_0
    iget-object v9, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterNightShotPostProcessUnit;->mNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftNightShot;

    invoke-virtual {v9, v1}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->setNeedSharpen(Z)V

    .line 50
    iget-object v9, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterNightShotPostProcessUnit;->mNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftNightShot;

    int-to-long v10, v3

    invoke-virtual {v9, v10, v11}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->setIntensity(J)V

    .line 51
    iget-object v9, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterNightShotPostProcessUnit;->mNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftNightShot;

    int-to-long v10, v4

    invoke-virtual {v9, v10, v11}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->setLightIntensity(J)V

    .line 52
    iget-object v9, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterNightShotPostProcessUnit;->mNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftNightShot;

    int-to-long v10, v6

    invoke-virtual {v9, v10, v11}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->setSaturation(J)V

    .line 54
    invoke-virtual {p1}, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->size()I

    move-result v8

    .line 55
    .local v8, "size":I
    sget-object v9, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterNightShotPostProcessUnit;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

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
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v8, :cond_2

    .line 58
    invoke-virtual {p1}, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->getImage()[B

    move-result-object v0

    .line 59
    .local v0, "data":[B
    if-nez v2, :cond_0

    .line 60
    const-string v9, "LowLight_Original_Yuv"

    iget v10, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterNightShotPostProcessUnit;->mImgWidth:I

    iget v11, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterNightShotPostProcessUnit;->mImgHeight:I

    const/16 v12, 0x11

    invoke-static {v0, v9, v10, v11, v12}, Lcom/android/camera/util/ImageDumpUtil;->dumpNV21([BLjava/lang/String;III)V

    .line 62
    :cond_0
    invoke-virtual {p0, v0}, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterNightShotPostProcessUnit;->inputImageInternal([B)Z

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 48
    .end local v0    # "data":[B
    .end local v1    # "flag":Z
    .end local v2    # "j":I
    .end local v8    # "size":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 65
    .restart local v1    # "flag":Z
    .restart local v2    # "j":I
    .restart local v8    # "size":I
    :cond_2
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterNightShotPostProcessUnit;->processReultImageInternal()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 66
    iget-object v9, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterNightShotPostProcessUnit;->mImgData:[B

    iget v10, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterNightShotPostProcessUnit;->mImgWidth:I

    iget v11, p0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterNightShotPostProcessUnit;->mImgHeight:I

    invoke-static {v9, v10, v11}, Lcom/android/camera/util/YuvToJpeg;->transByteData([BII)[B

    move-result-object v7

    .line 68
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sharpe_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-intensity_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-light_intensity_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-saturation_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/camera/util/ImageDumpUtil;->dumpJpegFile([BLjava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterNightShotPostProcessUnit;->releaseEngineInternal()V

    .line 75
    .end local v1    # "flag":Z
    .end local v2    # "j":I
    .end local v3    # "lowlight_intensity":I
    .end local v4    # "lowlight_light_intensity":I
    .end local v5    # "lowlight_need_sharpe":I
    .end local v6    # "lowlight_saturation":I
    .end local v8    # "size":I
    :cond_4
    return-object v7
.end method
