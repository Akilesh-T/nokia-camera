.class public Lcom/android/camera/ui/TouchCircleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TouchCircleDrawable.java"


# static fields
.field public static final ANIMATION_EXPAND:I = 0x0

.field public static final ANIMATION_SHRINK:I = 0x1

.field private static final CIRCLE_ANIM_DURATION_MS:I = 0x32

.field private static final INVALID:I = -0x1


# instance fields
.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBackgroundRadius:I

.field private mCenter:Landroid/graphics/Point;

.field private mColor:I

.field private mColorAlpha:I

.field private mColorPaint:Landroid/graphics/Paint;

.field private mColorRadius:I

.field private mDrawBackground:Z

.field private mH:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconDrawableSize:I

.field private mNeedBgPaint:Z

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mW:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 98
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/TouchCircleDrawable;-><init>(Landroid/content/res/Resources;Z)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;IIZ)V
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "color"    # I
    .param p3, "baseColor"    # I
    .param p4, "needBackgroundPaint"    # Z

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 82
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mColorPaint:Landroid/graphics/Paint;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 56
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mColorAlpha:I

    .line 67
    iput v2, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mW:I

    .line 68
    iput v2, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mH:I

    .line 70
    iput-boolean v1, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mNeedBgPaint:Z

    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    const v1, 0x7f0e007e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iput-boolean p4, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mNeedBgPaint:Z

    .line 89
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/TouchCircleDrawable;->setColor(I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Z)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "needBackgroundPaint"    # Z

    .prologue
    const v0, 0xffffff

    .line 103
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/android/camera/ui/TouchCircleDrawable;-><init>(Landroid/content/res/Resources;IIZ)V

    .line 104
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/ui/TouchCircleDrawable;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/TouchCircleDrawable;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mColorRadius:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/ui/TouchCircleDrawable;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/TouchCircleDrawable;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/ui/TouchCircleDrawable;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/TouchCircleDrawable;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mDrawBackground:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/ui/TouchCircleDrawable;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/TouchCircleDrawable;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method private updateIconBounds()V
    .locals 6

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mCenter:Landroid/graphics/Point;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mIconDrawableSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mCenter:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mIconDrawableSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mCenter:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mIconDrawableSize:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mCenter:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mIconDrawableSize:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 196
    :cond_0
    return-void
.end method


# virtual methods
.method public animate(I)V
    .locals 1
    .param p1, "animationDirec"    # I

    .prologue
    .line 199
    const/16 v0, 0x32

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/TouchCircleDrawable;->animate(II)V

    .line 200
    return-void
.end method

.method public animate(II)V
    .locals 6
    .param p1, "animationDirec"    # I
    .param p2, "duration"    # I

    .prologue
    const/4 v5, 0x1

    .line 206
    iget v3, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mW:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mH:I

    div-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mBackgroundRadius:I

    .line 208
    const/4 v2, 0x0

    .line 209
    .local v2, "startPoint":I
    iget v3, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mW:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mH:I

    div-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 211
    .local v1, "endPoint":I
    if-ne p1, v5, :cond_0

    .line 212
    iget v3, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mW:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mH:I

    div-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 213
    const/4 v1, 0x0

    .line 216
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    aput v1, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 217
    .local v0, "colorAnimator":Landroid/animation/ValueAnimator;
    int-to-long v4, p2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 218
    sget-object v3, Lcom/android/camera/util/Gusterpolator;->INSTANCE:Lcom/android/camera/util/Gusterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 219
    new-instance v3, Lcom/android/camera/ui/TouchCircleDrawable$1;

    invoke-direct {v3, p0}, Lcom/android/camera/ui/TouchCircleDrawable$1;-><init>(Lcom/android/camera/ui/TouchCircleDrawable;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 230
    new-instance v3, Lcom/android/camera/ui/TouchCircleDrawable$2;

    invoke-direct {v3, p0}, Lcom/android/camera/ui/TouchCircleDrawable$2;-><init>(Lcom/android/camera/ui/TouchCircleDrawable;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 266
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 267
    if-nez p2, :cond_1

    .line 268
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 270
    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, -0x1

    .line 142
    iget v1, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mW:I

    .line 143
    .local v1, "w":I
    iget v0, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mH:I

    .line 145
    .local v0, "h":I
    if-eq v1, v2, :cond_0

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mCenter:Landroid/graphics/Point;

    if-nez v2, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mDrawBackground:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mNeedBgPaint:Z

    if-eqz v2, :cond_2

    .line 150
    iget-object v2, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mCenter:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mCenter:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mBackgroundRadius:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 152
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mCenter:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mCenter:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mColorRadius:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 153
    iget-object v2, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 137
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 138
    return-void
.end method

.method public getCenter()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mCenter:Landroid/graphics/Point;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 170
    const/4 v0, -0x3

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mColorRadius:I

    .line 277
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mColorAlpha:I

    .line 161
    return-void
.end method

.method public setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 287
    return-void
.end method

.method public setCenter(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "p"    # Landroid/graphics/Point;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mCenter:Landroid/graphics/Point;

    .line 124
    invoke-direct {p0}, Lcom/android/camera/ui/TouchCircleDrawable;->updateIconBounds()V

    .line 125
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 179
    iput p1, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mColor:I

    .line 180
    iget-object v0, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mColorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    iget-object v0, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mColorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mColorAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 182
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 166
    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "size"    # I

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 186
    iput p2, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mIconDrawableSize:I

    .line 187
    invoke-direct {p0}, Lcom/android/camera/ui/TouchCircleDrawable;->updateIconBounds()V

    .line 188
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mW:I

    .line 114
    iput p2, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mH:I

    .line 115
    return-void
.end method

.method public setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/camera/ui/TouchCircleDrawable;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 297
    return-void
.end method
