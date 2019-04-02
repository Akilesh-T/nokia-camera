.class Lcom/android/camera/MediaSaverImpl$ImageSaveTask;
.super Landroid/os/AsyncTask;
.source "MediaSaverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MediaSaverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageSaveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private final data:[B

.field private final date:J

.field private final exif:Lcom/android/camera/exif/ExifInterface;

.field private height:I

.field private final listener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

.field private final loc:Landroid/location/Location;

.field private final mimeType:Ljava/lang/String;

.field private final orientation:I

.field private final resolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/camera/MediaSaverImpl;

.field private final title:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/android/camera/MediaSaverImpl;[BLjava/lang/String;JLandroid/location/Location;IIILjava/lang/String;Lcom/android/camera/exif/ExifInterface;Landroid/content/ContentResolver;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V
    .locals 0
    .param p2, "data"    # [B
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "date"    # J
    .param p6, "loc"    # Landroid/location/Location;
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "orientation"    # I
    .param p10, "mimeType"    # Ljava/lang/String;
    .param p11, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p12, "resolver"    # Landroid/content/ContentResolver;
    .param p13, "listener"    # Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 366
    iput-object p2, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->data:[B

    .line 367
    iput-object p3, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->title:Ljava/lang/String;

    .line 368
    iput-wide p4, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->date:J

    .line 369
    iput-object p6, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->loc:Landroid/location/Location;

    .line 370
    iput p7, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->width:I

    .line 371
    iput p8, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->height:I

    .line 372
    iput p9, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->orientation:I

    .line 373
    iput-object p10, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->mimeType:Ljava/lang/String;

    .line 374
    iput-object p11, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 375
    iput-object p12, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->resolver:Landroid/content/ContentResolver;

    .line 376
    iput-object p13, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->listener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    .line 377
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 13
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    .line 386
    iget v0, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->width:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->height:I

    if-nez v0, :cond_1

    .line 388
    :cond_0
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 389
    .local v12, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x1

    iput-boolean v0, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 390
    iget-object v0, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->data:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->data:[B

    array-length v2, v2

    invoke-static {v0, v1, v2, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 391
    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v0, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->width:I

    .line 392
    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->height:I

    .line 395
    .end local v12    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->resolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->title:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->date:J

    iget-object v4, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->loc:Landroid/location/Location;

    iget v5, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->orientation:I

    iget-object v6, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->exif:Lcom/android/camera/exif/ExifInterface;

    iget-object v7, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->data:[B

    iget v8, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->width:I

    iget v9, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->height:I

    iget-object v10, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->mimeType:Ljava/lang/String;

    invoke-static/range {v0 .. v10}, Lcom/android/camera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 400
    :goto_0
    return-object v0

    .line 398
    :catch_0
    move-exception v11

    .line 399
    .local v11, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/camera/MediaSaverImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Failed to write data"

    invoke-static {v0, v1, v11}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 400
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 350
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 406
    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->listener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->listener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    invoke-interface {v1, p1}, Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;->onMediaSaved(Landroid/net/Uri;)V

    .line 409
    :cond_0
    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-virtual {v1}, Lcom/android/camera/MediaSaverImpl;->isQueueFull()Z

    move-result v0

    .line 410
    .local v0, "previouslyFull":Z
    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    iget-object v2, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-static {v2}, Lcom/android/camera/MediaSaverImpl;->access$100(Lcom/android/camera/MediaSaverImpl;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->data:[B

    array-length v4, v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/android/camera/MediaSaverImpl;->access$102(Lcom/android/camera/MediaSaverImpl;J)J

    .line 411
    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-virtual {v1}, Lcom/android/camera/MediaSaverImpl;->isQueueFull()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 412
    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-static {v1}, Lcom/android/camera/MediaSaverImpl;->access$200(Lcom/android/camera/MediaSaverImpl;)V

    .line 414
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 350
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 382
    return-void
.end method
