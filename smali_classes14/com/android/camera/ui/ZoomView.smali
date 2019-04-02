.class public Lcom/android/camera/ui/ZoomView;
.super Landroid/widget/ImageView;
.source "ZoomView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mOrientation:I

.field private mPartialDecodingTask:Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;

.field private mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

.field private mUri:Landroid/net/Uri;

.field private mViewportHeight:I

.field private mViewportWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ZoomView"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/ZoomView;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 178
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 43
    iput v0, p0, Lcom/android/camera/ui/ZoomView;->mViewportWidth:I

    .line 44
    iput v0, p0, Lcom/android/camera/ui/ZoomView;->mViewportHeight:I

    .line 179
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ZoomView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 180
    new-instance v0, Lcom/android/camera/ui/ZoomView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/ZoomView$1;-><init>(Lcom/android/camera/ui/ZoomView;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ZoomView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/ZoomView;)Landroid/graphics/BitmapRegionDecoder;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ZoomView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/ZoomView;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ZoomView;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/camera/ui/ZoomView;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/camera/ui/ZoomView;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/ZoomView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ZoomView;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/camera/ui/ZoomView;->mOrientation:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/ZoomView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ZoomView;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/camera/ui/ZoomView;->mViewportWidth:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/ui/ZoomView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ZoomView;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/android/camera/ui/ZoomView;->mViewportWidth:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/ui/ZoomView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ZoomView;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/camera/ui/ZoomView;->mViewportHeight:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/ui/ZoomView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ZoomView;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/android/camera/ui/ZoomView;->mViewportHeight:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/ui/ZoomView;II)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ZoomView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/ZoomView;->getSampleFactor(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/ui/ZoomView;Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;)Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ZoomView;
    .param p1, "x1"    # Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/camera/ui/ZoomView;->mPartialDecodingTask:Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/camera/ui/ZoomView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ZoomView;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ZoomView;->showPartiallyDecodedImage(Z)V

    return-void
.end method

.method public static adjustToFitInBounds(Landroid/graphics/RectF;II)Landroid/graphics/RectF;
    .locals 8
    .param p0, "rect"    # Landroid/graphics/RectF;
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 235
    const/4 v0, 0x0

    .local v0, "dx":F
    const/4 v1, 0x0

    .line 236
    .local v1, "dy":F
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 237
    .local v2, "newRect":Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    int-to-float v4, p1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 238
    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float v0, v3, v4

    .line 247
    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    int-to-float v4, p2

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 248
    div-int/lit8 v3, p2, 0x2

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float v1, v3, v4

    .line 257
    :cond_1
    :goto_1
    cmpl-float v3, v0, v6

    if-nez v3, :cond_2

    cmpl-float v3, v1, v6

    if-eqz v3, :cond_3

    .line 258
    :cond_2
    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 260
    :cond_3
    return-object v2

    .line 240
    :cond_4
    iget v3, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_5

    .line 241
    iget v3, v2, Landroid/graphics/RectF;->left:F

    neg-float v0, v3

    goto :goto_0

    .line 242
    :cond_5
    iget v3, v2, Landroid/graphics/RectF;->right:F

    int-to-float v4, p1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 243
    int-to-float v3, p1

    iget v4, v2, Landroid/graphics/RectF;->right:F

    sub-float v0, v3, v4

    goto :goto_0

    .line 250
    :cond_6
    iget v3, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_7

    .line 251
    iget v3, v2, Landroid/graphics/RectF;->top:F

    neg-float v1, v3

    goto :goto_1

    .line 252
    :cond_7
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, p2

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 253
    int-to-float v3, p2

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v3, v4

    goto :goto_1
.end method

.method private getInputStream()Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 272
    const/4 v1, 0x0

    .line 274
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/ZoomView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 278
    :goto_0
    return-object v1

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/android/camera/ui/ZoomView;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File not found at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/ZoomView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSampleFactor(II)I
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v5, 0x1

    .line 290
    iget v6, p0, Lcom/android/camera/ui/ZoomView;->mViewportWidth:I

    int-to-float v6, v6

    int-to-float v7, p1

    div-float v1, v6, v7

    .line 291
    .local v1, "fitWidthScale":F
    iget v6, p0, Lcom/android/camera/ui/ZoomView;->mViewportHeight:I

    int-to-float v6, v6

    int-to-float v7, p2

    div-float v0, v6, v7

    .line 293
    .local v0, "fitHeightScale":F
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 296
    .local v4, "scale":F
    const/high16 v6, 0x3f800000    # 1.0f

    div-float/2addr v6, v4

    float-to-int v3, v6

    .line 297
    .local v3, "sampleFactor":I
    if-gt v3, v5, :cond_0

    .line 306
    :goto_0
    return v5

    .line 300
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v6, 0x20

    if-ge v2, v6, :cond_1

    .line 301
    add-int/lit8 v6, v2, 0x1

    shl-int v6, v5, v6

    if-le v6, v3, :cond_2

    .line 302
    shl-int v3, v5, v2

    :cond_1
    move v5, v3

    .line 306
    goto :goto_0

    .line 300
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private showPartiallyDecodedImage(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 215
    if-eqz p1, :cond_0

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ZoomView;->setVisibility(I)V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ZoomView;->setVisibility(I)V

    goto :goto_0
.end method

.method private startPartialDecodingTask(Landroid/graphics/RectF;)V
    .locals 3
    .param p1, "endRect"    # Landroid/graphics/RectF;

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomView;->cancelPartialDecodingTask()V

    .line 266
    new-instance v0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;-><init>(Lcom/android/camera/ui/ZoomView;Lcom/android/camera/ui/ZoomView$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/ZoomView;->mPartialDecodingTask:Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;

    .line 267
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mPartialDecodingTask:Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/RectF;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 268
    return-void
.end method


# virtual methods
.method public cancelPartialDecodingTask()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mPartialDecodingTask:Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mPartialDecodingTask:Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;

    invoke-virtual {v0}, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mPartialDecodingTask:Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->cancel(Z)Z

    .line 225
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ZoomView;->setVisibility(I)V

    .line 227
    :cond_0
    return-void
.end method

.method public loadBitmap(Landroid/net/Uri;ILandroid/graphics/RectF;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "orientation"    # I
    .param p3, "imageRect"    # Landroid/graphics/RectF;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomView;->resetDecoder()V

    .line 208
    iput-object p1, p0, Lcom/android/camera/ui/ZoomView;->mUri:Landroid/net/Uri;

    .line 209
    iput p2, p0, Lcom/android/camera/ui/ZoomView;->mOrientation:I

    .line 211
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/camera/ui/ZoomView;->startPartialDecodingTask(Landroid/graphics/RectF;)V

    .line 212
    return-void
.end method

.method public resetDecoder()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomView;->cancelPartialDecodingTask()V

    .line 197
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mPartialDecodingTask:Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 201
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ZoomView;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 203
    :cond_1
    return-void
.end method
