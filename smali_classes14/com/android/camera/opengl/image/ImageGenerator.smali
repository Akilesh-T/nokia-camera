.class public Lcom/android/camera/opengl/image/ImageGenerator;
.super Ljava/lang/Object;
.source "ImageGenerator.java"


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field private final mDualSightMode:Lcom/android/camera/opengl/dualsight/DualSightMode;

.field private final mMainCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final mMainTextureCoord:[F

.field private final mMainVertexCoord:[F

.field private final mScreenSize:Lcom/android/camera/util/Size;

.field private final mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final mSlaveTextureCoord:[F

.field private final mSlaveVertexCoord:[F

.field private final mTextureCoordNum:I

.field private final mTextureCoordStride:I

.field private final mVertexCoordNum:I

.field private final mVertexCoordStride:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "ImgGenerator"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/opengl/image/ImageGenerator;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/opengl/dualsight/DualSightMode;Lcom/android/camera/util/Size;IIIILcom/android/camera/one/OneCameraCharacteristics;[F[FLcom/android/camera/one/OneCameraCharacteristics;[F[F)V
    .locals 0
    .param p1, "dualSightMode"    # Lcom/android/camera/opengl/dualsight/DualSightMode;
    .param p2, "screenSize"    # Lcom/android/camera/util/Size;
    .param p3, "vertexCoordNum"    # I
    .param p4, "vertexCoordStride"    # I
    .param p5, "textureCoordNum"    # I
    .param p6, "textureCoordStride"    # I
    .param p7, "mainCameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p8, "mainVertexCoord"    # [F
    .param p9, "mainTextureCoord"    # [F
    .param p10, "slaveCameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p11, "slaveVertexCoord"    # [F
    .param p12, "slaveTextureCoord"    # [F

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p3, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mVertexCoordNum:I

    .line 52
    iput-object p2, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mScreenSize:Lcom/android/camera/util/Size;

    .line 53
    iput p4, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mVertexCoordStride:I

    .line 54
    iput p5, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mTextureCoordNum:I

    .line 55
    iput p6, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mTextureCoordStride:I

    .line 56
    iput-object p1, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mDualSightMode:Lcom/android/camera/opengl/dualsight/DualSightMode;

    .line 57
    iput-object p7, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mMainCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 58
    iput-object p8, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mMainVertexCoord:[F

    .line 59
    iput-object p9, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mMainTextureCoord:[F

    .line 60
    iput-object p10, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 61
    iput-object p11, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mSlaveVertexCoord:[F

    .line 62
    iput-object p12, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mSlaveTextureCoord:[F

    .line 63
    return-void
.end method

.method private static calculateCropSIze(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;
    .locals 4
    .param p0, "sourceSize"    # Lcom/android/camera/util/Size;
    .param p1, "targetSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->aspectRatio()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->aspectRatio()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 281
    new-instance v0, Lcom/android/camera/util/Size;

    invoke-virtual {p0}, Lcom/android/camera/util/Size;->width()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/util/Size;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->aspectRatio()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    move-object p0, v0

    .line 285
    .end local p0    # "sourceSize":Lcom/android/camera/util/Size;
    :cond_0
    :goto_0
    return-object p0

    .line 282
    .restart local p0    # "sourceSize":Lcom/android/camera/util/Size;
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->aspectRatio()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->aspectRatio()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 283
    new-instance v0, Lcom/android/camera/util/Size;

    invoke-virtual {p0}, Lcom/android/camera/util/Size;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->aspectRatio()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/android/camera/util/Size;->height()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    move-object p0, v0

    goto :goto_0
.end method

.method private static calculateDesireImageSize(Lcom/android/camera/util/Size;II[F)Lcom/android/camera/util/Size;
    .locals 12
    .param p0, "fullSize"    # Lcom/android/camera/util/Size;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "vertexCoordNum"    # I
    .param p2, "vertexCoordStride"    # I
    .param p3, "vertexCoord"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    .line 293
    const/high16 v5, 0x3f800000    # 1.0f

    .line 294
    .local v5, "min_x":F
    const/high16 v3, -0x40800000    # -1.0f

    .line 295
    .local v3, "max_x":F
    const/high16 v6, 0x3f800000    # 1.0f

    .line 296
    .local v6, "min_y":F
    const/high16 v4, -0x40800000    # -1.0f

    .line 298
    .local v4, "max_y":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_3

    .line 299
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, p2, :cond_2

    .line 300
    if-nez v2, :cond_1

    .line 302
    mul-int/lit8 v7, v0, 0x2

    add-int v1, v7, v2

    .line 303
    .local v1, "index":I
    aget v7, p3, v1

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 304
    aget v7, p3, v1

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 299
    .end local v1    # "index":I
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 305
    :cond_1
    const/4 v7, 0x1

    if-ne v2, v7, :cond_0

    .line 307
    mul-int/lit8 v7, v0, 0x2

    add-int v1, v7, v2

    .line 308
    .restart local v1    # "index":I
    aget v7, p3, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 309
    aget v7, p3, v1

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_2

    .line 298
    .end local v1    # "index":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    .end local v2    # "j":I
    :cond_3
    new-instance v7, Lcom/android/camera/util/Size;

    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float v9, v4, v6

    div-float/2addr v9, v11

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float v10, v3, v5

    div-float/2addr v10, v11

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-direct {v7, v8, v9}, Lcom/android/camera/util/Size;-><init>(II)V

    return-object v7
.end method

.method private static dumpFloatArray([F)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [F

    .prologue
    .line 319
    if-nez p0, :cond_0

    const/4 v2, 0x0

    .line 328
    :goto_0
    return-object v2

    .line 320
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 322
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 323
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 324
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 327
    :cond_2
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static getLeftTopPoint(II[FLcom/android/camera/util/Size;)Landroid/graphics/Point;
    .locals 12
    .param p0, "vertexCoordNum"    # I
    .param p1, "vertexCoordStride"    # I
    .param p2, "vertexCoord"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "finalSize"    # Lcom/android/camera/util/Size;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 253
    const/high16 v5, 0x3f800000    # 1.0f

    .line 254
    .local v5, "min_x":F
    const/high16 v3, -0x40800000    # -1.0f

    .line 255
    .local v3, "max_x":F
    const/high16 v6, 0x3f800000    # 1.0f

    .line 256
    .local v6, "min_y":F
    const/high16 v4, -0x40800000    # -1.0f

    .line 258
    .local v4, "max_y":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_3

    .line 259
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, p1, :cond_2

    .line 260
    if-nez v2, :cond_1

    .line 262
    mul-int/lit8 v7, v0, 0x2

    add-int v1, v7, v2

    .line 263
    .local v1, "index":I
    aget v7, p2, v1

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 264
    aget v7, p2, v1

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 259
    .end local v1    # "index":I
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 265
    :cond_1
    const/4 v7, 0x1

    if-ne v2, v7, :cond_0

    .line 267
    mul-int/lit8 v7, v0, 0x2

    add-int v1, v7, v2

    .line 268
    .restart local v1    # "index":I
    aget v7, p2, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 269
    aget v7, p2, v1

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_2

    .line 258
    .end local v1    # "index":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    .end local v2    # "j":I
    :cond_3
    new-instance v7, Landroid/graphics/Point;

    invoke-virtual {p3}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v8

    int-to-float v8, v8

    neg-float v9, v4

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {p3}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v9

    int-to-float v9, v9

    neg-float v10, v3

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    return-object v7
.end method

.method private static processImage(Landroid/graphics/Bitmap;Lcom/android/camera/one/DualSightCamType;Lcom/android/camera/one/OneCameraCharacteristics;IZI)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "srcImg"    # Landroid/graphics/Bitmap;
    .param p1, "dualSightCamType"    # Lcom/android/camera/one/DualSightCamType;
    .param p2, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p3, "screenOrientation"    # I
    .param p4, "beautySetting"    # Z
    .param p5, "beautyLevelSetting"    # I

    .prologue
    .line 332
    move-object v1, p0

    .line 333
    .local v1, "outImg":Landroid/graphics/Bitmap;
    if-eqz p4, :cond_0

    invoke-interface {p2}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v2, v3, :cond_0

    .line 334
    sget-object v2, Lcom/android/camera/opengl/image/ImageGenerator;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bitmap process start : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 335
    new-instance v0, Lcom/thirdparty/megvii/engine/BeautyImage;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v3, p3, p5}, Lcom/thirdparty/megvii/engine/BeautyImage;-><init>(IIII)V

    .line 336
    .local v0, "megviiImage":Lcom/thirdparty/megvii/engine/MegviiImage;
    invoke-interface {v0, p0}, Lcom/thirdparty/megvii/engine/MegviiImage;->syncImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 337
    invoke-interface {v0}, Lcom/thirdparty/megvii/engine/MegviiImage;->release()V

    .line 338
    sget-object v2, Lcom/android/camera/opengl/image/ImageGenerator;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bitmap process end : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 340
    .end local v0    # "megviiImage":Lcom/thirdparty/megvii/engine/MegviiImage;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public calculateFinalImageSize(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;
    .locals 12
    .param p1, "mainImageSize"    # Lcom/android/camera/util/Size;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "slaveImageSize"    # Lcom/android/camera/util/Size;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v11, 0x1

    .line 66
    sget-object v8, Lcom/android/camera/opengl/image/ImageGenerator;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "calculateFinalImageSize : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mDualSightMode:Lcom/android/camera/opengl/dualsight/DualSightMode;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mainImageSize : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", slaveImageSize = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Lcom/android/camera/util/Size;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    sget-object v8, Lcom/android/camera/opengl/image/ImageGenerator$1;->$SwitchMap$com$android$camera$opengl$dualsight$DualSightMode:[I

    iget-object v9, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mDualSightMode:Lcom/android/camera/opengl/dualsight/DualSightMode;

    invoke-virtual {v9}, Lcom/android/camera/opengl/dualsight/DualSightMode;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 122
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->height()I

    move-result v8

    invoke-virtual {p2}, Lcom/android/camera/util/Size;->height()I

    move-result v9

    if-le v8, v9, :cond_8

    move-object v3, p1

    .line 123
    .local v3, "maxImageSize":Lcom/android/camera/util/Size;
    :goto_0
    sget-object v8, Lcom/android/camera/opengl/image/ImageGenerator;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "maxImageSize : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/android/camera/util/Size;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 124
    new-instance v8, Lcom/android/camera/util/Size;

    invoke-virtual {v3}, Lcom/android/camera/util/Size;->height()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mScreenSize:Lcom/android/camera/util/Size;

    invoke-virtual {v10}, Lcom/android/camera/util/Size;->asLandscape()Lcom/android/camera/util/Size;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/util/Size;->aspectRatio()F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v3}, Lcom/android/camera/util/Size;->height()I

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/android/camera/util/Size;-><init>(II)V

    .end local v3    # "maxImageSize":Lcom/android/camera/util/Size;
    :goto_1
    return-object v8

    .line 70
    :pswitch_0
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    .line 71
    .local v6, "min_x":F
    const/4 v4, 0x1

    .line 72
    .local v4, "max_x":F
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    .line 73
    .local v7, "min_y":F
    const/4 v5, 0x1

    .line 75
    .local v5, "max_y":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget v8, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mTextureCoordNum:I

    if-ge v0, v8, :cond_3

    .line 76
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    iget v8, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mTextureCoordStride:I

    if-ge v2, v8, :cond_2

    .line 77
    if-nez v2, :cond_1

    .line 79
    mul-int/lit8 v8, v0, 0x2

    add-int v1, v8, v2

    .line 80
    .local v1, "index":I
    iget-object v8, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mMainTextureCoord:[F

    aget v8, v8, v1

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 81
    iget-object v8, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mMainTextureCoord:[F

    aget v8, v8, v1

    invoke-static {v4, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 76
    .end local v1    # "index":I
    :cond_0
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 82
    :cond_1
    if-ne v2, v11, :cond_0

    .line 84
    mul-int/lit8 v8, v0, 0x2

    add-int v1, v8, v2

    .line 85
    .restart local v1    # "index":I
    iget-object v8, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mMainTextureCoord:[F

    aget v8, v8, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 86
    iget-object v8, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mMainTextureCoord:[F

    aget v8, v8, v1

    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_4

    .line 75
    .end local v1    # "index":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 93
    .end local v2    # "j":I
    :cond_3
    new-instance v8, Lcom/android/camera/util/Size;

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->width()I

    move-result v9

    int-to-float v9, v9

    sub-float v10, v5, v7

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->height()I

    move-result v10

    int-to-float v10, v10

    sub-float v11, v4, v6

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-direct {v8, v9, v10}, Lcom/android/camera/util/Size;-><init>(II)V

    goto :goto_1

    .line 96
    .end local v0    # "i":I
    .end local v4    # "max_x":F
    .end local v5    # "max_y":F
    .end local v6    # "min_x":F
    .end local v7    # "min_y":F
    :pswitch_1
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    .line 97
    .restart local v6    # "min_x":F
    const/4 v4, 0x1

    .line 98
    .restart local v4    # "max_x":F
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    .line 99
    .restart local v7    # "min_y":F
    const/4 v5, 0x1

    .line 101
    .restart local v5    # "max_y":F
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    iget v8, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mTextureCoordNum:I

    if-ge v0, v8, :cond_7

    .line 102
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_6
    iget v8, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mTextureCoordStride:I

    if-ge v2, v8, :cond_6

    .line 103
    if-nez v2, :cond_5

    .line 105
    mul-int/lit8 v8, v0, 0x2

    add-int v1, v8, v2

    .line 106
    .restart local v1    # "index":I
    iget-object v8, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mSlaveTextureCoord:[F

    aget v8, v8, v1

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 107
    iget-object v8, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mSlaveTextureCoord:[F

    aget v8, v8, v1

    invoke-static {v4, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 102
    .end local v1    # "index":I
    :cond_4
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 108
    :cond_5
    if-ne v2, v11, :cond_4

    .line 110
    mul-int/lit8 v8, v0, 0x2

    add-int v1, v8, v2

    .line 111
    .restart local v1    # "index":I
    iget-object v8, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mSlaveTextureCoord:[F

    aget v8, v8, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 112
    iget-object v8, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mSlaveTextureCoord:[F

    aget v8, v8, v1

    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_7

    .line 101
    .end local v1    # "index":I
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 119
    .end local v2    # "j":I
    :cond_7
    new-instance v8, Lcom/android/camera/util/Size;

    invoke-virtual {p2}, Lcom/android/camera/util/Size;->width()I

    move-result v9

    int-to-float v9, v9

    sub-float v10, v5, v7

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {p2}, Lcom/android/camera/util/Size;->height()I

    move-result v10

    int-to-float v10, v10

    sub-float v11, v4, v6

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-direct {v8, v9, v10}, Lcom/android/camera/util/Size;-><init>(II)V

    goto/16 :goto_1

    .end local v0    # "i":I
    .end local v4    # "max_x":F
    .end local v5    # "max_y":F
    .end local v6    # "min_x":F
    .end local v7    # "min_y":F
    :cond_8
    move-object v3, p2

    .line 122
    goto/16 :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public drawFinalImage(Lcom/android/camera/util/Size;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "finalSize"    # Lcom/android/camera/util/Size;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "mainImgBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "slaveImgBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "rotation"    # I

    .prologue
    .line 190
    const/4 v1, 0x0

    .line 192
    .local v1, "result":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->width()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->height()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 193
    iget v2, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mVertexCoordNum:I

    iget v3, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mVertexCoordStride:I

    iget-object v4, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mMainVertexCoord:[F

    invoke-static {v2, v3, v4, p1}, Lcom/android/camera/opengl/image/ImageGenerator;->getLeftTopPoint(II[FLcom/android/camera/util/Size;)Landroid/graphics/Point;

    move-result-object v10

    .line 194
    .local v10, "mainLeftTopPoint":Landroid/graphics/Point;
    sget-object v2, Lcom/android/camera/opengl/image/ImageGenerator;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mainLeftTopPoint : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 195
    iget v2, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mVertexCoordNum:I

    iget v3, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mVertexCoordStride:I

    iget-object v4, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mSlaveVertexCoord:[F

    invoke-static {v2, v3, v4, p1}, Lcom/android/camera/opengl/image/ImageGenerator;->getLeftTopPoint(II[FLcom/android/camera/util/Size;)Landroid/graphics/Point;

    move-result-object v13

    .line 196
    .local v13, "slaveLeftTopPoint":Landroid/graphics/Point;
    sget-object v2, Lcom/android/camera/opengl/image/ImageGenerator;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slaveLeftTopPoint : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 198
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 199
    .local v8, "canvas":Landroid/graphics/Canvas;
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 200
    .local v11, "paint":Landroid/graphics/Paint;
    sget-object v2, Lcom/android/camera/opengl/image/ImageGenerator$1;->$SwitchMap$com$android$camera$opengl$dualsight$DualSightMode:[I

    iget-object v3, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mDualSightMode:Lcom/android/camera/opengl/dualsight/DualSightMode;

    invoke-virtual {v3}, Lcom/android/camera/opengl/dualsight/DualSightMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 206
    iget v2, v10, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v10, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    move-object/from16 v0, p2

    invoke-virtual {v8, v0, v2, v3, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 207
    iget v2, v13, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v13, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v2, v3, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 211
    :goto_0
    if-eqz p4, :cond_0

    .line 212
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 213
    .local v6, "matrix":Landroid/graphics/Matrix;
    move/from16 v0, p4

    int-to-float v2, v0

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 214
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 215
    .local v12, "rotate":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 216
    move-object v1, v12

    .line 225
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "mainLeftTopPoint":Landroid/graphics/Point;
    .end local v11    # "paint":Landroid/graphics/Paint;
    .end local v12    # "rotate":Landroid/graphics/Bitmap;
    .end local v13    # "slaveLeftTopPoint":Landroid/graphics/Point;
    :cond_0
    :goto_1
    return-object v1

    .line 202
    .restart local v8    # "canvas":Landroid/graphics/Canvas;
    .restart local v10    # "mainLeftTopPoint":Landroid/graphics/Point;
    .restart local v11    # "paint":Landroid/graphics/Paint;
    .restart local v13    # "slaveLeftTopPoint":Landroid/graphics/Point;
    :pswitch_0
    iget v2, v13, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v13, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v2, v3, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 203
    iget v2, v10, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v10, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    move-object/from16 v0, p2

    invoke-virtual {v8, v0, v2, v3, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "mainLeftTopPoint":Landroid/graphics/Point;
    .end local v11    # "paint":Landroid/graphics/Paint;
    .end local v13    # "slaveLeftTopPoint":Landroid/graphics/Point;
    :catch_0
    move-exception v9

    .line 219
    .local v9, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/camera/opengl/image/ImageGenerator;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawFinalImage error :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 220
    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 222
    const/4 v1, 0x0

    goto :goto_1

    .line 200
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public generateImageBitmap([BLcom/android/camera/one/DualSightCamType;IZILcom/android/camera/util/Size;)Landroid/graphics/Bitmap;
    .locals 17
    .param p1, "data"    # [B
    .param p2, "dualSightCamType"    # Lcom/android/camera/one/DualSightCamType;
    .param p3, "screenOrientation"    # I
    .param p4, "beautySetting"    # Z
    .param p5, "beautyLevelSetting"    # I
    .param p6, "finalImageSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 131
    const/4 v15, 0x0

    .line 132
    .local v15, "srcImg":Landroid/graphics/Bitmap;
    const/4 v13, 0x1

    .line 134
    .local v13, "needRecycle":Z
    const/16 v16, 0x0

    .line 136
    .local v16, "targetImgSize":Lcom/android/camera/util/Size;
    :try_start_0
    sget-object v1, Lcom/android/camera/opengl/image/ImageGenerator$1;->$SwitchMap$com$android$camera$one$DualSightCamType:[I

    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/one/DualSightCamType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 146
    sget-object v1, Lcom/android/camera/opengl/image/ImageGenerator;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UNKNOW DualSightCamType : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    const/4 v3, 0x0

    .line 148
    .local v3, "cameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    const/4 v1, 0x0

    .line 183
    if-eqz v15, :cond_0

    if-eqz v13, :cond_0

    .line 184
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    move-object v4, v15

    .line 181
    .end local v3    # "cameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    .end local v15    # "srcImg":Landroid/graphics/Bitmap;
    .local v4, "srcImg":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object v1

    .line 138
    .end local v4    # "srcImg":Landroid/graphics/Bitmap;
    .restart local v15    # "srcImg":Landroid/graphics/Bitmap;
    :pswitch_0
    :try_start_1
    invoke-virtual/range {p6 .. p6}, Lcom/android/camera/util/Size;->asLandscape()Lcom/android/camera/util/Size;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/opengl/image/ImageGenerator;->mVertexCoordNum:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/camera/opengl/image/ImageGenerator;->mVertexCoordStride:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/opengl/image/ImageGenerator;->mMainVertexCoord:[F

    invoke-static {v1, v2, v7, v8}, Lcom/android/camera/opengl/image/ImageGenerator;->calculateDesireImageSize(Lcom/android/camera/util/Size;II[F)Lcom/android/camera/util/Size;

    move-result-object v16

    .line 139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/opengl/image/ImageGenerator;->mMainCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 150
    .restart local v3    # "cameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    :goto_1
    sget-object v1, Lcom/android/camera/opengl/image/ImageGenerator;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dualSightCamType : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", finalImageSize : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Lcom/android/camera/util/Size;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", targetImgSize : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 152
    sget-object v1, Lcom/android/camera/opengl/image/ImageGenerator;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bitmap decoded start : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 153
    const/4 v1, 0x0

    move-object/from16 v0, p1

    array-length v2, v0

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v2, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/camera/opengl/image/ImageGenerator;->processImage(Landroid/graphics/Bitmap;Lcom/android/camera/one/DualSightCamType;Lcom/android/camera/one/OneCameraCharacteristics;IZI)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 154
    .end local v15    # "srcImg":Landroid/graphics/Bitmap;
    .restart local v4    # "srcImg":Landroid/graphics/Bitmap;
    :try_start_2
    sget-object v1, Lcom/android/camera/opengl/image/ImageGenerator;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bitmap decoded end: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 156
    new-instance v14, Lcom/android/camera/util/Size;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v14, v1, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 157
    .local v14, "sourceSize":Lcom/android/camera/util/Size;
    sget-object v1, Lcom/android/camera/opengl/image/ImageGenerator;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sourceSize : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Lcom/android/camera/util/Size;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 159
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/android/camera/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v13, 0x1

    .line 161
    :goto_2
    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/android/camera/opengl/image/ImageGenerator;->calculateCropSIze(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;

    move-result-object v11

    .line 162
    .local v11, "cropSize":Lcom/android/camera/util/Size;
    sget-object v1, Lcom/android/camera/opengl/image/ImageGenerator;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cropSize : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lcom/android/camera/util/Size;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v14}, Lcom/android/camera/util/Size;->width()I

    move-result v1

    invoke-virtual {v11}, Lcom/android/camera/util/Size;->width()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v5, v1, 0x2

    .line 165
    .local v5, "left":I
    invoke-virtual {v14}, Lcom/android/camera/util/Size;->height()I

    move-result v1

    invoke-virtual {v11}, Lcom/android/camera/util/Size;->height()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v6, v1, 0x2

    .line 167
    .local v6, "top":I
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 168
    .local v9, "m":Landroid/graphics/Matrix;
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/util/Size;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v11}, Lcom/android/camera/util/Size;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/util/Size;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v11}, Lcom/android/camera/util/Size;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v2, v7

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 170
    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v1

    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v1, v2, :cond_2

    .line 171
    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v1

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_2

    .line 172
    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v9, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 175
    :cond_2
    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v1

    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v1, v2, :cond_3

    .line 176
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 178
    :cond_3
    invoke-virtual {v11}, Lcom/android/camera/util/Size;->width()I

    move-result v7

    invoke-virtual {v11}, Lcom/android/camera/util/Size;->height()I

    move-result v8

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 183
    if-eqz v4, :cond_1

    if-eqz v13, :cond_1

    .line 184
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 142
    .end local v3    # "cameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    .end local v4    # "srcImg":Landroid/graphics/Bitmap;
    .end local v5    # "left":I
    .end local v6    # "top":I
    .end local v9    # "m":Landroid/graphics/Matrix;
    .end local v11    # "cropSize":Lcom/android/camera/util/Size;
    .end local v14    # "sourceSize":Lcom/android/camera/util/Size;
    .restart local v15    # "srcImg":Landroid/graphics/Bitmap;
    :pswitch_1
    :try_start_3
    invoke-virtual/range {p6 .. p6}, Lcom/android/camera/util/Size;->asLandscape()Lcom/android/camera/util/Size;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/opengl/image/ImageGenerator;->mVertexCoordNum:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/camera/opengl/image/ImageGenerator;->mVertexCoordStride:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/opengl/image/ImageGenerator;->mSlaveVertexCoord:[F

    invoke-static {v1, v2, v7, v8}, Lcom/android/camera/opengl/image/ImageGenerator;->calculateDesireImageSize(Lcom/android/camera/util/Size;II[F)Lcom/android/camera/util/Size;

    move-result-object v16

    .line 143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/opengl/image/ImageGenerator;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    .restart local v3    # "cameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    goto/16 :goto_1

    .line 159
    .end local v15    # "srcImg":Landroid/graphics/Bitmap;
    .restart local v4    # "srcImg":Landroid/graphics/Bitmap;
    .restart local v14    # "sourceSize":Lcom/android/camera/util/Size;
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 179
    .end local v3    # "cameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    .end local v4    # "srcImg":Landroid/graphics/Bitmap;
    .end local v14    # "sourceSize":Lcom/android/camera/util/Size;
    .restart local v15    # "srcImg":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v12

    move-object v4, v15

    .line 180
    .end local v15    # "srcImg":Landroid/graphics/Bitmap;
    .restart local v4    # "srcImg":Landroid/graphics/Bitmap;
    .local v12, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/camera/opengl/image/ImageGenerator;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generate ImageBitmap error : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 181
    const/4 v1, 0x0

    .line 183
    if-eqz v4, :cond_1

    if-eqz v13, :cond_1

    .line 184
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 183
    .end local v4    # "srcImg":Landroid/graphics/Bitmap;
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v15    # "srcImg":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    move-object v4, v15

    .end local v15    # "srcImg":Landroid/graphics/Bitmap;
    .restart local v4    # "srcImg":Landroid/graphics/Bitmap;
    :goto_4
    if-eqz v4, :cond_5

    if-eqz v13, :cond_5

    .line 184
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    throw v1

    .line 183
    :catchall_1
    move-exception v1

    goto :goto_4

    .line 179
    .restart local v3    # "cameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    :catch_1
    move-exception v12

    goto :goto_3

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageGenerator {mDualSightMode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mDualSightMode:Lcom/android/camera/opengl/dualsight/DualSightMode;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mScreenSize = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mScreenSize:Lcom/android/camera/util/Size;

    .line 232
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mVertexCoordNum = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mVertexCoordNum:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mVertexCoordStride = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mVertexCoordStride:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mTextureCoordNum = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mTextureCoordNum:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mTextureCoordStride = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mTextureCoordStride:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mVertexCoordNum = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mVertexCoordNum:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", MainCameraDirection = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mMainCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mMainCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 238
    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", MainCameraSensorOrientation = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mMainCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mMainCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 239
    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mMainVertexCoord = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mMainVertexCoord:[F

    .line 240
    invoke-static {v2}, Lcom/android/camera/opengl/image/ImageGenerator;->dumpFloatArray([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mMainTextureCoord = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mMainTextureCoord:[F

    .line 241
    invoke-static {v2}, Lcom/android/camera/opengl/image/ImageGenerator;->dumpFloatArray([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", SlaveCameraDirection = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 242
    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", SlaveCameraSensorOrientation = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 243
    invoke-interface {v1}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSlaveVertexCoord = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mSlaveVertexCoord:[F

    .line 244
    invoke-static {v1}, Lcom/android/camera/opengl/image/ImageGenerator;->dumpFloatArray([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSlaveTextureCoord = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/opengl/image/ImageGenerator;->mSlaveTextureCoord:[F

    .line 245
    invoke-static {v1}, Lcom/android/camera/opengl/image/ImageGenerator;->dumpFloatArray([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    return-object v0

    :cond_1
    move-object v0, v1

    .line 238
    goto/16 :goto_0

    :cond_2
    move-object v0, v1

    .line 239
    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 242
    goto :goto_2
.end method
