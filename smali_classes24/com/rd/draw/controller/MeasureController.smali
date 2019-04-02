.class public Lcom/rd/draw/controller/MeasureController;
.super Ljava/lang/Object;
.source "MeasureController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public measureViewSize(Lcom/rd/draw/data/Indicator;II)Landroid/util/Pair;
    .locals 30
    .param p1, "indicator"    # Lcom/rd/draw/data/Indicator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rd/draw/data/Indicator;",
            "II)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v25

    .line 14
    .local v25, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v26

    .line 16
    .local v26, "widthSize":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 17
    .local v9, "heightMode":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 19
    .local v10, "heightSize":I
    invoke-virtual/range {p1 .. p1}, Lcom/rd/draw/data/Indicator;->getCount()I

    move-result v3

    .line 20
    .local v3, "count":I
    invoke-virtual/range {p1 .. p1}, Lcom/rd/draw/data/Indicator;->getRadius()I

    move-result v19

    .line 21
    .local v19, "radius":I
    invoke-virtual/range {p1 .. p1}, Lcom/rd/draw/data/Indicator;->getStroke()I

    move-result v20

    .line 23
    .local v20, "stroke":I
    invoke-virtual/range {p1 .. p1}, Lcom/rd/draw/data/Indicator;->getPadding()I

    move-result v13

    .line 24
    .local v13, "padding":I
    invoke-virtual/range {p1 .. p1}, Lcom/rd/draw/data/Indicator;->getPaddingLeft()I

    move-result v15

    .line 25
    .local v15, "paddingLeft":I
    invoke-virtual/range {p1 .. p1}, Lcom/rd/draw/data/Indicator;->getPaddingTop()I

    move-result v18

    .line 26
    .local v18, "paddingTop":I
    invoke-virtual/range {p1 .. p1}, Lcom/rd/draw/data/Indicator;->getPaddingRight()I

    move-result v16

    .line 27
    .local v16, "paddingRight":I
    invoke-virtual/range {p1 .. p1}, Lcom/rd/draw/data/Indicator;->getPaddingBottom()I

    move-result v14

    .line 29
    .local v14, "paddingBottom":I
    mul-int/lit8 v2, v19, 0x2

    .line 30
    .local v2, "circleDiameterPx":I
    const/4 v5, 0x0

    .line 31
    .local v5, "desiredWidth":I
    const/4 v4, 0x0

    .line 36
    .local v4, "desiredHeight":I
    invoke-virtual/range {p1 .. p1}, Lcom/rd/draw/data/Indicator;->getOrientation()Lcom/rd/draw/data/Orientation;

    move-result-object v12

    .line 37
    .local v12, "orientation":Lcom/rd/draw/data/Orientation;
    if-eqz v3, :cond_0

    .line 38
    mul-int v6, v2, v3

    .line 39
    .local v6, "diameterSum":I
    mul-int/lit8 v27, v20, 0x2

    mul-int v21, v27, v3

    .line 41
    .local v21, "strokeSum":I
    add-int/lit8 v27, v3, -0x1

    mul-int v17, v13, v27

    .line 42
    .local v17, "paddingSum":I
    add-int v27, v6, v21

    add-int v23, v27, v17

    .line 43
    .local v23, "w":I
    add-int v7, v2, v20

    .line 45
    .local v7, "h":I
    sget-object v27, Lcom/rd/draw/data/Orientation;->HORIZONTAL:Lcom/rd/draw/data/Orientation;

    move-object/from16 v0, v27

    if-ne v12, v0, :cond_4

    .line 46
    move/from16 v5, v23

    .line 47
    move v4, v7

    .line 55
    .end local v6    # "diameterSum":I
    .end local v7    # "h":I
    .end local v17    # "paddingSum":I
    .end local v21    # "strokeSum":I
    .end local v23    # "w":I
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/rd/draw/data/Indicator;->getAnimationType()Lcom/rd/animation/type/AnimationType;

    move-result-object v27

    sget-object v28, Lcom/rd/animation/type/AnimationType;->DROP:Lcom/rd/animation/type/AnimationType;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_1

    .line 56
    sget-object v27, Lcom/rd/draw/data/Orientation;->HORIZONTAL:Lcom/rd/draw/data/Orientation;

    move-object/from16 v0, v27

    if-ne v12, v0, :cond_5

    .line 57
    mul-int/lit8 v4, v4, 0x2

    .line 63
    :cond_1
    :goto_1
    add-int v11, v15, v16

    .line 64
    .local v11, "horizontalPadding":I
    add-int v22, v18, v14

    .line 66
    .local v22, "verticalPadding":I
    sget-object v27, Lcom/rd/draw/data/Orientation;->HORIZONTAL:Lcom/rd/draw/data/Orientation;

    move-object/from16 v0, v27

    if-ne v12, v0, :cond_6

    .line 67
    add-int/2addr v5, v11

    .line 68
    add-int v4, v4, v22

    .line 75
    :goto_2
    const/high16 v27, 0x40000000    # 2.0f

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    .line 76
    move/from16 v24, v26

    .line 83
    .local v24, "width":I
    :goto_3
    const/high16 v27, 0x40000000    # 2.0f

    move/from16 v0, v27

    if-ne v9, v0, :cond_9

    .line 84
    move v8, v10

    .line 91
    .local v8, "height":I
    :goto_4
    if-gez v24, :cond_2

    .line 92
    const/16 v24, 0x0

    .line 95
    :cond_2
    if-gez v8, :cond_3

    .line 96
    const/4 v8, 0x0

    .line 99
    :cond_3
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setWidth(I)V

    .line 100
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/rd/draw/data/Indicator;->setHeight(I)V

    .line 102
    new-instance v27, Landroid/util/Pair;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-direct/range {v27 .. v29}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v27

    .line 50
    .end local v8    # "height":I
    .end local v11    # "horizontalPadding":I
    .end local v22    # "verticalPadding":I
    .end local v24    # "width":I
    .restart local v6    # "diameterSum":I
    .restart local v7    # "h":I
    .restart local v17    # "paddingSum":I
    .restart local v21    # "strokeSum":I
    .restart local v23    # "w":I
    :cond_4
    move v5, v7

    .line 51
    move/from16 v4, v23

    goto :goto_0

    .line 59
    .end local v6    # "diameterSum":I
    .end local v7    # "h":I
    .end local v17    # "paddingSum":I
    .end local v21    # "strokeSum":I
    .end local v23    # "w":I
    :cond_5
    mul-int/lit8 v5, v5, 0x2

    goto :goto_1

    .line 71
    .restart local v11    # "horizontalPadding":I
    .restart local v22    # "verticalPadding":I
    :cond_6
    add-int/2addr v5, v11

    .line 72
    add-int v4, v4, v22

    goto :goto_2

    .line 77
    :cond_7
    const/high16 v27, -0x80000000

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_8

    .line 78
    move/from16 v0, v26

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v24

    .restart local v24    # "width":I
    goto :goto_3

    .line 80
    .end local v24    # "width":I
    :cond_8
    move/from16 v24, v5

    .restart local v24    # "width":I
    goto :goto_3

    .line 85
    :cond_9
    const/high16 v27, -0x80000000

    move/from16 v0, v27

    if-ne v9, v0, :cond_a

    .line 86
    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    .restart local v8    # "height":I
    goto :goto_4

    .line 88
    .end local v8    # "height":I
    :cond_a
    move v8, v4

    .restart local v8    # "height":I
    goto :goto_4
.end method
