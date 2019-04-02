.class public Lcom/android/camera/ui/PanoramaPreview;
.super Landroid/view/View;
.source "PanoramaPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;
    }
.end annotation


# instance fields
.field private mBackgroundColor:I

.field private mBackgroundLinePaint:Landroid/graphics/Paint;

.field private mDirection:I

.field private mDirectionIndicator:Landroid/graphics/Bitmap;

.field private mHintArrowRight:Landroid/graphics/Bitmap;

.field private mMaxShakeOffset:I

.field private mOffset:[I

.field private final mPanoPreviewState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;",
            ">;"
        }
    .end annotation
.end field

.field private mPreview:Landroid/graphics/Bitmap;

.field private final mPreviewArea:Landroid/graphics/RectF;

.field private mPreviewAttr:[I

.field private mScaleLongSide:F

.field private mScaleShortSide:F

.field private mSensorOrientation:I

.field private mStitchViewShortSide:I

.field private mTotalPreviewLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;->IDLE:Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPanoPreviewState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    .line 45
    iput v3, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleShortSide:F

    .line 46
    iput v3, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirection:I

    .line 51
    iput v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mTotalPreviewLength:I

    .line 52
    iput v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mSensorOrientation:I

    .line 53
    iput v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mBackgroundColor:I

    .line 54
    iput v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mStitchViewShortSide:I

    .line 56
    iput v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mMaxShakeOffset:I

    .line 60
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 77
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPanoPreviewState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;->RUNNING:Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;

    sget-object v2, Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;->IDLE:Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPanoPreviewState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;->WAIT_FOR_FIRST_PREVIEW:Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;

    sget-object v2, Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;->IDLE:Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    iput-object v3, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreview:Landroid/graphics/Bitmap;

    .line 79
    iput-object v3, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewAttr:[I

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirection:I

    .line 81
    iput-object v3, p0, Lcom/android/camera/ui/PanoramaPreview;->mOffset:[I

    .line 82
    iput v5, p0, Lcom/android/camera/ui/PanoramaPreview;->mTotalPreviewLength:I

    .line 83
    iput v5, p0, Lcom/android/camera/ui/PanoramaPreview;->mSensorOrientation:I

    .line 84
    iput v4, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleShortSide:F

    .line 85
    iput v4, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    .line 86
    invoke-virtual {p0}, Lcom/android/camera/ui/PanoramaPreview;->invalidate()V

    .line 88
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 451
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 452
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mHintArrowRight:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mHintArrowRight:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 454
    iput-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mHintArrowRight:Landroid/graphics/Bitmap;

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 459
    iput-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    .line 462
    :cond_1
    iput-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreview:Landroid/graphics/Bitmap;

    .line 463
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v11, 0x42b40000    # 90.0f

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 129
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 131
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 134
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 135
    .local v8, "matrix":Landroid/graphics/Matrix;
    sget-object v2, Lcom/android/camera/ui/PanoramaPreview$1;->$SwitchMap$com$android$camera$ui$PanoramaPreview$PanoPreviewState:[I

    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPanoPreviewState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;

    invoke-virtual {v0}, Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 137
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mHintArrowRight:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/android/camera/ui/PanoramaPreview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0202ad

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mHintArrowRight:Landroid/graphics/Bitmap;

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mHintArrowRight:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 144
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 145
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mHintArrowRight:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/PanoramaPreview;->mHintArrowRight:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v8, v0, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 146
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mHintArrowRight:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 147
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 150
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 151
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 152
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mHintArrowRight:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {v8, v1, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 153
    const/high16 v0, 0x43340000    # 180.0f

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mHintArrowRight:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mHintArrowRight:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v8, v0, v1, v2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 154
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mHintArrowRight:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 155
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 158
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 159
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 160
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mHintArrowRight:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 161
    const/high16 v0, 0x43870000    # 270.0f

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mHintArrowRight:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mHintArrowRight:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v8, v0, v1, v2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 162
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mHintArrowRight:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 163
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 166
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 167
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 168
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mHintArrowRight:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/PanoramaPreview;->mHintArrowRight:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 169
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mHintArrowRight:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mHintArrowRight:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v8, v11, v0, v1}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 170
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mHintArrowRight:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 171
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 175
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 176
    invoke-virtual {p0}, Lcom/android/camera/ui/PanoramaPreview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0202aa

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    .line 178
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mBackgroundColor:I

    if-nez v0, :cond_4

    .line 179
    invoke-virtual {p0}, Lcom/android/camera/ui/PanoramaPreview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e0094

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mBackgroundColor:I

    .line 181
    :cond_4
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mStitchViewShortSide:I

    if-nez v0, :cond_5

    .line 182
    invoke-virtual {p0}, Lcom/android/camera/ui/PanoramaPreview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090223

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mStitchViewShortSide:I

    .line 184
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mBackgroundLinePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_6

    .line 185
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mBackgroundLinePaint:Landroid/graphics/Paint;

    .line 186
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mBackgroundLinePaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 187
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mBackgroundLinePaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mBackgroundLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 189
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mBackgroundLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/camera/ui/PanoramaPreview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09021c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 191
    :cond_6
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirection:I

    packed-switch v0, :pswitch_data_1

    .line 220
    :goto_1
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mSensorOrientation:I

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 222
    :sswitch_0
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirection:I

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    .line 275
    :pswitch_2
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleShortSide:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7

    .line 276
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mStitchViewShortSide:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleShortSide:F

    .line 278
    :cond_7
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_8

    .line 279
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mTotalPreviewLength:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    .line 282
    :cond_8
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 283
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 284
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mStitchViewShortSide:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 285
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mSensorOrientation:I

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 286
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    iget v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleShortSide:F

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 287
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 288
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 290
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 291
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 292
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 293
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v8, v11, v0, v1}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 294
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mMaxShakeOffset:I

    if-eqz v0, :cond_9

    .line 295
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mOffset:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mMaxShakeOffset:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v12, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v11

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v8, v0, v1, v2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 297
    :cond_9
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 298
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 194
    :pswitch_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 195
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mStitchViewShortSide:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget v4, p0, Lcom/android/camera/ui/PanoramaPreview;->mStitchViewShortSide:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 196
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 197
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 199
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 200
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/PanoramaPreview;->mBackgroundLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 201
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1

    .line 207
    :pswitch_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 208
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mStitchViewShortSide:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v4, p0, Lcom/android/camera/ui/PanoramaPreview;->mStitchViewShortSide:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 209
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 210
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 212
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 213
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v7, p0, Lcom/android/camera/ui/PanoramaPreview;->mBackgroundLinePaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 214
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1

    .line 224
    :pswitch_5
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleShortSide:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_a

    .line 225
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mStitchViewShortSide:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleShortSide:F

    .line 227
    :cond_a
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_b

    .line 228
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mTotalPreviewLength:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    .line 231
    :cond_b
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 232
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 233
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mStitchViewShortSide:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 234
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mSensorOrientation:I

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 235
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleShortSide:F

    iget v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 236
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 237
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 239
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 240
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 241
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 242
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mMaxShakeOffset:I

    if-eqz v0, :cond_c

    .line 243
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mOffset:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mMaxShakeOffset:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v12, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v11

    mul-float/2addr v0, v10

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v8, v0, v1, v2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 245
    :cond_c
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 246
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 249
    :pswitch_6
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleShortSide:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_d

    .line 250
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mStitchViewShortSide:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleShortSide:F

    .line 252
    :cond_d
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_e

    .line 253
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mTotalPreviewLength:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    .line 256
    :cond_e
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 257
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 258
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/PanoramaPreview;->mStitchViewShortSide:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v8, v0, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 259
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mSensorOrientation:I

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 260
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleShortSide:F

    iget v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    invoke-virtual {v8, v0, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 261
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 262
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 264
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 265
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 266
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 267
    const/high16 v0, 0x43340000    # 180.0f

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v8, v0, v1, v2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 268
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mMaxShakeOffset:I

    if-eqz v0, :cond_f

    .line 269
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mOffset:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mMaxShakeOffset:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v12, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v11

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v8, v0, v1, v2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 271
    :cond_f
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 272
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 301
    :pswitch_7
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleShortSide:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_10

    .line 302
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mStitchViewShortSide:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleShortSide:F

    .line 304
    :cond_10
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_11

    .line 305
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mTotalPreviewLength:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    .line 308
    :cond_11
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 309
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 310
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mStitchViewShortSide:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v8, v0, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 311
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mSensorOrientation:I

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 312
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    iget v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleShortSide:F

    invoke-virtual {v8, v0, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 313
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 314
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 316
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 317
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 318
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 319
    const/high16 v0, 0x43870000    # 270.0f

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v8, v0, v1, v2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 320
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mMaxShakeOffset:I

    if-eqz v0, :cond_12

    .line 321
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mOffset:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mMaxShakeOffset:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v12, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v11

    mul-float/2addr v0, v10

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v8, v0, v1, v2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 323
    :cond_12
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 324
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 331
    :sswitch_1
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirection:I

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    .line 409
    :pswitch_8
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleShortSide:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_13

    .line 410
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mStitchViewShortSide:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleShortSide:F

    .line 412
    :cond_13
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_14

    .line 413
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mTotalPreviewLength:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    .line 416
    :cond_14
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 417
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 418
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mStitchViewShortSide:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 419
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mSensorOrientation:I

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 420
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    iget v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleShortSide:F

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 421
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 422
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 424
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 425
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 426
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 427
    const/high16 v0, 0x43870000    # 270.0f

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v8, v0, v1, v2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 428
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mMaxShakeOffset:I

    if-eqz v0, :cond_15

    .line 429
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mOffset:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mMaxShakeOffset:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v12, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v11

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v8, v0, v1, v2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 431
    :cond_15
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 432
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 333
    :pswitch_9
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleShortSide:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_16

    .line 334
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mStitchViewShortSide:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleShortSide:F

    .line 336
    :cond_16
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_17

    .line 337
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mTotalPreviewLength:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    .line 340
    :cond_17
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 341
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 342
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mStitchViewShortSide:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {v8, v1, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 343
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mSensorOrientation:I

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 344
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleShortSide:F

    iget v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 345
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 346
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 348
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 349
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 350
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 351
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mMaxShakeOffset:I

    if-eqz v0, :cond_18

    .line 352
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mOffset:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mMaxShakeOffset:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v12, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v11

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v8, v0, v1, v2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 354
    :cond_18
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 355
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 358
    :pswitch_a
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleShortSide:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_19

    .line 359
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mStitchViewShortSide:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleShortSide:F

    .line 361
    :cond_19
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1a

    .line 362
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mTotalPreviewLength:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    .line 365
    :cond_1a
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 366
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 367
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/PanoramaPreview;->mStitchViewShortSide:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v8, v0, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 368
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mSensorOrientation:I

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 369
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleShortSide:F

    iget v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    invoke-virtual {v8, v0, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 370
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 371
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 373
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 374
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 375
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 376
    const/high16 v0, 0x43340000    # 180.0f

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v8, v0, v1, v2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 377
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mMaxShakeOffset:I

    if-eqz v0, :cond_1b

    .line 378
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mOffset:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mMaxShakeOffset:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v12, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v11

    mul-float/2addr v0, v10

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v8, v0, v1, v2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 380
    :cond_1b
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 381
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 384
    :pswitch_b
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleShortSide:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1c

    .line 385
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mStitchViewShortSide:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleShortSide:F

    .line 387
    :cond_1c
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1d

    .line 388
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mTotalPreviewLength:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    .line 390
    :cond_1d
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 391
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 392
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mStitchViewShortSide:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    mul-float/2addr v1, v2

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 393
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mSensorOrientation:I

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 394
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    iget v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleShortSide:F

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 395
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 396
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 398
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 399
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 400
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 401
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v8, v11, v0, v1}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 402
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mMaxShakeOffset:I

    if-eqz v0, :cond_1e

    .line 403
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mOffset:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mMaxShakeOffset:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v12, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v11

    mul-float/2addr v0, v10

    iget-object v1, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v8, v0, v1, v2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 405
    :cond_1e
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirectionIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 406
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 191
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 220
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch

    .line 222
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 331
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 124
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 125
    return-void
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 120
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 63
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPanoPreviewState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;->IDLE:Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;

    sget-object v2, Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;->WAIT_FOR_FIRST_PREVIEW:Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iput-object v3, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreview:Landroid/graphics/Bitmap;

    .line 65
    iput-object v3, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewAttr:[I

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirection:I

    .line 67
    iput-object v3, p0, Lcom/android/camera/ui/PanoramaPreview;->mOffset:[I

    .line 68
    iput v5, p0, Lcom/android/camera/ui/PanoramaPreview;->mTotalPreviewLength:I

    .line 69
    iput v5, p0, Lcom/android/camera/ui/PanoramaPreview;->mSensorOrientation:I

    .line 70
    iput v4, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleShortSide:F

    .line 71
    iput v4, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    .line 72
    invoke-virtual {p0}, Lcom/android/camera/ui/PanoramaPreview;->invalidate()V

    .line 74
    :cond_0
    return-void
.end method

.method public updatePreviewFrame(Landroid/graphics/Bitmap;II[II[IIII)V
    .locals 5
    .param p1, "preview"    # Landroid/graphics/Bitmap;
    .param p2, "fullImgWidth"    # I
    .param p3, "fullImgHeight"    # I
    .param p4, "previewAttr"    # [I
    .param p5, "direction"    # I
    .param p6, "offset"    # [I
    .param p7, "progress"    # I
    .param p8, "totalPreviewLength"    # I
    .param p9, "sensorOrientation"    # I

    .prologue
    const v4, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mPanoPreviewState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;->WAIT_FOR_FIRST_PREVIEW:Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;

    sget-object v2, Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;->RUNNING:Lcom/android/camera/ui/PanoramaPreview$PanoPreviewState;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iput v3, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleShortSide:F

    .line 93
    iput v3, p0, Lcom/android/camera/ui/PanoramaPreview;->mScaleLongSide:F

    .line 95
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreview:Landroid/graphics/Bitmap;

    .line 96
    iput-object p4, p0, Lcom/android/camera/ui/PanoramaPreview;->mPreviewAttr:[I

    .line 97
    iput-object p6, p0, Lcom/android/camera/ui/PanoramaPreview;->mOffset:[I

    .line 98
    iput p5, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirection:I

    .line 99
    iput p8, p0, Lcom/android/camera/ui/PanoramaPreview;->mTotalPreviewLength:I

    .line 100
    iput p9, p0, Lcom/android/camera/ui/PanoramaPreview;->mSensorOrientation:I

    .line 101
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mMaxShakeOffset:I

    if-nez v0, :cond_1

    .line 102
    iget v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mDirection:I

    packed-switch v0, :pswitch_data_0

    .line 115
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/PanoramaPreview;->invalidate()V

    .line 116
    return-void

    .line 105
    :pswitch_0
    int-to-float v0, p2

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mMaxShakeOffset:I

    goto :goto_0

    .line 109
    :pswitch_1
    int-to-float v0, p3

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/PanoramaPreview;->mMaxShakeOffset:I

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
