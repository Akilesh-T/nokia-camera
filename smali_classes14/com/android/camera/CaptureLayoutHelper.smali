.class public Lcom/android/camera/CaptureLayoutHelper;
.super Ljava/lang/Object;
.source "CaptureLayoutHelper.java"

# interfaces
.implements Lcom/android/camera/app/CameraAppUI$NonDecorWindowSizeChangedListener;
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAspectRatioChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mAspectRatio:F

.field private final mBottomBarMaxHeight:I

.field private final mBottomBarMinHeight:I

.field private final mBottomBarOptimalHeight:I

.field protected mController:Lcom/android/camera/app/AppController;

.field private mModeBarHeight:I

.field private mNavigationBarHeight:I

.field private mPositionConfiguration:Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;

.field private mRotation:I

.field private mShowBottomBar:Z

.field private mWindowHeight:I

.field private mWindowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "CaptureLayoutHelper"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/CaptureLayoutHelper;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(IIIILcom/android/camera/app/AppController;)V
    .locals 2
    .param p1, "bottomBarMinHeight"    # I
    .param p2, "bottomBarMaxHeight"    # I
    .param p3, "bottomBarOptimalHeight"    # I
    .param p4, "navigationBarHeight"    # I
    .param p5, "controller"    # Lcom/android/camera/app/AppController;

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v1, p0, Lcom/android/camera/CaptureLayoutHelper;->mWindowWidth:I

    .line 54
    iput v1, p0, Lcom/android/camera/CaptureLayoutHelper;->mWindowHeight:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/CaptureLayoutHelper;->mAspectRatio:F

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CaptureLayoutHelper;->mPositionConfiguration:Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;

    .line 60
    iput v1, p0, Lcom/android/camera/CaptureLayoutHelper;->mRotation:I

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CaptureLayoutHelper;->mShowBottomBar:Z

    .line 62
    iput v1, p0, Lcom/android/camera/CaptureLayoutHelper;->mModeBarHeight:I

    .line 93
    iput p1, p0, Lcom/android/camera/CaptureLayoutHelper;->mBottomBarMinHeight:I

    .line 94
    iput p2, p0, Lcom/android/camera/CaptureLayoutHelper;->mBottomBarMaxHeight:I

    .line 95
    iput p3, p0, Lcom/android/camera/CaptureLayoutHelper;->mBottomBarOptimalHeight:I

    .line 96
    iput p4, p0, Lcom/android/camera/CaptureLayoutHelper;->mNavigationBarHeight:I

    .line 97
    iput-object p5, p0, Lcom/android/camera/CaptureLayoutHelper;->mController:Lcom/android/camera/app/AppController;

    .line 98
    return-void
.end method

