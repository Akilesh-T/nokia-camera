.class Lcom/android/camera/BokehModule$MediaSaveListener;
.super Ljava/lang/Object;
.source "BokehModule.java"

# interfaces
.implements Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BokehModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaSaveListener"
.end annotation


# instance fields
.field private bokeh_info:Lcom/android/camera/mpo/Bokeh_Info;

.field private date:J

.field private exif:Lcom/android/camera/exif/ExifInterface;

.field private height:I

.field private isPostViewDataReceived:Z

.field private jpeg:[B

.field private location:Landroid/location/Location;

.field private mNeedThumbnail:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mRawUri:Landroid/net/Uri;

.field private orientation:I

.field private success:Z

.field final synthetic this$0:Lcom/android/camera/BokehModule;

.field private title:Ljava/lang/String;

.field private width:I


# direct methods
.method private constructor <init>(Lcom/android/camera/BokehModule;)V
    .locals 2

    .prologue
    .line 3365
    iput-object p1, p0, Lcom/android/camera/BokehModule$MediaSaveListener;->this$0:Lcom/android/camera/BokehModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3366
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/BokehModule$MediaSaveListener;->mNeedThumbnail:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/BokehModule$MediaSaveListener;->mRawUri:Landroid/net/Uri;

    .line 3368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/BokehModule$MediaSaveListener;->isPostViewDataReceived:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/BokehModule;Lcom/android/camera/BokehModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/BokehModule;
    .param p2, "x1"    # Lcom/android/camera/BokehModule$1;

    .prologue
    .line 3365
    invoke-direct {p0, p1}, Lcom/android/camera/BokehModule$MediaSaveListener;-><init>(Lcom/android/camera/BokehModule;)V

    return-void
.end method


# virtual methods
.method public onMediaSaved(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 3382
    iget-object v0, p0, Lcom/android/camera/BokehModule$MediaSaveListener;->mNeedThumbnail:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/BokehModule$MediaSaveListener;->onMediaSaved(Landroid/net/Uri;Z)V

    .line 3383
    return-void
.end method

.method public onMediaSaved(Landroid/net/Uri;Z)V
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "needThumbnail"    # Z

    .prologue
    .line 3387
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaSaved : uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", needThumbnail = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3388
    if-eqz p1, :cond_1

    .line 3389
    iget-object v0, p0, Lcom/android/camera/BokehModule$MediaSaveListener;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$900(Lcom/android/camera/BokehModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/CameraActivity;->notifyNewMedia(Landroid/net/Uri;Z)V

    .line 3390
    iput-object p1, p0, Lcom/android/camera/BokehModule$MediaSaveListener;->mRawUri:Landroid/net/Uri;

    .line 3391
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaSaved save mRawUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/BokehModule$MediaSaveListener;->mRawUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3392
    iget-boolean v0, p0, Lcom/android/camera/BokehModule$MediaSaveListener;->isPostViewDataReceived:Z

    if-eqz v0, :cond_0

    .line 3393
    iget-object v1, p0, Lcom/android/camera/BokehModule$MediaSaveListener;->title:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/camera/BokehModule$MediaSaveListener;->date:J

    iget-object v4, p0, Lcom/android/camera/BokehModule$MediaSaveListener;->location:Landroid/location/Location;

    iget v5, p0, Lcom/android/camera/BokehModule$MediaSaveListener;->orientation:I

    iget-object v6, p0, Lcom/android/camera/BokehModule$MediaSaveListener;->exif:Lcom/android/camera/exif/ExifInterface;

    iget-object v7, p0, Lcom/android/camera/BokehModule$MediaSaveListener;->jpeg:[B

    iget v8, p0, Lcom/android/camera/BokehModule$MediaSaveListener;->width:I

    iget v9, p0, Lcom/android/camera/BokehModule$MediaSaveListener;->height:I

    iget-object v10, p0, Lcom/android/camera/BokehModule$MediaSaveListener;->bokeh_info:Lcom/android/camera/mpo/Bokeh_Info;

    iget-boolean v11, p0, Lcom/android/camera/BokehModule$MediaSaveListener;->success:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Lcom/android/camera/BokehModule$MediaSaveListener;->updateImage(Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILcom/android/camera/mpo/Bokeh_Info;Z)V

    .line 3398
    :cond_0
    :goto_0
    return-void

    .line 3396
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BokehModule$MediaSaveListener;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$1000(Lcom/android/camera/BokehModule;)V

    goto :goto_0
.end method

.method public setNeedThumbnail(Z)V
    .locals 1
    .param p1, "needThumbnail"    # Z

    .prologue
    .line 3401
    iget-object v0, p0, Lcom/android/camera/BokehModule$MediaSaveListener;->mNeedThumbnail:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3402
    return-void
.end method

.method public updateImage(Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILcom/android/camera/mpo/Bokeh_Info;Z)V
    .locals 18
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "orientation"    # I
    .param p6, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p7, "jpeg"    # [B
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "bokehInfo"    # Lcom/android/camera/mpo/Bokeh_Info;
    .param p11, "success"    # Z

    .prologue
    .line 3406
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BokehModule$MediaSaveListener;->mRawUri:Landroid/net/Uri;

    if-eqz v4, :cond_1

    .line 3407
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "update image for post process"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3409
    if-eqz p11, :cond_0

    .line 3410
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BokehModule$MediaSaveListener;->this$0:Lcom/android/camera/BokehModule;

    invoke-virtual {v4}, Lcom/android/camera/BokehModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/CameraServices;->getMediaSaver()Lcom/android/camera/app/MediaSaver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/BokehModule$MediaSaveListener;->mRawUri:Landroid/net/Uri;

    move-object/from16 v6, p10

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v10, p4

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p5

    move-object/from16 v14, p6

    invoke-interface/range {v4 .. v14}, Lcom/android/camera/app/MediaSaver;->updateMpoImage(Landroid/net/Uri;Lcom/android/camera/mpo/Bokeh_Info;Ljava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;)V

    .line 3434
    :goto_0
    return-void

    .line 3414
    :cond_0
    new-instance v4, Lcom/android/camera/ui/RotateTextToast;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/BokehModule$MediaSaveListener;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v5}, Lcom/android/camera/BokehModule;->access$900(Lcom/android/camera/BokehModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/BokehModule$MediaSaveListener;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v6}, Lcom/android/camera/BokehModule;->access$900(Lcom/android/camera/BokehModule;)Lcom/android/camera/CameraActivity;

    move-result-object v6

    const v7, 0x7f080272

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/BokehModule$MediaSaveListener;->this$0:Lcom/android/camera/BokehModule;

    iget v7, v7, Lcom/android/camera/BokehModule;->mOrientation:I

    invoke-direct {v4, v5, v6, v7}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const/16 v5, 0xbb8

    .line 3415
    invoke-virtual {v4, v5}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    .line 3416
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BokehModule$MediaSaveListener;->this$0:Lcom/android/camera/BokehModule;

    invoke-virtual {v4}, Lcom/android/camera/BokehModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/CameraServices;->getMediaSaver()Lcom/android/camera/app/MediaSaver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/BokehModule$MediaSaveListener;->mRawUri:Landroid/net/Uri;

    const-string v16, "image/jpeg"

    const/16 v17, 0x0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    invoke-interface/range {v5 .. v17}, Lcom/android/camera/app/MediaSaver;->updateImage(Landroid/net/Uri;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;Lcom/android/camera/app/MediaSaver$OnMediaUpdatedListener;)V

    goto :goto_0

    .line 3422
    :cond_1
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/camera/BokehModule$MediaSaveListener;->isPostViewDataReceived:Z

    .line 3423
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/BokehModule$MediaSaveListener;->title:Ljava/lang/String;

    .line 3424
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/camera/BokehModule$MediaSaveListener;->date:J

    .line 3425
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/BokehModule$MediaSaveListener;->location:Landroid/location/Location;

    .line 3426
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/BokehModule$MediaSaveListener;->orientation:I

    .line 3427
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/BokehModule$MediaSaveListener;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 3428
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/BokehModule$MediaSaveListener;->jpeg:[B

    .line 3429
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/BokehModule$MediaSaveListener;->width:I

    .line 3430
    move/from16 v0, p9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/BokehModule$MediaSaveListener;->height:I

    .line 3431
    move/from16 v0, p11

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/BokehModule$MediaSaveListener;->success:Z

    .line 3432
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/BokehModule$MediaSaveListener;->bokeh_info:Lcom/android/camera/mpo/Bokeh_Info;

    goto/16 :goto_0
.end method
