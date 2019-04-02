.class public Lcom/android/camera/burst/BurstManager;
.super Ljava/lang/Object;
.source "BurstManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mAppController:Lcom/android/camera/app/AppController;

.field private mBurstFolderName:Ljava/lang/String;

.field private mBurstShotCount:J

.field private mBurstSoundLoaded:Z

.field private mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

.field private mBurstSoundStreamId:I

.field public mBurstStartTime:J

.field private mCameraActivity:Lcom/android/camera/CameraActivity;

.field private mContentValuesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mExif:Lcom/android/camera/exif/ExifInterface;

.field private mHasBurstImageReceived:Z

.field private mHdrOn:Z

.field private mHeight:I

.field private mIsBurstInProgress:Z

.field private mIsShutterSoundEnabled:Z

.field private mLocation:Landroid/location/Location;

.field private mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

.field private mOnBurstMediaSavedListener:Lcom/android/camera/app/MediaSaver$OnBurstMediaSavedListener;

.field private mOrientation:I

.field private mPictureSizes:Lcom/android/camera/util/Size;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "BurstManager"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/burst/BurstManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v1, p0, Lcom/android/camera/burst/BurstManager;->mBurstSoundLoaded:Z

    .line 47
    iput-boolean v1, p0, Lcom/android/camera/burst/BurstManager;->mIsBurstInProgress:Z

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/burst/BurstManager;->mBurstSoundStreamId:I

    .line 50
    iput-boolean v1, p0, Lcom/android/camera/burst/BurstManager;->mIsShutterSoundEnabled:Z

    .line 53
    iput-object v2, p0, Lcom/android/camera/burst/BurstManager;->mExif:Lcom/android/camera/exif/ExifInterface;

    .line 54
    iput v1, p0, Lcom/android/camera/burst/BurstManager;->mWidth:I

    .line 55
    iput v1, p0, Lcom/android/camera/burst/BurstManager;->mHeight:I

    .line 56
    iput v1, p0, Lcom/android/camera/burst/BurstManager;->mOrientation:I

    .line 57
    iput-boolean v1, p0, Lcom/android/camera/burst/BurstManager;->mHdrOn:Z

    .line 58
    iput-object v2, p0, Lcom/android/camera/burst/BurstManager;->mBurstFolderName:Ljava/lang/String;

    .line 59
    iput-object v2, p0, Lcom/android/camera/burst/BurstManager;->mLocation:Landroid/location/Location;

    .line 60
    iput-object v2, p0, Lcom/android/camera/burst/BurstManager;->mContentValuesList:Ljava/util/List;

    .line 61
    iput-boolean v1, p0, Lcom/android/camera/burst/BurstManager;->mHasBurstImageReceived:Z

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/burst/BurstManager;->mBurstShotCount:J

    .line 64
    new-instance v0, Lcom/android/camera/burst/BurstManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/burst/BurstManager$1;-><init>(Lcom/android/camera/burst/BurstManager;)V

    iput-object v0, p0, Lcom/android/camera/burst/BurstManager;->mOnBurstMediaSavedListener:Lcom/android/camera/app/MediaSaver$OnBurstMediaSavedListener;

    .line 123
    iput-object p1, p0, Lcom/android/camera/burst/BurstManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    .line 124
    iput-object p1, p0, Lcom/android/camera/burst/BurstManager;->mAppController:Lcom/android/camera/app/AppController;

    .line 125
    return-void
.end method

