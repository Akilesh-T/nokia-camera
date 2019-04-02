.class public Lcom/android/camera/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# static fields
.field public static final ACCESS_FAILURE:J = -0x4L

.field public static BUCKET_ID:Ljava/lang/String; = null

.field public static final CAMERA_SESSION_SCHEME:Ljava/lang/String; = "camera_session"

.field public static final CAPTURE_INTENT_SESSION_SCHEME:Ljava/lang/String; = "capture_intent_session"

.field public static DCIM:Ljava/lang/String; = null

.field public static final DCIM_PHONE:Ljava/lang/String;

.field public static DCIM_SDCARD:Ljava/lang/String; = null

.field public static DIRECTORY:Ljava/lang/String; = null

.field public static DIRECTORY_FILE:Ljava/io/File; = null

.field public static DIRECTORY_PHONE:Ljava/lang/String; = null

.field public static DIRECTORY_SDCARD:Ljava/lang/String; = null

.field public static final GIF_POSTFIX:Ljava/lang/String; = ".gif"

.field private static final GOOGLE_COM:Ljava/lang/String; = "google.com"

.field public static final JPEG_FAKE_POSTFIX:Ljava/lang/String; = ".jpg"

.field public static final JPEG_POSTFIX:Ljava/lang/String; = ".jpg"

.field public static final LOW_STORAGE_THRESHOLD_BYTES:J = 0x2faf080L

.field public static final PREPARING:J = -0x2L

.field public static final RAW_POSTFIX:Ljava/lang/String; = ".raw"

.field public static final STREAMING_SESSION_SCHEME:Ljava/lang/String; = "streaming_session"

.field public static final TAG:Lcom/android/camera/debug/Log$Tag;

.field public static final UNAVAILABLE:J = -0x1L

.field public static final UNKNOWN_SIZE:J = -0x3L

.field public static final VIDEO_RECORD_MIN_BYTES_LIMIT:J = 0x2aea540L

.field public static final VIDEO_RECORD_THRESHOLD_BYTES:J = 0x4c4b40L

.field public static final VIDEO_SESSION_SCHEME:Ljava/lang/String; = "video_session"

.field private static mStorePath:Ljava/lang/String;

