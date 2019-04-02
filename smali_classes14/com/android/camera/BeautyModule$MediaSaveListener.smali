.class Lcom/android/camera/BeautyModule$MediaSaveListener;
.super Ljava/lang/Object;
.source "BeautyModule.java"

# interfaces
.implements Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BeautyModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaSaveListener"
.end annotation


# instance fields
.field private date:J

.field private exif:Lcom/android/camera/exif/ExifInterface;

.field private height:I

.field private isPostViewDataReceived:Z

.field private jpeg:[B

.field private location:Landroid/location/Location;

.field private mNeedThumbnail:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mRawUri:Landroid/net/Uri;

.field private orientation:I

.field final synthetic this$0:Lcom/android/camera/BeautyModule;

.field private title:Ljava/lang/String;

.field private width:I


# direct methods
.method private constructor <init>(Lcom/android/camera/BeautyModule;)V
    .locals 2

    .prologue
    .line 2508
    iput-object p1, p0, Lcom/android/camera/BeautyModule$MediaSaveListener;->this$0:Lcom/android/camera/BeautyModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2509
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/BeautyModule$MediaSaveListener;->mNeedThumbnail:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2510
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/BeautyModule$MediaSaveListener;->mRawUri:Landroid/net/Uri;

    .line 2511
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/BeautyModule$MediaSaveListener;->isPostViewDataReceived:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/BeautyModule;Lcom/android/camera/BeautyModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/BeautyModule;
    .param p2, "x1"    # Lcom/android/camera/BeautyModule$1;

    .prologue
    .line 2508
    invoke-direct {p0, p1}, Lcom/android/camera/BeautyModule$MediaSaveListener;-><init>(Lcom/android/camera/BeautyModule;)V

    return-void
.end method


# virtual methods
.method public onMediaSaved(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2523
    iget-object v0, p0, Lcom/android/camera/BeautyModule$MediaSaveListener;->mNeedThumbnail:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/BeautyModule$MediaSaveListener;->onMediaSaved(Landroid/net/Uri;Z)V

    .line 2524
    return-void
.end method

.method public onMediaSaved(Landroid/net/Uri;Z)V
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "needThumbnail"    # Z

    .prologue
    .line 2528
    invoke-static {}, Lcom/android/camera/BeautyModule;->access$1300()Lcom/android/camera/debug/Log$Tag;

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

    .line 2529
    if-eqz p1, :cond_1

    .line 2530
    iget-object v0, p0, Lcom/android/camera/BeautyModule$MediaSaveListener;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$500(Lcom/android/camera/BeautyModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/CameraActivity;->notifyNewMedia(Landroid/net/Uri;Z)V

    .line 2531
    iput-object p1, p0, Lcom/android/camera/BeautyModule$MediaSaveListener;->mRawUri:Landroid/net/Uri;

    .line 2532
    invoke-static {}, Lcom/android/camera/BeautyModule;->access$1300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaSaved save mRawUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/BeautyModule$MediaSaveListener;->mRawUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2533
    iget-boolean v0, p0, Lcom/android/camera/BeautyModule$MediaSaveListener;->isPostViewDataReceived:Z

    if-eqz v0, :cond_0

    .line 2534
    iget-object v1, p0, Lcom/android/camera/BeautyModule$MediaSaveListener;->title:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/camera/BeautyModule$MediaSaveListener;->date:J

    iget-object v4, p0, Lcom/android/camera/BeautyModule$MediaSaveListener;->location:Landroid/location/Location;

    iget v5, p0, Lcom/android/camera/BeautyModule$MediaSaveListener;->orientation:I

    iget-object v6, p0, Lcom/android/camera/BeautyModule$MediaSaveListener;->exif:Lcom/android/camera/exif/ExifInterface;

    iget-object v7, p0, Lcom/android/camera/BeautyModule$MediaSaveListener;->jpeg:[B

    iget v8, p0, Lcom/android/camera/BeautyModule$MediaSaveListener;->width:I

    iget v9, p0, Lcom/android/camera/BeautyModule$MediaSaveListener;->height:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/camera/BeautyModule$MediaSaveListener;->updateImage(Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BII)V

    .line 2539
    :cond_0
    :goto_0
    return-void

    .line 2537
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BeautyModule$MediaSaveListener;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$600(Lcom/android/camera/BeautyModule;)V

    goto :goto_0
.end method

.method public setNeedThumbnail(Z)V
    .locals 1
    .param p1, "needThumbnail"    # Z

    .prologue
    .line 2542
    iget-object v0, p0, Lcom/android/camera/BeautyModule$MediaSaveListener;->mNeedThumbnail:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2543
    return-void
.end method

.method public updateImage(Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BII)V
    .locals 18
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "orientation"    # I
    .param p6, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p7, "jpeg"    # [B
    .param p8, "width"    # I
    .param p9, "height"    # I

    .prologue
    .line 2547
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyModule$MediaSaveListener;->mRawUri:Landroid/net/Uri;

    if-eqz v4, :cond_0

    .line 2548
    invoke-static {}, Lcom/android/camera/BeautyModule;->access$1300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "update image for post process"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2550
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyModule$MediaSaveListener;->this$0:Lcom/android/camera/BeautyModule;

    invoke-virtual {v4}, Lcom/android/camera/BeautyModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/CameraServices;->getMediaSaver()Lcom/android/camera/app/MediaSaver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/BeautyModule$MediaSaveListener;->mRawUri:Landroid/net/Uri;

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

    .line 2564
    :goto_0
    return-void

    .line 2554
    :cond_0
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/camera/BeautyModule$MediaSaveListener;->isPostViewDataReceived:Z

    .line 2555
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/BeautyModule$MediaSaveListener;->title:Ljava/lang/String;

    .line 2556
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/camera/BeautyModule$MediaSaveListener;->date:J

    .line 2557
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/BeautyModule$MediaSaveListener;->location:Landroid/location/Location;

    .line 2558
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/BeautyModule$MediaSaveListener;->orientation:I

    .line 2559
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/BeautyModule$MediaSaveListener;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 2560
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/BeautyModule$MediaSaveListener;->jpeg:[B

    .line 2561
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/BeautyModule$MediaSaveListener;->width:I

    .line 2562
    move/from16 v0, p9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/BeautyModule$MediaSaveListener;->height:I

    goto :goto_0
.end method
