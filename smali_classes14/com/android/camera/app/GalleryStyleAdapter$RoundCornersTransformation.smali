.class public Lcom/android/camera/app/GalleryStyleAdapter$RoundCornersTransformation;
.super Ljava/lang/Object;
.source "GalleryStyleAdapter.java"

# interfaces
.implements Lcom/squareup/picasso/Transformation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/GalleryStyleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RoundCornersTransformation"
.end annotation


# instance fields
.field private mDrawCornerImage:Lcom/android/camera/app/GalleryStyleAdapter$DrawCornerImage;

.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field final synthetic this$0:Lcom/android/camera/app/GalleryStyleAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/app/GalleryStyleAdapter;FLcom/android/camera/app/GalleryStyleAdapter$DrawCornerImage;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/camera/app/GalleryStyleAdapter;
    .param p2, "radius"    # F
    .param p3, "drawCornerImage"    # Lcom/android/camera/app/GalleryStyleAdapter$DrawCornerImage;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/camera/app/GalleryStyleAdapter$RoundCornersTransformation;->this$0:Lcom/android/camera/app/GalleryStyleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    iput p2, p0, Lcom/android/camera/app/GalleryStyleAdapter$RoundCornersTransformation;->mRadius:F

    .line 441
    iput-object p3, p0, Lcom/android/camera/app/GalleryStyleAdapter$RoundCornersTransformation;->mDrawCornerImage:Lcom/android/camera/app/GalleryStyleAdapter$DrawCornerImage;

    .line 442
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter$RoundCornersTransformation;->mPaint:Landroid/graphics/Paint;

    .line 443
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter$RoundCornersTransformation;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 444
    return-void
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    const-class v0, Lcom/android/camera/app/GalleryStyleAdapter$RoundCornersTransformation;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "source"    # Landroid/graphics/Bitmap;

    .prologue
    .line 448
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 449
    .local v4, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 450
    .local v5, "height":I
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 451
    .local v6, "newSource":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 452
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter$RoundCornersTransformation;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, p1, v3, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 455
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter$RoundCornersTransformation;->mDrawCornerImage:Lcom/android/camera/app/GalleryStyleAdapter$DrawCornerImage;

    iget-object v2, p0, Lcom/android/camera/app/GalleryStyleAdapter$RoundCornersTransformation;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/camera/app/GalleryStyleAdapter$RoundCornersTransformation;->mRadius:F

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/app/GalleryStyleAdapter$DrawCornerImage;->drawCornerImage(Landroid/graphics/Canvas;Landroid/graphics/Paint;FII)V

    .line 456
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 457
    return-object v6
.end method
