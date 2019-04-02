.class public Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;
.super Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;
.source "QCCameraCapabilitiesExtension.java"


# static fields
.field private static final METHOD_GET_NUM_MIC:Ljava/lang/String; = "getCustomNumMic"

.field private static final METHOD_GET_OZO_LIST:Ljava/lang/String; = "getCustomOzoFuncList"

.field private static final METHOD_SET_DUAL_CAMERA_MODE:Ljava/lang/String; = "SetDualCameraMode"

.field private static final METHOD_SET_OZO:Ljava/lang/String; = "setOzoAudioMode"

.field private static final METHOD_SET_OZO_DYNAMIC_MODE:Ljava/lang/String; = "setOzoDynamicFocusMode"

.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "QCCamCapExt"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;-><init>()V

    .line 46
    return-void
.end method

.method private split(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 378
    if-nez p1, :cond_1

    const/4 v2, 0x0

    .line 386
    :cond_0
    return-object v2

    .line 380
    :cond_1
    new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v3, 0x2c

    invoke-direct {v1, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 381
    .local v1, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v1, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 382
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .local v2, "substrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v1}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 384
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private splitSize(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 390
    if-nez p1, :cond_1

    move-object v2, v4

    .line 400
    :cond_0
    :goto_0
    return-object v2

    .line 392
    :cond_1
    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x2c

    invoke-direct {v3, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 393
    .local v3, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v3, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 394
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v2, "sizeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/camera2/portability/Size;>;"
    invoke-interface {v3}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 396
    .local v0, "s":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->strToSize(Ljava/lang/String;)Lcom/android/ex/camera2/portability/Size;

    move-result-object v1

    .line 397
    .local v1, "size":Lcom/android/ex/camera2/portability/Size;
    if-eqz v1, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 399
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "size":Lcom/android/ex/camera2/portability/Size;
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    move-object v2, v4

    goto :goto_0
.end method

.method private strToSize(Ljava/lang/String;)Lcom/android/ex/camera2/portability/Size;
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 404
    if-nez p1, :cond_0

    .line 414
    :goto_0
    return-object v3

    .line 406
    :cond_0
    const/16 v4, 0x78

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 407
    .local v1, "pos":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 408
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 409
    .local v2, "width":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "height":Ljava/lang/String;
    new-instance v3, Lcom/android/ex/camera2/portability/Size;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 411
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    goto :goto_0

    .line 413
    .end local v0    # "height":Ljava/lang/String;
    .end local v2    # "width":Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid size parameter string="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public buildExifInfo(Lcom/android/camera/exif/ExifInterface;Landroid/hardware/Camera$Parameters;Lcom/android/camera/util/ExifUtil$CaptureMetaData;)V
    .locals 1
    .param p1, "exif"    # Lcom/android/camera/exif/ExifInterface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p3, "metaData"    # Lcom/android/camera/util/ExifUtil$CaptureMetaData;

    .prologue
    .line 459
    new-instance v0, Lcom/android/camera/util/ExifUtil;

    invoke-direct {v0, p1}, Lcom/android/camera/util/ExifUtil;-><init>(Lcom/android/camera/exif/ExifInterface;)V

    .line 460
    .local v0, "exifUtil":Lcom/android/camera/util/ExifUtil;
    invoke-virtual {v0, p2, p3}, Lcom/android/camera/util/ExifUtil;->populateExif(Landroid/hardware/Camera$Parameters;Lcom/android/camera/util/ExifUtil$CaptureMetaData;)V

    .line 461
    return-void
.end method

.method public buildExtraFocusModes(Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "focusMode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 314
    .local p1, "supportedFocusModes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;>;"
    const-string v0, "manual"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->MANUAL:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_0
    return-void
.end method

.method public buildExtraSceneModes(Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "sceneMode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "supportedSceneModes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;>;"
    const-string v0, "asd"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ASD:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    const-string v0, "backlight"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->BACKLIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    :cond_2
    const-string v0, "flowers"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->FLOWERS:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public buildExtraWBModes(Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "wbMode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 321
    .local p1, "supportedWBModes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;>;"
    const-string v0, "manual"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->MANUAL:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_0
    return-void
.end method

.method public buildHFRMap(Ljava/util/HashMap;Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .param p1    # Ljava/util/HashMap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "p"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;",
            ">;",
            "Landroid/hardware/Camera$Parameters;",
            ")V"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "supportedHFRMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/ex/camera2/portability/Size;Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;>;"
    const-string v3, "video-hfr-values"

    invoke-virtual {p2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 257
    .local v1, "supportedHFRValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 265
    :cond_0
    return-void

    .line 258
    :cond_1
    const-string v3, "hfr-size-values"

    invoke-virtual {p2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->splitSize(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 259
    .local v2, "supportedhfrSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/camera2/portability/Size;>;"
    if-eqz v2, :cond_0

    .line 261
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 262
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eq v0, v3, :cond_0

    .line 263
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->hfrFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public buildISO(Ljava/util/EnumSet;Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "p"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;",
            ">;",
            "Landroid/hardware/Camera$Parameters;",
            ")V"
        }
    .end annotation

    .prologue
    .line 361
    .local p1, "supportedISO":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;>;"
    const-string v3, "iso-values"

    invoke-virtual {p2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 362
    .local v1, "supportedISOValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 363
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 364
    .local v0, "isoString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->isoFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 369
    .end local v0    # "isoString":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;->ISO_MANUAL:Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    invoke-virtual {p1, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 370
    const-string v3, "manual-exposure-modes"

    invoke-virtual {p2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 371
    .local v2, "supportedManualExposureMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    .line 372
    const-string v3, "manual"

    invoke-virtual {p0, v3}, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->isoFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 375
    .end local v2    # "supportedManualExposureMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method public buildManualExposure(Ljava/util/EnumSet;Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;",
            ">;",
            "Landroid/hardware/Camera$Parameters;",
            ")V"
        }
    .end annotation

    .prologue
    .line 429
    .local p1, "supportedManualExposure":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;>;"
    const-string v2, "manual-exposure-modes"

    invoke-virtual {p2, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 430
    .local v1, "supportedManualExposureMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 431
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 432
    .local v0, "manualExposureString":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->manualExposureModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 435
    .end local v0    # "manualExposureString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public buildManualFocus(Ljava/util/EnumSet;Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;",
            ">;",
            "Landroid/hardware/Camera$Parameters;",
            ")V"
        }
    .end annotation

    .prologue
    .line 419
    .local p1, "supportedManualFocus":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;>;"
    const-string v2, "manual-focus-modes"

    invoke-virtual {p2, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 420
    .local v1, "supportedManualFocusMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 421
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 422
    .local v0, "manualFocusString":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->manualFocusModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 425
    .end local v0    # "manualFocusString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public buildManualWhiteBalance(Ljava/util/EnumSet;Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;",
            ">;",
            "Landroid/hardware/Camera$Parameters;",
            ")V"
        }
    .end annotation

    .prologue
    .line 439
    .local p1, "supportedManualWB":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;>;"
    const-string v2, "manual-wb-modes"

    invoke-virtual {p2, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 440
    .local v1, "supportedManualWhiteBalance":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 441
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 442
    .local v0, "manualWhiteBalanceString":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->manualWBModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 445
    .end local v0    # "manualWhiteBalanceString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public buildMetering(Ljava/util/EnumSet;Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;",
            ">;",
            "Landroid/hardware/Camera$Parameters;",
            ")V"
        }
    .end annotation

    .prologue
    .line 449
    .local p1, "meteringModes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;>;"
    const-string v2, "auto-exposure-values"

    invoke-virtual {p2, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 450
    .local v0, "supportedAutoExposure":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 451
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 452
    .local v1, "supportedAutoExposureString":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->meteringModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 455
    .end local v1    # "supportedAutoExposureString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public flipmodeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;
    .locals 3
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 687
    if-nez p1, :cond_0

    .line 688
    const/4 v1, 0x0

    .line 693
    :goto_0
    return-object v1

    .line 691
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/ex/camera2/portability/extension/field/Qualcomm;->mapStringToFlipmode(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 692
    :catch_0
    move-exception v0

    .line 693
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public getBokehBlurValue(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 856
    :try_start_0
    const-string v0, "bokeh-blur-value"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 859
    :goto_0
    return v0

    .line 857
    :catch_0
    move-exception v0

    .line 859
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBokehMode(Landroid/hardware/Camera$Parameters;)Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;
    .locals 3
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 845
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;

    .line 847
    .local v0, "mode":Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;
    :try_start_0
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;

    move-result-object v1

    const-string v2, "bokeh-mode"

    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    :goto_0
    return-object v0

    .line 848
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getCurrentExposureTime(Landroid/hardware/Camera$Parameters;)D
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 592
    :try_start_0
    const-string v0, "cur-exposure-time"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 595
    :goto_0
    return-wide v0

    .line 593
    :catch_0
    move-exception v0

    .line 595
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentFlipMode(Landroid/hardware/Camera$Parameters;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 682
    const-string v0, "snapshot-picture-flip"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->flipmodeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFocusDiopter(Landroid/hardware/Camera$Parameters;)D
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 583
    :try_start_0
    const-string v0, "cur-focus-diopter"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 586
    :goto_0
    return-wide v0

    .line 584
    :catch_0
    move-exception v0

    .line 586
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentFocusScale(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 574
    :try_start_0
    const-string v0, "cur-focus-scale"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 577
    :goto_0
    return v0

    .line 575
    :catch_0
    move-exception v0

    .line 577
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentHFR(Landroid/hardware/Camera$Parameters;)Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 659
    const-string v0, "video-hfr"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->hfrFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentISO(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 601
    :try_start_0
    const-string v0, "cur-iso"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 604
    :goto_0
    return v0

    .line 602
    :catch_0
    move-exception v0

    .line 604
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentManualWBMode(Landroid/hardware/Camera$Parameters;)Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 654
    const-string v0, "manual-wb-modes"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->manualWBModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMetering()Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;
    .locals 1

    .prologue
    .line 649
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;->CENTER_WEIGHTED:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    return-object v0
.end method

.method public getCurrentWBCCT(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 626
    :try_start_0
    const-string v0, "wb-manual-cct"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 629
    :goto_0
    return v0

    .line 627
    :catch_0
    move-exception v0

    .line 629
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentWBGain(Landroid/hardware/Camera$Parameters;)[D
    .locals 7
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x3

    .line 610
    :try_start_0
    const-string v3, "manual-wb-value"

    invoke-virtual {p1, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 611
    .local v1, "manualWBGainValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 612
    const/4 v3, 0x3

    new-array v2, v3, [D

    .line 613
    .local v2, "wbGain":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_1

    .line 614
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    aput-wide v4, v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 618
    .end local v0    # "i":I
    .end local v1    # "manualWBGainValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "wbGain":[D
    :catch_0
    move-exception v3

    .line 620
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public getCustomNumMic()I
    .locals 5

    .prologue
    .line 103
    :try_start_0
    const-class v2, Landroid/media/AudioManager;

    const-string v3, "getCustomNumMic"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 104
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 108
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "involke METHOD_GET_NUM_MIC error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 108
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMaxManualExposureTime(Landroid/hardware/Camera$Parameters;)D
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 511
    :try_start_0
    const-string v0, "max-exposure-time"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 514
    :goto_0
    return-wide v0

    .line 512
    :catch_0
    move-exception v0

    .line 514
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getMaxManualFocusDiopter(Landroid/hardware/Camera$Parameters;)D
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 493
    :try_start_0
    const-string v0, "max-focus-pos-diopter"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 496
    :goto_0
    return-wide v0

    .line 494
    :catch_0
    move-exception v0

    .line 496
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getMaxManualFocusScale(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 475
    :try_start_0
    const-string v0, "max-focus-pos-ratio"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 478
    :goto_0
    return v0

    .line 476
    :catch_0
    move-exception v0

    .line 478
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaxManualISO(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 529
    :try_start_0
    const-string v0, "max-iso"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 532
    :goto_0
    return v0

    .line 530
    :catch_0
    move-exception v0

    .line 532
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaxManualWBCCT(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 565
    :try_start_0
    const-string v0, "max-wb-cct"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 568
    :goto_0
    return v0

    .line 566
    :catch_0
    move-exception v0

    .line 568
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaxManualWBGain(Landroid/hardware/Camera$Parameters;)D
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 547
    :try_start_0
    const-string v0, "max-wb-gain"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 550
    :goto_0
    return-wide v0

    .line 548
    :catch_0
    move-exception v0

    .line 550
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getMinManualExposureTime(Landroid/hardware/Camera$Parameters;)D
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 502
    :try_start_0
    const-string v0, "min-exposure-time"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 505
    :goto_0
    return-wide v0

    .line 503
    :catch_0
    move-exception v0

    .line 505
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getMinManualFocusDiopter(Landroid/hardware/Camera$Parameters;)D
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 484
    :try_start_0
    const-string v0, "min-focus-pos-diopter"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 487
    :goto_0
    return-wide v0

    .line 485
    :catch_0
    move-exception v0

    .line 487
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getMinManualFocusScale(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 466
    :try_start_0
    const-string v0, "min-focus-pos-ratio"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 469
    :goto_0
    return v0

    .line 467
    :catch_0
    move-exception v0

    .line 469
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMinManualISO(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 520
    :try_start_0
    const-string v0, "min-iso"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 523
    :goto_0
    return v0

    .line 521
    :catch_0
    move-exception v0

    .line 523
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMinManualWBCCT(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 556
    :try_start_0
    const-string v0, "min-wb-cct"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 559
    :goto_0
    return v0

    .line 557
    :catch_0
    move-exception v0

    .line 559
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMinManualWBGain(Landroid/hardware/Camera$Parameters;)D
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 538
    :try_start_0
    const-string v0, "min-wb-gain"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 541
    :goto_0
    return-wide v0

    .line 539
    :catch_0
    move-exception v0

    .line 541
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getPreferredPictureSizeListForPIP(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 9
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v0, "pictureList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/camera2/portability/Size;>;"
    const-string v5, "pip-picture-size"

    invoke-virtual {p1, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "sSize":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 245
    invoke-direct {p0, v3}, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 246
    .local v4, "splitList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 247
    .local v2, "s":Ljava/lang/String;
    const-string v6, "x"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "result":[Ljava/lang/String;
    new-instance v6, Lcom/android/ex/camera2/portability/Size;

    const/4 v7, 0x0

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    .end local v1    # "result":[Ljava/lang/String;
    .end local v2    # "s":Ljava/lang/String;
    .end local v4    # "splitList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-object v0
.end method

.method public getPreferredPreviewSizeListForPIP(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 9
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v0, "previewList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/camera2/portability/Size;>;"
    const-string v5, "pip-preview-size"

    invoke-virtual {p1, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "sSize":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 230
    invoke-direct {p0, v3}, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 231
    .local v4, "splitList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 232
    .local v2, "s":Ljava/lang/String;
    const-string v6, "x"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "result":[Ljava/lang/String;
    new-instance v6, Lcom/android/ex/camera2/portability/Size;

    const/4 v7, 0x0

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 236
    .end local v1    # "result":[Ljava/lang/String;
    .end local v2    # "s":Ljava/lang/String;
    .end local v4    # "splitList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-object v0
.end method

.method public getSelfieBokehEnable(Landroid/hardware/Camera$Parameters;)Z
    .locals 3
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 864
    const-string v2, "picselfie-enable"

    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 865
    .local v1, "selfieBokeh":Ljava/lang/String;
    const/4 v0, 0x0

    .line 866
    .local v0, "enable":Z
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 867
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 868
    const/4 v0, 0x1

    .line 871
    :cond_0
    return v0
.end method

.method public hfrFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;
    .locals 3
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 772
    if-nez p1, :cond_0

    .line 773
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    move-result-object v1

    aget-object v1, v1, v2

    .line 778
    :goto_0
    return-object v1

    .line 776
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/ex/camera2/portability/extension/field/Qualcomm;->mapStringToHFR(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 777
    :catch_0
    move-exception v0

    .line 778
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    move-result-object v1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public isDISEnabled(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 635
    :try_start_0
    const-string v0, "enable"

    const-string v1, "dis"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 638
    :goto_0
    return v0

    .line 636
    :catch_0
    move-exception v0

    .line 638
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEISEnabled(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 643
    const/4 v0, 0x0

    return v0
.end method

.method public isHFRSettingSupportedByEncoder(IILcom/android/ex/camera2/portability/CameraCapabilities$HFR;I)Z
    .locals 15
    .param p1, "videWidth"    # I
    .param p2, "videoHight"    # I
    .param p3, "hfrMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "videoCodec"    # I

    .prologue
    .line 270
    :try_start_0
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 272
    .local v7, "fps":I
    mul-int v12, p1, p2

    mul-int v2, v12, v7

    .line 275
    .local v2, "expectedMBsPerSec":I
    :try_start_1
    const-string v12, "android.media.EncoderCapabilities"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const-string v13, "getVideoEncoders"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 276
    .local v9, "method":Ljava/lang/reflect/Method;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 278
    .local v11, "videoEncoderCaps":Ljava/util/List;, "Ljava/util/List<Ljava/util/Objects;>;"
    if-eqz v11, :cond_1

    .line 279
    const-string v12, "android.media.EncoderCapabilities$VideoEncoderCap"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 280
    .local v1, "capClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v12, "mCodec"

    invoke-virtual {v1, v12}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 281
    .local v3, "field_Codec":Ljava/lang/reflect/Field;
    const-string v12, "mMaxFrameWidth"

    invoke-virtual {v1, v12}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 282
    .local v6, "field_maxFrameWidth":Ljava/lang/reflect/Field;
    const-string v12, "mMaxFrameHeight"

    invoke-virtual {v1, v12}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 283
    .local v4, "field_maxFrameHeight":Ljava/lang/reflect/Field;
    const-string v12, "mMaxFrameRate"

    invoke-virtual {v1, v12}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 284
    .local v5, "field_maxFrameRate":Ljava/lang/reflect/Field;
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 285
    .local v10, "object":Ljava/lang/Object;
    invoke-virtual {v3, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move/from16 v0, p4

    if-ne v0, v12, :cond_0

    .line 286
    invoke-virtual {v6, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    mul-int/2addr v14, v12

    invoke-virtual {v5, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v12

    mul-int v8, v14, v12

    .line 288
    .local v8, "maxMBsPerSec":I
    if-lt v8, v2, :cond_0

    .line 289
    const/4 v12, 0x1

    .line 298
    .end local v1    # "capClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "expectedMBsPerSec":I
    .end local v3    # "field_Codec":Ljava/lang/reflect/Field;
    .end local v4    # "field_maxFrameHeight":Ljava/lang/reflect/Field;
    .end local v5    # "field_maxFrameRate":Ljava/lang/reflect/Field;
    .end local v6    # "field_maxFrameWidth":Ljava/lang/reflect/Field;
    .end local v7    # "fps":I
    .end local v8    # "maxMBsPerSec":I
    .end local v9    # "method":Ljava/lang/reflect/Method;
    .end local v10    # "object":Ljava/lang/Object;
    .end local v11    # "videoEncoderCaps":Ljava/util/List;, "Ljava/util/List<Ljava/util/Objects;>;"
    :goto_0
    return v12

    .line 296
    :catch_0
    move-exception v12

    .line 298
    :cond_1
    :goto_1
    const/4 v12, 0x0

    goto :goto_0

    .line 294
    .restart local v2    # "expectedMBsPerSec":I
    .restart local v7    # "fps":I
    :catch_1
    move-exception v12

    goto :goto_1
.end method

.method public isSupportDualCamModeConfig()Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 814
    const/4 v1, 0x0

    .line 816
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    const-class v4, Landroid/hardware/camera2/CameraManager;

    const-string v5, "SetDualCameraMode"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 820
    :goto_0
    if-eqz v1, :cond_0

    :goto_1
    return v2

    .line 817
    :catch_0
    move-exception v0

    .line 818
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " isSupportDualCamModeConfig error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move v2, v3

    .line 820
    goto :goto_1
.end method

.method public isSupportedAutoHDR(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 59
    const-string v1, "auto-hdr-supported"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "supportedAutoHDR":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 61
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 63
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSupportedBeauty(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 328
    const-string v0, "access-nfi-enable"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportedBokeh(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 160
    const-string v1, "is-bokeh-supported"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "supportedBokeh":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 162
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 164
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSupportedBokehMPO(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 169
    const-string v1, "is-bokeh-mpo-supported"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "supportedBokehMPO":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 171
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 173
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSupportedCDS(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 142
    const-string v1, "cds-mode-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 143
    .local v0, "supportedCDS":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 144
    const-string v1, "on"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 146
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSupportedCustomizeMaxPreviewRateSet(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedDIS(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 68
    const-string v1, "dis-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 69
    .local v0, "supportedDISValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 70
    const-string v1, "enable"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 72
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSupportedEIS(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedFlipMode(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 189
    const-string v1, "flip-mode-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "supportedFlipMode":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 191
    const/4 v1, 0x1

    .line 193
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSupportedHDR1X(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 133
    const-string v1, "hdr-need-1x-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 134
    .local v0, "supportedHDR1X":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 135
    const-string v1, "true"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 137
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSupportedHFR(Landroid/hardware/Camera$Parameters;)Z
    .locals 3
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 178
    const-string v2, "video-hfr-values"

    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 179
    .local v0, "supportedHfrValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 180
    const-string v2, "60"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "90"

    .line 181
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "120"

    .line 182
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 184
    :cond_1
    return v1
.end method

.method public isSupportedHWRaotate(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 351
    const-string v1, "hw-rotate"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "supportedHWRotate":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 353
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 356
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSupportedLongShot(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 342
    const-string v1, "longshot-supported"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "supportedLongShot":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 344
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 346
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSupportedManualFocus(Landroid/hardware/Camera$Parameters;)Z
    .locals 3
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 123
    const-string v2, "manual-focus-modes"

    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 124
    .local v0, "supportedManualFocus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 125
    const-string v2, "scale-mode"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "diopter-mode"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 128
    :cond_0
    return v1
.end method

.method public isSupportedMeteringMode(Landroid/hardware/Camera$Parameters;)Z
    .locals 3
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 113
    const-string v2, "auto-exposure-values"

    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 114
    .local v0, "supportedAutoExposure":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 115
    const-string v2, "frame-average"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "center-weighted"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 118
    :cond_0
    return v1
.end method

.method public isSupportedOptiZoom(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 333
    const-string v1, "opti-zoom-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "supportedOptiZoomMode":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 335
    const-string v1, "opti-zoom-on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 337
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSupportedPIPCustomizePreviewRate(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedPIPCustomizeSize(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 210
    const-string v0, "pip-preview-size"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "pip-picture-size"

    .line 211
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    .line 211
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportedSurroundSound(Ljava/util/EnumSet;Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;)Z
    .locals 10
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "stringifier"    # Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;",
            ">;",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "supportedSurroundSound":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;>;"
    const/4 v7, 0x0

    .line 83
    :try_start_0
    const-class v6, Landroid/media/AudioManager;

    const-string v8, "getCustomOzoFuncList"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 84
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    move-object v0, v6

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0

    .line 85
    .local v5, "values":[Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 86
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_1

    .line 87
    aget-object v6, v5, v2

    invoke-virtual {p2, v6}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->surroundSoundFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;

    move-result-object v4

    .line 88
    .local v4, "surroundSound":Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;
    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;

    if-eq v4, v6, :cond_0

    .line 89
    invoke-virtual {p1, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    .end local v4    # "surroundSound":Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;
    :cond_1
    invoke-virtual {p1}, Ljava/util/EnumSet;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-lez v6, :cond_2

    const/4 v6, 0x1

    .line 97
    .end local v2    # "i":I
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "values":[Ljava/lang/String;
    :goto_1
    return v6

    .restart local v2    # "i":I
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    .restart local v5    # "values":[Ljava/lang/String;
    :cond_2
    move v6, v7

    .line 92
    goto :goto_1

    .line 94
    .end local v2    # "i":I
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "involke METHOD_GET_OZO_LIST error : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    move v6, v7

    .line 97
    goto :goto_1
.end method

.method public isSupportedTouchAfAec(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 151
    const-string v1, "touch-af-aec-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 152
    .local v0, "supportedTouchAfAec":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 153
    const-string v1, "touch-on"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 155
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSupportedZSL(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 50
    const-string v1, "zsl-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "supportedZSLModes":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 52
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 54
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isoFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;
    .locals 3
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 664
    if-nez p1, :cond_0

    .line 665
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    move-result-object v1

    aget-object v1, v1, v2

    .line 670
    :goto_0
    return-object v1

    .line 668
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/ex/camera2/portability/extension/field/Qualcomm;->mapStringToIso(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 669
    :catch_0
    move-exception v0

    .line 670
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    move-result-object v1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public manualExposureModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;
    .locals 3
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 721
    if-nez p1, :cond_0

    .line 722
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    move-result-object v1

    aget-object v1, v1, v2

    .line 727
    :goto_0
    return-object v1

    .line 725
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/ex/camera2/portability/extension/field/Qualcomm;->mapStringToManualExposure(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    move-result-object v1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public manualFocusModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;
    .locals 3
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 704
    if-nez p1, :cond_0

    .line 705
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    move-result-object v1

    aget-object v1, v1, v2

    .line 710
    :goto_0
    return-object v1

    .line 708
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/ex/camera2/portability/extension/field/Qualcomm;->mapStringToManualFocus(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 709
    :catch_0
    move-exception v0

    .line 710
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    move-result-object v1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public manualWBModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;
    .locals 3
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 738
    if-nez p1, :cond_0

    .line 739
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

    move-result-object v1

    aget-object v1, v1, v2

    .line 744
    :goto_0
    return-object v1

    .line 742
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/ex/camera2/portability/extension/field/Qualcomm;->mapStringToManualWB(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 743
    :catch_0
    move-exception v0

    .line 744
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

    move-result-object v1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public meteringModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;
    .locals 3
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 755
    if-nez p1, :cond_0

    .line 756
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    move-result-object v1

    aget-object v1, v1, v2

    .line 761
    :goto_0
    return-object v1

    .line 759
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/ex/camera2/portability/extension/field/Qualcomm;->mapStringToMeteringMode(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 760
    :catch_0
    move-exception v0

    .line 761
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    move-result-object v1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public setDualCamModeConfig(I)V
    .locals 7
    .param p1, "dualCameraMode"    # I

    .prologue
    .line 825
    sget-object v2, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setDualCamModeConfig = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 827
    :try_start_0
    const-class v2, Landroid/hardware/camera2/CameraManager;

    const-string v3, "SetDualCameraMode"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 828
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/util/AndroidServices;->provideCameraManager()Landroid/hardware/camera2/CameraManager;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 829
    :catch_0
    move-exception v0

    .line 830
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setDualCamModeConfig error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOzoDynamicFocusMode(Landroid/media/MediaRecorder;I)V
    .locals 7
    .param p1, "recorder"    # Landroid/media/MediaRecorder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ozoFocusMode"    # I

    .prologue
    .line 801
    sget-object v2, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ozoDynamicFocusMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 803
    :try_start_0
    const-class v2, Landroid/media/MediaRecorder;

    const-string v3, "setOzoDynamicFocusMode"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 804
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setOzoDynamicFocusMode error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 807
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setOzoMode(Landroid/media/MediaRecorder;I)V
    .locals 7
    .param p1, "recorder"    # Landroid/media/MediaRecorder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ozoMode"    # I

    .prologue
    .line 789
    sget-object v2, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOzoMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 791
    :try_start_0
    const-class v2, Landroid/media/MediaRecorder;

    const-string v3, "setOzoAudioMode"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 792
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 793
    :catch_0
    move-exception v0

    .line 794
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setOzoAudioMode error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 795
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setQCFlipMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 4
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 837
    :try_start_0
    const-string v1, "snapshot-picture-flip"

    invoke-virtual {p1, v1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    :goto_0
    return-void

    .line 838
    :catch_0
    move-exception v0

    .line 839
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setQCFlipMode error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;)Ljava/lang/String;
    .locals 1
    .param p1, "flipmode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    .prologue
    .line 699
    invoke-static {p1}, Lcom/android/ex/camera2/portability/extension/field/Qualcomm;->mapFlipModeToString(Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;)Ljava/lang/String;
    .locals 1
    .param p1, "hfr"    # Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    .prologue
    .line 784
    invoke-static {p1}, Lcom/android/ex/camera2/portability/extension/field/Qualcomm;->mapHFRToString(Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;)Ljava/lang/String;
    .locals 1
    .param p1, "iso"    # Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    .prologue
    .line 676
    invoke-static {p1}, Lcom/android/ex/camera2/portability/extension/field/Qualcomm;->mapISOToString(Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;)Ljava/lang/String;
    .locals 1
    .param p1, "manualExposureMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    .prologue
    .line 733
    invoke-static {p1}, Lcom/android/ex/camera2/portability/extension/field/Qualcomm;->mapManualExposureToString(Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;)Ljava/lang/String;
    .locals 1
    .param p1, "manualFocusMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    .prologue
    .line 716
    invoke-static {p1}, Lcom/android/ex/camera2/portability/extension/field/Qualcomm;->mapManualFocusToString(Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;)Ljava/lang/String;
    .locals 1
    .param p1, "manualWBMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

    .prologue
    .line 750
    invoke-static {p1}, Lcom/android/ex/camera2/portability/extension/field/Qualcomm;->mapManualWBToString(Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;)Ljava/lang/String;
    .locals 1
    .param p1, "metering"    # Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    .prologue
    .line 767
    invoke-static {p1}, Lcom/android/ex/camera2/portability/extension/field/Qualcomm;->mapMeteringModeToString(Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
