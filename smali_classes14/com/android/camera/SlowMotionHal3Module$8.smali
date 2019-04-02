.class Lcom/android/camera/SlowMotionHal3Module$8;
.super Landroid/os/AsyncTask;
.source "SlowMotionHal3Module.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SlowMotionHal3Module;->takePictureNow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SlowMotionHal3Module;

.field final synthetic val$cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

.field final synthetic val$guard:Lcom/android/camera/stats/profiler/Profile;

.field final synthetic val$params:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

.field final synthetic val$session:Lcom/android/camera/session/CaptureSession;


# direct methods
.method constructor <init>(Lcom/android/camera/SlowMotionHal3Module;Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/stats/profiler/Profile;Lcom/android/camera/session/CaptureSession;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 758
    iput-object p1, p0, Lcom/android/camera/SlowMotionHal3Module$8;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    iput-object p2, p0, Lcom/android/camera/SlowMotionHal3Module$8;->val$params:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    iput-object p3, p0, Lcom/android/camera/SlowMotionHal3Module$8;->val$cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    iput-object p4, p0, Lcom/android/camera/SlowMotionHal3Module$8;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    iput-object p5, p0, Lcom/android/camera/SlowMotionHal3Module$8;->val$session:Lcom/android/camera/session/CaptureSession;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private updateExif(Lcom/android/camera/exif/ExifInterface;)V
    .locals 0
    .param p1, "exif"    # Lcom/android/camera/exif/ExifInterface;

    .prologue
    .line 836
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 758
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/camera/SlowMotionHal3Module$8;->doInBackground([Landroid/graphics/Bitmap;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Ljava/lang/Void;
    .locals 18
    .param p1, "bitmaps"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 761
    const/4 v1, 0x0

    aget-object v1, p1, v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 824
    :goto_0
    return-object v1

    .line 763
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/SlowMotionHal3Module$8;->val$params:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    iget v1, v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->orientation:I

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/SlowMotionHal3Module$8;->val$cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v1, v2, :cond_5

    .line 764
    :cond_1
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 766
    .local v6, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/SlowMotionHal3Module$8;->val$cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v1, v2, :cond_2

    .line 767
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 770
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/SlowMotionHal3Module$8;->val$params:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    iget v1, v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->orientation:I

    if-eqz v1, :cond_3

    .line 771
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/SlowMotionHal3Module$8;->val$cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v1, v2, :cond_4

    .line 772
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/SlowMotionHal3Module$8;->val$params:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    iget v1, v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->orientation:I

    rsub-int v1, v1, 0x168

    rem-int/lit16 v1, v1, 0x168

    int-to-float v1, v1

    invoke-virtual {v6, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 778
    :cond_3
    :goto_1
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 780
    .local v15, "rotatedBitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 784
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    :goto_2
    if-nez v15, :cond_6

    .line 785
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/SlowMotionHal3Module$8;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v2, "rotatedBitmap is null"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 786
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/SlowMotionHal3Module$8;->val$session:Lcom/android/camera/session/CaptureSession;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/camera/session/CaptureSession;->finishWithFailure(IZ)V

    .line 787
    const/4 v1, 0x0

    goto :goto_0

    .line 774
    .end local v15    # "rotatedBitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "matrix":Landroid/graphics/Matrix;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/SlowMotionHal3Module$8;->val$params:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    iget v1, v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->orientation:I

    int-to-float v1, v1

    invoke-virtual {v6, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_1

    .line 782
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    :cond_5
    const/4 v1, 0x0

    aget-object v15, p1, v1

    .restart local v15    # "rotatedBitmap":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 789
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/SlowMotionHal3Module$8;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rotatedBitmap : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 791
    :try_start_0
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v16, "stream":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 792
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/SlowMotionHal3Module$8;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "ByteArrayOutputStream init"

    invoke-interface {v1, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 793
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    move-object/from16 v0, v16

    invoke-virtual {v15, v1, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 794
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/SlowMotionHal3Module$8;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "compress done"

    invoke-interface {v1, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 796
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 797
    .local v8, "jpegData":[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/SlowMotionHal3Module$8;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "toByteArray done"

    invoke-interface {v1, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 799
    if-eqz v8, :cond_9

    array-length v1, v8

    if-lez v1, :cond_9

    .line 800
    invoke-static {v8}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v13

    .line 801
    .local v13, "exif":Lcom/android/camera/exif/ExifInterface;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/SlowMotionHal3Module$8;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "exif get"

    invoke-interface {v1, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 802
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/camera/SlowMotionHal3Module$8;->updateExif(Lcom/android/camera/exif/ExifInterface;)V

    .line 803
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/SlowMotionHal3Module$8;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "exif updated"

    invoke-interface {v1, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 804
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/SlowMotionHal3Module$8;->val$session:Lcom/android/camera/session/CaptureSession;

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v9

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v12, 0x0

    invoke-interface/range {v7 .. v13}, Lcom/android/camera/session/CaptureSession;->saveAndFinish([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 805
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/SlowMotionHal3Module$8;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "saveAndFinish done"

    invoke-interface {v1, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 812
    if-eqz v16, :cond_7

    if-eqz v2, :cond_f

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 818
    :cond_7
    :goto_3
    if-eqz v15, :cond_8

    .line 819
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 821
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/SlowMotionHal3Module$8;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 824
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 807
    .end local v13    # "exif":Lcom/android/camera/exif/ExifInterface;
    :cond_9
    :try_start_3
    invoke-static {}, Lcom/android/camera/SlowMotionHal3Module;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v3, "empty jpegData"

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 808
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/SlowMotionHal3Module$8;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "empty jpegData"

    invoke-interface {v1, v3}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 809
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/SlowMotionHal3Module$8;->val$session:Lcom/android/camera/session/CaptureSession;

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Lcom/android/camera/session/CaptureSession;->finishWithFailure(IZ)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 810
    const/4 v1, 0x0

    .line 812
    if-eqz v16, :cond_a

    if-eqz v2, :cond_d

    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 818
    :cond_a
    :goto_4
    if-eqz v15, :cond_b

    .line 819
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 821
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/SlowMotionHal3Module$8;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    goto/16 :goto_0

    .line 812
    :catch_0
    move-exception v3

    :try_start_5
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .end local v8    # "jpegData":[B
    .end local v16    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v14

    .line 813
    .local v14, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-static {}, Lcom/android/camera/SlowMotionHal3Module;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save picture fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 814
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/SlowMotionHal3Module$8;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 815
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/SlowMotionHal3Module$8;->val$session:Lcom/android/camera/session/CaptureSession;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/camera/session/CaptureSession;->finishWithFailure(IZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 816
    const/4 v1, 0x0

    .line 818
    if-eqz v15, :cond_c

    .line 819
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 821
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/SlowMotionHal3Module$8;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    goto/16 :goto_0

    .line 812
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v8    # "jpegData":[B
    .restart local v16    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_d
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 818
    .end local v8    # "jpegData":[B
    .end local v16    # "stream":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v1

    if-eqz v15, :cond_e

    .line 819
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 821
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/SlowMotionHal3Module$8;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    throw v1

    .line 812
    .restart local v8    # "jpegData":[B
    .restart local v13    # "exif":Lcom/android/camera/exif/ExifInterface;
    .restart local v16    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v1

    :try_start_8
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_f
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_3

    .line 791
    .end local v8    # "jpegData":[B
    .end local v13    # "exif":Lcom/android/camera/exif/ExifInterface;
    :catch_3
    move-exception v1

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 812
    :catchall_1
    move-exception v2

    move-object/from16 v17, v2

    move-object v2, v1

    move-object/from16 v1, v17

    :goto_5
    if-eqz v16, :cond_10

    if-eqz v2, :cond_11

    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_10
    :goto_6
    :try_start_b
    throw v1

    :catch_4
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_11
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_6

    :catchall_2
    move-exception v1

    goto :goto_5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 758
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/SlowMotionHal3Module$8;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$8;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$1200(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/video/VideoFacade;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$8;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/SlowMotionHal3Module;->onReadyStateChanged(Z)V

    .line 832
    :cond_0
    return-void
.end method
