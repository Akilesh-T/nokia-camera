.class public Lcom/rd/draw/data/Indicator;
.super Ljava/lang/Object;
.source "Indicator.java"


# static fields
.field public static final COUNT_NONE:I = -0x1

.field public static final DEFAULT_COUNT:I = 0x3

.field public static final DEFAULT_PADDING_DP:I = 0x8

.field public static final DEFAULT_RADIUS_DP:I = 0x6

.field public static final MIN_COUNT:I = 0x1


# instance fields
.field private animationDuration:J

.field private animationType:Lcom/rd/animation/type/AnimationType;

.field private autoVisibility:Z

.field private count:I

.field private dynamicCount:Z

.field private height:I

.field private interactiveAnimation:Z

.field private lastSelectedPosition:I

.field private orientation:Lcom/rd/draw/data/Orientation;

.field private padding:I

.field private paddingBottom:I

.field private paddingLeft:I

.field private paddingRight:I

.field private paddingTop:I

.field private radius:I

.field private rtlMode:Lcom/rd/draw/data/RtlMode;

.field private scaleFactor:F

.field private selectedColor:I

.field private selectedPosition:I

.field private selectingPosition:I

.field private stroke:I

.field private unselectedColor:I

.field private viewPagerId:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x3

    iput v0, p0, Lcom/rd/draw/data/Indicator;->count:I

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/rd/draw/data/Indicator;->viewPagerId:I

    return-void
.end method


# virtual methods
.method public getAnimationDuration()J
    .locals 2

    .prologue
    .line 170
    iget-wide v0, p0, Lcom/rd/draw/data/Indicator;->animationDuration:J

    return-wide v0
.end method

.method public getAnimationType()Lcom/rd/animation/type/AnimationType;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/rd/draw/data/Indicator;->animationType:Lcom/rd/animation/type/AnimationType;

    if-nez v0, :cond_0

    .line 224
    sget-object v0, Lcom/rd/animation/type/AnimationType;->NONE:Lcom/rd/animation/type/AnimationType;

    iput-object v0, p0, Lcom/rd/draw/data/Indicator;->animationType:Lcom/rd/animation/type/AnimationType;

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/rd/draw/data/Indicator;->animationType:Lcom/rd/animation/type/AnimationType;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/rd/draw/data/Indicator;->count:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/rd/draw/data/Indicator;->height:I

    return v0
.end method

.method public getLastSelectedPosition()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/rd/draw/data/Indicator;->lastSelectedPosition:I

    return v0
.end method

.method public getOrientation()Lcom/rd/draw/data/Orientation;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/rd/draw/data/Indicator;->orientation:Lcom/rd/draw/data/Orientation;

    if-nez v0, :cond_0

    .line 212
    sget-object v0, Lcom/rd/draw/data/Orientation;->HORIZONTAL:Lcom/rd/draw/data/Orientation;

    iput-object v0, p0, Lcom/rd/draw/data/Indicator;->orientation:Lcom/rd/draw/data/Orientation;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/rd/draw/data/Indicator;->orientation:Lcom/rd/draw/data/Orientation;

    return-object v0
.end method

.method public getPadding()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/rd/draw/data/Indicator;->padding:I

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/rd/draw/data/Indicator;->paddingBottom:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/rd/draw/data/Indicator;->paddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/rd/draw/data/Indicator;->paddingRight:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/rd/draw/data/Indicator;->paddingTop:I

    return v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/rd/draw/data/Indicator;->radius:I

    return v0
.end method

.method public getRtlMode()Lcom/rd/draw/data/RtlMode;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/rd/draw/data/Indicator;->rtlMode:Lcom/rd/draw/data/RtlMode;

    if-nez v0, :cond_0

    .line 236
    sget-object v0, Lcom/rd/draw/data/RtlMode;->Off:Lcom/rd/draw/data/RtlMode;

    iput-object v0, p0, Lcom/rd/draw/data/Indicator;->rtlMode:Lcom/rd/draw/data/RtlMode;

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/rd/draw/data/Indicator;->rtlMode:Lcom/rd/draw/data/RtlMode;

    return-object v0
.end method

.method public getScaleFactor()F
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/rd/draw/data/Indicator;->scaleFactor:F

    return v0
.end method

.method public getSelectedColor()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/rd/draw/data/Indicator;->selectedColor:I

    return v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/rd/draw/data/Indicator;->selectedPosition:I

    return v0
.end method

.method public getSelectingPosition()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/rd/draw/data/Indicator;->selectingPosition:I

    return v0
.end method

.method public getStroke()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/rd/draw/data/Indicator;->stroke:I

    return v0
.end method

.method public getUnselectedColor()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/rd/draw/data/Indicator;->unselectedColor:I

    return v0
.end method

.method public getViewPagerId()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/rd/draw/data/Indicator;->viewPagerId:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/rd/draw/data/Indicator;->width:I

    return v0
.end method

.method public isAutoVisibility()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/rd/draw/data/Indicator;->autoVisibility:Z

    return v0
.end method

