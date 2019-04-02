.class public Lcom/android/camera/ui/RotateImageView;
.super Lcom/android/camera/ui/TwoStateImageView;
.source "RotateImageView.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# static fields
.field private static final ANIMATION_SPEED:I = 0x10e

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mCurrentDegree:I

.field private mEnableAnimation:Z

.field private mNeedRoundedCorner:Z

.field private mStartDegree:I

.field private mTargetDegree:I

.field private mThumb:Landroid/graphics/Bitmap;

.field private mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

.field private mThumbs:[Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "RotateImageView"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/RotateImageView;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/camera/ui/TwoStateImageView;-><init>(Landroid/content/Context;)V

    .line 51
    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    .line 52
    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mStartDegree:I

    .line 53
    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mTargetDegree:I

    .line 55
    iput-boolean v1, p0, Lcom/android/camera/ui/RotateImageView;->mClockwise:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    .line 57
    iput-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    .line 58
    iput-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationEndTime:J

    .line 60
    iput-boolean v1, p0, Lcom/android/camera/ui/RotateImageView;->mNeedRoundedCorner:Z

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/TwoStateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    .line 52
    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mStartDegree:I

    .line 53
    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mTargetDegree:I

    .line 55
    iput-boolean v1, p0, Lcom/android/camera/ui/RotateImageView;->mClockwise:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    .line 57
    iput-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    .line 58
    iput-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationEndTime:J

    .line 60
    iput-boolean v1, p0, Lcom/android/camera/ui/RotateImageView;->mNeedRoundedCorner:Z

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/TwoStateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    .line 52
    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mStartDegree:I

    .line 53
    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mTargetDegree:I

    .line 55
    iput-boolean v1, p0, Lcom/android/camera/ui/RotateImageView;->mClockwise:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    .line 57
    iput-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    .line 58
    iput-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationEndTime:J

    .line 60
    iput-boolean v1, p0, Lcom/android/camera/ui/RotateImageView;->mNeedRoundedCorner:Z

    .line 68
    return-void
.end method

.method private getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "roundPx"    # F

    .prologue
    .line 226
    if-eqz p1, :cond_1

    const/4 v6, 0x0

    cmpl-float v6, p2, v6

    if-lez v6, :cond_1

    .line 228
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 229
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 228
    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 230
    .local v2, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 232
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 233
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 234
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 236
    .local v5, "rectF":Landroid/graphics/RectF;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 237
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 238
    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    invoke-virtual {v0, v5, p2, p2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 241
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 242
    invoke-virtual {v0, p1, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 243
    if-eq v2, p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "output":Landroid/graphics/Bitmap;
    .end local v3    # "paint":Landroid/graphics/Paint;
    .end local v4    # "rect":Landroid/graphics/Rect;
    .end local v5    # "rectF":Landroid/graphics/RectF;
    :cond_0
    :goto_0
    return-object v2

    .line 245
    :catch_0
    move-exception v1

    .line 246
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v6, Lcom/android/camera/ui/RotateImageView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "Failed to RoundedCorner thumbnail"

    invoke-static {v6, v7, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    move-object v2, p1

    .line 249
    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 124
    .local v8, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v8, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 127
    .local v5, "bounds":Landroid/graphics/Rect;
    iget v0, v5, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v18, v20, v21

    .line 128
    .local v18, "w":I
    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v9, v20, v21

    .line 130
    .local v9, "h":I
    if-eqz v18, :cond_0

    if-eqz v9, :cond_0

    .line 132
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mTargetDegree:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 133
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v16

    .line 134
    .local v16, "time":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/ui/RotateImageView;->mAnimationEndTime:J

    move-wide/from16 v20, v0

    cmp-long v20, v16, v20

    if-gez v20, :cond_7

    .line 135
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    move-wide/from16 v20, v0

    sub-long v20, v16, v20

    move-wide/from16 v0, v20

    long-to-int v7, v0

    .line 136
    .local v7, "deltaTime":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mStartDegree:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/RotateImageView;->mClockwise:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .end local v7    # "deltaTime":I
    :goto_1
    mul-int/lit16 v0, v7, 0x10e

    move/from16 v21, v0

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v21, v0

    add-int v6, v20, v21

    .line 138
    .local v6, "degree":I
    if-ltz v6, :cond_6

    rem-int/lit16 v6, v6, 0x168

    .line 139
    :goto_2
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->invalidate()V

    .line 146
    .end local v6    # "degree":I
    .end local v16    # "time":J
    :cond_2
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingLeft()I

    move-result v11

    .line 147
    .local v11, "left":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingTop()I

    move-result v15

    .line 148
    .local v15, "top":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingRight()I

    move-result v13

    .line 149
    .local v13, "right":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingBottom()I

    move-result v4

    .line 150
    .local v4, "bottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getWidth()I

    move-result v20

    sub-int v20, v20, v11

    sub-int v19, v20, v13

    .line 151
    .local v19, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getHeight()I

    move-result v20

    sub-int v20, v20, v15

    sub-int v10, v20, v4

    .line 153
    .local v10, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v14

    .line 156
    .local v14, "saveCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v20

    sget-object v21, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_4

    move/from16 v0, v19

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    if-ge v10, v9, :cond_4

    .line 158
    :cond_3
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    int-to-float v0, v10

    move/from16 v21, v0

    int-to-float v0, v9

    move/from16 v22, v0

    div-float v21, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 159
    .local v12, "ratio":F
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    int-to-float v0, v10

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v12, v12, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 161
    .end local v12    # "ratio":F
    :cond_4
    int-to-float v0, v11

    move/from16 v20, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    add-float v20, v20, v21

    int-to-float v0, v15

    move/from16 v21, v0

    int-to-float v0, v10

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v21, v21, v22

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 162
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 163
    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    neg-int v0, v9

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 164
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 166
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 136
    .end local v4    # "bottom":I
    .end local v10    # "height":I
    .end local v11    # "left":I
    .end local v13    # "right":I
    .end local v14    # "saveCount":I
    .end local v15    # "top":I
    .end local v19    # "width":I
    .restart local v7    # "deltaTime":I
    .restart local v16    # "time":J
    :cond_5
    neg-int v7, v7

    goto/16 :goto_1

    .line 138
    .end local v7    # "deltaTime":I
    .restart local v6    # "degree":I
    :cond_6
    rem-int/lit16 v0, v6, 0x168

    move/from16 v20, v0

    move/from16 v0, v20

    add-int/lit16 v6, v0, 0x168

    goto/16 :goto_2

    .line 142
    .end local v6    # "degree":I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mTargetDegree:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    goto/16 :goto_3
.end method

.method public enableAnimation(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    .line 80
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 255
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 256
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/RotateImageView;->setBackgroundResource(I)V

    .line 257
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 258
    return-void
.end method

.method protected getDegree()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/android/camera/ui/RotateImageView;->mTargetDegree:I

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 12
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x1

    .line 176
    if-nez p1, :cond_4

    .line 177
    iget-object v6, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    .line 178
    iget-object v6, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 179
    iput-object v7, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    .line 182
    :cond_0
    iget-object v6, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_3

    .line 183
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 184
    iget-object v6, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v6, v2

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 185
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v1, :cond_1

    .line 186
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 187
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 183
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    .end local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    iput-object v7, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 195
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 223
    :goto_1
    return-void

    .line 200
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 201
    .local v5, "param":Landroid/view/ViewGroup$LayoutParams;
    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 202
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingRight()I

    move-result v7

    sub-int v4, v6, v7

    .line 203
    .local v4, "miniThumbWidth":I
    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 204
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingBottom()I

    move-result v7

    sub-int v3, v6, v7

    .line 205
    .local v3, "miniThumbHeight":I
    invoke-static {p1, v4, v3}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    .line 207
    iget-boolean v6, p0, Lcom/android/camera/ui/RotateImageView;->mNeedRoundedCorner:Z

    if-eqz v6, :cond_5

    .line 208
    iget-object v6, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3ed47ae1    # 0.415f

    mul-float/2addr v7, v8

    invoke-direct {p0, v6, v7}, Lcom/android/camera/ui/RotateImageView;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    .line 211
    :cond_5
    iget-object v6, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    if-nez v6, :cond_7

    .line 212
    :cond_6
    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    iput-object v6, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 213
    iget-object v6, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v7, v8, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v7, v6, v10

    .line 214
    iget-object v6, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v10

    invoke-virtual {p0, v6}, Lcom/android/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    :goto_2
    invoke-virtual {p0, v11}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_1

    .line 216
    :cond_7
    iget-object v6, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v10

    aput-object v7, v6, v11

    .line 217
    iget-object v6, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v7, v8, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v7, v6, v10

    .line 218
    new-instance v6, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v7, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    invoke-direct {v6, v7}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v6, p0, Lcom/android/camera/ui/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 219
    iget-object v6, p0, Lcom/android/camera/ui/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, v6}, Lcom/android/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    iget-object v6, p0, Lcom/android/camera/ui/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v7, 0x1f4

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_2
.end method

.method public setNeedRoundedCorner(Z)V
    .locals 0
    .param p1, "needRoundedCorner"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/camera/ui/RotateImageView;->mNeedRoundedCorner:Z

    .line 64
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 6
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 90
    if-ltz p1, :cond_0

    rem-int/lit16 p1, p1, 0x168

    .line 91
    :goto_0
    iget v1, p0, Lcom/android/camera/ui/RotateImageView;->mTargetDegree:I

    if-ne p1, v1, :cond_1

    .line 109
    :goto_1
    return-void

    .line 90
    :cond_0
    rem-int/lit16 v1, p1, 0x168

    add-int/lit16 p1, v1, 0x168

    goto :goto_0

    .line 93
    :cond_1
    iput p1, p0, Lcom/android/camera/ui/RotateImageView;->mTargetDegree:I

    .line 94
    iget v1, p0, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mStartDegree:I

    .line 95
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    .line 97
    iget v1, p0, Lcom/android/camera/ui/RotateImageView;->mTargetDegree:I

    iget v2, p0, Lcom/android/camera/ui/RotateImageView;->mCurrentDegree:I

    sub-int v0, v1, v2

    .line 98
    .local v0, "diff":I
    if-ltz v0, :cond_3

    .line 102
    :goto_2
    const/16 v1, 0xb4

    if-le v0, v1, :cond_2

    add-int/lit16 v0, v0, -0x168

    .line 104
    :cond_2
    if-ltz v0, :cond_4

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, p0, Lcom/android/camera/ui/RotateImageView;->mClockwise:Z

    .line 105
    iget-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    .line 106
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    div-int/lit16 v1, v1, 0x10e

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationEndTime:J

    .line 108
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->invalidate()V

    goto :goto_1

    .line 98
    :cond_3
    add-int/lit16 v0, v0, 0x168

    goto :goto_2

    .line 104
    :cond_4
    const/4 v1, 0x0

    goto :goto_3
.end method
