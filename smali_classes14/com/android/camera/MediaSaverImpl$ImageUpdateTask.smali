.class Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;
.super Landroid/os/AsyncTask;
.source "MediaSaverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MediaSaverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageUpdateTask"
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

.field private final imageUri:Landroid/net/Uri;

.field private final listener:Lcom/android/camera/app/MediaSaver$OnMediaUpdatedListener;

.field private final loc:Landroid/location/Location;

.field private final mimeType:Ljava/lang/String;

.field private final orientation:I

.field private final resolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/camera/MediaSaverImpl;

.field private final title:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/android/camera/MediaSaverImpl;Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;Lcom/android/camera/app/MediaSaver$OnMediaUpdatedListener;)V
    .locals 1
    .param p2, "imageUri"    # Landroid/net/Uri;
    .param p3, "resolver"    # Landroid/content/ContentResolver;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "date"    # J
    .param p7, "location"    # Landroid/location/Location;
    .param p8, "orientation"    # I
    .param p9, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p10, "jpeg"    # [B
    .param p11, "width"    # I
    .param p12, "height"    # I
    .param p13, "mimeType"    # Ljava/lang/String;
    .param p14, "listener"    # Lcom/android/camera/app/MediaSaver$OnMediaUpdatedListener;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 309
    iput-object p2, p0, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->imageUri:Landroid/net/Uri;

    .line 310
    iput-object p3, p0, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->resolver:Landroid/content/ContentResolver;

    .line 311
    iput-object p4, p0, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->title:Ljava/lang/String;

    .line 312
    iput-wide p5, p0, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->date:J

    .line 313
    iput-object p7, p0, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->loc:Landroid/location/Location;

    .line 314
    iput p8, p0, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->orientation:I

    .line 315
    iput-object p9, p0, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 316
    iput-object p10, p0, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->data:[B

    .line 317
    iput p11, p0, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->width:I

    .line 318
    iput p12, p0, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->height:I

    .line 319
    iput-object p13, p0, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->mimeType:Ljava/lang/String;

    .line 320
    iput-object p14, p0, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->listener:Lcom/android/camera/app/MediaSaver$OnMediaUpdatedListener;

    .line 321
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 14
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v13, 0x0

    .line 325
    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->imageUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    move-object v1, v13

    .line 333
    :goto_0
    return-object v1

    .line 327
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/camera/MediaSaverImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update image : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->imageUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->imageUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->resolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->title:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->date:J

    iget-object v6, p0, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->loc:Landroid/location/Location;

    iget v7, p0, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->orientation:I

    iget-object v8, p0, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->exif:Lcom/android/camera/exif/ExifInterface;

    iget-object v9, p0, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->data:[B

    iget v10, p0, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->width:I

    iget v11, p0, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->height:I

    iget-object v12, p0, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->mimeType:Ljava/lang/String;

    invoke-static/range {v1 .. v12}, Lcom/android/camera/Storage;->updateImage(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/camera/MediaSaverImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "Failed to update image : "

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v13

    .line 333
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 295
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 339
    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->listener:Lcom/android/camera/app/MediaSaver$OnMediaUpdatedListener;

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->listener:Lcom/android/camera/app/MediaSaver$OnMediaUpdatedListener;

    invoke-interface {v1, p1}, Lcom/android/camera/app/MediaSaver$OnMediaUpdatedListener;->onMediaUpdated(Landroid/net/Uri;)V

    .line 342
    :cond_0
    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-virtual {v1}, Lcom/android/camera/MediaSaverImpl;->isQueueFull()Z

    move-result v0

    .line 343
    .local v0, "previouslyFull":Z
    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    iget-object v2, p0, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-static {v2}, Lcom/android/camera/MediaSaverImpl;->access$100(Lcom/android/camera/MediaSaverImpl;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->data:[B

    array-length v4, v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/android/camera/MediaSaverImpl;->access$102(Lcom/android/camera/MediaSaverImpl;J)J

    .line 344
    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-virtual {v1}, Lcom/android/camera/MediaSaverImpl;->isQueueFull()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 345
    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-static {v1}, Lcom/android/camera/MediaSaverImpl;->access$200(Lcom/android/camera/MediaSaverImpl;)V

    .line 347
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 295
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method
