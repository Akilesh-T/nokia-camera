.class Lcom/android/camera/ui/ProModeSeekBar$Item;
.super Ljava/lang/Object;
.source "ProModeSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ProModeSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation


# instance fields
.field private mAngle:F

.field private mData:Lcom/android/camera/ManualDataUtil$ManualModeItemData;

.field private mHintIcon:Landroid/graphics/Bitmap;

.field private mIndex:I

.field private mIndicator:Landroid/graphics/Bitmap;

.field private mLabel:Landroid/graphics/Bitmap;

.field private mPIndicator:Landroid/graphics/Bitmap;

.field private mPrevRadius:F

.field private mPrevStartAngle:F

.field private mXY:[F

.field final synthetic this$0:Lcom/android/camera/ui/ProModeSeekBar;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/ProModeSeekBar;ILcom/android/camera/ManualDataUtil$ManualModeItemData;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p2, "index"    # I
    .param p3, "data"    # Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    .param p4, "label"    # Landroid/graphics/Bitmap;
    .param p5, "indicator"    # Landroid/graphics/Bitmap;
    .param p6, "pIndicator"    # Landroid/graphics/Bitmap;
    .param p7, "hintIocn"    # Landroid/graphics/Bitmap;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->this$0:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mXY:[F

    .line 112
    iput p2, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mIndex:I

    .line 113
    iput-object p3, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mData:Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    .line 114
    iput-object p4, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mLabel:Landroid/graphics/Bitmap;

    .line 115
    iput-object p7, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mHintIcon:Landroid/graphics/Bitmap;

    .line 116
    if-eqz p5, :cond_0

    .line 117
    iput-object p5, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mIndicator:Landroid/graphics/Bitmap;

    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mIndicator:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera/ui/ProModeSeekBar;->access$002(Lcom/android/camera/ui/ProModeSeekBar;I)I

    .line 122
    :cond_0
    if-eqz p6, :cond_1

    .line 123
    iput-object p6, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mPIndicator:Landroid/graphics/Bitmap;

    .line 124
    :cond_1
    return-void
.end method


# virtual methods
.method public calculate(FF)V
    .locals 11
    .param p1, "radius"    # F
    .param p2, "startAngle"    # F

    .prologue
    .line 127
    iget v7, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mPrevRadius:F

    cmpl-float v7, v7, p1

    if-nez v7, :cond_1

    iget v7, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mPrevStartAngle:F

    cmpl-float v7, v7, p2

    if-nez v7, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget v7, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mIndex:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->this$0:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-static {v8}, Lcom/android/camera/ui/ProModeSeekBar;->access$100(Lcom/android/camera/ui/ProModeSeekBar;)I

    move-result v8

    int-to-float v8, v8

    div-float v4, v7, v8

    .line 131
    .local v4, "progressPercent":F
    iget-object v7, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->this$0:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-static {v7}, Lcom/android/camera/ui/ProModeSeekBar;->access$200(Lcom/android/camera/ui/ProModeSeekBar;)F

    move-result v7

    mul-float/2addr v7, v4

    add-float v3, v7, p2

    .line 132
    .local v3, "position":F
    const/high16 v7, 0x43b40000    # 360.0f

    rem-float/2addr v3, v7

    .line 133
    sub-float v7, v3, p2

    iput v7, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mAngle:F

    .line 134
    iget v7, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mAngle:F

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    const/high16 v7, 0x43b40000    # 360.0f

    iget v8, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mAngle:F

    add-float/2addr v7, v8

    :goto_1
    iput v7, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mAngle:F

    .line 136
    iget-object v7, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mLabel:Landroid/graphics/Bitmap;

    if-nez v7, :cond_4

    const/4 v0, 0x0

    .line 137
    .local v0, "height":I
    :goto_2
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v7, v0

    add-float/2addr v7, p1

    neg-float v7, v7

    int-to-float v8, v0

    add-float/2addr v8, p1

    neg-float v8, v8

    int-to-float v9, v0

    add-float/2addr v9, p1

    int-to-float v10, v0

    add-float/2addr v10, p1

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 138
    .local v5, "rectF":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 139
    .local v1, "path":Landroid/graphics/Path;
    iget v7, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mAngle:F

    invoke-virtual {v1, v5, p2, v7}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 140
    new-instance v2, Landroid/graphics/PathMeasure;

    const/4 v7, 0x0

    invoke-direct {v2, v1, v7}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 141
    .local v2, "pm":Landroid/graphics/PathMeasure;
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v7

    iget-object v8, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mXY:[F

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v8, v9}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result v6

    .line 142
    .local v6, "returnValue":Z
    if-nez v6, :cond_2

    .line 143
    new-instance v1, Landroid/graphics/Path;

    .end local v1    # "path":Landroid/graphics/Path;
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 144
    .restart local v1    # "path":Landroid/graphics/Path;
    iget v7, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mAngle:F

    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v7, v8

    invoke-virtual {v1, v5, p2, v7}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 145
    new-instance v2, Landroid/graphics/PathMeasure;

    .end local v2    # "pm":Landroid/graphics/PathMeasure;
    const/4 v7, 0x0

    invoke-direct {v2, v1, v7}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 146
    .restart local v2    # "pm":Landroid/graphics/PathMeasure;
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mXY:[F

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v8, v9}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result v6

    .line 148
    :cond_2
    if-eqz v6, :cond_0

    .line 149
    iput p1, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mPrevRadius:F

    .line 150
    iput p2, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mPrevStartAngle:F

    goto :goto_0

    .line 134
    .end local v0    # "height":I
    .end local v1    # "path":Landroid/graphics/Path;
    .end local v2    # "pm":Landroid/graphics/PathMeasure;
    .end local v5    # "rectF":Landroid/graphics/RectF;
    .end local v6    # "returnValue":Z
    :cond_3
    iget v7, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mAngle:F

    goto :goto_1

    .line 136
    :cond_4
    iget-object v7, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mLabel:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/lit8 v0, v7, 0x2

    goto :goto_2
.end method

.method public drawHint(Landroid/graphics/Canvas;I)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "orientation"    # I

    .prologue
    .line 192
    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mData:Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v2}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getData()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "data":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mData:Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v2}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getHintStyle()Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

    move-result-object v1

    .line 194
    .local v1, "style":Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;
    sget-object v2, Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;->ICON:Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

    if-ne v1, v2, :cond_0

    .line 195
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/ProModeSeekBar$Item;->drawHintIcon(Landroid/graphics/Canvas;I)V

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/ProModeSeekBar$Item;->drawText(Landroid/graphics/Canvas;I)V

    goto :goto_0