.field private static sContentUrisToSessions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static sSessionsToContentUris:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static sSessionsToPlaceholderBitmap:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sSessionsToPlaceholderVersions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sSessionsToSizes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 78
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Storage;->DCIM:Ljava/lang/String;

    .line 79
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 80
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Storage;->DCIM_PHONE:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/Storage;->DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/Storage;->DIRECTORY_FILE:Ljava/io/File;

    .line 83
    const-string v0, ""

    sput-object v0, Lcom/android/camera/Storage;->DCIM_SDCARD:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/Storage;->DCIM_PHONE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Storage;->DIRECTORY_PHONE:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/Storage;->DCIM_SDCARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Storage;->DIRECTORY_SDCARD:Ljava/lang/String;

    .line 106
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Storage"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 108
    const-string v0, "phone"

    sput-object v0, Lcom/android/camera/Storage;->mStorePath:Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/Storage;->sSessionsToContentUris:Ljava/util/HashMap;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/Storage;->sContentUrisToSessions:Ljava/util/HashMap;

    .line 111
    new-instance v0, Lcom/android/camera/Storage$1;

    const/high16 v1, 0x1400000

    invoke-direct {v0, v1}, Lcom/android/camera/Storage$1;-><init>(I)V

    sput-object v0, Lcom/android/camera/Storage;->sSessionsToPlaceholderBitmap:Landroid/util/LruCache;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/Storage;->sSessionsToSizes:Ljava/util/HashMap;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/Storage;->sSessionsToPlaceholderVersions:Ljava/util/HashMap;

    .line 122
    sget-object v0, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Storage;->BUCKET_ID:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBurstImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;J)Landroid/content/ContentValues;
    .locals 20
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "location"    # Landroid/location/Location;
    .param p4, "orientation"    # I
    .param p5, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p6, "data"    # [B
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "mimeType"    # Ljava/lang/String;
    .param p10, "date"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p9

    invoke-static {v0, v1, v2}, Lcom/android/camera/Storage;->generateBurstFilepath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 341
    .local v12, "path":Ljava/lang/String;
    move-object/from16 v0, p6

    move-object/from16 v1, p5

    invoke-static {v12, v0, v1}, Lcom/android/camera/Storage;->writeFile(Ljava/lang/String;[BLcom/android/camera/exif/ExifInterface;)J

    move-result-wide v18

    .line 342
    .local v18, "fileLength":J
    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-ltz v4, :cond_0

    .line 343
    move-object/from16 v0, p6

    array-length v4, v0

    int-to-long v10, v4

    const-wide/16 v16, 0x0

    move-object/from16 v5, p1

    move-wide/from16 v6, p10

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v13, p7

    move/from16 v14, p8

    move-object/from16 v15, p9

    invoke-static/range {v5 .. v17}, Lcom/android/camera/Storage;->getContentValuesForData(Ljava/lang/String;JLandroid/location/Location;IJLjava/lang/String;IILjava/lang/String;J)Landroid/content/ContentValues;

    move-result-object v4

    .line 345
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static addDualImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;
    .locals 20
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "orientation"    # I
    .param p6, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p7, "data"    # [B
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    move-object/from16 v0, p1

    move-object/from16 v1, p10

    invoke-static {v0, v1}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 210
    .local v10, "path":Ljava/lang/String;
    move-object/from16 v0, p7

    move-object/from16 v1, p6

    invoke-static {v10, v0, v1}, Lcom/android/camera/Storage;->writeFile(Ljava/lang/String;[BLcom/android/camera/exif/ExifInterface;)J

    move-result-wide v16

    .line 212
    .local v16, "fileLength":J
    const/16 v19, 0x0

    .line 214
    .local v19, "xmpMeta":Lcom/adobe/xmp/XMPMeta;
    :try_start_0
    new-instance v2, Lcom/android/camera/xmp/DualSightXMPUtil$DualSightXMPCreator;

    invoke-direct {v2}, Lcom/android/camera/xmp/DualSightXMPUtil$DualSightXMPCreator;-><init>()V

    invoke-virtual {v2}, Lcom/android/camera/xmp/DualSightXMPUtil$DualSightXMPCreator;->createDualSightXMP()Lcom/adobe/xmp/XMPMeta;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 218
    :goto_0
    move-object/from16 v0, v19

    invoke-static {v10, v0}, Lcom/android/camera/util/XmpUtil;->writeXMPMeta(Ljava/lang/String;Lcom/adobe/xmp/XMPMeta;)Z

    move-result v18

    .line 220
    .local v18, "success":Z
    move-wide/from16 v8, v16

    .line 221
    .local v8, "newFileLength":J
    if-eqz v18, :cond_0

    .line 222
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v15, "newFile":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 226
    .end local v15    # "newFile":Ljava/io/File;
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-ltz v2, :cond_1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    .line 227
    invoke-static/range {v2 .. v13}, Lcom/android/camera/Storage;->addImageToMediaStore(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;IJLjava/lang/String;IILjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 230
    :goto_1
    return-object v2

    .line 215
    .end local v8    # "newFileLength":J
    .end local v18    # "success":Z
    :catch_0
    move-exception v14

    .line 216
    .local v14, "e":Lcom/adobe/xmp/XMPException;
    invoke-virtual {v14}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    goto :goto_0

    .line 230
    .end local v14    # "e":Lcom/adobe/xmp/XMPException;
    .restart local v8    # "newFileLength":J
    .restart local v18    # "success":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static addEmptyCaptureIntentPlaceholder(Lcom/android/camera/util/Size;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .param p0, "size"    # Lcom/android/camera/util/Size;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "externalUri"    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 574
    invoke-static {}, Lcom/android/camera/Storage;->generateUniqueCaptureIntentPlaceholderUri()Landroid/net/Uri;

    move-result-object v1

    .line 575
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/android/camera/Storage;->sSessionsToSizes:Ljava/util/HashMap;

    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    sget-object v2, Lcom/android/camera/Storage;->sSessionsToPlaceholderBitmap:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    sget-object v2, Lcom/android/camera/Storage;->sSessionsToPlaceholderVersions:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 578
    .local v0, "currentVersion":Ljava/lang/Integer;
    sget-object v3, Lcom/android/camera/Storage;->sSessionsToPlaceholderVersions:Ljava/util/HashMap;

    if-nez v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    if-eqz p1, :cond_0

    .line 581
    invoke-static {v1, p1}, Lcom/android/camera/Storage;->addSessionContentUriPair(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 584
    :cond_0
    return-object v1

    .line 578
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static addEmptyPlaceholder(Lcom/android/camera/util/Size;)Landroid/net/Uri;
    .locals 6
    .param p0, "size"    # Lcom/android/camera/util/Size;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 554
    invoke-static {}, Lcom/android/camera/Storage;->generateUniquePlaceholderUri()Landroid/net/Uri;

    move-result-object v1

    .line 555
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/android/camera/Storage;->sSessionsToSizes:Ljava/util/HashMap;

    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    sget-object v2, Lcom/android/camera/Storage;->sSessionsToPlaceholderBitmap:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    sget-object v2, Lcom/android/camera/Storage;->sSessionsToPlaceholderVersions:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 558
    .local v0, "currentVersion":Ljava/lang/Integer;
    sget-object v3, Lcom/android/camera/Storage;->sSessionsToPlaceholderVersions:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    return-object v1

    .line 558
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static addEmptyVideoPlaceholder(Lcom/android/camera/util/Size;)Landroid/net/Uri;
    .locals 6
    .param p0, "size"    # Lcom/android/camera/util/Size;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 564
    invoke-static {}, Lcom/android/camera/Storage;->generateUniqueVideoPlaceholderUri()Landroid/net/Uri;

    move-result-object v1

    .line 565
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/android/camera/Storage;->sSessionsToSizes:Ljava/util/HashMap;

    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    sget-object v2, Lcom/android/camera/Storage;->sSessionsToPlaceholderBitmap:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    sget-object v2, Lcom/android/camera/Storage;->sSessionsToPlaceholderVersions:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 568
    .local v0, "currentVersion":Ljava/lang/Integer;
    sget-object v3, Lcom/android/camera/Storage;->sSessionsToPlaceholderVersions:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    return-object v1

    .line 568
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;IILjava/lang/String;IILjava/lang/String;J)Landroid/net/Uri;
    .locals 18
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "orientation"    # I
    .param p6, "jpegLength"    # I
    .param p7, "path"    # Ljava/lang/String;
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "mimeType"    # Ljava/lang/String;
    .param p11, "bokehType"    # J

    .prologue
    .line 299
    move/from16 v0, p6

    int-to-long v8, v0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    move-wide/from16 v14, p11

    invoke-static/range {v3 .. v15}, Lcom/android/camera/Storage;->getContentValuesForData(Ljava/lang/String;JLandroid/location/Location;IJLjava/lang/String;IILjava/lang/String;J)Landroid/content/ContentValues;

    move-result-object v17

    .line 301
    .local v17, "values":Landroid/content/ContentValues;
    const/16 v16, 0x0

    .line 303
    .local v16, "uri":Landroid/net/Uri;
    :try_start_0
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    .line 305
    sget-object v3, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Photos] addImage - mimeType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p10

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " path:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    return-object v16

    .line 306
    :catch_0
    move-exception v2

    .line 312
    .local v2, "th":Ljava/lang/Throwable;
    sget-object v3, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write MediaStore"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BII)Landroid/net/Uri;
    .locals 12
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "orientation"    # I
    .param p6, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p7, "jpeg"    # [B
    .param p8, "width"    # I
    .param p9, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    const-string v10, "image/jpeg"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v10}, Lcom/android/camera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;
    .locals 14
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "orientation"    # I
    .param p6, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p7, "data"    # [B
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    move-object/from16 v0, p10

    invoke-static {p1, v0}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 174
    .local v10, "path":Ljava/lang/String;
    move-object/from16 v0, p7

    move-object/from16 v1, p6

    invoke-static {v10, v0, v1}, Lcom/android/camera/Storage;->writeFile(Ljava/lang/String;[BLcom/android/camera/exif/ExifInterface;)J

    move-result-wide v8

    .line 176
    .local v8, "fileLength":J
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-ltz v2, :cond_0

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    .line 177
    invoke-static/range {v2 .. v13}, Lcom/android/camera/Storage;->addImageToMediaStore(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;IJLjava/lang/String;IILjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 180
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static addImageToMediaStore(Landroid/content/ContentResolver;[Landroid/content/ContentValues;)I
    .locals 7
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "values"    # [Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x0

    .line 419
    if-nez p0, :cond_1

    .line 446
    :cond_0
    :goto_0
    return v2

    .line 420
    :cond_1
    if-eqz p1, :cond_0

    .line 421
    array-length v4, p1

    if-eqz v4, :cond_0

    .line 423
    const/4 v2, 0x0

    .line 425
    .local v2, "rowsCreated":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    array-length v4, p1

    if-ge v1, v4, :cond_2

    .line 426
    aget-object v0, p1, v1

    .line 428
    .local v0, "cv":Landroid/content/ContentValues;
    sget-object v4, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "abx bulkInsert addImageToMediaStore TITLE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "title"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",DISPLAY_NAME:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_display_name"

    .line 429
    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",DATE_TAKEN:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "datetaken"

    .line 430
    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",DATA:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_data"

    .line 431
    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",MIME_TYPE:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mime_type"

    .line 432
    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",MEDIA_TYPE:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "media_type"

    .line 433
    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 428
    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 425
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 436
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_2
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v4, p1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v2

    .line 437
    sget-object v4, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resolver.bulkInsert OK : rowsCreated = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 438
    :catch_0
    move-exception v3

    .line 444
    .local v3, "th":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to write MediaStore"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static addImageToMediaStore(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v1, 0x0

    .line 400
    if-nez p0, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-object v1

    .line 401
    :cond_1
    if-eqz p1, :cond_0

    .line 402
    const/4 v1, 0x0

    .line 404
    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 405
    sget-object v2, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Photos] addImageToMediaStore - uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 406
    sget-object v2, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resolver.insert OK : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 407
    :catch_0
    move-exception v0

    .line 413
    .local v0, "th":Ljava/lang/Throwable;
    sget-object v2, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write MediaStore"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static addImageToMediaStore(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;IJLjava/lang/String;IILjava/lang/String;)Landroid/net/Uri;
    .locals 18
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "orientation"    # I
    .param p6, "jpegLength"    # J
    .param p8, "path"    # Ljava/lang/String;
    .param p9, "width"    # I
    .param p10, "height"    # I
    .param p11, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 380
    const-wide/16 v14, 0x0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    .line 381
    invoke-static/range {v3 .. v15}, Lcom/android/camera/Storage;->getContentValuesForData(Ljava/lang/String;JLandroid/location/Location;IJLjava/lang/String;IILjava/lang/String;J)Landroid/content/ContentValues;

    move-result-object v17

    .line 384
    .local v17, "values":Landroid/content/ContentValues;
    const/16 v16, 0x0

    .line 386
    .local v16, "uri":Landroid/net/Uri;
    :try_start_0
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    .line 387
    sget-object v3, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolver.insert OK : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :goto_0
    return-object v16

    .line 388
    :catch_0
    move-exception v2

    .line 394
    .local v2, "th":Ljava/lang/Throwable;
    sget-object v3, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write MediaStore"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static addMacioVideo(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z
    .locals 5
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-static {p0, p1}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "path":Ljava/lang/String;
    const/4 v3, 0x0

    .line 265
    .local v3, "xmpMeta":Lcom/adobe/xmp/XMPMeta;
    :try_start_0
    new-instance v4, Lcom/android/camera/xmp/MicroVideoXMPUtil$MicroVideoXMPCreator;

    invoke-direct {v4}, Lcom/android/camera/xmp/MicroVideoXMPUtil$MicroVideoXMPCreator;-><init>()V

    invoke-virtual {v4, p2}, Lcom/android/camera/xmp/MicroVideoXMPUtil$MicroVideoXMPCreator;->createMicroVideoXMP(Ljava/io/File;)Lcom/adobe/xmp/XMPMeta;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 269
    :goto_0
    invoke-static {v1, v3}, Lcom/android/camera/util/XmpUtil;->writeXMPMeta(Ljava/lang/String;Lcom/adobe/xmp/XMPMeta;)Z

    move-result v2

    .line 271
    .local v2, "success":Z
    return v2

    .line 266
    .end local v2    # "success":Z
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Lcom/adobe/xmp/XMPException;
    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    goto :goto_0
.end method

.method public static addPlaceholder(Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 1
    .param p0, "placeholder"    # Landroid/graphics/Bitmap;

    .prologue
    .line 515
    invoke-static {}, Lcom/android/camera/Storage;->generateUniquePlaceholderUri()Landroid/net/Uri;

    move-result-object v0

    .line 516
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {v0, p0}, Lcom/android/camera/Storage;->replacePlaceholder(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 517
    return-object v0
.end method

.method public static addRawImage(Landroid/content/ContentResolver;Ljava/lang/String;J[BIILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "data"    # [B
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 349
    invoke-static {p1, p7}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, "path":Ljava/lang/String;
    sget-object v4, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addRawImage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 351
    invoke-static {v2, p4, v3}, Lcom/android/camera/Storage;->writeFile(Ljava/lang/String;[BLcom/android/camera/exif/ExifInterface;)J

    move-result-wide v0

    .line 352
    .local v0, "fileLength":J
    sget-object v4, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addRawImage - fileLength : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 353
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    .line 356
    .end local v2    # "path":Ljava/lang/String;
    :goto_0
    return-object v2

    .restart local v2    # "path":Ljava/lang/String;
    :cond_0
    move-object v2, v3

    goto :goto_0
.end method

.method public static addSessionContentUriPair(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 3
    .param p0, "sessionUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "contentUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1106
    sget-object v0, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add uri pair : sessionUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contentUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1107
    sget-object v0, Lcom/android/camera/Storage;->sSessionsToContentUris:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    sget-object v0, Lcom/android/camera/Storage;->sContentUrisToSessions:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    return-void
.end method

.method public static containsPlaceholderSize(Landroid/net/Uri;)Z
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1063
    sget-object v0, Lcom/android/camera/Storage;->sSessionsToSizes:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static copyVideoAppend(Ljava/io/File;Ljava/lang/String;)Z
    .locals 10
    .param p0, "videofile"    # Ljava/io/File;
    .param p1, "jpegFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 715
    const/4 v2, 0x0

    .line 716
    .local v2, "inputStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 718
    .local v4, "outputStream":Ljava/io/OutputStream;
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v7, v8

    .line 758
    :goto_0
    return v7

    .line 727
    :cond_1
    const/16 v9, 0x1400

    :try_start_0
    new-array v1, v9, [B

    .line 729
    .local v1, "fileReader":[B
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v9, 0x1

    invoke-direct {v5, p1, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 733
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .local v5, "outputStream":Ljava/io/OutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 734
    .local v6, "read":I
    const/4 v9, -0x1

    if-ne v6, v9, :cond_4

    .line 741
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 742
    const/4 v4, 0x0

    .line 747
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    if-eqz v3, :cond_2

    .line 748
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 751
    :cond_2
    if-eqz v4, :cond_3

    .line 752
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    move-object v2, v3

    .line 743
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 738
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :cond_4
    const/4 v9, 0x0

    :try_start_4
    invoke-virtual {v5, v1, v9, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 744
    .end local v6    # "read":I
    :catch_0
    move-exception v0

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    move-object v2, v3

    .line 747
    .end local v1    # "fileReader":[B
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :goto_2
    if-eqz v2, :cond_5

    .line 748
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 751
    :cond_5
    if-eqz v4, :cond_6

    .line 752
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_6
    move v7, v8

    .line 745
    goto :goto_0

    .line 747
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v2, :cond_7

    .line 748
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 751
    :cond_7
    if-eqz v4, :cond_8

    .line 752
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_8
    throw v7
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 756
    :catch_1
    move-exception v0

    .line 757
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v7, v8

    .line 758
    goto :goto_0

    .line 756
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "fileReader":[B
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "read":I
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_4

    .line 747
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "read":I
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_3

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 744
    .end local v1    # "fileReader":[B
    :catch_3
    move-exception v0

    goto :goto_2

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "fileReader":[B
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_2
.end method

.method public static createDirectoryIfNeeded(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 972
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 976
    .local v0, "parentFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 977
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    .line 982
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    goto :goto_0
.end method

.method public static ensureOSXCompatible()V
    .locals 4

    .prologue
    .line 1181
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/camera/Storage;->DCIM:Ljava/lang/String;

    const-string v2, "100ANDRO"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    .local v0, "nnnAAAAA":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1183
    sget-object v1, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1185
    :cond_0
    return-void
.end method

.method protected static generateBokehFilepath(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "isCover"    # Z
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Burstshoot/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/android/camera/util/CameraUtil;->generateBokehBurstImgTitle(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static generateBurstFilepath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Burstshoot/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p2}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 1021
    sget-object v0, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateFilepath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "directory"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 1033
    const/4 v0, 0x0

    .line 1034
    .local v0, "extension":Ljava/lang/String;
    const-string v1, "image/jpeg"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1035
    const-string v0, ".jpg"

    .line 1045
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1036
    :cond_0
    const-string v1, "image/fake"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1037
    const-string v0, ".jpg"

    goto :goto_0

    .line 1038
    :cond_1
    const-string v1, "image/gif"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1039
    const-string v0, ".gif"

    goto :goto_0

    .line 1040
    :cond_2
    const-string v1, "image/raw"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1041
    const-string v0, ".raw"

    goto :goto_0

    .line 1043
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid mimeType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static generateUniqueCaptureIntentPlaceholderUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 858
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 859
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 860
    .local v1, "uuid":Ljava/lang/String;
    const-string v2, "capture_intent_session"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "google.com"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 861
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private static generateUniquePlaceholderUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 844
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 845
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 846
    .local v1, "uuid":Ljava/lang/String;
    const-string v2, "camera_session"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "google.com"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 847
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public static generateUniqueStreamingUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 865
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 866
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 867
    .local v1, "uuid":Ljava/lang/String;
    const-string v2, "streaming_session"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "google.com"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 868
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private static generateUniqueVideoPlaceholderUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 851
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 852
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 853
    .local v1, "uuid":Ljava/lang/String;
    const-string v2, "video_session"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "google.com"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 854
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public static getAvailableSpace(Landroid/content/Context;)J
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v0, -0x1

    .line 1142
    const/4 v5, 0x0

    .line 1144
    .local v5, "state":Ljava/lang/String;
    sget-object v6, Lcom/android/camera/Storage;->mStorePath:Ljava/lang/String;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1145
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 1149
    :goto_0
    sget-object v6, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The current path is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/camera/Storage;->mStorePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", and the directory is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", External storage state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1151
    const-string v6, "checking"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1152
    const-wide/16 v0, -0x2

    .line 1174
    :cond_0
    :goto_1
    return-wide v0

    .line 1147
    :cond_1
    invoke-static {p0}, Lcom/android/camera/Storage;->getSDCardStorageState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1154
    :cond_2
    const-string v6, "mounted"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1158
    new-instance v2, Ljava/io/File;

    sget-object v6, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1159
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1160
    sget-object v6, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The current path is directory? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", and it is writable? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1161
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1166
    :try_start_0
    sget-object v6, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Start to access external storage : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1167
    new-instance v4, Landroid/os/StatFs;

    sget-object v6, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-direct {v4, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1168
    .local v4, "stat":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v8, v8

    mul-long v0, v6, v8

    .line 1169
    .local v0, "availableSpace":J
    sget-object v6, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "availableSpace : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1171
    .end local v0    # "availableSpace":J
    .end local v4    # "stat":Landroid/os/StatFs;
    :catch_0
    move-exception v3

    .line 1172
    .local v3, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "Fail to access external storage"

    invoke-static {v6, v7, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1174
    const-wide/16 v0, -0x3

    goto/16 :goto_1
.end method

.method public static getContentUriForSessionUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1083
    sget-object v0, Lcom/android/camera/Storage;->sSessionsToContentUris:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public static getContentValuesForData(Ljava/lang/String;JLandroid/location/Location;IJLjava/lang/String;IILjava/lang/String;J)Landroid/content/ContentValues;
    .locals 11
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "date"    # J
    .param p3, "location"    # Landroid/location/Location;
    .param p4, "orientation"    # I
    .param p5, "jpegLength"    # J
    .param p7, "path"    # Ljava/lang/String;
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "mimeType"    # Ljava/lang/String;
    .param p11, "bokehType"    # J

    .prologue
    .line 454
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p7

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 455
    .local v4, "file":Ljava/io/File;
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    .line 457
    .local v2, "dateModifiedSeconds":J
    new-instance v5, Landroid/content/ContentValues;

    const/16 v6, 0xb

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 458
    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "title"

    invoke-virtual {v5, v6, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v6, "_display_name"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v6, "datetaken"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 462
    const-string v6, "date_modified"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 464
    const-string v6, "orientation"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 466
    const-string v6, "_size"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 471
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isCNModel()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 473
    sget-object v6, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Photos] CN mimeType:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p10

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " path:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " date:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 474
    const-string v6, "_data"

    move-object/from16 v0, p7

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v6, "mime_type"

    move-object/from16 v0, p10

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :goto_0
    move/from16 v0, p8

    move/from16 v1, p9

    invoke-static {v5, v0, v1}, Lcom/android/camera/Storage;->setImageSize(Landroid/content/ContentValues;II)V

    .line 497
    if-eqz p3, :cond_0

    .line 498
    const-string v6, "latitude"

    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 499
    const-string v6, "longitude"

    invoke-virtual {p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 501
    :cond_0
    const-wide/32 v6, 0x30002

    cmp-long v6, p11, v6

    if-eqz v6, :cond_1

    const-wide/32 v6, 0x30001

    cmp-long v6, p11, v6

    if-nez v6, :cond_2

    .line 503
    :cond_1
    const-string v6, "imagetype"

    invoke-static/range {p11 .. p12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 505
    :cond_2
    return-object v5

    .line 480
    :cond_3
    sget-object v6, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Photos] WW mimeType:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p10

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " path:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " date:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 481
    const-string v6, "image/fake"

    move-object/from16 v0, p10

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 482
    const-string v6, "_data"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_thunmbnail"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v6, "mime_type"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 484
    const-string v6, "media_type"

    const/4 v7, 0x0

    .line 485
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 484
    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 487
    :cond_4
    const-string v6, "_data"

    move-object/from16 v0, p7

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v6, "mime_type"

    move-object/from16 v0, p10

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string v6, "media_type"

    const/4 v7, 0x1

    .line 490
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 489
    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0
.end method

.method public static getDCIMPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1198
    sget-object v0, Lcom/android/camera/Storage;->DCIM:Ljava/lang/String;

    return-object v0
.end method

.method public static getOTGString(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 1309
    if-nez p0, :cond_0

    .line 1317
    :goto_0
    return-object v2

    .line 1311
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "storage_usb_drive"

    const-string v5, "string"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1312
    .local v1, "resId":I
    sget-object v3, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "storage_usb_drive = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1313
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1314
    .end local v1    # "resId":I
    :catch_0
    move-exception v0

    .line 1315
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getPlaceholderForSession(Landroid/net/Uri;)Lcom/google/common/base/Optional;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1055
    sget-object v0, Lcom/android/camera/Storage;->sSessionsToPlaceholderBitmap:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static getSDCardDCIM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1200
    sget-object v0, Lcom/android/camera/Storage;->DCIM_SDCARD:Ljava/lang/String;

    return-object v0
.end method

.method public static getSDCardPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 28
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 1253
    const/4 v9, 0x0

    .line 1254
    .local v9, "mStorageManager":Landroid/os/storage/StorageManager;
    const-string v24, "storage"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "mStorageManager":Landroid/os/storage/StorageManager;
    check-cast v9, Landroid/os/storage/StorageManager;

    .line 1255
    .restart local v9    # "mStorageManager":Landroid/os/storage/StorageManager;
    const/16 v22, 0x0

    .line 1256
    .local v22, "storageVolumeClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v20, ""

    .line 1258
    .local v20, "sdCardPath":Ljava/lang/String;
    :try_start_0
    const-string v24, "android.os.storage.StorageVolume"

    invoke-static/range {v24 .. v24}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v22

    .line 1259
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    const-string v25, "getVolumeList"

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 1260
    .local v12, "m_getVolumeList":Ljava/lang/reflect/Method;
    const-string v24, "getPath"

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 1261
    .local v11, "m_getPath":Ljava/lang/reflect/Method;
    const-string v24, "isRemovable"

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    .line 1262
    .local v15, "m_isRemovable":Ljava/lang/reflect/Method;
    const-string v24, "isEmulated"

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 1263
    .local v13, "m_isEmulated":Ljava/lang/reflect/Method;
    const-string v24, "isPrimary"

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 1264
    .local v14, "m_isPrimary":Ljava/lang/reflect/Method;
    const-string v24, "getState"

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    .line 1265
    .local v16, "m_state":Ljava/lang/reflect/Method;
    const-string v24, "getDescription"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-class v27, Landroid/content/Context;

    aput-object v27, v25, v26

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 1267
    .local v10, "m_getDescription":Ljava/lang/reflect/Method;
    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v12, v9, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 1268
    .local v19, "result":Ljava/lang/Object;
    invoke-static/range {v19 .. v19}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v8

    .line 1269
    .local v8, "length":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v8, :cond_2

    .line 1270
    move-object/from16 v0, v19

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v23

    .line 1271
    .local v23, "storageVolumeElement":Ljava/lang/Object;
    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1272
    .local v18, "path":Ljava/lang/String;
    sget-object v24, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "path = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1273
    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 1274
    .local v6, "isEmulated":Z
    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 1275
    .local v7, "isPrimary":Z
    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1276
    .local v21, "state":Ljava/lang/String;
    sget-object v24, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "state = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1277
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object p0, v24, v25

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1278
    .local v3, "description":Ljava/lang/String;
    sget-object v24, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "description = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1279
    invoke-static/range {p0 .. p0}, Lcom/android/camera/Storage;->getOTGString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    .line 1280
    .local v17, "otgString":Ljava/lang/String;
    sget-object v24, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "otgString = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1281
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 1282
    sget-object v24, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "====>>> It may be a null path, just skip it: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1269
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1283
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 1284
    sget-object v24, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "====>>> It is a OTG path, just skip it: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", with: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1298
    .end local v3    # "description":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "isEmulated":Z
    .end local v7    # "isPrimary":Z
    .end local v8    # "length":I
    .end local v10    # "m_getDescription":Ljava/lang/reflect/Method;
    .end local v11    # "m_getPath":Ljava/lang/reflect/Method;
    .end local v12    # "m_getVolumeList":Ljava/lang/reflect/Method;
    .end local v13    # "m_isEmulated":Ljava/lang/reflect/Method;
    .end local v14    # "m_isPrimary":Ljava/lang/reflect/Method;
    .end local v15    # "m_isRemovable":Ljava/lang/reflect/Method;
    .end local v16    # "m_state":Ljava/lang/reflect/Method;
    .end local v17    # "otgString":Ljava/lang/String;
    .end local v18    # "path":Ljava/lang/String;
    .end local v19    # "result":Ljava/lang/Object;
    .end local v21    # "state":Ljava/lang/String;
    .end local v23    # "storageVolumeElement":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 1299
    .local v4, "e":Ljava/lang/Exception;
    sget-object v24, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v25, "====>>> Got exception and fail to get external storage path"

    invoke-static/range {v24 .. v25}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1300
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1302
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v20

    .line 1286
    .restart local v3    # "description":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v6    # "isEmulated":Z
    .restart local v7    # "isPrimary":Z
    .restart local v8    # "length":I
    .restart local v10    # "m_getDescription":Ljava/lang/reflect/Method;
    .restart local v11    # "m_getPath":Ljava/lang/reflect/Method;
    .restart local v12    # "m_getVolumeList":Ljava/lang/reflect/Method;
    .restart local v13    # "m_isEmulated":Ljava/lang/reflect/Method;
    .restart local v14    # "m_isPrimary":Ljava/lang/reflect/Method;
    .restart local v15    # "m_isRemovable":Ljava/lang/reflect/Method;
    .restart local v16    # "m_state":Ljava/lang/reflect/Method;
    .restart local v17    # "otgString":Ljava/lang/String;
    .restart local v18    # "path":Ljava/lang/String;
    .restart local v19    # "result":Ljava/lang/Object;
    .restart local v21    # "state":Ljava/lang/String;
    .restart local v23    # "storageVolumeElement":Ljava/lang/Object;
    :cond_3
    :try_start_1
    const-string v24, "/dev/null"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 1287
    sget-object v24, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "====>>> It may be an invalid path, just skip it: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 1289
    :cond_4
    if-nez v6, :cond_0

    if-nez v7, :cond_0

    .line 1290
    const-string v24, "unmounted"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 1291
    sget-object v24, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v25, "the sdcard is unmounted"

    invoke-static/range {v24 .. v25}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1293
    :cond_5
    move-object/from16 v20, v18

    .line 1294
    sget-object v24, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "====>>> sdcard path as: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", and currently is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lcom/android/camera/Storage;->DCIM_SDCARD:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public static getSDCardStorageState(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1241
    invoke-static {p0}, Lcom/android/camera/Storage;->getSDCardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Storage;->DCIM_SDCARD:Ljava/lang/String;

    .line 1242
    sget-object v0, Lcom/android/camera/Storage;->DCIM_SDCARD:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
    const-string v0, "removed"

    .line 1245
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "mounted"

    goto :goto_0
.end method

.method public static getSessionUriFromContentUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 1093
    sget-object v0, Lcom/android/camera/Storage;->sContentUrisToSessions:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public static getSizeForSession(Landroid/net/Uri;)Landroid/graphics/Point;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1073
    sget-object v0, Lcom/android/camera/Storage;->sSessionsToSizes:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    return-object v0
.end method

.method public static getStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1191
    sget-object v0, Lcom/android/camera/Storage;->mStorePath:Ljava/lang/String;

    return-object v0
.end method

.method public static isCaptureIntentSessionUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1130
    if-nez p0, :cond_0

    .line 1131
    const/4 v0, 0x0

    .line 1132
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "capture_intent_session"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isSDCardAvailable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1227
    invoke-static {p0}, Lcom/android/camera/Storage;->getSDCardStorageState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1228
    .local v0, "state":Ljava/lang/String;
    sget-object v1, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The SD Card storage state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", SD Card path is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/Storage;->DCIM_SDCARD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", and Phone is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/Storage;->DCIM_PHONE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1229
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/camera/Storage;->DCIM_SDCARD:Ljava/lang/String;

    .line 1232
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/camera/Storage;->DCIM_PHONE:Ljava/lang/String;

    sget-object v2, Lcom/android/camera/Storage;->DCIM_SDCARD:Ljava/lang/String;

    .line 1233
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 1229
    :goto_0
    return v1

    .line 1233
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSessionUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1118
    if-nez p0, :cond_0

    .line 1119
    const/4 v0, 0x0

    .line 1120
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "camera_session"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isStreamingSessionUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1136
    if-nez p0, :cond_0

    .line 1137
    const/4 v0, 0x0

    .line 1138
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "streaming_session"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isVideoSessionUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1124
    if-nez p0, :cond_0

    .line 1125
    const/4 v0, 0x0

    .line 1126
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video_session"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static removeFile(Landroid/net/Uri;Landroid/content/ContentResolver;)Z
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x0

    .line 933
    invoke-virtual {p1, p0, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removePlaceholder(Landroid/net/Uri;)V
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 524
    sget-object v0, Lcom/android/camera/Storage;->sSessionsToSizes:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    sget-object v0, Lcom/android/camera/Storage;->sSessionsToPlaceholderBitmap:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    sget-object v0, Lcom/android/camera/Storage;->sSessionsToPlaceholderVersions:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    return-void
.end method

.method public static removesSessionContentUriPair(Landroid/net/Uri;)V
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1097
    sget-object v0, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove uri pair : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1098
    invoke-static {p0}, Lcom/android/camera/Storage;->isSessionUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/camera/Storage;->isVideoSessionUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/camera/Storage;->isCaptureIntentSessionUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1099
    :cond_0
    sget-object v0, Lcom/android/camera/Storage;->sContentUrisToSessions:Ljava/util/HashMap;

    sget-object v1, Lcom/android/camera/Storage;->sSessionsToContentUris:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    :goto_0
    return-void

    .line 1101
    :cond_1
    sget-object v0, Lcom/android/camera/Storage;->sSessionsToContentUris:Ljava/util/HashMap;

    sget-object v1, Lcom/android/camera/Storage;->sContentUrisToSessions:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static renameFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 4
    .param p0, "inputPath"    # Ljava/io/File;
    .param p1, "newFilePath"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x0

    .line 916
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 917
    sget-object v1, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File path already exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 929
    :goto_0
    return v0

    .line 920
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 921
    sget-object v1, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input path is directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 924
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Storage;->createDirectoryIfNeeded(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 925
    sget-object v1, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create parent directory for file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 926
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 925
    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 929
    :cond_2
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    goto :goto_0
.end method

.method public static replacePlaceholder(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "placeholder"    # Landroid/graphics/Bitmap;

    .prologue
    .line 538
    sget-object v2, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "session bitmap cache size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/Storage;->sSessionsToPlaceholderBitmap:Landroid/util/LruCache;

    invoke-virtual {v4}, Landroid/util/LruCache;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 539
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 540
    .local v1, "size":Landroid/graphics/Point;
    sget-object v2, Lcom/android/camera/Storage;->sSessionsToSizes:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    sget-object v2, Lcom/android/camera/Storage;->sSessionsToPlaceholderBitmap:Landroid/util/LruCache;

    invoke-virtual {v2, p0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    sget-object v2, Lcom/android/camera/Storage;->sSessionsToPlaceholderVersions:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 543
    .local v0, "currentVersion":Ljava/lang/Integer;
    sget-object v3, Lcom/android/camera/Storage;->sSessionsToPlaceholderVersions:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    return-void

    .line 543
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static setImageSize(Landroid/content/ContentValues;II)V
    .locals 2
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 873
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_MEDIA_COLUMNS_WIDTH_AND_HEIGHT:Z

    if-eqz v0, :cond_0

    .line 874
    const-string v0, "width"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 875
    const-string v0, "height"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 877
    :cond_0
    return-void
.end method

.method public static setStoragePath(Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 1206
    sput-object p0, Lcom/android/camera/Storage;->mStorePath:Ljava/lang/String;

    .line 1210
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1211
    sget-object v0, Lcom/android/camera/Storage;->DCIM_PHONE:Ljava/lang/String;

    sput-object v0, Lcom/android/camera/Storage;->DCIM:Ljava/lang/String;

    .line 1212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/Storage;->DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    .line 1219
    :goto_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/Storage;->DIRECTORY_FILE:Ljava/io/File;

    .line 1220
    sget-object v0, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Storage;->BUCKET_ID:Ljava/lang/String;

    .line 1221
    return-void

    .line 1214
    :cond_0
    sget-object v0, Lcom/android/camera/Storage;->DCIM_SDCARD:Ljava/lang/String;

    sput-object v0, Lcom/android/camera/Storage;->DCIM:Ljava/lang/String;

    .line 1215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/Storage;->DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    .line 1216
    sget-object v0, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    sput-object v0, Lcom/android/camera/Storage;->DIRECTORY_SDCARD:Ljava/lang/String;

    goto :goto_0
.end method

.method public static updateBokehImage(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;
    .locals 21
    .param p0, "imageUri"    # Landroid/net/Uri;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "date"    # J
    .param p5, "location"    # Landroid/location/Location;
    .param p6, "orientation"    # I
    .param p7, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p8, "jpeg"    # [B
    .param p9, "width"    # I
    .param p10, "height"    # I
    .param p11, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 638
    move-object/from16 v0, p2

    move-object/from16 v1, p11

    invoke-static {v0, v1}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 639
    .local v12, "path":Ljava/lang/String;
    sget-object v3, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateBokehImage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 640
    move-object/from16 v0, p8

    move-object/from16 v1, p7

    invoke-static {v12, v0, v1}, Lcom/android/camera/Storage;->writeFile(Ljava/lang/String;[BLcom/android/camera/exif/ExifInterface;)J

    move-result-wide v10

    .line 641
    .local v10, "fileLength":J
    const/16 v19, 0x0

    .line 643
    .local v19, "xmpMeta":Lcom/adobe/xmp/XMPMeta;
    :try_start_0
    new-instance v3, Lcom/android/camera/xmp/BokehXMPCreator;

    invoke-direct {v3}, Lcom/android/camera/xmp/BokehXMPCreator;-><init>()V

    invoke-virtual {v3}, Lcom/android/camera/xmp/BokehXMPCreator;->createBokehXMP()Lcom/adobe/xmp/XMPMeta;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 647
    :goto_0
    move-object/from16 v0, v19

    invoke-static {v12, v0}, Lcom/android/camera/util/XmpUtil;->writeXMPMeta(Ljava/lang/String;Lcom/adobe/xmp/XMPMeta;)Z

    move-result v18

    .line 648
    .local v18, "success":Z
    sget-object v3, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeXMPMeta : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 649
    sget-object v3, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateBokehImage fileLength : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 651
    const-wide/16 v4, 0x0

    cmp-long v3, v10, v4

    if-ltz v3, :cond_0

    .line 652
    const-wide/16 v16, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    invoke-static/range {v3 .. v17}, Lcom/android/camera/Storage;->updateImage(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;IJLjava/lang/String;IILjava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 654
    :goto_1
    return-object v3

    .line 644
    .end local v18    # "success":Z
    :catch_0
    move-exception v2

    .line 645
    .local v2, "e":Lcom/adobe/xmp/XMPException;
    invoke-virtual {v2}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    goto :goto_0

    .line 654
    .end local v2    # "e":Lcom/adobe/xmp/XMPException;
    .restart local v18    # "success":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static updateDepthImage(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;Lcom/android/camera/mpo/Bokeh_Info;IILjava/lang/String;)Landroid/net/Uri;
    .locals 31
    .param p0, "imageUri"    # Landroid/net/Uri;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "date"    # J
    .param p5, "location"    # Landroid/location/Location;
    .param p6, "orientation"    # I
    .param p7, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p8, "data"    # Lcom/android/camera/mpo/Bokeh_Info;
    .param p9, "width"    # I
    .param p10, "height"    # I
    .param p11, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 808
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqZeissBokeh()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p11

    invoke-static {v0, v6, v1}, Lcom/android/camera/Storage;->generateBokehFilepath(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 809
    .local v22, "path":Ljava/lang/String;
    :goto_0
    sget-object v6, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateDepthImage : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 812
    new-instance v6, Lcom/android/camera/gdepth/WriteDepthFile;

    move/from16 v0, p9

    move/from16 v1, p10

    invoke-direct {v6, v0, v1}, Lcom/android/camera/gdepth/WriteDepthFile;-><init>(II)V

    move-object/from16 v0, p8

    move-object/from16 v1, v22

    move-object/from16 v2, p7

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/camera/gdepth/WriteDepthFile;->writeFile(Lcom/android/camera/mpo/Bokeh_Info;Ljava/lang/String;Lcom/android/camera/exif/ExifInterface;)J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v28, v0

    .line 815
    .local v28, "fileLength":I
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqZeissBokeh()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 816
    const-wide/16 v10, 0x0

    .line 817
    .local v10, "coverFileLength":J
    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lcom/android/camera/util/CameraUtil;->generateBokehBurstImgTitle(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 818
    .local v5, "coverTitle":Ljava/lang/String;
    const/4 v6, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p11

    invoke-static {v0, v6, v1}, Lcom/android/camera/Storage;->generateBokehFilepath(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 819
    .local v12, "coverPath":Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lcom/android/camera/util/CameraUtil;->generateBokehBurstImgTitle(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    .line 821
    :try_start_0
    move-object/from16 v0, p8

    iget-object v6, v0, Lcom/android/camera/mpo/Bokeh_Info;->mPrimaryData:[B

    move-object/from16 v0, p7

    invoke-static {v12, v6, v0}, Lcom/android/camera/Storage;->writeFile(Ljava/lang/String;[BLcom/android/camera/exif/ExifInterface;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    .line 825
    :goto_1
    sget-object v6, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "coverFileLength : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 826
    const-wide/16 v6, 0x0

    cmp-long v6, v10, v6

    if-lez v6, :cond_0

    .line 827
    move-object/from16 v0, p8

    iget-wide v0, v0, Lcom/android/camera/mpo/Bokeh_Info;->mBokehType:J

    move-wide/from16 v16, v0

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    .line 828
    invoke-static/range {v5 .. v17}, Lcom/android/camera/Storage;->getContentValuesForData(Ljava/lang/String;JLandroid/location/Location;IJLjava/lang/String;IILjava/lang/String;J)Landroid/content/ContentValues;

    move-result-object v30

    .line 830
    .local v30, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/camera/Storage;->addImageToMediaStore(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v29

    .line 833
    .local v29, "resultUri":Landroid/net/Uri;
    sget-object v6, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cover resultUri:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 837
    .end local v5    # "coverTitle":Ljava/lang/String;
    .end local v10    # "coverFileLength":J
    .end local v12    # "coverPath":Ljava/lang/String;
    .end local v29    # "resultUri":Landroid/net/Uri;
    .end local v30    # "values":Landroid/content/ContentValues;
    :cond_0
    sget-object v6, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateDepthImage fileLength : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 838
    if-ltz v28, :cond_2

    .line 839
    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p8

    iget-wide v0, v0, Lcom/android/camera/mpo/Bokeh_Info;->mBokehType:J

    move-wide/from16 v26, v0

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-wide/from16 v16, p3

    move-object/from16 v18, p5

    move/from16 v19, p6

    move/from16 v23, p9

    move/from16 v24, p10

    move-object/from16 v25, p11

    invoke-static/range {v13 .. v27}, Lcom/android/camera/Storage;->updateImage(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;IJLjava/lang/String;IILjava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    .line 841
    :goto_2
    return-object v6

    .line 808
    .end local v22    # "path":Ljava/lang/String;
    .end local v28    # "fileLength":I
    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, p11

    invoke-static {v0, v1}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_0

    .line 822
    .restart local v5    # "coverTitle":Ljava/lang/String;
    .restart local v10    # "coverFileLength":J
    .restart local v12    # "coverPath":Ljava/lang/String;
    .restart local v22    # "path":Ljava/lang/String;
    .restart local v28    # "fileLength":I
    :catch_0
    move-exception v4

    .line 823
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 841
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "coverTitle":Ljava/lang/String;
    .end local v10    # "coverFileLength":J
    .end local v12    # "coverPath":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public static updateDualImage(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;
    .locals 23
    .param p0, "imageUri"    # Landroid/net/Uri;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "date"    # J
    .param p5, "location"    # Landroid/location/Location;
    .param p6, "orientation"    # I
    .param p7, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p8, "data"    # [B
    .param p9, "width"    # I
    .param p10, "height"    # I
    .param p11, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    move-object/from16 v0, p2

    move-object/from16 v1, p11

    invoke-static {v0, v1}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 238
    .local v12, "path":Ljava/lang/String;
    move-object/from16 v0, p8

    move-object/from16 v1, p7

    invoke-static {v12, v0, v1}, Lcom/android/camera/Storage;->writeFile(Ljava/lang/String;[BLcom/android/camera/exif/ExifInterface;)J

    move-result-wide v18

    .line 240
    .local v18, "fileLength":J
    const/16 v22, 0x0

    .line 242
    .local v22, "xmpMeta":Lcom/adobe/xmp/XMPMeta;
    :try_start_0
    new-instance v3, Lcom/android/camera/xmp/DualSightXMPUtil$DualSightXMPCreator;

    invoke-direct {v3}, Lcom/android/camera/xmp/DualSightXMPUtil$DualSightXMPCreator;-><init>()V

    invoke-virtual {v3}, Lcom/android/camera/xmp/DualSightXMPUtil$DualSightXMPCreator;->createDualSightXMP()Lcom/adobe/xmp/XMPMeta;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    .line 246
    :goto_0
    move-object/from16 v0, v22

    invoke-static {v12, v0}, Lcom/android/camera/util/XmpUtil;->writeXMPMeta(Ljava/lang/String;Lcom/adobe/xmp/XMPMeta;)Z

    move-result v21

    .line 248
    .local v21, "success":Z
    move-wide/from16 v10, v18

    .line 249
    .local v10, "newFileLength":J
    if-eqz v21, :cond_0

    .line 250
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .local v20, "newFile":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 254
    .end local v20    # "newFile":Ljava/io/File;
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v3, v10, v4

    if-ltz v3, :cond_1

    .line 255
    const-wide/16 v16, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    invoke-static/range {v3 .. v17}, Lcom/android/camera/Storage;->updateImage(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;IJLjava/lang/String;IILjava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 257
    :goto_1
    return-object v3

    .line 243
    .end local v10    # "newFileLength":J
    .end local v21    # "success":Z
    :catch_0
    move-exception v2

    .line 244
    .local v2, "e":Lcom/adobe/xmp/XMPException;
    invoke-virtual {v2}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    goto :goto_0

    .line 257
    .end local v2    # "e":Lcom/adobe/xmp/XMPException;
    .restart local v10    # "newFileLength":J
    .restart local v21    # "success":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static updateImage(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;IJLjava/lang/String;IILjava/lang/String;J)Landroid/net/Uri;
    .locals 7
    .param p0, "imageUri"    # Landroid/net/Uri;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "date"    # J
    .param p5, "location"    # Landroid/location/Location;
    .param p6, "orientation"    # I
    .param p7, "jpegLength"    # J
    .param p9, "path"    # Ljava/lang/String;
    .param p10, "width"    # I
    .param p11, "height"    # I
    .param p12, "mimeType"    # Ljava/lang/String;
    .param p13, "bokehType"    # J

    .prologue
    .line 990
    .line 991
    invoke-static/range {p2 .. p14}, Lcom/android/camera/Storage;->getContentValuesForData(Ljava/lang/String;JLandroid/location/Location;IJLjava/lang/String;IILjava/lang/String;J)Landroid/content/ContentValues;

    move-result-object v3

    .line 995
    .local v3, "values":Landroid/content/ContentValues;
    move-object v2, p0

    .line 996
    .local v2, "resultUri":Landroid/net/Uri;
    invoke-static {p0}, Lcom/android/camera/Storage;->isSessionUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 997
    invoke-static {p0}, Lcom/android/camera/Storage;->getContentUriForSessionUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 998
    .local v1, "contentUri":Landroid/net/Uri;
    sget-object v4, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Photos] updateImage - mimeType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p12

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " imageUri:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " contentUri:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " width:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p10

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p11

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1001
    if-nez v1, :cond_0

    .line 1003
    invoke-static {p1, v3}, Lcom/android/camera/Storage;->addImageToMediaStore(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 1004
    sget-object v4, Lcom/android/camera/Storage;->sSessionsToContentUris:Ljava/util/HashMap;

    invoke-virtual {v4, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    sget-object v4, Lcom/android/camera/Storage;->sContentUrisToSessions:Ljava/util/HashMap;

    invoke-virtual {v4, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    .end local v1    # "contentUri":Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 1007
    .restart local v1    # "contentUri":Landroid/net/Uri;
    :cond_0
    invoke-static {p0}, Lcom/android/camera/Storage;->isVideoSessionUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1008
    sget-object v4, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to add image to media store : wrong uri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1011
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1015
    .end local v1    # "contentUri":Landroid/net/Uri;
    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1, p0, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateImage(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;
    .locals 19
    .param p0, "imageUri"    # Landroid/net/Uri;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "date"    # J
    .param p5, "location"    # Landroid/location/Location;
    .param p6, "orientation"    # I
    .param p7, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p8, "jpeg"    # [B
    .param p9, "width"    # I
    .param p10, "height"    # I
    .param p11, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 661
    move-object/from16 v0, p2

    move-object/from16 v1, p11

    invoke-static {v0, v1}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 662
    .local v12, "path":Ljava/lang/String;
    sget-object v2, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateImage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 663
    move-object/from16 v0, p8

    move-object/from16 v1, p7

    invoke-static {v12, v0, v1}, Lcom/android/camera/Storage;->writeFile(Ljava/lang/String;[BLcom/android/camera/exif/ExifInterface;)J

    move-result-wide v10

    .line 664
    .local v10, "fileLength":J
    sget-object v2, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateImage fileLength : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 665
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-ltz v2, :cond_0

    .line 666
    const-wide/16 v16, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    invoke-static/range {v3 .. v17}, Lcom/android/camera/Storage;->updateImage(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;IJLjava/lang/String;IILjava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    .line 668
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static updateImageMicroVideo(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;
    .locals 28
    .param p0, "videoPath"    # Ljava/lang/String;
    .param p1, "imageUri"    # Landroid/net/Uri;
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "date"    # J
    .param p6, "location"    # Landroid/location/Location;
    .param p7, "orientation"    # I
    .param p8, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p9, "jpeg"    # [B
    .param p10, "width"    # I
    .param p11, "height"    # I
    .param p12, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 675
    move-object/from16 v0, p3

    move-object/from16 v1, p12

    invoke-static {v0, v1}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 676
    .local v22, "path":Ljava/lang/String;
    sget-object v5, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateImage : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 677
    move-object/from16 v0, v22

    move-object/from16 v1, p9

    move-object/from16 v2, p8

    invoke-static {v0, v1, v2}, Lcom/android/camera/Storage;->writeFile(Ljava/lang/String;[BLcom/android/camera/exif/ExifInterface;)J

    move-result-wide v12

    .line 678
    .local v12, "fileLength":J
    sget-object v5, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateImage fileLength : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 679
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/camera/Storage;->writeXMP(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 682
    .local v26, "timeS":J
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-static {v5, v0}, Lcom/android/camera/Storage;->copyVideoAppend(Ljava/io/File;Ljava/lang/String;)Z

    .line 683
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 684
    .local v24, "timeE":J
    sub-long v20, v24, v26

    .line 685
    .local v20, "diff":J
    sget-object v5, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "copyVideoAppend cost time: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 686
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MV"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 687
    .local v7, "finalTitle":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 688
    .local v14, "finalPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 689
    .local v4, "jpegFile":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 690
    const-wide/16 v8, 0x0

    cmp-long v5, v12, v8

    if-ltz v5, :cond_0

    .line 691
    const-wide/16 v18, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    move/from16 v11, p7

    move/from16 v15, p10

    move/from16 v16, p11

    move-object/from16 v17, p12

    invoke-static/range {v5 .. v19}, Lcom/android/camera/Storage;->updateImage(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;IJLjava/lang/String;IILjava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    .line 693
    :goto_0
    return-object v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static updateMpoImage(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;IILjava/lang/String;IILjava/lang/String;J)I
    .locals 20
    .param p0, "imageUri"    # Landroid/net/Uri;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "date"    # J
    .param p5, "location"    # Landroid/location/Location;
    .param p6, "orientation"    # I
    .param p7, "jpegLength"    # I
    .param p8, "path"    # Ljava/lang/String;
    .param p9, "width"    # I
    .param p10, "height"    # I
    .param p11, "mimeType"    # Ljava/lang/String;
    .param p12, "bokehType"    # J

    .prologue
    .line 766
    move/from16 v0, p7

    int-to-long v10, v0

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    move-wide/from16 v16, p12

    invoke-static/range {v5 .. v17}, Lcom/android/camera/Storage;->getContentValuesForData(Ljava/lang/String;JLandroid/location/Location;IJLjava/lang/String;IILjava/lang/String;J)Landroid/content/ContentValues;

    move-result-object v19

    .line 768
    .local v19, "values":Landroid/content/ContentValues;
    const/4 v4, -0x1

    .line 770
    .local v4, "result":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 771
    sget-object v5, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " updateMpoImage "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 781
    :goto_0
    return v4

    .line 772
    :catch_0
    move-exception v18

    .line 778
    .local v18, "th":Ljava/lang/Throwable;
    sget-object v5, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to write MediaStore"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateMpoImage(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;Lcom/android/camera/mpo/Bokeh_Info;IILjava/lang/String;)Landroid/net/Uri;
    .locals 21
    .param p0, "imageUri"    # Landroid/net/Uri;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "date"    # J
    .param p5, "location"    # Landroid/location/Location;
    .param p6, "orientation"    # I
    .param p7, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p8, "data"    # Lcom/android/camera/mpo/Bokeh_Info;
    .param p9, "width"    # I
    .param p10, "height"    # I
    .param p11, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 787
    move-object/from16 v0, p2

    move-object/from16 v1, p11

    invoke-static {v0, v1}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 788
    .local v12, "path":Ljava/lang/String;
    sget-object v3, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMpoImage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 790
    new-instance v3, Lcom/android/camera/mpo/WriteMpoFile;

    invoke-direct {v3}, Lcom/android/camera/mpo/WriteMpoFile;-><init>()V

    move-object/from16 v0, p8

    invoke-virtual {v3, v0, v12}, Lcom/android/camera/mpo/WriteMpoFile;->writeFile(Lcom/android/camera/mpo/Bokeh_Info;Ljava/lang/String;)I

    move-result v18

    .line 791
    .local v18, "fileLength":I
    const/16 v20, 0x0

    .line 793
    .local v20, "xmpMeta":Lcom/adobe/xmp/XMPMeta;
    :try_start_0
    new-instance v3, Lcom/android/camera/xmp/BokehXMPCreator;

    invoke-direct {v3}, Lcom/android/camera/xmp/BokehXMPCreator;-><init>()V

    invoke-virtual {v3}, Lcom/android/camera/xmp/BokehXMPCreator;->createBokehXMP()Lcom/adobe/xmp/XMPMeta;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    .line 797
    :goto_0
    move-object/from16 v0, v20

    invoke-static {v12, v0}, Lcom/android/camera/util/XmpUtil;->writeXMPMeta(Ljava/lang/String;Lcom/adobe/xmp/XMPMeta;)Z

    move-result v19

    .line 798
    .local v19, "success":Z
    sget-object v3, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMpoImage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 799
    sget-object v3, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMpoImage fileLength : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 801
    if-ltz v18, :cond_0

    .line 802
    move/from16 v0, v18

    int-to-long v10, v0

    move-object/from16 v0, p8

    iget-wide v0, v0, Lcom/android/camera/mpo/Bokeh_Info;->mBokehType:J

    move-wide/from16 v16, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    invoke-static/range {v3 .. v17}, Lcom/android/camera/Storage;->updateImage(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;IJLjava/lang/String;IILjava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 804
    :goto_1
    return-object v3

    .line 794
    .end local v19    # "success":Z
    :catch_0
    move-exception v2

    .line 795
    .local v2, "e":Lcom/adobe/xmp/XMPException;
    invoke-virtual {v2}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    goto :goto_0

    .line 804
    .end local v2    # "e":Lcom/adobe/xmp/XMPException;
    .restart local v19    # "success":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static updateVideo(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .param p0, "videoUri"    # Landroid/net/Uri;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 588
    sget-object v3, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateVideo : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 590
    const/4 v2, 0x0

    .line 592
    .local v2, "resultUri":Landroid/net/Uri;
    :try_start_0
    invoke-static {p0}, Lcom/android/camera/Storage;->isVideoSessionUri(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/android/camera/Storage;->isCaptureIntentSessionUri(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 593
    :cond_0
    invoke-static {p0}, Lcom/android/camera/Storage;->getContentUriForSessionUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 594
    .local v0, "contentUri":Landroid/net/Uri;
    if-nez v0, :cond_1

    .line 596
    const-string v3, "content://media/external/video/media"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v3, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 597
    sget-object v3, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Photos] addImageToMediaStore - resultUri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 598
    invoke-static {p0, v2}, Lcom/android/camera/Storage;->addSessionContentUriPair(Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    .end local v0    # "contentUri":Landroid/net/Uri;
    :goto_0
    sget-object v3, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current video URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 615
    :goto_1
    return-object v2

    .line 600
    .restart local v0    # "contentUri":Landroid/net/Uri;
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p1, v0, p3, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 608
    .end local v0    # "contentUri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 611
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "failed to add video to media store"

    invoke-static {v3, v4, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 613
    sget-object v3, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current video URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 602
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_3
    invoke-static {p0}, Lcom/android/camera/Storage;->isSessionUri(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 603
    sget-object v3, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to add video to media store : wrong uri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 613
    :catchall_0
    move-exception v3

    sget-object v4, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current video URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    throw v3

    .line 606
    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_4
    invoke-virtual {p1, p0, p3, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private static writeFile(Ljava/lang/String;[B)J
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    .line 945
    const/4 v1, 0x0

    .line 947
    .local v1, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 948
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 949
    array-length v3, p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    int-to-long v4, v3

    .line 954
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    move-object v1, v2

    .line 959
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    :goto_1
    return-wide v4

    .line 955
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 956
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "Failed to close file after write"

    invoke-static {v3, v6, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 950
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 951
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    sget-object v3, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Failed to write data"

    invoke-static {v3, v4, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 954
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 959
    :goto_3
    const-wide/16 v4, -0x1

    goto :goto_1

    .line 955
    :catch_2
    move-exception v0

    .line 956
    sget-object v3, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Failed to close file after write"

    invoke-static {v3, v4, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 953
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 954
    :goto_4
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 957
    :goto_5
    throw v3

    .line 955
    :catch_3
    move-exception v0

    .line 956
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Failed to close file after write"

    invoke-static {v4, v5, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 953
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 950
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static writeFile(Ljava/lang/String;[BLcom/android/camera/exif/ExifInterface;)J
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "jpeg"    # [B
    .param p2, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 890
    invoke-static {p0}, Lcom/android/camera/Storage;->createDirectoryIfNeeded(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 891
    sget-object v1, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create parent directory for file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 892
    const-wide/16 v2, -0x1

    .line 900
    :goto_0
    return-wide v2

    .line 894
    :cond_0
    if-eqz p2, :cond_1

    .line 895
    invoke-virtual {p2, p1, p0}, Lcom/android/camera/exif/ExifInterface;->writeExif([BLjava/lang/String;)V

    .line 896
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 898
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    goto :goto_0

    .line 900
    .end local v0    # "f":Ljava/io/File;
    :cond_1
    invoke-static {p0, p1}, Lcom/android/camera/Storage;->writeFile(Ljava/lang/String;[B)J

    move-result-wide v2

    goto :goto_0
.end method

.method private static writeXMP(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "videoPath"    # Ljava/lang/String;

    .prologue
    .line 697
    if-nez p1, :cond_1

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 700
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 701
    .local v1, "videofile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 706
    :try_start_0
    const-string v2, "image/jpeg"

    invoke-static {p0, v2, v1}, Lcom/android/camera/Storage;->addMacioVideo(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 707
    :catch_0
    move-exception v0

    .line 708
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