.method private getPositionConfiguration(IIFI)Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;
    .locals 24
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "previewAspectRatio"    # F
    .param p4, "rotation"    # I

    .prologue
    .line 264
    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_2

    const/4 v7, 0x1

    .line 268
    .local v7, "landscape":Z
    :goto_0
    new-instance v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;

    invoke-direct {v6}, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;-><init>()V

    .line 269
    .local v6, "config":Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->is18x9Layout()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 270
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mLargeScreen:Z

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureLayoutHelper;->mController:Lcom/android/camera/app/AppController;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0900bc

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/CaptureLayoutHelper;->mModeBarHeight:I

    .line 274
    :cond_0
    const/16 v18, 0x0

    cmpl-float v18, p3, v18

    if-nez v18, :cond_4

    .line 275
    iget-object v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mPreviewRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/RectF;->set(FFFF)V

    .line 276
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mBottomBarOverlay:Z

    .line 277
    if-eqz v7, :cond_3

    .line 278
    iget-object v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mBottomBarRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureLayoutHelper;->mBottomBarOptimalHeight:I

    move/from16 v19, v0

    sub-int v19, p1, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureLayoutHelper;->mNavigationBarHeight:I

    move/from16 v21, v0

    sub-int v21, p1, v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/RectF;->set(FFFF)V

    .line 401
    :goto_1
    const/16 v18, 0xb4

    move/from16 v0, p4

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    .line 403
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 404
    .local v14, "rotate":Landroid/graphics/Matrix;
    const/high16 v18, 0x43340000    # 180.0f

    div-int/lit8 v19, p1, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-int/lit8 v20, p2, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v14, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 406
    iget-object v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mPreviewRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 407
    iget-object v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mBottomBarRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 411
    .end local v14    # "rotate":Landroid/graphics/Matrix;
    :cond_1
    iget-object v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mBottomBarRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/camera/CaptureLayoutHelper;->round(Landroid/graphics/RectF;)V

    .line 412
    iget-object v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mPreviewRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/camera/CaptureLayoutHelper;->round(Landroid/graphics/RectF;)V

    .line 414
    return-object v6

    .line 264
    .end local v6    # "config":Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;
    .end local v7    # "landscape":Z
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 280
    .restart local v6    # "config":Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;
    .restart local v7    # "landscape":Z
    :cond_3
    iget-object v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mBottomBarRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureLayoutHelper;->mBottomBarOptimalHeight:I

    move/from16 v20, v0

    sub-int v20, p2, v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureLayoutHelper;->mNavigationBarHeight:I

    move/from16 v22, v0

    sub-int v22, p2, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    .line 283
    :cond_4
    const/high16 v18, 0x3f800000    # 1.0f

    cmpg-float v18, p3, v18

    if-gez v18, :cond_5

    .line 284
    const/high16 v18, 0x3f800000    # 1.0f

    div-float p3, v18, p3

    .line 288
    :cond_5
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 289
    .local v9, "longerEdge":I
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 292
    .local v15, "shorterEdge":I
    int-to-float v0, v15

    move/from16 v18, v0

    mul-float v16, v18, p3

    .line 293
    .local v16, "spaceNeededAlongLongerEdge":F
    int-to-float v0, v9

    move/from16 v18, v0

    sub-float v12, v18, v16

    .line 297
    .local v12, "remainingSpaceAlongLongerEdge":F
    const/16 v18, 0x0

    cmpg-float v18, v12, v18

    if-gtz v18, :cond_7

    .line 299
    int-to-float v10, v9

    .line 300
    .local v10, "previewLongerEdge":F
    int-to-float v0, v9

    move/from16 v18, v0

    div-float v11, v18, p3

    .line 301
    .local v11, "previewShorterEdge":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureLayoutHelper;->mBottomBarOptimalHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v4, v0

    .line 302
    .local v4, "barSize":F
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mBottomBarOverlay:Z

    .line 304
    if-eqz v7, :cond_6

    .line 305
    iget-object v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mPreviewRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    div-int/lit8 v20, p2, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v21, v11, v21

    sub-float v20, v20, v21

    div-int/lit8 v21, p2, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v22, v11, v22

    add-float v21, v21, v22

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v10, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 307
    iget-object v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mBottomBarRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v19, v4

    div-int/lit8 v20, p2, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v21, v11, v21

    sub-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureLayoutHelper;->mNavigationBarHeight:I

    move/from16 v21, v0

    sub-int v21, p1, v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-int/lit8 v22, p2, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v23, v11, v23

    add-float v22, v22, v23

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_1

    .line 310
    :cond_6
    iget-object v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mPreviewRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    div-int/lit8 v19, p1, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v20, v11, v20

    sub-float v19, v19, v20

    const/16 v20, 0x0

    div-int/lit8 v21, p1, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v22, v11, v22

    add-float v21, v21, v22

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 312
    iget-object v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mBottomBarRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    div-int/lit8 v19, p1, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v20, v11, v20

    sub-float v19, v19, v20

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v20, v4

    div-int/lit8 v21, p1, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v22, v11, v22

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureLayoutHelper;->mNavigationBarHeight:I

    move/from16 v22, v0

    sub-int v22, p2, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_1

    .line 315
    .end local v4    # "barSize":F
    .end local v10    # "previewLongerEdge":F
    .end local v11    # "previewShorterEdge":F
    :cond_7
    const v18, 0x3fc71c72

    cmpl-float v18, p3, v18

    if-lez v18, :cond_e

    .line 316
    const v18, 0x3fe38e39

    sub-float v18, p3, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    const v19, 0x3a83126f    # 0.001f

    cmpg-float v18, v18, v19

    if-gez v18, :cond_9

    iget-boolean v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mLargeScreen:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 317
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mNavigationBarBlack:Z

    .line 325
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureLayoutHelper;->mBottomBarOptimalHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v4, v0

    .line 326
    .restart local v4    # "barSize":F
    int-to-float v11, v15

    .line 327
    .restart local v11    # "previewShorterEdge":F
    int-to-float v0, v15

    move/from16 v18, v0

    mul-float v10, v18, p3

    .line 328
    .restart local v10    # "previewLongerEdge":F
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mBottomBarOverlay:Z

    .line 329
    if-eqz v7, :cond_b

    .line 330
    move/from16 v0, p1

    int-to-float v13, v0

    .line 331
    .local v13, "right":F
    sub-float v8, v13, v10

    .line 332
    .local v8, "left":F
    iget-boolean v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mNavigationBarBlack:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 333
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureLayoutHelper;->mNavigationBarHeight:I

    move/from16 v18, v0

    if-nez v18, :cond_8

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureLayoutHelper;->mController:Lcom/android/camera/app/AppController;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/camera/util/SystemUIUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/CaptureLayoutHelper;->mNavigationBarHeight:I

    .line 336
    :cond_8
    iget-object v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mPreviewRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureLayoutHelper;->mNavigationBarHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v8, v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureLayoutHelper;->mNavigationBarHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, v13, v21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 337
    iget-object v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mBottomBarRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v19, v4

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureLayoutHelper;->mNavigationBarHeight:I

    move/from16 v21, v0

    sub-int v21, p1, v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_1

    .line 319
    .end local v4    # "barSize":F
    .end local v8    # "left":F
    .end local v10    # "previewLongerEdge":F
    .end local v11    # "previewShorterEdge":F
    .end local v13    # "right":F
    :cond_9
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mNavigationBarBlack:Z

    goto/16 :goto_2

    .line 339
    .restart local v4    # "barSize":F
    .restart local v8    # "left":F
    .restart local v10    # "previewLongerEdge":F
    .restart local v11    # "previewShorterEdge":F
    .restart local v13    # "right":F
    :cond_a
    iget-object v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mPreviewRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v8, v1, v13, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 340
    iget-object v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mBottomBarRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v19, v4

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureLayoutHelper;->mNavigationBarHeight:I

    move/from16 v21, v0

    sub-int v21, p1, v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_1

    .line 343
    .end local v8    # "left":F
    .end local v13    # "right":F
    :cond_b
    move/from16 v0, p2

    int-to-float v5, v0

    .line 344
    .local v5, "bottom":F
    sub-float v17, v5, v10

    .line 345
    .local v17, "top":F
    iget-boolean v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mNavigationBarBlack:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    .line 346
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureLayoutHelper;->mNavigationBarHeight:I

    move/from16 v18, v0

    if-nez v18, :cond_c

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureLayoutHelper;->mController:Lcom/android/camera/app/AppController;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/camera/util/SystemUIUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/CaptureLayoutHelper;->mNavigationBarHeight:I

    .line 349
    :cond_c
    iget-object v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mPreviewRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureLayoutHelper;->mNavigationBarHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v17, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureLayoutHelper;->mNavigationBarHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, v5, v21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v11, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 350
    iget-object v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mBottomBarRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v20, v4

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureLayoutHelper;->mNavigationBarHeight:I

    move/from16 v22, v0

    sub-int v22, p2, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_1

    .line 352
    :cond_d
    iget-object v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mPreviewRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v11, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 353
    iget-object v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mBottomBarRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v20, v4

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureLayoutHelper;->mNavigationBarHeight:I

    move/from16 v22, v0

    sub-int v22, p2, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_1

    .line 356
    .end local v4    # "barSize":F
    .end local v5    # "bottom":F
    .end local v10    # "previewLongerEdge":F
    .end local v11    # "previewShorterEdge":F
    .end local v17    # "top":F
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureLayoutHelper;->mBottomBarMinHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v12, v18

    if-gtz v18, :cond_10

    .line 358
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureLayoutHelper;->mBottomBarMinHeight:I

    move/from16 v18, v0

    sub-int v18, v9, v18

    move/from16 v0, v18

    int-to-float v10, v0

    .line 359
    .restart local v10    # "previewLongerEdge":F
    div-float v11, v10, p3

    .line 360
    .restart local v11    # "previewShorterEdge":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureLayoutHelper;->mBottomBarMinHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v4, v0

    .line 361
    .restart local v4    # "barSize":F
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mBottomBarOverlay:Z

    .line 362
    if-eqz v7, :cond_f

    .line 363
    iget-object v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mPreviewRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    div-int/lit8 v20, p2, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v21, v11, v21

    sub-float v20, v20, v21

    div-int/lit8 v21, p2, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v22, v11, v22

    add-float v21, v21, v22

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v10, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 365
    iget-object v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mBottomBarRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v19, v4

    div-int/lit8 v20, p2, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v21, v11, v21

    sub-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureLayoutHelper;->mNavigationBarHeight:I

    move/from16 v21, v0

    sub-int v21, p1, v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-int/lit8 v22, p2, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v23, v11, v23

    add-float v22, v22, v23

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_1

    .line 368
    :cond_f
    iget-object v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mPreviewRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    div-int/lit8 v19, p1, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v20, v11, v20

    sub-float v19, v19, v20

    const/16 v20, 0x0

    div-int/lit8 v21, p1, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v22, v11, v22

    add-float v21, v21, v22

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 370
    iget-object v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mBottomBarRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    div-int/lit8 v19, p1, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v20, v11, v20

    sub-float v19, v19, v20

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v20, v4

    div-int/lit8 v21, p1, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v22, v11, v22

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureLayoutHelper;->mNavigationBarHeight:I

    move/from16 v22, v0

    sub-int v22, p2, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_1

    .line 375
    .end local v4    # "barSize":F
    .end local v10    # "previewLongerEdge":F
    .end local v11    # "previewShorterEdge":F
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureLayoutHelper;->mBottomBarMaxHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v12, v18

    if-gtz v18, :cond_11

    move v4, v12

    .line 377
    .restart local v4    # "barSize":F
    :goto_3
    int-to-float v11, v15

    .line 378
    .restart local v11    # "previewShorterEdge":F
    int-to-float v0, v15

    move/from16 v18, v0

    mul-float v10, v18, p3

    .line 379
    .restart local v10    # "previewLongerEdge":F
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mBottomBarOverlay:Z

    .line 381
    if-eqz v7, :cond_12

    .line 382
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v13, v18, v4

    .line 383
    .restart local v13    # "right":F
    sub-float v8, v13, v10

    .line 384
    .restart local v8    # "left":F
    iget-object v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mPreviewRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v8, v1, v13, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 385
    iget-object v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mBottomBarRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v19, v4

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureLayoutHelper;->mNavigationBarHeight:I

    move/from16 v21, v0

    sub-int v21, p1, v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_1

    .line 375
    .end local v4    # "barSize":F
    .end local v8    # "left":F
    .end local v10    # "previewLongerEdge":F
    .end local v11    # "previewShorterEdge":F
    .end local v13    # "right":F
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureLayoutHelper;->mBottomBarMaxHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v4, v0

    goto :goto_3

    .line 387
    .restart local v4    # "barSize":F
    .restart local v10    # "previewLongerEdge":F
    .restart local v11    # "previewShorterEdge":F
    :cond_12
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v5, v18, v4

    .line 388
    .restart local v5    # "bottom":F
    sub-float v17, v5, v10

    .line 389
    .restart local v17    # "top":F
    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v18, p3, v18

    if-nez v18, :cond_13

    .line 390
    const/high16 v18, 0x40800000    # 4.0f

    mul-float v18, v18, v11

    const/high16 v19, 0x40400000    # 3.0f

    div-float v18, v18, v19

    sub-float v17, v5, v18

    .line 391
    sub-float v18, v5, v17

    sub-float v18, v18, v11

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v17, v17, v18

    .line 392
    iget-object v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mPreviewRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    add-float v20, v17, v11

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v11, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 396
    :goto_4
    iget-object v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mBottomBarRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v20, v4

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureLayoutHelper;->mNavigationBarHeight:I

    move/from16 v22, v0

    sub-int v22, p2, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_1

    .line 394
    :cond_13
    iget-object v0, v6, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mPreviewRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v11, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_4
