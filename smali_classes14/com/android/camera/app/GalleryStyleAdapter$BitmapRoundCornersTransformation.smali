.class public Lcom/android/camera/app/GalleryStyleAdapter$BitmapRoundCornersTransformation;
.super Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.source "GalleryStyleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/GalleryStyleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BitmapRoundCornersTransformation"
.end annotation


# instance fields
.field private mDrawCornerImage:Lcom/android/camera/app/GalleryStyleAdapter$DrawCornerImage;

.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field final synthetic this$0:Lcom/android/camera/app/GalleryStyleAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/app/GalleryStyleAdapter;Landroid/content/Context;FLcom/android/camera/app/GalleryStyleAdapter$DrawCornerImage;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/camera/app/GalleryStyleAdapter;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "radius"    # F
    .param p4, "drawCornerImage"    # Lcom/android/camera/app/GalleryStyleAdapter$DrawCornerImage;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/camera/app/GalleryStyleAdapter$BitmapRoundCornersTransformation;->this$0:Lcom/android/camera/app/GalleryStyleAdapter;

    .line 473
    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>(Landroid/content/Context;)V

    .line 474
    iput p3, p0, Lcom/android/camera/app/GalleryStyleAdapter$BitmapRoundCornersTransformation;->mRadius:F

    .line 475
    iput-object p4, p0, Lcom/android/camera/app/GalleryStyleAdapter$BitmapRoundCornersTransformation;->mDrawCornerImage:Lcom/android/camera/app/GalleryStyleAdapter$DrawCornerImage;

    .line 476
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter$BitmapRoundCornersTransformation;->mPaint:Landroid/graphics/Paint;

    .line 477
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter$BitmapRoundCornersTransformation;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 478
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 496
    const-string v0, "com.example.myapp.MyTransformation"

    return-object v0
.end method

.method protected transform(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p2, "toTransform"    # Landroid/graphics/Bitmap;
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I

    .prologue
    .line 482
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 483
    .local v4, "width":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 484
    .local v5, "height":I
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 485
    .local v6, "newSource":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 486
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter$BitmapRoundCornersTransformation;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, p2, v3, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 489
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter$BitmapRoundCornersTransformation;->mDrawCornerImage:Lcom/android/camera/app/GalleryStyleAdapter$DrawCornerImage;

    iget-object v2, p0, Lcom/android/camera/app/GalleryStyleAdapter$BitmapRoundCornersTransformation;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/camera/app/GalleryStyleAdapter$BitmapRoundCornersTransformation;->mRadius:F

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/app/GalleryStyleAdapter$DrawCornerImage;->drawCornerImage(Landroid/graphics/Canvas;Landroid/graphics/Paint;FII)V

    .line 490
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 491
    return-object v6
.end method
