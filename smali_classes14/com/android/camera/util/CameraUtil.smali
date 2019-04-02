.class public Lcom/android/camera/util/CameraUtil;
.super Ljava/lang/Object;
.source "CameraUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/util/CameraUtil$ImageFileNamer;,
        Lcom/android/camera/util/CameraUtil$OnDialogShowingListener;,
        Lcom/android/camera/util/CameraUtil$Singleton;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ACTION_CAMERA_SHUTTER_CLICK:Ljava/lang/String; = "com.android.camera.action.SHUTTER_CLICK"

.field public static final ACTION_CAMERA_STARTED:Ljava/lang/String; = "com.android.camera.action.CAMERA_STARTED"

.field public static final ACTION_CAMERA_STOPPED:Ljava/lang/String; = "com.android.camera.action.CAMERA_STOPPED"

.field public static final ACTION_NEW_PICTURE:Ljava/lang/String; = "android.hardware.action.NEW_PICTURE"

.field public static final ACTION_NEW_VIDEO:Ljava/lang/String; = "android.hardware.action.NEW_VIDEO"

.field private static final EXTRAS_CAMERA_FACING:Ljava/lang/String; = "android.intent.extras.CAMERA_FACING"

.field public static final KEY_MODE_SELECTED:Ljava/lang/String; = "modeSelected"

.field public static final KEY_RETURN_DATA:Ljava/lang/String; = "return-data"

.field public static final KEY_SHOW_WHEN_LOCKED:Ljava/lang/String; = "showWhenLocked"

.field public static final KEY_TREAT_UP_AS_BACK:Ljava/lang/String; = "treat-up-as-back"

.field private static final MAPS_CLASS_NAME:Ljava/lang/String; = "com.google.android.maps.MapsActivity"

.field private static final MAPS_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.maps"

.field private static final MAX_PREVIEW_FPS_TIMES_1000:I = 0x61a80

.field private static final METHOD_SET_DUAL_CAMERA_MODE:Ljava/lang/String; = "SetDualCameraMode"

.field public static final ORIENTATION_HYSTERESIS:I = 0x5

.field private static final PREFERRED_PREVIEW_FPS_TIMES_1000:I = 0x7530

