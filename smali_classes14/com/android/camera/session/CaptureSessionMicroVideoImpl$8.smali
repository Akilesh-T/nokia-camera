.class Lcom/android/camera/session/CaptureSessionMicroVideoImpl$8;
.super Ljava/lang/Object;
.source "CaptureSessionMicroVideoImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/session/CaptureSessionMicroVideoImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    .prologue
    .line 796
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$8;->this$0:Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$8;->this$0:Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->access$800(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;)Lcom/android/camera/session/TemporarySessionFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/session/TemporarySessionFile;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$8;->this$0:Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->access$800(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;)Lcom/android/camera/session/TemporarySessionFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/session/TemporarySessionFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/util/FileUtil;->readFileToByteArray(Ljava/io/File;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 809
    .local v9, "jpegDataTemp":[B
    move-object v1, v9

    .line 811
    .local v1, "jpegData":[B
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 812
    .local v10, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x1

    iput-boolean v0, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 813
    const/4 v0, 0x0

    array-length v2, v1

    invoke-static {v1, v0, v2, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 814
    iget v3, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 815
    .local v3, "width":I
    iget v4, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 816
    .local v4, "height":I
    const/4 v5, 0x0

    .line 817
    .local v5, "rotation":I
    const/4 v6, 0x0

    .line 819
    .local v6, "exif":Lcom/android/camera/exif/ExifInterface;
    :try_start_1
    new-instance v8, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v8}, Lcom/android/camera/exif/ExifInterface;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 820
    .end local v6    # "exif":Lcom/android/camera/exif/ExifInterface;
    .local v8, "exif":Lcom/android/camera/exif/ExifInterface;
    :try_start_2
    invoke-virtual {v8, v1}, Lcom/android/camera/exif/ExifInterface;->readExif([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v6, v8

    .line 825
    .end local v8    # "exif":Lcom/android/camera/exif/ExifInterface;
    .restart local v6    # "exif":Lcom/android/camera/exif/ExifInterface;
    :goto_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$8;->this$0:Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->saveAndFinish([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 826
    .end local v1    # "jpegData":[B
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "rotation":I
    .end local v6    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v9    # "jpegDataTemp":[B
    .end local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_1
    return-void

    .line 803
    :catch_0
    move-exception v7

    .line 804
    .local v7, "e":Ljava/io/IOException;
    goto :goto_1

    .line 821
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v1    # "jpegData":[B
    .restart local v3    # "width":I
    .restart local v4    # "height":I
    .restart local v5    # "rotation":I
    .restart local v6    # "exif":Lcom/android/camera/exif/ExifInterface;
    .restart local v9    # "jpegDataTemp":[B
    .restart local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v7

    .line 822
    .restart local v7    # "e":Ljava/io/IOException;
    :goto_2
    invoke-static {}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->access$600()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v2, "Could not read exif"

    invoke-static {v0, v2, v7}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 823
    const/4 v6, 0x0

    goto :goto_0

    .line 821
    .end local v6    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v8    # "exif":Lcom/android/camera/exif/ExifInterface;
    :catch_2
    move-exception v7

    move-object v6, v8

    .end local v8    # "exif":Lcom/android/camera/exif/ExifInterface;
    .restart local v6    # "exif":Lcom/android/camera/exif/ExifInterface;
    goto :goto_2
.end method
