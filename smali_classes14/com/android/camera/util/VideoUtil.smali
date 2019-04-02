.class public Lcom/android/camera/util/VideoUtil;
.super Ljava/lang/Object;
.source "VideoUtil.java"


# static fields
.field public static final BASE_VIDEO_FRAME_RATE:I = 0x1e

.field public static final INVALID_HIGH_SPEED_QUALITY:I = -0x1

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field public static final VIDEO_BASE_URI:Ljava/lang/String; = "content://media/external/video/media"

.field private static mOriginalRingerMode:I

.field private static mPolicy:Landroid/app/NotificationManager$Policy;

.field private static mTestCategory:I

.field private static mTestPriorityCallSenders:I

.field private static mTestPriorityMessageSenders:I

.field private static final mVideoUtilExtension:Lcom/android/camera/one/v2/photo/extension/VideoUtilExtension;

.field private static needRestoreRepeatCaller:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "VideoUtil"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/util/VideoUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 37
    invoke-static {}, Lcom/android/camera/one/v2/photo/extension/VideoUtilExtensionCreator;->create()Lcom/android/camera/one/v2/photo/extension/VideoUtilExtension;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/VideoUtil;->mVideoUtilExtension:Lcom/android/camera/one/v2/photo/extension/VideoUtilExtension;

    .line 109
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/util/VideoUtil;->needRestoreRepeatCaller:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkRepeatCaller(ZLandroid/app/NotificationManager;)Z
    .locals 6
    .param p0, "restore"    # Z
    .param p1, "mNotificationMgr"    # Landroid/app/NotificationManager;

    .prologue
    const/4 v2, 0x0

    .line 169
    sget-object v3, Lcom/android/camera/util/VideoUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkRepeatCaller, restore = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v3

    sput-object v3, Lcom/android/camera/util/VideoUtil;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 173
    if-nez p0, :cond_1

    .line 174
    sget-object v3, Lcom/android/camera/util/VideoUtil;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v3, v3, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    sput v3, Lcom/android/camera/util/VideoUtil;->mTestPriorityCallSenders:I

    .line 175
    sget-object v3, Lcom/android/camera/util/VideoUtil;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v3, v3, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    sput v3, Lcom/android/camera/util/VideoUtil;->mTestPriorityMessageSenders:I

    .line 176
    sget-object v3, Lcom/android/camera/util/VideoUtil;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v3, v3, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    sput v3, Lcom/android/camera/util/VideoUtil;->mTestCategory:I

    .line 178
    sget v0, Lcom/android/camera/util/VideoUtil;->mTestCategory:I

    .line 179
    .local v0, "newCategory":I
    sget v3, Lcom/android/camera/util/VideoUtil;->mTestCategory:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_0

    .line 180
    and-int/lit8 v0, v0, -0x11

    .line 181
    sget-object v2, Lcom/android/camera/util/VideoUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newCategory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 182
    new-instance v1, Landroid/app/NotificationManager$Policy;

    sget v2, Lcom/android/camera/util/VideoUtil;->mTestPriorityCallSenders:I

    sget v3, Lcom/android/camera/util/VideoUtil;->mTestPriorityMessageSenders:I

    invoke-direct {v1, v0, v2, v3}, Landroid/app/NotificationManager$Policy;-><init>(III)V

    .line 183
    .local v1, "policy":Landroid/app/NotificationManager$Policy;
    invoke-virtual {p1, v1}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 184
    const/4 v2, 0x1

    .line 190
    .end local v0    # "newCategory":I
    .end local v1    # "policy":Landroid/app/NotificationManager$Policy;
    :cond_0
    :goto_0
    return v2

    .line 188
    :cond_1
    new-instance v1, Landroid/app/NotificationManager$Policy;

    sget v3, Lcom/android/camera/util/VideoUtil;->mTestCategory:I

    sget v4, Lcom/android/camera/util/VideoUtil;->mTestPriorityCallSenders:I

    sget v5, Lcom/android/camera/util/VideoUtil;->mTestPriorityMessageSenders:I

    invoke-direct {v1, v3, v4, v5}, Landroid/app/NotificationManager$Policy;-><init>(III)V

    .line 189
    .restart local v1    # "policy":Landroid/app/NotificationManager$Policy;
    invoke-virtual {p1, v1}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    goto :goto_0
.end method

