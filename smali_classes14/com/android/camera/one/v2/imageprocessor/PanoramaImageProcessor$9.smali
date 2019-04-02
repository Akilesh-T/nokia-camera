.class Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$9;
.super Ljava/lang/Object;
.source "PanoramaImageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->onPostImage(III[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

.field final synthetic val$height:I

.field final synthetic val$postImage:[B

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;II[B)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$9;->this$0:Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    iput p2, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$9;->val$width:I

    iput p3, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$9;->val$height:I

    iput-object p4, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$9;->val$postImage:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 341
    iget-object v2, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$9;->this$0:Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    invoke-static {v2}, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->access$200(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    const-string v3, "mImageEngine onPostImage"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 342
    const/4 v8, 0x0

    .line 344
    .local v8, "imageInfo":Lcom/android/camera/processing/imagebackend/ImageInfo;
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$9;->this$0:Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    invoke-static {v2}, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->access$100(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/camera/processing/imagebackend/ImageInfo;

    move-object v8, v0

    .line 345
    iget-object v2, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$9;->this$0:Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    invoke-static {v2}, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->access$200(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    const-string v3, "mImageInfo.get"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_0
    if-eqz v8, :cond_0

    .line 351
    iget-object v3, v8, Lcom/android/camera/processing/imagebackend/ImageInfo;->mExif:Lcom/android/camera/exif/ExifInterface;

    sget v4, Lcom/android/camera/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    iget v2, v8, Lcom/android/camera/processing/imagebackend/ImageInfo;->mOrientation:I

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$9;->val$width:I

    .line 353
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 351
    invoke-virtual {v3, v4, v2}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v10

    .line 354
    .local v10, "widthTag":Lcom/android/camera/exif/ExifTag;
    iget-object v3, v8, Lcom/android/camera/processing/imagebackend/ImageInfo;->mExif:Lcom/android/camera/exif/ExifInterface;

    sget v4, Lcom/android/camera/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    iget v2, v8, Lcom/android/camera/processing/imagebackend/ImageInfo;->mOrientation:I

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$9;->val$height:I

    .line 356
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 354
    invoke-virtual {v3, v4, v2}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v9

    .line 357
    .local v9, "lengthTag":Lcom/android/camera/exif/ExifTag;
    iget-object v2, v8, Lcom/android/camera/processing/imagebackend/ImageInfo;->mExif:Lcom/android/camera/exif/ExifInterface;

    invoke-virtual {v2, v10}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 358
    iget-object v2, v8, Lcom/android/camera/processing/imagebackend/ImageInfo;->mExif:Lcom/android/camera/exif/ExifInterface;

    invoke-virtual {v2, v9}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 360
    new-instance v1, Lcom/android/camera/processing/imagebackend/ImageInfo;

    iget-object v2, v8, Lcom/android/camera/processing/imagebackend/ImageInfo;->mImageName:Lcom/google/common/base/Optional;

    iget v3, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$9;->val$width:I

    iget v4, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$9;->val$height:I

    iget v5, v8, Lcom/android/camera/processing/imagebackend/ImageInfo;->mOrientation:I

    iget-object v6, v8, Lcom/android/camera/processing/imagebackend/ImageInfo;->mExif:Lcom/android/camera/exif/ExifInterface;

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/processing/imagebackend/ImageInfo;-><init>(Lcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)V

    .line 362
    .local v1, "infoWrap":Lcom/android/camera/processing/imagebackend/ImageInfo;
    iget-object v2, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$9;->this$0:Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    invoke-static {v2}, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->access$500(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;)Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$9;->val$postImage:[B

    iget-object v4, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$9;->val$postImage:[B

    iget v5, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$9;->val$width:I

    iget v6, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$9;->val$height:I

    mul-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/android/camera/util/CameraUtil;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v8, v4}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->onPostProcessImageReady([BLcom/android/camera/processing/imagebackend/ImageInfo;Landroid/graphics/Bitmap;)V

    .line 364
    .end local v1    # "infoWrap":Lcom/android/camera/processing/imagebackend/ImageInfo;
    .end local v9    # "lengthTag":Lcom/android/camera/exif/ExifTag;
    .end local v10    # "widthTag":Lcom/android/camera/exif/ExifTag;
    :cond_0
    return-void

    .line 346
    :catch_0
    move-exception v7

    .line 347
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mImageInfo.get fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 351
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    iget v2, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$9;->val$height:I

    goto :goto_1

    .line 354
    .restart local v10    # "widthTag":Lcom/android/camera/exif/ExifTag;
    :cond_2
    iget v2, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$9;->val$width:I

    goto :goto_2
.end method
