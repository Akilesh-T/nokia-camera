.class Lcom/android/camera/MediaSaverImpl$MpoSaveTask;
.super Landroid/os/AsyncTask;
.source "MediaSaverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MediaSaverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MpoSaveTask"
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
.field private bokeh_info:Lcom/android/camera/mpo/Bokeh_Info;

.field private date:J

.field private height:I

.field private listener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

.field private loc:Landroid/location/Location;

.field private orientation:I

.field private pictureFormat:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/MediaSaverImpl;

.field private title:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/android/camera/MediaSaverImpl;Lcom/android/camera/mpo/Bokeh_Info;Ljava/lang/String;Landroid/location/Location;JIIILcom/android/camera/app/MediaSaver$OnMediaSavedListener;Ljava/lang/String;)V
    .locals 1
    .param p2, "bokehInfo"    # Lcom/android/camera/mpo/Bokeh_Info;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "loc"    # Landroid/location/Location;
    .param p5, "date"    # J
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "orientation"    # I
    .param p10, "listener"    # Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;
    .param p11, "pictureFormat"    # Ljava/lang/String;

    .prologue
    .line 543
    iput-object p1, p0, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 544
    iput-object p2, p0, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;->bokeh_info:Lcom/android/camera/mpo/Bokeh_Info;

    .line 545
    iput-object p4, p0, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;->loc:Landroid/location/Location;

    .line 546
    iput-object p3, p0, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;->title:Ljava/lang/String;

    .line 547
    iput-wide p5, p0, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;->date:J

    .line 548
    iput p7, p0, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;->width:I

    .line 549
    iput p8, p0, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;->height:I

    .line 550
    iput p9, p0, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;->orientation:I

    .line 551
    iput-object p10, p0, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;->listener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    .line 552
    iput-object p11, p0, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;->pictureFormat:Ljava/lang/String;

    .line 553
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 14
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    .line 558
    invoke-static {}, Lcom/android/camera/MediaSaverImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "MpoSaveTask doInBackground"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;->pictureFormat:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 561
    .local v7, "path":Ljava/lang/String;
    invoke-static {v7}, Lcom/android/camera/Storage;->createDirectoryIfNeeded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    invoke-static {}, Lcom/android/camera/MediaSaverImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create parent directory for file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 563
    const/4 v0, 0x0

    .line 567
    :goto_0
    return-object v0

    .line 565
    :cond_0
    new-instance v13, Lcom/android/camera/mpo/WriteMpoFile;

    invoke-direct {v13}, Lcom/android/camera/mpo/WriteMpoFile;-><init>()V

    .line 566
    .local v13, "mpo":Lcom/android/camera/mpo/WriteMpoFile;
    iget-object v0, p0, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;->bokeh_info:Lcom/android/camera/mpo/Bokeh_Info;

    invoke-virtual {v13, v0, v7}, Lcom/android/camera/mpo/WriteMpoFile;->writeFile(Lcom/android/camera/mpo/Bokeh_Info;Ljava/lang/String;)I

    move-result v6

    .line 567
    .local v6, "size":I
    iget-object v0, p0, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-static {v0}, Lcom/android/camera/MediaSaverImpl;->access$300(Lcom/android/camera/MediaSaverImpl;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;->title:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;->date:J

    iget-object v4, p0, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;->loc:Landroid/location/Location;

    iget v5, p0, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;->orientation:I

    iget v8, p0, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;->width:I

    iget v9, p0, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;->height:I

    iget-object v10, p0, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;->pictureFormat:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;->bokeh_info:Lcom/android/camera/mpo/Bokeh_Info;

    iget-wide v11, v11, Lcom/android/camera/mpo/Bokeh_Info;->mBokehType:J

    invoke-static/range {v0 .. v12}, Lcom/android/camera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;IILjava/lang/String;IILjava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 531
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 571
    iget-object v2, p0, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;->listener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    if-eqz v2, :cond_0

    .line 572
    iget-object v2, p0, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;->listener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    invoke-interface {v2, p1}, Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;->onMediaSaved(Landroid/net/Uri;)V

    .line 574
    :cond_0
    iget-object v2, p0, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;->bokeh_info:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v2, v2, Lcom/android/camera/mpo/Bokeh_Info;->mPrimaryData:[B

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    iget-object v4, p0, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;->bokeh_info:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v4, v4, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    if-nez v4, :cond_2

    move v4, v3

    :goto_1
    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;->bokeh_info:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v4, v4, Lcom/android/camera/mpo/Bokeh_Info;->mSubData:[B

    if-nez v4, :cond_3

    :goto_2
    add-int/2addr v2, v3

    int-to-long v0, v2

    .line 577
    .local v0, "size":J
    iget-object v2, p0, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    iget-object v3, p0, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-static {v3}, Lcom/android/camera/MediaSaverImpl;->access$100(Lcom/android/camera/MediaSaverImpl;)J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {v2, v4, v5}, Lcom/android/camera/MediaSaverImpl;->access$102(Lcom/android/camera/MediaSaverImpl;J)J

    .line 578
    return-void

    .line 574
    .end local v0    # "size":J
    :cond_1
    iget-object v2, p0, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;->bokeh_info:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v2, v2, Lcom/android/camera/mpo/Bokeh_Info;->mPrimaryData:[B

    array-length v2, v2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;->bokeh_info:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v4, v4, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    array-length v4, v4

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;->bokeh_info:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v3, v3, Lcom/android/camera/mpo/Bokeh_Info;->mSubData:[B

    array-length v3, v3

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 531
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method
