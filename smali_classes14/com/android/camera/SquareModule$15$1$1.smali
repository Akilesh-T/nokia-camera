.class Lcom/android/camera/SquareModule$15$1$1;
.super Ljava/lang/Object;
.source "SquareModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SquareModule$15$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/SquareModule$15$1;

.field final synthetic val$preview:[Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/camera/SquareModule$15$1;[Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/SquareModule$15$1;

    .prologue
    .line 1762
    iput-object p1, p0, Lcom/android/camera/SquareModule$15$1$1;->this$2:Lcom/android/camera/SquareModule$15$1;

    iput-object p2, p0, Lcom/android/camera/SquareModule$15$1$1;->val$preview:[Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 1765
    :try_start_0
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .local v9, "stream":Ljava/io/ByteArrayOutputStream;
    const/4 v10, 0x0

    .line 1766
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/SquareModule$15$1$1;->this$2:Lcom/android/camera/SquareModule$15$1;

    iget-object v0, v0, Lcom/android/camera/SquareModule$15$1;->this$1:Lcom/android/camera/SquareModule$15;

    iget-object v0, v0, Lcom/android/camera/SquareModule$15;->val$session:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->getBrandLogoViewData()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1767
    iget-object v1, p0, Lcom/android/camera/SquareModule$15$1$1;->val$preview:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/SquareModule$15$1$1;->val$preview:[Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/camera/SquareModule$15$1$1;->this$2:Lcom/android/camera/SquareModule$15$1;

    iget-object v0, v0, Lcom/android/camera/SquareModule$15$1;->this$1:Lcom/android/camera/SquareModule$15;

    iget-object v0, v0, Lcom/android/camera/SquareModule$15;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$3600(Lcom/android/camera/SquareModule;)Lcom/android/camera/util/Size;

    move-result-object v5

    iget-object v0, p0, Lcom/android/camera/SquareModule$15$1$1;->this$2:Lcom/android/camera/SquareModule$15$1;

    iget-object v0, v0, Lcom/android/camera/SquareModule$15$1;->this$1:Lcom/android/camera/SquareModule$15;

    iget-object v0, v0, Lcom/android/camera/SquareModule$15;->val$session:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->getBrandLogoViewData()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/brandlogo/BrandLogoViewData;

    const/4 v11, 0x1

    invoke-static {v3, v4, v5, v0, v11}, Lcom/android/camera/brandlogo/BrandLogoImageUtil;->mergeBrandLogoData(Landroid/graphics/Bitmap;ILcom/android/camera/util/Size;Lcom/android/camera/brandlogo/BrandLogoViewData;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, v1, v2

    .line 1769
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SquareModule$15$1$1;->val$preview:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1770
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v8

    .line 1771
    .local v8, "exifInterface":Lcom/android/camera/exif/ExifInterface;
    new-instance v0, Lcom/android/camera/util/ExifUtil;

    invoke-direct {v0, v8}, Lcom/android/camera/util/ExifUtil;-><init>(Lcom/android/camera/exif/ExifInterface;)V

    invoke-virtual {v0}, Lcom/android/camera/util/ExifUtil;->populateExif()Lcom/android/camera/exif/ExifInterface;

    move-result-object v6

    .line 1772
    .local v6, "exif":Lcom/android/camera/exif/ExifInterface;
    iget-object v0, p0, Lcom/android/camera/SquareModule$15$1$1;->this$2:Lcom/android/camera/SquareModule$15$1;

    iget-object v0, v0, Lcom/android/camera/SquareModule$15$1;->this$1:Lcom/android/camera/SquareModule$15;

    iget-object v0, v0, Lcom/android/camera/SquareModule$15;->val$session:Lcom/android/camera/session/CaptureSession;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/SquareModule$15$1$1;->val$preview:[Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/SquareModule$15$1$1;->val$preview:[Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/android/camera/session/CaptureSession;->saveAndFinish([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1773
    if-eqz v9, :cond_1

    if-eqz v10, :cond_2

    :try_start_2
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1776
    .end local v6    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v8    # "exifInterface":Lcom/android/camera/exif/ExifInterface;
    .end local v9    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 1773
    .restart local v6    # "exif":Lcom/android/camera/exif/ExifInterface;
    .restart local v8    # "exifInterface":Lcom/android/camera/exif/ExifInterface;
    .restart local v9    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v10, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v6    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v8    # "exifInterface":Lcom/android/camera/exif/ExifInterface;
    .end local v9    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v7

    .line 1774
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/camera/SquareModule;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception when save post process data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1773
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "exif":Lcom/android/camera/exif/ExifInterface;
    .restart local v8    # "exifInterface":Lcom/android/camera/exif/ExifInterface;
    .restart local v9    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_2
    :try_start_4
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1765
    .end local v6    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v8    # "exifInterface":Lcom/android/camera/exif/ExifInterface;
    :catch_2
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1773
    :catchall_0
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :goto_1
    if-eqz v9, :cond_3

    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_2
    :try_start_7
    throw v0

    :catch_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v10

    goto :goto_1
.end method