.method private static checkRingerModeAccessRights(Landroid/app/NotificationManager;)Z
    .locals 6
    .param p0, "notificationManager"    # Landroid/app/NotificationManager;

    .prologue
    const/16 v5, 0x18

    .line 147
    const/4 v0, 0x1

    .line 148
    .local v0, "hasRights":Z
    if-nez p0, :cond_1

    .line 149
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v2, v5, :cond_0

    const/4 v0, 0x0

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 151
    :cond_1
    invoke-virtual {p0}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    move-result v1

    .line 152
    .local v1, "isNotificationPolicyAccessGranted":Z
    sget-object v2, Lcom/android/camera/util/VideoUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkRingerModeAccessRights AccessGranted = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 153
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v5, :cond_0

    if-nez v1, :cond_0

    .line 154
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1
    .param p0, "outputFileFormat"    # I

    .prologue
    .line 47
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 48
    const-string v0, ".mp4"

    .line 50
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ".3gp"

    goto :goto_0
.end method

.method public static convertOutputFormatToMimeType(I)Ljava/lang/String;
    .locals 1
    .param p0, "outputFileFormat"    # I

    .prologue
    .line 54
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 55
    const-string v0, "video/mp4"

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "video/3gpp"

    goto :goto_0
.end method

.method public static createName(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dateTaken"    # J

    .prologue
    .line 40
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 41
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f080448

    .line 42
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 43
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static generateVideoFilename(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "outputFileFormat"    # I

    .prologue
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 62
    .local v0, "dateTaken":J
    invoke-static {p0, v0, v1}, Lcom/android/camera/util/VideoUtil;->createName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "title":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/android/camera/util/VideoUtil;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "filename":Ljava/lang/String;
    return-object v2
.end method

.method public static pickOptionalHighSpeedVideoProfile(Lcom/android/camera/device/CameraId;Ljava/util/List;I)Landroid/util/Pair;
    .locals 14
    .param p0, "cameraId"    # Lcom/android/camera/device/CameraId;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "minFpsLimit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/device/CameraId;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/camera/util/Size;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;I)",
            "Landroid/util/Pair",
            "<",
            "Landroid/media/CamcorderProfile;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/one/OneCameraAccessException;
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "supportedHighSpeedVideoMap":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/camera/util/Size;Landroid/util/Range<Ljava/lang/Integer;>;>;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 69
    :cond_0
    new-instance v7, Lcom/android/camera/one/OneCameraAccessException;

    const-string v8, "supportedHighSpeedVideoMap not available"

    invoke-direct {v7, v8}, Lcom/android/camera/one/OneCameraAccessException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 72
    :cond_1
    const/4 v4, -0x1

    .line 73
    .local v4, "selectedQuality":I
    const/4 v6, 0x0

    .line 74
    .local v6, "videoSize":Lcom/android/camera/util/Size;
    const/4 v5, 0x0

    .line 75
    .local v5, "videoFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    div-int/lit8 v0, p2, 0x1e

    .local v0, "currentPower":I
    :goto_0
    if-lez v0, :cond_5

    .line 76
    mul-int/lit8 v2, v0, 0x1e

    .line 77
    .local v2, "limitMinFps":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 78
    .local v1, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/camera/util/Size;Landroid/util/Range<Ljava/lang/Integer;>;>;"
    iget-object v7, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroid/util/Range;

    invoke-virtual {v7}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gt v2, v7, :cond_2

    .line 79
    sget-object v10, Lcom/android/camera/util/VideoUtil;->mVideoUtilExtension:Lcom/android/camera/one/v2/photo/extension/VideoUtilExtension;

    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/android/camera/util/Size;

    iget-object v8, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroid/util/Range;

    invoke-virtual {v8}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v10, p0, v7, v8}, Lcom/android/camera/one/v2/photo/extension/VideoUtilExtension;->isHSRQualitySupByCamcorder(Lcom/android/camera/device/CameraId;Lcom/android/camera/util/Size;I)I

    move-result v3

    .line 80
    .local v3, "quality":I
    const/4 v7, -0x1

    if-eq v3, v7, :cond_2

    .line 81
    const/4 v7, -0x1

    if-ne v4, v7, :cond_3

    .line 82
    move v4, v3

    .line 83
    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v6    # "videoSize":Lcom/android/camera/util/Size;
    check-cast v6, Lcom/android/camera/util/Size;

    .line 84
    .restart local v6    # "videoSize":Lcom/android/camera/util/Size;
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .end local v5    # "videoFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    check-cast v5, Landroid/util/Range;

    .restart local v5    # "videoFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    goto :goto_1

    .line 85
    :cond_3
    iget-object v7, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroid/util/Range;

    invoke-virtual {v7}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lt v8, v7, :cond_2

    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/android/camera/util/Size;

    .line 86
    invoke-virtual {v7}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v10

    invoke-virtual {v6}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v12

    cmp-long v7, v10, v12

    if-lez v7, :cond_2

    .line 87
    move v4, v3

    .line 88
    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v6    # "videoSize":Lcom/android/camera/util/Size;
    check-cast v6, Lcom/android/camera/util/Size;

    .line 89
    .restart local v6    # "videoSize":Lcom/android/camera/util/Size;
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .end local v5    # "videoFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    check-cast v5, Landroid/util/Range;

    .restart local v5    # "videoFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    goto :goto_1

    .line 93
    .end local v1    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/camera/util/Size;Landroid/util/Range<Ljava/lang/Integer;>;>;"
    .end local v3    # "quality":I
    :cond_4
    const/4 v7, -0x1

    if-eq v4, v7, :cond_6

    .line 96
    .end local v2    # "limitMinFps":I
    :cond_5
    sget-object v8, Lcom/android/camera/util/VideoUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "camera : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", selectedQuality : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", videoSize = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v6, :cond_7

    .line 98
    invoke-virtual {v6}, Lcom/android/camera/util/Size;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", videoFpsRange : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v5, :cond_8

    .line 99
    invoke-virtual {v5}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 96
    invoke-static {v8, v7}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 101
    new-instance v7, Landroid/util/Pair;

    sget-object v8, Lcom/android/camera/util/VideoUtil;->mVideoUtilExtension:Lcom/android/camera/one/v2/photo/extension/VideoUtilExtension;

    invoke-virtual {v8, p0, v4}, Lcom/android/camera/one/v2/photo/extension/VideoUtilExtension;->getCamcorderProfile(Lcom/android/camera/device/CameraId;I)Landroid/media/CamcorderProfile;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7

    .line 75
    .restart local v2    # "limitMinFps":I
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 98
    .end local v2    # "limitMinFps":I
    :cond_7
    const/4 v7, 0x0

    goto :goto_2

    .line 99
    :cond_8
    const/4 v7, 0x0

    goto :goto_3
.end method

.method public static restoreRingerMode(Landroid/media/AudioManager;Landroid/app/NotificationManager;)V
    .locals 4
    .param p0, "audioManager"    # Landroid/media/AudioManager;
    .param p1, "notificationMgr"    # Landroid/app/NotificationManager;

    .prologue
    .line 130
    if-eqz p0, :cond_1

    .line 131
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/android/camera/util/VideoUtil;->checkRingerModeAccessRights(Landroid/app/NotificationManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    :try_start_0
    sget v1, Lcom/android/camera/util/VideoUtil;->mOriginalRingerMode:I

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 134
    const/4 v1, 0x0

    sput v1, Lcom/android/camera/util/VideoUtil;->mOriginalRingerMode:I

    .line 135
    sget-object v1, Lcom/android/camera/util/VideoUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreRingerMode mOriginalRingerMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/camera/util/VideoUtil;->mOriginalRingerMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/camera/util/VideoUtil;->needRestoreRepeatCaller:Z

    if-eqz v1, :cond_1

    .line 141
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/android/camera/util/VideoUtil;->checkRepeatCaller(ZLandroid/app/NotificationManager;)Z

    move-result v1

    sput-boolean v1, Lcom/android/camera/util/VideoUtil;->needRestoreRepeatCaller:Z

    .line 143
    :cond_1
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Lcom/android/camera/util/VideoUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static silenceSoundsAndVibrations(Landroid/media/AudioManager;Landroid/app/NotificationManager;)V
    .locals 5
    .param p0, "audioManager"    # Landroid/media/AudioManager;
    .param p1, "notificationMgr"    # Landroid/app/NotificationManager;

    .prologue
    const/4 v4, 0x0

    .line 111
    if-eqz p0, :cond_0

    .line 113
    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 115
    invoke-static {p1}, Lcom/android/camera/util/VideoUtil;->checkRingerModeAccessRights(Landroid/app/NotificationManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    sput v1, Lcom/android/camera/util/VideoUtil;->mOriginalRingerMode:I

    .line 118
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 119
    sget-object v1, Lcom/android/camera/util/VideoUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "silenceSoundsAndVibrations setRingerMode RINGER_MODE_SILENT"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 124
    invoke-static {v4, p1}, Lcom/android/camera/util/VideoUtil;->checkRepeatCaller(ZLandroid/app/NotificationManager;)Z

    move-result v1

    sput-boolean v1, Lcom/android/camera/util/VideoUtil;->needRestoreRepeatCaller:Z

    .line 127
    :cond_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Lcom/android/camera/util/VideoUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method
