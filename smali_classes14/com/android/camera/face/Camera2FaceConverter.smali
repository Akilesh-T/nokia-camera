.class public Lcom/android/camera/face/Camera2FaceConverter;
.super Ljava/lang/Object;
.source "Camera2FaceConverter.java"


# static fields
.field private static final CAMERA_DRIVER_RECT:Landroid/graphics/Rect;


# instance fields
.field private final mCameraSensorBound:Landroid/graphics/Rect;

.field private mCropRect:Landroid/graphics/Rect;

.field private final mMirror:Z

.field private mMirrorMatrix:Landroid/graphics/Matrix;

.field private final mPictureSize:Lcom/android/camera/util/Size;

.field private mZoomValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x3e8

    const/16 v1, -0x3e8

    .line 21
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/android/camera/face/Camera2FaceConverter;->CAMERA_DRIVER_RECT:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/OneCameraCharacteristics;ZFLcom/android/camera/util/Size;)V
    .locals 2
    .param p1, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p2, "isMirror"    # Z
    .param p3, "zoomValue"    # F
    .param p4, "pictureSize"    # Lcom/android/camera/util/Size;

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/face/Camera2FaceConverter;->mZoomValue:F

    .line 31
    invoke-interface {p1}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorInfoActiveArraySize()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/face/Camera2FaceConverter;->mCameraSensorBound:Landroid/graphics/Rect;

    .line 32
    iput-boolean p2, p0, Lcom/android/camera/face/Camera2FaceConverter;->mMirror:Z

    .line 33
    iput p3, p0, Lcom/android/camera/face/Camera2FaceConverter;->mZoomValue:F

    .line 34
    iput-object p4, p0, Lcom/android/camera/face/Camera2FaceConverter;->mPictureSize:Lcom/android/camera/util/Size;

    .line 35
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/face/Camera2FaceConverter;->mMirrorMatrix:Landroid/graphics/Matrix;

    .line 36
    iget-boolean v0, p0, Lcom/android/camera/face/Camera2FaceConverter;->mMirror:Z

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/android/camera/face/Camera2FaceConverter;->mMirrorMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 39
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/face/Camera2FaceConverter;->calculateCropRect()V

    .line 40
    return-void
.end method

.method private calculateCropRect()V
    .locals 10

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    .line 57
    iget-object v5, p0, Lcom/android/camera/face/Camera2FaceConverter;->mCameraSensorBound:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/camera/face/Camera2FaceConverter;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-static {v5, v6}, Lcom/android/camera/util/CameraUtil;->cropToPictureSizeRegion(Landroid/graphics/Rect;Lcom/android/camera/util/Size;)Landroid/graphics/Rect;

    move-result-object v0

    .line 58
    .local v0, "cameraSensorBound":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 59
    .local v1, "xCenter":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    .line 60
    .local v3, "yCenter":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    iget v6, p0, Lcom/android/camera/face/Camera2FaceConverter;->mZoomValue:F

    div-float/2addr v5, v6

    float-to-int v2, v5

    .line 61
    .local v2, "xDelta":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    iget v6, p0, Lcom/android/camera/face/Camera2FaceConverter;->mZoomValue:F

    div-float/2addr v5, v6

    float-to-int v4, v5

    .line 62
    .local v4, "yDelta":I
    new-instance v5, Landroid/graphics/Rect;

    sub-int v6, v1, v2

    sub-int v7, v3, v4

    add-int v8, v1, v2

    add-int v9, v3, v4

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/android/camera/face/Camera2FaceConverter;->mCropRect:Landroid/graphics/Rect;

    .line 63
    return-void
.end method

