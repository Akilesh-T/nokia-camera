.class public Lcom/android/camera/captureintent/PreviewTransformCalculator;
.super Ljava/lang/Object;
.source "PreviewTransformCalculator.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mOrientationManager:Lcom/android/camera/app/OrientationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PviewTransfmCal"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/captureintent/PreviewTransformCalculator;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/OrientationManager;)V
    .locals 0
    .param p1, "orientationManager"    # Lcom/android/camera/app/OrientationManager;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/camera/captureintent/PreviewTransformCalculator;->mOrientationManager:Lcom/android/camera/app/OrientationManager;

    .line 34
    return-void
.end method


# virtual methods
.method public toTransformMatrix(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)Landroid/graphics/Matrix;
    .locals 17
    .param p1, "previewViewSize"    # Lcom/android/camera/util/Size;
    .param p2, "previewStreamSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 46
    new-instance v6, Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/util/Size;->width()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/util/Size;->height()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v6, v13, v14, v15, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 48
    .local v6, "previewViewRect":Landroid/graphics/RectF;
    new-instance v5, Landroid/graphics/PointF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    invoke-direct {v5, v13, v14}, Landroid/graphics/PointF;-><init>(FF)V

    .line 51
    .local v5, "previewViewCenter":Landroid/graphics/PointF;
    move-object/from16 v4, p2

    .line 53
    .local v4, "previewBufferSize":Lcom/android/camera/util/Size;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/captureintent/PreviewTransformCalculator;->mOrientationManager:Lcom/android/camera/app/OrientationManager;

    invoke-interface {v13}, Lcom/android/camera/app/OrientationManager;->getDeviceNaturalOrientation()Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;

    move-result-object v13

    sget-object v14, Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;->PORTRAIT:Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;

    if-ne v13, v14, :cond_0

    .line 54
    new-instance v4, Lcom/android/camera/util/Size;

    .end local v4    # "previewBufferSize":Lcom/android/camera/util/Size;
    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/util/Size;->height()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/util/Size;->width()I

    move-result v14

    invoke-direct {v4, v13, v14}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 57
    .restart local v4    # "previewBufferSize":Lcom/android/camera/util/Size;
    :cond_0
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 60
    .local v12, "transformMatrix":Landroid/graphics/Matrix;
    new-instance v1, Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 61
    invoke-virtual {v4}, Lcom/android/camera/util/Size;->width()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->height()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v1, v13, v14, v15, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 62
    .local v1, "PreviewBufferRect":Landroid/graphics/RectF;
    new-instance v3, Landroid/graphics/PointF;

    .line 63
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    invoke-direct {v3, v13, v14}, Landroid/graphics/PointF;-><init>(FF)V

    .line 65
    .local v3, "previewBufferCenter":Landroid/graphics/PointF;
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 66
    .local v2, "centeredEffectivePreviewRect":Landroid/graphics/RectF;
    iget v13, v5, Landroid/graphics/PointF;->x:F

    iget v14, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v13, v14

    iget v14, v5, Landroid/graphics/PointF;->y:F

    iget v15, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v14, v15

    invoke-virtual {v2, v13, v14}, Landroid/graphics/RectF;->offset(FF)V

    .line 71
    sget-object v13, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v12, v6, v2, v13}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 75
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/captureintent/PreviewTransformCalculator;->mOrientationManager:Lcom/android/camera/app/OrientationManager;

    invoke-interface {v13}, Lcom/android/camera/app/OrientationManager;->getDisplayRotation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v7

    .line 76
    .local v7, "rotateDegree":I
    int-to-float v13, v7

    iget v14, v5, Landroid/graphics/PointF;->x:F

    iget v15, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v13, v14, v15}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 87
    move-object/from16 v8, p2

    .line 88
    .local v8, "rotatedPreviewSize":Lcom/android/camera/util/Size;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/captureintent/PreviewTransformCalculator;->mOrientationManager:Lcom/android/camera/app/OrientationManager;

    invoke-interface {v13}, Lcom/android/camera/app/OrientationManager;->isInPortrait()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 89
    new-instance v8, Lcom/android/camera/util/Size;

    .end local v8    # "rotatedPreviewSize":Lcom/android/camera/util/Size;
    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/util/Size;->height()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/util/Size;->width()I

    move-result v14

    invoke-direct {v8, v13, v14}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 92
    .restart local v8    # "rotatedPreviewSize":Lcom/android/camera/util/Size;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/util/Size;->width()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v8}, Lcom/android/camera/util/Size;->width()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/util/Size;->height()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v8}, Lcom/android/camera/util/Size;->height()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    .line 91
    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 94
    .local v9, "scale":F
    iget v13, v5, Landroid/graphics/PointF;->x:F

    iget v14, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v9, v9, v13, v14}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 96
    new-instance v11, Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 97
    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/util/Size;->width()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v9

    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/util/Size;->height()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v9

    move/from16 v0, v16

    invoke-direct {v11, v13, v14, v15, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 98
    .local v11, "scaledPreviewStreamRect":Landroid/graphics/RectF;
    new-instance v10, Landroid/graphics/PointF;

    .line 99
    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    invoke-direct {v10, v13, v14}, Landroid/graphics/PointF;-><init>(FF)V

    .line 100
    .local v10, "scaledPreviewStreamCenter":Landroid/graphics/PointF;
    iget v13, v10, Landroid/graphics/PointF;->x:F

    iget v14, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v13, v14

    iget v14, v10, Landroid/graphics/PointF;->y:F

    iget v15, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 104
    return-object v12
.end method
