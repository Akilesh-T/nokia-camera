.class public Lcom/android/camera/util/DebugBoundsRenderer;
.super Ljava/lang/Object;
.source "DebugBoundsRenderer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawBounds(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFF)V
    .locals 11
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "size"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "x2"    # F
    .param p6, "y2"    # F

    .prologue
    .line 52
    add-float v3, p3, p2

    move-object v0, p0

    move v1, p3

    move v2, p4

    move v4, p4

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 54
    add-float v4, p4, p2

    move-object v0, p0

    move v1, p3

    move v2, p4

    move v3, p3

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 58
    sub-float v1, p5, p2

    move-object v0, p0

    move v2, p4

    move/from16 v3, p5

    move v4, p4

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 60
    add-float v4, p4, p2

    move-object v0, p0

    move/from16 v1, p5

    move v2, p4

    move/from16 v3, p5

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 64
    sub-float v1, p5, p2

    move-object v0, p0

    move/from16 v2, p6

    move/from16 v3, p5

    move/from16 v4, p6

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 66
    sub-float v2, p6, p2

    move-object v0, p0

    move/from16 v1, p5

    move/from16 v3, p5

    move/from16 v4, p6

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 70
    add-float v3, p3, p2

    move-object v0, p0

    move v1, p3

    move/from16 v2, p6

    move/from16 v4, p6

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 72
    sub-float v2, p6, p2

    move-object v0, p0

    move v1, p3

    move v3, p3

    move/from16 v4, p6

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 75
    add-float v0, p3, p5

    const/high16 v1, 0x40000000    # 2.0f

    div-float v9, v0, v1

    .line 76
    .local v9, "cX":F
    add-float v0, p4, p6

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    .line 77
    .local v2, "cY":F
    const/high16 v0, 0x40000000    # 2.0f

    div-float v10, p2, v0

    .line 78
    .local v10, "halfSize":F
    sub-float v1, v9, v10

    add-float v3, v9, v10

    move-object v0, p0

    move v4, v2

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 79
    sub-float v5, v2, v10

    add-float v7, v2, v10

    move-object v3, p0

    move v4, v9

    move v6, v9

    move-object v8, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 80
    return-void
.end method

.method public static drawBounds(Landroid/graphics/Canvas;Landroid/graphics/Paint;FLandroid/graphics/Rect;)V
    .locals 7
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "size"    # F
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 33
    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, p3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget v0, p3, Landroid/graphics/Rect;->right:I

    int-to-float v5, v0

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Lcom/android/camera/util/DebugBoundsRenderer;->drawBounds(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFF)V

    .line 34
    return-void
.end method

.method public static drawBounds(Landroid/graphics/Canvas;Landroid/graphics/Paint;FLandroid/graphics/RectF;)V
    .locals 7
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "size"    # F
    .param p3, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 41
    iget v3, p3, Landroid/graphics/RectF;->left:F

    iget v4, p3, Landroid/graphics/RectF;->top:F

    iget v5, p3, Landroid/graphics/RectF;->right:F

    iget v6, p3, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Lcom/android/camera/util/DebugBoundsRenderer;->drawBounds(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFF)V

    .line 42
    return-void
.end method
