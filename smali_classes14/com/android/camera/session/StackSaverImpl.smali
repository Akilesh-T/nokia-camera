.class public Lcom/android/camera/session/StackSaverImpl;
.super Ljava/lang/Object;
.source "StackSaverImpl.java"

# interfaces
.implements Lcom/android/camera/session/StackSaver;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mGpsLocation:Landroid/location/Location;

.field private final mStackDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "StackSaverImpl"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/session/StackSaverImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/location/Location;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "stackDirectory"    # Ljava/io/File;
    .param p2, "gpsLocation"    # Landroid/location/Location;
    .param p3, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/camera/session/StackSaverImpl;->mStackDirectory:Ljava/io/File;

    .line 57
    iput-object p2, p0, Lcom/android/camera/session/StackSaverImpl;->mGpsLocation:Landroid/location/Location;

    .line 58
    iput-object p3, p0, Lcom/android/camera/session/StackSaverImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 59
    return-void
.end method


# virtual methods
.method public saveStackedImage(Ljava/io/File;Ljava/lang/String;IIIJLjava/lang/String;)Landroid/net/Uri;
    .locals 16
    .param p1, "inputImagePath"    # Ljava/io/File;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "imageOrientation"    # I
    .param p6, "captureTimeEpoch"    # J
    .param p8, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 64
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/StackSaverImpl;->mStackDirectory:Ljava/io/File;

    .line 65
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, p8

    invoke-static {v2, v0, v1}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 66
    .local v10, "filePath":Ljava/lang/String;
    sget-object v2, Lcom/android/camera/session/StackSaverImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saving using stack image saver: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 67
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v14, "outputImagePath":Ljava/io/File;
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/camera/Storage;->renameFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 71
    .local v8, "fileLength":J
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-lez v2, :cond_0

    .line 72
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/StackSaverImpl;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/session/StackSaverImpl;->mGpsLocation:Landroid/location/Location;

    move-object/from16 v3, p2

    move-wide/from16 v4, p6

    move/from16 v7, p5

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p8

    invoke-static/range {v2 .. v13}, Lcom/android/camera/Storage;->addImageToMediaStore(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;IJLjava/lang/String;IILjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 81
    .end local v8    # "fileLength":J
    :goto_0
    return-object v2

    .line 78
    :cond_0
    sget-object v2, Lcom/android/camera/session/StackSaverImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Unable to rename file from %s to %s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 79
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v10, v4, v5

    .line 78
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 81
    const/4 v2, 0x0

    goto :goto_0
.end method
