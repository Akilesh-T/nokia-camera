.class public Lcom/android/camera/watermark/WatermarkImageSaver;
.super Ljava/lang/Thread;
.source "WatermarkImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;,
        Lcom/android/camera/watermark/WatermarkImageSaver$WatermarkImageSavedCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static SAVE_QUEUE_LIMIT:I

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static instance:Lcom/android/camera/watermark/WatermarkImageSaver;


# instance fields
.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mStop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Watermark.ImageSaver"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/watermark/WatermarkImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/watermark/WatermarkImageSaver;->instance:Lcom/android/camera/watermark/WatermarkImageSaver;

    .line 36
    const v0, 0x7fffffff

    sput v0, Lcom/android/camera/watermark/WatermarkImageSaver;->SAVE_QUEUE_LIMIT:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/watermark/WatermarkImageSaver;->mStop:Z

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/watermark/WatermarkImageSaver;->mQueue:Ljava/util/ArrayList;

    .line 71
    invoke-virtual {p0}, Lcom/android/camera/watermark/WatermarkImageSaver;->start()V

    .line 72
    return-void
.end method

.method private doBlendProcessAndSaveImage(Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;)V
    .locals 26
    .param p1, "request"    # Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;

    .prologue
    .line 147
    sget-object v4, Lcom/android/camera/watermark/WatermarkImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v9, "startBlending start"

    invoke-static {v4, v9}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 148
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;->srcImage:[B

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;->watermarkViewData:Lcom/android/camera/watermark/WatermarkViewData;

    invoke-static/range {p1 .. p1}, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;->access$100(Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;)I

    move-result v10

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9, v10}, Lcom/android/camera/watermark/WatermarkImageSaver;->syncWithWatermark([BLcom/android/camera/watermark/WatermarkViewData;I)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 149
    .local v21, "result":Landroid/graphics/Bitmap;
    sget-object v4, Lcom/android/camera/watermark/WatermarkImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v9, "startBlending end"

    invoke-static {v4, v9}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 151
    sget-object v4, Lcom/android/camera/watermark/WatermarkImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v9, "update thumbnail start"

    invoke-static {v4, v9}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 155
    sget-object v4, Lcom/android/camera/watermark/WatermarkImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v9, "update thumbnail stop"

    invoke-static {v4, v9}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 157
    sget-object v4, Lcom/android/camera/watermark/WatermarkImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v9, "transform Bitmap to JPG start"

    invoke-static {v4, v9}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 158
    new-instance v23, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v23 .. v23}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 159
    .local v23, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v4, v9, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 160
    invoke-virtual/range {v23 .. v23}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 161
    .local v5, "jpegData":[B
    sget-object v4, Lcom/android/camera/watermark/WatermarkImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v9, "transform Bitmap to JPG end"

    invoke-static {v4, v9}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 163
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 164
    .local v8, "exif":Lcom/android/camera/exif/ExifInterface;
    sget v4, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-static/range {p1 .. p1}, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;->access$100(Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;)I

    move-result v9

    invoke-static {v9}, Lcom/android/camera/exif/ExifInterface;->getOrientationValueForRotation(I)S

    move-result v9

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    invoke-virtual {v8, v4, v9}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v22

    .line 165
    .local v22, "rotationTag":Lcom/android/camera/exif/ExifTag;
    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 166
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 167
    .local v6, "width":I
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 168
    .local v7, "height":I
    if-le v6, v7, :cond_1

    sget-object v4, Lcom/android/camera/util/ExifUtil;->THUMBNAIL_SIZE:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v25

    .line 169
    .local v25, "thumbnailWidth":I
    :goto_0
    if-le v6, v7, :cond_2

    sget-object v4, Lcom/android/camera/util/ExifUtil;->THUMBNAIL_SIZE:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v24

    .line 170
    .local v24, "thumbnailHeight":I
    :goto_1
    move-object/from16 v0, v21

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 171
    .local v20, "exifThumbnail":Landroid/graphics/Bitmap;
    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/android/camera/exif/ExifInterface;->setCompressedThumbnail(Landroid/graphics/Bitmap;)Z

    .line 172
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->recycle()V

    .line 174
    sget-object v4, Lcom/android/camera/watermark/WatermarkImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v9, "save image start"

    invoke-static {v4, v9}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 175
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;->callback:Lcom/android/camera/watermark/WatermarkImageSaver$WatermarkImageSavedCallback;

    const/4 v9, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;->access$100(Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;)I

    move-result v10

    invoke-interface/range {v4 .. v10}, Lcom/android/camera/watermark/WatermarkImageSaver$WatermarkImageSavedCallback;->onPictureSave([BIILcom/android/camera/exif/ExifInterface;ZI)Z

    move-result v4

    if-nez v4, :cond_0

    .line 176
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;->mediaSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    const/4 v9, 0x0

    invoke-interface {v4, v9}, Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;->setNeedThumbnail(Z)V

    .line 177
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;->cameraServices:Lcom/android/camera/app/CameraServices;

    invoke-interface {v4}, Lcom/android/camera/app/CameraServices;->getMediaSaver()Lcom/android/camera/app/MediaSaver;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;->title:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;->date:J

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;->location:Landroid/location/Location;

    .line 179
    invoke-static/range {p1 .. p1}, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;->access$100(Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;)I

    move-result v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;->mediaSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    move-object/from16 v19, v0

    move-object v10, v5

    move v15, v6

    move/from16 v16, v7

    move-object/from16 v18, v8

    .line 177
    invoke-interface/range {v9 .. v19}, Lcom/android/camera/app/MediaSaver;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V

    .line 181
    :cond_0
    sget-object v4, Lcom/android/camera/watermark/WatermarkImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v9, "save image end"

    invoke-static {v4, v9}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->recycle()V

    .line 184
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;->srcImage:[B

    .line 185
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;->watermarkViewData:Lcom/android/camera/watermark/WatermarkViewData;

    invoke-virtual {v4}, Lcom/android/camera/watermark/WatermarkViewData;->recycleBitmap()V

    .line 186
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;->watermarkViewData:Lcom/android/camera/watermark/WatermarkViewData;

    .line 187
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;->callback:Lcom/android/camera/watermark/WatermarkImageSaver$WatermarkImageSavedCallback;

    invoke-interface {v4, v5}, Lcom/android/camera/watermark/WatermarkImageSaver$WatermarkImageSavedCallback;->onPictureSaveFinished([B)V

    .line 188
    return-void

    .line 168
    .end local v20    # "exifThumbnail":Landroid/graphics/Bitmap;
    .end local v24    # "thumbnailHeight":I
    .end local v25    # "thumbnailWidth":I
    :cond_1
    sget-object v4, Lcom/android/camera/util/ExifUtil;->THUMBNAIL_SIZE:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v25

    goto/16 :goto_0

    .line 169
    .restart local v25    # "thumbnailWidth":I
    :cond_2
    sget-object v4, Lcom/android/camera/util/ExifUtil;->THUMBNAIL_SIZE:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v24

    goto/16 :goto_1
.end method

.method public static getInstance()Lcom/android/camera/watermark/WatermarkImageSaver;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/camera/watermark/WatermarkImageSaver;->instance:Lcom/android/camera/watermark/WatermarkImageSaver;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/android/camera/watermark/WatermarkImageSaver;

    invoke-direct {v0}, Lcom/android/camera/watermark/WatermarkImageSaver;-><init>()V

    sput-object v0, Lcom/android/camera/watermark/WatermarkImageSaver;->instance:Lcom/android/camera/watermark/WatermarkImageSaver;

    .line 66
    :cond_0
    sget-object v0, Lcom/android/camera/watermark/WatermarkImageSaver;->instance:Lcom/android/camera/watermark/WatermarkImageSaver;

    return-object v0
.end method

.method public static isRunning()Z
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/camera/watermark/WatermarkImageSaver;->instance:Lcom/android/camera/watermark/WatermarkImageSaver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/watermark/WatermarkImageSaver;->instance:Lcom/android/camera/watermark/WatermarkImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/watermark/WatermarkImageSaver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rotateWatermarkViewIfNecessary(Landroid/graphics/Canvas;III)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "orientation"    # I

    .prologue
    const/4 v2, 0x0

    .line 221
    neg-int v1, p4

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v0, v1, 0x168

    .line 222
    .local v0, "rotate":I
    int-to-float v1, v0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 223
    sparse-switch v0, :sswitch_data_0

    .line 236
    :goto_0
    :sswitch_0
    return-void

    .line 227
    :sswitch_1
    neg-int v1, p2

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 230
    :sswitch_2
    neg-int v1, p2

    int-to-float v1, v1

    neg-int v2, p3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 233
    :sswitch_3
    neg-int v1, p3

    int-to-float v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 223
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private syncWithWatermark([BLcom/android/camera/watermark/WatermarkViewData;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "data"    # [B
    .param p2, "watermarkViewData"    # Lcom/android/camera/watermark/WatermarkViewData;
    .param p3, "orientation"    # I

    .prologue
    .line 191
    const/4 v5, 0x0

    array-length v6, p1

    invoke-static {p1, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 192
    .local v0, "bmOrig":Landroid/graphics/Bitmap;
    if-nez p2, :cond_0

    .line 193
    sget-object v5, Lcom/android/camera/watermark/WatermarkImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "syncWithWatermark-mWeatherViewData is empty."

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    move-object v1, v0

    .line 217
    :goto_0
    return-object v1

    .line 196
    :cond_0
    sget-object v5, Lcom/android/camera/watermark/WatermarkImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "syncWithWatermark-mWeatherViewData = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/camera/watermark/WatermarkViewData;->dump()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 197
    sget-object v5, Lcom/android/camera/watermark/WatermarkImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "syncWithWatermark-decode originalBitmap success"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 198
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 199
    .local v1, "bmOutput":Landroid/graphics/Bitmap;
    sget-object v5, Lcom/android/camera/watermark/WatermarkImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "syncWithWatermark-copy originalBitmap success"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 201
    const/4 v0, 0x0

    .line 202
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 203
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {p0, v2, v5, v6, p3}, Lcom/android/camera/watermark/WatermarkImageSaver;->rotateWatermarkViewIfNecessary(Landroid/graphics/Canvas;III)V

    .line 204
    iget-object v5, p2, Lcom/android/camera/watermark/WatermarkViewData;->mBitmap:Landroid/graphics/Bitmap;

    iget v6, p2, Lcom/android/camera/watermark/WatermarkViewData;->mCenterX:F

    iget-object v7, p2, Lcom/android/camera/watermark/WatermarkViewData;->mBitmap:Landroid/graphics/Bitmap;

    .line 205
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v7, p2, Lcom/android/camera/watermark/WatermarkViewData;->mCenterY:F

    iget-object v8, p2, Lcom/android/camera/watermark/WatermarkViewData;->mBitmap:Landroid/graphics/Bitmap;

    .line 206
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 204
    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 208
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 209
    sget-object v5, Lcom/android/camera/watermark/WatermarkImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "syncWithWatermark-draw weather Bitmap success"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 211
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 212
    .local v4, "out":Ljava/io/ByteArrayOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v1, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 213
    sget-object v5, Lcom/android/camera/watermark/WatermarkImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "syncWithWatermark-compress to JPEG success"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 214
    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v3

    .line 215
    .local v3, "e":Ljava/lang/Throwable;
    sget-object v5, Lcom/android/camera/watermark/WatermarkImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "syncWithWatermark-compress Jpeg ERROR = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addWatermarkImage([BLcom/android/camera/watermark/WatermarkViewData;ILcom/android/camera/watermark/WatermarkImageSaver$WatermarkImageSavedCallback;Ljava/lang/String;JLcom/android/camera/app/CameraServices;Landroid/location/Location;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;JLcom/android/camera/exif/ExifInterface;Z)V
    .locals 4
    .param p1, "srcImage"    # [B
    .param p2, "watermarkViewData"    # Lcom/android/camera/watermark/WatermarkViewData;
    .param p3, "orientation"    # I
    .param p4, "callback"    # Lcom/android/camera/watermark/WatermarkImageSaver$WatermarkImageSavedCallback;
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "date"    # J
    .param p8, "services"    # Lcom/android/camera/app/CameraServices;
    .param p9, "location"    # Landroid/location/Location;
    .param p10, "mediaSavedListener"    # Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;
    .param p11, "captureStartTime"    # J
    .param p13, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p14, "hwRotateSupport"    # Z

    .prologue
    .line 79
    new-instance v1, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;-><init>(Lcom/android/camera/watermark/WatermarkImageSaver$1;)V

    .line 80
    .local v1, "r":Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;
    iput-object p1, v1, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;->srcImage:[B

    .line 81
    iput-object p2, v1, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;->watermarkViewData:Lcom/android/camera/watermark/WatermarkViewData;

    .line 82
    invoke-static {v1, p3}, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;->access$102(Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;I)I

    .line 83
    iput-object p4, v1, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;->callback:Lcom/android/camera/watermark/WatermarkImageSaver$WatermarkImageSavedCallback;

    .line 84
    iput-object p5, v1, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;->title:Ljava/lang/String;

    .line 85
    iput-wide p6, v1, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;->date:J

    .line 86
    iput-object p8, v1, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;->cameraServices:Lcom/android/camera/app/CameraServices;

    .line 87
    iput-object p9, v1, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;->location:Landroid/location/Location;

    .line 88
    iput-object p10, v1, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;->mediaSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    .line 89
    iput-wide p11, v1, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;->captureStartTime:J

    .line 90
    move-object/from16 v0, p13

    iput-object v0, v1, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 91
    move/from16 v0, p14

    iput-boolean v0, v1, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;->hwRotateSupport:Z

    .line 93
    monitor-enter p0

    .line 94
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/watermark/WatermarkImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget v3, Lcom/android/camera/watermark/WatermarkImageSaver;->SAVE_QUEUE_LIMIT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v3, :cond_0

    .line 96
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v2

    goto :goto_0

    .line 101
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/watermark/WatermarkImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 103
    monitor-exit p0

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 140
    monitor-enter p0

    .line 141
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/watermark/WatermarkImageSaver;->mStop:Z

    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 143
    monitor-exit p0

    .line 144
    return-void

    .line 143
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
    .line 111
    :goto_0
    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/watermark/WatermarkImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 116
    iget-boolean v1, p0, Lcom/android/camera/watermark/WatermarkImageSaver;->mStop:Z

    if-eqz v1, :cond_1

    .line 117
    const/4 v1, 0x0

    sput-object v1, Lcom/android/camera/watermark/WatermarkImageSaver;->instance:Lcom/android/camera/watermark/WatermarkImageSaver;

    .line 118
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    iget-object v1, p0, Lcom/android/camera/watermark/WatermarkImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    sget-object v1, Lcom/android/camera/watermark/WatermarkImageSaver;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "watermark saver thread stopped with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/watermark/WatermarkImageSaver;->mQueue:Ljava/util/ArrayList;

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

    .line 135
    iget-object v1, p0, Lcom/android/camera/watermark/WatermarkImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 137
    :cond_0
    return-void

    .line 121
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 127
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/android/camera/watermark/WatermarkImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;

    .line 128
    .local v0, "r":Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 129
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    invoke-direct {p0, v0}, Lcom/android/camera/watermark/WatermarkImageSaver;->doBlendProcessAndSaveImage(Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;)V

    goto :goto_0

    .line 122
    .end local v0    # "r":Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;
    :catch_0
    move-exception v1

    goto :goto_1
.end method
