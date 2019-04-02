.class public Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$PostProcessImageEngineFactory;
.super Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;
.source "ImageEngineFactorySwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostProcessImageEngineFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;-><init>()V

    return-void
.end method


# virtual methods
.method public newBeautyImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIII)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
    .locals 8
    .param p1, "listener"    # Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requiredFrameNum"    # I
    .param p3, "infinite"    # Z
    .param p4, "isBackCam"    # Z
    .param p5, "imgWidth"    # I
    .param p6, "imgHeight"    # I
    .param p7, "imgFormat"    # I
    .param p8, "beautyLevel"    # I

    .prologue
    .line 377
    new-instance v0, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;

    if-nez p4, :cond_0

    const/4 v6, 0x1

    :goto_0
    move v1, p4

    move v2, p5

    move v3, p6

    move v4, p7

    move/from16 v5, p8

    invoke-direct/range {v0 .. v6}, Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;-><init>(ZIIIIZ)V

    .line 378
    .local v0, "unit":Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;
    new-instance v1, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, v0

    move v4, p2

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;-><init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$PostProcessUnit;IZII)V

    return-object v1

    .line 377
    .end local v0    # "unit":Lcom/thirdparty/arcsoft/engine/BeautyPostProcessUnit;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public newDCImageRefocusImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZIII[BIFILandroid/graphics/Point;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
    .locals 1
    .param p1, "listener"    # Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requiredFrameNum"    # I
    .param p3, "infinite"    # Z
    .param p4, "imgWidth"    # I
    .param p5, "imgHeight"    # I
    .param p6, "imgFormat"    # I
    .param p7, "calibrationData"    # [B
    .param p8, "dualCamLayoutOrientation"    # I
    .param p9, "horizontalViewAngle"    # F
    .param p10, "blurIntensity"    # I
    .param p11, "focusPosiiton"    # Landroid/graphics/Point;

    .prologue
    .line 312
    const/4 v0, 0x0

    return-object v0
.end method

.method public newDCNightShotImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZIIIII[B)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
    .locals 1
    .param p1, "listener"    # Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requiredFrameNum"    # I
    .param p3, "infinite"    # Z
    .param p4, "imgWidth"    # I
    .param p5, "imgHeight"    # I
    .param p6, "imgFormat"    # I
    .param p7, "bayerIso"    # I
    .param p8, "monoIso"    # I
    .param p9, "calibrationData"    # [B

    .prologue
    .line 307
    const/4 v0, 0x0

    return-object v0
.end method

.method public newDenoiseImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIIIZLandroid/hardware/camera2/CameraCharacteristics;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
    .locals 9
    .param p1, "listener"    # Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requiredFrameNum"    # I
    .param p3, "infinite"    # Z
    .param p4, "isBackCam"    # Z
    .param p5, "imgWidth"    # I
    .param p6, "imgHeight"    # I
    .param p7, "imgFormat"    # I
    .param p8, "isoValue"    # I
    .param p9, "isLongExposureTime"    # Z
    .param p10, "metadata"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, "unit":Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;
    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    new-instance v0, Lcom/thirdparty/arcsoft/engine/ConfigParameterDenoisePostProcessUnit;

    .end local v0    # "unit":Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;
    move v1, p4

    move v2, p5

    move v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/thirdparty/arcsoft/engine/ConfigParameterDenoisePostProcessUnit;-><init>(ZIIII)V

    .line 365
    .restart local v0    # "unit":Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;
    :goto_0
    new-instance v1, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, v0

    move v4, p2

    move v6, p5

    move v7, p6

    move/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;-><init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$PostProcessUnit;IZIIZ)V

    return-object v1

    .line 360
    :cond_0
    const-string v1, "true"

    invoke-static {}, Lcom/android/camera/app/CameraServicesImpl;->instance()Lcom/android/camera/app/CameraServicesImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraServicesImpl;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "_preferences_camera_sdn_lowlight_config"

    const-string v4, "sdn_control"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    new-instance v0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterDenoisePostProcessUnit;

    .end local v0    # "unit":Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;
    move v1, p4

    move v2, p5

    move v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterDenoisePostProcessUnit;-><init>(ZIIII)V

    .restart local v0    # "unit":Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;
    goto :goto_0

    .line 363
    :cond_1
    new-instance v0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;

    .end local v0    # "unit":Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;
    move v1, p4

    move v2, p5

    move v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;-><init>(ZIIII)V

    .restart local v0    # "unit":Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;
    goto :goto_0
.end method

.method public newDualSightImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;ILcom/android/camera/util/Size;Lcom/android/camera/util/Size;ILcom/android/camera/opengl/image/ImageGenerator;ZII)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
    .locals 1
    .param p1, "listener"    # Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requiredImgNum"    # I
    .param p3, "mainImgSize"    # Lcom/android/camera/util/Size;
    .param p4, "slaveImgSize"    # Lcom/android/camera/util/Size;
    .param p5, "deviceRotation"    # I
    .param p6, "imageGenerator"    # Lcom/android/camera/opengl/image/ImageGenerator;
    .param p7, "beautySetting"    # Z
    .param p8, "beautyLevelSetting"    # I
    .param p9, "imgFormat"    # I

    .prologue
    .line 406
    const/4 v0, 0x0

    return-object v0
.end method

.method public newHDRImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIILandroid/hardware/camera2/CameraCharacteristics;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
    .locals 8
    .param p1, "listener"    # Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requiredFrameNum"    # I
    .param p3, "infinite"    # Z
    .param p4, "isBackCam"    # Z
    .param p5, "imgWidth"    # I
    .param p6, "imgHeight"    # I
    .param p7, "imgFormat"    # I
    .param p8, "metadata"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 325
    new-instance v0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;

    move v1, p2

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;-><init>(IZIII)V

    .line 327
    .local v0, "unit":Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;
    new-instance v1, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, v0

    move v4, p2

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;-><init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$PostProcessUnit;IZII)V

    return-object v1
