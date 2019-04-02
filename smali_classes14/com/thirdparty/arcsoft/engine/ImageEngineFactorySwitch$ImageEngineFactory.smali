.class public Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactory;
.super Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;
.source "ImageEngineFactorySwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageEngineFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;-><init>()V

    return-void
.end method


# virtual methods
.method public newBeautyImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIII)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
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
    .param p8, "beautyLevel"    # I

    .prologue
    .line 245
    new-instance v0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;-><init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIII)V

    return-object v0
.end method

.method public newDCImageRefocusImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZIII[BIFILandroid/graphics/Point;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
    .locals 12
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
    .line 178
    new-instance v0, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/thirdparty/arcsoft/engine/DCImageRefocusImageEngine;-><init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZIII[BIFILandroid/graphics/Point;)V

    return-object v0
.end method

.method public newDCNightShotImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZIIIII[B)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
    .locals 10
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
    .line 173
    new-instance v0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;-><init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZIIIII[B)V

    return-object v0
.end method

.method public newDenoiseImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIIIZLandroid/hardware/camera2/CameraCharacteristics;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
    .locals 10
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
    .line 232
    new-instance v0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;-><init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIIILandroid/hardware/camera2/CameraCharacteristics;)V

    return-object v0
.end method

.method public newDualSightImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;ILcom/android/camera/util/Size;Lcom/android/camera/util/Size;ILcom/android/camera/opengl/image/ImageGenerator;ZII)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
    .locals 11
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
    .line 275
    new-instance v0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;

    const/4 v3, 0x0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;-><init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZLcom/android/camera/util/Size;Lcom/android/camera/util/Size;ILcom/android/camera/opengl/image/ImageGenerator;ZII)V

    return-object v0
.end method

.method public newHDRImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIILandroid/hardware/camera2/CameraCharacteristics;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
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
    .param p8, "metadata"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 190
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isUseMorphoHDR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    new-instance v0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;-><init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIILandroid/hardware/camera2/CameraCharacteristics;)V

    .line 194
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;-><init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIII)V

    goto :goto_0
.end method

.method public newMegviiImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZIIIIILjava/lang/String;ZI)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
    .locals 12
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
    .line 279
    new-instance v0, Lcom/thirdparty/megvii/engine/MegviiImageEngine;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/thirdparty/megvii/engine/MegviiImageEngine;-><init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZIIIIILjava/lang/String;ZI)V

    return-object v0
.end method

.method public newNightShotImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIIILandroid/hardware/camera2/CameraCharacteristics;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
    .locals 10
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
    .line 167
    new-instance v0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;-><init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIIILandroid/hardware/camera2/CameraCharacteristics;)V

    return-object v0
.end method

.method public newPanoramaImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IIIFFLcom/android/camera/burst/BurstController;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
    .locals 10
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
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 270
    new-instance v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;

    const/4 v2, 0x1

    check-cast p7, Lcom/android/camera/panorama/PanoBurstController;

    .end local p7    # "burstController":Lcom/android/camera/burst/BurstController;
    invoke-virtual/range {p7 .. p7}, Lcom/android/camera/panorama/PanoBurstController;->getPanoramaCallback()Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

    move-result-object v8

    const/4 v9, 0x1

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;-><init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;ZIIIFFLcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;Z)V

    return-object v0
.end method

.method public newPicSelfieImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIIZII)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
    .locals 11
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
    .param p9, "beautyLevel"    # I
    .param p10, "screenOrientation"    # I

    .prologue
    .line 264
    new-instance v0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;-><init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIIZII)V

    return-object v0
.end method

.method public newSRImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIIILandroid/hardware/camera2/CameraCharacteristics;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
    .locals 10
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
    .line 210
    new-instance v0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;-><init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIIILandroid/hardware/camera2/CameraCharacteristics;)V

    return-object v0
.end method

.method public newUltraWideImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIII)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
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
    .param p8, "currentIso"    # I

    .prologue
    .line 258
    new-instance v0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;-><init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIII)V

    return-object v0
.end method
