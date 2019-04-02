.class public Lcom/android/camera/ui/SwitchAnimationView;
.super Landroid/widget/FrameLayout;
.source "SwitchAnimationView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SwitchAnimationView"


# instance fields
.field private mContext:Landroid/content/Context;

.field mCurrentPreviewRect:Landroid/graphics/RectF;

.field private mPreviewsrc:Landroid/graphics/Bitmap;

.field private mRotateImgv:Landroid/widget/ImageView;

.field private mShowModeBlurCover:Z

.field private mStartdAnimation:Lcom/android/camera/ui/SwitchCameraAnimation;

.field private mStopAnimation:Lcom/android/camera/ui/SwitchCameraAnimation;

.field private mSwitchCameraAnimationing:Z

.field private mSwitchCameraPreviewArrived:Z

.field private mSwitchCameraStart:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p1, p0, Lcom/android/camera/ui/SwitchAnimationView;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-object p1, p0, Lcom/android/camera/ui/SwitchAnimationView;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    iput-object p1, p0, Lcom/android/camera/ui/SwitchAnimationView;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/ui/SwitchAnimationView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/SwitchAnimationView;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/camera/ui/SwitchAnimationView;->mSwitchCameraAnimationing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/ui/SwitchAnimationView;)Lcom/android/camera/ui/SwitchCameraAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/SwitchAnimationView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/camera/ui/SwitchAnimationView;->mStopAnimation:Lcom/android/camera/ui/SwitchCameraAnimation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/SwitchAnimationView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/SwitchAnimationView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/camera/ui/SwitchAnimationView;->mPreviewsrc:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/ui/SwitchAnimationView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/SwitchAnimationView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/camera/ui/SwitchAnimationView;->mPreviewsrc:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/ui/SwitchAnimationView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/SwitchAnimationView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/camera/ui/SwitchAnimationView;->mRotateImgv:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public fadeOut(Landroid/view/View;FFJ)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startAlpha"    # F
    .param p3, "endAlpha"    # F
    .param p4, "duration"    # J

    .prologue
    .line 247
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    :goto_0
    return-void

    .line 249
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 250
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 251
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, p4, p5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 252
    new-instance v1, Lcom/android/camera/ui/SwitchAnimationView$5;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/SwitchAnimationView$5;-><init>(Lcom/android/camera/ui/SwitchAnimationView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 268
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public getBlurBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "original"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I

    .prologue
    .line 287
    iget-object v4, p0, Lcom/android/camera/ui/SwitchAnimationView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v2

    .line 288
    .local v2, "renderScript":Landroid/renderscript/RenderScript;
    invoke-static {v2, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 289
    .local v0, "input":Landroid/renderscript/Allocation;
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 290
    .local v1, "output":Landroid/renderscript/Allocation;
    invoke-static {v2}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v3

    .line 291
    .local v3, "scriptIntrinsicBlur":Landroid/renderscript/ScriptIntrinsicBlur;
    int-to-float v4, p2

    invoke-virtual {v3, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 292
    invoke-virtual {v3, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 293
    invoke-virtual {v3, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 294
    invoke-virtual {v1, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 295
    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->destroy()V

    .line 296
    return-object p1
.end method

.method public getScaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "original"    # Landroid/graphics/Bitmap;
    .param p2, "scale"    # F

    .prologue
    const/4 v1, 0x0

    .line 274
    if-nez p1, :cond_0

    .line 275
    const/4 v7, 0x0

    .line 283
    :goto_0
    return-object v7

    .line 277
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 278
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 279
    .local v4, "height":I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 280
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 281
    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 283
    .local v7, "newbm":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public hideModeBlurCover()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 240
    const-string v0, "SwitchAnimationView"

    const-string v1, " hideModeBlurCover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/android/camera/ui/SwitchAnimationView;->mRotateImgv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/SwitchAnimationView;->setVisibility(I)V

    .line 243
    return-void
.end method

.method public hideSwitchCameraCover(Z)V
    .locals 2
    .param p1, "switchCameraPreviewArrived"    # Z

    .prologue
    const/16 v1, 0x8

    .line 135
    iget-boolean v0, p0, Lcom/android/camera/ui/SwitchAnimationView;->mSwitchCameraAnimationing:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/ui/SwitchAnimationView;->mSwitchCameraStart:Z

    if-eqz v0, :cond_2

    .line 136
    iget-boolean v0, p0, Lcom/android/camera/ui/SwitchAnimationView;->mSwitchCameraPreviewArrived:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 137
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/SwitchAnimationView;->mSwitchCameraStart:Z

    .line 138
    iget-object v0, p0, Lcom/android/camera/ui/SwitchAnimationView;->mRotateImgv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 139
    iget-object v0, p0, Lcom/android/camera/ui/SwitchAnimationView;->mRotateImgv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/SwitchAnimationView;->setVisibility(I)V

    .line 165
    :cond_1
    :goto_0
    return-void

    .line 163
    :cond_2
    iput-boolean p1, p0, Lcom/android/camera/ui/SwitchAnimationView;->mSwitchCameraPreviewArrived:Z

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 53
    const v0, 0x7f0f00cb

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SwitchAnimationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/SwitchAnimationView;->mRotateImgv:Landroid/widget/ImageView;

    .line 54
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 55
    return-void
.end method

.method public showModeBlurCover(IZLandroid/graphics/Bitmap;Lcom/android/camera/app/CameraAppUI;)V
    .locals 10
    .param p1, "mode"    # I
    .param p2, "showModeBlurCover"    # Z
    .param p3, "previewsrc"    # Landroid/graphics/Bitmap;
    .param p4, "cameraAppUI"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 171
    const-string v7, "SwitchAnimationView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " showModeBlurCover ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    .line 173
    const/16 v7, 0x19

    invoke-virtual {p0, p3, v7}, Lcom/android/camera/ui/SwitchAnimationView;->getBlurBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 174
    .local v5, "preview":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/android/camera/ui/SwitchAnimationView;->mRotateImgv:Landroid/widget/ImageView;

    const/high16 v8, 0x41000000    # 8.0f

    invoke-virtual {p0, v5, v8}, Lcom/android/camera/ui/SwitchAnimationView;->getScaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 175
    if-eqz v5, :cond_3

    const/4 v7, 0x1

    :goto_0
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v8, 0x1

    :goto_1
    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    .line 176
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 177
    const/4 v5, 0x0

    .line 179
    :cond_0
    const-string v7, "SwitchAnimationView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " showModeBlurCover previewsrc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .end local v5    # "preview":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p4}, Lcom/android/camera/app/CameraAppUI;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v3

    .line 182
    .local v3, "prePreviewRect":Landroid/graphics/RectF;
    iget-object v7, p0, Lcom/android/camera/ui/SwitchAnimationView;->mCurrentPreviewRect:Landroid/graphics/RectF;

    if-eqz v7, :cond_2

    .line 183
    iget-object v3, p0, Lcom/android/camera/ui/SwitchAnimationView;->mCurrentPreviewRect:Landroid/graphics/RectF;

    .line 185
    :cond_2
    invoke-virtual {p4, p1}, Lcom/android/camera/app/CameraAppUI;->updatePreviewRect(I)V

    .line 186
    invoke-virtual {p4}, Lcom/android/camera/app/CameraAppUI;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 187
    .local v1, "nextPreviewRect":Landroid/graphics/RectF;
    iput-object v1, p0, Lcom/android/camera/ui/SwitchAnimationView;->mCurrentPreviewRect:Landroid/graphics/RectF;

    .line 188
    iget-object v7, p0, Lcom/android/camera/ui/SwitchAnimationView;->mRotateImgv:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 189
    iget-object v7, p0, Lcom/android/camera/ui/SwitchAnimationView;->mRotateImgv:Landroid/widget/ImageView;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 190
    iget-object v7, p0, Lcom/android/camera/ui/SwitchAnimationView;->mRotateImgv:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v0, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 192
    .local v0, "mImglayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p0, v7}, Lcom/android/camera/ui/SwitchAnimationView;->setAlpha(F)V

    .line 193
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/camera/ui/SwitchAnimationView;->setVisibility(I)V

    .line 194
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-int v8, v8

    if-eq v7, v8, :cond_5

    .line 196
    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v9

    float-to-int v9, v9

    aput v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v9

    float-to-int v9, v9

    aput v9, v7, v8

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 197
    .local v6, "valueAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v8, 0x12c

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 198
    iget v7, v3, Landroid/graphics/RectF;->top:F

    float-to-int v4, v7

    .line 199
    .local v4, "preTop":I
    iget v7, v1, Landroid/graphics/RectF;->top:F

    float-to-int v2, v7

    .line 200
    .local v2, "nextTop":I
    new-instance v7, Lcom/android/camera/ui/SwitchAnimationView$3;

    invoke-direct {v7, p0, v0, v4, v2}, Lcom/android/camera/ui/SwitchAnimationView$3;-><init>(Lcom/android/camera/ui/SwitchAnimationView;Landroid/widget/FrameLayout$LayoutParams;II)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 210
    new-instance v7, Lcom/android/camera/ui/SwitchAnimationView$4;

    invoke-direct {v7, p0}, Lcom/android/camera/ui/SwitchAnimationView$4;-><init>(Lcom/android/camera/ui/SwitchAnimationView;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 231
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 237
    .end local v2    # "nextTop":I
    .end local v4    # "preTop":I
    .end local v6    # "valueAnimator":Landroid/animation/ValueAnimator;
    :goto_2
    return-void

    .line 175
    .end local v0    # "mImglayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "nextPreviewRect":Landroid/graphics/RectF;
    .end local v3    # "prePreviewRect":Landroid/graphics/RectF;
    .restart local v5    # "preview":Landroid/graphics/Bitmap;
    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 233
    .end local v5    # "preview":Landroid/graphics/Bitmap;
    .restart local v0    # "mImglayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v1    # "nextPreviewRect":Landroid/graphics/RectF;
    .restart local v3    # "prePreviewRect":Landroid/graphics/RectF;
    :cond_5
    const-string v7, "SwitchAnimationView"

    const-string v8, " not animation"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget v7, v1, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 235
    iget-object v7, p0, Lcom/android/camera/ui/SwitchAnimationView;->mRotateImgv:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public startSwitchCameraAnimation(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V
    .locals 9
    .param p1, "previewsrc"    # Landroid/graphics/Bitmap;
    .param p2, "previewRect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x42b40000    # 90.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 60
    iput-boolean v8, p0, Lcom/android/camera/ui/SwitchAnimationView;->mSwitchCameraStart:Z

    .line 61
    iput-boolean v6, p0, Lcom/android/camera/ui/SwitchAnimationView;->mSwitchCameraPreviewArrived:Z

    .line 62
    iput-object p1, p0, Lcom/android/camera/ui/SwitchAnimationView;->mPreviewsrc:Landroid/graphics/Bitmap;

    .line 63
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float v0, v3, v4

    .line 64
    .local v0, "centerX":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float v1, v3, v4

    .line 66
    .local v1, "centerY":F
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 67
    .local v2, "mImglayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, p2, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 68
    iget-object v3, p0, Lcom/android/camera/ui/SwitchAnimationView;->mRotateImgv:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object v3, p0, Lcom/android/camera/ui/SwitchAnimationView;->mRotateImgv:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    iget-object v3, p0, Lcom/android/camera/ui/SwitchAnimationView;->mRotateImgv:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 71
    invoke-virtual {p0, v6}, Lcom/android/camera/ui/SwitchAnimationView;->setVisibility(I)V

    .line 72
    invoke-virtual {p0, v5}, Lcom/android/camera/ui/SwitchAnimationView;->setAlpha(F)V

    .line 73
    iget-object v3, p0, Lcom/android/camera/ui/SwitchAnimationView;->mRotateImgv:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/camera/ui/SwitchAnimationView;->mPreviewsrc:Landroid/graphics/Bitmap;

    const/high16 v5, 0x41000000    # 8.0f

    invoke-virtual {p0, v4, v5}, Lcom/android/camera/ui/SwitchAnimationView;->getScaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 75
    iget-object v3, p0, Lcom/android/camera/ui/SwitchAnimationView;->mStartdAnimation:Lcom/android/camera/ui/SwitchCameraAnimation;

    if-nez v3, :cond_0

    .line 76
    new-instance v3, Lcom/android/camera/ui/SwitchCameraAnimation;

    const/4 v4, 0x0

    sget-object v5, Lcom/android/camera/ui/SwitchCameraAnimation;->ROTATE_Y_AXIS:Ljava/lang/Byte;

    invoke-direct {v3, v4, v7, v5, v6}, Lcom/android/camera/ui/SwitchCameraAnimation;-><init>(FFLjava/lang/Byte;Z)V

    iput-object v3, p0, Lcom/android/camera/ui/SwitchAnimationView;->mStartdAnimation:Lcom/android/camera/ui/SwitchCameraAnimation;

    .line 78
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/SwitchAnimationView;->mStartdAnimation:Lcom/android/camera/ui/SwitchCameraAnimation;

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/ui/SwitchCameraAnimation;->setCenter(FF)V

    .line 80
    iget-object v3, p0, Lcom/android/camera/ui/SwitchAnimationView;->mStopAnimation:Lcom/android/camera/ui/SwitchCameraAnimation;

    if-nez v3, :cond_1

    .line 81
    new-instance v3, Lcom/android/camera/ui/SwitchCameraAnimation;

    const/high16 v4, 0x43340000    # 180.0f

    sget-object v5, Lcom/android/camera/ui/SwitchCameraAnimation;->ROTATE_Y_AXIS:Ljava/lang/Byte;

    invoke-direct {v3, v7, v4, v5, v8}, Lcom/android/camera/ui/SwitchCameraAnimation;-><init>(FFLjava/lang/Byte;Z)V

    iput-object v3, p0, Lcom/android/camera/ui/SwitchAnimationView;->mStopAnimation:Lcom/android/camera/ui/SwitchCameraAnimation;

    .line 83
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/SwitchAnimationView;->mRotateImgv:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/camera/ui/SwitchAnimationView;->mStartdAnimation:Lcom/android/camera/ui/SwitchCameraAnimation;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 84
    iget-object v3, p0, Lcom/android/camera/ui/SwitchAnimationView;->mStartdAnimation:Lcom/android/camera/ui/SwitchCameraAnimation;

    new-instance v4, Lcom/android/camera/ui/SwitchAnimationView$1;

    invoke-direct {v4, p0, p2}, Lcom/android/camera/ui/SwitchAnimationView$1;-><init>(Lcom/android/camera/ui/SwitchAnimationView;Landroid/graphics/RectF;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/SwitchCameraAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 115
    iget-object v3, p0, Lcom/android/camera/ui/SwitchAnimationView;->mStopAnimation:Lcom/android/camera/ui/SwitchCameraAnimation;

    new-instance v4, Lcom/android/camera/ui/SwitchAnimationView$2;

    invoke-direct {v4, p0}, Lcom/android/camera/ui/SwitchAnimationView$2;-><init>(Lcom/android/camera/ui/SwitchAnimationView;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/SwitchCameraAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 132
    return-void
.end method