.method private convertRectFromCamera2Face(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 20
    .param p1, "camera2_face_rect"    # Landroid/graphics/Rect;

    .prologue
    .line 66
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/face/Camera2FaceConverter;->mCropRect:Landroid/graphics/Rect;

    if-nez v15, :cond_1

    :cond_0
    new-instance v15, Landroid/graphics/Rect;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v15 .. v19}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 82
    :goto_0
    return-object v15

    .line 68
    :cond_1
    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/face/Camera2FaceConverter;->mCropRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-double v0, v15

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/face/Camera2FaceConverter;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v18, v0

    div-double v6, v16, v18

    .line 69
    .local v6, "left_f":D
    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/face/Camera2FaceConverter;->mCropRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-double v0, v15

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/face/Camera2FaceConverter;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v18, v0

    div-double v12, v16, v18

    .line 70
    .local v12, "top_f":D
    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/face/Camera2FaceConverter;->mCropRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-double v0, v15

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/face/Camera2FaceConverter;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v18, v0

    div-double v10, v16, v18

    .line 71
    .local v10, "right_f":D
    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/face/Camera2FaceConverter;->mCropRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-double v0, v15

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/face/Camera2FaceConverter;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v18, v0

    div-double v4, v16, v18

    .line 73
    .local v4, "bottom_f":D
    sget-object v15, Lcom/android/camera/face/Camera2FaceConverter;->CAMERA_DRIVER_RECT:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    sget-object v16, Lcom/android/camera/face/Camera2FaceConverter;->CAMERA_DRIVER_RECT:Landroid/graphics/Rect;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    sget-object v17, Lcom/android/camera/face/Camera2FaceConverter;->CAMERA_DRIVER_RECT:Landroid/graphics/Rect;

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v17

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v18, v18, v6

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v17, v0

    sget-object v18, Lcom/android/camera/face/Camera2FaceConverter;->CAMERA_DRIVER_RECT:Landroid/graphics/Rect;

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 74
    .local v3, "left":I
    sget-object v15, Lcom/android/camera/face/Camera2FaceConverter;->CAMERA_DRIVER_RECT:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    sget-object v16, Lcom/android/camera/face/Camera2FaceConverter;->CAMERA_DRIVER_RECT:Landroid/graphics/Rect;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    sget-object v17, Lcom/android/camera/face/Camera2FaceConverter;->CAMERA_DRIVER_RECT:Landroid/graphics/Rect;

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v17

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v18, v18, v12

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v17, v0

    sget-object v18, Lcom/android/camera/face/Camera2FaceConverter;->CAMERA_DRIVER_RECT:Landroid/graphics/Rect;

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 75
    .local v9, "top":I
    sget-object v15, Lcom/android/camera/face/Camera2FaceConverter;->CAMERA_DRIVER_RECT:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    sget-object v16, Lcom/android/camera/face/Camera2FaceConverter;->CAMERA_DRIVER_RECT:Landroid/graphics/Rect;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    sget-object v17, Lcom/android/camera/face/Camera2FaceConverter;->CAMERA_DRIVER_RECT:Landroid/graphics/Rect;

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v17

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v18, v18, v10

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v17, v0

    sget-object v18, Lcom/android/camera/face/Camera2FaceConverter;->CAMERA_DRIVER_RECT:Landroid/graphics/Rect;

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 76
    .local v8, "right":I
    sget-object v15, Lcom/android/camera/face/Camera2FaceConverter;->CAMERA_DRIVER_RECT:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    sget-object v16, Lcom/android/camera/face/Camera2FaceConverter;->CAMERA_DRIVER_RECT:Landroid/graphics/Rect;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    sget-object v17, Lcom/android/camera/face/Camera2FaceConverter;->CAMERA_DRIVER_RECT:Landroid/graphics/Rect;

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v17

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v18, v18, v4

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v17, v0

    sget-object v18, Lcom/android/camera/face/Camera2FaceConverter;->CAMERA_DRIVER_RECT:Landroid/graphics/Rect;

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 78
    .local v2, "bottom":I
    new-instance v14, Landroid/graphics/RectF;

    int-to-float v15, v3

    int-to-float v0, v9

    move/from16 v16, v0

    int-to-float v0, v8

    move/from16 v17, v0

    int-to-float v0, v2

    move/from16 v18, v0

    invoke-direct/range {v14 .. v18}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 79
    .local v14, "unmapRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/face/Camera2FaceConverter;->mMirror:Z

    if-eqz v15, :cond_2

    .line 80
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/face/Camera2FaceConverter;->mMirrorMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v15, v14}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 82
    :cond_2
    new-instance v15, Landroid/graphics/Rect;

    iget v0, v14, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    iget v0, v14, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    iget v0, v14, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    iget v0, v14, Landroid/graphics/RectF;->bottom:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-direct/range {v15 .. v19}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_0
.end method


# virtual methods
.method public convertCamera2Face([Landroid/hardware/camera2/params/Face;)[Lcom/android/camera/face/FaceData;
    .locals 9
    .param p1, "rawFaces"    # [Landroid/hardware/camera2/params/Face;

    .prologue
    .line 48
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    :cond_0
    const/4 v7, 0x0

    .line 53
    :cond_1
    return-object v7

    .line 49
    :cond_2
    array-length v0, p1

    new-array v7, v0, [Lcom/android/camera/face/FaceData;

    .line 50
    .local v7, "convertFaces":[Lcom/android/camera/face/FaceData;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, p1

    if-ge v8, v0, :cond_1

    .line 51
    new-instance v0, Lcom/android/camera/face/FaceData;

    aget-object v1, p1, v8

    invoke-virtual {v1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/face/Camera2FaceConverter;->convertRectFromCamera2Face(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    aget-object v2, p1, v8

    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v2

    aget-object v3, p1, v8

    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v3

    aget-object v4, p1, v8

    invoke-virtual {v4}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v4

    aget-object v5, p1, v8

    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v5

    aget-object v6, p1, v8

    invoke-virtual {v6}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/face/FaceData;-><init>(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    aput-object v0, v7, v8

    .line 50
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public setZoomValue(F)V
    .locals 0
    .param p1, "zoomValue"    # F

    .prologue
    .line 43
    iput p1, p0, Lcom/android/camera/face/Camera2FaceConverter;->mZoomValue:F

    .line 44
    invoke-direct {p0}, Lcom/android/camera/face/Camera2FaceConverter;->calculateCropRect()V

    .line 45
    return-void
.end method
