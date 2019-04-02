.class public Lcom/android/camera/PanoProgressBar;
.super Landroid/widget/ImageView;
.source "PanoProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;
    }
.end annotation


# static fields
.field public static final DIRECTION_LEFT:I = 0x1

.field public static final DIRECTION_NONE:I = 0x0

.field public static final DIRECTION_RIGHT:I = 0x2

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private mDirection:I

.field private final mDoneAreaPaint:Landroid/graphics/Paint;

.field private mDrawBounds:Landroid/graphics/RectF;

.field private mHeight:F

.field private final mIndicatorPaint:Landroid/graphics/Paint;

.field private mIndicatorWidth:F

.field private mLeftMostProgress:F

.field private mListener:Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;

.field private mMaxProgress:F

.field private mProgress:F

.field private mProgressOffset:F

.field private mRightMostProgress:F

.field private mWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PanoProgressBar"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/PanoProgressBar;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v2, 0xff

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    .line 35
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mMaxProgress:F

    .line 36
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mLeftMostProgress:F

    .line 37
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mRightMostProgress:F

    .line 38
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgressOffset:F

    .line 39
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorWidth:F

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PanoProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDoneAreaPaint:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PanoProgressBar;->mListener:Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;

    .line 55
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDoneAreaPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDoneAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 58
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 61
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 64
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    .line 65
    return-void
.end method

.method private setDirection(I)V
    .locals 2
    .param p1, "direction"    # I

    .prologue
    .line 72
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    if-eq v0, p1, :cond_1

    .line 73
    iput p1, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    .line 74
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mListener:Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mListener:Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    invoke-interface {v0, v1}, Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;->onDirectionChange(I)V

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->invalidate()V

    .line 79
    :cond_1
    return-void
.end method


# virtual methods
.method public getDirection()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/camera/PanoProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 170
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    if-eqz v0, :cond_0

    .line 172
    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mLeftMostProgress:F

    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/android/camera/PanoProgressBar;->mRightMostProgress:F

    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/android/camera/PanoProgressBar;->mDoneAreaPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 177
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 178
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    iget v2, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorWidth:F

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 179
    .local v1, "l":F
    iget v3, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    .line 184
    .local v3, "r":F
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 188
    .end local v1    # "l":F
    .end local v3    # "r":F
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 189
    return-void

    .line 181
    :cond_1
    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    .line 182
    .restart local v1    # "l":F
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    iget v2, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorWidth:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .restart local v3    # "r":F
    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v3, 0x0

    .line 103
    int-to-float v0, p1

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    .line 104
    int-to-float v0, p2

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mHeight:F

    .line 105
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    iget v2, p0, Lcom/android/camera/PanoProgressBar;->mHeight:F

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 106
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 160
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    .line 161
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgressOffset:F

    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/PanoProgressBar;->setDirection(I)V

    .line 163
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->invalidate()V

    .line 164
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->invalidate()V

    .line 89
    return-void
.end method

.method public setDoneColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDoneAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->invalidate()V

    .line 94
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->invalidate()V

    .line 99
    return-void
.end method

.method public setIndicatorWidth(F)V
    .locals 0
    .param p1, "w"    # F

    .prologue
    .line 113
    iput p1, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorWidth:F

    .line 114
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->invalidate()V

    .line 115
    return-void
.end method

.method public setMaxProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 109
    int-to-float v0, p1

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mMaxProgress:F

    .line 110
    return-void
.end method

.method public setOnDirectionChangeListener(Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/camera/PanoProgressBar;->mListener:Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;

    .line 69
    return-void
.end method

.method public setProgress(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    const/4 v3, 0x1

    .line 135
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    if-nez v0, :cond_0

    .line 136
    const/16 v0, 0xa

    if-le p1, v0, :cond_4

    .line 137
    invoke-virtual {p0, v3}, Lcom/android/camera/PanoProgressBar;->setRightIncreasing(Z)V

    .line 143
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    if-eqz v0, :cond_3

    .line 144
    int-to-float v0, p1

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mMaxProgress:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mProgressOffset:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    .line 146
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    .line 147
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 149
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mRightMostProgress:F

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mRightMostProgress:F

    .line 151
    :cond_1
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    if-ne v0, v3, :cond_2

    .line 153
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mLeftMostProgress:F

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mLeftMostProgress:F

    .line 155
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->invalidate()V

    .line 157
    :cond_3
    return-void

    .line 138
    :cond_4
    const/16 v0, -0xa

    if-ge p1, v0, :cond_0

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoProgressBar;->setRightIncreasing(Z)V

    goto :goto_0
.end method

.method public setRightIncreasing(Z)V
    .locals 1
    .param p1, "rightIncreasing"    # Z

    .prologue
    const/4 v0, 0x0

    .line 118
    if-eqz p1, :cond_0

    .line 119
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mLeftMostProgress:F

    .line 120
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mRightMostProgress:F

    .line 121
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgressOffset:F

    .line 122
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/PanoProgressBar;->setDirection(I)V

    .line 129
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->invalidate()V

    .line 130
    return-void

    .line 124
    :cond_0
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mLeftMostProgress:F

    .line 125
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mRightMostProgress:F

    .line 126
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgressOffset:F

    .line 127
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PanoProgressBar;->setDirection(I)V

    goto :goto_0
.end method
