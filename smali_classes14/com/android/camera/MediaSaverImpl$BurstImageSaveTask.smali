.class Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;
.super Landroid/os/AsyncTask;
.source "MediaSaverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MediaSaverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BurstImageSaveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/content/ContentValues;",
        ">;"
    }
.end annotation


# instance fields
.field private final data:[B

.field private final date:J

.field private final exif:Lcom/android/camera/exif/ExifInterface;

.field private final folder:Ljava/lang/String;

.field private height:I

.field private final listener:Lcom/android/camera/app/MediaSaver$OnBurstMediaSavedListener;

.field private final loc:Landroid/location/Location;

.field private final mimeType:Ljava/lang/String;

.field private final orientation:I

.field private final resolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/camera/MediaSaverImpl;

.field private final title:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/android/camera/MediaSaverImpl;[BLjava/lang/String;Ljava/lang/String;Landroid/location/Location;IIILjava/lang/String;Lcom/android/camera/exif/ExifInterface;Landroid/content/ContentResolver;Lcom/android/camera/app/MediaSaver$OnBurstMediaSavedListener;J)V
    .locals 1
    .param p2, "data"    # [B
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "folder"    # Ljava/lang/String;
    .param p5, "loc"    # Landroid/location/Location;
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "orientation"    # I
    .param p9, "mimeType"    # Ljava/lang/String;
    .param p10, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p11, "resolver"    # Landroid/content/ContentResolver;
    .param p12, "listener"    # Lcom/android/camera/app/MediaSaver$OnBurstMediaSavedListener;
    .param p13, "date"    # J

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 431
    iput-object p2, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->data:[B

    .line 432
    iput-object p3, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->title:Ljava/lang/String;

    .line 433
    iput-object p4, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->folder:Ljava/lang/String;

    .line 434
    iput-wide p13, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->date:J

    .line 435
    iput-object p5, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->loc:Landroid/location/Location;

    .line 436
    iput p6, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->width:I

    .line 437
    iput p7, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->height:I

    .line 438
    iput p8, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->orientation:I

    .line 439
    iput-object p9, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->mimeType:Ljava/lang/String;

    .line 440
    iput-object p10, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 441
    iput-object p11, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->resolver:Landroid/content/ContentResolver;

    .line 442
    iput-object p12, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->listener:Lcom/android/camera/app/MediaSaver$OnBurstMediaSavedListener;

    .line 443
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/content/ContentValues;
    .locals 14
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    .line 452
    iget v0, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->width:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->height:I

    if-nez v0, :cond_1

    .line 454
    :cond_0
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 455
    .local v13, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x1

    iput-boolean v0, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 456
    iget-object v0, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->data:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->data:[B

    array-length v2, v2

    invoke-static {v0, v1, v2, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 457
    iget v0, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v0, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->width:I

    .line 458
    iget v0, v13, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->height:I

    .line 461
    .end local v13    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->resolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->folder:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->loc:Landroid/location/Location;

    iget v4, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->orientation:I

    iget-object v5, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->exif:Lcom/android/camera/exif/ExifInterface;

    iget-object v6, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->data:[B

    iget v7, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->width:I

    iget v8, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->height:I

    iget-object v9, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->mimeType:Ljava/lang/String;

    iget-wide v10, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->date:J

    invoke-static/range {v0 .. v11}, Lcom/android/camera/Storage;->addBurstImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;J)Landroid/content/ContentValues;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 465
    :goto_0
    return-object v0

    .line 463
    :catch_0
    move-exception v12

    .line 464
    .local v12, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/camera/MediaSaverImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Failed to write data"

    invoke-static {v0, v1, v12}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 465
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 417
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->doInBackground([Ljava/lang/Void;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/content/ContentValues;)V
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 471
    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-virtual {v1}, Lcom/android/camera/MediaSaverImpl;->isQueueFull()Z

    move-result v0

    .line 472
    .local v0, "previouslyFull":Z
    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    iget-object v2, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-static {v2}, Lcom/android/camera/MediaSaverImpl;->access$100(Lcom/android/camera/MediaSaverImpl;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->data:[B

    array-length v4, v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/android/camera/MediaSaverImpl;->access$102(Lcom/android/camera/MediaSaverImpl;J)J

    .line 473
    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-virtual {v1}, Lcom/android/camera/MediaSaverImpl;->isQueueFull()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 474
    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-static {v1}, Lcom/android/camera/MediaSaverImpl;->access$200(Lcom/android/camera/MediaSaverImpl;)V

    .line 476
    :cond_0
    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->listener:Lcom/android/camera/app/MediaSaver$OnBurstMediaSavedListener;

    if-eqz v1, :cond_1

    .line 477
    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->listener:Lcom/android/camera/app/MediaSaver$OnBurstMediaSavedListener;

    invoke-interface {v1, p1}, Lcom/android/camera/app/MediaSaver$OnBurstMediaSavedListener;->onBurstMediaSaved(Landroid/content/ContentValues;)V

    .line 479
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 417
    check-cast p1, Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->onPostExecute(Landroid/content/ContentValues;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 448
    return-void
.end method