.end method

.method public newMegviiImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZIIIIILjava/lang/String;ZI)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
    .locals 1
    .param p1, "listener"    # Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requiredFrameNum"    # I
    .param p3, "infinite"    # Z
    .param p4, "imgWidth"    # I
    .param p5, "imgHeight"    # I
    .param p6, "screenOrientation"    # I
    .param p7, "imgFormat"    # I
    .param p8, "effectMode"    # I
    .param p9, "effectSetting"    # Ljava/lang/String;
    .param p10, "beautySetting"    # Z
    .param p11, "beautyLevelSetting"    # I

    .prologue
    .line 410
    const/4 v0, 0x0

    return-object v0
.end method

.method public newNightShotImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIIILandroid/hardware/camera2/CameraCharacteristics;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
    .locals 8
    .param p1, "listener"    # Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requiredFrameNum"    # I
    .param p3, "infinite"    # Z
    .param p4, "isBackCam"    # Z
    .param p5, "imgWidth"    # I
    .param p6, "imgHeight"    # I
    .param p7, "imgFormat"    # I
    .param p8, "iso"    # I
    .param p9, "metadata"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "unit":Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;
    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    new-instance v0, Lcom/thirdparty/arcsoft/engine/ConfigParameterNightShotPostProcessUnit;

    .end local v0    # "unit":Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;
    move v1, p2

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/thirdparty/arcsoft/engine/ConfigParameterNightShotPostProcessUnit;-><init>(IZIIII)V

    .line 302
    .restart local v0    # "unit":Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;
    :goto_0
    new-instance v1, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, v0

    move v4, p2

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;-><init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$PostProcessUnit;IZII)V

    return-object v1

    .line 297
    :cond_0
    const-string v1, "true"

    invoke-static {}, Lcom/android/camera/app/CameraServicesImpl;->instance()Lcom/android/camera/app/CameraServicesImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraServicesImpl;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "_preferences_camera_sdn_lowlight_config"

    const-string v4, "lowlight_control"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 298
    new-instance v0, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterNightShotPostProcessUnit;

    .end local v0    # "unit":Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;
    move v1, p2

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/thirdparty/arcsoft/engine/AdbConfigParameterNightShotPostProcessUnit;-><init>(IZIIII)V

    .restart local v0    # "unit":Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;
    goto :goto_0

    .line 300
    :cond_1
    new-instance v0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;

    .end local v0    # "unit":Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;
    move v1, p2

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;-><init>(IZIIII)V

    .restart local v0    # "unit":Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;
    goto :goto_0
.end method

.method public newPanoramaImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IIIFFLcom/android/camera/burst/BurstController;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
    .locals 1
    .param p1, "listener"    # Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "imgWidth"    # I
    .param p3, "imgHeight"    # I
    .param p4, "imgFormat"    # I
    .param p5, "horizontalViewAngle"    # F
    .param p6, "verticalViewAngle"    # F
    .param p7, "burstController"    # Lcom/android/camera/burst/BurstController;

    .prologue
    .line 401
    const/4 v0, 0x0

    return-object v0
.end method

.method public newPicSelfieImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIIZII)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
    .locals 1
    .param p1, "listener"    # Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requiredFrameNum"    # I
    .param p3, "infinite"    # Z
    .param p4, "isBackCam"    # Z
    .param p5, "imgWidth"    # I
    .param p6, "imgHeight"    # I
    .param p7, "imgFormat"    # I
    .param p8, "beautySetting"    # Z
    .param p9, "beautyhLevel"    # I
    .param p10, "screenOrientation"    # I

    .prologue
    .line 396
    const/4 v0, 0x0

    return-object v0
.end method

.method public newSRImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIIILandroid/hardware/camera2/CameraCharacteristics;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
    .locals 8
    .param p1, "listener"    # Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requiredFrameNum"    # I
    .param p3, "infinite"    # Z
    .param p4, "isBackCam"    # Z
    .param p5, "imgWidth"    # I
    .param p6, "imgHeight"    # I
    .param p7, "imgFormat"    # I
    .param p8, "iso"    # I
    .param p9, "metadata"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 340
    new-instance v0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;

    move v1, p2

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;-><init>(IZIII)V

    .line 342
    .local v0, "unit":Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;
    new-instance v1, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, v0

    move v4, p2

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;-><init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$PostProcessUnit;IZII)V

    return-object v1
.end method

.method public newUltraWideImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIII)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
    .locals 8
    .param p1, "listener"    # Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requiredFrameNum"    # I
    .param p3, "infinite"    # Z
    .param p4, "isBackCam"    # Z
    .param p5, "imgWidth"    # I
    .param p6, "imgHeight"    # I
    .param p7, "imgFormat"    # I
    .param p8, "currentISo"    # I

    .prologue
    .line 390
    new-instance v0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;

    if-nez p4, :cond_0

    const/4 v6, 0x1

    :goto_0
    move v1, p4

    move v2, p5

    move v3, p6

    move v4, p7

    move/from16 v5, p8

    invoke-direct/range {v0 .. v6}, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;-><init>(ZIIIIZ)V

    .line 391
    .local v0, "unit":Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;
    new-instance v1, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, v0

    move v4, p2

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;-><init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$PostProcessUnit;IZII)V

    return-object v1

    .line 390
    .end local v0    # "unit":Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method