.end method

.method public drawHintIcon(Landroid/graphics/Canvas;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "orientation"    # I

    .prologue
    .line 202
    iget-object v3, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mHintIcon:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 212
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->this$0:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-static {v3}, Lcom/android/camera/ui/ProModeSeekBar;->access$700(Lcom/android/camera/ui/ProModeSeekBar;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    .line 205
    .local v2, "width":F
    iget-object v3, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->this$0:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-static {v3}, Lcom/android/camera/ui/ProModeSeekBar;->access$700(Lcom/android/camera/ui/ProModeSeekBar;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->this$0:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-static {v4}, Lcom/android/camera/ui/ProModeSeekBar;->access$800(Lcom/android/camera/ui/ProModeSeekBar;)F

    move-result v4

    add-float v0, v3, v4

    .line 207
    .local v0, "height":F
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 208
    .local v1, "matrix":Landroid/graphics/Matrix;
    iget-object v3, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mHintIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mHintIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 209
    const/high16 v3, 0x43b40000    # 360.0f

    int-to-float v4, p2

    sub-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 210
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 211
    iget-object v3, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mHintIcon:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawIndicator(Landroid/graphics/Canvas;IZ)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "orientation"    # I
    .param p3, "pressed"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 167
    iget-object v4, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mIndicator:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mIndicator:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->this$0:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-static {v4}, Lcom/android/camera/ui/ProModeSeekBar;->access$300(Lcom/android/camera/ui/ProModeSeekBar;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v2, v3

    .line 171
    .local v2, "paint":Landroid/graphics/Paint;
    :goto_1
    if-eqz v2, :cond_2

    .line 172
    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 173
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 176
    :cond_2
    iget-object v4, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->this$0:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-static {v4}, Lcom/android/camera/ui/ProModeSeekBar;->access$500(Lcom/android/camera/ui/ProModeSeekBar;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 177
    .local v0, "background":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 178
    .local v1, "matrix":Landroid/graphics/Matrix;
    iget-object v4, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 179
    const/high16 v4, 0x43b40000    # 360.0f

    int-to-float v5, p2

    sub-float/2addr v4, v5

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 180
    iget-object v4, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->this$0:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-static {v4}, Lcom/android/camera/ui/ProModeSeekBar;->access$600(Lcom/android/camera/ui/ProModeSeekBar;)[F

    move-result-object v4

    aget v4, v4, v6

    iget-object v5, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->this$0:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-static {v5}, Lcom/android/camera/ui/ProModeSeekBar;->access$600(Lcom/android/camera/ui/ProModeSeekBar;)[F

    move-result-object v5

    aget v5, v5, v7

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 181
    new-instance v4, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v5, 0x3

    invoke-direct {v4, v6, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 182
    if-eqz p3, :cond_4

    .line 183
    iget-object v4, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mPIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v4, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 170
    .end local v0    # "background":Landroid/graphics/Bitmap;
    .end local v1    # "matrix":Landroid/graphics/Matrix;
    .end local v2    # "paint":Landroid/graphics/Paint;
    :cond_3
    iget-object v4, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->this$0:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-static {v4}, Lcom/android/camera/ui/ProModeSeekBar;->access$400(Lcom/android/camera/ui/ProModeSeekBar;)Landroid/graphics/Paint;

    move-result-object v2

    goto :goto_1

    .line 185
    .restart local v0    # "background":Landroid/graphics/Bitmap;
    .restart local v1    # "matrix":Landroid/graphics/Matrix;
    .restart local v2    # "paint":Landroid/graphics/Paint;
    :cond_4
    if-eqz v0, :cond_5

    .line 186
    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 187
    :cond_5
    iget-object v3, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawText(Landroid/graphics/Canvas;I)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "orientation"    # I

    .prologue
    .line 215
    iget-object v6, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mData:Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v6}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getData()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "data":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mData:Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v6}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getHintStyle()Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

    move-result-object v4

    .line 218
    .local v4, "style":Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;
    sget-object v6, Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;->TEXT_LARGE:Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

    if-ne v4, v6, :cond_1

    .line 219
    iget-object v6, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->this$0:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-static {v6}, Lcom/android/camera/ui/ProModeSeekBar;->access$300(Lcom/android/camera/ui/ProModeSeekBar;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->this$0:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-static {v6}, Lcom/android/camera/ui/ProModeSeekBar;->access$900(Lcom/android/camera/ui/ProModeSeekBar;)Landroid/graphics/Paint;

    move-result-object v3

    .line 223
    .local v3, "paint":Landroid/graphics/Paint;
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 224
    .local v1, "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    iget-object v6, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->this$0:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-static {v6}, Lcom/android/camera/ui/ProModeSeekBar;->access$700(Lcom/android/camera/ui/ProModeSeekBar;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    .line 225
    .local v5, "width":F
    iget-object v6, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->this$0:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-static {v6}, Lcom/android/camera/ui/ProModeSeekBar;->access$700(Lcom/android/camera/ui/ProModeSeekBar;)Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->this$0:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-static {v7}, Lcom/android/camera/ui/ProModeSeekBar;->access$800(Lcom/android/camera/ui/ProModeSeekBar;)F

    move-result v7

    add-float v2, v6, v7

    .line 226
    .local v2, "height":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 227
    neg-int v6, p2

    int-to-float v6, v6

    invoke-virtual {p1, v6, v5, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 228
    iget v6, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v7, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x4

    int-to-float v6, v6

    add-float/2addr v6, v2

    invoke-virtual {p1, v0, v5, v6, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 229
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 231
    return-void

    .line 219
    .end local v1    # "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    .end local v2    # "height":F
    .end local v3    # "paint":Landroid/graphics/Paint;
    .end local v5    # "width":F
    :cond_0
    iget-object v6, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->this$0:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-static {v6}, Lcom/android/camera/ui/ProModeSeekBar;->access$1000(Lcom/android/camera/ui/ProModeSeekBar;)Landroid/graphics/Paint;

    move-result-object v3

    goto :goto_0

    .line 221
    :cond_1
    iget-object v6, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->this$0:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-static {v6}, Lcom/android/camera/ui/ProModeSeekBar;->access$300(Lcom/android/camera/ui/ProModeSeekBar;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->this$0:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-static {v6}, Lcom/android/camera/ui/ProModeSeekBar;->access$1100(Lcom/android/camera/ui/ProModeSeekBar;)Landroid/graphics/Paint;

    move-result-object v3

    .restart local v3    # "paint":Landroid/graphics/Paint;
    :goto_1
    goto :goto_0

    .end local v3    # "paint":Landroid/graphics/Paint;
    :cond_2
    iget-object v6, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->this$0:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-static {v6}, Lcom/android/camera/ui/ProModeSeekBar;->access$1200(Lcom/android/camera/ui/ProModeSeekBar;)Landroid/graphics/Paint;

    move-result-object v3

    goto :goto_1
.end method

.method public recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 234
    iget-object v0, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mLabel:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mLabel:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 236
    iput-object v1, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mLabel:Landroid/graphics/Bitmap;

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mIndicator:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 241
    iput-object v1, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mIndicator:Landroid/graphics/Bitmap;

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mPIndicator:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mPIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 246
    iput-object v1, p0, Lcom/android/camera/ui/ProModeSeekBar$Item;->mPIndicator:Landroid/graphics/Bitmap;

    .line 248
    :cond_2
    return-void
.end method
