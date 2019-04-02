.class public Lcom/android/camera/PIPImageSaver;
.super Ljava/lang/Thread;
.source "PIPImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PIPImageSaver$SaveRequest;,
        Lcom/android/camera/PIPImageSaver$PIPImageSavedCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static SAVE_QUEUE_LIMIT:I

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static instance:Lcom/android/camera/PIPImageSaver;


# instance fields
.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/PIPImageSaver$SaveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mStop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PIPImageSaver"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/PIPImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/PIPImageSaver;->instance:Lcom/android/camera/PIPImageSaver;

    .line 58
    const v0, 0x7fffffff

    sput v0, Lcom/android/camera/PIPImageSaver;->SAVE_QUEUE_LIMIT:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PIPImageSaver;->mStop:Z

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PIPImageSaver;->mQueue:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {p0}, Lcom/android/camera/PIPImageSaver;->start()V

    .line 93
    return-void
.end method

.method private centerCrop(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "newHeight"    # I
    .param p3, "newWidth"    # I
    .param p4, "isPortrait"    # Z

    .prologue
    const/4 v4, 0x0

    .line 474
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 475
    .local v1, "sourceHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 478
    .local v2, "sourceWidth":I
    if-eqz p4, :cond_1

    move v3, v4

    .line 479
    .local v3, "startX":I
    :goto_0
    if-eqz p4, :cond_0

    sub-int v5, v1, p2

    div-int/lit8 v4, v5, 0x2

    .line 481
    .local v4, "startY":I
    :cond_0
    sget-object v5, Lcom/android/camera/PIPImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "source height: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " width: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " startX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " startY: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " newHeight "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " newWidth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 484
    invoke-static {p1, v3, v4, p3, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 492
    .local v0, "dest":Landroid/graphics/Bitmap;
    return-object v0

    .line 478
    .end local v0    # "dest":Landroid/graphics/Bitmap;
    .end local v3    # "startX":I
    .end local v4    # "startY":I
    :cond_1
    sub-int v5, v2, p3

    div-int/lit8 v3, v5, 0x2

    goto :goto_0
.end method

.method private doBlendProcessAndSaveImage(Lcom/android/camera/PIPImageSaver$SaveRequest;)V
    .locals 25
    .param p1, "request"    # Lcom/android/camera/PIPImageSaver$SaveRequest;

    .prologue
    .line 175
    const/16 v19, 0x0

    .line 176
    .local v19, "result":Landroid/graphics/Bitmap;
    sget-object v4, Lcom/android/camera/PIPImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startBlending star t"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/camera/PIPImageSaver$SaveRequest;->mode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 177
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/camera/PIPImageSaver$SaveRequest;->mode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    sget-object v5, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_FULL_FRONT_SUB:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    if-eq v4, v5, :cond_0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/camera/PIPImageSaver$SaveRequest;->mode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    sget-object v5, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_SUB_FRONT_FULL:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    if-ne v4, v5, :cond_1

    .line 180
    :cond_0
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/camera/PIPImageSaver$SaveRequest;->mainImage:[B

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/camera/PIPImageSaver$SaveRequest;->subImage:[B

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/camera/PIPImageSaver$SaveRequest;->mode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/camera/PIPImageSaver$SaveRequest;->deviceOrientation:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/camera/PIPImageSaver$SaveRequest;->coordinate:Landroid/graphics/RectF;

    move-object/from16 v0, p1

    iget-boolean v10, v0, Lcom/android/camera/PIPImageSaver$SaveRequest;->frontCameraMirror:Z

    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/android/camera/PIPImageSaver$SaveRequest;->is18x9Layout:Z

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/android/camera/PIPImageSaver;->startBlendingFullRatio43([B[BLcom/android/camera/pip/opengl/GLRenderer$PIPMode;ILandroid/graphics/RectF;ZZ)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 185
    :goto_0
    sget-object v4, Lcom/android/camera/PIPImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "startBlending end"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 187
    sget-object v4, Lcom/android/camera/PIPImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "update thumbnail start"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 188
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x8

    .line 189
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x8

    const/4 v7, 0x0

    .line 188
    move-object/from16 v0, v19

    invoke-static {v0, v4, v5, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 190
    .local v22, "thumbnail":Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/camera/PIPImageSaver$SaveRequest;->callback:Lcom/android/camera/PIPImageSaver$PIPImageSavedCallback;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/camera/PIPImageSaver$SaveRequest;->orientation:I

    move-object/from16 v0, v22

    invoke-interface {v4, v5, v0}, Lcom/android/camera/PIPImageSaver$PIPImageSavedCallback;->onThumbnailUpdate(ILandroid/graphics/Bitmap;)V

    .line 191
    sget-object v4, Lcom/android/camera/PIPImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "update thumbnail stop"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 193
    sget-object v4, Lcom/android/camera/PIPImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "transform Bitmap to JPG start"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 194
    new-instance v21, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 195
    .local v21, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 196
    invoke-virtual/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 197
    .local v6, "jpegData":[B
    sget-object v4, Lcom/android/camera/PIPImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "transform Bitmap to JPG end"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 200
    .local v11, "width":I
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 202
    .local v12, "height":I
    invoke-static {v6}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v14

    .line 203
    .local v14, "exif":Lcom/android/camera/exif/ExifInterface;
    sget v4, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/camera/PIPImageSaver$SaveRequest;->orientation:I

    invoke-static {v5}, Lcom/android/camera/exif/ExifInterface;->getOrientationValueForRotation(I)S

    move-result v5

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v20

    .line 204
    .local v20, "rotationTag":Lcom/android/camera/exif/ExifTag;
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 205
    if-le v11, v12, :cond_2

    sget-object v4, Lcom/android/camera/util/ExifUtil;->THUMBNAIL_SIZE:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v24

    .line 206
    .local v24, "thumbnailWidth":I
    :goto_1
    if-le v11, v12, :cond_3

    sget-object v4, Lcom/android/camera/util/ExifUtil;->THUMBNAIL_SIZE:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v23

    .line 207
    .local v23, "thumbnailHeight":I
    :goto_2
    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 208
    .local v17, "exifThumbnail":Landroid/graphics/Bitmap;
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/camera/exif/ExifInterface;->setCompressedThumbnail(Landroid/graphics/Bitmap;)Z

    .line 209
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 211
    sget-object v4, Lcom/android/camera/PIPImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "save image start"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 213
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/camera/PIPImageSaver$SaveRequest;->name:Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-object/from16 v18, v0

    .line 214
    .local v18, "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/camera/PIPImageSaver$SaveRequest;->mediaSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;->setNeedThumbnail(Z)V

    .line 215
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/camera/PIPImageSaver$SaveRequest;->cameraServices:Lcom/android/camera/app/CameraServices;

    invoke-interface {v4}, Lcom/android/camera/app/CameraServices;->getMediaSaver()Lcom/android/camera/app/MediaSaver;

    move-result-object v5

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/camera/PIPImageSaver$SaveRequest;->location:Landroid/location/Location;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/camera/PIPImageSaver$SaveRequest;->orientation:I

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/camera/PIPImageSaver$SaveRequest;->mediaSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    const-string v16, "image/jpeg"

    invoke-interface/range {v5 .. v16}, Lcom/android/camera/app/MediaSaver;->addDualSightImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;Ljava/lang/String;)V

    .line 218
    sget-object v4, Lcom/android/camera/PIPImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "save image end"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 220
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V

    .line 221
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/camera/PIPImageSaver$SaveRequest;->mainImage:[B

    .line 222
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/camera/PIPImageSaver$SaveRequest;->subImage:[B

    .line 223
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/camera/PIPImageSaver$SaveRequest;->callback:Lcom/android/camera/PIPImageSaver$PIPImageSavedCallback;

    invoke-interface {v4, v6}, Lcom/android/camera/PIPImageSaver$PIPImageSavedCallback;->onPictureSaveFinished([B)V

    .line 224
    return-void

    .line 183
    .end local v6    # "jpegData":[B
    .end local v11    # "width":I
    .end local v12    # "height":I
    .end local v14    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v17    # "exifThumbnail":Landroid/graphics/Bitmap;
    .end local v18    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .end local v20    # "rotationTag":Lcom/android/camera/exif/ExifTag;
    .end local v21    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local v22    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v23    # "thumbnailHeight":I
    .end local v24    # "thumbnailWidth":I
    :cond_1
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/camera/PIPImageSaver$SaveRequest;->mainImage:[B

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/camera/PIPImageSaver$SaveRequest;->subImage:[B

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/camera/PIPImageSaver$SaveRequest;->deviceOrientation:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/camera/PIPImageSaver$SaveRequest;->mode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/camera/PIPImageSaver$SaveRequest;->frontCameraMirror:Z

    move-object/from16 v0, p1

    iget-boolean v10, v0, Lcom/android/camera/PIPImageSaver$SaveRequest;->is18x9Layout:Z

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/camera/PIPImageSaver;->startBlendingHalfRatio43([B[BILcom/android/camera/pip/opengl/GLRenderer$PIPMode;ZZ)Landroid/graphics/Bitmap;

    move-result-object v19

    goto/16 :goto_0

    .line 205
    .restart local v6    # "jpegData":[B
    .restart local v11    # "width":I
    .restart local v12    # "height":I
    .restart local v14    # "exif":Lcom/android/camera/exif/ExifInterface;
    .restart local v20    # "rotationTag":Lcom/android/camera/exif/ExifTag;
    .restart local v21    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v22    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_2
    sget-object v4, Lcom/android/camera/util/ExifUtil;->THUMBNAIL_SIZE:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v24

    goto/16 :goto_1

    .line 206
    .restart local v24    # "thumbnailWidth":I
    :cond_3
    sget-object v4, Lcom/android/camera/util/ExifUtil;->THUMBNAIL_SIZE:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v23

    goto/16 :goto_2
.end method

.method public static getInstance()Lcom/android/camera/PIPImageSaver;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/camera/PIPImageSaver;->instance:Lcom/android/camera/PIPImageSaver;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/android/camera/PIPImageSaver;

    invoke-direct {v0}, Lcom/android/camera/PIPImageSaver;-><init>()V

    sput-object v0, Lcom/android/camera/PIPImageSaver;->instance:Lcom/android/camera/PIPImageSaver;

    .line 87
    :cond_0
    sget-object v0, Lcom/android/camera/PIPImageSaver;->instance:Lcom/android/camera/PIPImageSaver;

    return-object v0
.end method

.method private static getResourcesValue(I)F
    .locals 3
    .param p0, "resourceId"    # I

    .prologue
    .line 735
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 736
    .local v0, "typedValue":Landroid/util/TypedValue;
    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 737
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    return v1
.end method

.method private startBlendingFull([B[BLcom/android/camera/pip/opengl/GLRenderer$PIPMode;ILandroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 29
    .param p1, "mainImage"    # [B
    .param p2, "subImage"    # [B
    .param p3, "mode"    # Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;
    .param p4, "orientation"    # I
    .param p5, "rectF"    # Landroid/graphics/RectF;

    .prologue
    .line 498
    const/4 v3, 0x0

    move-object/from16 v0, p1

    array-length v4, v0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 499
    .local v14, "rearBitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    move-object/from16 v0, p2

    array-length v4, v0

    move-object/from16 v0, p2

    invoke-static {v0, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 501
    .local v10, "frontBitmap":Landroid/graphics/Bitmap;
    const/16 v25, 0x0

    .line 502
    .local v25, "targetHeight":I
    const/16 v26, 0x0

    .line 503
    .local v26, "targetWidth":I
    const/16 v24, 0x0

    .line 504
    .local v24, "swap":Z
    sget-object v3, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_FULL_FRONT_SUB:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    move-object/from16 v0, p3

    if-ne v0, v3, :cond_2

    .line 505
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    .line 506
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    .line 513
    :cond_0
    :goto_0
    const v3, 0x7f090205

    invoke-static {v3}, Lcom/android/camera/PIPImageSaver;->getResourcesValue(I)F

    move-result v13

    .line 514
    .local v13, "ratio":F
    move/from16 v0, v26

    int-to-float v3, v0

    mul-float/2addr v3, v13

    float-to-int v0, v3

    move/from16 v19, v0

    .line 515
    .local v19, "scaleWidth":I
    move/from16 v0, v25

    int-to-float v3, v0

    mul-float/2addr v3, v13

    float-to-int v0, v3

    move/from16 v18, v0

    .line 517
    .local v18, "scaleHeight":I
    if-eqz v24, :cond_3

    move/from16 v16, v19

    .line 518
    .local v16, "rearScaleWidth":I
    :goto_1
    if-eqz v24, :cond_4

    move/from16 v15, v18

    .line 519
    .local v15, "rearScaleHeight":I
    :goto_2
    if-eqz v24, :cond_5

    move/from16 v12, v26

    .line 520
    .local v12, "frontScaleWidth":I
    :goto_3
    if-eqz v24, :cond_6

    move/from16 v11, v25

    .line 524
    .local v11, "frontScaleHeight":I
    :goto_4
    if-nez v24, :cond_7

    .line 525
    move-object/from16 v20, v14

    .line 526
    .local v20, "scaledRearBitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    invoke-static {v10, v12, v11, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 535
    .local v2, "unMirrorScaleFrontBitmap":Landroid/graphics/Bitmap;
    :goto_5
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 536
    .local v7, "flipHorizontalMatrix":Landroid/graphics/Matrix;
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 537
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 538
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 539
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    .line 538
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 541
    .local v21, "scaledSubBitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    move/from16 v0, v26

    move/from16 v1, v25

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 542
    .local v17, "result":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 544
    .local v9, "canvas":Landroid/graphics/Canvas;
    const/16 v27, 0x0

    .line 545
    .local v27, "xRatio":F
    const/16 v28, 0x0

    .line 546
    .local v28, "yRatio":F
    sget-object v3, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_0:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    invoke-virtual {v3}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v3

    move/from16 v0, p4

    if-ne v0, v3, :cond_8

    .line 547
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    .line 548
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v28, v0

    .line 561
    :cond_1
    :goto_6
    move/from16 v0, v25

    int-to-float v3, v0

    mul-float v3, v3, v27

    float-to-int v0, v3

    move/from16 v22, v0

    .line 562
    .local v22, "startPointX":I
    move/from16 v0, v26

    int-to-float v3, v0

    mul-float v3, v3, v28

    float-to-int v0, v3

    move/from16 v23, v0

    .line 564
    .local v23, "startPointY":I
    sget-object v3, Lcom/android/camera/PIPImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "orientation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " startPointX "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " startPointY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " targetWidth "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " targetHeight "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 567
    if-eqz v24, :cond_b

    .line 568
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v9, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 569
    move/from16 v0, v23

    int-to-float v3, v0

    move/from16 v0, v22

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 576
    :goto_7
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 577
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 578
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->recycle()V

    .line 579
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 580
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->recycle()V

    .line 582
    return-object v17

    .line 507
    .end local v2    # "unMirrorScaleFrontBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "flipHorizontalMatrix":Landroid/graphics/Matrix;
    .end local v9    # "canvas":Landroid/graphics/Canvas;
    .end local v11    # "frontScaleHeight":I
    .end local v12    # "frontScaleWidth":I
    .end local v13    # "ratio":F
    .end local v15    # "rearScaleHeight":I
    .end local v16    # "rearScaleWidth":I
    .end local v17    # "result":Landroid/graphics/Bitmap;
    .end local v18    # "scaleHeight":I
    .end local v19    # "scaleWidth":I
    .end local v20    # "scaledRearBitmap":Landroid/graphics/Bitmap;
    .end local v21    # "scaledSubBitmap":Landroid/graphics/Bitmap;
    .end local v22    # "startPointX":I
    .end local v23    # "startPointY":I
    .end local v27    # "xRatio":F
    .end local v28    # "yRatio":F
    :cond_2
    sget-object v3, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_SUB_FRONT_FULL:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    move-object/from16 v0, p3

    if-ne v0, v3, :cond_0

    .line 508
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    .line 509
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    .line 510
    const/16 v24, 0x1

    goto/16 :goto_0

    .restart local v13    # "ratio":F
    .restart local v18    # "scaleHeight":I
    .restart local v19    # "scaleWidth":I
    :cond_3
    move/from16 v16, v26

    .line 517
    goto/16 :goto_1

    .restart local v16    # "rearScaleWidth":I
    :cond_4
    move/from16 v15, v25

    .line 518
    goto/16 :goto_2

    .restart local v15    # "rearScaleHeight":I
    :cond_5
    move/from16 v12, v19

    .line 519
    goto/16 :goto_3

    .restart local v12    # "frontScaleWidth":I
    :cond_6
    move/from16 v11, v18

    .line 520
    goto/16 :goto_4

    .line 529
    .restart local v11    # "frontScaleHeight":I
    :cond_7
    const/4 v3, 0x0

    move/from16 v0, v16

    invoke-static {v14, v0, v15, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 531
    .restart local v20    # "scaledRearBitmap":Landroid/graphics/Bitmap;
    move-object v2, v10

    .restart local v2    # "unMirrorScaleFrontBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_5

    .line 549
    .restart local v7    # "flipHorizontalMatrix":Landroid/graphics/Matrix;
    .restart local v9    # "canvas":Landroid/graphics/Canvas;
    .restart local v17    # "result":Landroid/graphics/Bitmap;
    .restart local v21    # "scaledSubBitmap":Landroid/graphics/Bitmap;
    .restart local v27    # "xRatio":F
    .restart local v28    # "yRatio":F
    :cond_8
    sget-object v3, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_90:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    invoke-virtual {v3}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v3

    move/from16 v0, p4

    if-ne v0, v3, :cond_9

    .line 550
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v27, v0

    .line 551
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p5

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v28, v3, v4

    goto/16 :goto_6

    .line 552
    :cond_9
    sget-object v3, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_180:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    invoke-virtual {v3}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v3

    move/from16 v0, p4

    if-ne v0, v3, :cond_a

    .line 553
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p5

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v27, v3, v4

    .line 554
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p5

    iget v4, v0, Landroid/graphics/RectF;->right:F

    sub-float v28, v3, v4

    goto/16 :goto_6

    .line 555
    :cond_a
    sget-object v3, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_270:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    invoke-virtual {v3}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v3

    move/from16 v0, p4

    if-ne v0, v3, :cond_1

    .line 556
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p5

    iget v4, v0, Landroid/graphics/RectF;->right:F

    sub-float v27, v3, v4

    .line 557
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v28, v0

    goto/16 :goto_6

    .line 572
    .restart local v22    # "startPointX":I
    .restart local v23    # "startPointY":I
    :cond_b
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 573
    move/from16 v0, v23

    int-to-float v3, v0

    move/from16 v0, v22

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v9, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_7
.end method

.method private startBlendingFullRatio43([B[BLcom/android/camera/pip/opengl/GLRenderer$PIPMode;ILandroid/graphics/RectF;ZZ)Landroid/graphics/Bitmap;
    .locals 41
    .param p1, "mainImage"    # [B
    .param p2, "subImage"    # [B
    .param p3, "mode"    # Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;
    .param p4, "orientation"    # I
    .param p5, "rectF"    # Landroid/graphics/RectF;
    .param p6, "frontCameraMirror"    # Z
    .param p7, "is18x9Layout"    # Z

    .prologue
    .line 588
    const/4 v5, 0x0

    move-object/from16 v0, p1

    array-length v6, v0

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 589
    .local v24, "rearBitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    move-object/from16 v0, p2

    array-length v6, v0

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 590
    .local v19, "frontBitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-le v5, v6, :cond_2

    const/16 v22, 0x1

    .line 593
    .local v22, "isPortrait":Z
    :goto_0
    if-eqz p7, :cond_3

    const v15, 0x3f2aaaab

    .line 595
    .local v15, "cropRatio":F
    :goto_1
    invoke-static {}, Lcom/android/camera/product_utils/ProductUtil;->isSupportedLib2DRotate()Z

    move-result v35

    .line 596
    .local v35, "supported":Z
    if-eqz v35, :cond_8

    .line 597
    if-eqz v22, :cond_4

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 598
    .local v13, "cropMainHeight":I
    :goto_2
    if-eqz v22, :cond_5

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    .line 599
    .local v17, "cropSubHeight":I
    :goto_3
    if-eqz v22, :cond_6

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v15

    float-to-int v14, v5

    .line 600
    .local v14, "cropMainWidth":I
    :goto_4
    if-eqz v22, :cond_7

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v15

    float-to-int v0, v5

    move/from16 v18, v0

    .line 610
    .local v18, "cropSubWidth":I
    :goto_5
    sget-object v5, Lcom/android/camera/PIPImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cropMainHeight: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cropMainWidth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cropSubHeight: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cropSubWidth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 615
    if-nez v22, :cond_9

    const/4 v5, 0x1

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v13, v14, v5}, Lcom/android/camera/PIPImageSaver;->centerCrop(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 616
    .local v12, "cropMain":Landroid/graphics/Bitmap;
    if-nez v22, :cond_a

    const/4 v5, 0x1

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/camera/PIPImageSaver;->centerCrop(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 618
    .local v16, "cropSub":Landroid/graphics/Bitmap;
    const/16 v37, 0x0

    .line 619
    .local v37, "targetHeight":I
    const/16 v38, 0x0

    .line 620
    .local v38, "targetWidth":I
    const/16 v36, 0x0

    .line 621
    .local v36, "swap":Z
    sget-object v5, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_FULL_FRONT_SUB:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    move-object/from16 v0, p3

    if-ne v0, v5, :cond_b

    .line 622
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v37

    .line 623
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v38

    .line 630
    :cond_0
    :goto_8
    const v5, 0x7f090205

    invoke-static {v5}, Lcom/android/camera/PIPImageSaver;->getResourcesValue(I)F

    move-result v23

    .line 631
    .local v23, "ratio":F
    move/from16 v0, v38

    int-to-float v5, v0

    mul-float v5, v5, v23

    float-to-int v0, v5

    move/from16 v30, v0

    .line 632
    .local v30, "scaleWidth":I
    move/from16 v0, v37

    int-to-float v5, v0

    mul-float v5, v5, v23

    float-to-int v0, v5

    move/from16 v29, v0

    .line 634
    .local v29, "scaleHeight":I
    if-eqz v36, :cond_c

    move/from16 v26, v30

    .line 635
    .local v26, "rearScaleWidth":I
    :goto_9
    if-eqz v36, :cond_d

    move/from16 v25, v29

    .line 636
    .local v25, "rearScaleHeight":I
    :goto_a
    if-eqz v36, :cond_e

    move/from16 v21, v38

    .line 637
    .local v21, "frontScaleWidth":I
    :goto_b
    if-eqz v36, :cond_f

    move/from16 v20, v37

    .line 641
    .local v20, "frontScaleHeight":I
    :goto_c
    if-nez v36, :cond_10

    .line 642
    move-object/from16 v31, v12

    .line 643
    .local v31, "scaledRearBitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-static {v0, v1, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 652
    .local v4, "unMirrorScaleFrontBitmap":Landroid/graphics/Bitmap;
    :goto_d
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 653
    .local v9, "flipHorizontalMatrix":Landroid/graphics/Matrix;
    if-eqz p6, :cond_11

    .line 654
    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v9, v5, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 662
    :goto_e
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v9, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 663
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 664
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x0

    .line 663
    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v32

    .line 666
    .local v32, "scaledSubBitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    move/from16 v0, v38

    move/from16 v1, v37

    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v28

    .line 667
    .local v28, "result":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    move-object/from16 v0, v28

    invoke-direct {v11, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 669
    .local v11, "canvas":Landroid/graphics/Canvas;
    const/16 v39, 0x0

    .line 670
    .local v39, "xRatio":F
    const/16 v40, 0x0

    .line 674
    .local v40, "yRatio":F
    if-eqz v35, :cond_17

    .line 675
    sget-object v5, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_0:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    invoke-virtual {v5}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v5

    move/from16 v0, p4

    if-ne v0, v5, :cond_14

    .line 676
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v39, v0

    .line 677
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v40, v0

    .line 688
    :cond_1
    :goto_f
    move/from16 v0, v37

    int-to-float v5, v0

    mul-float v5, v5, v39

    float-to-int v0, v5

    move/from16 v33, v0

    .line 689
    .local v33, "startPointX":I
    move/from16 v0, v38

    int-to-float v5, v0

    mul-float v5, v5, v40

    float-to-int v0, v5

    move/from16 v34, v0

    .line 697
    .local v34, "startPointY":I
    :goto_10
    sget-object v5, Lcom/android/camera/PIPImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "orientation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " startPointX "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " startPointY "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " targetWidth "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " targetHeight "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 700
    if-eqz v36, :cond_18

    .line 701
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v11, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 702
    move/from16 v0, v34

    int-to-float v5, v0

    move/from16 v0, v33

    int-to-float v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v11, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 710
    :goto_11
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 711
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 712
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->recycle()V

    .line 713
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V

    .line 714
    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Bitmap;->recycle()V

    .line 715
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 716
    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Bitmap;->recycle()V

    .line 718
    return-object v28

    .line 590
    .end local v4    # "unMirrorScaleFrontBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "flipHorizontalMatrix":Landroid/graphics/Matrix;
    .end local v11    # "canvas":Landroid/graphics/Canvas;
    .end local v12    # "cropMain":Landroid/graphics/Bitmap;
    .end local v13    # "cropMainHeight":I
    .end local v14    # "cropMainWidth":I
    .end local v15    # "cropRatio":F
    .end local v16    # "cropSub":Landroid/graphics/Bitmap;
    .end local v17    # "cropSubHeight":I
    .end local v18    # "cropSubWidth":I
    .end local v20    # "frontScaleHeight":I
    .end local v21    # "frontScaleWidth":I
    .end local v22    # "isPortrait":Z
    .end local v23    # "ratio":F
    .end local v25    # "rearScaleHeight":I
    .end local v26    # "rearScaleWidth":I
    .end local v28    # "result":Landroid/graphics/Bitmap;
    .end local v29    # "scaleHeight":I
    .end local v30    # "scaleWidth":I
    .end local v31    # "scaledRearBitmap":Landroid/graphics/Bitmap;
    .end local v32    # "scaledSubBitmap":Landroid/graphics/Bitmap;
    .end local v33    # "startPointX":I
    .end local v34    # "startPointY":I
    .end local v35    # "supported":Z
    .end local v36    # "swap":Z
    .end local v37    # "targetHeight":I
    .end local v38    # "targetWidth":I
    .end local v39    # "xRatio":F
    .end local v40    # "yRatio":F
    :cond_2
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 593
    .restart local v22    # "isPortrait":Z
    :cond_3
    const/high16 v15, 0x3f400000    # 0.75f

    goto/16 :goto_1

    .line 597
    .restart local v15    # "cropRatio":F
    .restart local v35    # "supported":Z
    :cond_4
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v15

    float-to-int v13, v5

    goto/16 :goto_2

    .line 598
    .restart local v13    # "cropMainHeight":I
    :cond_5
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v15

    float-to-int v0, v5

    move/from16 v17, v0

    goto/16 :goto_3

    .line 599
    .restart local v17    # "cropSubHeight":I
    :cond_6
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    goto/16 :goto_4

    .line 600
    .restart local v14    # "cropMainWidth":I
    :cond_7
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    goto/16 :goto_5

    .line 602
    .end local v13    # "cropMainHeight":I
    .end local v14    # "cropMainWidth":I
    .end local v17    # "cropSubHeight":I
    :cond_8
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v15

    float-to-int v13, v5

    .line 603
    .restart local v13    # "cropMainHeight":I
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v15

    float-to-int v0, v5

    move/from16 v17, v0

    .line 604
    .restart local v17    # "cropSubHeight":I
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 605
    .restart local v14    # "cropMainWidth":I
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    .line 606
    .restart local v18    # "cropSubWidth":I
    const/16 v22, 0x0

    goto/16 :goto_5

    .line 615
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 616
    .restart local v12    # "cropMain":Landroid/graphics/Bitmap;
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 624
    .restart local v16    # "cropSub":Landroid/graphics/Bitmap;
    .restart local v36    # "swap":Z
    .restart local v37    # "targetHeight":I
    .restart local v38    # "targetWidth":I
    :cond_b
    sget-object v5, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_SUB_FRONT_FULL:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    move-object/from16 v0, p3

    if-ne v0, v5, :cond_0

    .line 625
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v37

    .line 626
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v38

    .line 627
    const/16 v36, 0x1

    goto/16 :goto_8

    .restart local v23    # "ratio":F
    .restart local v29    # "scaleHeight":I
    .restart local v30    # "scaleWidth":I
    :cond_c
    move/from16 v26, v38

    .line 634
    goto/16 :goto_9

    .restart local v26    # "rearScaleWidth":I
    :cond_d
    move/from16 v25, v37

    .line 635
    goto/16 :goto_a

    .restart local v25    # "rearScaleHeight":I
    :cond_e
    move/from16 v21, v30

    .line 636
    goto/16 :goto_b

    .restart local v21    # "frontScaleWidth":I
    :cond_f
    move/from16 v20, v29

    .line 637
    goto/16 :goto_c

    .line 646
    .restart local v20    # "frontScaleHeight":I
    :cond_10
    const/4 v5, 0x0

    move/from16 v0, v26

    move/from16 v1, v25

    invoke-static {v12, v0, v1, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v31

    .line 648
    .restart local v31    # "scaledRearBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v4, v16

    .restart local v4    # "unMirrorScaleFrontBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_d

    .line 656
    .restart local v9    # "flipHorizontalMatrix":Landroid/graphics/Matrix;
    :cond_11
    if-nez v35, :cond_12

    const/16 v5, 0x5a

    move/from16 v0, p4

    if-eq v0, v5, :cond_12

    const/16 v5, 0x10e

    move/from16 v0, p4

    if-ne v0, v5, :cond_13

    .line 657
    :cond_12
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v9, v5, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    goto/16 :goto_e

    .line 659
    :cond_13
    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v9, v5, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    goto/16 :goto_e

    .line 678
    .restart local v11    # "canvas":Landroid/graphics/Canvas;
    .restart local v28    # "result":Landroid/graphics/Bitmap;
    .restart local v32    # "scaledSubBitmap":Landroid/graphics/Bitmap;
    .restart local v39    # "xRatio":F
    .restart local v40    # "yRatio":F
    :cond_14
    sget-object v5, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_90:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    invoke-virtual {v5}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v5

    move/from16 v0, p4

    if-ne v0, v5, :cond_15

    .line 679
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v39, v0

    .line 680
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p5

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v40, v5, v6

    goto/16 :goto_f

    .line 681
    :cond_15
    sget-object v5, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_180:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    invoke-virtual {v5}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v5

    move/from16 v0, p4

    if-ne v0, v5, :cond_16

    .line 682
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p5

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v39, v5, v6

    .line 683
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p5

    iget v6, v0, Landroid/graphics/RectF;->right:F

    sub-float v40, v5, v6

    goto/16 :goto_f

    .line 684
    :cond_16
    sget-object v5, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_270:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    invoke-virtual {v5}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v5

    move/from16 v0, p4

    if-ne v0, v5, :cond_1

    .line 685
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p5

    iget v6, v0, Landroid/graphics/RectF;->right:F

    sub-float v39, v5, v6

    .line 686
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v40, v0

    goto/16 :goto_f

    .line 691
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/camera/PIPImageSaver;->transformPoint(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v27

    .line 692
    .local v27, "rect":Landroid/graphics/RectF;
    move-object/from16 v0, v27

    iget v5, v0, Landroid/graphics/RectF;->left:F

    move/from16 v0, v38

    int-to-float v6, v0

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v34, v0

    .line 693
    .restart local v34    # "startPointY":I
    move-object/from16 v0, v27

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v0, v37

    int-to-float v6, v0

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v33, v0

    .restart local v33    # "startPointX":I
    goto/16 :goto_10

    .line 705
    .end local v27    # "rect":Landroid/graphics/RectF;
    :cond_18
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v11, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 706
    move/from16 v0, v34

    int-to-float v5, v0

    move/from16 v0, v33

    int-to-float v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v11, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_11
.end method

.method private startBlendingHalf([B[BLcom/android/camera/pip/opengl/GLRenderer$PIPMode;I)Landroid/graphics/Bitmap;
    .locals 40
    .param p1, "mainImage"    # [B
    .param p2, "subImage"    # [B
    .param p3, "mode"    # Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;
    .param p4, "orientation"    # I

    .prologue
    .line 352
    const/4 v7, 0x0

    move-object/from16 v0, p1

    array-length v8, v0

    move-object/from16 v0, p1

    invoke-static {v0, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 353
    .local v26, "rearBitmap":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    move-object/from16 v0, p2

    array-length v8, v0

    move-object/from16 v0, p2

    invoke-static {v0, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 359
    .local v21, "frontBitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    mul-int/2addr v8, v9

    if-lt v7, v8, :cond_1

    .line 360
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v35

    .line 361
    .local v35, "targetHeight":I
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v36

    .line 367
    .local v36, "targetWidth":I
    :goto_0
    sget-object v7, Lcom/android/camera/PIPImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "targetHeight: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " targetWidth: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 368
    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_2

    const/16 v23, 0x1

    .line 369
    .local v23, "isPortrait":Z
    :goto_1
    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_3

    move/from16 v0, v35

    int-to-float v7, v0

    move/from16 v0, v36

    int-to-float v8, v0

    div-float v25, v7, v8

    .line 370
    .local v25, "ratio":F
    :goto_2
    const v7, 0x3faaaaab

    sub-float v7, v25, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v8, v7

    const-wide v38, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v7, v8, v38

    if-gez v7, :cond_4

    const/16 v24, 0x1

    .line 377
    .local v24, "isRatio43":Z
    :goto_3
    if-eqz v24, :cond_7

    .line 379
    const/16 v22, 0x0

    .line 380
    .local v22, "halfRatio":F
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 381
    .local v15, "cropMainHeight":I
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 382
    .local v18, "cropSubHeight":I
    if-eqz v23, :cond_5

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 383
    .local v16, "cropMainWidth":I
    :goto_4
    if-eqz v23, :cond_6

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    .line 394
    .local v19, "cropSubWidth":I
    :goto_5
    sget-object v7, Lcom/android/camera/PIPImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cropMainHeight: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cropMainWidth: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cropSubHeight: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cropSubWidth: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 397
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v16

    move/from16 v3, v23

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/android/camera/PIPImageSaver;->centerCrop(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 398
    .local v14, "cropMain":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/PIPImageSaver;->centerCrop(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 399
    .local v17, "cropSub":Landroid/graphics/Bitmap;
    sget-object v7, Lcom/android/camera/PIPImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "After cropMainHeight: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cropMainWidth: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 400
    sget-object v7, Lcom/android/camera/PIPImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "After cropSubHeight: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cropSubWidth: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 415
    if-eqz v23, :cond_c

    move/from16 v32, v36

    .line 416
    .local v32, "scaleWidth":I
    :goto_6
    if-eqz v23, :cond_d

    div-int/lit8 v29, v35, 0x2

    .line 418
    .local v29, "scaleHeight":I
    :goto_7
    sget-object v7, Lcom/android/camera/PIPImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "scaleWidth: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v32

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " scaleHeight: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 419
    const/4 v7, 0x0

    move/from16 v0, v32

    move/from16 v1, v29

    invoke-static {v14, v0, v1, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v30

    .line 421
    .local v30, "scaleMainBitmap":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v32

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 423
    .local v6, "unMirrorScaleSubBitmap":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 424
    .local v11, "flipHorizontalMatrix":Landroid/graphics/Matrix;
    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v11, v7, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 425
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-virtual {v11, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 426
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 427
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v12, 0x0

    .line 426
    invoke-static/range {v6 .. v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v31

    .line 429
    .local v31, "scaleSubBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 430
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 431
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 448
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    move/from16 v0, v36

    move/from16 v1, v35

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v28

    .line 449
    .local v28, "result":Landroid/graphics/Bitmap;
    new-instance v13, Landroid/graphics/Canvas;

    move-object/from16 v0, v28

    invoke-direct {v13, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 450
    .local v13, "canvas":Landroid/graphics/Canvas;
    sget-object v7, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_DOWN_FRONT_UP:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    move-object/from16 v0, p3

    if-ne v0, v7, :cond_e

    const/16 v27, 0x1

    .line 451
    .local v27, "rearDown":Z
    :goto_8
    if-eqz v27, :cond_f

    move-object/from16 v20, v30

    .line 452
    .local v20, "downImage":Landroid/graphics/Bitmap;
    :goto_9
    if-eqz v27, :cond_10

    move-object/from16 v37, v31

    .line 454
    .local v37, "upperImage":Landroid/graphics/Bitmap;
    :goto_a
    if-eqz v23, :cond_11

    const/16 v33, 0x0

    .line 455
    .local v33, "subStartX":I
    :goto_b
    if-eqz v23, :cond_12

    div-int/lit8 v34, v35, 0x2

    .line 457
    .local v34, "subStartY":I
    :goto_c
    sget-object v7, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_0:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    invoke-virtual {v7}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v7

    move/from16 v0, p4

    if-eq v0, v7, :cond_0

    sget-object v7, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_270:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .line 458
    invoke-virtual {v7}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v7

    move/from16 v0, p4

    if-ne v0, v7, :cond_13

    .line 459
    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v13, v0, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 460
    move/from16 v0, v33

    int-to-float v7, v0

    move/from16 v0, v34

    int-to-float v8, v0

    const/4 v9, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 466
    :goto_d
    const/16 v37, 0x0

    .line 467
    const/16 v20, 0x0

    .line 468
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Bitmap;->recycle()V

    .line 469
    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Bitmap;->recycle()V

    .line 470
    return-object v28

    .line 363
    .end local v6    # "unMirrorScaleSubBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "flipHorizontalMatrix":Landroid/graphics/Matrix;
    .end local v13    # "canvas":Landroid/graphics/Canvas;
    .end local v14    # "cropMain":Landroid/graphics/Bitmap;
    .end local v15    # "cropMainHeight":I
    .end local v16    # "cropMainWidth":I
    .end local v17    # "cropSub":Landroid/graphics/Bitmap;
    .end local v18    # "cropSubHeight":I
    .end local v19    # "cropSubWidth":I
    .end local v20    # "downImage":Landroid/graphics/Bitmap;
    .end local v22    # "halfRatio":F
    .end local v23    # "isPortrait":Z
    .end local v24    # "isRatio43":Z
    .end local v25    # "ratio":F
    .end local v27    # "rearDown":Z
    .end local v28    # "result":Landroid/graphics/Bitmap;
    .end local v29    # "scaleHeight":I
    .end local v30    # "scaleMainBitmap":Landroid/graphics/Bitmap;
    .end local v31    # "scaleSubBitmap":Landroid/graphics/Bitmap;
    .end local v32    # "scaleWidth":I
    .end local v33    # "subStartX":I
    .end local v34    # "subStartY":I
    .end local v35    # "targetHeight":I
    .end local v36    # "targetWidth":I
    .end local v37    # "upperImage":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v35

    .line 364
    .restart local v35    # "targetHeight":I
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v36

    .restart local v36    # "targetWidth":I
    goto/16 :goto_0

    .line 368
    :cond_2
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 369
    .restart local v23    # "isPortrait":Z
    :cond_3
    move/from16 v0, v36

    int-to-float v7, v0

    move/from16 v0, v35

    int-to-float v8, v0

    div-float v25, v7, v8

    goto/16 :goto_2

    .line 370
    .restart local v25    # "ratio":F
    :cond_4
    const/16 v24, 0x0

    goto/16 :goto_3

    .line 382
    .restart local v15    # "cropMainHeight":I
    .restart local v18    # "cropSubHeight":I
    .restart local v22    # "halfRatio":F
    .restart local v24    # "isRatio43":Z
    :cond_5
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x0

    mul-float/2addr v7, v8

    float-to-int v0, v7

    move/from16 v16, v0

    goto/16 :goto_4

    .line 383
    .restart local v16    # "cropMainWidth":I
    :cond_6
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x0

    mul-float/2addr v7, v8

    float-to-int v0, v7

    move/from16 v19, v0

    goto/16 :goto_5

    .line 386
    .end local v15    # "cropMainHeight":I
    .end local v16    # "cropMainWidth":I
    .end local v18    # "cropSubHeight":I
    .end local v22    # "halfRatio":F
    :cond_7
    const v22, 0x3f638e39

    .line 387
    .restart local v22    # "halfRatio":F
    if-eqz v23, :cond_8

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3f638e39

    mul-float/2addr v7, v8

    float-to-int v15, v7

    .line 388
    .restart local v15    # "cropMainHeight":I
    :goto_e
    if-eqz v23, :cond_9

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3f638e39

    mul-float/2addr v7, v8

    float-to-int v0, v7

    move/from16 v18, v0

    .line 389
    .restart local v18    # "cropSubHeight":I
    :goto_f
    if-eqz v23, :cond_a

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 390
    .restart local v16    # "cropMainWidth":I
    :goto_10
    if-eqz v23, :cond_b

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    .restart local v19    # "cropSubWidth":I
    :goto_11
    goto/16 :goto_5

    .line 387
    .end local v15    # "cropMainHeight":I
    .end local v16    # "cropMainWidth":I
    .end local v18    # "cropSubHeight":I
    .end local v19    # "cropSubWidth":I
    :cond_8
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    goto :goto_e

    .line 388
    .restart local v15    # "cropMainHeight":I
    :cond_9
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    goto :goto_f

    .line 389
    .restart local v18    # "cropSubHeight":I
    :cond_a
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3f638e39

    mul-float/2addr v7, v8

    float-to-int v0, v7

    move/from16 v16, v0

    goto :goto_10

    .line 390
    .restart local v16    # "cropMainWidth":I
    :cond_b
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3f638e39

    mul-float/2addr v7, v8

    float-to-int v0, v7

    move/from16 v19, v0

    goto :goto_11

    .line 415
    .restart local v14    # "cropMain":Landroid/graphics/Bitmap;
    .restart local v17    # "cropSub":Landroid/graphics/Bitmap;
    .restart local v19    # "cropSubWidth":I
    :cond_c
    div-int/lit8 v32, v36, 0x2

    goto/16 :goto_6

    .restart local v32    # "scaleWidth":I
    :cond_d
    move/from16 v29, v35

    .line 416
    goto/16 :goto_7

    .line 450
    .restart local v6    # "unMirrorScaleSubBitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "flipHorizontalMatrix":Landroid/graphics/Matrix;
    .restart local v13    # "canvas":Landroid/graphics/Canvas;
    .restart local v28    # "result":Landroid/graphics/Bitmap;
    .restart local v29    # "scaleHeight":I
    .restart local v30    # "scaleMainBitmap":Landroid/graphics/Bitmap;
    .restart local v31    # "scaleSubBitmap":Landroid/graphics/Bitmap;
    :cond_e
    const/16 v27, 0x0

    goto/16 :goto_8

    .restart local v27    # "rearDown":Z
    :cond_f
    move-object/from16 v20, v31

    .line 451
    goto/16 :goto_9

    .restart local v20    # "downImage":Landroid/graphics/Bitmap;
    :cond_10
    move-object/from16 v37, v30

    .line 452
    goto/16 :goto_a

    .line 454
    .restart local v37    # "upperImage":Landroid/graphics/Bitmap;
    :cond_11
    div-int/lit8 v33, v36, 0x2

    goto/16 :goto_b

    .line 455
    .restart local v33    # "subStartX":I
    :cond_12
    const/16 v34, 0x0

    goto/16 :goto_c

    .line 462
    .restart local v34    # "subStartY":I
    :cond_13
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 463
    move/from16 v0, v33

    int-to-float v7, v0

    move/from16 v0, v34

    int-to-float v8, v0

    const/4 v9, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v13, v0, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_d
.end method

.method private startBlendingHalfRatio43([B[BILcom/android/camera/pip/opengl/GLRenderer$PIPMode;ZZ)Landroid/graphics/Bitmap;
    .locals 38
    .param p1, "mainImage"    # [B
    .param p2, "subImage"    # [B
    .param p3, "orientation"    # I
    .param p4, "mode"    # Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;
    .param p5, "frontCameraMirror"    # Z
    .param p6, "is18x9Layout"    # Z

    .prologue
    .line 228
    const/4 v6, 0x0

    move-object/from16 v0, p1

    array-length v7, v0

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 229
    .local v25, "rearBitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    move-object/from16 v0, p2

    array-length v7, v0

    move-object/from16 v0, p2

    invoke-static {v0, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 235
    .local v22, "frontBitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    mul-int/2addr v7, v8

    if-lt v6, v7, :cond_1

    .line 236
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v35

    .line 237
    .local v35, "targetHeight":I
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v36

    .line 243
    .local v36, "targetWidth":I
    :goto_0
    sget-object v6, Lcom/android/camera/PIPImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "targetHeight: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v35

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " targetWidth: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 245
    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_2

    const/16 v24, 0x1

    .line 248
    .local v24, "isPortrait":Z
    :goto_1
    if-eqz p6, :cond_3

    const/high16 v23, 0x3f400000    # 0.75f

    .line 249
    .local v23, "halfRatio":F
    :goto_2
    if-eqz v24, :cond_4

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v23

    float-to-int v14, v6

    .line 250
    .local v14, "cropMainHeight":I
    :goto_3
    if-eqz v24, :cond_5

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v23

    float-to-int v0, v6

    move/from16 v17, v0

    .line 251
    .local v17, "cropSubHeight":I
    :goto_4
    if-eqz v24, :cond_6

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    .line 252
    .local v15, "cropMainWidth":I
    :goto_5
    if-eqz v24, :cond_7

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    .line 256
    .local v18, "cropSubWidth":I
    :goto_6
    sget-object v6, Lcom/android/camera/PIPImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cropMainHeight: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cropMainWidth: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cropSubHeight: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cropSubWidth: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 259
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v24

    invoke-direct {v0, v1, v14, v15, v2}, Lcom/android/camera/PIPImageSaver;->centerCrop(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 260
    .local v13, "cropMain":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/PIPImageSaver;->centerCrop(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 261
    .local v16, "cropSub":Landroid/graphics/Bitmap;
    sget-object v6, Lcom/android/camera/PIPImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "After cropMainHeight: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cropMainWidth: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 262
    sget-object v6, Lcom/android/camera/PIPImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "After cropSubHeight: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cropSubWidth: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 277
    if-eqz v24, :cond_8

    move/from16 v31, v36

    .line 278
    .local v31, "scaleWidth":I
    :goto_7
    if-eqz v24, :cond_9

    move/from16 v0, v35

    int-to-float v6, v0

    mul-float v6, v6, v23

    float-to-int v0, v6

    move/from16 v28, v0

    .line 280
    .local v28, "scaleHeight":I
    :goto_8
    if-eqz v24, :cond_a

    move/from16 v21, v36

    .line 281
    .local v21, "finalWidth":I
    :goto_9
    if-eqz v24, :cond_b

    mul-int/lit8 v20, v28, 0x2

    .line 283
    .local v20, "finalHeight":I
    :goto_a
    sget-object v6, Lcom/android/camera/PIPImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "scaleWidth: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " scaleHeight: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 284
    const/4 v6, 0x0

    move/from16 v0, v31

    move/from16 v1, v28

    invoke-static {v13, v0, v1, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v29

    .line 286
    .local v29, "scaleMainBitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v31

    move/from16 v2, v28

    invoke-static {v0, v1, v2, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 288
    .local v5, "unMirrorScaleSubBitmap":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 289
    .local v10, "flipHorizontalMatrix":Landroid/graphics/Matrix;
    invoke-static {}, Lcom/android/camera/product_utils/ProductUtil;->isSupportedLib2DRotate()Z

    move-result v34

    .line 290
    .local v34, "supported":Z
    if-eqz p5, :cond_c

    .line 291
    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v10, v6, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 299
    :goto_b
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {v10, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 300
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 301
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v11, 0x0

    .line 300
    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v30

    .line 303
    .local v30, "scaleSubBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 304
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 305
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 322
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 323
    .local v27, "result":Landroid/graphics/Bitmap;
    new-instance v12, Landroid/graphics/Canvas;

    move-object/from16 v0, v27

    invoke-direct {v12, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 324
    .local v12, "canvas":Landroid/graphics/Canvas;
    sget-object v6, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_DOWN_FRONT_UP:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    move-object/from16 v0, p4

    if-ne v0, v6, :cond_f

    const/16 v26, 0x1

    .line 325
    .local v26, "rearDown":Z
    :goto_c
    if-eqz v26, :cond_10

    move-object/from16 v19, v29

    .line 326
    .local v19, "downImage":Landroid/graphics/Bitmap;
    :goto_d
    if-eqz v26, :cond_11

    move-object/from16 v37, v30

    .line 327
    .local v37, "upperImage":Landroid/graphics/Bitmap;
    :goto_e
    if-eqz v24, :cond_12

    const/16 v32, 0x0

    .line 328
    .local v32, "subStartX":I
    :goto_f
    if-eqz v24, :cond_13

    div-int/lit8 v33, v20, 0x2

    .line 330
    .local v33, "subStartY":I
    :goto_10
    if-eqz v34, :cond_15

    .line 331
    sget-object v6, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_0:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    invoke-virtual {v6}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v6

    move/from16 v0, p3

    if-eq v0, v6, :cond_0

    sget-object v6, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_270:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    invoke-virtual {v6}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v6

    move/from16 v0, p3

    if-ne v0, v6, :cond_14

    .line 332
    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v12, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 333
    move/from16 v0, v32

    int-to-float v6, v0

    move/from16 v0, v33

    int-to-float v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 343
    :goto_11
    const/16 v37, 0x0

    .line 344
    const/16 v19, 0x0

    .line 345
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->recycle()V

    .line 346
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Bitmap;->recycle()V

    .line 347
    return-object v27

    .line 239
    .end local v5    # "unMirrorScaleSubBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "flipHorizontalMatrix":Landroid/graphics/Matrix;
    .end local v12    # "canvas":Landroid/graphics/Canvas;
    .end local v13    # "cropMain":Landroid/graphics/Bitmap;
    .end local v14    # "cropMainHeight":I
    .end local v15    # "cropMainWidth":I
    .end local v16    # "cropSub":Landroid/graphics/Bitmap;
    .end local v17    # "cropSubHeight":I
    .end local v18    # "cropSubWidth":I
    .end local v19    # "downImage":Landroid/graphics/Bitmap;
    .end local v20    # "finalHeight":I
    .end local v21    # "finalWidth":I
    .end local v23    # "halfRatio":F
    .end local v24    # "isPortrait":Z
    .end local v26    # "rearDown":Z
    .end local v27    # "result":Landroid/graphics/Bitmap;
    .end local v28    # "scaleHeight":I
    .end local v29    # "scaleMainBitmap":Landroid/graphics/Bitmap;
    .end local v30    # "scaleSubBitmap":Landroid/graphics/Bitmap;
    .end local v31    # "scaleWidth":I
    .end local v32    # "subStartX":I
    .end local v33    # "subStartY":I
    .end local v34    # "supported":Z
    .end local v35    # "targetHeight":I
    .end local v36    # "targetWidth":I
    .end local v37    # "upperImage":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v35

    .line 240
    .restart local v35    # "targetHeight":I
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v36

    .restart local v36    # "targetWidth":I
    goto/16 :goto_0

    .line 245
    :cond_2
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 248
    .restart local v24    # "isPortrait":Z
    :cond_3
    const v23, 0x3f2aaaab

    goto/16 :goto_2

    .line 249
    .restart local v23    # "halfRatio":F
    :cond_4
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    goto/16 :goto_3

    .line 250
    .restart local v14    # "cropMainHeight":I
    :cond_5
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    goto/16 :goto_4

    .line 251
    .restart local v17    # "cropSubHeight":I
    :cond_6
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v23

    float-to-int v15, v6

    goto/16 :goto_5

    .line 252
    .restart local v15    # "cropMainWidth":I
    :cond_7
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v23

    float-to-int v0, v6

    move/from16 v18, v0

    goto/16 :goto_6

    .line 277
    .restart local v13    # "cropMain":Landroid/graphics/Bitmap;
    .restart local v16    # "cropSub":Landroid/graphics/Bitmap;
    .restart local v18    # "cropSubWidth":I
    :cond_8
    move/from16 v0, v36

    int-to-float v6, v0

    mul-float v6, v6, v23

    float-to-int v0, v6

    move/from16 v31, v0

    goto/16 :goto_7

    .restart local v31    # "scaleWidth":I
    :cond_9
    move/from16 v28, v35

    .line 278
    goto/16 :goto_8

    .line 280
    .restart local v28    # "scaleHeight":I
    :cond_a
    mul-int/lit8 v21, v31, 0x2

    goto/16 :goto_9

    .restart local v21    # "finalWidth":I
    :cond_b
    move/from16 v20, v35

    .line 281
    goto/16 :goto_a

    .line 293
    .restart local v5    # "unMirrorScaleSubBitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "flipHorizontalMatrix":Landroid/graphics/Matrix;
    .restart local v20    # "finalHeight":I
    .restart local v29    # "scaleMainBitmap":Landroid/graphics/Bitmap;
    .restart local v34    # "supported":Z
    :cond_c
    if-nez v34, :cond_d

    const/16 v6, 0x5a

    move/from16 v0, p3

    if-eq v0, v6, :cond_d

    const/16 v6, 0x10e

    move/from16 v0, p3

    if-ne v0, v6, :cond_e

    .line 294
    :cond_d
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v10, v6, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    goto/16 :goto_b

    .line 296
    :cond_e
    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual {v10, v6, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    goto/16 :goto_b

    .line 324
    .restart local v12    # "canvas":Landroid/graphics/Canvas;
    .restart local v27    # "result":Landroid/graphics/Bitmap;
    .restart local v30    # "scaleSubBitmap":Landroid/graphics/Bitmap;
    :cond_f
    const/16 v26, 0x0

    goto/16 :goto_c

    .restart local v26    # "rearDown":Z
    :cond_10
    move-object/from16 v19, v30

    .line 325
    goto/16 :goto_d

    .restart local v19    # "downImage":Landroid/graphics/Bitmap;
    :cond_11
    move-object/from16 v37, v29

    .line 326
    goto/16 :goto_e

    .line 327
    .restart local v37    # "upperImage":Landroid/graphics/Bitmap;
    :cond_12
    div-int/lit8 v32, v21, 0x2

    goto/16 :goto_f

    .line 328
    .restart local v32    # "subStartX":I
    :cond_13
    const/16 v33, 0x0

    goto/16 :goto_10

    .line 335
    .restart local v33    # "subStartY":I
    :cond_14
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 336
    move/from16 v0, v32

    int-to-float v6, v0

    move/from16 v0, v33

    int-to-float v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v12, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_11

    .line 339
    :cond_15
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v12, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 340
    move/from16 v0, v32

    int-to-float v6, v0

    move/from16 v0, v33

    int-to-float v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_11
.end method

.method private transformPoint(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 6
    .param p1, "rectFromGL"    # Landroid/graphics/RectF;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 730
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float v2, v5, v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    sub-float v4, v5, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 731
    .local v0, "rectInPic":Landroid/graphics/RectF;
    return-object v0
.end method


# virtual methods
.method public addPIPImage([B[BLcom/android/camera/pip/opengl/GLRenderer$PIPMode;IILcom/android/camera/PIPImageSaver$PIPImageSavedCallback;Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;Lcom/android/camera/app/CameraServices;Landroid/location/Location;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;JLandroid/graphics/RectF;ZZ)V
    .locals 7
    .param p1, "mainImage"    # [B
    .param p2, "subImage"    # [B
    .param p3, "mode"    # Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;
    .param p4, "orientation"    # I
    .param p5, "deviceOrientation"    # I
    .param p6, "callback"    # Lcom/android/camera/PIPImageSaver$PIPImageSavedCallback;
    .param p7, "name"    # Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .param p8, "services"    # Lcom/android/camera/app/CameraServices;
    .param p9, "location"    # Landroid/location/Location;
    .param p10, "mediaSavedListener"    # Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;
    .param p11, "captureStartTime"    # J
    .param p13, "coordinate"    # Landroid/graphics/RectF;
    .param p14, "frontCameraMirror"    # Z
    .param p15, "is18x9Layout"    # Z

    .prologue
    .line 101
    new-instance v2, Lcom/android/camera/PIPImageSaver$SaveRequest;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/camera/PIPImageSaver$SaveRequest;-><init>(Lcom/android/camera/PIPImageSaver$1;)V

    .line 102
    .local v2, "r":Lcom/android/camera/PIPImageSaver$SaveRequest;
    iput-object p1, v2, Lcom/android/camera/PIPImageSaver$SaveRequest;->mainImage:[B

    .line 103
    iput-object p2, v2, Lcom/android/camera/PIPImageSaver$SaveRequest;->subImage:[B

    .line 104
    iput-object p3, v2, Lcom/android/camera/PIPImageSaver$SaveRequest;->mode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    .line 105
    iput p4, v2, Lcom/android/camera/PIPImageSaver$SaveRequest;->orientation:I

    .line 106
    iput p5, v2, Lcom/android/camera/PIPImageSaver$SaveRequest;->deviceOrientation:I

    .line 107
    iput-object p6, v2, Lcom/android/camera/PIPImageSaver$SaveRequest;->callback:Lcom/android/camera/PIPImageSaver$PIPImageSavedCallback;

    .line 108
    iput-object p7, v2, Lcom/android/camera/PIPImageSaver$SaveRequest;->name:Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    .line 109
    iput-object p8, v2, Lcom/android/camera/PIPImageSaver$SaveRequest;->cameraServices:Lcom/android/camera/app/CameraServices;

    .line 110
    move-object/from16 v0, p9

    iput-object v0, v2, Lcom/android/camera/PIPImageSaver$SaveRequest;->location:Landroid/location/Location;

    .line 111
    move-object/from16 v0, p10

    iput-object v0, v2, Lcom/android/camera/PIPImageSaver$SaveRequest;->mediaSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    .line 112
    move-wide/from16 v0, p11

    iput-wide v0, v2, Lcom/android/camera/PIPImageSaver$SaveRequest;->captureStartTime:J

    .line 113
    move-object/from16 v0, p13

    iput-object v0, v2, Lcom/android/camera/PIPImageSaver$SaveRequest;->coordinate:Landroid/graphics/RectF;

    .line 114
    move/from16 v0, p14

    iput-boolean v0, v2, Lcom/android/camera/PIPImageSaver$SaveRequest;->frontCameraMirror:Z

    .line 115
    move/from16 v0, p15

    iput-boolean v0, v2, Lcom/android/camera/PIPImageSaver$SaveRequest;->is18x9Layout:Z

    .line 117
    monitor-enter p0

    .line 118
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/PIPImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sget v4, Lcom/android/camera/PIPImageSaver;->SAVE_QUEUE_LIMIT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v3, v4, :cond_0

    .line 120
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v3

    goto :goto_0

    .line 125
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/android/camera/PIPImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 127
    monitor-exit p0

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 167
    monitor-enter p0

    .line 168
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/PIPImageSaver;->mStop:Z

    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 170
    monitor-exit p0

    .line 171
    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 135
    :goto_0
    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PIPImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 140
    iget-boolean v1, p0, Lcom/android/camera/PIPImageSaver;->mStop:Z

    if-eqz v1, :cond_1

    .line 141
    const/4 v1, 0x0

    sput-object v1, Lcom/android/camera/PIPImageSaver;->instance:Lcom/android/camera/PIPImageSaver;

    .line 142
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :goto_1
    iget-object v1, p0, Lcom/android/camera/PIPImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    sget-object v1, Lcom/android/camera/PIPImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Media saver thread stopped with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PIPImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " images unsaved"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/android/camera/PIPImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 164
    :cond_0
    return-void

    .line 145
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :goto_2
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 151
    :cond_2
    :try_start_3
    iget-boolean v1, p0, Lcom/android/camera/PIPImageSaver;->mStop:Z

    if-eqz v1, :cond_3

    .line 152
    const/4 v1, 0x0

    sput-object v1, Lcom/android/camera/PIPImageSaver;->instance:Lcom/android/camera/PIPImageSaver;

    .line 153
    monitor-exit p0

    goto :goto_1

    .line 155
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PIPImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PIPImageSaver$SaveRequest;

    .line 156
    .local v0, "r":Lcom/android/camera/PIPImageSaver$SaveRequest;
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 157
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 158
    invoke-direct {p0, v0}, Lcom/android/camera/PIPImageSaver;->doBlendProcessAndSaveImage(Lcom/android/camera/PIPImageSaver$SaveRequest;)V

    goto :goto_0

    .line 146
    .end local v0    # "r":Lcom/android/camera/PIPImageSaver$SaveRequest;
    :catch_0
    move-exception v1

    goto :goto_2
.end method