.end method

.method public static round(Landroid/graphics/RectF;)V
    .locals 5
    .param p0, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 422
    if-nez p0, :cond_0

    .line 430
    :goto_0
    return-void

    .line 425
    :cond_0
    iget v4, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v1, v4

    .line 426
    .local v1, "left":F
    iget v4, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v3, v4

    .line 427
    .local v3, "top":F
    iget v4, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v2, v4

    .line 428
    .local v2, "right":F
    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v0, v4

    .line 429
    .local v0, "bottom":F
    invoke-virtual {p0, v1, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0
.end method

.method private updatePositionConfiguration()V
    .locals 4

    .prologue
    .line 123
    iget v0, p0, Lcom/android/camera/CaptureLayoutHelper;->mWindowWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/CaptureLayoutHelper;->mWindowHeight:I

    if-nez v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget v0, p0, Lcom/android/camera/CaptureLayoutHelper;->mWindowWidth:I

    iget v1, p0, Lcom/android/camera/CaptureLayoutHelper;->mWindowHeight:I

    iget v2, p0, Lcom/android/camera/CaptureLayoutHelper;->mAspectRatio:F

    iget v3, p0, Lcom/android/camera/CaptureLayoutHelper;->mRotation:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/CaptureLayoutHelper;->getPositionConfiguration(IIFI)Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CaptureLayoutHelper;->mPositionConfiguration:Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;

    goto :goto_0
.end method


# virtual methods
.method public getBottomBarRect()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/CaptureLayoutHelper;->mPositionConfiguration:Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;

    if-nez v0, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/android/camera/CaptureLayoutHelper;->updatePositionConfiguration()V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureLayoutHelper;->mPositionConfiguration:Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;

    if-nez v0, :cond_1

    .line 142
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 144
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/CaptureLayoutHelper;->mPositionConfiguration:Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;

    iget-object v1, v1, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mBottomBarRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public getFullscreenRect()Landroid/graphics/RectF;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 171
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/camera/CaptureLayoutHelper;->mWindowWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/CaptureLayoutHelper;->mWindowHeight:I

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getPreviewRect()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/camera/CaptureLayoutHelper;->mPositionConfiguration:Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;

    if-nez v0, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/android/camera/CaptureLayoutHelper;->updatePositionConfiguration()V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureLayoutHelper;->mPositionConfiguration:Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;

    if-nez v0, :cond_1

    .line 159
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 161
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/CaptureLayoutHelper;->mPositionConfiguration:Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;

    iget-object v1, v1, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mPreviewRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public getUncoveredPreviewRect()Landroid/graphics/RectF;
    .locals 5

    .prologue
    const/16 v2, 0xb4

    .line 183
    iget-object v0, p0, Lcom/android/camera/CaptureLayoutHelper;->mPositionConfiguration:Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;

    if-nez v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/android/camera/CaptureLayoutHelper;->updatePositionConfiguration()V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureLayoutHelper;->mPositionConfiguration:Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;

    if-nez v0, :cond_1

    .line 188
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 218
    :goto_0
    return-object v0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureLayoutHelper;->mPositionConfiguration:Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;

    iget-object v0, v0, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mBottomBarRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/CaptureLayoutHelper;->mPositionConfiguration:Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;

    iget-object v1, v1, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mPreviewRect:Landroid/graphics/RectF;

    invoke-static {v0, v1}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/CaptureLayoutHelper;->mShowBottomBar:Z

    if-nez v0, :cond_3

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CaptureLayoutHelper;->mPositionConfiguration:Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;

    iget-object v0, v0, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mPreviewRect:Landroid/graphics/RectF;

    goto :goto_0

    .line 196
    :cond_3
    iget v0, p0, Lcom/android/camera/CaptureLayoutHelper;->mWindowHeight:I

    iget v1, p0, Lcom/android/camera/CaptureLayoutHelper;->mWindowWidth:I

    if-le v0, v1, :cond_5

    .line 198
    iget v0, p0, Lcom/android/camera/CaptureLayoutHelper;->mRotation:I

    if-lt v0, v2, :cond_4

    .line 200
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/CaptureLayoutHelper;->mPositionConfiguration:Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;

    iget-object v1, v1, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mPreviewRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/android/camera/CaptureLayoutHelper;->mPositionConfiguration:Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;

    iget-object v2, v2, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mBottomBarRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/android/camera/CaptureLayoutHelper;->mPositionConfiguration:Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;

    iget-object v3, v3, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mPreviewRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/android/camera/CaptureLayoutHelper;->mPositionConfiguration:Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;

    iget-object v4, v4, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mPreviewRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    .line 205
    :cond_4
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/CaptureLayoutHelper;->mPositionConfiguration:Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;

    iget-object v1, v1, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mPreviewRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/android/camera/CaptureLayoutHelper;->mPositionConfiguration:Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;

    iget-object v2, v2, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mPreviewRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/android/camera/CaptureLayoutHelper;->mPositionConfiguration:Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;

    iget-object v3, v3, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mPreviewRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/android/camera/CaptureLayoutHelper;->mPositionConfiguration:Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;

    iget-object v4, v4, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mBottomBarRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    .line 211
    :cond_5
    iget v0, p0, Lcom/android/camera/CaptureLayoutHelper;->mRotation:I

    if-lt v0, v2, :cond_6

    .line 213
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/CaptureLayoutHelper;->mPositionConfiguration:Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;

    iget-object v1, v1, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mBottomBarRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/android/camera/CaptureLayoutHelper;->mPositionConfiguration:Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;

    iget-object v2, v2, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mPreviewRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/android/camera/CaptureLayoutHelper;->mPositionConfiguration:Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;

    iget-object v3, v3, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mPreviewRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/android/camera/CaptureLayoutHelper;->mPositionConfiguration:Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;

    iget-object v4, v4, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mPreviewRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    .line 218
    :cond_6
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/CaptureLayoutHelper;->mPositionConfiguration:Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;

    iget-object v1, v1, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mPreviewRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/android/camera/CaptureLayoutHelper;->mPositionConfiguration:Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;

    iget-object v2, v2, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mPreviewRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/android/camera/CaptureLayoutHelper;->mPositionConfiguration:Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;

    iget-object v3, v3, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mBottomBarRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/android/camera/CaptureLayoutHelper;->mPositionConfiguration:Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;

    iget-object v4, v4, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mPreviewRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/16 :goto_0
.end method

.method public onNonDecorWindowSizeChanged(III)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 243
    iput p1, p0, Lcom/android/camera/CaptureLayoutHelper;->mWindowWidth:I

    .line 244
    iput p2, p0, Lcom/android/camera/CaptureLayoutHelper;->mWindowHeight:I

    .line 245
    iput p3, p0, Lcom/android/camera/CaptureLayoutHelper;->mRotation:I

    .line 246
    invoke-direct {p0}, Lcom/android/camera/CaptureLayoutHelper;->updatePositionConfiguration()V

    .line 247
    return-void
.end method

.method public onPreviewAspectRatioChanged(F)V
    .locals 1
    .param p1, "aspectRatio"    # F

    .prologue
    .line 102
    iget v0, p0, Lcom/android/camera/CaptureLayoutHelper;->mAspectRatio:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    iput p1, p0, Lcom/android/camera/CaptureLayoutHelper;->mAspectRatio:F

    .line 106
    invoke-direct {p0}, Lcom/android/camera/CaptureLayoutHelper;->updatePositionConfiguration()V

    goto :goto_0
.end method

.method public setNavigationBarHeight(I)V
    .locals 0
    .param p1, "navigationBarHeight"    # I

    .prologue
    .line 432
    iput p1, p0, Lcom/android/camera/CaptureLayoutHelper;->mNavigationBarHeight:I

    .line 433
    return-void
.end method

.method public setShowBottomBar(Z)V
    .locals 0
    .param p1, "showBottomBar"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/camera/CaptureLayoutHelper;->mShowBottomBar:Z

    .line 116
    return-void
.end method

.method public shouldOverlayBottomBar()Z
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/camera/CaptureLayoutHelper;->mPositionConfiguration:Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;

    if-nez v0, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/android/camera/CaptureLayoutHelper;->updatePositionConfiguration()V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureLayoutHelper;->mPositionConfiguration:Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;

    if-nez v0, :cond_1

    .line 236
    const/4 v0, 0x0

    .line 238
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureLayoutHelper;->mPositionConfiguration:Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;

    iget-boolean v0, v0, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mBottomBarOverlay:Z

    goto :goto_0
.end method
