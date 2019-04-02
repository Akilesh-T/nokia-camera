.class Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;
.super Landroid/os/AsyncTask;
.source "MediaSaverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MediaSaverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DualSightImageSaveTask"
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
    .line 778
    iput-object p1, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 779
    iput-object p2, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->data:[B

    .line 780
    iput-object p3, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->title:Ljava/lang/String;

    .line 781
    iput-wide p4, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->date:J

    .line 782
    iput-object p6, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->loc:Landroid/location/Location;

    .line 783
    iput p7, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->width:I

    .line 784
    iput p8, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->height:I

    .line 785
    iput p9, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->orientation:I

    .line 786
    iput-object p10, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->mimeType:Ljava/lang/String;

    .line 787
    iput-object p11, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 788
    iput-object p12, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->resolver:Landroid/content/ContentResolver;

    .line 789
    iput-object p13, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->listener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    .line 790
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 14
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    .line 799
    iget v0, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->width:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->height:I

    if-nez v0, :cond_1

    .line 801
    :cond_0
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 802
    .local v12, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x1

    iput-boolean v0, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 803
    iget-object v0, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->data:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->data:[B

    array-length v2, v2

    invoke-static {v0, v1, v2, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 804
    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v0, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->width:I

    .line 805
    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->height:I

    .line 808
    .end local v12    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->resolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->title:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->date:J

    iget-object v4, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->loc:Landroid/location/Location;

    iget v5, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->orientation:I

    iget-object v6, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->exif:Lcom/android/camera/exif/ExifInterface;

    iget-object v7, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->data:[B

    iget v8, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->width:I

    iget v9, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->height:I

    iget-object v10, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->mimeType:Ljava/lang/String;

    invoke-static/range {v0 .. v10}, Lcom/android/camera/Storage;->addDualImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 811
    .local v13, "uri":Landroid/net/Uri;
    if-eqz v13, :cond_2

    .line 812
    iget-object v0, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-static {v0}, Lcom/android/camera/MediaSaverImpl;->access$300(Lcom/android/camera/MediaSaverImpl;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v13}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/util/BokehProviderUtil;->updateImageToBokehEditor(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    .end local v13    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_0
    return-object v13

    .line 817
    :catch_0
    move-exception v11

    .line 818
    .local v11, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/camera/MediaSaverImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Failed to write data"

    invoke-static {v0, v1, v11}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 819
    const/4 v13, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 763
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 825
    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->listener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    if-eqz v1, :cond_0

    .line 826
    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->listener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    invoke-interface {v1, p1}, Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;->onMediaSaved(Landroid/net/Uri;)V

    .line 828
    :cond_0
    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-virtual {v1}, Lcom/android/camera/MediaSaverImpl;->isQueueFull()Z

    move-result v0

    .line 829
    .local v0, "previouslyFull":Z
    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    iget-object v2, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-static {v2}, Lcom/android/camera/MediaSaverImpl;->access$100(Lcom/android/camera/MediaSaverImpl;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->data:[B

    array-length v4, v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/android/camera/MediaSaverImpl;->access$102(Lcom/android/camera/MediaSaverImpl;J)J

    .line 830
    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-virtual {v1}, Lcom/android/camera/MediaSaverImpl;->isQueueFull()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 831
    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-static {v1}, Lcom/android/camera/MediaSaverImpl;->access$200(Lcom/android/camera/MediaSaverImpl;)V

    .line 833
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 763
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 795
    return-void
.end method
