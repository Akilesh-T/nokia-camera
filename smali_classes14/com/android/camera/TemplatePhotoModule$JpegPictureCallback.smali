.class final Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;
.super Ljava/lang/Object;
.source "TemplatePhotoModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/TemplatePhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/android/camera/TemplatePhotoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/TemplatePhotoModule;Landroid/location/Location;)V
    .locals 0
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 750
    iput-object p1, p0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 751
    iput-object p2, p0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 752
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 22
    .param p1, "originalJpegData"    # [B
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 756
    invoke-static {}, Lcom/android/camera/TemplatePhotoModule;->access$1200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "onPictureTaken"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 757
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v2}, Lcom/android/camera/TemplatePhotoModule;->access$400(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 758
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v2}, Lcom/android/camera/TemplatePhotoModule;->access$400(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v2}, Lcom/android/camera/TemplatePhotoModule;->access$1800(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v2

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v2, v3, :cond_0

    .line 760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v2}, Lcom/android/camera/TemplatePhotoModule;->access$1900(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/camera/TemplatePhotoUI;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/TemplatePhotoUI;->setSwipingEnabled(Z)V

    .line 762
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v2}, Lcom/android/camera/TemplatePhotoModule;->access$400(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 763
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v2}, Lcom/android/camera/TemplatePhotoModule;->access$1100(Lcom/android/camera/TemplatePhotoModule;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 846
    :goto_0
    return-void

    .line 767
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v2, v8, v9}, Lcom/android/camera/TemplatePhotoModule;->access$2002(Lcom/android/camera/TemplatePhotoModule;J)J

    .line 771
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v2}, Lcom/android/camera/TemplatePhotoModule;->access$1600(Lcom/android/camera/TemplatePhotoModule;)J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-eqz v2, :cond_2

    .line 772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    .line 773
    invoke-static {v3}, Lcom/android/camera/TemplatePhotoModule;->access$1600(Lcom/android/camera/TemplatePhotoModule;)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v3}, Lcom/android/camera/TemplatePhotoModule;->access$1400(Lcom/android/camera/TemplatePhotoModule;)J

    move-result-wide v12

    sub-long/2addr v8, v12

    iput-wide v8, v2, Lcom/android/camera/TemplatePhotoModule;->mShutterToPictureDisplayedTime:J

    .line 774
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    .line 775
    invoke-static {v3}, Lcom/android/camera/TemplatePhotoModule;->access$2000(Lcom/android/camera/TemplatePhotoModule;)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v3}, Lcom/android/camera/TemplatePhotoModule;->access$1600(Lcom/android/camera/TemplatePhotoModule;)J

    move-result-wide v12

    sub-long/2addr v8, v12

    iput-wide v8, v2, Lcom/android/camera/TemplatePhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    .line 782
    :goto_1
    invoke-static {}, Lcom/android/camera/TemplatePhotoModule;->access$1200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPictureDisplayedToJpegCallbackTime = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    iget-wide v8, v5, Lcom/android/camera/TemplatePhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "ms"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 785
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v2}, Lcom/android/camera/TemplatePhotoModule;->access$2100(Lcom/android/camera/TemplatePhotoModule;)I

    move-result v7

    .line 787
    .local v7, "lJpegRotation":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v2}, Lcom/android/camera/TemplatePhotoModule;->access$2200(Lcom/android/camera/TemplatePhotoModule;)V

    .line 789
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 790
    .local v18, "now":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v3}, Lcom/android/camera/TemplatePhotoModule;->access$2000(Lcom/android/camera/TemplatePhotoModule;)J

    move-result-wide v8

    sub-long v8, v18, v8

    iput-wide v8, v2, Lcom/android/camera/TemplatePhotoModule;->mJpegCallbackFinishTime:J

    .line 791
    invoke-static {}, Lcom/android/camera/TemplatePhotoModule;->access$1200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mJpegCallbackFinishTime = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    iget-wide v8, v5, Lcom/android/camera/TemplatePhotoModule;->mJpegCallbackFinishTime:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "ms"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    const-wide/16 v8, 0x0

    invoke-static {v2, v8, v9}, Lcom/android/camera/TemplatePhotoModule;->access$2002(Lcom/android/camera/TemplatePhotoModule;J)J

    .line 794
    if-eqz p1, :cond_5

    .line 796
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v11

    .line 798
    .local v11, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-static {v11}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v20

    .line 799
    .local v20, "rotation":I
    invoke-static {}, Lcom/android/camera/TemplatePhotoModule;->access$1200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exif.getOrientation(exif) = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 802
    const/16 v17, 0x0

    .line 803
    .local v17, "needOverrideRotation":Z
    invoke-static {}, Lcom/android/camera/TemplatePhotoModule;->access$1200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "needOverrideRotation = false"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 809
    invoke-virtual {v11}, Lcom/android/camera/exif/ExifInterface;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v21

    .line 810
    .local v21, "thumbnail":Landroid/graphics/Bitmap;
    if-eqz v21, :cond_3

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v2}, Lcom/android/camera/TemplatePhotoModule;->access$400(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-virtual {v3}, Lcom/android/camera/TemplatePhotoModule;->getPeekAccessibilityString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/app/CameraAppUI;->startCaptureIndicatorRevealAnimation(Ljava/lang/String;Z)V

    .line 812
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v2}, Lcom/android/camera/TemplatePhotoModule;->access$400(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/app/CameraAppUI;->updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V

    .line 813
    const/4 v2, 0x7

    invoke-static {v2}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 814
    const/4 v6, 0x0

    .line 819
    .local v6, "needThumbnail":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v2}, Lcom/android/camera/TemplatePhotoModule;->access$2300(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v4

    .line 820
    .local v4, "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v2}, Lcom/android/camera/TemplatePhotoModule;->access$2400(Lcom/android/camera/TemplatePhotoModule;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 821
    new-instance v16, Lcom/android/camera/TemplatePhotoModule$ResizeBundle;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/android/camera/TemplatePhotoModule$ResizeBundle;-><init>(Lcom/android/camera/TemplatePhotoModule$1;)V

    .line 822
    .local v16, "dataBundle":Lcom/android/camera/TemplatePhotoModule$ResizeBundle;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/camera/TemplatePhotoModule$ResizeBundle;->jpegData:[B

    .line 823
    const v2, 0x3fe38e39

    move-object/from16 v0, v16

    iput v2, v0, Lcom/android/camera/TemplatePhotoModule$ResizeBundle;->targetAspectRatio:F

    .line 824
    move-object/from16 v0, v16

    iput-object v11, v0, Lcom/android/camera/TemplatePhotoModule$ResizeBundle;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 825
    new-instance v2, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback$1;

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback$1;-><init>(Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;ZI)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/android/camera/TemplatePhotoModule$ResizeBundle;

    const/4 v8, 0x0

    aput-object v16, v5, v8

    .line 836
    invoke-virtual {v2, v3, v5}, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 777
    .end local v4    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .end local v6    # "needThumbnail":Z
    .end local v7    # "lJpegRotation":I
    .end local v11    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v16    # "dataBundle":Lcom/android/camera/TemplatePhotoModule$ResizeBundle;
    .end local v17    # "needOverrideRotation":Z
    .end local v18    # "now":J
    .end local v20    # "rotation":I
    .end local v21    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    .line 778
    invoke-static {v3}, Lcom/android/camera/TemplatePhotoModule;->access$1700(Lcom/android/camera/TemplatePhotoModule;)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v3}, Lcom/android/camera/TemplatePhotoModule;->access$1400(Lcom/android/camera/TemplatePhotoModule;)J

    move-result-wide v12

    sub-long/2addr v8, v12

    iput-wide v8, v2, Lcom/android/camera/TemplatePhotoModule;->mShutterToPictureDisplayedTime:J

    .line 779
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    .line 780
    invoke-static {v3}, Lcom/android/camera/TemplatePhotoModule;->access$2000(Lcom/android/camera/TemplatePhotoModule;)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v3}, Lcom/android/camera/TemplatePhotoModule;->access$1700(Lcom/android/camera/TemplatePhotoModule;)J

    move-result-wide v12

    sub-long/2addr v8, v12

    iput-wide v8, v2, Lcom/android/camera/TemplatePhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    goto/16 :goto_1

    .line 816
    .restart local v7    # "lJpegRotation":I
    .restart local v11    # "exif":Lcom/android/camera/exif/ExifInterface;
    .restart local v17    # "needOverrideRotation":Z
    .restart local v18    # "now":J
    .restart local v20    # "rotation":I
    .restart local v21    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_3
    const/4 v6, 0x1

    .restart local v6    # "needThumbnail":Z
    goto :goto_2

    .line 839
    .restart local v4    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    :cond_4
    const/4 v14, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object v10, v4

    move-object/from16 v12, p2

    move v13, v6

    move v15, v7

    invoke-virtual/range {v8 .. v15}, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->saveFinalPhoto([BLcom/android/camera/PhotoModule$NamedImages$NamedEntity;Lcom/android/camera/exif/ExifInterface;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;ZZI)V

    goto/16 :goto_0

    .line 842
    .end local v4    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .end local v6    # "needThumbnail":Z
    .end local v11    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v17    # "needOverrideRotation":Z
    .end local v20    # "rotation":I
    .end local v21    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_5
    invoke-static {}, Lcom/android/camera/TemplatePhotoModule;->access$1200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "Get null jpeg data when capture"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 843
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v2}, Lcom/android/camera/TemplatePhotoModule;->access$500(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    const-string v3, "Capture Fail : No jepg data."

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 844
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method saveFinalPhoto([BLcom/android/camera/PhotoModule$NamedImages$NamedEntity;Lcom/android/camera/exif/ExifInterface;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;ZZI)V
    .locals 28
    .param p1, "jpegData"    # [B
    .param p2, "name"    # Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .param p3, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p4, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .param p5, "needThumbnail"    # Z
    .param p6, "needOverrideRotation"    # Z
    .param p7, "lJpegRotation"    # I

    .prologue
    .line 849
    invoke-static/range {p3 .. p3}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v11

    .line 851
    .local v11, "orientation":I
    if-eqz p6, :cond_0

    .line 852
    move/from16 v11, p7

    .line 855
    :cond_0
    const/high16 v25, 0x3f800000    # 1.0f

    .line 856
    .local v25, "zoomValue":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v3}, Lcom/android/camera/TemplatePhotoModule;->access$2700(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-result-object v3

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v3, v4}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 857
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v3}, Lcom/android/camera/TemplatePhotoModule;->access$2800(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentZoomRatio()F

    move-result v25

    .line 859
    :cond_1
    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v4}, Lcom/android/camera/TemplatePhotoModule;->access$1800(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v4

    if-ne v3, v4, :cond_3

    const/16 v21, 0x1

    .line 860
    .local v21, "hdrOn":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    .line 861
    invoke-static {v3}, Lcom/android/camera/TemplatePhotoModule;->access$500(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v4}, Lcom/android/camera/TemplatePhotoModule;->access$400(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v4

    const-string v8, "pref_camera_flashmode_key"

    invoke-virtual {v3, v4, v8}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 863
    .local v18, "flashSetting":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v3}, Lcom/android/camera/TemplatePhotoModule;->access$500(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/settings/Keys;->areGridLinesOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v20

    .line 870
    .local v20, "gridLinesOn":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/camera/TemplatePhotoModule;->access$2902(Lcom/android/camera/TemplatePhotoModule;Lcom/android/camera/ui/TouchCoordinate;)Lcom/android/camera/ui/TouchCoordinate;

    .line 871
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/camera/TemplatePhotoModule;->access$3002(Lcom/android/camera/TemplatePhotoModule;Z)Z

    .line 874
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/android/camera/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v17

    .line 875
    .local v17, "exifWidth":Ljava/lang/Integer;
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/android/camera/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v16

    .line 877
    .local v16, "exifHeight":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v3}, Lcom/android/camera/TemplatePhotoModule;->access$2400(Lcom/android/camera/TemplatePhotoModule;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v17, :cond_4

    if-eqz v16, :cond_4

    .line 878
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 879
    .local v9, "width":I
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 890
    .local v10, "height":I
    :goto_1
    if-nez p2, :cond_6

    const/4 v5, 0x0

    .line 891
    .local v5, "title":Ljava/lang/String;
    :goto_2
    if-nez p2, :cond_7

    const-wide/16 v6, -0x1

    .line 894
    .local v6, "date":J
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v3}, Lcom/android/camera/TemplatePhotoModule;->access$3100(Lcom/android/camera/TemplatePhotoModule;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 896
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/android/camera/TemplatePhotoModule;->access$3200(Lcom/android/camera/TemplatePhotoModule;[B)V

    .line 899
    if-eqz v5, :cond_2

    .line 900
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEBUG_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 904
    :cond_2
    if-nez v5, :cond_8

    .line 905
    invoke-static {}, Lcom/android/camera/TemplatePhotoModule;->access$1200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    const-string v4, "Unbalanced name/data pair"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 943
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-virtual {v3}, Lcom/android/camera/TemplatePhotoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Lcom/android/camera/remote/RemoteShutterListener;->onPictureTaken([B)V

    .line 949
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v3}, Lcom/android/camera/TemplatePhotoModule;->access$500(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    .line 950
    return-void

    .line 859
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "date":J
    .end local v9    # "width":I
    .end local v10    # "height":I
    .end local v16    # "exifHeight":Ljava/lang/Integer;
    .end local v17    # "exifWidth":Ljava/lang/Integer;
    .end local v18    # "flashSetting":Ljava/lang/String;
    .end local v20    # "gridLinesOn":Z
    .end local v21    # "hdrOn":Z
    :cond_3
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 881
    .restart local v16    # "exifHeight":Ljava/lang/Integer;
    .restart local v17    # "exifWidth":Ljava/lang/Integer;
    .restart local v18    # "flashSetting":Ljava/lang/String;
    .restart local v20    # "gridLinesOn":Z
    .restart local v21    # "hdrOn":Z
    :cond_4
    new-instance v24, Lcom/android/camera/util/Size;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v3}, Lcom/android/camera/TemplatePhotoModule;->access$2800(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Lcom/android/camera/util/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    .line 882
    .local v24, "s":Lcom/android/camera/util/Size;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v3}, Lcom/android/camera/TemplatePhotoModule;->access$2100(Lcom/android/camera/TemplatePhotoModule;)I

    move-result v3

    add-int/2addr v3, v11

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_5

    .line 883
    invoke-virtual/range {v24 .. v24}, Lcom/android/camera/util/Size;->width()I

    move-result v9

    .line 884
    .restart local v9    # "width":I
    invoke-virtual/range {v24 .. v24}, Lcom/android/camera/util/Size;->height()I

    move-result v10

    .restart local v10    # "height":I
    goto/16 :goto_1

    .line 886
    .end local v9    # "width":I
    .end local v10    # "height":I
    :cond_5
    invoke-virtual/range {v24 .. v24}, Lcom/android/camera/util/Size;->height()I

    move-result v9

    .line 887
    .restart local v9    # "width":I
    invoke-virtual/range {v24 .. v24}, Lcom/android/camera/util/Size;->width()I

    move-result v10

    .restart local v10    # "height":I
    goto/16 :goto_1

    .line 890
    .end local v24    # "s":Lcom/android/camera/util/Size;
    :cond_6
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    goto/16 :goto_2

    .line 891
    .restart local v5    # "title":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    goto/16 :goto_3

    .line 907
    .restart local v6    # "date":J
    :cond_8
    const-wide/16 v12, -0x1

    cmp-long v3, v6, v12

    if-nez v3, :cond_9

    .line 908
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    iget-wide v6, v3, Lcom/android/camera/TemplatePhotoModule;->mCaptureStartTime:J

    .line 910
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v3}, Lcom/android/camera/TemplatePhotoModule;->access$3300(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/camera/hardware/HeadingSensor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/hardware/HeadingSensor;->getCurrentHeading()I

    move-result v22

    .line 911
    .local v22, "heading":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v3}, Lcom/android/camera/TemplatePhotoModule;->access$3400(Lcom/android/camera/TemplatePhotoModule;)Z

    move-result v3

    if-nez v3, :cond_d

    const/4 v15, 0x0

    .line 912
    .local v15, "enabled":Z
    :goto_5
    const/4 v3, -0x1

    move/from16 v0, v22

    if-eq v0, v3, :cond_a

    .line 914
    if-eqz v15, :cond_a

    .line 915
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const-string v4, "M"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v2

    .line 918
    .local v2, "directionRefTag":Lcom/android/camera/exif/ExifTag;
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    new-instance v4, Lcom/android/camera/exif/Rational;

    move/from16 v0, v22

    int-to-long v12, v0

    const-wide/16 v26, 0x1

    move-wide/from16 v0, v26

    invoke-direct {v4, v12, v13, v0, v1}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v14

    .line 921
    .local v14, "directionTag":Lcom/android/camera/exif/ExifTag;
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 922
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 925
    .end local v2    # "directionRefTag":Lcom/android/camera/exif/ExifTag;
    .end local v14    # "directionTag":Lcom/android/camera/exif/ExifTag;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    iget-boolean v3, v3, Lcom/android/camera/TemplatePhotoModule;->mFrontFlashTriggered:Z

    if-eqz v3, :cond_b

    .line 926
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_FLASH:I

    const/4 v4, 0x1

    .line 928
    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    .line 926
    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v19

    .line 929
    .local v19, "flashTag":Lcom/android/camera/exif/ExifTag;
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 931
    .end local v19    # "flashTag":Lcom/android/camera/exif/ExifTag;
    :cond_b
    if-eqz p6, :cond_c

    .line 932
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-static {v11}, Lcom/android/camera/exif/ExifInterface;->getOrientationValueForRotation(I)S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v23

    .line 933
    .local v23, "rotationTag":Lcom/android/camera/exif/ExifTag;
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 935
    .end local v23    # "rotationTag":Lcom/android/camera/exif/ExifTag;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-static {v3}, Lcom/android/camera/TemplatePhotoModule;->access$3500(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    move-result-object v3

    move/from16 v0, p5

    invoke-interface {v3, v0}, Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;->setNeedThumbnail(Z)V

    .line 936
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-virtual {v3}, Lcom/android/camera/TemplatePhotoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/CameraServices;->getMediaSaver()Lcom/android/camera/app/MediaSaver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    .line 938
    invoke-static {v4}, Lcom/android/camera/TemplatePhotoModule;->access$3500(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    move-result-object v13

    move-object/from16 v4, p1

    move-object/from16 v12, p3

    .line 936
    invoke-interface/range {v3 .. v13}, Lcom/android/camera/app/MediaSaver;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V

    goto/16 :goto_4

    .line 911
    .end local v15    # "enabled":Z
    :cond_d
    const/4 v15, 0x1

    goto/16 :goto_5
.end method
