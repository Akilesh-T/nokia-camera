.class public Lcom/android/camera/ui/FaceView;
.super Landroid/view/View;
.source "FaceView.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FaceView$OnFaceChangedListener;
    }
.end annotation


# static fields
.field private static final MSG_SWITCH_FACES:I = 0x1

.field private static final SWITCH_DELAY:I = 0x46

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final LOGV:Z

.field private volatile mBlocked:Z

.field private mColor:I

.field private mDisplayOrientation:I

.field private mFaceDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private mFaces:[Lcom/android/camera/face/FaceData;

.field private mHandler:Landroid/os/Handler;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMirror:Z

.field private mOnFaceChangedListener:Lcom/android/camera/ui/FaceView$OnFaceChangedListener;

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPause:Z

.field private mPendingFaces:[Lcom/android/camera/face/FaceData;

.field private final mPreviewArea:Landroid/graphics/RectF;

.field private mRect:Landroid/graphics/RectF;

.field private mStateSwitchPending:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "FaceView"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/FaceView;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-boolean v1, p0, Lcom/android/camera/ui/FaceView;->LOGV:Z

    .line 51
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    .line 65
    iput-boolean v1, p0, Lcom/android/camera/ui/FaceView;->mStateSwitchPending:Z

    .line 66
    new-instance v0, Lcom/android/camera/ui/FaceView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/FaceView$1;-><init>(Lcom/android/camera/ui/FaceView;)V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mPreviewArea:Landroid/graphics/RectF;

    .line 93
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/ui/FaceView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FaceView;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mStateSwitchPending:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/camera/ui/FaceView;[Lcom/android/camera/face/FaceData;)[Lcom/android/camera/face/FaceData;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FaceView;
    .param p1, "x1"    # [Lcom/android/camera/face/FaceData;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/face/FaceData;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/ui/FaceView;)[Lcom/android/camera/face/FaceData;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FaceView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mPendingFaces:[Lcom/android/camera/face/FaceData;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/face/FaceData;

    .line 165
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 166
    return-void
.end method

.method public faceExists()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/face/FaceData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/face/FaceData;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 134
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 135
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 185
    iget-boolean v6, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    if-eqz v6, :cond_0

    .line 246
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-boolean v6, p0, Lcom/android/camera/ui/FaceView;->mBlocked:Z

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/face/FaceData;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/face/FaceData;

    array-length v6, v6

    if-lez v6, :cond_9

    .line 190
    iget-object v6, p0, Lcom/android/camera/ui/FaceView;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v4, v6

    .line 191
    .local v4, "rw":I
    iget-object v6, p0, Lcom/android/camera/ui/FaceView;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v3, v6

    .line 193
    .local v3, "rh":I
    if-le v3, v4, :cond_1

    iget v6, p0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    const/16 v7, 0xb4

    if-eq v6, v7, :cond_2

    :cond_1
    if-le v4, v3, :cond_3

    iget v6, p0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    const/16 v7, 0x5a

    if-eq v6, v7, :cond_2

    iget v6, p0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    const/16 v7, 0x10e

    if-ne v6, v7, :cond_3

    .line 195
    :cond_2
    move v5, v4

    .line 196
    .local v5, "temp":I
    move v4, v3

    .line 197
    move v3, v5

    .line 199
    .end local v5    # "temp":I
    :cond_3
    iget-object v6, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-boolean v7, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    iget v8, p0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    invoke-static {v6, v7, v8, v4, v3}, Lcom/android/camera/util/CameraUtil;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 202
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 203
    iget-object v6, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget v7, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 204
    iget v6, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 205
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/face/FaceData;

    array-length v6, v6

    if-ge v0, v6, :cond_8

    .line 207
    iget-object v6, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/face/FaceData;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/android/camera/face/FaceData;->mScore:I

    const/16 v7, 0x32

    if-ge v6, v7, :cond_4

    .line 205
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 210
    :cond_4
    iget-object v6, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/face/FaceData;

    aget-object v7, v7, v0

    iget-object v7, v7, Lcom/android/camera/face/FaceData;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 214
    iget-object v6, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 219
    iget-object v6, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/android/camera/ui/FaceView;->mPreviewArea:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-object v8, p0, Lcom/android/camera/ui/FaceView;->mPreviewArea:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 221
    iget-object v6, p0, Lcom/android/camera/ui/FaceView;->mFaceDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v6, :cond_5

    .line 222
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02018e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v6, p0, Lcom/android/camera/ui/FaceView;->mFaceDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 225
    :cond_5
    iget-object v6, p0, Lcom/android/camera/ui/FaceView;->mFaceDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v6, :cond_6

    .line 226
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 227
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 228
    iget-object v6, p0, Lcom/android/camera/ui/FaceView;->mFaceDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 229
    iget-object v6, p0, Lcom/android/camera/ui/FaceView;->mFaceDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 231
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_6
    iget-object v6, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    if-nez v6, :cond_7

    .line 232
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 233
    .local v2, "res":Landroid/content/res/Resources;
    const v6, 0x7f0e0054

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/camera/ui/FaceView;->mColor:I

    .line 234
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    .line 235
    iget-object v6, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 236
    iget-object v6, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 237
    iget-object v6, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    const v7, 0x7f0901cb

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 238
    iget-object v6, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/android/camera/ui/FaceView;->mColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 240
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_7
    iget-object v6, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 243
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 245
    .end local v0    # "i":I
    .end local v3    # "rh":I
    .end local v4    # "rw":I
    :cond_9
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 251
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    .line 170
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 171
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 174
    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    .line 175
    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mBlocked:Z

    .line 176
    return-void
.end method

.method public setBlockDraw(Z)V
    .locals 0
    .param p1, "block"    # Z

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mBlocked:Z

    .line 180
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 181
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    .line 142
    return-void
.end method

.method public setFaces([Lcom/android/camera/face/FaceData;)V
    .locals 5
    .param p1, "faces"    # [Lcom/android/camera/face/FaceData;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 99
    iget-boolean v4, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    if-eqz v4, :cond_0

    .line 129
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mOnFaceChangedListener:Lcom/android/camera/ui/FaceView$OnFaceChangedListener;

    if-eqz v4, :cond_6

    .line 119
    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/face/FaceData;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/face/FaceData;

    array-length v4, v4

    if-lez v4, :cond_2

    move v1, v2

    .line 120
    .local v1, "hasFaceBefore":Z
    :goto_1
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/face/FaceData;

    .line 121
    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/face/FaceData;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/face/FaceData;

    array-length v4, v4

    if-lez v4, :cond_4

    move v0, v2

    .line 122
    .local v0, "hasFaceAfter":Z
    :goto_2
    if-eq v1, v0, :cond_1

    .line 123
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mOnFaceChangedListener:Lcom/android/camera/ui/FaceView$OnFaceChangedListener;

    invoke-interface {v2, v0}, Lcom/android/camera/ui/FaceView$OnFaceChangedListener;->OnFaceChanged(Z)V

    .line 128
    .end local v0    # "hasFaceAfter":Z
    .end local v1    # "hasFaceBefore":Z
    :cond_1
    :goto_3
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 119
    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_1

    .restart local v1    # "hasFaceBefore":Z
    :cond_4
    move v0, v3

    .line 121
    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_2

    .line 126
    .end local v1    # "hasFaceBefore":Z
    :cond_6
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/face/FaceData;

    goto :goto_3
.end method

.method public setMirror(Z)V
    .locals 0
    .param p1, "mirror"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    .line 155
    return-void
.end method

.method public setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/FaceView$OnFaceChangedListener;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mOnFaceChangedListener:Lcom/android/camera/ui/FaceView$OnFaceChangedListener;

    .line 89
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 146
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    .line 147
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 148
    return-void
.end method
