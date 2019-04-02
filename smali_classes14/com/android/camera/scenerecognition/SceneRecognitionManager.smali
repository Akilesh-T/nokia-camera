.class public Lcom/android/camera/scenerecognition/SceneRecognitionManager;
.super Ljava/lang/Object;
.source "SceneRecognitionManager.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;
.implements Lcom/android/camera/one/OneCamera$SceneRecognitionListener;


# static fields
.field public static final ANIMAL_SCENE_ID:I = 0x2

.field public static final BEACH_SCENE_ID:I = 0xa

.field public static final BUILDINGS_SCENE_ID:I = 0xd

.field public static final FIREWORKS_SCENE_ID:I = 0xc

.field public static final FLOWER_SCENE_ID:I = 0x4

.field public static final FOOD_SCENE_ID:I = 0x1

.field public static final INDOOR_SCENE_ID:I = 0xe

.field public static final LANDSCAPE_SCENE_ID:I = 0x5

.field public static final NIGHTSCAPE_SCENE_ID:I = 0xb

.field public static final OCEAN_SCENE_ID:I = 0x6

.field public static final ORDINARY_SCENE_ID:I = 0x12

.field public static final OUTDOOR_SCENE_ID:I = 0xf

.field public static final PEOPLE_SCENE_ID:I = 0x0

.field public static final PLANT_SCENE_ID:I = 0x3

.field public static final QRCORD_SCENE_ID:I = 0x11

.field public static final SKY_SCENE_ID:I = 0x7

.field public static final SNOW_SCENE_ID:I = 0x9

.field public static final SUNRISE_SUNSET_SCENE_ID:I = 0x8

.field private static final TAG:Ljava/lang/String; = "CAM_SceneRecognitionManager"

.field public static final TEXT_SCENE_ID:I = 0x10


# instance fields
.field private mAppController:Lcom/android/camera/app/AppController;

.field private mBarCodeAction:Lcom/android/camera/scenerecognition/BarCodeAction;

.field public mBarCodeDecode:Lcom/android/camera/barcode/BarCodeDecode;

.field private mBarCodeLayout:Landroid/view/View;

.field private mBarCodeMainAction:Landroid/view/View;

.field private mBarCodeResult:Lcom/android/camera/barcode/BarCodeResult;

.field private mBarCodeSecondAction:Landroid/view/View;

.field private mBarCodeThirdAction:Landroid/view/View;

.field private mBarCodeTitle:Landroid/view/View;

.field private mCameraActivity:Lcom/android/camera/CameraActivity;

.field private mCameraRootView:Landroid/widget/FrameLayout;

.field private mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHideSceneDetectionText:Ljava/lang/Runnable;

.field private mLastLabel:Lcom/android/camera/scenerecognition/FilterClassifyLabel;

.field private mLastSceneId:I

.field private mLastWBBgainf:F

.field private mLastWBGgainf:F

.field private mLastWBRgainf:F

.field private mOrientation:I

.field private mPausing:Z

.field public mPreviewArea:Landroid/graphics/RectF;

.field private final mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

.field private mSceneDetectionBarCode:Lcom/android/camera/ui/BarcodeRotateLayout;

.field private mSceneDetectionClose:Landroid/widget/ImageView;

.field private mSceneDetectionContainer:Landroid/widget/FrameLayout;

.field private mSceneDetectionIcon:Landroid/widget/ImageView;

.field private mSceneDetectionLayout:Lcom/android/camera/ui/SceneDetectionRotateLayout;

.field private mSceneDetectionName:Landroid/widget/TextView;

.field private mSceneJsonPath:Ljava/lang/String;

.field private mSceneParmeterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/scenerecognition/SceneParmeter;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsManager:Lcom/android/camera/settings/SettingsManager;

.field private mSkipSceneId:I