.method private abortBurstIfStop()Z
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, "isStop":Z
    iget-boolean v1, p0, Lcom/android/camera/burst/BurstManager;->mIsBurstInProgress:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/burst/BurstManager;->mAppController:Lcom/android/camera/app/AppController;

    .line 349
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->isShutterPressed()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/burst/BurstManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->isVolumeKeyLongPressed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 350
    sget-object v1, Lcom/android/camera/burst/BurstManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Shutter is not Pressed when onBurstPictureTaken callback arrived, stop burst now."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lcom/android/camera/burst/BurstManager;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/burst/BurstManager;->mBurstSoundStreamId:I

    if-eq v1, v4, :cond_0

    .line 352
    iget-object v1, p0, Lcom/android/camera/burst/BurstManager;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    iget v2, p0, Lcom/android/camera/burst/BurstManager;->mBurstSoundStreamId:I

    invoke-virtual {v1, v2}, Lcom/android/camera/SoundPlayer;->stopRepeat(I)V

    .line 353
    iput v4, p0, Lcom/android/camera/burst/BurstManager;->mBurstSoundStreamId:I

    .line 355
    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/burst/BurstManager;->mIsBurstInProgress:Z

    .line 356
    iget-object v1, p0, Lcom/android/camera/burst/BurstManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v3}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 357
    iget-object v1, p0, Lcom/android/camera/burst/BurstManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v3}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 358
    const/4 v0, 0x1

    .line 360
    :cond_1
    return v0
.end method

.method static synthetic access$000(Lcom/android/camera/burst/BurstManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/burst/BurstManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/burst/BurstManager;->mContentValuesList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/burst/BurstManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/burst/BurstManager;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/camera/burst/BurstManager;->mIsBurstInProgress:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/burst/BurstManager;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/burst/BurstManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/burst/BurstManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/burst/BurstManager;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/burst/BurstManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/burst/BurstManager;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/burst/BurstManager;)Lcom/android/camera/util/Size;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/burst/BurstManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/burst/BurstManager;->mPictureSizes:Lcom/android/camera/util/Size;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/burst/BurstManager;Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/burst/BurstManager;
    .param p1, "x1"    # Lcom/android/camera/util/Size;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/camera/burst/BurstManager;->mPictureSizes:Lcom/android/camera/util/Size;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/camera/burst/BurstManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/burst/BurstManager;

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/android/camera/burst/BurstManager;->mBurstShotCount:J

    return-wide v0
.end method

