.class Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;
.super Landroid/os/AsyncTask;
.source "MediaSaverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MediaSaverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MpoUpdateTask"
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

.field private height:I

.field private loc:Landroid/location/Location;

.field private orientation:I

.field private pictureFormat:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/MediaSaverImpl;

.field private title:Ljava/lang/String;

.field private uri:Landroid/net/Uri;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/android/camera/MediaSaverImpl;Landroid/net/Uri;Lcom/android/camera/mpo/Bokeh_Info;Ljava/lang/String;Landroid/location/Location;JIIILjava/lang/String;)V
    .locals 0
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "bokehInfo"    # Lcom/android/camera/mpo/Bokeh_Info;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "loc"    # Landroid/location/Location;
    .param p6, "date"    # J
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "orientation"    # I
    .param p11, "pictureFormat"    # Ljava/lang/String;

    .prologue
    .line 727
    iput-object p1, p0, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 728
    iput-object p2, p0, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;->uri:Landroid/net/Uri;

    .line 729
    iput-object p3, p0, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;->bokeh_info:Lcom/android/camera/mpo/Bokeh_Info;

    .line 730
    iput-object p5, p0, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;->loc:Landroid/location/Location;

    .line 731
    iput-object p4, p0, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;->title:Ljava/lang/String;

    .line 732
    iput-wide p6, p0, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;->date:J

    .line 733
    iput p8, p0, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;->width:I

    .line 734
    iput p9, p0, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;->height:I

    .line 735
    iput p10, p0, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;->orientation:I

    .line 736
    iput-object p11, p0, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;->pictureFormat:Ljava/lang/String;

    .line 737
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 15
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    .line 742
    invoke-static {}, Lcom/android/camera/MediaSaverImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "MpoUpdateTask doInBackground"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;->pictureFormat:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 745
    .local v8, "path":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/camera/Storage;->createDirectoryIfNeeded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 746
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

    .line 747
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 751
    :goto_0
    return-object v0

    .line 749
    :cond_0
    new-instance v14, Lcom/android/camera/mpo/WriteMpoFile;

    invoke-direct {v14}, Lcom/android/camera/mpo/WriteMpoFile;-><init>()V

    .line 750
    .local v14, "mpo":Lcom/android/camera/mpo/WriteMpoFile;
    iget-object v0, p0, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;->bokeh_info:Lcom/android/camera/mpo/Bokeh_Info;

    invoke-virtual {v14, v0, v8}, Lcom/android/camera/mpo/WriteMpoFile;->writeFile(Lcom/android/camera/mpo/Bokeh_Info;Ljava/lang/String;)I

    move-result v7

    .line 751
    .local v7, "size":I
    iget-object v0, p0, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;->uri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-static {v1}, Lcom/android/camera/MediaSaverImpl;->access$300(Lcom/android/camera/MediaSaverImpl;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;->title:Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;->date:J

    iget-object v5, p0, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;->loc:Landroid/location/Location;

    iget v6, p0, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;->orientation:I

    iget v9, p0, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;->width:I

    iget v10, p0, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;->height:I

    iget-object v11, p0, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;->pictureFormat:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;->bokeh_info:Lcom/android/camera/mpo/Bokeh_Info;

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
    .line 715
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v3, 0x0

    .line 757
    iget-object v2, p0, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;->bokeh_info:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v2, v2, Lcom/android/camera/mpo/Bokeh_Info;->mPrimaryData:[B

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    iget-object v4, p0, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;->bokeh_info:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v4, v4, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    if-nez v4, :cond_1

    move v4, v3

    :goto_1
    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;->bokeh_info:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v4, v4, Lcom/android/camera/mpo/Bokeh_Info;->mSubData:[B

    if-nez v4, :cond_2

    :goto_2
    add-int/2addr v2, v3

    int-to-long v0, v2

    .line 760
    .local v0, "size":J
    iget-object v2, p0, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    iget-object v3, p0, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-static {v3}, Lcom/android/camera/MediaSaverImpl;->access$100(Lcom/android/camera/MediaSaverImpl;)J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {v2, v4, v5}, Lcom/android/camera/MediaSaverImpl;->access$102(Lcom/android/camera/MediaSaverImpl;J)J

    .line 761
    return-void

    .line 757
    .end local v0    # "size":J
    :cond_0
    iget-object v2, p0, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;->bokeh_info:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v2, v2, Lcom/android/camera/mpo/Bokeh_Info;->mPrimaryData:[B

    array-length v2, v2

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;->bokeh_info:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v4, v4, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    array-length v4, v4

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;->bokeh_info:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v3, v3, Lcom/android/camera/mpo/Bokeh_Info;->mSubData:[B

    array-length v3, v3

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 715
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
