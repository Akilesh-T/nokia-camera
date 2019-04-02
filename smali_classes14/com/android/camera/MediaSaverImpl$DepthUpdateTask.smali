.class Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;
.super Landroid/os/AsyncTask;
.source "MediaSaverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MediaSaverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DepthUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private bokeh_info:Lcom/android/camera/mpo/Bokeh_Info;

.field private date:J

.field private exif:Lcom/android/camera/exif/ExifInterface;

.field private height:I

.field private loc:Landroid/location/Location;

.field private orientation:I

.field private pictureFormat:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/MediaSaverImpl;

.field private title:Ljava/lang/String;

.field private uri:Landroid/net/Uri;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/android/camera/MediaSaverImpl;Landroid/net/Uri;Lcom/android/camera/mpo/Bokeh_Info;Ljava/lang/String;Landroid/location/Location;JIIILcom/android/camera/exif/ExifInterface;Ljava/lang/String;)V
    .locals 0
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "bokehInfo"    # Lcom/android/camera/mpo/Bokeh_Info;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "loc"    # Landroid/location/Location;
    .param p6, "date"    # J
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "orientation"    # I
    .param p11, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p12, "pictureFormat"    # Ljava/lang/String;

    .prologue
    .line 952
    iput-object p1, p0, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 953
    iput-object p2, p0, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->uri:Landroid/net/Uri;

    .line 954
    iput-object p3, p0, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->bokeh_info:Lcom/android/camera/mpo/Bokeh_Info;

    .line 955
    iput-object p5, p0, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->loc:Landroid/location/Location;

    .line 956
    iput-object p4, p0, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->title:Ljava/lang/String;

    .line 957
    iput-wide p6, p0, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->date:J

    .line 958
    iput p8, p0, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->width:I

    .line 959
    iput p9, p0, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->height:I

    .line 960
    iput p10, p0, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->orientation:I

    .line 961
    iput-object p11, p0, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 962
    iput-object p12, p0, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->pictureFormat:Ljava/lang/String;

    .line 963
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 15
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    .line 968
    invoke-static {}, Lcom/android/camera/MediaSaverImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "MpoUpdateTask doInBackground"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 970
    iget-object v0, p0, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->pictureFormat:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 971
    .local v8, "path":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/camera/Storage;->createDirectoryIfNeeded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 972
    invoke-static {}, Lcom/android/camera/MediaSaverImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create parent directory for file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 973
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 977
    :goto_0
    return-object v0

    .line 975
    :cond_0
    new-instance v14, Lcom/android/camera/gdepth/WriteDepthFile;

    iget v0, p0, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->width:I

    iget v1, p0, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->height:I

    invoke-direct {v14, v0, v1}, Lcom/android/camera/gdepth/WriteDepthFile;-><init>(II)V

    .line 976
    .local v14, "wdf":Lcom/android/camera/gdepth/WriteDepthFile;
    iget-object v0, p0, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->bokeh_info:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->exif:Lcom/android/camera/exif/ExifInterface;

    invoke-virtual {v14, v0, v8, v1}, Lcom/android/camera/gdepth/WriteDepthFile;->writeFile(Lcom/android/camera/mpo/Bokeh_Info;Ljava/lang/String;Lcom/android/camera/exif/ExifInterface;)J

    move-result-wide v0

    long-to-int v7, v0

    .line 977
    .local v7, "size":I
    iget-object v0, p0, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->uri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-static {v1}, Lcom/android/camera/MediaSaverImpl;->access$300(Lcom/android/camera/MediaSaverImpl;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->title:Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->date:J

    iget-object v5, p0, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->loc:Landroid/location/Location;

    iget v6, p0, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->orientation:I

    iget v9, p0, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->width:I

    iget v10, p0, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->height:I

    iget-object v11, p0, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->pictureFormat:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->bokeh_info:Lcom/android/camera/mpo/Bokeh_Info;

    iget-wide v12, v12, Lcom/android/camera/mpo/Bokeh_Info;->mBokehType:J

    invoke-static/range {v0 .. v13}, Lcom/android/camera/Storage;->updateMpoImage(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;IILjava/lang/String;IILjava/lang/String;J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 940
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v3, 0x0

    .line 984
    iget-object v2, p0, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->bokeh_info:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v2, v2, Lcom/android/camera/mpo/Bokeh_Info;->mPrimaryData:[B

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    iget-object v4, p0, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->bokeh_info:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v4, v4, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    if-nez v4, :cond_1

    move v4, v3

    :goto_1
    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->bokeh_info:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v4, v4, Lcom/android/camera/mpo/Bokeh_Info;->mSubData:[B

    if-nez v4, :cond_2

    :goto_2
    add-int/2addr v2, v3

    int-to-long v0, v2

    .line 987
    .local v0, "size":J
    iget-object v2, p0, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    iget-object v3, p0, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-static {v3}, Lcom/android/camera/MediaSaverImpl;->access$100(Lcom/android/camera/MediaSaverImpl;)J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {v2, v4, v5}, Lcom/android/camera/MediaSaverImpl;->access$102(Lcom/android/camera/MediaSaverImpl;J)J

    .line 988
    return-void

    .line 984
    .end local v0    # "size":J
    :cond_0
    iget-object v2, p0, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->bokeh_info:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v2, v2, Lcom/android/camera/mpo/Bokeh_Info;->mPrimaryData:[B

    array-length v2, v2

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->bokeh_info:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v4, v4, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    array-length v4, v4

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->bokeh_info:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v3, v3, Lcom/android/camera/mpo/Bokeh_Info;->mSubData:[B

    array-length v3, v3

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 940
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
