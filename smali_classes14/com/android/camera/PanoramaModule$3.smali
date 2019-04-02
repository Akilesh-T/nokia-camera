.class Lcom/android/camera/PanoramaModule$3;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mOnMediaSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

.field final synthetic this$0:Lcom/android/camera/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaModule;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    new-instance v0, Lcom/android/camera/PanoramaModule$3$1;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoramaModule$3$1;-><init>(Lcom/android/camera/PanoramaModule$3;)V

    iput-object v0, p0, Lcom/android/camera/PanoramaModule$3;->mOnMediaSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    return-void
.end method


# virtual methods
.method public getImgOrientation()I
    .locals 3

    .prologue
    .line 560
    invoke-static {}, Lcom/android/camera/PanoramaModule;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CapturePanoramaCallback mJpegRotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-static {v2}, Lcom/android/camera/PanoramaModule;->access$1700(Lcom/android/camera/PanoramaModule;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$1700(Lcom/android/camera/PanoramaModule;)I

    move-result v0

    return v0
.end method

.method public onPanoramaCompleted()V
    .locals 2

    .prologue
    .line 470
    invoke-static {}, Lcom/android/camera/PanoramaModule;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPanoramaCompleted"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$700(Lcom/android/camera/PanoramaModule;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 479
    :goto_0
    return-void

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/PanoramaModule;->access$800(Lcom/android/camera/PanoramaModule;I)V

    .line 476
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$600(Lcom/android/camera/PanoramaModule;)V

    .line 477
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$900(Lcom/android/camera/PanoramaModule;)V

    .line 478
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$1000(Lcom/android/camera/PanoramaModule;)V

    goto :goto_0
.end method

.method public onPanoramaFailed(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 488
    invoke-static {}, Lcom/android/camera/PanoramaModule;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CapturePanoramaCallback onPanoramaFailed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$700(Lcom/android/camera/PanoramaModule;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/camera/PanoramaModule;->access$1100(Lcom/android/camera/PanoramaModule;IZ)V

    .line 493
    if-gez p1, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule$3;->onPanoramaCompleted()V

    goto :goto_0
.end method

.method public onPanoramaPictureTaken([B)V
    .locals 6
    .param p1, "data"    # [B

    .prologue
    .line 519
    invoke-static {}, Lcom/android/camera/PanoramaModule;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CapturePanoramaCallback onPanoramaPictureTaken : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 521
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-static {v2}, Lcom/android/camera/PanoramaModule;->access$700(Lcom/android/camera/PanoramaModule;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 529
    iget-object v2, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-virtual {v2}, Lcom/android/camera/PanoramaModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/CameraServices;->getMediaSaver()Lcom/android/camera/app/MediaSaver;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/MediaSaver;->isQueueFull()Z

    move-result v2

    if-nez v2, :cond_0

    .line 533
    invoke-static {p1}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v1

    .line 535
    .local v1, "exif":Lcom/android/camera/exif/ExifInterface;
    iget-object v2, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-static {v2}, Lcom/android/camera/PanoramaModule;->access$1400(Lcom/android/camera/PanoramaModule;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 536
    new-instance v0, Lcom/android/camera/PanoramaModule$ResizeBundle;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/camera/PanoramaModule$ResizeBundle;-><init>(Lcom/android/camera/PanoramaModule$1;)V

    .line 537
    .local v0, "dataBundle":Lcom/android/camera/PanoramaModule$ResizeBundle;
    iput-object p1, v0, Lcom/android/camera/PanoramaModule$ResizeBundle;->jpegData:[B

    .line 538
    const v2, 0x3fe38e39

    iput v2, v0, Lcom/android/camera/PanoramaModule$ResizeBundle;->targetAspectRatio:F

    .line 539
    iput-object v1, v0, Lcom/android/camera/PanoramaModule$ResizeBundle;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 540
    new-instance v2, Lcom/android/camera/PanoramaModule$3$2;

    invoke-direct {v2, p0}, Lcom/android/camera/PanoramaModule$3$2;-><init>(Lcom/android/camera/PanoramaModule$3;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/camera/PanoramaModule$ResizeBundle;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 551
    invoke-virtual {v2, v3, v4}, Lcom/android/camera/PanoramaModule$3$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 554
    .end local v0    # "dataBundle":Lcom/android/camera/PanoramaModule$ResizeBundle;
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/android/camera/PanoramaModule$3;->saveFinalPhoto([BLcom/android/camera/exif/ExifInterface;)V

    goto :goto_0
.end method

.method public onPanoramaPreviewFrame(Landroid/graphics/Bitmap;II[II[III)V
    .locals 6
    .param p1, "preview"    # Landroid/graphics/Bitmap;
    .param p2, "fullImgWidth"    # I
    .param p3, "fullImgHeight"    # I
    .param p4, "imageAttrib"    # [I
    .param p5, "direction"    # I
    .param p6, "offset"    # [I
    .param p7, "progress"    # I
    .param p8, "totalPreviewLength"    # I

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$700(Lcom/android/camera/PanoramaModule;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$1200(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/PanoramaUI;

    move-result-object v0

    move-object v1, p1

    move-object v2, p4

    move v3, p5

    move-object v4, p6

    move v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/PanoramaUI;->frameUpdate(Landroid/graphics/Bitmap;[II[II)V

    .line 506
    const/16 v0, 0x64

    if-ne p7, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$700(Lcom/android/camera/PanoramaModule;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$200(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 508
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$1200(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/PanoramaUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoramaUI;->showShutterButton(Z)V

    .line 509
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$1200(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/PanoramaUI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoramaUI;->pregressControl(Z)V

    .line 511
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$1300(Lcom/android/camera/PanoramaModule;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopPanorama()V

    goto :goto_0
.end method

.method public onPanoramaStarted()V
    .locals 2

    .prologue
    .line 463
    invoke-static {}, Lcom/android/camera/PanoramaModule;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPanoramaStarted"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$200(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 465
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$600(Lcom/android/camera/PanoramaModule;)V

    .line 466
    return-void
.end method

.method public onPanoramaWarning(I)V
    .locals 2
    .param p1, "error"    # I

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/camera/PanoramaModule;->access$1100(Lcom/android/camera/PanoramaModule;IZ)V

    .line 484
    return-void
.end method

.method saveFinalPhoto([BLcom/android/camera/exif/ExifInterface;)V
    .locals 20
    .param p1, "data"    # [B
    .param p2, "exif"    # Lcom/android/camera/exif/ExifInterface;

    .prologue
    .line 566
    invoke-static {}, Lcom/android/camera/PanoramaModule;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    const-string v4, "saveFinalPhoto"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 567
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-static {v3}, Lcom/android/camera/PanoramaModule;->access$1800(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(J)V

    .line 568
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-static {v3}, Lcom/android/camera/PanoramaModule;->access$1800(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v15

    .line 569
    .local v15, "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    if-nez v15, :cond_0

    const/4 v5, 0x0

    .line 570
    .local v5, "title":Ljava/lang/String;
    :goto_0
    if-nez v15, :cond_1

    const-wide/16 v6, -0x1

    .line 572
    .local v6, "date":J
    :goto_1
    if-nez v5, :cond_2

    .line 573
    invoke-static {}, Lcom/android/camera/PanoramaModule;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    const-string v4, "Unbalanced name/data pair"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 617
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-virtual {v3}, Lcom/android/camera/PanoramaModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Lcom/android/camera/remote/RemoteShutterListener;->onPictureTaken([B)V

    .line 618
    return-void

    .line 569
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "date":J
    :cond_0
    iget-object v5, v15, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    goto :goto_0

    .line 570
    .restart local v5    # "title":Ljava/lang/String;
    :cond_1
    iget-wide v6, v15, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    goto :goto_1

    .line 575
    .restart local v6    # "date":J
    :cond_2
    const-wide/16 v10, -0x1

    cmp-long v3, v6, v10

    if-nez v3, :cond_3

    .line 576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 579
    :cond_3
    invoke-static/range {p2 .. p2}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v9

    .line 580
    .local v9, "orientation":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-static {v3}, Lcom/android/camera/PanoramaModule;->access$1700(Lcom/android/camera/PanoramaModule;)I

    move-result v3

    if-eq v9, v3, :cond_7

    const/16 v16, 0x1

    .line 582
    .local v16, "needOverrideRotation":Z
    :goto_3
    invoke-static {}, Lcom/android/camera/PanoramaModule;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "needOverrideRotation = "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 583
    if-eqz v16, :cond_4

    .line 584
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-static {v3}, Lcom/android/camera/PanoramaModule;->access$1700(Lcom/android/camera/PanoramaModule;)I

    move-result v9

    .line 587
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-static {v3}, Lcom/android/camera/PanoramaModule;->access$1900(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/hardware/HeadingSensor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/hardware/HeadingSensor;->getCurrentHeading()I

    move-result v14

    .line 588
    .local v14, "heading":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-static {v3}, Lcom/android/camera/PanoramaModule;->access$2000(Lcom/android/camera/PanoramaModule;)Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v13, 0x0

    .line 589
    .local v13, "enabled":Z
    :goto_4
    const/4 v3, -0x1

    if-eq v14, v3, :cond_6

    .line 591
    if-eqz v13, :cond_5

    .line 592
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const-string v4, "M"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v2

    .line 595
    .local v2, "directionRefTag":Lcom/android/camera/exif/ExifTag;
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    new-instance v4, Lcom/android/camera/exif/Rational;

    int-to-long v10, v14

    const-wide/16 v18, 0x1

    move-wide/from16 v0, v18

    invoke-direct {v4, v10, v11, v0, v1}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v12

    .line 598
    .local v12, "directionTag":Lcom/android/camera/exif/ExifTag;
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 599
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 602
    .end local v2    # "directionRefTag":Lcom/android/camera/exif/ExifTag;
    .end local v12    # "directionTag":Lcom/android/camera/exif/ExifTag;
    :cond_5
    if-eqz v16, :cond_6

    .line 603
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-static {v9}, Lcom/android/camera/exif/ExifInterface;->getOrientationValueForRotation(I)S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v17

    .line 604
    .local v17, "rotationTag":Lcom/android/camera/exif/ExifTag;
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 608
    .end local v17    # "rotationTag":Lcom/android/camera/exif/ExifTag;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PanoramaModule$3;->mOnMediaSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;->setNeedThumbnail(Z)V

    .line 609
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-static {v3}, Lcom/android/camera/PanoramaModule;->access$300(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v8

    .line 610
    .local v8, "location":Landroid/location/Location;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-virtual {v3}, Lcom/android/camera/PanoramaModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/CameraServices;->getMediaSaver()Lcom/android/camera/app/MediaSaver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/PanoramaModule$3;->mOnMediaSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    move-object/from16 v4, p1

    move-object/from16 v10, p2

    invoke-interface/range {v3 .. v11}, Lcom/android/camera/app/MediaSaver;->addImage([BLjava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V

    goto/16 :goto_2

    .line 580
    .end local v8    # "location":Landroid/location/Location;
    .end local v13    # "enabled":Z
    .end local v14    # "heading":I
    .end local v16    # "needOverrideRotation":Z
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 588
    .restart local v14    # "heading":I
    .restart local v16    # "needOverrideRotation":Z
    :cond_8
    const/4 v13, 0x1

    goto :goto_4
.end method
