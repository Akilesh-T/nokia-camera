.class public Lcom/android/camera/effect/EffectChooseManager;
.super Ljava/lang/Object;
.source "EffectChooseManager.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mAppController:Lcom/android/camera/app/AppController;

.field private mCameraActivity:Lcom/android/camera/CameraActivity;

.field private mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

.field private mCameraRootView:Landroid/view/ViewGroup;

.field private mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

.field private mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

.field private mEffectAdapter:Lcom/android/camera/app/EffectListViewAdapter;

.field private mEffectChoosePanel:Landroid/widget/LinearLayout;

.field private mEffectChooseRoot:Landroid/view/ViewGroup;

.field private mEffectChooseRootVisibilityListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/ui/EffectChooseRootVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectListView:Landroid/support/v7/widget/RecyclerView;

.field private mEffectNoUse:Lcom/android/camera/ui/RotateImageView;

.field private mGalleryStyleUI:Lcom/android/camera/app/GalleryStyleUI;

.field private mIsLastModuleShowEffectPanel:Z

.field private mIsReady:Z

.field private mLockDisable:Z

.field private mNeedHideEffect:Z

.field private mOrientation:I

.field private mPausing:Z

.field private mSettingsManager:Lcom/android/camera/settings/SettingsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Effect.Manager"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/effect/EffectChooseManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    iput-object v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 57
    iput-boolean v1, p0, Lcom/android/camera/effect/EffectChooseManager;->mPausing:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/camera/effect/EffectChooseManager;->mLockDisable:Z

    .line 59
    iput-boolean v1, p0, Lcom/android/camera/effect/EffectChooseManager;->mIsReady:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/camera/effect/EffectChooseManager;->mNeedHideEffect:Z

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 65
    iput-boolean v1, p0, Lcom/android/camera/effect/EffectChooseManager;->mIsLastModuleShowEffectPanel:Z

    .line 72
    iput-object p1, p0, Lcom/android/camera/effect/EffectChooseManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    .line 73
    iput-object p1, p0, Lcom/android/camera/effect/EffectChooseManager;->mAppController:Lcom/android/camera/app/AppController;

    .line 74
    invoke-virtual {p1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/effect/EffectChooseManager;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/EffectChooseManager;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectChoosePanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/camera/effect/EffectChooseManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/ui/RotateImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/EffectChooseManager;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectNoUse:Lcom/android/camera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/EffectChooseManager;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/one/OneCamera$Facing;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/EffectChooseManager;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/EffectChooseManager;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/EffectChooseManager;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/effect/EffectChooseManager;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/EffectChooseManager;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectChooseRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/effect/EffectChooseManager;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/effect/EffectChooseManager;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectChooseRoot:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/effect/EffectChooseManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/EffectChooseManager;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mPausing:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/effect/EffectChooseManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/effect/EffectChooseManager;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/camera/effect/EffectChooseManager;->initView()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/effect/EffectChooseManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/effect/EffectChooseManager;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/camera/effect/EffectChooseManager;->initData()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/effect/EffectChooseManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/EffectChooseManager;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mLockDisable:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/effect/EffectChooseManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/EffectChooseManager;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mIsReady:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/settings/SettingsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/EffectChooseManager;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/app/GalleryStyleUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/EffectChooseManager;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mGalleryStyleUI:Lcom/android/camera/app/GalleryStyleUI;

    return-object v0
.end method

.method private downloadEffectJasonFileFromCloud()V
    .locals 3

    .prologue
    .line 170
    sget-object v0, Lcom/android/camera/effect/EffectChooseManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "downloadEffectJasonFileFromCloud"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "merge_sticker_data.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/effect/util/EffectFileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "preload_sticker_data.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "merge_sticker_data.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/effect/util/EffectFileUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "merge_animoji_data.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/effect/util/EffectFileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "preload_animoji_data.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "merge_animoji_data.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/effect/util/EffectFileUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/effect/download/DownLoaderManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/effect/download/DownLoaderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/download/DownLoaderManager;->executeWebStickerJasonDownRunnable()V

    .line 186
    return-void
.end method

.method private initData()V
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 423
    iget-boolean v5, p0, Lcom/android/camera/effect/EffectChooseManager;->mPausing:Z

    if-eqz v5, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectChoosePanel:Landroid/widget/LinearLayout;

    if-nez v5, :cond_2

    .line 425
    sget-object v5, Lcom/android/camera/effect/EffectChooseManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "mEffectChoosePanel is null, this should not be, please check"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 428
    :cond_2
    iget-object v8, p0, Lcom/android/camera/effect/EffectChooseManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v9, "default_scope"

    const-string v10, "pref_camera_effect_choose_key"

    invoke-virtual {v5, v9, v10}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v10, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v5, v10, :cond_3

    move v5, v6

    :goto_1
    iget-object v10, p0, Lcom/android/camera/effect/EffectChooseManager;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-static {v8, v9, v5, v10}, Lcom/android/camera/effect/EffectChooseState;->fromValue(Landroid/content/Context;IZLcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Lcom/android/camera/effect/EffectChooseState;

    move-result-object v4

    .line 429
    .local v4, "state":Lcom/android/camera/effect/EffectChooseState;
    sget-object v5, Lcom/android/camera/effect/EffectChooseState;->NONE:Lcom/android/camera/effect/EffectChooseState;

    if-eq v4, v5, :cond_0

    .line 430
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v8, "default_scope"

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectChooseState;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "currentContent":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectAdapter:Lcom/android/camera/app/EffectListViewAdapter;

    iget-object v8, p0, Lcom/android/camera/effect/EffectChooseManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v8}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/effect/EffectChooseManager;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    iget-object v10, p0, Lcom/android/camera/effect/EffectChooseManager;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v11, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v10, v11, :cond_4

    :goto_2
    invoke-virtual {v5, v8, v9, v6, v4}, Lcom/android/camera/app/EffectListViewAdapter;->loadData(Landroid/content/Context;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;ZLcom/android/camera/effect/EffectChooseState;)V

    .line 432
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager;->mGalleryStyleUI:Lcom/android/camera/app/GalleryStyleUI;

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectChooseState;->getValue()I

    move-result v6

    invoke-virtual {v5, v6, v0}, Lcom/android/camera/app/GalleryStyleUI;->changeDataKey(ILjava/lang/String;)V

    .line 435
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectChooseState;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/camera/settings/SettingsManager;->getStringDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, "defaultContent":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 437
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v6, "default_scope"

    const-string v7, "pref_camera_effect_mode_key"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "currentContent":Ljava/lang/String;
    .end local v2    # "defaultContent":Ljava/lang/String;
    .end local v4    # "state":Lcom/android/camera/effect/EffectChooseState;
    :cond_3
    move v5, v7

    .line 428
    goto :goto_1

    .restart local v0    # "currentContent":Ljava/lang/String;
    .restart local v4    # "state":Lcom/android/camera/effect/EffectChooseState;
    :cond_4
    move v6, v7

    .line 431
    goto :goto_2

    .line 439
    .restart local v2    # "defaultContent":Ljava/lang/String;
    :cond_5
    invoke-virtual {v4}, Lcom/android/camera/effect/EffectChooseState;->getValue()I

    move-result v1

    .line 440
    .local v1, "currentValue":I
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v6, "pref_camera_effect_mode_key"

    invoke-virtual {v5, v6}, Lcom/android/camera/settings/SettingsManager;->getIntegerDefault(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 441
    .local v3, "defaultValue":I
    if-eq v1, v3, :cond_0

    .line 442
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v6, "default_scope"

    const-string v7, "pref_camera_effect_mode_key"

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectChooseState;->getValue()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 443
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectNoUse:Lcom/android/camera/ui/RotateImageView;

    const v6, 0x7f020298

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method private initView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 244
    iget-boolean v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mPausing:Z

    if-eqz v2, :cond_0

    .line 408
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectChooseRoot:Landroid/view/ViewGroup;

    const v3, 0x7f0f0105

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectChoosePanel:Landroid/widget/LinearLayout;

    .line 246
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectChoosePanel:Landroid/widget/LinearLayout;

    if-nez v2, :cond_1

    .line 247
    sget-object v2, Lcom/android/camera/effect/EffectChooseManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "mEffectChoosePanel is null, this should not be, please check"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_1
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectChoosePanel:Landroid/widget/LinearLayout;

    const v3, 0x7f0f0107

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateImageView;

    iput-object v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectNoUse:Lcom/android/camera/ui/RotateImageView;

    .line 252
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectNoUse:Lcom/android/camera/ui/RotateImageView;

    new-instance v3, Lcom/android/camera/effect/EffectChooseManager$3;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectChooseManager$3;-><init>(Lcom/android/camera/effect/EffectChooseManager;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectNoUse:Lcom/android/camera/ui/RotateImageView;

    iget v3, p0, Lcom/android/camera/effect/EffectChooseManager;->mOrientation:I

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 276
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectChoosePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 277
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->is18x9Layout()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f090034

    :goto_1
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 278
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectChoosePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectChoosePanel:Landroid/widget/LinearLayout;

    const v3, 0x7f0f0108

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectListView:Landroid/support/v7/widget/RecyclerView;

    .line 281
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 282
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-direct {v0, v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 284
    .local v0, "layoutManager":Landroid/support/v7/widget/StaggeredGridLayoutManager;
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 286
    new-instance v2, Lcom/android/camera/app/EffectListViewAdapter;

    iget-object v3, p0, Lcom/android/camera/effect/EffectChooseManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v2, v3}, Lcom/android/camera/app/EffectListViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectAdapter:Lcom/android/camera/app/EffectListViewAdapter;

    .line 287
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectListView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectAdapter:Lcom/android/camera/app/EffectListViewAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 288
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectAdapter:Lcom/android/camera/app/EffectListViewAdapter;

    new-instance v3, Lcom/android/camera/effect/EffectChooseManager$4;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectChooseManager$4;-><init>(Lcom/android/camera/effect/EffectChooseManager;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/app/EffectListViewAdapter;->setOnItemClickListener(Lcom/android/camera/app/EffectListViewAdapter$OnItemClickListener;)V

    .line 304
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectAdapter:Lcom/android/camera/app/EffectListViewAdapter;

    iget v3, p0, Lcom/android/camera/effect/EffectChooseManager;->mOrientation:I

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/app/EffectListViewAdapter;->setOrientation(IZ)V

    .line 306
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectChoosePanel:Landroid/widget/LinearLayout;

    const v3, 0x7f0f0109

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/app/GalleryStyleUI;

    iput-object v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mGalleryStyleUI:Lcom/android/camera/app/GalleryStyleUI;

    .line 307
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mGalleryStyleUI:Lcom/android/camera/app/GalleryStyleUI;

    iget-object v3, p0, Lcom/android/camera/effect/EffectChooseManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-virtual {v2, v3}, Lcom/android/camera/app/GalleryStyleUI;->init(Lcom/android/camera/app/AppController;)V

    .line 308
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mGalleryStyleUI:Lcom/android/camera/app/GalleryStyleUI;

    new-instance v3, Lcom/android/camera/effect/EffectChooseManager$5;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectChooseManager$5;-><init>(Lcom/android/camera/effect/EffectChooseManager;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/app/GalleryStyleUI;->setOnCellClickListener(Lcom/android/camera/app/GalleryStyleUI$OnStyleTransferClickListener;)V

    .line 369
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mGalleryStyleUI:Lcom/android/camera/app/GalleryStyleUI;

    new-instance v3, Lcom/android/camera/effect/EffectChooseManager$6;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectChooseManager$6;-><init>(Lcom/android/camera/effect/EffectChooseManager;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/app/GalleryStyleUI;->setOnCellLongClickListener(Lcom/android/camera/app/GalleryStyleUI$OnStyleTransferLongClickListener;)V

    .line 379
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mGalleryStyleUI:Lcom/android/camera/app/GalleryStyleUI;

    new-instance v3, Lcom/android/camera/effect/EffectChooseManager$7;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectChooseManager$7;-><init>(Lcom/android/camera/effect/EffectChooseManager;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/app/GalleryStyleUI;->setOnDeleteIconClickListener(Lcom/android/camera/app/GalleryStyleUI$OnUnloadIconClickListener;)V

    .line 407
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mGalleryStyleUI:Lcom/android/camera/app/GalleryStyleUI;

    iget v3, p0, Lcom/android/camera/effect/EffectChooseManager;->mOrientation:I

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/app/GalleryStyleUI;->setOrientation(IZ)V

    goto/16 :goto_0

    .line 277
    .end local v0    # "layoutManager":Landroid/support/v7/widget/StaggeredGridLayoutManager;
    :cond_2
    const v2, 0x7f090033

    goto/16 :goto_1
.end method

.method private removeAllView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 502
    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$IndicatorBar;->SHOW_EFFECT:Z

    if-nez v0, :cond_0

    .line 511
    :goto_0
    return-void

    .line 505
    :cond_0
    iput-object v1, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectChoosePanel:Landroid/widget/LinearLayout;

    .line 506
    iput-object v1, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectListView:Landroid/support/v7/widget/RecyclerView;

    .line 507
    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectAdapter:Lcom/android/camera/app/EffectListViewAdapter;

    invoke-virtual {v0}, Lcom/android/camera/app/EffectListViewAdapter;->onDestroy()V

    .line 508
    iput-object v1, p0, Lcom/android/camera/effect/EffectChooseManager;->mGalleryStyleUI:Lcom/android/camera/app/GalleryStyleUI;

    .line 509
    iput-object v1, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectNoUse:Lcom/android/camera/ui/RotateImageView;

    .line 510
    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectChooseRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0
.end method

.method private setEffectChooseRootVisibility(I)V
    .locals 2
    .param p1, "visible"    # I

    .prologue
    .line 86
    iget-object v1, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectChooseRoot:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectChooseRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 89
    iget-object v1, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectChooseRootVisibilityListener:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 91
    .local v0, "listener":Lcom/android/camera/ui/EffectChooseRootVisibilityListener;
    :goto_0
    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0, p1}, Lcom/android/camera/ui/EffectChooseRootVisibilityListener;->onEffectChooseRootVisibilityChanged(I)V

    .line 95
    .end local v0    # "listener":Lcom/android/camera/ui/EffectChooseRootVisibilityListener;
    :cond_0
    return-void

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectChooseRootVisibilityListener:Ljava/lang/ref/WeakReference;

    .line 90
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/EffectChooseRootVisibilityListener;

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getIsLastModuelShowEffectPanel()Z
    .locals 1

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mIsLastModuleShowEffectPanel:Z

    return v0
.end method

.method public hide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 141
    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$IndicatorBar;->SHOW_EFFECT:Z

    if-nez v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectChooseRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 145
    iput-boolean v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mLockDisable:Z

    .line 146
    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectNoUse:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectNoUse:Lcom/android/camera/ui/RotateImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mGalleryStyleUI:Lcom/android/camera/app/GalleryStyleUI;

    if-eqz v0, :cond_3

    .line 155
    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mGalleryStyleUI:Lcom/android/camera/app/GalleryStyleUI;

    invoke-virtual {v0}, Lcom/android/camera/app/GalleryStyleUI;->quitUnloadMode()V

    .line 158
    :cond_3
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/camera/effect/EffectChooseManager;->setEffectChooseRootVisibility(I)V

    .line 160
    iput-boolean v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mIsLastModuleShowEffectPanel:Z

    .line 165
    sget-object v0, Lcom/android/camera/effect/EffectChooseManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Hide Effect pannel!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectChooseRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectChooseRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Landroid/view/ViewGroup;Lcom/android/camera/CaptureLayoutHelper;)V
    .locals 0
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "helper"    # Lcom/android/camera/CaptureLayoutHelper;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/camera/effect/EffectChooseManager;->mCameraRootView:Landroid/view/ViewGroup;

    .line 79
    iput-object p2, p0, Lcom/android/camera/effect/EffectChooseManager;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    .line 80
    return-void
.end method

.method public needEffectForCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Z
    .locals 8
    .param p1, "facing"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 465
    iget-object v5, p0, Lcom/android/camera/effect/EffectChooseManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v6, "default_scope"

    const-string v7, "pref_camera_effect_choose_key"

    invoke-virtual {v2, v6, v7}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p1, v2, :cond_0

    move v2, v3

    :goto_0
    iget-object v7, p0, Lcom/android/camera/effect/EffectChooseManager;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-static {v5, v6, v2, v7}, Lcom/android/camera/effect/EffectChooseState;->fromValue(Landroid/content/Context;IZLcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Lcom/android/camera/effect/EffectChooseState;

    move-result-object v1

    .line 466
    .local v1, "state":Lcom/android/camera/effect/EffectChooseState;
    sget-object v2, Lcom/android/camera/effect/EffectChooseState;->NONE:Lcom/android/camera/effect/EffectChooseState;

    if-eq v1, v2, :cond_2

    .line 467
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v5, "default_scope"

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectChooseState;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/android/camera/settings/SettingsManager;->isDefault(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 468
    .local v0, "isDefault":Z
    if-nez v0, :cond_1

    .line 470
    .end local v0    # "isDefault":Z
    :goto_1
    return v3

    .end local v1    # "state":Lcom/android/camera/effect/EffectChooseState;
    :cond_0
    move v2, v4

    .line 465
    goto :goto_0

    .restart local v0    # "isDefault":Z
    .restart local v1    # "state":Lcom/android/camera/effect/EffectChooseState;
    :cond_1
    move v3, v4

    .line 468
    goto :goto_1

    .end local v0    # "isDefault":Z
    :cond_2
    move v3, v4

    .line 470
    goto :goto_1
.end method

.method public onCameraFacingChange(Lcom/android/camera/one/OneCamera$Facing;)V
    .locals 1
    .param p1, "facing"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 457
    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$IndicatorBar;->SHOW_EFFECT:Z

    if-nez v0, :cond_0

    .line 462
    :goto_0
    return-void

    .line 460
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectChooseManager;->unregisterEffectChoose()V

    .line 461
    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/effect/EffectChooseManager;->registerEffectChoose(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCamera$Facing;)V

    goto :goto_0
.end method

.method public onReadyStateChanged(Z)V
    .locals 0
    .param p1, "isReady"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/android/camera/effect/EffectChooseManager;->mIsReady:Z

    .line 190
    return-void
.end method

.method public presetEffectForCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)V
    .locals 5
    .param p1, "facing"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 474
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/effect/EffectChooseManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v3, "default_scope"

    const-string v4, "pref_camera_effect_choose_key"

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/camera/effect/EffectChooseManager;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-static {v2, v3, v1, v4}, Lcom/android/camera/effect/EffectChooseState;->fromValue(Landroid/content/Context;IZLcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Lcom/android/camera/effect/EffectChooseState;

    move-result-object v0

    .line 475
    .local v0, "state":Lcom/android/camera/effect/EffectChooseState;
    sget-object v1, Lcom/android/camera/effect/EffectChooseState;->NONE:Lcom/android/camera/effect/EffectChooseState;

    if-eq v0, v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/android/camera/effect/EffectChooseManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v2, "default_scope"

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectChooseState;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->isDefault(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/android/camera/effect/EffectChooseManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v2, "default_scope"

    const-string v3, "pref_camera_effect_mode_key"

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectChooseState;->getValue()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 480
    :cond_0
    return-void

    .line 474
    .end local v0    # "state":Lcom/android/camera/effect/EffectChooseState;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerEffectChoose(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCamera$Facing;)V
    .locals 1
    .param p1, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .param p2, "facing"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/effect/EffectChooseManager;->registerEffectChoose(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/ui/EffectChooseRootVisibilityListener;)V

    .line 194
    return-void
.end method

.method public registerEffectChoose(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/ui/EffectChooseRootVisibilityListener;)V
    .locals 5
    .param p1, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .param p2, "facing"    # Lcom/android/camera/one/OneCamera$Facing;
    .param p3, "effectChooseRootVisibilityListener"    # Lcom/android/camera/ui/EffectChooseRootVisibilityListener;

    .prologue
    const/4 v3, 0x0

    .line 197
    sget-boolean v2, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$IndicatorBar;->SHOW_EFFECT:Z

    if-nez v2, :cond_0

    .line 241
    :goto_0
    return-void

    .line 200
    :cond_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectChooseRootVisibilityListener:Ljava/lang/ref/WeakReference;

    .line 201
    iput-boolean v3, p0, Lcom/android/camera/effect/EffectChooseManager;->mPausing:Z

    .line 202
    iput-boolean v3, p0, Lcom/android/camera/effect/EffectChooseManager;->mLockDisable:Z

    .line 203
    iput-object p2, p0, Lcom/android/camera/effect/EffectChooseManager;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 204
    iput-object p1, p0, Lcom/android/camera/effect/EffectChooseManager;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 205
    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater;

    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v2}, Landroid/support/v4/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    .line 207
    .local v0, "asyncLayoutInflater":Landroid/support/v4/view/AsyncLayoutInflater;
    new-instance v1, Lcom/android/camera/effect/EffectChooseManager$1;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/effect/EffectChooseManager$1;-><init>(Lcom/android/camera/effect/EffectChooseManager;Landroid/support/v4/view/AsyncLayoutInflater;)V

    .line 227
    .local v1, "runnable":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectChooseRoot:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 228
    sget-object v2, Lcom/android/camera/effect/EffectChooseManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Inflate Effect Root"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 229
    const v3, 0x7f04003d

    iget-object v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mCameraRootView:Landroid/view/ViewGroup;

    const v4, 0x7f0f00cf

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    new-instance v4, Lcom/android/camera/effect/EffectChooseManager$2;

    invoke-direct {v4, p0, v1}, Lcom/android/camera/effect/EffectChooseManager$2;-><init>(Lcom/android/camera/effect/EffectChooseManager;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v3, v2, v4}, Landroid/support/v4/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    goto :goto_0

    .line 239
    :cond_1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public setCurrentEffectToDefault(Ljava/lang/String;)V
    .locals 3
    .param p1, "effectKey"    # Ljava/lang/String;

    .prologue
    .line 411
    sget-object v0, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_STICKER:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v0}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v1, "default_scope"

    const-string v2, "pref_camera_sticker_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    sget-object v0, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_ANIMOJI:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v0}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 414
    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v1, "default_scope"

    const-string v2, "pref_camera_animoji_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 415
    :cond_2
    sget-object v0, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_LIGHTING:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v0}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 416
    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v1, "default_scope"

    const-string v2, "pref_camera_portrait_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 417
    :cond_3
    sget-object v0, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_THEME:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v0}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v1, "default_scope"

    const-string v2, "pref_camera_theme_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setNeedHideEffect(Z)V
    .locals 0
    .param p1, "needHideEffect"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/camera/effect/EffectChooseManager;->mNeedHideEffect:Z

    .line 137
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 6
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    const/4 v5, 0x1

    .line 515
    sget-boolean v3, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$IndicatorBar;->SHOW_EFFECT:Z

    if-nez v3, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    iput p1, p0, Lcom/android/camera/effect/EffectChooseManager;->mOrientation:I

    .line 519
    iget-object v3, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectListView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectAdapter:Lcom/android/camera/app/EffectListViewAdapter;

    if-eqz v3, :cond_2

    .line 520
    iget-object v3, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectAdapter:Lcom/android/camera/app/EffectListViewAdapter;

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/app/EffectListViewAdapter;->setOrientation(IZ)V

    .line 521
    iget-object v3, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 522
    iget-object v3, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectListView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectListView:Landroid/support/v7/widget/RecyclerView;

    .line 523
    invoke-virtual {v4, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;

    .line 524
    .local v1, "holder":Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;
    iget-object v3, v1, Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;->imageView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v3, p1, v5}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 521
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 527
    .end local v0    # "childCount":I
    .end local v1    # "holder":Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;
    .end local v2    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/camera/effect/EffectChooseManager;->mGalleryStyleUI:Lcom/android/camera/app/GalleryStyleUI;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/effect/EffectChooseManager;->mGalleryStyleUI:Lcom/android/camera/app/GalleryStyleUI;

    invoke-virtual {v3, p1, v5}, Lcom/android/camera/app/GalleryStyleUI;->setOrientation(IZ)V

    .line 528
    :cond_3
    iget-object v3, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectNoUse:Lcom/android/camera/ui/RotateImageView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectNoUse:Lcom/android/camera/ui/RotateImageView;

    iget v4, p0, Lcom/android/camera/effect/EffectChooseManager;->mOrientation:I

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    goto :goto_0
.end method

.method public showEffectPanel()V
    .locals 2

    .prologue
    .line 128
    sget-object v0, Lcom/android/camera/effect/EffectChooseManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "showEffectPanel"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectChooseRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mNeedHideEffect:Z

    if-nez v0, :cond_0

    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/effect/EffectChooseManager;->setEffectChooseRootVisibility(I)V

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mIsLastModuleShowEffectPanel:Z

    .line 133
    :cond_0
    return-void
.end method

.method public showOrHidePanel(Z)V
    .locals 5
    .param p1, "lockDisable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 98
    sget-boolean v1, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$IndicatorBar;->SHOW_EFFECT:Z

    if-nez v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectChooseRoot:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 102
    iput-boolean p1, p0, Lcom/android/camera/effect/EffectChooseManager;->mLockDisable:Z

    .line 103
    iget-object v1, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectNoUse:Lcom/android/camera/ui/RotateImageView;

    if-eqz v1, :cond_2

    .line 104
    iget-object v4, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectNoUse:Lcom/android/camera/ui/RotateImageView;

    if-nez p1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 107
    :cond_2
    iget-object v1, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectChooseRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    const/16 v0, 0x8

    .line 108
    .local v0, "visible":I
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/camera/effect/EffectChooseManager;->setEffectChooseRootVisibility(I)V

    .line 110
    sget-object v1, Lcom/android/camera/effect/EffectChooseManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Show Effect pannel!"

    invoke-static {v1, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 111
    if-nez v0, :cond_5

    .line 112
    invoke-direct {p0}, Lcom/android/camera/effect/EffectChooseManager;->downloadEffectJasonFileFromCloud()V

    .line 114
    iput-boolean v2, p0, Lcom/android/camera/effect/EffectChooseManager;->mIsLastModuleShowEffectPanel:Z

    goto :goto_0

    .end local v0    # "visible":I
    :cond_3
    move v1, v3

    .line 104
    goto :goto_1

    :cond_4
    move v0, v3

    .line 107
    goto :goto_2

    .line 117
    .restart local v0    # "visible":I
    :cond_5
    iget-object v1, p0, Lcom/android/camera/effect/EffectChooseManager;->mGalleryStyleUI:Lcom/android/camera/app/GalleryStyleUI;

    if-eqz v1, :cond_6

    .line 118
    iget-object v1, p0, Lcom/android/camera/effect/EffectChooseManager;->mGalleryStyleUI:Lcom/android/camera/app/GalleryStyleUI;

    invoke-virtual {v1}, Lcom/android/camera/app/GalleryStyleUI;->quitUnloadMode()V

    .line 121
    :cond_6
    iput-boolean v3, p0, Lcom/android/camera/effect/EffectChooseManager;->mIsLastModuleShowEffectPanel:Z

    goto :goto_0
.end method

.method public unregisterEffectChoose()V
    .locals 2

    .prologue
    .line 483
    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$IndicatorBar;->SHOW_EFFECT:Z

    if-nez v0, :cond_0

    .line 499
    :goto_0
    return-void

    .line 486
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mPausing:Z

    .line 487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mLockDisable:Z

    .line 488
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    iput-object v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 490
    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectChooseRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/camera/effect/EffectChooseManager;->setEffectChooseRootVisibility(I)V

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectChoosePanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 492
    sget-object v0, Lcom/android/camera/effect/EffectChooseManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Effect panel should be removed."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 493
    invoke-direct {p0}, Lcom/android/camera/effect/EffectChooseManager;->removeAllView()V

    .line 498
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/effect/EffectChooseManager;->mEffectChooseRootVisibilityListener:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 495
    :cond_2
    sget-object v0, Lcom/android/camera/effect/EffectChooseManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Effect panel is not existed."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1
.end method
