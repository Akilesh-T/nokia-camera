.class final Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;
.super Ljava/lang/Object;
.source "PIPPhotoModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
.implements Lcom/android/camera/PIPImageSaver$PIPImageSavedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PIPPhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mIndex:I

.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/android/camera/PIPPhotoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/PIPPhotoModule;Landroid/location/Location;I)V
    .locals 0
    .param p2, "loc"    # Landroid/location/Location;
    .param p3, "index"    # I

    .prologue
    .line 818
    iput-object p1, p0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 819
    iput-object p2, p0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 820
    iput p3, p0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->mIndex:I

    .line 821
    return-void
.end method


# virtual methods
.method public onPictureSaveFinished([B)V
    .locals 2
    .param p1, "jpegData"    # [B

    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-virtual {v0}, Lcom/android/camera/PIPPhotoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/remote/RemoteShutterListener;->onPictureTaken([B)V

    .line 918
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {v0}, Lcom/android/camera/PIPPhotoModule;->access$300(Lcom/android/camera/PIPPhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    .line 919
    return-void
.end method

.method public onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 22
    .param p1, "originalJpegData"    # [B
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 825
    invoke-static {}, Lcom/android/camera/PIPPhotoModule;->access$900()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " onPictureTaken "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 826
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    iget-boolean v3, v3, Lcom/android/camera/PIPPhotoModule;->mPaused:Z

    if-eqz v3, :cond_1

    .line 827
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/camera/PIPPhotoModule;->access$1502([B)[B

    .line 828
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/camera/PIPPhotoModule;->access$1602([B)[B

    .line 895
    :cond_0
    :goto_0
    return-void

    .line 831
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->mIndex:I

    if-nez v3, :cond_3

    .line 832
    invoke-static/range {p1 .. p1}, Lcom/android/camera/PIPPhotoModule;->access$1602([B)[B

    .line 833
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/camera/PIPPhotoModule;->access$1700(Lcom/android/camera/PIPPhotoModule;I)V

    .line 838
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/camera/PIPPhotoModule;->access$1500()[B

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/camera/PIPPhotoModule;->access$1600()[B

    move-result-object v3

    if-eqz v3, :cond_0

    .line 840
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {v3}, Lcom/android/camera/PIPPhotoModule;->access$200(Lcom/android/camera/PIPPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 841
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {v3}, Lcom/android/camera/PIPPhotoModule;->access$200(Lcom/android/camera/PIPPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 842
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {v3}, Lcom/android/camera/PIPPhotoModule;->access$200(Lcom/android/camera/PIPPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 844
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/camera/PIPPhotoModule;->access$1802(Lcom/android/camera/PIPPhotoModule;J)J

    .line 848
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {v3}, Lcom/android/camera/PIPPhotoModule;->access$1300(Lcom/android/camera/PIPPhotoModule;)J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_4

    .line 849
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    .line 850
    invoke-static {v4}, Lcom/android/camera/PIPPhotoModule;->access$1300(Lcom/android/camera/PIPPhotoModule;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {v6}, Lcom/android/camera/PIPPhotoModule;->access$1100(Lcom/android/camera/PIPPhotoModule;)J

    move-result-wide v8

    sub-long/2addr v4, v8

    iput-wide v4, v3, Lcom/android/camera/PIPPhotoModule;->mShutterToPictureDisplayedTime:J

    .line 851
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    .line 852
    invoke-static {v4}, Lcom/android/camera/PIPPhotoModule;->access$1800(Lcom/android/camera/PIPPhotoModule;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {v6}, Lcom/android/camera/PIPPhotoModule;->access$1300(Lcom/android/camera/PIPPhotoModule;)J

    move-result-wide v8

    sub-long/2addr v4, v8

    iput-wide v4, v3, Lcom/android/camera/PIPPhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    .line 859
    :goto_2
    invoke-static {}, Lcom/android/camera/PIPPhotoModule;->access$900()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPictureDisplayedToJpegCallbackTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    iget-wide v8, v5, Lcom/android/camera/PIPPhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 862
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {v3}, Lcom/android/camera/PIPPhotoModule;->access$1900(Lcom/android/camera/PIPPhotoModule;)V

    .line 864
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 865
    .local v20, "now":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {v4}, Lcom/android/camera/PIPPhotoModule;->access$1800(Lcom/android/camera/PIPPhotoModule;)J

    move-result-wide v4

    sub-long v4, v20, v4

    iput-wide v4, v3, Lcom/android/camera/PIPPhotoModule;->mJpegCallbackFinishTime:J

    .line 866
    invoke-static {}, Lcom/android/camera/PIPPhotoModule;->access$900()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mJpegCallbackFinishTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    iget-wide v8, v5, Lcom/android/camera/PIPPhotoModule;->mJpegCallbackFinishTime:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 867
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/camera/PIPPhotoModule;->access$1802(Lcom/android/camera/PIPPhotoModule;J)J

    .line 869
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {v3}, Lcom/android/camera/PIPPhotoModule;->access$2000(Lcom/android/camera/PIPPhotoModule;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v10

    .line 870
    .local v10, "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    iget-object v3, v10, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 871
    invoke-static {}, Lcom/android/camera/PIPPhotoModule;->access$900()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    const-string v4, "Unbalanced name/data pair"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 872
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/camera/PIPPhotoModule;->access$1502([B)[B

    .line 873
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/camera/PIPPhotoModule;->access$1602([B)[B

    goto/16 :goto_0

    .line 834
    .end local v10    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .end local v20    # "now":J
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->mIndex:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 835
    invoke-static/range {p1 .. p1}, Lcom/android/camera/PIPPhotoModule;->access$1502([B)[B

    goto/16 :goto_1

    .line 854
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    .line 855
    invoke-static {v4}, Lcom/android/camera/PIPPhotoModule;->access$1400(Lcom/android/camera/PIPPhotoModule;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {v6}, Lcom/android/camera/PIPPhotoModule;->access$1100(Lcom/android/camera/PIPPhotoModule;)J

    move-result-wide v8

    sub-long/2addr v4, v8

    iput-wide v4, v3, Lcom/android/camera/PIPPhotoModule;->mShutterToPictureDisplayedTime:J

    .line 856
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    .line 857
    invoke-static {v4}, Lcom/android/camera/PIPPhotoModule;->access$1800(Lcom/android/camera/PIPPhotoModule;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {v6}, Lcom/android/camera/PIPPhotoModule;->access$1400(Lcom/android/camera/PIPPhotoModule;)J

    move-result-wide v8

    sub-long/2addr v4, v8

    iput-wide v4, v3, Lcom/android/camera/PIPPhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    goto/16 :goto_2

    .line 878
    .restart local v10    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .restart local v20    # "now":J
    :cond_5
    invoke-static {}, Lcom/android/camera/PIPPhotoModule;->access$1600()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v2

    .line 879
    .local v2, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-static {v2}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v7

    .line 880
    .local v7, "rotation":I
    invoke-static {}, Lcom/android/camera/PIPPhotoModule;->access$900()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exif.getOrientation(exif) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 883
    const/16 v19, 0x0

    .line 884
    .local v19, "needOverrideRotation":Z
    invoke-static {}, Lcom/android/camera/PIPPhotoModule;->access$900()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    const-string v4, "needOverrideRotation = false"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 891
    invoke-static {}, Lcom/android/camera/PIPImageSaver;->getInstance()Lcom/android/camera/PIPImageSaver;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/PIPPhotoModule;->access$1600()[B

    move-result-object v4

    invoke-static {}, Lcom/android/camera/PIPPhotoModule;->access$1500()[B

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    iget-object v6, v6, Lcom/android/camera/PIPPhotoModule;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {v8}, Lcom/android/camera/PIPPhotoModule;->access$300(Lcom/android/camera/PIPPhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    .line 892
    invoke-virtual {v9}, Lcom/android/camera/PIPPhotoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {v9}, Lcom/android/camera/PIPPhotoModule;->access$2100(Lcom/android/camera/PIPPhotoModule;)Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    iget-wide v14, v9, Lcom/android/camera/PIPPhotoModule;->mCaptureStartTime:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    iget-object v9, v9, Lcom/android/camera/PIPPhotoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-virtual {v9}, Lcom/android/camera/pip/opengl/GLRenderer;->getRectPosition()Landroid/graphics/RectF;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {v9}, Lcom/android/camera/PIPPhotoModule;->access$2200(Lcom/android/camera/PIPPhotoModule;)Z

    move-result v17

    sget-boolean v18, Lcom/android/camera/product_utils/ProductUtil;->USE_WITH_18x9_LAYOUT_IN_PIP:Z

    move-object/from16 v9, p0

    .line 891
    invoke-virtual/range {v3 .. v18}, Lcom/android/camera/PIPImageSaver;->addPIPImage([B[BLcom/android/camera/pip/opengl/GLRenderer$PIPMode;IILcom/android/camera/PIPImageSaver$PIPImageSavedCallback;Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;Lcom/android/camera/app/CameraServices;Landroid/location/Location;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;JLandroid/graphics/RectF;ZZ)V

    .line 893
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/camera/PIPPhotoModule;->access$1602([B)[B

    .line 894
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/camera/PIPPhotoModule;->access$1502([B)[B

    goto/16 :goto_0
.end method

.method public onThumbnailUpdate(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 899
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {v0}, Lcom/android/camera/PIPPhotoModule;->access$2300(Lcom/android/camera/PIPPhotoModule;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback$1;-><init>(Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 907
    return-void
.end method