.field private mWatermarkShowed:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mLastSceneId:I

    .line 74
    iput v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSkipSceneId:I

    .line 75
    iput v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mLastWBRgainf:F

    .line 76
    iput v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mLastWBGgainf:F

    .line 77
    iput v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mLastWBBgainf:F

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneParmeterList:Ljava/util/ArrayList;

    .line 280
    new-instance v0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$2;

    invoke-direct {v0, p0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager$2;-><init>(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)V

    iput-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    .line 663
    iput-object p1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    .line 664
    invoke-virtual {p1}, Lcom/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mContext:Landroid/content/Context;

    .line 665
    iput-object p1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mAppController:Lcom/android/camera/app/AppController;

    .line 666
    invoke-virtual {p1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    .line 667
    iput v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mLastSceneId:I

    .line 668
    iput v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSkipSceneId:I

    .line 669
    new-instance v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;

    invoke-direct {v0}, Lcom/android/camera/scenerecognition/FilterClassifyLabel;-><init>()V

    iput-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mLastLabel:Lcom/android/camera/scenerecognition/FilterClassifyLabel;

    .line 670
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mLastLabel:Lcom/android/camera/scenerecognition/FilterClassifyLabel;

    iput v1, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    .line 671
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Lcom/android/camera/ui/SceneDetectionRotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionLayout:Lcom/android/camera/ui/SceneDetectionRotateLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mPausing:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/scenerecognition/SceneRecognitionManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/scenerecognition/SceneRecognitionManager;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSkipSceneId:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Lcom/android/camera/scenerecognition/BarCodeAction;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mBarCodeAction:Lcom/android/camera/scenerecognition/BarCodeAction;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Lcom/android/camera/barcode/BarCodeResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mBarCodeResult:Lcom/android/camera/barcode/BarCodeResult;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Lcom/android/camera/ui/BarcodeRotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionBarCode:Lcom/android/camera/ui/BarcodeRotateLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mLastSceneId:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->showSetSceneParmeterDialog()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneParmeterList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/scenerecognition/SceneRecognitionManager;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/scenerecognition/SceneRecognitionManager;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->storeSceneParmetersToJSON(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->handleInit()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionClose:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mHideSceneDetectionText:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/scenerecognition/SceneRecognitionManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/scenerecognition/SceneRecognitionManager;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mHideSceneDetectionText:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mWatermarkShowed:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->inflateSceneViewIfNeeded()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/camera/scenerecognition/SceneRecognitionManager;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/scenerecognition/SceneRecognitionManager;
    .param p1, "x1"    # Landroid/widget/FrameLayout;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionContainer:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method private handleInit()V
    .locals 2

    .prologue
    .line 720
    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->DUMP_YUV_IMAGE:Z

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mContext:Landroid/content/Context;

    const-string v1, "scene_parmeter_value.json"

    invoke-static {v0, v1}, Lcom/android/camera/scenerecognition/SceneRecognitionUtil;->copyJSONFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneJsonPath:Ljava/lang/String;

    .line 722
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneJsonPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/scenerecognition/SceneRecognitionUtil;->getJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->readSceneParmeterListFromJSON(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 726
    :goto_0
    return-void

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mContext:Landroid/content/Context;

    const-string v1, "scene_parmeter_value.json"

    invoke-static {v0, v1}, Lcom/android/camera/scenerecognition/SceneRecognitionUtil;->getAssertJson(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->readSceneParmeterListFromJSON(Ljava/lang/String;)Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private inflateSceneViewIfNeeded()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 349
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v3, "default_scope"

    const-string v4, "pref_scene_detection_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 350
    .local v0, "isShowed":Z
    if-eqz v0, :cond_2

    .line 351
    invoke-direct {p0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->initManager()V

    .line 353
    const-string v2, "CAM_SceneRecognitionManager"

    const-string v3, "WatermarkManager should be showed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionLayout:Lcom/android/camera/ui/SceneDetectionRotateLayout;

    if-nez v2, :cond_0

    .line 355
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 356
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040082

    iget-object v3, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 357
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionContainer:Landroid/widget/FrameLayout;

    const v3, 0x7f0f01fa

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/SceneDetectionRotateLayout;

    iput-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionLayout:Lcom/android/camera/ui/SceneDetectionRotateLayout;

    .line 358
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionContainer:Landroid/widget/FrameLayout;

    const v3, 0x7f0f01fd

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionIcon:Landroid/widget/ImageView;

    .line 359
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionContainer:Landroid/widget/FrameLayout;

    const v3, 0x7f0f01fe

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionName:Landroid/widget/TextView;

    .line 360
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionContainer:Landroid/widget/FrameLayout;

    const v3, 0x7f0f01ff

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionClose:Landroid/widget/ImageView;

    .line 361
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 362
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    iget-object v3, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 363
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mCameraRootView:Landroid/widget/FrameLayout;

    const v3, 0x7f0f01f1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/BarcodeRotateLayout;

    iput-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionBarCode:Lcom/android/camera/ui/BarcodeRotateLayout;

    .line 364
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionBarCode:Lcom/android/camera/ui/BarcodeRotateLayout;

    new-instance v3, Lcom/android/camera/scenerecognition/SceneRecognitionManager$5;

    invoke-direct {v3, p0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager$5;-><init>(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/BarcodeRotateLayout;->setOnBarcodeUIChangeListener(Lcom/android/camera/ui/BarcodeRotateLayout$OnBarcodeUIChangeListener;)V

    .line 377
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mCameraRootView:Landroid/widget/FrameLayout;

    const v3, 0x7f0f01f3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mBarCodeLayout:Landroid/view/View;

    .line 378
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mCameraRootView:Landroid/widget/FrameLayout;

    const v3, 0x7f0f01f5

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mBarCodeTitle:Landroid/view/View;

    .line 379
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mCameraRootView:Landroid/widget/FrameLayout;

    const v3, 0x7f0f01f4

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mBarCodeMainAction:Landroid/view/View;

    .line 380
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mCameraRootView:Landroid/widget/FrameLayout;

    const v3, 0x7f0f01f9

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mBarCodeThirdAction:Landroid/view/View;

    .line 381
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mCameraRootView:Landroid/widget/FrameLayout;

    const v3, 0x7f0f01f8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mBarCodeSecondAction:Landroid/view/View;

    .line 382
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mBarCodeMainAction:Landroid/view/View;

    new-instance v3, Lcom/android/camera/scenerecognition/SceneRecognitionManager$6;

    invoke-direct {v3, p0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager$6;-><init>(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mBarCodeThirdAction:Landroid/view/View;

    new-instance v3, Lcom/android/camera/scenerecognition/SceneRecognitionManager$7;

    invoke-direct {v3, p0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager$7;-><init>(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mBarCodeSecondAction:Landroid/view/View;

    new-instance v3, Lcom/android/camera/scenerecognition/SceneRecognitionManager$8;

    invoke-direct {v3, p0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager$8;-><init>(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionClose:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/camera/scenerecognition/SceneRecognitionManager$9;

    invoke-direct {v3, p0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager$9;-><init>(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionIcon:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/camera/scenerecognition/SceneRecognitionManager$10;

    invoke-direct {v3, p0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager$10;-><init>(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionIcon:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/camera/scenerecognition/SceneRecognitionManager$11;

    invoke-direct {v3, p0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager$11;-><init>(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 453
    sget-boolean v2, Lcom/android/camera/product_utils/ProductUtil;->DUMP_YUV_IMAGE:Z

    if-eqz v2, :cond_1

    .line 454
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setHapticFeedbackEnabled(Z)V

    .line 463
    .end local v1    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    return-void

    .line 456
    .restart local v1    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_1
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setHapticFeedbackEnabled(Z)V

    goto :goto_0

    .line 460
    .end local v1    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->releaseManager()V

    .line 461
    invoke-virtual {p0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->removeSceneDetectionView()V

    goto :goto_0
.end method

.method private initManager()V
    .locals 2

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 676
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Scene Recognition"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 677
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 680
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mHandler:Landroid/os/Handler;

    .line 683
    :cond_1
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/scenerecognition/SceneRecognitionManager$15;

    invoke-direct {v1, p0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager$15;-><init>(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 689
    const-string v0, "1"

    invoke-virtual {p0, v0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->setSceneMode(Ljava/lang/String;)V

    .line 690
    return-void
.end method

.method private readSceneParmeterListFromJSON(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/scenerecognition/SceneParmeter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 577
    :try_start_0
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 578
    .local v10, "jsonArray":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v9, v1, :cond_0

    .line 579
    invoke-virtual {v10, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 580
    .local v11, "jsonObject":Lorg/json/JSONObject;
    new-instance v0, Lcom/android/camera/scenerecognition/SceneParmeter;

    const-string v1, "ID"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "name"

    .line 581
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Saturation"

    .line 582
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Contrast"

    .line 583
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Sharpness"

    .line 584
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Exposure"

    .line 585
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "AWBRGBGains"

    .line 586
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/scenerecognition/SceneParmeter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    .local v0, "sceneParmeter":Lcom/android/camera/scenerecognition/SceneParmeter;
    iget-object v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneParmeterList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 589
    .end local v0    # "sceneParmeter":Lcom/android/camera/scenerecognition/SceneParmeter;
    .end local v9    # "i":I
    .end local v10    # "jsonArray":Lorg/json/JSONArray;
    .end local v11    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    .line 590
    .local v8, "e":Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    .line 592
    .end local v8    # "e":Lorg/json/JSONException;
    :cond_0
    iget-object v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneParmeterList:Ljava/util/ArrayList;

    return-object v1
.end method

.method private releaseManager()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 693
    const-string v0, "CAM_SceneRecognitionManager"

    const-string v1, "releaseManager()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iput v3, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mLastSceneId:I

    .line 695
    iput v3, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSkipSceneId:I

    .line 696
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v0, :cond_0

    .line 697
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->setSceneMode(Ljava/lang/String;)V

    .line 698
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->setOrientationParmeter(I)V

    .line 699
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080373

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->setContrastParmeter(Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0803b4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->setSaturationParmeter(Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0803c7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->setSharpnessParmeter(Ljava/lang/String;)V

    .line 702
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080402

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->setExposureParmeter(Ljava/lang/String;)V

    .line 703
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->setAWBModeParmeter(Ljava/lang/String;)V

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneParmeterList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 706
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneParmeterList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 710
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 711
    iput-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mHandler:Landroid/os/Handler;

    .line 713
    :cond_2
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 714
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 715
    iput-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 717
    :cond_3
    return-void
.end method

.method private setAWBModeParmeter(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 763
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_scene_whitebalance_mode_key"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    return-void
.end method

.method private setAWBRGBGains(FFF)V
    .locals 7
    .param p1, "Rgainf"    # F
    .param p2, "Ggainf"    # F
    .param p3, "Bgainf"    # F

    .prologue
    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 767
    sget-object v4, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->MANUAL:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    invoke-virtual {v4}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->encodeSettingsString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->setAWBModeParmeter(Ljava/lang/String;)V

    .line 768
    cmpg-float v4, p1, v5

    if-lez v4, :cond_0

    cmpl-float v4, p1, v6

    if-ltz v4, :cond_3

    :cond_0
    move v3, v1

    .line 769
    .local v3, "rgainf":F
    :goto_0
    cmpg-float v4, p2, v5

    if-lez v4, :cond_1

    cmpl-float v4, p2, v6

    if-ltz v4, :cond_4

    :cond_1
    move v2, v1

    .line 770
    .local v2, "ggainf":F
    :goto_1
    cmpg-float v4, p3, v5

    if-lez v4, :cond_2

    cmpl-float v4, p3, v6

    if-ltz v4, :cond_5

    .line 771
    .local v1, "bgainf":F
    :cond_2
    :goto_2
    const-string v4, "CAM_SceneRecognitionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setAWBRGBGains RGBGain==="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "rgainf==="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ggainf ====="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "bgainf===="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mLastWBRgainf:F

    mul-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mLastWBGgainf:F

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mLastWBBgainf:F

    mul-float/2addr v5, v1

    .line 773
    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 774
    .local v0, "RGBGain":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v5

    const-string v6, "pref_camera_manual_wb_value_key"

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    return-void

    .end local v0    # "RGBGain":Ljava/lang/String;
    .end local v1    # "bgainf":F
    .end local v2    # "ggainf":F
    .end local v3    # "rgainf":F
    :cond_3
    move v3, p1

    .line 768
    goto/16 :goto_0

    .restart local v3    # "rgainf":F
    :cond_4
    move v2, p2

    .line 769
    goto/16 :goto_1

    .restart local v2    # "ggainf":F
    :cond_5
    move v1, p3

    .line 770
    goto/16 :goto_2
.end method

.method private setAWBRGBGains(Ljava/lang/String;)V
    .locals 5
    .param p1, "awbrgbGains"    # Ljava/lang/String;

    .prologue
    .line 778
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 779
    .local v3, "rgbValueString":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 780
    .local v2, "Rgainf":F
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 781
    .local v1, "Ggainf":F
    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 782
    .local v0, "Bgainf":F
    invoke-direct {p0, v2, v1, v0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->setAWBRGBGains(FFF)V

    .line 783
    return-void
.end method

.method private setContrastParmeter(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_contrast_key"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    return-void
.end method

.method private setExposureParmeter(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 759
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_scene_exposure_key"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    return-void
.end method

.method private setSaturationParmeter(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_saturation_key"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    return-void
.end method

.method private setSharpnessParmeter(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 755
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_sharpness_control_key"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    return-void
.end method

.method private showSetSceneParmeterDialog()V
    .locals 26
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .prologue
    .line 467
    const/4 v2, 0x1

    new-array v4, v2, [I

    const/4 v2, 0x0

    const/4 v3, -0x1

    aput v3, v4, v2

    .line 468
    .local v4, "sceneid":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040084

    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v25

    .line 469
    .local v25, "scene_parmeter_setting_dialog":Landroid/view/View;
    const v2, 0x7f0f0201

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/Spinner;

    .line 470
    .local v24, "mSceneSelector":Landroid/widget/Spinner;
    const v2, 0x7f0f0202

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 471
    .local v5, "mSceneParmeterText":Landroid/widget/TextView;
    const v2, 0x7f0f0203

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 472
    .local v6, "Saturationinput":Landroid/widget/EditText;
    const v2, 0x7f0f0204

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 473
    .local v7, "Contrastinput":Landroid/widget/EditText;
    const v2, 0x7f0f0205

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 474
    .local v8, "Sharpnessinput":Landroid/widget/EditText;
    const v2, 0x7f0f0206

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 475
    .local v9, "Exposureinput":Landroid/widget/EditText;
    const v2, 0x7f0f0207

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 476
    .local v10, "Rinput":Landroid/widget/EditText;
    const v2, 0x7f0f0208

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 477
    .local v11, "Ginput":Landroid/widget/EditText;
    const v2, 0x7f0f0209

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    .line 478
    .local v12, "Binput":Landroid/widget/EditText;
    new-instance v2, Lcom/android/camera/scenerecognition/SceneRecognitionManager$12;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v12}, Lcom/android/camera/scenerecognition/SceneRecognitionManager$12;-><init>(Lcom/android/camera/scenerecognition/SceneRecognitionManager;[ILandroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 500
    new-instance v23, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 501
    .local v23, "alert":Landroid/app/AlertDialog$Builder;
    const-string v2, "Scene Parmeter Settings"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 502
    const-string v2, "Cancel"

    new-instance v3, Lcom/android/camera/scenerecognition/SceneRecognitionManager$13;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager$13;-><init>(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 509
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 510
    const-string v2, "Ok"

    new-instance v13, Lcom/android/camera/scenerecognition/SceneRecognitionManager$14;

    move-object/from16 v14, p0

    move-object v15, v4

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    invoke-direct/range {v13 .. v22}, Lcom/android/camera/scenerecognition/SceneRecognitionManager$14;-><init>(Lcom/android/camera/scenerecognition/SceneRecognitionManager;[ILandroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 572
    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 573
    return-void
.end method

.method private storeSceneParmetersToJSON(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/scenerecognition/SceneParmeter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 597
    .local p1, "sceneParmeterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/scenerecognition/SceneParmeter;>;"
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneJsonPath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 598
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Landroid/util/JsonWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string v5, "utf-8"

    invoke-direct {v4, v1, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 599
    .local v3, "writer":Landroid/util/JsonWriter;
    const-string v4, " "

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->setIndent(Ljava/lang/String;)V

    .line 600
    invoke-virtual {v3}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 601
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/scenerecognition/SceneParmeter;

    .line 602
    .local v2, "parmeter":Lcom/android/camera/scenerecognition/SceneParmeter;
    invoke-virtual {v3}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 603
    const-string v5, "ID"

    invoke-virtual {v3, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/camera/scenerecognition/SceneParmeter;->getId()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 604
    const-string v5, "name"

    invoke-virtual {v3, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/camera/scenerecognition/SceneParmeter;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 605
    const-string v5, "Saturation"

    invoke-virtual {v3, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/camera/scenerecognition/SceneParmeter;->getSaturation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 606
    const-string v5, "Contrast"

    invoke-virtual {v3, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/camera/scenerecognition/SceneParmeter;->getContrast()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 607
    const-string v5, "Sharpness"

    invoke-virtual {v3, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/camera/scenerecognition/SceneParmeter;->getSharpness()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 608
    const-string v5, "Exposure"

    invoke-virtual {v3, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/camera/scenerecognition/SceneParmeter;->getExposure()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 609
    const-string v5, "AWBRGBGains"

    invoke-virtual {v3, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/camera/scenerecognition/SceneParmeter;->getAWBRGBGains()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 610
    invoke-virtual {v3}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 615
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "parmeter":Lcom/android/camera/scenerecognition/SceneParmeter;
    .end local v3    # "writer":Landroid/util/JsonWriter;
    :catch_0
    move-exception v0

    .line 616
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 622
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    return-void

    .line 612
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "writer":Landroid/util/JsonWriter;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 613
    invoke-virtual {v3}, Landroid/util/JsonWriter;->close()V

    .line 614
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 617
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "writer":Landroid/util/JsonWriter;
    :catch_1
    move-exception v0

    .line 618
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 619
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v0

    .line 620
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private updateCameraParmeters(I)V
    .locals 4
    .param p1, "sceneid"    # I

    .prologue
    .line 729
    iget-object v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneParmeterList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    if-ltz p1, :cond_0

    const/16 v1, 0x12

    if-le p1, v1, :cond_1

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    iget-object v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneParmeterList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/scenerecognition/SceneParmeter;

    .line 732
    .local v0, "sceneParmeter":Lcom/android/camera/scenerecognition/SceneParmeter;
    const-string v1, "CAM_SceneRecognitionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sceneParmeter===="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/camera/scenerecognition/SceneParmeter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-virtual {v0}, Lcom/android/camera/scenerecognition/SceneParmeter;->getContrast()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->setContrastParmeter(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v0}, Lcom/android/camera/scenerecognition/SceneParmeter;->getSaturation()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->setSaturationParmeter(Ljava/lang/String;)V

    .line 735
    invoke-virtual {v0}, Lcom/android/camera/scenerecognition/SceneParmeter;->getSharpness()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->setSharpnessParmeter(Ljava/lang/String;)V

    .line 736
    invoke-virtual {v0}, Lcom/android/camera/scenerecognition/SceneParmeter;->getExposure()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->setExposureParmeter(Ljava/lang/String;)V

    .line 737
    const-string v1, "0,0,0"

    invoke-virtual {v0}, Lcom/android/camera/scenerecognition/SceneParmeter;->getAWBRGBGains()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "1.0,1.0,1.0"

    .line 738
    invoke-virtual {v0}, Lcom/android/camera/scenerecognition/SceneParmeter;->getAWBRGBGains()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "1.0f,1.0f,1.0f"

    .line 739
    invoke-virtual {v0}, Lcom/android/camera/scenerecognition/SceneParmeter;->getAWBRGBGains()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 740
    :cond_2
    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    invoke-virtual {v1}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->encodeSettingsString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->setAWBModeParmeter(Ljava/lang/String;)V

    goto :goto_0

    .line 742
    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/scenerecognition/SceneParmeter;->getAWBRGBGains()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->setAWBRGBGains(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public hideSceneDetection()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 304
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionLayout:Lcom/android/camera/ui/SceneDetectionRotateLayout;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionLayout:Lcom/android/camera/ui/SceneDetectionRotateLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SceneDetectionRotateLayout;->setVisibility(I)V

    .line 307
    :cond_0
    iput v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mLastSceneId:I

    .line 308
    iput v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSkipSceneId:I

    .line 309
    return-void
.end method

.method public load(Landroid/widget/FrameLayout;Lcom/android/camera/CaptureLayoutHelper;)V
    .locals 0
    .param p1, "root"    # Landroid/widget/FrameLayout;
    .param p2, "helper"    # Lcom/android/camera/CaptureLayoutHelper;

    .prologue
    .line 636
    iput-object p1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mCameraRootView:Landroid/widget/FrameLayout;

    .line 637
    iput-object p2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    .line 638
    return-void
.end method

.method public onAWBGains([F)V
    .locals 2
    .param p1, "awbgains"    # [F

    .prologue
    .line 113
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mLastWBRgainf:F

    .line 117
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mLastWBGgainf:F

    .line 118
    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mLastWBBgainf:F

    goto :goto_0
.end method

.method public onSceneClassifyResult(Lcom/android/camera/scenerecognition/SceneClassifyLabel;)V
    .locals 8
    .param p1, "sceneClassifyLabel"    # Lcom/android/camera/scenerecognition/SceneClassifyLabel;

    .prologue
    const/16 v7, 0x12

    const/4 v6, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x11

    .line 123
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/scenerecognition/SceneClassifyLabel;->getSCResultNum()I

    move-result v2

    if-gtz v2, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mLastLabel:Lcom/android/camera/scenerecognition/FilterClassifyLabel;

    invoke-static {p1, v2}, Lcom/android/camera/scenerecognition/SceneRecognitionUtil;->containLastLabel(Lcom/android/camera/scenerecognition/SceneClassifyLabel;Lcom/android/camera/scenerecognition/FilterClassifyLabel;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 126
    const-string v2, "CAM_SceneRecognitionManager"

    const-string v3, "return: use last classify label"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    :cond_2
    invoke-static {p1}, Lcom/android/camera/scenerecognition/SceneRecognitionUtil;->getFilterClassifyLabel(Lcom/android/camera/scenerecognition/SceneClassifyLabel;)Lcom/android/camera/scenerecognition/FilterClassifyLabel;

    move-result-object v0

    .line 130
    .local v0, "label":Lcom/android/camera/scenerecognition/FilterClassifyLabel;
    if-eqz v0, :cond_3

    .line 131
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mLastLabel:Lcom/android/camera/scenerecognition/FilterClassifyLabel;

    iget v3, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    iput v3, v2, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    .line 133
    :cond_3
    iget v2, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    packed-switch v2, :pswitch_data_0

    .line 202
    :pswitch_0
    iput v7, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    .line 203
    iput v4, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mScore:F

    .line 205
    :goto_1
    if-eqz v0, :cond_4

    iget v2, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    iget v3, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSkipSceneId:I

    if-ne v2, v3, :cond_4

    .line 206
    iput v7, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    .line 207
    iput v4, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mScore:F

    .line 209
    :cond_4
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mLastSceneId:I

    iget v3, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    if-ne v2, v3, :cond_5

    iget v2, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    if-ne v2, v5, :cond_0

    .line 210
    :cond_5
    const-string v2, "CAM_SceneRecognitionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get classify info id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|||score:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mScore:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget v2, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    if-ne v2, v5, :cond_9

    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mBarCodeLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_9

    .line 212
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mBarCodeDecode:Lcom/android/camera/barcode/BarCodeDecode;

    if-nez v2, :cond_6

    .line 213
    new-instance v2, Lcom/android/camera/barcode/BarCodeDecode;

    invoke-direct {v2}, Lcom/android/camera/barcode/BarCodeDecode;-><init>()V

    iput-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mBarCodeDecode:Lcom/android/camera/barcode/BarCodeDecode;

    .line 214
    :cond_6
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/app/CameraAppUI;->getPreviewFrame(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 215
    .local v1, "mPriviewBitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mBarCodeDecode:Lcom/android/camera/barcode/BarCodeDecode;

    iget-object v3, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/android/camera/barcode/BarCodeDecode;->BarCodeScan(Landroid/content/Context;Landroid/graphics/Bitmap;II)Lcom/android/camera/barcode/BarCodeResult;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mBarCodeResult:Lcom/android/camera/barcode/BarCodeResult;

    .line 216
    if-eqz v1, :cond_7

    .line 217
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 218
    const/4 v1, 0x0

    .line 220
    :cond_7
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mBarCodeAction:Lcom/android/camera/scenerecognition/BarCodeAction;

    if-nez v2, :cond_8

    .line 221
    new-instance v2, Lcom/android/camera/scenerecognition/BarCodeAction;

    iget-object v3, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-direct {v2, v3}, Lcom/android/camera/scenerecognition/BarCodeAction;-><init>(Lcom/android/camera/app/AppController;)V

    iput-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mBarCodeAction:Lcom/android/camera/scenerecognition/BarCodeAction;

    .line 223
    :cond_8
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionBarCode:Lcom/android/camera/ui/BarcodeRotateLayout;

    if-eqz v2, :cond_9

    .line 224
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionBarCode:Lcom/android/camera/ui/BarcodeRotateLayout;

    iget-object v3, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mBarCodeResult:Lcom/android/camera/barcode/BarCodeResult;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/BarcodeRotateLayout;->updateBarCodeText(Lcom/android/camera/barcode/BarCodeResult;)V

    .line 227
    .end local v1    # "mPriviewBitmap":Landroid/graphics/Bitmap;
    :cond_9
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mBarCodeLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_a

    .line 228
    iget v2, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    iput v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mLastSceneId:I

    goto/16 :goto_0

    .line 138
    :pswitch_1
    const/4 v2, 0x0

    iput v2, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    goto/16 :goto_1

    .line 141
    :pswitch_2
    iput v6, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    goto/16 :goto_1

    .line 146
    :pswitch_3
    const/4 v2, 0x2

    iput v2, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    goto/16 :goto_1

    .line 150
    :pswitch_4
    const/4 v2, 0x3

    iput v2, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    goto/16 :goto_1

    .line 153
    :pswitch_5
    const/4 v2, 0x4

    iput v2, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    goto/16 :goto_1

    .line 156
    :pswitch_6
    const/4 v2, 0x5

    iput v2, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    goto/16 :goto_1

    .line 159
    :pswitch_7
    const/4 v2, 0x6

    iput v2, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    goto/16 :goto_1

    .line 163
    :pswitch_8
    const/4 v2, 0x7

    iput v2, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    goto/16 :goto_1

    .line 166
    :pswitch_9
    const/16 v2, 0x8

    iput v2, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    goto/16 :goto_1

    .line 169
    :pswitch_a
    const/16 v2, 0x9

    iput v2, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    goto/16 :goto_1

    .line 172
    :pswitch_b
    const/16 v2, 0xa

    iput v2, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    goto/16 :goto_1

    .line 175
    :pswitch_c
    const/16 v2, 0xb

    iput v2, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    goto/16 :goto_1

    .line 178
    :pswitch_d
    const/16 v2, 0xc

    iput v2, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    goto/16 :goto_1

    .line 182
    :pswitch_e
    const/16 v2, 0xd

    iput v2, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    goto/16 :goto_1

    .line 187
    :pswitch_f
    const/16 v2, 0xe

    iput v2, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    goto/16 :goto_1

    .line 190
    :pswitch_10
    const/16 v2, 0xf

    iput v2, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    goto/16 :goto_1

    .line 196
    :pswitch_11
    const/16 v2, 0x10

    iput v2, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    goto/16 :goto_1

    .line 199
    :pswitch_12
    iput v5, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    goto/16 :goto_1

    .line 232
    :cond_a
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionLayout:Lcom/android/camera/ui/SceneDetectionRotateLayout;

    if-eqz v2, :cond_b

    .line 233
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionLayout:Lcom/android/camera/ui/SceneDetectionRotateLayout;

    new-instance v3, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;

    invoke-direct {v3, p0, v0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;-><init>(Lcom/android/camera/scenerecognition/SceneRecognitionManager;Lcom/android/camera/scenerecognition/FilterClassifyLabel;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/SceneDetectionRotateLayout;->post(Ljava/lang/Runnable;)Z

    .line 273
    :cond_b
    iget v2, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    invoke-direct {p0, v2}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->updateCameraParmeters(I)V

    .line 274
    iget v2, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    iput v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mLastSceneId:I

    .line 275
    const-string v2, "CAM_SceneRecognitionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get classify info id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|||score:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mScore:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_8
        :pswitch_8
        :pswitch_12
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public onWatermarkHide(Z)V
    .locals 4
    .param p1, "watermarkHide"    # Z

    .prologue
    const v3, 0x7f090105

    .line 649
    iget-object v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionLayout:Lcom/android/camera/ui/SceneDetectionRotateLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mPreviewArea:Landroid/graphics/RectF;

    if-eqz v1, :cond_0

    .line 650
    iget-object v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionLayout:Lcom/android/camera/ui/SceneDetectionRotateLayout;

    invoke-virtual {v1}, Lcom/android/camera/ui/SceneDetectionRotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 651
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mPreviewArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 652
    iget-object v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 656
    :goto_0
    iget-object v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionLayout:Lcom/android/camera/ui/SceneDetectionRotateLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/SceneDetectionRotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 657
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionLayout:Lcom/android/camera/ui/SceneDetectionRotateLayout;

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/camera/ui/SceneDetectionRotateLayout;->updateSceneMargin(Z)V

    .line 660
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void

    .line 654
    .restart local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mPreviewArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 657
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public registerSceneRecognition()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 312
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mPausing:Z

    .line 313
    iput v3, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mLastSceneId:I

    .line 314
    iput v3, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSkipSceneId:I

    .line 315
    new-instance v1, Lcom/android/camera/scenerecognition/SceneRecognitionManager$3;

    invoke-direct {v1, p0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager$3;-><init>(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)V

    .line 326
    .local v1, "runnable":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionContainer:Landroid/widget/FrameLayout;

    if-nez v2, :cond_0

    .line 327
    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater;

    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v2}, Landroid/support/v4/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    .line 328
    .local v0, "asyncLayoutInflater":Landroid/support/v4/view/AsyncLayoutInflater;
    const v2, 0x7f040083

    iget-object v3, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mCameraRootView:Landroid/widget/FrameLayout;

    new-instance v4, Lcom/android/camera/scenerecognition/SceneRecognitionManager$4;

    invoke-direct {v4, p0, v1}, Lcom/android/camera/scenerecognition/SceneRecognitionManager$4;-><init>(Lcom/android/camera/scenerecognition/SceneRecognitionManager;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v4/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    .line 342
    .end local v0    # "asyncLayoutInflater":Landroid/support/v4/view/AsyncLayoutInflater;
    :goto_0
    return-void

    .line 339
    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public removeSceneDetectionView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 625
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionLayout:Lcom/android/camera/ui/SceneDetectionRotateLayout;

    if-nez v0, :cond_0

    .line 633
    :goto_0
    return-void

    .line 627
    :cond_0
    iput-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionLayout:Lcom/android/camera/ui/SceneDetectionRotateLayout;

    .line 628
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 629
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 630
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionBarCode:Lcom/android/camera/ui/BarcodeRotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/BarcodeRotateLayout;->setOnBarcodeUIChangeListener(Lcom/android/camera/ui/BarcodeRotateLayout$OnBarcodeUIChangeListener;)V

    .line 631
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionBarCode:Lcom/android/camera/ui/BarcodeRotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/BarcodeRotateLayout;->onRelease()V

    .line 632
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mBarCodeLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 641
    iput p1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mOrientation:I

    .line 642
    iget v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->setOrientationParmeter(I)V

    .line 643
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionLayout:Lcom/android/camera/ui/SceneDetectionRotateLayout;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionLayout:Lcom/android/camera/ui/SceneDetectionRotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/SceneDetectionRotateLayout;->setOrientation(IZ)V

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionBarCode:Lcom/android/camera/ui/BarcodeRotateLayout;

    if-eqz v0, :cond_1

    .line 646
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mSceneDetectionBarCode:Lcom/android/camera/ui/BarcodeRotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/BarcodeRotateLayout;->setOrientation(IZ)V

    .line 647
    :cond_1
    return-void
.end method

.method public setOrientationParmeter(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_sceneclassify_orientation_key"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    return-void
.end method

.method public setSceneMode(Ljava/lang/String;)V
    .locals 3
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_sceneclassify_mode_key"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    return-void
.end method

.method public unRegisterSceneRecognition()V
    .locals 0

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->removeSceneDetectionView()V

    .line 346
    return-void
.end method
