.class public Lcom/android/camera/settings/ResolutionSetting;
.super Ljava/lang/Object;
.source "ResolutionSetting.java"


# static fields
.field public static final DEFAULT_PANORAMA_QUALITY:Ljava/lang/String; = "middle"

.field public static final EXTRA_VIDEO_QUALITY_UNAVAILABLE:I = -0x1

.field public static final FEATURE_PANORAMA_QUALITY:Ljava/lang/String; = "camera.panorama.quality"

.field public static final PANORAMA_QUALITY_HIGH:Ljava/lang/String; = "high"

.field public static final PANORAMA_QUALITY_HIGH_INT:I = 0x7a1200

.field public static final PANORAMA_QUALITY_LOW:Ljava/lang/String; = "low"

.field public static final PANORAMA_QUALITY_LOW_INT:I = 0x1e8480

.field public static final PANORAMA_QUALITY_MIDDLE:Ljava/lang/String; = "middle"

.field public static final PANORAMA_QUALITY_MIDDLE_INT:I = 0x4c4b40

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

.field private final mResolutionBlackListBack:Ljava/lang/String;

.field private final mResolutionBlackListFront:Ljava/lang/String;

.field private final mSettingsManager:Lcom/android/camera/settings/SettingsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ResolutionSettings"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/settings/ResolutionSetting;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/one/OneCameraManager;Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "oneCameraManager"    # Lcom/android/camera/one/OneCameraManager;
    .param p3, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/camera/settings/ResolutionSetting;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    .line 71
    iput-object p2, p0, Lcom/android/camera/settings/ResolutionSetting;->mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

    .line 73
    invoke-static {p3}, Lcom/android/camera/util/GservicesHelper;->getBlacklistedResolutionsBack(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/settings/ResolutionSetting;->mResolutionBlackListBack:Ljava/lang/String;

    .line 74
    invoke-static {p3}, Lcom/android/camera/util/GservicesHelper;->getBlacklistedResolutionsFront(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/settings/ResolutionSetting;->mResolutionBlackListFront:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public getBokehPictureSize(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;
    .locals 4
    .param p1, "cameraId"    # Lcom/android/camera/device/CameraId;
    .param p2, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/one/OneCameraAccessException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-static {p2}, Lcom/android/camera/util/ProductModelUtil;->useMax4x3PictureSizeForBokeh(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/settings/ResolutionSetting;->getPictureSize(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;

    move-result-object v0

    .line 261
    :goto_0
    return-object v0

    .line 256
    :cond_0
    invoke-static {p2}, Lcom/android/camera/util/ProductModelUtil;->getPictureSizeForBokeh(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;

    move-result-object v0

    .line 257
    .local v0, "pictureSize":Lcom/android/camera/util/Size;
    if-nez v0, :cond_1

    .line 258
    sget-object v1, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_4x3:Lcom/android/camera/exif/Rational;

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/camera/settings/ResolutionSetting;->getPictureSize(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/exif/Rational;)Lcom/android/camera/util/Size;

    move-result-object v0

    .line 260
    :cond_1
    sget-object v1, Lcom/android/camera/settings/ResolutionSetting;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBokehPictureSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPIPPictureSize(Lcom/android/camera/one/OneCamera$Facing;Ljava/util/List;Lcom/android/camera/exif/Rational;)Lcom/android/camera/util/Size;
    .locals 7
    .param p1, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;
    .param p3, "aspectRatio"    # Lcom/android/camera/exif/Rational;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/OneCamera$Facing;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;",
            "Lcom/android/camera/exif/Rational;",
            ")",
            "Lcom/android/camera/util/Size;"
        }
    .end annotation

    .prologue
    .line 513
    .local p2, "pictureSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    const-string v0, ""

    .line 514
    .local v0, "blacklist":Ljava/lang/String;
    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p1, v4, :cond_1

    .line 515
    iget-object v0, p0, Lcom/android/camera/settings/ResolutionSetting;->mResolutionBlackListBack:Ljava/lang/String;

    .line 520
    :cond_0
    :goto_0
    invoke-static {p2, v0}, Lcom/android/camera/settings/ResolutionUtil;->filterBlackListedSizes(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 521
    .local v3, "supportedPictureSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    invoke-static {p3, v3}, Lcom/android/camera/settings/ResolutionUtil;->getLargestPictureSize(Lcom/android/camera/exif/Rational;Ljava/util/List;)Lcom/android/camera/util/Size;

    move-result-object v1

    .line 523
    .local v1, "fallbackPictureSize":Lcom/android/camera/util/Size;
    move-object v2, v1

    .line 524
    .local v2, "pictureSize":Lcom/android/camera/util/Size;
    sget-object v4, Lcom/android/camera/settings/ResolutionSetting;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PIP Picture size. Choose "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 526
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->width()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->height()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 528
    return-object v2

    .line 516
    .end local v1    # "fallbackPictureSize":Lcom/android/camera/util/Size;
    .end local v2    # "pictureSize":Lcom/android/camera/util/Size;
    .end local v3    # "supportedPictureSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :cond_1
    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p1, v4, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/camera/settings/ResolutionSetting;->mResolutionBlackListFront:Ljava/lang/String;

    goto :goto_0

    .line 527
    .restart local v1    # "fallbackPictureSize":Lcom/android/camera/util/Size;
    .restart local v2    # "pictureSize":Lcom/android/camera/util/Size;
    .restart local v3    # "supportedPictureSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getPanoramaPictureSize(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;
    .locals 24
    .param p1, "cameraId"    # Lcom/android/camera/device/CameraId;
    .param p2, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/one/OneCameraAccessException;
        }
    .end annotation

    .prologue
    .line 325
    const-string v9, "pref_camera_panorama_size_key"

    .line 327
    .local v9, "panoramaSizeSettingKey":Ljava/lang/String;
    const/4 v12, 0x0

    .line 329
    .local v12, "pictureSize":Lcom/android/camera/util/Size;
    const-string v4, ""

    .line 330
    .local v4, "blacklist":Ljava/lang/String;
    sget-object v18, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 331
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/settings/ResolutionSetting;->mResolutionBlackListBack:Ljava/lang/String;

    .line 338
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/settings/ResolutionSetting;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    move-object/from16 v18, v0

    const-string v19, "default_scope"

    const-string v20, "pref_camera_panorama_size_key"

    .line 339
    invoke-virtual/range {v18 .. v20}, Lcom/android/camera/settings/SettingsManager;->isSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 340
    .local v7, "isPanoramaSizeSettingSet":Z
    const/4 v6, 0x0

    .line 343
    .local v6, "isPanoramaSizeBlacklisted":Z
    if-eqz v7, :cond_2

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/settings/ResolutionSetting;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    move-object/from16 v18, v0

    const-string v19, "default_scope"

    const-string v20, "pref_camera_panorama_size_key"

    .line 345
    invoke-virtual/range {v18 .. v20}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 344
    invoke-static/range {v18 .. v18}, Lcom/android/camera/settings/SettingsUtil;->sizeFromSettingString(Ljava/lang/String;)Lcom/android/camera/util/Size;

    move-result-object v12

    .line 347
    if-eqz v12, :cond_1

    .line 348
    invoke-static {v12, v4}, Lcom/android/camera/settings/ResolutionUtil;->isBlackListed(Lcom/android/camera/util/Size;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    :cond_1
    const/4 v6, 0x1

    .line 357
    :cond_2
    :goto_1
    if-eqz v12, :cond_7

    .line 358
    invoke-virtual {v12}, Lcom/android/camera/util/Size;->width()I

    move-result v18

    if-lez v18, :cond_7

    invoke-virtual {v12}, Lcom/android/camera/util/Size;->height()I

    move-result v18

    if-lez v18, :cond_7

    const/4 v8, 0x1

    .line 360
    .local v8, "isPictureSizeFromSettingsValid":Z
    :goto_2
    if-eqz v7, :cond_3

    if-nez v6, :cond_3

    if-nez v8, :cond_c

    .line 361
    :cond_3
    const-string v18, "camera.panorama.quality"

    const-string v19, "middle"

    invoke-static/range {v18 .. v19}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 362
    .local v13, "quality":Ljava/lang/String;
    sget-object v18, Lcom/android/camera/settings/ResolutionSetting;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Panorama size setting is not set. Choose size with "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 365
    const-string v18, "high"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 366
    const v16, 0x7a1200

    .line 373
    .local v16, "targetArea":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/settings/ResolutionSetting;->mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

    move-object/from16 v18, v0

    .line 374
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v5

    .line 376
    .local v5, "cameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    const/16 v18, 0x23

    .line 378
    move/from16 v0, v18

    invoke-interface {v5, v0}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedPictureSizes(I)Ljava/util/List;

    move-result-object v18

    .line 377
    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lcom/android/camera/settings/ResolutionUtil;->filterBlackListedSizes(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 380
    .local v15, "supportedPictureSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    sget-object v17, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_4x3:Lcom/android/camera/exif/Rational;

    .line 381
    .local v17, "targetAspectRatio":Lcom/android/camera/exif/Rational;
    const-wide v10, 0x7fffffffffffffffL

    .line 382
    .local v10, "min_diff":J
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_4
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/util/Size;

    .line 383
    .local v14, "size":Lcom/android/camera/util/Size;
    invoke-static {v14}, Lcom/android/camera/settings/ResolutionUtil;->getAspectRatio(Lcom/android/camera/util/Size;)Lcom/android/camera/exif/Rational;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/camera/settings/ResolutionUtil;->hasSameAspectRatio(Lcom/android/camera/exif/Rational;Lcom/android/camera/exif/Rational;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 384
    invoke-virtual {v14}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v20

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 385
    .local v2, "area_diff":J
    cmp-long v19, v2, v10

    if-gez v19, :cond_4

    .line 386
    move-wide v10, v2

    .line 387
    move-object v12, v14

    goto :goto_4

    .line 332
    .end local v2    # "area_diff":J
    .end local v5    # "cameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    .end local v6    # "isPanoramaSizeBlacklisted":Z
    .end local v7    # "isPanoramaSizeSettingSet":Z
    .end local v8    # "isPictureSizeFromSettingsValid":Z
    .end local v10    # "min_diff":J
    .end local v13    # "quality":Ljava/lang/String;
    .end local v14    # "size":Lcom/android/camera/util/Size;
    .end local v15    # "supportedPictureSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    .end local v16    # "targetArea":I
    .end local v17    # "targetAspectRatio":Lcom/android/camera/exif/Rational;
    :cond_5
    sget-object v18, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 333
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/settings/ResolutionSetting;->mResolutionBlackListFront:Ljava/lang/String;

    goto/16 :goto_0

    .line 348
    .restart local v6    # "isPanoramaSizeBlacklisted":Z
    .restart local v7    # "isPanoramaSizeSettingSet":Z
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 358
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 367
    .restart local v8    # "isPictureSizeFromSettingsValid":Z
    .restart local v13    # "quality":Ljava/lang/String;
    :cond_8
    const-string v18, "high"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 368
    const v16, 0x4c4b40

    .restart local v16    # "targetArea":I
    goto :goto_3

    .line 370
    .end local v16    # "targetArea":I
    :cond_9
    const v16, 0x1e8480

    .restart local v16    # "targetArea":I
    goto :goto_3

    .line 392
    .restart local v5    # "cameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    .restart local v10    # "min_diff":J
    .restart local v15    # "supportedPictureSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    .restart local v17    # "targetAspectRatio":Lcom/android/camera/exif/Rational;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/settings/ResolutionSetting;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    move-object/from16 v18, v0

    const-string v19, "default_scope"

    const-string v20, "pref_camera_panorama_size_key"

    .line 395
    invoke-static {v12}, Lcom/android/camera/settings/SettingsUtil;->sizeToSettingString(Lcom/android/camera/util/Size;)Ljava/lang/String;

    move-result-object v21

    .line 392
    invoke-virtual/range {v18 .. v21}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    sget-object v18, Lcom/android/camera/settings/ResolutionSetting;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Choosed size for panorama : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 398
    invoke-static {v12}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    invoke-virtual {v12}, Lcom/android/camera/util/Size;->width()I

    move-result v18

    if-lez v18, :cond_b

    .line 400
    invoke-virtual {v12}, Lcom/android/camera/util/Size;->height()I

    move-result v18

    if-lez v18, :cond_b

    const/16 v18, 0x1

    .line 399
    :goto_5
    invoke-static/range {v18 .. v18}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 405
    .end local v5    # "cameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    .end local v10    # "min_diff":J
    .end local v13    # "quality":Ljava/lang/String;
    .end local v15    # "supportedPictureSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    .end local v16    # "targetArea":I
    .end local v17    # "targetAspectRatio":Lcom/android/camera/exif/Rational;
    :goto_6
    sget-object v18, Lcom/android/camera/settings/ResolutionSetting;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getPanoramaPictureSize = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 406
    return-object v12

    .line 400
    .restart local v5    # "cameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    .restart local v10    # "min_diff":J
    .restart local v13    # "quality":Ljava/lang/String;
    .restart local v15    # "supportedPictureSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    .restart local v16    # "targetArea":I
    .restart local v17    # "targetAspectRatio":Lcom/android/camera/exif/Rational;
    :cond_b
    const/16 v18, 0x0

    goto :goto_5

    .line 402
    .end local v5    # "cameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    .end local v10    # "min_diff":J
    .end local v13    # "quality":Ljava/lang/String;
    .end local v15    # "supportedPictureSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    .end local v16    # "targetArea":I
    .end local v17    # "targetAspectRatio":Lcom/android/camera/exif/Rational;
    :cond_c
    sget-object v18, Lcom/android/camera/settings/ResolutionSetting;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Choosed size for panorama : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public getPictureAspectRatio(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/exif/Rational;
    .locals 6
    .param p1, "cameraId"    # Lcom/android/camera/device/CameraId;
    .param p2, "facing"    # Lcom/android/camera/one/OneCamera$Facing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/one/OneCameraAccessException;
        }
    .end annotation

    .prologue
    .line 503
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/settings/ResolutionSetting;->getPictureSize(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;

    move-result-object v0

    .line 504
    .local v0, "pictureSize":Lcom/android/camera/util/Size;
    new-instance v1, Lcom/android/camera/exif/Rational;

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    return-object v1
.end method

.method public getPictureSize(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;
    .locals 16
    .param p1, "cameraId"    # Lcom/android/camera/device/CameraId;
    .param p2, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/one/OneCameraAccessException;
        }
    .end annotation

    .prologue
    .line 127
    sget-object v12, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, p2

    if-ne v0, v12, :cond_5

    const-string v10, "pref_camera_picturesize_front_key"

    .line 130
    .local v10, "pictureSizeSettingKey":Ljava/lang/String;
    :goto_0
    const/4 v9, 0x0

    .line 132
    .local v9, "pictureSize":Lcom/android/camera/util/Size;
    const-string v3, ""

    .line 133
    .local v3, "blacklist":Ljava/lang/String;
    sget-object v12, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, p2

    if-ne v0, v12, :cond_6

    .line 134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/settings/ResolutionSetting;->mResolutionBlackListBack:Ljava/lang/String;

    .line 141
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/settings/ResolutionSetting;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v13, "default_scope"

    .line 142
    invoke-virtual {v12, v13, v10}, Lcom/android/camera/settings/SettingsManager;->isSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 143
    .local v8, "isPictureSizeSettingSet":Z
    const/4 v6, 0x0

    .line 146
    .local v6, "isPictureSizeBlacklisted":Z
    if-eqz v8, :cond_2

    .line 147
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/settings/ResolutionSetting;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v13, "default_scope"

    .line 148
    invoke-virtual {v12, v13, v10}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 147
    invoke-static {v12}, Lcom/android/camera/settings/SettingsUtil;->sizeFromSettingString(Ljava/lang/String;)Lcom/android/camera/util/Size;

    move-result-object v9

    .line 150
    if-eqz v9, :cond_1

    .line 151
    invoke-static {v9, v3}, Lcom/android/camera/settings/ResolutionUtil;->isBlackListed(Lcom/android/camera/util/Size;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 152
    invoke-static {v9}, Lcom/android/camera/settings/ResolutionUtil;->area(Lcom/android/camera/util/Size;)I

    move-result v12

    int-to-long v12, v12

    const-wide/32 v14, 0x1e00000

    cmp-long v12, v12, v14

    if-lez v12, :cond_7

    :cond_1
    const/4 v6, 0x1

    .line 161
    :cond_2
    :goto_2
    if-eqz v9, :cond_8

    .line 162
    invoke-virtual {v9}, Lcom/android/camera/util/Size;->width()I

    move-result v12

    if-lez v12, :cond_8

    invoke-virtual {v9}, Lcom/android/camera/util/Size;->height()I

    move-result v12

    if-lez v12, :cond_8

    const/4 v7, 0x1

    .line 163
    .local v7, "isPictureSizeFromSettingsValid":Z
    :goto_3
    if-eqz v8, :cond_3

    if-nez v6, :cond_3

    if-nez v7, :cond_4

    .line 164
    :cond_3
    sget-object v2, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_4x3:Lcom/android/camera/exif/Rational;

    .line 166
    .local v2, "aspectRatio":Lcom/android/camera/exif/Rational;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/settings/ResolutionSetting;->mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

    .line 167
    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v4

    .line 169
    .local v4, "cameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    const/16 v12, 0x100

    .line 171
    invoke-interface {v4, v12}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedPictureSizes(I)Ljava/util/List;

    move-result-object v12

    .line 170
    invoke-static {v12, v3}, Lcom/android/camera/settings/ResolutionUtil;->filterBlackListedSizes(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 174
    .local v11, "supportedPictureSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    invoke-static {v2, v11}, Lcom/android/camera/settings/ResolutionUtil;->getFilterLargestPictureSize(Lcom/android/camera/exif/Rational;Ljava/util/List;)Lcom/android/camera/util/Size;

    move-result-object v5

    .line 175
    .local v5, "fallbackPictureSize":Lcom/android/camera/util/Size;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/settings/ResolutionSetting;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v13, "default_scope"

    .line 178
    invoke-static {v5}, Lcom/android/camera/settings/SettingsUtil;->sizeToSettingString(Lcom/android/camera/util/Size;)Ljava/lang/String;

    move-result-object v14

    .line 175
    invoke-virtual {v12, v13, v10, v14}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    move-object v9, v5

    .line 180
    sget-object v12, Lcom/android/camera/settings/ResolutionSetting;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Picture size setting is not set. Choose "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 182
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-virtual {v5}, Lcom/android/camera/util/Size;->width()I

    move-result v12

    if-lez v12, :cond_9

    .line 184
    invoke-virtual {v5}, Lcom/android/camera/util/Size;->height()I

    move-result v12

    if-lez v12, :cond_9

    const/4 v12, 0x1

    .line 183
    :goto_4
    invoke-static {v12}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 186
    .end local v2    # "aspectRatio":Lcom/android/camera/exif/Rational;
    .end local v4    # "cameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    .end local v5    # "fallbackPictureSize":Lcom/android/camera/util/Size;
    .end local v11    # "supportedPictureSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :cond_4
    sget-object v12, Lcom/android/camera/settings/ResolutionSetting;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getPictureSize = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 187
    return-object v9

    .line 127
    .end local v3    # "blacklist":Ljava/lang/String;
    .end local v6    # "isPictureSizeBlacklisted":Z
    .end local v7    # "isPictureSizeFromSettingsValid":Z
    .end local v8    # "isPictureSizeSettingSet":Z
    .end local v9    # "pictureSize":Lcom/android/camera/util/Size;
    .end local v10    # "pictureSizeSettingKey":Ljava/lang/String;
    :cond_5
    const-string v10, "pref_camera_picturesize_back_key"

    goto/16 :goto_0

    .line 135
    .restart local v3    # "blacklist":Ljava/lang/String;
    .restart local v9    # "pictureSize":Lcom/android/camera/util/Size;
    .restart local v10    # "pictureSizeSettingKey":Ljava/lang/String;
    :cond_6
    sget-object v12, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, p2

    if-ne v0, v12, :cond_0

    .line 136
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/settings/ResolutionSetting;->mResolutionBlackListFront:Ljava/lang/String;

    goto/16 :goto_1

    .line 152
    .restart local v6    # "isPictureSizeBlacklisted":Z
    .restart local v8    # "isPictureSizeSettingSet":Z
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 162
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 184
    .restart local v2    # "aspectRatio":Lcom/android/camera/exif/Rational;
    .restart local v4    # "cameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    .restart local v5    # "fallbackPictureSize":Lcom/android/camera/util/Size;
    .restart local v7    # "isPictureSizeFromSettingsValid":Z
    .restart local v11    # "supportedPictureSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :cond_9
    const/4 v12, 0x0

    goto :goto_4
.end method

.method public getPictureSize(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/exif/Rational;)Lcom/android/camera/util/Size;
    .locals 8
    .param p1, "cameraId"    # Lcom/android/camera/device/CameraId;
    .param p2, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;
    .param p3, "aspectRatio"    # Lcom/android/camera/exif/Rational;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/one/OneCameraAccessException;
        }
    .end annotation

    .prologue
    .line 191
    const/4 v3, 0x0

    .line 192
    .local v3, "pictureSize":Lcom/android/camera/util/Size;
    const-string v0, ""

    .line 193
    .local v0, "blacklist":Ljava/lang/String;
    sget-object v5, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p2, v5, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/camera/settings/ResolutionSetting;->mResolutionBlackListBack:Ljava/lang/String;

    .line 198
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/camera/settings/ResolutionSetting;->mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

    .line 199
    invoke-interface {v5, p1}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v1

    .line 201
    .local v1, "cameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    const/16 v5, 0x100

    .line 203
    invoke-interface {v1, v5}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedPictureSizes(I)Ljava/util/List;

    move-result-object v5

    .line 202
    invoke-static {v5, v0}, Lcom/android/camera/settings/ResolutionUtil;->filterBlackListedSizes(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 206
    .local v4, "supportedPictureSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    invoke-static {p3, v4}, Lcom/android/camera/settings/ResolutionUtil;->getFilterLargestPictureSize(Lcom/android/camera/exif/Rational;Ljava/util/List;)Lcom/android/camera/util/Size;

    move-result-object v2

    .line 208
    .local v2, "fallbackPictureSize":Lcom/android/camera/util/Size;
    move-object v3, v2

    .line 209
    sget-object v5, Lcom/android/camera/settings/ResolutionSetting;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Picture size setting is not set. Choose "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 211
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v5

    if-lez v5, :cond_2

    .line 213
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->height()I

    move-result v5

    if-lez v5, :cond_2

    const/4 v5, 0x1

    .line 212
    :goto_1
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 214
    sget-object v5, Lcom/android/camera/settings/ResolutionSetting;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPictureSize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 215
    return-object v3

    .line 195
    .end local v1    # "cameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    .end local v2    # "fallbackPictureSize":Lcom/android/camera/util/Size;
    .end local v4    # "supportedPictureSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :cond_1
    sget-object v5, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p2, v5, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/camera/settings/ResolutionSetting;->mResolutionBlackListFront:Ljava/lang/String;

    goto :goto_0

    .line 213
    .restart local v1    # "cameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    .restart local v2    # "fallbackPictureSize":Lcom/android/camera/util/Size;
    .restart local v4    # "supportedPictureSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public getSquarePictureSize(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;
    .locals 13
    .param p1, "cameraId"    # Lcom/android/camera/device/CameraId;
    .param p2, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/one/OneCameraAccessException;
        }
    .end annotation

    .prologue
    .line 267
    sget-object v10, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p2, v10, :cond_5

    const-string v8, "pref_camera_squaresize_front_key"

    .line 270
    .local v8, "squareSizeSettingKey":Ljava/lang/String;
    :goto_0
    const/4 v7, 0x0

    .line 272
    .local v7, "squareSize":Lcom/android/camera/util/Size;
    const-string v1, ""

    .line 273
    .local v1, "blacklist":Ljava/lang/String;
    sget-object v10, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p2, v10, :cond_6

    .line 274
    iget-object v1, p0, Lcom/android/camera/settings/ResolutionSetting;->mResolutionBlackListBack:Ljava/lang/String;

    .line 279
    :cond_0
    :goto_1
    iget-object v10, p0, Lcom/android/camera/settings/ResolutionSetting;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v11, "default_scope"

    .line 280
    invoke-virtual {v10, v11, v8}, Lcom/android/camera/settings/SettingsManager;->isSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 281
    .local v6, "isSquareSizeSettingSet":Z
    const/4 v4, 0x0

    .line 283
    .local v4, "isSquareSizeBlacklisted":Z
    if-eqz v6, :cond_2

    .line 284
    iget-object v10, p0, Lcom/android/camera/settings/ResolutionSetting;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v11, "default_scope"

    .line 285
    invoke-virtual {v10, v11, v8}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 284
    invoke-static {v10}, Lcom/android/camera/settings/SettingsUtil;->sizeFromSettingString(Ljava/lang/String;)Lcom/android/camera/util/Size;

    move-result-object v7

    .line 287
    if-eqz v7, :cond_1

    .line 288
    invoke-static {v7, v1}, Lcom/android/camera/settings/ResolutionUtil;->isBlackListed(Lcom/android/camera/util/Size;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_1
    const/4 v4, 0x1

    .line 291
    :cond_2
    :goto_2
    if-eqz v7, :cond_8

    .line 292
    invoke-virtual {v7}, Lcom/android/camera/util/Size;->width()I

    move-result v10

    if-lez v10, :cond_8

    invoke-virtual {v7}, Lcom/android/camera/util/Size;->height()I

    move-result v10

    if-lez v10, :cond_8

    const/4 v5, 0x1

    .line 294
    .local v5, "isSquareSizeFromSettingsValid":Z
    :goto_3
    if-eqz v6, :cond_3

    if-nez v4, :cond_3

    if-nez v5, :cond_4

    .line 295
    :cond_3
    sget-object v0, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_1x1:Lcom/android/camera/exif/Rational;

    .line 297
    .local v0, "aspectRatio":Lcom/android/camera/exif/Rational;
    iget-object v10, p0, Lcom/android/camera/settings/ResolutionSetting;->mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

    .line 298
    invoke-interface {v10, p1}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v2

    .line 300
    .local v2, "cameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    const/16 v10, 0x100

    .line 302
    invoke-interface {v2, v10}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedPictureSizes(I)Ljava/util/List;

    move-result-object v10

    .line 301
    invoke-static {v10, v1}, Lcom/android/camera/settings/ResolutionUtil;->filterBlackListedSizes(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 305
    .local v9, "supportedPictureSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    invoke-static {v0, v9}, Lcom/android/camera/settings/ResolutionUtil;->getLargestPictureSize(Lcom/android/camera/exif/Rational;Ljava/util/List;)Lcom/android/camera/util/Size;

    move-result-object v3

    .line 306
    .local v3, "fallbackPictureSize":Lcom/android/camera/util/Size;
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/android/camera/util/Size;->width()I

    move-result v10

    if-lez v10, :cond_9

    invoke-virtual {v3}, Lcom/android/camera/util/Size;->height()I

    move-result v10

    if-lez v10, :cond_9

    .line 307
    iget-object v10, p0, Lcom/android/camera/settings/ResolutionSetting;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v11, "default_scope"

    .line 310
    invoke-static {v3}, Lcom/android/camera/settings/SettingsUtil;->sizeToSettingString(Lcom/android/camera/util/Size;)Ljava/lang/String;

    move-result-object v12

    .line 307
    invoke-virtual {v10, v11, v8, v12}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    move-object v7, v3

    .line 312
    sget-object v10, Lcom/android/camera/settings/ResolutionSetting;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Square size setting is not set. Choose "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 319
    .end local v0    # "aspectRatio":Lcom/android/camera/exif/Rational;
    .end local v2    # "cameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    .end local v3    # "fallbackPictureSize":Lcom/android/camera/util/Size;
    .end local v9    # "supportedPictureSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :cond_4
    :goto_4
    sget-object v10, Lcom/android/camera/settings/ResolutionSetting;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getSquarePictureSize = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 320
    if-eqz v7, :cond_a

    .end local v7    # "squareSize":Lcom/android/camera/util/Size;
    :goto_5
    return-object v7

    .line 267
    .end local v1    # "blacklist":Ljava/lang/String;
    .end local v4    # "isSquareSizeBlacklisted":Z
    .end local v5    # "isSquareSizeFromSettingsValid":Z
    .end local v6    # "isSquareSizeSettingSet":Z
    .end local v8    # "squareSizeSettingKey":Ljava/lang/String;
    :cond_5
    const-string v8, "pref_camera_squaresize_back_key"

    goto/16 :goto_0

    .line 275
    .restart local v1    # "blacklist":Ljava/lang/String;
    .restart local v7    # "squareSize":Lcom/android/camera/util/Size;
    .restart local v8    # "squareSizeSettingKey":Ljava/lang/String;
    :cond_6
    sget-object v10, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p2, v10, :cond_0

    .line 276
    iget-object v1, p0, Lcom/android/camera/settings/ResolutionSetting;->mResolutionBlackListFront:Ljava/lang/String;

    goto/16 :goto_1

    .line 288
    .restart local v4    # "isSquareSizeBlacklisted":Z
    .restart local v6    # "isSquareSizeSettingSet":Z
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 292
    :cond_8
    const/4 v5, 0x0

    goto :goto_3

    .line 314
    .restart local v0    # "aspectRatio":Lcom/android/camera/exif/Rational;
    .restart local v2    # "cameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    .restart local v3    # "fallbackPictureSize":Lcom/android/camera/util/Size;
    .restart local v5    # "isSquareSizeFromSettingsValid":Z
    .restart local v9    # "supportedPictureSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :cond_9
    const/4 v7, 0x0

    .line 315
    sget-object v10, Lcom/android/camera/settings/ResolutionSetting;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v11, "Square size not exist. fallback to default aspectRatio."

    invoke-static {v10, v11}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_4

    .line 320
    .end local v0    # "aspectRatio":Lcom/android/camera/exif/Rational;
    .end local v2    # "cameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    .end local v3    # "fallbackPictureSize":Lcom/android/camera/util/Size;
    .end local v9    # "supportedPictureSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/settings/ResolutionSetting;->getPictureSize(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;

    move-result-object v7

    goto :goto_5
.end method

.method public getTheMaximumResolutionPictureSize(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;
    .locals 10
    .param p1, "cameraId"    # Lcom/android/camera/device/CameraId;
    .param p2, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/one/OneCameraAccessException;
        }
    .end annotation

    .prologue
    .line 220
    sget-object v7, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p2, v7, :cond_1

    const-string v5, "pref_camera_picturesize_front_key"

    .line 223
    .local v5, "pictureSizeSettingKey":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    .line 225
    .local v4, "pictureSize":Lcom/android/camera/util/Size;
    const-string v1, ""

    .line 226
    .local v1, "blacklist":Ljava/lang/String;
    sget-object v7, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p2, v7, :cond_2

    .line 227
    iget-object v1, p0, Lcom/android/camera/settings/ResolutionSetting;->mResolutionBlackListBack:Ljava/lang/String;

    .line 232
    :cond_0
    :goto_1
    sget-object v0, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_4x3:Lcom/android/camera/exif/Rational;

    .line 234
    .local v0, "aspectRatio":Lcom/android/camera/exif/Rational;
    iget-object v7, p0, Lcom/android/camera/settings/ResolutionSetting;->mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

    .line 235
    invoke-interface {v7, p1}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v2

    .line 237
    .local v2, "cameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    const/16 v7, 0x100

    .line 239
    invoke-interface {v2, v7}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedPictureSizes(I)Ljava/util/List;

    move-result-object v7

    .line 238
    invoke-static {v7, v1}, Lcom/android/camera/settings/ResolutionUtil;->filterBlackListedSizes(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 242
    .local v6, "supportedPictureSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    invoke-static {v0, v6}, Lcom/android/camera/settings/ResolutionUtil;->getLargestPictureSize(Lcom/android/camera/exif/Rational;Ljava/util/List;)Lcom/android/camera/util/Size;

    move-result-object v3

    .line 243
    .local v3, "fallbackPictureSize":Lcom/android/camera/util/Size;
    move-object v4, v3

    .line 245
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-virtual {v3}, Lcom/android/camera/util/Size;->width()I

    move-result v7

    if-lez v7, :cond_3

    .line 247
    invoke-virtual {v3}, Lcom/android/camera/util/Size;->height()I

    move-result v7

    if-lez v7, :cond_3

    const/4 v7, 0x1

    .line 246
    :goto_2
    invoke-static {v7}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 248
    sget-object v7, Lcom/android/camera/settings/ResolutionSetting;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPictureSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 249
    return-object v4

    .line 220
    .end local v0    # "aspectRatio":Lcom/android/camera/exif/Rational;
    .end local v1    # "blacklist":Ljava/lang/String;
    .end local v2    # "cameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    .end local v3    # "fallbackPictureSize":Lcom/android/camera/util/Size;
    .end local v4    # "pictureSize":Lcom/android/camera/util/Size;
    .end local v5    # "pictureSizeSettingKey":Ljava/lang/String;
    .end local v6    # "supportedPictureSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :cond_1
    const-string v5, "pref_camera_picturesize_back_key"

    goto :goto_0

    .line 228
    .restart local v1    # "blacklist":Ljava/lang/String;
    .restart local v4    # "pictureSize":Lcom/android/camera/util/Size;
    .restart local v5    # "pictureSizeSettingKey":Ljava/lang/String;
    :cond_2
    sget-object v7, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p2, v7, :cond_0

    .line 229
    iget-object v1, p0, Lcom/android/camera/settings/ResolutionSetting;->mResolutionBlackListFront:Ljava/lang/String;

    goto :goto_1

    .line 247
    .restart local v0    # "aspectRatio":Lcom/android/camera/exif/Rational;
    .restart local v2    # "cameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    .restart local v3    # "fallbackPictureSize":Lcom/android/camera/util/Size;
    .restart local v6    # "supportedPictureSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :cond_3
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public getVideoProfile(I)Landroid/media/CamcorderProfile;
    .locals 4
    .param p1, "extraVideoQuality"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/one/OneCameraAccessException;
        }
    .end annotation

    .prologue
    .line 478
    move v0, p1

    .line 479
    .local v0, "quality":I
    sget-object v1, Lcom/android/camera/settings/ResolutionSetting;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extraVideoQuality : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", quality : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 482
    invoke-static {v0}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 483
    sget-object v1, Lcom/android/camera/settings/ResolutionSetting;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "The current video quality is not supported, we changed to QUALITY_1080P."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 484
    const/4 v0, 0x6

    .line 487
    :cond_0
    sget-object v1, Lcom/android/camera/settings/ResolutionSetting;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "final quality : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 489
    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v1

    return-object v1
.end method

.method public getVideoProfile(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;ILcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Landroid/media/CamcorderProfile;
    .locals 8
    .param p1, "cameraId"    # Lcom/android/camera/device/CameraId;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "extraVideoQuality"    # I
    .param p4, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/one/OneCameraAccessException;
        }
    .end annotation

    .prologue
    .line 411
    const/4 v2, 0x6

    .line 412
    .local v2, "quality":I
    const/4 v5, -0x1

    if-ne p3, v5, :cond_4

    .line 413
    sget-object v5, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p2, v5, :cond_2

    const/4 v1, 0x1

    .line 414
    .local v1, "isFrontFacing":Z
    :goto_0
    if-eqz v1, :cond_3

    const-string v4, "pref_video_quality_front_key"

    .line 417
    .local v4, "videoQualityKey":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/android/camera/settings/ResolutionSetting;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v6, "default_scope"

    invoke-virtual {v5, v6, v4}, Lcom/android/camera/settings/SettingsManager;->isSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 418
    iget-object v5, p0, Lcom/android/camera/settings/ResolutionSetting;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v6, "default_scope"

    invoke-virtual {v5, v6, v4}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_0
    iget-object v5, p0, Lcom/android/camera/settings/ResolutionSetting;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v6, "default_scope"

    .line 422
    invoke-virtual {v5, v6, v4}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 423
    .local v3, "videoQuality":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v5

    invoke-static {v3, v5}, Lcom/android/camera/settings/SettingsUtil;->getVideoQuality(Ljava/lang/String;I)I

    move-result v2

    .line 424
    sget-object v5, Lcom/android/camera/settings/ResolutionSetting;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "camera : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", captureMode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", videoQuality : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", quality : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 436
    .end local v1    # "isFrontFacing":Z
    .end local v3    # "videoQuality":Ljava/lang/String;
    .end local v4    # "videoQualityKey":Ljava/lang/String;
    :goto_2
    sget-object v5, Lcom/android/camera/settings/ResolutionSetting$1;->$SwitchMap$com$android$camera$one$OneCameraCaptureSetting$CaptureMode:[I

    invoke-virtual {p4}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 465
    :goto_3
    invoke-virtual {p1}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v5

    invoke-static {v5, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v5

    if-nez v5, :cond_1

    .line 466
    sget-object v5, Lcom/android/camera/settings/ResolutionSetting;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "The current video quality is not supported, we changed to QUALITY_HIGH."

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 467
    const/4 v2, 0x1

    .line 470
    :cond_1
    sget-object v5, Lcom/android/camera/settings/ResolutionSetting;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "camera : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", captureMode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", final quality : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 474
    invoke-virtual {p1}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v5

    invoke-static {v5, v2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v5

    return-object v5

    .line 413
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 414
    .restart local v1    # "isFrontFacing":Z
    :cond_3
    const-string v4, "pref_video_quality_back_key"

    goto/16 :goto_1

    .line 429
    .end local v1    # "isFrontFacing":Z
    :cond_4
    move v2, p3

    .line 430
    sget-object v5, Lcom/android/camera/settings/ResolutionSetting;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "camera : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", captureMode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", extraVideoQuality : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", quality : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 438
    :pswitch_0
    const/16 v0, 0x3e8

    .line 439
    .local v0, "QUALITY_DIFF":I
    packed-switch v2, :pswitch_data_1

    .line 457
    add-int/lit16 v2, v2, 0x3e8

    .line 458
    goto/16 :goto_3

    .line 441
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v5

    const/16 v6, 0x2b00

    invoke-static {v5, v6}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v5

    if-nez v5, :cond_5

    .line 442
    sget-object v5, Lcom/android/camera/settings/ResolutionSetting;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "Not supported TIME_LAPSE, we changed to QUALITY_TIME_LAPSE_1080P."

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 443
    const/16 v2, 0x3ee

    goto/16 :goto_3

    .line 445
    :cond_5
    add-int/lit16 v2, v2, 0x3e8

    .line 447
    goto/16 :goto_3

    .line 449
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v5

    const/16 v6, 0x2aff

    invoke-static {v5, v6}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v5

    if-nez v5, :cond_6

    .line 450
    sget-object v5, Lcom/android/camera/settings/ResolutionSetting;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "Not supported TIME_LAPSE, we changed to QUALITY_TIME_LAPSE_720P."

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 451
    const/16 v2, 0x3ed

    goto/16 :goto_3

    .line 453
    :cond_6
    add-int/lit16 v2, v2, 0x3e8

    .line 455
    goto/16 :goto_3

    .line 436
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 439
    :pswitch_data_1
    .packed-switch 0x2717
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public selectTheClosestSize(Lcom/android/camera/util/Size;Ljava/util/List;Lcom/android/camera/exif/Rational;)Lcom/android/camera/util/Size;
    .locals 10
    .param p1, "target"    # Lcom/android/camera/util/Size;
    .param p3, "expectedRatio"    # Lcom/android/camera/exif/Rational;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/util/Size;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;",
            "Lcom/android/camera/exif/Rational;",
            ")",
            "Lcom/android/camera/util/Size;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 532
    .local p2, "pictureSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    const/4 v5, 0x0

    .line 533
    .local v5, "selectedSize":Lcom/android/camera/util/Size;
    const v2, 0x7fffffff

    .line 534
    .local v2, "diff":I
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v9

    mul-int v7, v8, v9

    .line 536
    .local v7, "targetPixelNum":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 537
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/util/Size;

    .line 538
    .local v6, "size":Lcom/android/camera/util/Size;
    invoke-static {v6}, Lcom/android/camera/settings/ResolutionUtil;->getAspectRatio(Lcom/android/camera/util/Size;)Lcom/android/camera/exif/Rational;

    move-result-object v0

    .line 540
    .local v0, "aspectRatio":Lcom/android/camera/exif/Rational;
    invoke-static {v0, p3}, Lcom/android/camera/settings/ResolutionUtil;->hasSameAspectRatio(Lcom/android/camera/exif/Rational;Lcom/android/camera/exif/Rational;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 536
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 543
    :cond_1
    invoke-virtual {v6}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v9

    mul-int v4, v8, v9

    .line 544
    .local v4, "pixelNum":I
    sub-int v8, v7, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 545
    .local v1, "curDiff":I
    if-ge v1, v2, :cond_0

    .line 546
    move v2, v1

    .line 547
    move-object v5, v6

    goto :goto_1

    .line 551
    .end local v0    # "aspectRatio":Lcom/android/camera/exif/Rational;
    .end local v1    # "curDiff":I
    .end local v4    # "pixelNum":I
    .end local v6    # "size":Lcom/android/camera/util/Size;
    :cond_2
    return-object v5
.end method

.method public setPictureAspectRatio(Lcom/android/camera/device/CameraId;Lcom/android/camera/exif/Rational;)V
    .locals 9
    .param p1, "cameraId"    # Lcom/android/camera/device/CameraId;
    .param p2, "aspectRatio"    # Lcom/android/camera/exif/Rational;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/one/OneCameraAccessException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v6, p0, Lcom/android/camera/settings/ResolutionSetting;->mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

    .line 87
    invoke-interface {v6, p1}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v1

    .line 89
    .local v1, "cameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    invoke-interface {v1}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v2

    .line 93
    .local v2, "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    sget-object v6, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v2, v6, :cond_0

    const-string v4, "pref_camera_picturesize_front_key"

    .line 95
    .local v4, "pictureSizeSettingKey":Ljava/lang/String;
    :goto_0
    sget-object v6, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v2, v6, :cond_1

    iget-object v0, p0, Lcom/android/camera/settings/ResolutionSetting;->mResolutionBlackListFront:Ljava/lang/String;

    .line 99
    .local v0, "blacklist":Ljava/lang/String;
    :goto_1
    const/16 v6, 0x100

    .line 100
    invoke-interface {v1, v6}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedPictureSizes(I)Ljava/util/List;

    move-result-object v5

    .line 105
    .local v5, "supportedPictureSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    sget-object v6, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v2, v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    invoke-static {v5, v6}, Lcom/android/camera/settings/ResolutionUtil;->getDisplayableSizesFromSupported(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v5

    .line 109
    invoke-static {v5, v0}, Lcom/android/camera/settings/ResolutionUtil;->filterBlackListedSizes(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 113
    invoke-static {p2, v5}, Lcom/android/camera/settings/ResolutionUtil;->getLargestPictureSize(Lcom/android/camera/exif/Rational;Ljava/util/List;)Lcom/android/camera/util/Size;

    move-result-object v3

    .line 114
    .local v3, "chosenPictureSize":Lcom/android/camera/util/Size;
    iget-object v6, p0, Lcom/android/camera/settings/ResolutionSetting;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v7, "default_scope"

    .line 117
    invoke-static {v3}, Lcom/android/camera/settings/SettingsUtil;->sizeToSettingString(Lcom/android/camera/util/Size;)Ljava/lang/String;

    move-result-object v8

    .line 114
    invoke-virtual {v6, v7, v4, v8}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void

    .line 93
    .end local v0    # "blacklist":Ljava/lang/String;
    .end local v3    # "chosenPictureSize":Lcom/android/camera/util/Size;
    .end local v4    # "pictureSizeSettingKey":Ljava/lang/String;
    .end local v5    # "supportedPictureSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :cond_0
    const-string v4, "pref_camera_picturesize_back_key"

    goto :goto_0

    .line 95
    .restart local v4    # "pictureSizeSettingKey":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/camera/settings/ResolutionSetting;->mResolutionBlackListBack:Ljava/lang/String;

    goto :goto_1

    .line 105
    .restart local v0    # "blacklist":Ljava/lang/String;
    .restart local v5    # "supportedPictureSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method