.field public static final REVIEW_ACTION:Ljava/lang/String; = "com.android.camera.action.REVIEW"

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static sLocation:[I


# instance fields
.field private final mImageFileNamer:Lcom/android/camera/util/CameraUtil$ImageFileNamer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "CameraUtil"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/util/CameraUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 800
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/util/CameraUtil;->sLocation:[I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Lcom/android/camera/util/CameraUtil$ImageFileNamer;

    const v1, 0x7f080344

    .line 152
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/util/CameraUtil$ImageFileNamer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/util/CameraUtil;->mImageFileNamer:Lcom/android/camera/util/CameraUtil$ImageFileNamer;

    .line 153
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/camera/util/CameraUtil$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/android/camera/util/CameraUtil$1;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/camera/util/CameraUtil;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static Assert(Z)V
    .locals 1
    .param p0, "cond"    # Z

    .prologue
    .line 324
    if-nez p0, :cond_0

    .line 325
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 327
    :cond_0
    return-void
.end method

.method static synthetic access$200()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/camera/util/CameraUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method public static addPixel(IIF)I
    .locals 7
    .param p0, "pixel"    # I
    .param p1, "newPixel"    # I
    .param p2, "weight"    # F

    .prologue
    const/high16 v6, 0xff0000

    const v5, 0xff00

    .line 1059
    and-int v3, p0, v6

    and-int v4, p1, v6

    int-to-float v4, v4

    mul-float/2addr v4, p2

    float-to-int v4, v4

    add-int/2addr v3, v4

    and-int v2, v3, v6

    .line 1060
    .local v2, "r":I
    and-int v3, p0, v5

    and-int v4, p1, v5

    int-to-float v4, v4

    mul-float/2addr v4, p2

    float-to-int v4, v4

    add-int/2addr v3, v4

    and-int v1, v3, v5

    .line 1061
    .local v1, "g":I
    and-int/lit16 v3, p0, 0xff

    and-int/lit16 v4, p1, 0xff

    int-to-float v4, v4

    mul-float/2addr v4, p2

    float-to-int v4, v4

    add-int/2addr v3, v4

    and-int/lit16 v0, v3, 0xff

    .line 1062
    .local v0, "b":I
    const/high16 v3, -0x1000000

    or-int/2addr v3, v2

    or-int/2addr v3, v1

    or-int/2addr v3, v0

    return v3
.end method

.method public static blur([I[IIII)V
    .locals 13
    .param p0, "src"    # [I
    .param p1, "out"    # [I
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "size"    # I

    .prologue
    .line 1077
    move/from16 v0, p4

    new-array v4, v0, [F

    .line 1078
    .local v4, "k":[F
    div-int/lit8 v5, p4, 0x2

    .line 1080
    .local v5, "off":I
    invoke-static {v4}, Lcom/android/camera/util/CameraUtil;->getGaussianMask([F)V

    .line 1082
    array-length v11, p0

    new-array v8, v11, [I

    .line 1086
    .local v8, "tmp":[I
    const/4 v6, 0x0

    .line 1087
    .local v6, "rowPointer":I
    const/4 v10, 0x0

    .local v10, "y":I
    :goto_0
    move/from16 v0, p3

    if-ge v10, v0, :cond_2

    .line 1088
    const/4 v9, 0x0

    .local v9, "x":I
    :goto_1
    if-ge v9, p2, :cond_1

    .line 1089
    const/4 v7, 0x0

    .line 1090
    .local v7, "sum":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v11, v4

    if-ge v3, v11, :cond_0

    .line 1091
    add-int v11, v9, v3

    sub-int v1, v11, v5

    .line 1092
    .local v1, "dx":I
    const/4 v11, 0x0

    add-int/lit8 v12, p2, -0x1

    invoke-static {v1, v11, v12}, Lcom/android/camera/util/CameraUtil;->clamp(III)I

    move-result v1

    .line 1093
    add-int v11, v6, v1

    aget v11, p0, v11

    aget v12, v4, v3

    invoke-static {v7, v11, v12}, Lcom/android/camera/util/CameraUtil;->addPixel(IIF)I

    move-result v7

    .line 1090
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1095
    .end local v1    # "dx":I
    :cond_0
    add-int v11, v9, v6

    aput v7, v8, v11

    .line 1088
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1097
    .end local v3    # "i":I
    .end local v7    # "sum":I
    :cond_1
    add-int/2addr v6, p2

    .line 1087
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1102
    .end local v9    # "x":I
    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "x":I
    :goto_3
    if-ge v9, p2, :cond_5

    .line 1103
    const/4 v6, 0x0

    .line 1104
    const/4 v10, 0x0

    :goto_4
    move/from16 v0, p3

    if-ge v10, v0, :cond_4

    .line 1105
    const/4 v7, 0x0

    .line 1106
    .restart local v7    # "sum":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    array-length v11, v4

    if-ge v3, v11, :cond_3

    .line 1107
    add-int v11, v10, v3

    sub-int v2, v11, v5

    .line 1108
    .local v2, "dy":I
    const/4 v11, 0x0

    add-int/lit8 v12, p3, -0x1

    invoke-static {v2, v11, v12}, Lcom/android/camera/util/CameraUtil;->clamp(III)I

    move-result v2

    .line 1109
    mul-int v11, v2, p2

    add-int/2addr v11, v9

    aget v11, v8, v11

    aget v12, v4, v3

    invoke-static {v7, v11, v12}, Lcom/android/camera/util/CameraUtil;->addPixel(IIF)I

    move-result v7

    .line 1106
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1111
    .end local v2    # "dy":I
    :cond_3
    add-int v11, v9, v6

    aput v7, p1, v11

    .line 1112
    add-int/2addr v6, p2

    .line 1104
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1102
    .end local v3    # "i":I
    .end local v7    # "sum":I
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1115
    :cond_5
    return-void
.end method

.method public static broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 890
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 892
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 893
    return-void
.end method

.method public static broadcastNewVideo(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 896
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_VIDEO"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 898
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.NEW_VIDEO"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 899
    return-void
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 410
    .local p0, "object":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 411
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 413
    :cond_0
    return-object p0
.end method

.method public static clamp(FFF)F
    .locals 1
    .param p0, "x"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 456
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    .line 462
    .end local p2    # "max":F
    :goto_0
    return p2

    .line 459
    .restart local p2    # "max":F
    :cond_0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    move p2, p1

    .line 460
    goto :goto_0

    :cond_1
    move p2, p0

    .line 462
    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 0
    .param p0, "x"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 442
    if-le p0, p2, :cond_0

    .line 448
    .end local p2    # "max":I
    :goto_0
    return p2

    .line 445
    .restart local p2    # "max":I
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    .line 446
    goto :goto_0

    :cond_1
    move p2, p0

    .line 448
    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 313
    if-nez p0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 317
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 318
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 12
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    const/4 v6, 0x1

    .line 239
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 240
    .local v4, "w":D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 242
    .local v0, "h":D
    if-gez p2, :cond_1

    move v2, v6

    .line 244
    .local v2, "lowerBound":I
    :goto_0
    if-gez p1, :cond_2

    const/16 v3, 0x80

    .line 248
    .local v3, "upperBound":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 258
    .end local v2    # "lowerBound":I
    :cond_0
    :goto_2
    return v2

    .line 242
    .end local v3    # "upperBound":I
    :cond_1
    mul-double v8, v4, v0

    int-to-double v10, p2

    div-double/2addr v8, v10

    .line 243
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v2, v8

    goto :goto_0

    .line 244
    .restart local v2    # "lowerBound":I
    :cond_2
    int-to-double v8, p1

    div-double v8, v4, v8

    .line 245
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    int-to-double v10, p1

    div-double v10, v0, v10

    .line 246
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    .line 245
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    double-to-int v3, v8

    goto :goto_1

    .line 253
    .restart local v3    # "upperBound":I
    :cond_3
    if-gez p2, :cond_4

    if-gez p1, :cond_4

    move v2, v6

    .line 254
    goto :goto_2

    .line 255
    :cond_4
    if-ltz p1, :cond_0

    move v2, v3

    .line 258
    goto :goto_2
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    .line 221
    invoke-static {p0, p1, p2}, Lcom/android/camera/util/CameraUtil;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 225
    .local v0, "initialSize":I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 226
    const/4 v1, 0x1

    .line 227
    .local v1, "roundedSize":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 228
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    .end local v1    # "roundedSize":I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 234
    .restart local v1    # "roundedSize":I
    :cond_1
    return v1
.end method

.method public static constrainToAspectRatio(Lcom/android/camera/util/Size;F)Lcom/android/camera/util/Size;
    .locals 6
    .param p0, "size"    # Lcom/android/camera/util/Size;
    .param p1, "aspectRatio"    # F

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    int-to-float v2, v3

    .line 508
    .local v2, "width":F
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v3

    int-to-float v1, v3

    .line 510
    .local v1, "height":F
    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v3, v2

    div-float v0, v3, v1

    .line 512
    .local v0, "currentAspectRatio":F
    cmpl-float v3, v0, p1

    if-lez v3, :cond_2

    .line 514
    cmpl-float v3, v2, v1

    if-lez v3, :cond_1

    .line 515
    mul-float v2, v1, p1

    .line 528
    :cond_0
    :goto_0
    new-instance v3, Lcom/android/camera/util/Size;

    float-to-int v4, v2

    float-to-int v5, v1

    invoke-direct {v3, v4, v5}, Lcom/android/camera/util/Size;-><init>(II)V

    return-object v3

    .line 517
    :cond_1
    div-float v1, v2, p1

    goto :goto_0

    .line 519
    :cond_2
    cmpg-float v3, v0, p1

    if-gez v3, :cond_0

    .line 521
    cmpg-float v3, v2, v1

    if-gez v3, :cond_3

    .line 522
    mul-float v2, v1, p1

    goto :goto_0

    .line 524
    :cond_3
    div-float v1, v2, p1

    goto :goto_0
.end method

.method public static cropToPictureSizeRegion(Landroid/graphics/Rect;Lcom/android/camera/util/Size;)Landroid/graphics/Rect;
    .locals 12
    .param p0, "cameraSensorBound"    # Landroid/graphics/Rect;
    .param p1, "pictureSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 1643
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1644
    .local v2, "currentSensorBound":Landroid/graphics/Rect;
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->useRelativeSensorCoordinate()Z

    move-result v8

    if-nez v8, :cond_1

    if-eqz p1, :cond_1

    .line 1645
    new-instance v8, Lcom/android/camera/util/Size;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-static {v8}, Lcom/android/camera/settings/ResolutionUtil;->getAspectRatio(Lcom/android/camera/util/Size;)Lcom/android/camera/exif/Rational;

    move-result-object v7

    .line 1646
    .local v7, "sensorAspectRatio":Lcom/android/camera/exif/Rational;
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->asLandscape()Lcom/android/camera/util/Size;

    move-result-object v8

    invoke-static {v8}, Lcom/android/camera/settings/ResolutionUtil;->getAspectRatio(Lcom/android/camera/util/Size;)Lcom/android/camera/exif/Rational;

    move-result-object v6

    .line 1647
    .local v6, "pictureAspectRatio":Lcom/android/camera/exif/Rational;
    invoke-static {v6, v7}, Lcom/android/camera/settings/ResolutionUtil;->hasSameAspectRatio(Lcom/android/camera/exif/Rational;Lcom/android/camera/exif/Rational;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1648
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 1649
    .local v0, "center_x":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 1650
    .local v1, "center_y":I
    sget-object v8, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_4x3:Lcom/android/camera/exif/Rational;

    invoke-static {v8, v6}, Lcom/android/camera/settings/ResolutionUtil;->hasSameAspectRatio(Lcom/android/camera/exif/Rational;Lcom/android/camera/exif/Rational;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_16x9:Lcom/android/camera/exif/Rational;

    .line 1651
    invoke-static {v8, v6}, Lcom/android/camera/settings/ResolutionUtil;->hasSameAspectRatio(Lcom/android/camera/exif/Rational;Lcom/android/camera/exif/Rational;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_18x9:Lcom/android/camera/exif/Rational;

    .line 1652
    invoke-static {v8, v6}, Lcom/android/camera/settings/ResolutionUtil;->hasSameAspectRatio(Lcom/android/camera/exif/Rational;Lcom/android/camera/exif/Rational;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1653
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v5, v8, 0x2

    .line 1654
    .local v5, "halfWidth":I
    int-to-float v8, v5

    invoke-virtual {v6}, Lcom/android/camera/exif/Rational;->toFloat()F

    move-result v9

    div-float/2addr v8, v9

    float-to-int v3, v8

    .line 1655
    .local v3, "halfHeight":I
    sub-int v8, v0, v5

    sub-int v9, v1, v3

    add-int v10, v0, v5

    add-int v11, v1, v3

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 1662
    .end local v0    # "center_x":I
    .end local v1    # "center_y":I
    .end local v3    # "halfHeight":I
    .end local v5    # "halfWidth":I
    .end local v6    # "pictureAspectRatio":Lcom/android/camera/exif/Rational;
    .end local v7    # "sensorAspectRatio":Lcom/android/camera/exif/Rational;
    :cond_1
    :goto_0
    return-object v2

    .line 1656
    .restart local v0    # "center_x":I
    .restart local v1    # "center_y":I
    .restart local v6    # "pictureAspectRatio":Lcom/android/camera/exif/Rational;
    .restart local v7    # "sensorAspectRatio":Lcom/android/camera/exif/Rational;
    :cond_2
    sget-object v8, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_1x1:Lcom/android/camera/exif/Rational;

    invoke-static {v8, v6}, Lcom/android/camera/settings/ResolutionUtil;->hasSameAspectRatio(Lcom/android/camera/exif/Rational;Lcom/android/camera/exif/Rational;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1657
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    div-int/lit8 v4, v8, 0x2

    .line 1658
    .local v4, "halfShortSideLength":I
    sub-int v8, v0, v4

    sub-int v9, v1, v4

    add-int v10, v0, v4

    add-int v11, v1, v4

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public static distance(FFFF)F
    .locals 4
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "sx"    # F
    .param p3, "sy"    # F

    .prologue
    .line 432
    sub-float v0, p0, p2

    .line 433
    .local v0, "dx":F
    sub-float v1, p1, p3

    .line 434
    .local v1, "dy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static dumpRect(Landroid/graphics/RectF;Ljava/lang/String;)V
    .locals 3
    .param p0, "rect"    # Landroid/graphics/RectF;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 838
    sget-object v0, Lcom/android/camera/util/CameraUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 840
    return-void
.end method

.method public static dumpStackTrace(I)Ljava/lang/String;
    .locals 5
    .param p0, "level"    # I

    .prologue
    .line 1294
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 1296
    .local v0, "elems":[Ljava/lang/StackTraceElement;
    if-nez p0, :cond_0

    array-length p0, v0

    .line 1297
    :goto_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 1298
    .local v2, "ret":Ljava/lang/String;
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_1
    if-ge v1, p0, :cond_1

    .line 1299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1298
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1296
    .end local v1    # "i":I
    .end local v2    # "ret":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, p0, 0x3

    array-length v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_0

    .line 1301
    .restart local v1    # "i":I
    .restart local v2    # "ret":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 417
    if-eq p0, p1, :cond_2

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static fadeIn(Landroid/view/View;FFJ)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "startAlpha"    # F
    .param p2, "endAlpha"    # F
    .param p3, "duration"    # J

    .prologue
    .line 902
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 910
    :goto_0
    return-void

    .line 906
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 907
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 908
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 909
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static generateBokehBurstImgTitle(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "isCover"    # Z

    .prologue
    .line 268
    const-string v0, ""

    .line 269
    .local v0, "dataToken":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 270
    const-string v4, "_"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, "titles":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 272
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    .end local v3    # "titles":[Ljava/lang/String;
    :cond_0
    const-string v2, ""

    .line 277
    .local v2, "result":Ljava/lang/String;
    const-string v1, ""

    .line 278
    .local v1, "imgNo":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 279
    const-string v1, "00001"

    .line 283
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "00001PORTRAIT_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_BURST"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 285
    return-object v2

    .line 281
    :cond_1
    const-string v1, "00002"

    goto :goto_0
.end method

.method public static getCameraFacingIntentExtras(Landroid/app/Activity;)I
    .locals 7
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v6, -0x1

    .line 769
    const/4 v1, -0x1

    .line 772
    .local v1, "cameraId":I
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extras.CAMERA_FACING"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 774
    .local v3, "intentCameraId":I
    invoke-static {v3}, Lcom/android/camera/util/CameraUtil;->isFrontCameraIntent(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 776
    check-cast p0, Lcom/android/camera/CameraActivity;

    .end local p0    # "currentActivity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v4

    .line 777
    invoke-interface {v4}, Lcom/android/camera/app/CameraProvider;->getFirstFrontCameraId()I

    move-result v2

    .line 778
    .local v2, "frontCameraId":I
    if-eq v2, v6, :cond_0

    .line 779
    move v1, v2

    .line 789
    .end local v2    # "frontCameraId":I
    :cond_0
    :goto_0
    return v1

    .line 781
    .restart local p0    # "currentActivity":Landroid/app/Activity;
    :cond_1
    invoke-static {v3}, Lcom/android/camera/util/CameraUtil;->isBackCameraIntent(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 783
    check-cast p0, Lcom/android/camera/CameraActivity;

    .end local p0    # "currentActivity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v4

    .line 784
    invoke-interface {v4}, Lcom/android/camera/app/CameraProvider;->getFirstBackCameraId()I

    move-result v0

    .line 785
    .local v0, "backCameraId":I
    if-eq v0, v6, :cond_0

    .line 786
    move v1, v0

    goto :goto_0
.end method

.method public static getCameraModeContentDescription(ILandroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "modeIndex"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1398
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0015

    .line 1399
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1400
    .local v0, "cameraModesDesc":[Ljava/lang/String;
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    .line 1401
    :cond_0
    sget-object v1, Lcom/android/camera/util/CameraUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid mode index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1402
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 1404
    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, p0

    goto :goto_0
.end method

.method public static getCameraModeCoverIconResId(ILandroid/content/Context;)I
    .locals 5
    .param p0, "modeIndex"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 1452
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0016

    .line 1453
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1454
    .local v0, "cameraModesIcons":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_0

    if-gez p0, :cond_1

    .line 1456
    :cond_0
    sget-object v2, Lcom/android/camera/util/CameraUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid mode index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1459
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0, p0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    goto :goto_0
.end method

.method public static getCameraModeIconResId(ILandroid/content/Context;)I
    .locals 5
    .param p0, "modeIndex"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 1333
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0017

    .line 1334
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1335
    .local v0, "cameraModesIcons":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_0

    if-gez p0, :cond_1

    .line 1337
    :cond_0
    sget-object v2, Lcom/android/camera/util/CameraUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid mode index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1340
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0, p0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    goto :goto_0
.end method

.method public static getCameraModeParentModeId(ILandroid/content/Context;)I
    .locals 4
    .param p0, "modeIndex"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1434
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0018

    .line 1435
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 1436
    .local v0, "cameraModeParent":[I
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    .line 1437
    :cond_0
    sget-object v1, Lcom/android/camera/util/CameraUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid mode index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1438
    const/4 v1, 0x0

    .line 1440
    :goto_0
    return v1

    :cond_1
    aget v1, v0, p0

    goto :goto_0
.end method

.method public static getCameraModeText(ILandroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "modeIndex"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1352
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d001a

    .line 1353
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1354
    .local v0, "cameraModesText":[Ljava/lang/String;
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    .line 1355
    :cond_0
    sget-object v1, Lcom/android/camera/util/CameraUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid mode index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1356
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 1363
    :goto_0
    return-object v1

    .line 1359
    :cond_1
    sget-boolean v1, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$Mode;->ENABLE_PRO_MODE:Z

    if-eqz v1, :cond_2

    .line 1360
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne p0, v1, :cond_2

    .line 1361
    const v1, 0x7f0800f4

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1363
    :cond_2
    aget-object v1, v0, p0

    goto :goto_0
.end method

.method public static getCameraModeText(ILandroid/content/Context;ILcom/android/camera/one/OneCamera$Facing;)Ljava/lang/String;
    .locals 2
    .param p0, "modeIndex"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pipMode"    # I
    .param p3, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 1377
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 1378
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1386
    :goto_0
    return-object v0

    .line 1379
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne p0, v0, :cond_1

    .line 1380
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080100

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1381
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne p0, v0, :cond_2

    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p3, v0, :cond_2

    .line 1383
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1386
    :cond_2
    invoke-static {p0, p1}, Lcom/android/camera/util/CameraUtil;->getCameraModeText(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCameraShutterIconId(ILandroid/content/Context;)I
    .locals 4
    .param p0, "modeIndex"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1416
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0019

    .line 1417
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1418
    .local v0, "shutterIcons":Landroid/content/res/TypedArray;
    if-ltz p0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-lt p0, v1, :cond_1

    .line 1419
    :cond_0
    sget-object v1, Lcom/android/camera/util/CameraUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid mode index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1420
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid mode index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1422
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    return v1
.end method

.method public static getCameraThemeColorId(ILandroid/content/Context;)I
    .locals 5
    .param p0, "modeIndex"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 1314
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d001b

    .line 1315
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1316
    .local v0, "colorRes":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_0

    if-gez p0, :cond_1

    .line 1318
    :cond_0
    sget-object v2, Lcom/android/camera/util/CameraUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid mode index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1321
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0, p0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    goto :goto_0
.end method

.method public static getDefaultDisplaySize()Lcom/android/camera/util/Size;
    .locals 1

    .prologue
    .line 549
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDefaultDisplaySize()Lcom/android/camera/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayRotation()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 532
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/util/AndroidServices;->provideWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 533
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 534
    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 535
    .local v0, "rotation":I
    packed-switch v0, :pswitch_data_0

    .line 545
    :goto_0
    :pswitch_0
    return v2

    .line 539
    :pswitch_1
    const/16 v2, 0x5a

    goto :goto_0

    .line 541
    :pswitch_2
    const/16 v2, 0xb4

    goto :goto_0

    .line 543
    :pswitch_3
    const/16 v2, 0x10e

    goto :goto_0

    .line 535
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getGaussianMask([F)V
    .locals 10
    .param p0, "mask"    # [F

    .prologue
    .line 1024
    array-length v2, p0

    .line 1025
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    .line 1026
    .local v3, "mid":I
    int-to-float v4, v2

    .line 1027
    .local v4, "sigma":F
    const/4 v5, 0x0

    .line 1028
    .local v5, "sum":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, v3, :cond_1

    .line 1029
    sub-int v7, v1, v3

    neg-int v7, v7

    sub-int v8, v1, v3

    mul-int/2addr v7, v8

    mul-int v8, v3, v3

    div-int/2addr v7, v8

    int-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    double-to-float v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v4

    mul-float/2addr v8, v4

    div-float v0, v7, v8

    .line 1031
    .local v0, "ex":F
    add-int/lit8 v7, v2, -0x1

    sub-int v6, v7, v1

    .line 1032
    .local v6, "symmetricIndex":I
    aput v0, p0, v1

    .line 1033
    aput v0, p0, v6

    .line 1034
    aget v7, p0, v1

    add-float/2addr v5, v7

    .line 1035
    if-eq v1, v6, :cond_0

    .line 1036
    aget v7, p0, v6

    add-float/2addr v5, v7

    .line 1028
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1040
    .end local v0    # "ex":F
    .end local v6    # "symmetricIndex":I
    :cond_1
    const/4 v1, 0x0

    :goto_1
    array-length v7, p0

    if-ge v1, v7, :cond_2

    .line 1041
    aget v7, p0, v1

    div-float/2addr v7, v5

    aput v7, p0, v1

    .line 1040
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1044
    :cond_2
    return-void
.end method

.method public static getIconResourceArrayId(Landroid/content/Context;I)[I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "arrayId"    # I

    .prologue
    .line 1593
    const/4 v1, 0x0

    .line 1596
    .local v1, "ids":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1597
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    new-array v2, v3, [I

    .line 1598
    .local v2, "resIds":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1599
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1598
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1602
    :cond_0
    if-eqz v1, :cond_1

    .line 1603
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1606
    :cond_1
    return-object v2

    .line 1602
    .end local v0    # "i":I
    .end local v2    # "resIds":[I
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_2

    .line 1603
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    throw v3
.end method

.method public static getImageRotation(IIZ)I
    .locals 1
    .param p0, "sensorOrientation"    # I
    .param p1, "deviceOrientation"    # I
    .param p2, "isFrontCamera"    # Z

    .prologue
    .line 1531
    if-eqz p2, :cond_0

    .line 1532
    rsub-int v0, p1, 0x168

    rem-int/lit16 p1, v0, 0x168

    .line 1534
    :cond_0
    add-int v0, p0, p1

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method public static getJpegRotation(ILandroid/hardware/camera2/CameraCharacteristics;)I
    .locals 3
    .param p0, "deviceOrientationDegrees"    # I
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    const/4 v0, 0x0

    .line 1507
    const/4 v2, -0x1

    if-ne p0, v2, :cond_0

    .line 1513
    :goto_0
    return v0

    .line 1510
    :cond_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1512
    .local v0, "isFrontCamera":Z
    :cond_1
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1513
    .local v1, "sensorOrientation":I
    invoke-static {v1, p0, v0}, Lcom/android/camera/util/CameraUtil;->getImageRotation(IIZ)I

    move-result v0

    goto :goto_0
.end method

.method public static getMaxPreviewFpsRange(Ljava/util/List;)[I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[I>;)[I"
        }
    .end annotation

    .prologue
    .line 1000
    .local p0, "frameRates":Ljava/util/List;, "Ljava/util/List<[I>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1002
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1004
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_0
.end method

.method public static getNumCpuCores()I
    .locals 5

    .prologue
    .line 1485
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/devices/system/cpu/"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1487
    .local v0, "dir":Ljava/io/File;
    new-instance v3, Lcom/android/camera/util/CameraUtil$1CpuFilter;

    invoke-direct {v3}, Lcom/android/camera/util/CameraUtil$1CpuFilter;-><init>()V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 1489
    .local v2, "files":[Ljava/io/File;
    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1493
    .end local v2    # "files":[Ljava/io/File;
    :goto_0
    return v3

    .line 1490
    :catch_0
    move-exception v1

    .line 1492
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/camera/util/CameraUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Failed to count number of cores, defaulting to 1"

    invoke-static {v3, v4, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1493
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static getOptimalPreviewSize(Ljava/util/List;D)Lcom/android/camera/util/Size;
    .locals 3
    .param p1, "targetRatio"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;D)",
            "Lcom/android/camera/util/Size;"
        }
    .end annotation

    .prologue
    .line 560
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    invoke-static {p0, p1, p2}, Lcom/android/camera/util/CameraUtil;->getOptimalPreviewSizeIndex(Ljava/util/List;D)I

    move-result v0

    .line 561
    .local v0, "optimalPickIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 562
    const/4 v1, 0x0

    .line 564
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/util/Size;

    goto :goto_0
.end method

.method public static getOptimalPreviewSizeIndex(Ljava/util/List;D)I
    .locals 5
    .param p1, "targetRatio"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;D)I"
        }
    .end annotation

    .prologue
    .line 586
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    .line 588
    .local v0, "aspectRatioTolerance":D
    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {p0, p1, p2, v2}, Lcom/android/camera/util/CameraUtil;->getOptimalPreviewSizeIndex(Ljava/util/List;DLjava/lang/Double;)I

    move-result v2

    return v2
.end method

.method public static getOptimalPreviewSizeIndex(Ljava/util/List;DLjava/lang/Double;)I
    .locals 19
    .param p1, "targetRatio"    # D
    .param p3, "aspectRatioTolerance"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;D",
            "Ljava/lang/Double;",
            ")I"
        }
    .end annotation

    .prologue
    .line 615
    .local p0, "previewSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    if-nez p0, :cond_1

    .line 616
    const/4 v8, -0x1

    .line 670
    :cond_0
    :goto_0
    return v8

    .line 621
    :cond_1
    if-nez p3, :cond_2

    .line 622
    invoke-static/range {p0 .. p2}, Lcom/android/camera/util/CameraUtil;->getOptimalPreviewSizeIndex(Ljava/util/List;D)I

    move-result v8

    goto :goto_0

    .line 625
    :cond_2
    const/4 v8, -0x1

    .line 626
    .local v8, "optimalSizeIndex":I
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 633
    .local v6, "minDiff":D
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDefaultDisplaySize()Lcom/android/camera/util/Size;

    move-result-object v2

    .line 634
    .local v2, "defaultDisplaySize":Lcom/android/camera/util/Size;
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v13

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 636
    .local v12, "targetHeight":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v13

    if-ge v3, v13, :cond_6

    .line 637
    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/util/Size;

    .line 638
    .local v9, "size":Lcom/android/camera/util/Size;
    invoke-virtual {v9}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v13

    int-to-double v14, v13

    invoke-virtual {v9}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v13

    int-to-double v0, v13

    move-wide/from16 v16, v0

    div-double v10, v14, v16

    .line 639
    .local v10, "ratio":D
    sub-double v14, v10, p1

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    cmpl-double v13, v14, v16

    if-lez v13, :cond_4

    .line 636
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 643
    :cond_4
    invoke-virtual {v9}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v13

    sub-int/2addr v13, v12

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v4, v13

    .line 644
    .local v4, "heightDiff":D
    cmpg-double v13, v4, v6

    if-gez v13, :cond_5

    .line 645
    move v8, v3

    .line 646
    move-wide v6, v4

    goto :goto_2

    .line 647
    :cond_5
    cmpl-double v13, v4, v6

    if-nez v13, :cond_3

    .line 650
    invoke-virtual {v9}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v13

    if-ge v13, v12, :cond_3

    .line 651
    move v8, v3

    .line 652
    move-wide v6, v4

    goto :goto_2

    .line 658
    .end local v4    # "heightDiff":D
    .end local v9    # "size":Lcom/android/camera/util/Size;
    .end local v10    # "ratio":D
    :cond_6
    const/4 v13, -0x1

    if-ne v8, v13, :cond_0

    .line 659
    sget-object v13, Lcom/android/camera/util/CameraUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "No preview size match the aspect ratio. available sizes: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 660
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 661
    const/4 v3, 0x0

    :goto_3
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v13

    if-ge v3, v13, :cond_0

    .line 662
    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/util/Size;

    .line 663
    .restart local v9    # "size":Lcom/android/camera/util/Size;
    invoke-virtual {v9}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v13

    sub-int/2addr v13, v12

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v14, v13

    cmpg-double v13, v14, v6

    if-gez v13, :cond_7

    .line 664
    move v8, v3

    .line 665
    invoke-virtual {v9}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v13

    sub-int/2addr v13, v12

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v6, v13

    .line 661
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public static getOptimalVideoSnapshotPictureSize(Ljava/util/List;II)Lcom/android/camera/util/Size;
    .locals 16
    .param p1, "targetWidth"    # I
    .param p2, "targetHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;II)",
            "Lcom/android/camera/util/Size;"
        }
    .end annotation

    .prologue
    .line 726
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    .line 727
    .local v2, "ASPECT_TOLERANCE":D
    if-nez p0, :cond_0

    .line 728
    const/4 v5, 0x0

    .line 764
    :goto_0
    return-object v5

    .line 731
    :cond_0
    const/4 v4, 0x0

    .line 736
    .local v4, "optimalSize":Lcom/android/camera/util/Size;
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/util/Size;

    .line 737
    .local v5, "size":Lcom/android/camera/util/Size;
    invoke-virtual {v5}, Lcom/android/camera/util/Size;->height()I

    move-result v11

    move/from16 v0, p2

    if-ne v11, v0, :cond_1

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->width()I

    move-result v11

    move/from16 v0, p1

    if-ne v11, v0, :cond_1

    goto :goto_0

    .line 743
    .end local v5    # "size":Lcom/android/camera/util/Size;
    :cond_2
    move/from16 v0, p1

    int-to-double v10, v0

    move/from16 v0, p2

    int-to-double v12, v0

    div-double v8, v10, v12

    .line 744
    .local v8, "targetRatio":D
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/util/Size;

    .line 745
    .restart local v5    # "size":Lcom/android/camera/util/Size;
    invoke-virtual {v5}, Lcom/android/camera/util/Size;->width()I

    move-result v11

    int-to-double v12, v11

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->height()I

    move-result v11

    int-to-double v14, v11

    div-double v6, v12, v14

    .line 746
    .local v6, "ratio":D
    sub-double v12, v6, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v11, v12, v14

    if-gtz v11, :cond_3

    .line 749
    if-eqz v4, :cond_4

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->width()I

    move-result v11

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->width()I

    move-result v12

    if-le v11, v12, :cond_3

    .line 750
    :cond_4
    move-object v4, v5

    goto :goto_1

    .line 756
    .end local v5    # "size":Lcom/android/camera/util/Size;
    .end local v6    # "ratio":D
    :cond_5
    if-nez v4, :cond_8

    .line 757
    sget-object v10, Lcom/android/camera/util/CameraUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v11, "No picture size match the aspect ratio"

    invoke-static {v10, v11}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 758
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/util/Size;

    .line 759
    .restart local v5    # "size":Lcom/android/camera/util/Size;
    if-eqz v4, :cond_7

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->width()I

    move-result v11

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->width()I

    move-result v12

    if-le v11, v12, :cond_6

    .line 760
    :cond_7
    move-object v4, v5

    goto :goto_2

    .end local v5    # "size":Lcom/android/camera/util/Size;
    :cond_8
    move-object v5, v4

    .line 764
    goto/16 :goto_0
.end method

.method public static getPhotoPreviewFpsRange(Lcom/android/ex/camera2/portability/CameraCapabilities;)[I
    .locals 1
    .param p0, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;

    .prologue
    .line 957
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->getPhotoPreviewFpsRange(Ljava/util/List;)[I

    move-result-object v0

    return-object v0
.end method

.method public static getPhotoPreviewFpsRange(Ljava/util/List;)[I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[I>;)[I"
        }
    .end annotation

    .prologue
    .local p0, "frameRates":Ljava/util/List;, "Ljava/util/List<[I>;"
    const/4 v7, 0x0

    const/16 v12, 0x7530

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 961
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 962
    sget-object v8, Lcom/android/camera/util/CameraUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v9, "No suppoted frame rates returned!"

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 996
    :goto_0
    return-object v7

    .line 967
    :cond_0
    const v2, 0x61a80

    .line 968
    .local v2, "lowestMinRate":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 969
    .local v5, "rate":[I
    aget v4, v5, v10

    .line 970
    .local v4, "minFps":I
    aget v3, v5, v11

    .line 971
    .local v3, "maxFps":I
    if-lt v3, v12, :cond_1

    if-gt v4, v12, :cond_1

    if-ge v4, v2, :cond_1

    .line 974
    move v2, v4

    goto :goto_1

    .line 980
    .end local v3    # "maxFps":I
    .end local v4    # "minFps":I
    .end local v5    # "rate":[I
    :cond_2
    const/4 v6, -0x1

    .line 981
    .local v6, "resultIndex":I
    const/4 v0, 0x0

    .line 982
    .local v0, "highestMaxRate":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_4

    .line 983
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 984
    .restart local v5    # "rate":[I
    aget v4, v5, v10

    .line 985
    .restart local v4    # "minFps":I
    aget v3, v5, v11

    .line 986
    .restart local v3    # "maxFps":I
    if-ne v4, v2, :cond_3

    if-ge v0, v3, :cond_3

    .line 987
    move v0, v3

    .line 988
    move v6, v1

    .line 982
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 992
    .end local v3    # "maxFps":I
    .end local v4    # "minFps":I
    .end local v5    # "rate":[I
    :cond_4
    if-ltz v6, :cond_5

    .line 993
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    goto :goto_0

    .line 995
    :cond_5
    sget-object v8, Lcom/android/camera/util/CameraUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v9, "Can\'t find an appropiate frame rate range!"

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getRealDeviceHeight()I
    .locals 4

    .prologue
    .line 553
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/util/AndroidServices;->provideWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 554
    .local v1, "windowManager":Landroid/view/WindowManager;
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 555
    .local v0, "res":Landroid/graphics/Point;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 556
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method public static getRelativeLocation(Landroid/view/View;Landroid/view/View;)[I
    .locals 6
    .param p0, "reference"    # Landroid/view/View;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 810
    sget-object v2, Lcom/android/camera/util/CameraUtil;->sLocation:[I

    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 811
    sget-object v2, Lcom/android/camera/util/CameraUtil;->sLocation:[I

    aget v0, v2, v4

    .line 812
    .local v0, "referenceX":I
    sget-object v2, Lcom/android/camera/util/CameraUtil;->sLocation:[I

    aget v1, v2, v5

    .line 813
    .local v1, "referenceY":I
    sget-object v2, Lcom/android/camera/util/CameraUtil;->sLocation:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 814
    sget-object v2, Lcom/android/camera/util/CameraUtil;->sLocation:[I

    aget v3, v2, v4

    sub-int/2addr v3, v0

    aput v3, v2, v4

    .line 815
    sget-object v2, Lcom/android/camera/util/CameraUtil;->sLocation:[I

    aget v3, v2, v5

    sub-int/2addr v3, v1

    aput v3, v2, v5

    .line 816
    sget-object v2, Lcom/android/camera/util/CameraUtil;->sLocation:[I

    return-object v2
.end method

.method public static getSceneDetectionIconResId(ILandroid/content/Context;)I
    .locals 5
    .param p0, "sceneIndex"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 1622
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00cb

    .line 1623
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1624
    .local v0, "cameraModesIcons":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_0

    if-gez p0, :cond_1

    .line 1626
    :cond_0
    sget-object v2, Lcom/android/camera/util/CameraUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid mode index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1629
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0, p0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    goto :goto_0
.end method

.method public static getSceneDetectionTextResId(ILandroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "sceneIndex"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1632
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00cc

    .line 1633
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1634
    .local v0, "cameraModesDesc":[Ljava/lang/String;
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    .line 1635
    :cond_0
    sget-object v1, Lcom/android/camera/util/CameraUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid scene index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1636
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 1638
    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, p0

    goto :goto_0
.end method

.method public static getSmallestPreviewSizeIndex(Ljava/util/List;D)I
    .locals 5
    .param p1, "targetRatio"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;D)I"
        }
    .end annotation

    .prologue
    .line 595
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    .line 597
    .local v0, "aspectRatioTolerance":D
    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {p0, p1, p2, v2}, Lcom/android/camera/util/CameraUtil;->getSmallestPreviewSizeIndex(Ljava/util/List;DLjava/lang/Double;)I

    move-result v2

    return v2
.end method

.method public static getSmallestPreviewSizeIndex(Ljava/util/List;DLjava/lang/Double;)I
    .locals 13
    .param p1, "targetRatio"    # D
    .param p3, "aspectRatioTolerance"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;D",
            "Ljava/lang/Double;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, "previewSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    const/4 v7, -0x1

    .line 675
    if-nez p0, :cond_1

    move v6, v7

    .line 708
    :cond_0
    :goto_0
    return v6

    .line 681
    :cond_1
    if-nez p3, :cond_2

    .line 682
    invoke-static {p0, p1, p2}, Lcom/android/camera/util/CameraUtil;->getSmallestPreviewSizeIndex(Ljava/util/List;D)I

    move-result v6

    goto :goto_0

    .line 685
    :cond_2
    const/4 v6, -0x1

    .line 686
    .local v6, "smallestSizeIndex":I
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 689
    .local v2, "minHeight":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_5

    .line 690
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/util/Size;

    .line 691
    .local v1, "size":Lcom/android/camera/util/Size;
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v10

    int-to-double v10, v10

    div-double v4, v8, v10

    .line 692
    .local v4, "ratio":D
    sub-double v8, v4, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    cmpl-double v8, v8, v10

    if-lez v8, :cond_4

    .line 689
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 696
    :cond_4
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->height()I

    move-result v8

    int-to-double v8, v8

    cmpl-double v8, v2, v8

    if-lez v8, :cond_3

    .line 697
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v8

    int-to-double v2, v8

    .line 698
    move v6, v0

    goto :goto_2

    .line 704
    .end local v1    # "size":Lcom/android/camera/util/Size;
    .end local v4    # "ratio":D
    :cond_5
    if-ne v6, v7, :cond_0

    .line 705
    invoke-static/range {p0 .. p3}, Lcom/android/camera/util/CameraUtil;->getOptimalPreviewSizeIndex(Ljava/util/List;DLjava/lang/Double;)I

    move-result v6

    goto :goto_0
.end method

.method public static inlineRectToRectF(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "rectF"    # Landroid/graphics/RectF;
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 843
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 844
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 845
    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 846
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 847
    return-void
.end method

.method public static instance()Lcom/android/camera/util/CameraUtil;
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/android/camera/util/CameraUtil$Singleton;->access$100()Lcom/android/camera/util/CameraUtil;

    move-result-object v0

    return-object v0
.end method

.method private static isBackCameraIntent(I)Z
    .locals 1
    .param p0, "intentCameraId"    # I

    .prologue
    .line 797
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCaptureIntentModule(ILandroid/content/Context;)Z
    .locals 3
    .param p0, "modeIndex"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 1572
    if-nez p1, :cond_1

    .line 1573
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-eq p0, v1, :cond_2

    .line 1574
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne p0, v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isDualSightActionModule(ILandroid/content/Context;)Z
    .locals 5
    .param p0, "modeIndex"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 1564
    if-nez p1, :cond_1

    .line 1568
    :cond_0
    :goto_0
    return v2

    .line 1566
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1567
    .local v0, "pipPhotoModule":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1568
    .local v1, "pipVideoModule":I
    if-eq p0, v0, :cond_2

    if-ne p0, v1, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static isFrontCameraIntent(I)Z
    .locals 1
    .param p0, "intentCameraId"    # I

    .prologue
    const/4 v0, 0x1

    .line 793
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLiveBroadcastAllowModule(ILandroid/content/Context;)Z
    .locals 5
    .param p0, "modeIndex"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 1538
    if-nez p1, :cond_1

    .line 1541
    :cond_0
    :goto_0
    return v2

    .line 1539
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1540
    .local v1, "videoModule":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1541
    .local v0, "pipVideoModule":I
    if-eq p0, v1, :cond_2

    if-ne p0, v0, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isOnlySupportBackCamera(ILandroid/content/Context;)Z
    .locals 3
    .param p0, "modeIndex"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 1578
    if-nez p1, :cond_1

    .line 1579
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isOnlySupportBackCamera(ILandroid/content/Context;Z)Z
    .locals 4
    .param p0, "modeIndex"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isMain"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1582
    if-nez p1, :cond_1

    .line 1590
    :cond_0
    :goto_0
    return v1

    .line 1583
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b000e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne p0, v0, :cond_2

    move v1, v2

    .line 1584
    goto :goto_0

    .line 1585
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0014

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne p0, v0, :cond_6

    .line 1586
    if-nez p2, :cond_3

    if-eqz p2, :cond_4

    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    :goto_1
    invoke-static {v0}, Lcom/android/camera/util/ProductModelUtil;->isSlowMotionAllow(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    move v0, v2

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    .line 1587
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b000c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 1588
    if-nez p2, :cond_7

    if-eqz p2, :cond_8

    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    :goto_3
    invoke-static {v0}, Lcom/android/camera/util/ProductModelUtil;->isBokehAllow(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    move v1, v2

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    goto :goto_3
.end method

.method public static isPhotoModule(ILandroid/content/Context;)Z
    .locals 4
    .param p0, "modeIndex"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 1557
    if-nez p1, :cond_1

    .line 1560
    :cond_0
    :goto_0
    return v1

    .line 1559
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1560
    .local v0, "photoModule":I
    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z
    .locals 6
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v2, 0x0

    .line 820
    if-nez p0, :cond_0

    .line 834
    :goto_0
    return v2

    .line 825
    :cond_0
    :try_start_0
    const-string v3, "r"

    invoke-virtual {p1, p0, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 826
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    .line 827
    sget-object v3, Lcom/android/camera/util/CameraUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to open URI. URI="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 831
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 832
    .local v0, "ex":Ljava/io/IOException;
    goto :goto_0

    .line 830
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isVideoActionModule(ILandroid/content/Context;)Z
    .locals 8
    .param p0, "modeIndex"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 1545
    if-nez p1, :cond_1

    .line 1552
    :cond_0
    :goto_0
    return v5

    .line 1547
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0017

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 1548
    .local v4, "videoModule":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0012

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1549
    .local v0, "pipVideoModule":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0016

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1550
    .local v2, "timelapseModule":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0014

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1551
    .local v1, "slowmotionModule":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0018

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1552
    .local v3, "videoCaptureIntentModuleId":I
    if-eq p0, v4, :cond_2

    if-eq p0, v0, :cond_2

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_2

    if-ne p0, v3, :cond_0

    :cond_2
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static lerp(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "t"    # F

    .prologue
    .line 470
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method public static makeBitmap([BI)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "jpegData"    # [B
    .param p1, "maxNumOfPixels"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 290
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 291
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 292
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 294
    iget-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v3, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v3, v5, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v3, v5, :cond_1

    .line 308
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v2

    .line 298
    .restart local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v3, -0x1

    invoke-static {v1, v3, p1}, Lcom/android/camera/util/CameraUtil;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 300
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 302
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 303
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 304
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 306
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 307
    .local v0, "ex":Ljava/lang/OutOfMemoryError;
    sget-object v3, Lcom/android/camera/util/CameraUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Got oom exception "

    invoke-static {v3, v4, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static nextPowerOf2(I)I
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 422
    add-int/lit8 p0, p0, -0x1

    .line 423
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 424
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 425
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 426
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 427
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 428
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static normalizedSensorCoordsForNormalizedDisplayCoords(FFI)Landroid/graphics/PointF;
    .locals 3
    .param p0, "nx"    # F
    .param p1, "ny"    # F
    .param p2, "sensorOrientation"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 483
    sparse-switch p2, :sswitch_data_0

    .line 493
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 485
    :sswitch_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    .line 487
    :sswitch_1
    new-instance v0, Landroid/graphics/PointF;

    sub-float v1, v2, p0

    invoke-direct {v0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    .line 489
    :sswitch_2
    new-instance v0, Landroid/graphics/PointF;

    sub-float v1, v2, p0

    sub-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    .line 491
    :sswitch_3
    new-instance v0, Landroid/graphics/PointF;

    sub-float v1, v2, p1

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    .line 483
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public static pauseAudioPlayback(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1610
    if-nez p0, :cond_0

    .line 1618
    :goto_0
    return-void

    .line 1611
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1612
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1614
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1615
    :catch_0
    move-exception v0

    .line 1616
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/camera/util/CameraUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pauseAudioPlayback error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static playVideo(Lcom/android/camera/CameraActivity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 6
    .param p0, "activity"    # Lcom/android/camera/CameraActivity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 1238
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v2

    .line 1239
    .local v2, "isSecureCamera":Z
    if-nez v2, :cond_0

    .line 1240
    invoke-static {p1}, Lcom/android/camera/util/IntentHelper;->getVideoPlayerIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.extra.TITLE"

    .line 1241
    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "treat-up-as-back"

    const/4 v5, 0x1

    .line 1242
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 1243
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->launchActivityByIntent(Landroid/content/Intent;)V

    .line 1254
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isSecureCamera":Z
    :goto_0
    return-void

    .line 1248
    .restart local v2    # "isSecureCamera":Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1250
    .end local v2    # "isSecureCamera":Z
    :catch_0
    move-exception v0

    .line 1251
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const v3, 0x7f08028d

    invoke-virtual {p0, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 1252
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static pointInView(FFLandroid/view/View;)Z
    .locals 4
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 804
    sget-object v2, Lcom/android/camera/util/CameraUtil;->sLocation:[I

    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 805
    sget-object v2, Lcom/android/camera/util/CameraUtil;->sLocation:[I

    aget v2, v2, v1

    int-to-float v2, v2

    cmpl-float v2, p0, v2

    if-ltz v2, :cond_0

    sget-object v2, Lcom/android/camera/util/CameraUtil;->sLocation:[I

    aget v2, v2, v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p0, v2

    if-gez v2, :cond_0

    sget-object v2, Lcom/android/camera/util/CameraUtil;->sLocation:[I

    aget v2, v2, v0

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    sget-object v2, Lcom/android/camera/util/CameraUtil;->sLocation:[I

    aget v2, v2, v0

    .line 806
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    .line 805
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 806
    goto :goto_0
.end method

.method public static prepareMatrix(Landroid/graphics/Matrix;ZIII)V
    .locals 4
    .param p0, "matrix"    # Landroid/graphics/Matrix;
    .param p1, "mirror"    # Z
    .param p2, "displayOrientation"    # I
    .param p3, "viewWidth"    # I
    .param p4, "viewHeight"    # I

    .prologue
    const/high16 v3, 0x44fa0000    # 2000.0f

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 862
    if-eqz p1, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 864
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 867
    int-to-float v0, p3

    div-float/2addr v0, v3

    int-to-float v1, p4

    div-float/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 868
    int-to-float v0, p3

    div-float/2addr v0, v2

    int-to-float v1, p4

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 869
    return-void

    :cond_0
    move v0, v1

    .line 862
    goto :goto_0
.end method

.method public static rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "rectF"    # Landroid/graphics/RectF;

    .prologue
    .line 850
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 851
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-static {p0, v0}, Lcom/android/camera/util/CameraUtil;->inlineRectToRectF(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 852
    return-object v0
.end method

.method public static rectToRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 5
    .param p0, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 856
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public static resizeToFill(IIF)Landroid/graphics/Point;
    .locals 2
    .param p0, "imageRotation"    # I
    .param p1, "boundWidth"    # I
    .param p2, "ratio"    # F

    .prologue
    .line 1161
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 1163
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1165
    .local v0, "p":Landroid/graphics/Point;
    rem-int/lit16 v1, p0, 0xb4

    if-eqz v1, :cond_1

    .line 1166
    int-to-float v1, p1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 1167
    iput p1, v0, Landroid/graphics/Point;->y:I

    .line 1173
    :goto_0
    return-object v0

    .line 1169
    :cond_1
    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 1170
    int-to-float v1, p1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method public static resizeToFill(IIIII)Landroid/graphics/Point;
    .locals 5
    .param p0, "imageWidth"    # I
    .param p1, "imageHeight"    # I
    .param p2, "imageRotation"    # I
    .param p3, "boundWidth"    # I
    .param p4, "boundHeight"    # I

    .prologue
    .line 1132
    rem-int/lit16 v2, p2, 0xb4

    if-eqz v2, :cond_0

    .line 1134
    move v1, p0

    .line 1135
    .local v1, "savedWidth":I
    move p0, p1

    .line 1136
    move p1, v1

    .line 1139
    .end local v1    # "savedWidth":I
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1140
    .local v0, "p":Landroid/graphics/Point;
    iput p3, v0, Landroid/graphics/Point;->x:I

    .line 1141
    iput p4, v0, Landroid/graphics/Point;->y:I

    .line 1145
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 1146
    mul-int v2, p0, p4

    mul-int v3, p3, p1

    if-le v2, v3, :cond_1

    .line 1147
    iget v2, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v2, p1

    div-int/2addr v2, p0

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 1157
    :goto_0
    return-object v0

    .line 1149
    :cond_1
    iget v2, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v2, p0

    div-int/2addr v2, p1

    iput v2, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 1152
    :cond_2
    sget-object v2, Lcom/android/camera/util/CameraUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zero width/height, falling back to bounds (w|h|bw|bh):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/camera/util/CameraUtil;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I
    .param p2, "mirror"    # Z

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 168
    if-nez p1, :cond_0

    if-eqz p2, :cond_4

    :cond_0
    if-eqz p0, :cond_4

    .line 169
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 172
    .local v5, "m":Landroid/graphics/Matrix;
    if-eqz p2, :cond_2

    .line 173
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 174
    add-int/lit16 v0, p1, 0x168

    rem-int/lit16 p1, v0, 0x168

    .line 175
    if-eqz p1, :cond_1

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_5

    .line 176
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 183
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 185
    int-to-float v0, p1

    .line 186
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    .line 185
    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 190
    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 191
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    .line 190
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 192
    .local v7, "b2":Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_4

    .line 193
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    move-object p0, v7

    .line 200
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "b2":Landroid/graphics/Bitmap;
    :cond_4
    :goto_1
    return-object p0

    .line 177
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :cond_5
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_6

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_7

    .line 178
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 180
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid degrees="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static setDualCamModeConfig(I)V
    .locals 7
    .param p0, "dualCameraMode"    # I

    .prologue
    .line 1666
    sget-object v2, Lcom/android/camera/util/CameraUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setDualCamModeConfig = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1668
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

    .line 1669
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/util/AndroidServices;->provideCameraManager()Landroid/hardware/camera2/CameraManager;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1673
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1670
    :catch_0
    move-exception v0

    .line 1671
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/camera/util/CameraUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setDualCamModeConfig error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setGpsParameters(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/location/Location;)V
    .locals 20
    .param p0, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 914
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/camera2/portability/CameraSettings;->clearGpsData()V

    .line 916
    const/4 v2, 0x0

    .line 920
    .local v2, "hasLatLon":Z
    if-eqz p1, :cond_1

    .line 921
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    .line 922
    .local v14, "lat":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    .line 923
    .local v16, "lon":D
    const-wide/16 v4, 0x0

    cmpl-double v3, v14, v4

    if-nez v3, :cond_0

    const-wide/16 v4, 0x0

    cmpl-double v3, v16, v4

    if-eqz v3, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 926
    .end local v14    # "lat":D
    .end local v16    # "lon":D
    :cond_1
    :goto_0
    if-nez v2, :cond_3

    .line 929
    new-instance v3, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    .line 930
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;-><init>(DDDJLjava/lang/String;)V

    .line 929
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setGpsData(Lcom/android/ex/camera2/portability/CameraSettings$GpsData;)V

    .line 945
    :goto_1
    return-void

    .line 923
    .restart local v14    # "lat":D
    .restart local v16    # "lon":D
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 933
    .end local v14    # "lat":D
    .end local v16    # "lon":D
    :cond_3
    sget-object v3, Lcom/android/camera/util/CameraUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Set gps location"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 939
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v18, v4, v6

    .line 940
    .local v18, "utcTimeSeconds":J
    new-instance v3, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    .line 941
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v10, v18, v10

    if-eqz v10, :cond_5

    move-wide/from16 v10, v18

    .line 943
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v3 .. v12}, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;-><init>(DDDJLjava/lang/String;)V

    .line 940
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setGpsData(Lcom/android/ex/camera2/portability/CameraSettings$GpsData;)V

    goto :goto_1

    .line 941
    :cond_4
    const-wide/16 v8, 0x0

    goto :goto_2

    .line 942
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    goto :goto_3
.end method

.method public static showError(Landroid/app/Activity;Lcom/android/camera/util/CameraUtil$OnDialogShowingListener;IIZLjava/lang/Exception;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/android/camera/util/CameraUtil$OnDialogShowingListener;
    .param p2, "dialogMsgId"    # I
    .param p3, "feedbackMsgId"    # I
    .param p4, "finishActivity"    # Z
    .param p5, "ex"    # Ljava/lang/Exception;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 337
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    new-instance v0, Lcom/android/camera/util/CameraUtil$1;

    invoke-direct {v0, p0, p4, p2, p1}, Lcom/android/camera/util/CameraUtil$1;-><init>(Landroid/app/Activity;ZILcom/android/camera/util/CameraUtil$OnDialogShowingListener;)V

    .line 384
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/camera/async/MainThread;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 385
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 387
    :cond_2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static showErrorToast(Landroid/app/Activity;II)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "toastMsgId"    # I
    .param p2, "orientation"    # I

    .prologue
    .line 392
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    new-instance v0, Lcom/android/camera/util/CameraUtil$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/util/CameraUtil$2;-><init>(Landroid/app/Activity;II)V

    .line 402
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/camera/async/MainThread;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 403
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 405
    :cond_2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static showOnMap(Landroid/app/Activity;[D)V
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "latLong"    # [D

    .prologue
    .line 1269
    :try_start_0
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "http://maps.google.com/maps?f=q&q=(%f,%f)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-wide v10, p1, v9

    .line 1270
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    aget-wide v10, p1, v9

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    .line 1269
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1271
    .local v3, "uri":Ljava/lang/String;
    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.google.android.apps.maps"

    const-string v6, "com.google.android.maps.MapsActivity"

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    .local v0, "compName":Landroid/content/ComponentName;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    .line 1274
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 1275
    .local v2, "mapsIntent":Landroid/content/Intent;
    const/high16 v5, 0x80000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1276
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1284
    .end local v0    # "compName":Landroid/content/ComponentName;
    .end local v3    # "uri":Ljava/lang/String;
    :goto_0
    return-void

    .line 1277
    .end local v2    # "mapsIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 1279
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v5, Lcom/android/camera/util/CameraUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "GMM activity not found!"

    invoke-static {v5, v6, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1280
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "geo:%f,%f"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-wide v10, p1, v9

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    aget-wide v10, p1, v9

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1281
    .local v4, "url":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1282
    .restart local v2    # "mapsIntent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static throwIfCameraDisabled()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 1009
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/AndroidServices;->provideDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 1010
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1011
    new-instance v1, Lcom/android/camera/CameraDisabledException;

    invoke-direct {v1}, Lcom/android/camera/CameraDisabledException;-><init>()V

    throw v1

    .line 1013
    :cond_0
    return-void
.end method


# virtual methods
.method public createBurstFolderName(J)Ljava/lang/String;
    .locals 3
    .param p1, "dateTaken"    # J

    .prologue
    .line 878
    iget-object v1, p0, Lcom/android/camera/util/CameraUtil;->mImageFileNamer:Lcom/android/camera/util/CameraUtil$ImageFileNamer;

    monitor-enter v1

    .line 879
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/util/CameraUtil;->mImageFileNamer:Lcom/android/camera/util/CameraUtil$ImageFileNamer;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->generateBurstFolderName(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 880
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createBurstJpegName(J)Ljava/lang/String;
    .locals 3
    .param p1, "dateTaken"    # J

    .prologue
    .line 884
    iget-object v1, p0, Lcom/android/camera/util/CameraUtil;->mImageFileNamer:Lcom/android/camera/util/CameraUtil$ImageFileNamer;

    monitor-enter v1

    .line 885
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/util/CameraUtil;->mImageFileNamer:Lcom/android/camera/util/CameraUtil$ImageFileNamer;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->generateBurstImgName(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 886
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createJpegName(J)Ljava/lang/String;
    .locals 3
    .param p1, "dateTaken"    # J

    .prologue
    .line 872
    iget-object v1, p0, Lcom/android/camera/util/CameraUtil;->mImageFileNamer:Lcom/android/camera/util/CameraUtil$ImageFileNamer;

    monitor-enter v1

    .line 873
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/util/CameraUtil;->mImageFileNamer:Lcom/android/camera/util/CameraUtil$ImageFileNamer;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/util/CameraUtil$ImageFileNamer;->generateName(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 874
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