.method static synthetic access$600()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/camera/burst/BurstManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method private saveBurstPhoto([BLcom/android/camera/PhotoModule$NamedImages$NamedEntity;IZ)V
    .locals 16
    .param p1, "jpegData"    # [B
    .param p2, "name"    # Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .param p3, "heading"    # I
    .param p4, "compassEnabled"    # Z

    .prologue
    .line 308
    if-nez p2, :cond_0

    const/4 v4, 0x0

    .line 309
    .local v4, "title":Ljava/lang/String;
    :goto_0
    if-nez p2, :cond_1

    const-wide/16 v12, -0x1

    .line 322
    .local v12, "date":J
    :goto_1
    if-nez v4, :cond_2

    .line 323
    sget-object v2, Lcom/android/camera/burst/BurstManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Unbalanced name/data pair"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 343
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/BurstManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/android/camera/remote/RemoteShutterListener;->onPictureTaken([B)V

    .line 344
    return-void

    .line 308
    .end local v4    # "title":Ljava/lang/String;
    .end local v12    # "date":J
    :cond_0
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    goto :goto_0

    .line 309
    .restart local v4    # "title":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    goto :goto_1

    .line 325
    .restart local v12    # "date":J
    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v2, v12, v2

    if-nez v2, :cond_3

    .line 326
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/camera/burst/BurstManager;->mBurstStartTime:J

    .line 328
    :cond_3
    const/4 v2, -0x1

    move/from16 v0, p3

    if-eq v0, v2, :cond_4

    .line 330
    if-eqz p4, :cond_4

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/BurstManager;->mExif:Lcom/android/camera/exif/ExifInterface;

    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const-string v5, "M"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v14

    .line 332
    .local v14, "directionRefTag":Lcom/android/camera/exif/ExifTag;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/BurstManager;->mExif:Lcom/android/camera/exif/ExifInterface;

    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    new-instance v5, Lcom/android/camera/exif/Rational;

    move/from16 v0, p3

    int-to-long v6, v0

    const-wide/16 v8, 0x1

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v15

    .line 333
    .local v15, "directionTag":Lcom/android/camera/exif/ExifTag;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/BurstManager;->mExif:Lcom/android/camera/exif/ExifInterface;

    invoke-virtual {v2, v14}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/BurstManager;->mExif:Lcom/android/camera/exif/ExifInterface;

    invoke-virtual {v2, v15}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 337
    .end local v14    # "directionRefTag":Lcom/android/camera/exif/ExifTag;
    .end local v15    # "directionTag":Lcom/android/camera/exif/ExifTag;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/BurstManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/CameraServices;->getMediaSaver()Lcom/android/camera/app/MediaSaver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/burst/BurstManager;->mBurstFolderName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/burst/BurstManager;->mLocation:Landroid/location/Location;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/camera/burst/BurstManager;->mWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/camera/burst/BurstManager;->mHeight:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/camera/burst/BurstManager;->mOrientation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/burst/BurstManager;->mExif:Lcom/android/camera/exif/ExifInterface;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/burst/BurstManager;->mOnBurstMediaSavedListener:Lcom/android/camera/app/MediaSaver$OnBurstMediaSavedListener;

    move-object/from16 v3, p1

    invoke-interface/range {v2 .. v13}, Lcom/android/camera/app/MediaSaver;->addBurstImage([BLjava/lang/String;Ljava/lang/String;Landroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnBurstMediaSavedListener;J)V

    goto/16 :goto_2
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/burst/BurstManager;->mBurstStartTime:J

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/burst/BurstManager;->mIsBurstInProgress:Z

    .line 130
    iget-object v0, p0, Lcom/android/camera/burst/BurstManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 131
    iget-object v0, p0, Lcom/android/camera/burst/BurstManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hidePreviewOverlay()V

    .line 132
    iget-object v0, p0, Lcom/android/camera/burst/BurstManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideCaptureIndicator()V

    .line 133
    new-instance v0, Lcom/android/camera/PhotoModule$NamedImages;

    invoke-direct {v0}, Lcom/android/camera/PhotoModule$NamedImages;-><init>()V

    iput-object v0, p0, Lcom/android/camera/burst/BurstManager;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 134
    return-void
.end method

.method public onBurstCompleted(ZFLcom/android/camera/ui/TouchCoordinate;Z)V
    .locals 18
    .param p1, "isFront"    # Z
    .param p2, "zoomValue"    # F
    .param p3, "touchCor"    # Lcom/android/camera/ui/TouchCoordinate;
    .param p4, "volumeBtnClick"    # Z

    .prologue
    .line 217
    sget-object v1, Lcom/android/camera/burst/BurstManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onBurstCompleted"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/burst/BurstManager;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/camera/burst/BurstManager;->mIsShutterSoundEnabled:Z

    if-eqz v1, :cond_0

    .line 219
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/burst/BurstManager;->mBurstSoundStreamId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/burst/BurstManager;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/burst/BurstManager;->mBurstSoundStreamId:I

    invoke-virtual {v1, v2}, Lcom/android/camera/SoundPlayer;->stopRepeat(I)V

    .line 221
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/camera/burst/BurstManager;->mBurstSoundStreamId:I

    .line 224
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/burst/BurstManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 225
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/burst/BurstManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 226
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/burst/BurstManager;->mAppController:Lcom/android/camera/app/AppController;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 227
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/burst/BurstManager;->mAppController:Lcom/android/camera/app/AppController;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 228
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/burst/BurstManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 229
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/camera/burst/BurstManager;->mIsBurstInProgress:Z

    .line 230
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/camera/burst/BurstManager;->mHasBurstImageReceived:Z

    if-nez v1, :cond_1

    .line 231
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/burst/BurstManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->showThumbnailIfAvailable()V

    .line 235
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/burst/BurstManager;->mOnBurstMediaSavedListener:Lcom/android/camera/app/MediaSaver$OnBurstMediaSavedListener;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/burst/BurstManager;->mOnBurstMediaSavedListener:Lcom/android/camera/app/MediaSaver$OnBurstMediaSavedListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/camera/app/MediaSaver$OnBurstMediaSavedListener;->onBurstMediaSaved(Landroid/content/ContentValues;)V

    .line 238
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/burst/BurstManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/burst/BurstManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_flashmode_key"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 239
    .local v8, "flashSetting":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/burst/BurstManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/settings/Keys;->areGridLinesOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v9

    .line 240
    .local v9, "gridLinesOn":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/burst/BurstManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v2, "default_scope"

    const-string v3, "pref_camera_countdown_duration_key"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 242
    .local v17, "duration":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/burst/BurstManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->enableKeepScreenOn(Z)V

    .line 244
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v1

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/burst/BurstManager;->mBurstFolderName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/burst/BurstManager;->mExif:Lcom/android/camera/exif/ExifInterface;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/camera/burst/BurstManager;->mHdrOn:Z

    move/from16 v0, v17

    int-to-float v5, v0

    .line 248
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v5, p1

    move/from16 v7, p2

    move-object/from16 v12, p3

    .line 244
    invoke-virtual/range {v1 .. v16}, Lcom/android/camera/stats/UsageStatistics;->burstCaptureDoneEvent(ILjava/lang/String;Lcom/android/camera/exif/ExifInterface;ZZFLjava/lang/String;ZLjava/lang/Float;Ljava/lang/Float;Lcom/android/camera/ui/TouchCoordinate;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Float;Landroid/graphics/Rect;)V

    .line 250
    return-void
.end method

.method public onBurstFailed(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 254
    sget-object v0, Lcom/android/camera/burst/BurstManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBurstFailed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/burst/BurstManager;->mIsBurstInProgress:Z

    .line 256
    iget-object v0, p0, Lcom/android/camera/burst/BurstManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Burst Fail : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 258
    return-void
.end method

.method public onBurstPictureTaken([BLcom/android/camera/util/Size;ILjava/lang/String;IZ)Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;
    .locals 8
    .param p1, "data"    # [B
    .param p2, "currentPhotoSize"    # Lcom/android/camera/util/Size;
    .param p3, "jpegRot"    # I
    .param p4, "accStr"    # Ljava/lang/String;
    .param p5, "heading"    # I
    .param p6, "compassEnabled"    # Z

    .prologue
    const/4 v6, 0x1

    .line 265
    invoke-direct {p0}, Lcom/android/camera/burst/BurstManager;->abortBurstIfStop()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 266
    sget-object v4, Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;->FAILED:Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;

    .line 303
    :goto_0
    return-object v4

    .line 269
    :cond_0
    const/4 v1, 0x0

    .line 270
    .local v1, "localExif":Lcom/android/camera/exif/ExifInterface;
    iget-object v4, p0, Lcom/android/camera/burst/BurstManager;->mExif:Lcom/android/camera/exif/ExifInterface;

    if-nez v4, :cond_2

    .line 271
    invoke-static {p1}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/burst/BurstManager;->mExif:Lcom/android/camera/exif/ExifInterface;

    .line 272
    iget-object v1, p0, Lcom/android/camera/burst/BurstManager;->mExif:Lcom/android/camera/exif/ExifInterface;

    .line 273
    iget-object v4, p0, Lcom/android/camera/burst/BurstManager;->mExif:Lcom/android/camera/exif/ExifInterface;

    invoke-static {v4}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v4

    iput v4, p0, Lcom/android/camera/burst/BurstManager;->mOrientation:I

    .line 276
    iget v4, p0, Lcom/android/camera/burst/BurstManager;->mOrientation:I

    add-int/2addr v4, p3

    rem-int/lit16 v4, v4, 0xb4

    if-nez v4, :cond_1

    .line 277
    invoke-virtual {p2}, Lcom/android/camera/util/Size;->width()I

    move-result v4

    iput v4, p0, Lcom/android/camera/burst/BurstManager;->mWidth:I

    .line 278
    invoke-virtual {p2}, Lcom/android/camera/util/Size;->height()I

    move-result v4

    iput v4, p0, Lcom/android/camera/burst/BurstManager;->mHeight:I

    .line 288
    :goto_1
    invoke-static {v1}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v3

    .line 289
    .local v3, "rotation":I
    iget-object v4, p0, Lcom/android/camera/burst/BurstManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v4

    invoke-virtual {v4, p4, v6}, Lcom/android/camera/app/CameraAppUI;->startCaptureIndicatorRevealAnimation(Ljava/lang/String;Z)V

    .line 290
    iget-object v4, p0, Lcom/android/camera/burst/BurstManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/camera/exif/ExifInterface;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/android/camera/app/CameraAppUI;->updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V

    .line 291
    iget-object v4, p0, Lcom/android/camera/burst/BurstManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->invalidThumbnail()V

    .line 292
    iput-boolean v6, p0, Lcom/android/camera/burst/BurstManager;->mHasBurstImageReceived:Z

    .line 294
    iget-object v4, p0, Lcom/android/camera/burst/BurstManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/CameraServices;->getMediaSaver()Lcom/android/camera/app/MediaSaver;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/MediaSaver;->isQueueFull()Z

    move-result v0

    .line 295
    .local v0, "isQueueFull":Z
    if-nez v0, :cond_3

    .line 296
    iget-object v4, p0, Lcom/android/camera/burst/BurstManager;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    iget-wide v6, p0, Lcom/android/camera/burst/BurstManager;->mBurstStartTime:J

    invoke-virtual {v4, v6, v7}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewBurstImage(J)V

    .line 297
    iget-object v4, p0, Lcom/android/camera/burst/BurstManager;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    invoke-virtual {v4}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v2

    .line 298
    .local v2, "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    invoke-direct {p0, p1, v2, p5, p6}, Lcom/android/camera/burst/BurstManager;->saveBurstPhoto([BLcom/android/camera/PhotoModule$NamedImages$NamedEntity;IZ)V

    .line 302
    iget-wide v4, p0, Lcom/android/camera/burst/BurstManager;->mBurstShotCount:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/camera/burst/BurstManager;->mBurstShotCount:J

    .line 303
    sget-object v4, Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;->SUCCESS:Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;

    goto :goto_0

    .line 280
    .end local v0    # "isQueueFull":Z
    .end local v2    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .end local v3    # "rotation":I
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera/util/Size;->height()I

    move-result v4

    iput v4, p0, Lcom/android/camera/burst/BurstManager;->mWidth:I

    .line 281
    invoke-virtual {p2}, Lcom/android/camera/util/Size;->width()I

    move-result v4

    iput v4, p0, Lcom/android/camera/burst/BurstManager;->mHeight:I

    goto :goto_1

    .line 285
    :cond_2
    invoke-static {p1}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v1

    goto :goto_1

    .line 300
    .restart local v0    # "isQueueFull":Z
    .restart local v3    # "rotation":I
    :cond_3
    sget-object v4, Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;->QUEUE_FULL:Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;

    goto/16 :goto_0
.end method

.method public onBurstStarted(Z)Z
    .locals 6
    .param p1, "hdrOn"    # Z

    .prologue
    const v5, 0x7f070006

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 181
    sget-object v2, Lcom/android/camera/burst/BurstManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "onBurstStarted"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 182
    invoke-direct {p0}, Lcom/android/camera/burst/BurstManager;->abortBurstIfStop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    :goto_0
    return v0

    .line 185
    :cond_0
    iput-boolean v0, p0, Lcom/android/camera/burst/BurstManager;->mHasBurstImageReceived:Z

    .line 187
    iget-object v2, p0, Lcom/android/camera/burst/BurstManager;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-nez v2, :cond_1

    .line 188
    new-instance v2, Lcom/android/camera/SoundPlayer;

    iget-object v3, p0, Lcom/android/camera/burst/BurstManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/camera/SoundPlayer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/burst/BurstManager;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 189
    iget-boolean v2, p0, Lcom/android/camera/burst/BurstManager;->mBurstSoundLoaded:Z

    if-nez v2, :cond_1

    .line 190
    iget-object v2, p0, Lcom/android/camera/burst/BurstManager;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v2, v5}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 191
    iput-boolean v1, p0, Lcom/android/camera/burst/BurstManager;->mBurstSoundLoaded:Z

    .line 195
    :cond_1
    iget-object v2, p0, Lcom/android/camera/burst/BurstManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "default_scope"

    const-string v4, "pref_shutter_sound_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/burst/BurstManager;->mIsShutterSoundEnabled:Z

    .line 198
    iget-object v2, p0, Lcom/android/camera/burst/BurstManager;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/burst/BurstManager;->mIsShutterSoundEnabled:Z

    if-eqz v2, :cond_2

    .line 199
    iget-object v2, p0, Lcom/android/camera/burst/BurstManager;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v5, v3}, Lcom/android/camera/SoundPlayer;->startRepeat(IF)I

    move-result v2

    iput v2, p0, Lcom/android/camera/burst/BurstManager;->mBurstSoundStreamId:I

    .line 201
    :cond_2
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/camera/burst/BurstManager;->mBurstShotCount:J

    .line 202
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/burst/BurstManager;->mExif:Lcom/android/camera/exif/ExifInterface;

    .line 203
    iput v0, p0, Lcom/android/camera/burst/BurstManager;->mOrientation:I

    .line 204
    iput-boolean p1, p0, Lcom/android/camera/burst/BurstManager;->mHdrOn:Z

    .line 205
    iget-object v0, p0, Lcom/android/camera/burst/BurstManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/burst/BurstManager;->mLocation:Landroid/location/Location;

    .line 206
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->instance()Lcom/android/camera/util/CameraUtil;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/camera/burst/BurstManager;->mBurstStartTime:J

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/util/CameraUtil;->createBurstFolderName(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/burst/BurstManager;->mBurstFolderName:Ljava/lang/String;

    .line 207
    sget-object v0, Lcom/android/camera/burst/BurstManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBurstFolderName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/burst/BurstManager;->mBurstFolderName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/burst/BurstManager;->mContentValuesList:Ljava/util/List;

    .line 210
    iget-object v0, p0, Lcom/android/camera/burst/BurstManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->enableKeepScreenOn(Z)V

    move v0, v1

    .line 211
    goto/16 :goto_0
.end method

.method public prepareBurstSound()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/camera/burst/BurstManager;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/android/camera/SoundPlayer;

    iget-object v1, p0, Lcom/android/camera/burst/BurstManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/SoundPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/burst/BurstManager;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/camera/burst/BurstManager;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v0, :cond_1

    .line 173
    iget-boolean v0, p0, Lcom/android/camera/burst/BurstManager;->mBurstSoundLoaded:Z

    if-nez v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/camera/burst/BurstManager;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f070006

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/burst/BurstManager;->mBurstSoundLoaded:Z

    .line 178
    :cond_1
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 151
    sget-object v0, Lcom/android/camera/burst/BurstManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/android/camera/burst/BurstManager;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/camera/burst/BurstManager;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$NamedImages;->recycle()V

    .line 154
    iput-object v2, p0, Lcom/android/camera/burst/BurstManager;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/camera/burst/BurstManager;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v0, :cond_2

    .line 157
    iget-boolean v0, p0, Lcom/android/camera/burst/BurstManager;->mBurstSoundLoaded:Z

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/camera/burst/BurstManager;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f070006

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/burst/BurstManager;->mBurstSoundLoaded:Z

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/camera/burst/BurstManager;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/camera/SoundPlayer;->release()V

    .line 163
    iput-object v2, p0, Lcom/android/camera/burst/BurstManager;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 165
    :cond_2
    return-void
.end method

.method public stop()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 137
    sget-object v0, Lcom/android/camera/burst/BurstManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop mIsBurstInProgress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/burst/BurstManager;->mIsBurstInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBurstSoundStreamId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/burst/BurstManager;->mBurstSoundStreamId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 138
    iget-boolean v0, p0, Lcom/android/camera/burst/BurstManager;->mIsBurstInProgress:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/burst/BurstManager;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/burst/BurstManager;->mBurstSoundStreamId:I

    if-eq v0, v4, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/camera/burst/BurstManager;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    iget v1, p0, Lcom/android/camera/burst/BurstManager;->mBurstSoundStreamId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->stopRepeat(I)V

    .line 140
    iput v4, p0, Lcom/android/camera/burst/BurstManager;->mBurstSoundStreamId:I

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/camera/burst/BurstManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 143
    iget-object v0, p0, Lcom/android/camera/burst/BurstManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 144
    iget-object v0, p0, Lcom/android/camera/burst/BurstManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/camera/burst/BurstManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/android/camera/burst/BurstManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/burst/BurstManager;->mIsBurstInProgress:Z

    .line 148
    return-void
.end method