.method public isDynamicCount()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/rd/draw/data/Indicator;->dynamicCount:Z

    return v0
.end method

.method public isInteractiveAnimation()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/rd/draw/data/Indicator;->interactiveAnimation:Z

    return v0
.end method

.method public setAnimationDuration(J)V
    .locals 1
    .param p1, "animationDuration"    # J

    .prologue
    .line 174
    iput-wide p1, p0, Lcom/rd/draw/data/Indicator;->animationDuration:J

    .line 175
    return-void
.end method

.method public setAnimationType(Lcom/rd/animation/type/AnimationType;)V
    .locals 0
    .param p1, "animationType"    # Lcom/rd/animation/type/AnimationType;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/rd/draw/data/Indicator;->animationType:Lcom/rd/animation/type/AnimationType;

    .line 231
    return-void
.end method

.method public setAutoVisibility(Z)V
    .locals 0
    .param p1, "autoVisibility"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/rd/draw/data/Indicator;->autoVisibility:Z

    .line 159
    return-void
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 206
    iput p1, p0, Lcom/rd/draw/data/Indicator;->count:I

    .line 207
    return-void
.end method

.method public setDynamicCount(Z)V
    .locals 0
    .param p1, "dynamicCount"    # Z

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/rd/draw/data/Indicator;->dynamicCount:Z

    .line 167
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/rd/draw/data/Indicator;->height:I

    .line 55
    return-void
.end method

.method public setInteractiveAnimation(Z)V
    .locals 0
    .param p1, "interactiveAnimation"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/rd/draw/data/Indicator;->interactiveAnimation:Z

    .line 151
    return-void
.end method

.method public setLastSelectedPosition(I)V
    .locals 0
    .param p1, "lastSelectedPosition"    # I

    .prologue
    .line 198
    iput p1, p0, Lcom/rd/draw/data/Indicator;->lastSelectedPosition:I

    .line 199
    return-void
.end method

.method public setOrientation(Lcom/rd/draw/data/Orientation;)V
    .locals 0
    .param p1, "orientation"    # Lcom/rd/draw/data/Orientation;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/rd/draw/data/Indicator;->orientation:Lcom/rd/draw/data/Orientation;

    .line 219
    return-void
.end method

.method public setPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/rd/draw/data/Indicator;->padding:I

    .line 79
    return-void
.end method

.method public setPaddingBottom(I)V
    .locals 0
    .param p1, "paddingBottom"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/rd/draw/data/Indicator;->paddingBottom:I

    .line 111
    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 0
    .param p1, "paddingLeft"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/rd/draw/data/Indicator;->paddingLeft:I

    .line 87
    return-void
.end method

.method public setPaddingRight(I)V
    .locals 0
    .param p1, "paddingRight"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/rd/draw/data/Indicator;->paddingRight:I

    .line 103
    return-void
.end method

.method public setPaddingTop(I)V
    .locals 0
    .param p1, "paddingTop"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/rd/draw/data/Indicator;->paddingTop:I

    .line 95
    return-void
.end method

.method public setRadius(I)V
    .locals 0
    .param p1, "radius"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/rd/draw/data/Indicator;->radius:I

    .line 71
    return-void
.end method

.method public setRtlMode(Lcom/rd/draw/data/RtlMode;)V
    .locals 0
    .param p1, "rtlMode"    # Lcom/rd/draw/data/RtlMode;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/rd/draw/data/Indicator;->rtlMode:Lcom/rd/draw/data/RtlMode;

    .line 243
    return-void
.end method

.method public setScaleFactor(F)V
    .locals 0
    .param p1, "scaleFactor"    # F

    .prologue
    .line 126
    iput p1, p0, Lcom/rd/draw/data/Indicator;->scaleFactor:F

    .line 127
    return-void
.end method

.method public setSelectedColor(I)V
    .locals 0
    .param p1, "selectedColor"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/rd/draw/data/Indicator;->selectedColor:I

    .line 143
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0
    .param p1, "selectedPosition"    # I

    .prologue
    .line 182
    iput p1, p0, Lcom/rd/draw/data/Indicator;->selectedPosition:I

    .line 183
    return-void
.end method

.method public setSelectingPosition(I)V
    .locals 0
    .param p1, "selectingPosition"    # I

    .prologue
    .line 190
    iput p1, p0, Lcom/rd/draw/data/Indicator;->selectingPosition:I

    .line 191
    return-void
.end method

.method public setStroke(I)V
    .locals 0
    .param p1, "stroke"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/rd/draw/data/Indicator;->stroke:I

    .line 119
    return-void
.end method

.method public setUnselectedColor(I)V
    .locals 0
    .param p1, "unselectedColor"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/rd/draw/data/Indicator;->unselectedColor:I

    .line 135
    return-void
.end method

.method public setViewPagerId(I)V
    .locals 0
    .param p1, "viewPagerId"    # I

    .prologue
    .line 250
    iput p1, p0, Lcom/rd/draw/data/Indicator;->viewPagerId:I

    .line 251
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/rd/draw/data/Indicator;->width:I

    .line 63
    return-void
.end method
